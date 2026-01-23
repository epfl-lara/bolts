; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!666178 () Bool)

(assert start!666178)

(declare-fun b!6932863 () Bool)

(assert (=> b!6932863 true))

(assert (=> b!6932863 true))

(assert (=> b!6932863 true))

(declare-fun lambda!394606 () Int)

(declare-fun lambda!394605 () Int)

(assert (=> b!6932863 (not (= lambda!394606 lambda!394605))))

(assert (=> b!6932863 true))

(assert (=> b!6932863 true))

(assert (=> b!6932863 true))

(declare-fun bs!1850825 () Bool)

(declare-fun b!6932872 () Bool)

(assert (= bs!1850825 (and b!6932872 b!6932863)))

(declare-datatypes ((C!34172 0))(
  ( (C!34173 (val!26788 Int)) )
))
(declare-datatypes ((Regex!16951 0))(
  ( (ElementMatch!16951 (c!1286601 C!34172)) (Concat!25796 (regOne!34414 Regex!16951) (regTwo!34414 Regex!16951)) (EmptyExpr!16951) (Star!16951 (reg!17280 Regex!16951)) (EmptyLang!16951) (Union!16951 (regOne!34415 Regex!16951) (regTwo!34415 Regex!16951)) )
))
(declare-fun r1!6342 () Regex!16951)

(declare-fun lambda!394607 () Int)

(declare-fun r3!135 () Regex!16951)

(declare-fun r2!6280 () Regex!16951)

(declare-fun lt!2473650 () Regex!16951)

(declare-datatypes ((List!66704 0))(
  ( (Nil!66580) (Cons!66580 (h!73028 C!34172) (t!380447 List!66704)) )
))
(declare-datatypes ((tuple2!67616 0))(
  ( (tuple2!67617 (_1!37111 List!66704) (_2!37111 List!66704)) )
))
(declare-fun lt!2473648 () tuple2!67616)

(declare-fun s!14361 () List!66704)

(assert (=> bs!1850825 (= (and (= (_2!37111 lt!2473648) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473650)) (= lambda!394607 lambda!394605))))

(assert (=> bs!1850825 (not (= lambda!394607 lambda!394606))))

(assert (=> b!6932872 true))

(assert (=> b!6932872 true))

(assert (=> b!6932872 true))

(declare-fun lambda!394608 () Int)

(assert (=> bs!1850825 (not (= lambda!394608 lambda!394605))))

(assert (=> bs!1850825 (= (and (= (_2!37111 lt!2473648) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473650)) (= lambda!394608 lambda!394606))))

(assert (=> b!6932872 (not (= lambda!394608 lambda!394607))))

(assert (=> b!6932872 true))

(assert (=> b!6932872 true))

(assert (=> b!6932872 true))

(declare-fun bs!1850826 () Bool)

(declare-fun b!6932860 () Bool)

(assert (= bs!1850826 (and b!6932860 b!6932863)))

(declare-fun lambda!394609 () Int)

(declare-fun lt!2473646 () List!66704)

(assert (=> bs!1850826 (= (and (= lt!2473646 s!14361) (= r2!6280 lt!2473650)) (= lambda!394609 lambda!394605))))

(assert (=> bs!1850826 (not (= lambda!394609 lambda!394606))))

(declare-fun bs!1850827 () Bool)

(assert (= bs!1850827 (and b!6932860 b!6932872)))

(assert (=> bs!1850827 (= (and (= lt!2473646 (_2!37111 lt!2473648)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394609 lambda!394607))))

(assert (=> bs!1850827 (not (= lambda!394609 lambda!394608))))

(assert (=> b!6932860 true))

(assert (=> b!6932860 true))

(assert (=> b!6932860 true))

(declare-fun lambda!394610 () Int)

(assert (=> bs!1850827 (not (= lambda!394610 lambda!394607))))

(assert (=> bs!1850827 (= (and (= lt!2473646 (_2!37111 lt!2473648)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394610 lambda!394608))))

(assert (=> b!6932860 (not (= lambda!394610 lambda!394609))))

(assert (=> bs!1850826 (not (= lambda!394610 lambda!394605))))

(assert (=> bs!1850826 (= (and (= lt!2473646 s!14361) (= r2!6280 lt!2473650)) (= lambda!394610 lambda!394606))))

(assert (=> b!6932860 true))

(assert (=> b!6932860 true))

(assert (=> b!6932860 true))

(declare-fun b!6932851 () Bool)

(declare-fun e!4171379 () Bool)

(declare-fun e!4171383 () Bool)

(assert (=> b!6932851 (= e!4171379 (not e!4171383))))

(declare-fun res!2827539 () Bool)

(assert (=> b!6932851 (=> res!2827539 e!4171383)))

(declare-fun lt!2473652 () Bool)

(assert (=> b!6932851 (= res!2827539 lt!2473652)))

(declare-fun lt!2473643 () Regex!16951)

(declare-fun matchR!9090 (Regex!16951 List!66704) Bool)

(declare-fun matchRSpec!4008 (Regex!16951 List!66704) Bool)

(assert (=> b!6932851 (= (matchR!9090 lt!2473643 s!14361) (matchRSpec!4008 lt!2473643 s!14361))))

(declare-datatypes ((Unit!160626 0))(
  ( (Unit!160627) )
))
(declare-fun lt!2473649 () Unit!160626)

(declare-fun mainMatchTheorem!4008 (Regex!16951 List!66704) Unit!160626)

(assert (=> b!6932851 (= lt!2473649 (mainMatchTheorem!4008 lt!2473643 s!14361))))

(declare-fun lt!2473641 () Regex!16951)

(assert (=> b!6932851 (= lt!2473652 (matchRSpec!4008 lt!2473641 s!14361))))

(assert (=> b!6932851 (= lt!2473652 (matchR!9090 lt!2473641 s!14361))))

(declare-fun lt!2473630 () Unit!160626)

(assert (=> b!6932851 (= lt!2473630 (mainMatchTheorem!4008 lt!2473641 s!14361))))

(assert (=> b!6932851 (= lt!2473643 (Concat!25796 r1!6342 lt!2473650))))

(assert (=> b!6932851 (= lt!2473650 (Concat!25796 r2!6280 r3!135))))

(declare-fun lt!2473647 () Regex!16951)

(assert (=> b!6932851 (= lt!2473641 (Concat!25796 lt!2473647 r3!135))))

(assert (=> b!6932851 (= lt!2473647 (Concat!25796 r1!6342 r2!6280))))

(declare-fun b!6932852 () Bool)

(declare-fun res!2827543 () Bool)

(declare-fun e!4171384 () Bool)

(assert (=> b!6932852 (=> res!2827543 e!4171384)))

(assert (=> b!6932852 (= res!2827543 (not (matchR!9090 lt!2473650 (_2!37111 lt!2473648))))))

(declare-fun b!6932853 () Bool)

(declare-fun e!4171377 () Bool)

(declare-fun tp!1911272 () Bool)

(declare-fun tp!1911276 () Bool)

(assert (=> b!6932853 (= e!4171377 (and tp!1911272 tp!1911276))))

(declare-fun b!6932854 () Bool)

(declare-fun e!4171386 () Bool)

(declare-fun tp!1911278 () Bool)

(declare-fun tp!1911280 () Bool)

(assert (=> b!6932854 (= e!4171386 (and tp!1911278 tp!1911280))))

(declare-fun b!6932855 () Bool)

(declare-fun e!4171380 () Bool)

(declare-fun tp!1911270 () Bool)

(declare-fun tp!1911281 () Bool)

(assert (=> b!6932855 (= e!4171380 (and tp!1911270 tp!1911281))))

(declare-fun b!6932856 () Bool)

(declare-fun tp!1911273 () Bool)

(declare-fun tp!1911274 () Bool)

(assert (=> b!6932856 (= e!4171386 (and tp!1911273 tp!1911274))))

(declare-fun b!6932857 () Bool)

(declare-fun tp!1911277 () Bool)

(assert (=> b!6932857 (= e!4171380 tp!1911277)))

(declare-fun b!6932858 () Bool)

(declare-fun tp_is_empty!43127 () Bool)

(assert (=> b!6932858 (= e!4171377 tp_is_empty!43127)))

(declare-fun b!6932859 () Bool)

(assert (=> b!6932859 (= e!4171380 tp_is_empty!43127)))

(declare-fun e!4171385 () Bool)

(declare-fun isPrefix!5812 (List!66704 List!66704) Bool)

(assert (=> b!6932860 (= e!4171385 (isPrefix!5812 Nil!66580 (_1!37111 lt!2473648)))))

(declare-fun Exists!3951 (Int) Bool)

(assert (=> b!6932860 (= (Exists!3951 lambda!394609) (Exists!3951 lambda!394610))))

(declare-fun lt!2473633 () Unit!160626)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2412 (Regex!16951 Regex!16951 List!66704) Unit!160626)

(assert (=> b!6932860 (= lt!2473633 (lemmaExistCutMatchRandMatchRSpecEquivalent!2412 r1!6342 r2!6280 lt!2473646))))

(declare-datatypes ((Option!16720 0))(
  ( (None!16719) (Some!16719 (v!52991 tuple2!67616)) )
))
(declare-fun isDefined!13421 (Option!16720) Bool)

(declare-fun findConcatSeparation!3134 (Regex!16951 Regex!16951 List!66704 List!66704 List!66704) Option!16720)

(assert (=> b!6932860 (= (isDefined!13421 (findConcatSeparation!3134 r1!6342 r2!6280 Nil!66580 lt!2473646 lt!2473646)) (Exists!3951 lambda!394609))))

(declare-fun lt!2473644 () Unit!160626)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2892 (Regex!16951 Regex!16951 List!66704) Unit!160626)

(assert (=> b!6932860 (= lt!2473644 (lemmaFindConcatSeparationEquivalentToExists!2892 r1!6342 r2!6280 lt!2473646))))

(assert (=> b!6932860 (= (matchR!9090 lt!2473647 lt!2473646) (matchRSpec!4008 lt!2473647 lt!2473646))))

(declare-fun lt!2473631 () Unit!160626)

(assert (=> b!6932860 (= lt!2473631 (mainMatchTheorem!4008 lt!2473647 lt!2473646))))

(declare-fun lt!2473640 () tuple2!67616)

(declare-fun lt!2473654 () List!66704)

(declare-fun ++!14990 (List!66704 List!66704) List!66704)

(assert (=> b!6932860 (= (++!14990 lt!2473646 (_2!37111 lt!2473640)) lt!2473654)))

(assert (=> b!6932860 (= lt!2473646 (++!14990 (_1!37111 lt!2473648) (_1!37111 lt!2473640)))))

(declare-fun lt!2473638 () Unit!160626)

(declare-fun lemmaConcatAssociativity!3032 (List!66704 List!66704 List!66704) Unit!160626)

(assert (=> b!6932860 (= lt!2473638 (lemmaConcatAssociativity!3032 (_1!37111 lt!2473648) (_1!37111 lt!2473640) (_2!37111 lt!2473640)))))

(declare-fun b!6932861 () Bool)

(declare-fun e!4171378 () Bool)

(assert (=> b!6932861 (= e!4171383 e!4171378)))

(declare-fun res!2827545 () Bool)

(assert (=> b!6932861 (=> res!2827545 e!4171378)))

(declare-fun lt!2473655 () Option!16720)

(assert (=> b!6932861 (= res!2827545 (not (isDefined!13421 lt!2473655)))))

(assert (=> b!6932861 (= lt!2473655 (findConcatSeparation!3134 r1!6342 lt!2473650 Nil!66580 s!14361 s!14361))))

(declare-fun b!6932862 () Bool)

(declare-fun res!2827546 () Bool)

(declare-fun e!4171381 () Bool)

(assert (=> b!6932862 (=> res!2827546 e!4171381)))

(assert (=> b!6932862 (= res!2827546 (not (matchR!9090 r3!135 (_2!37111 lt!2473640))))))

(assert (=> b!6932863 (= e!4171378 e!4171384)))

(declare-fun res!2827540 () Bool)

(assert (=> b!6932863 (=> res!2827540 e!4171384)))

(declare-fun lt!2473639 () Bool)

(assert (=> b!6932863 (= res!2827540 (not lt!2473639))))

(assert (=> b!6932863 (= lt!2473639 (matchRSpec!4008 r1!6342 (_1!37111 lt!2473648)))))

(assert (=> b!6932863 (= lt!2473639 (matchR!9090 r1!6342 (_1!37111 lt!2473648)))))

(declare-fun lt!2473636 () Unit!160626)

(assert (=> b!6932863 (= lt!2473636 (mainMatchTheorem!4008 r1!6342 (_1!37111 lt!2473648)))))

(declare-fun get!23363 (Option!16720) tuple2!67616)

(assert (=> b!6932863 (= lt!2473648 (get!23363 lt!2473655))))

(assert (=> b!6932863 (= (Exists!3951 lambda!394605) (Exists!3951 lambda!394606))))

(declare-fun lt!2473651 () Unit!160626)

(assert (=> b!6932863 (= lt!2473651 (lemmaExistCutMatchRandMatchRSpecEquivalent!2412 r1!6342 lt!2473650 s!14361))))

(assert (=> b!6932863 (Exists!3951 lambda!394605)))

(declare-fun lt!2473645 () Unit!160626)

(assert (=> b!6932863 (= lt!2473645 (lemmaFindConcatSeparationEquivalentToExists!2892 r1!6342 lt!2473650 s!14361))))

(declare-fun b!6932864 () Bool)

(declare-fun res!2827542 () Bool)

(assert (=> b!6932864 (=> (not res!2827542) (not e!4171379))))

(declare-fun validRegex!8657 (Regex!16951) Bool)

(assert (=> b!6932864 (= res!2827542 (validRegex!8657 r3!135))))

(declare-fun b!6932865 () Bool)

(declare-fun e!4171382 () Bool)

(declare-fun tp!1911269 () Bool)

(assert (=> b!6932865 (= e!4171382 (and tp_is_empty!43127 tp!1911269))))

(declare-fun res!2827548 () Bool)

(assert (=> start!666178 (=> (not res!2827548) (not e!4171379))))

(assert (=> start!666178 (= res!2827548 (validRegex!8657 r1!6342))))

(assert (=> start!666178 e!4171379))

(assert (=> start!666178 e!4171380))

(assert (=> start!666178 e!4171377))

(assert (=> start!666178 e!4171386))

(assert (=> start!666178 e!4171382))

(declare-fun b!6932866 () Bool)

(declare-fun tp!1911268 () Bool)

(assert (=> b!6932866 (= e!4171386 tp!1911268)))

(declare-fun b!6932867 () Bool)

(assert (=> b!6932867 (= e!4171386 tp_is_empty!43127)))

(declare-fun b!6932868 () Bool)

(declare-fun tp!1911271 () Bool)

(assert (=> b!6932868 (= e!4171377 tp!1911271)))

(declare-fun b!6932869 () Bool)

(declare-fun res!2827544 () Bool)

(assert (=> b!6932869 (=> (not res!2827544) (not e!4171379))))

(assert (=> b!6932869 (= res!2827544 (validRegex!8657 r2!6280))))

(declare-fun b!6932870 () Bool)

(declare-fun tp!1911275 () Bool)

(declare-fun tp!1911282 () Bool)

(assert (=> b!6932870 (= e!4171377 (and tp!1911275 tp!1911282))))

(declare-fun b!6932871 () Bool)

(assert (=> b!6932871 (= e!4171381 e!4171385)))

(declare-fun res!2827541 () Bool)

(assert (=> b!6932871 (=> res!2827541 e!4171385)))

(assert (=> b!6932871 (= res!2827541 (not (= lt!2473654 s!14361)))))

(assert (=> b!6932871 (= lt!2473654 (++!14990 (_1!37111 lt!2473648) (++!14990 (_1!37111 lt!2473640) (_2!37111 lt!2473640))))))

(assert (=> b!6932871 (matchRSpec!4008 r3!135 (_2!37111 lt!2473640))))

(declare-fun lt!2473642 () Unit!160626)

(assert (=> b!6932871 (= lt!2473642 (mainMatchTheorem!4008 r3!135 (_2!37111 lt!2473640)))))

(assert (=> b!6932871 (matchRSpec!4008 r2!6280 (_1!37111 lt!2473640))))

(declare-fun lt!2473635 () Unit!160626)

(assert (=> b!6932871 (= lt!2473635 (mainMatchTheorem!4008 r2!6280 (_1!37111 lt!2473640)))))

(assert (=> b!6932872 (= e!4171384 e!4171381)))

(declare-fun res!2827547 () Bool)

(assert (=> b!6932872 (=> res!2827547 e!4171381)))

(assert (=> b!6932872 (= res!2827547 (not (matchR!9090 r2!6280 (_1!37111 lt!2473640))))))

(declare-fun lt!2473632 () Option!16720)

(assert (=> b!6932872 (= lt!2473640 (get!23363 lt!2473632))))

(assert (=> b!6932872 (= (Exists!3951 lambda!394607) (Exists!3951 lambda!394608))))

(declare-fun lt!2473637 () Unit!160626)

(assert (=> b!6932872 (= lt!2473637 (lemmaExistCutMatchRandMatchRSpecEquivalent!2412 r2!6280 r3!135 (_2!37111 lt!2473648)))))

(assert (=> b!6932872 (= (isDefined!13421 lt!2473632) (Exists!3951 lambda!394607))))

(assert (=> b!6932872 (= lt!2473632 (findConcatSeparation!3134 r2!6280 r3!135 Nil!66580 (_2!37111 lt!2473648) (_2!37111 lt!2473648)))))

(declare-fun lt!2473653 () Unit!160626)

(assert (=> b!6932872 (= lt!2473653 (lemmaFindConcatSeparationEquivalentToExists!2892 r2!6280 r3!135 (_2!37111 lt!2473648)))))

(assert (=> b!6932872 (matchRSpec!4008 lt!2473650 (_2!37111 lt!2473648))))

(declare-fun lt!2473634 () Unit!160626)

(assert (=> b!6932872 (= lt!2473634 (mainMatchTheorem!4008 lt!2473650 (_2!37111 lt!2473648)))))

(declare-fun b!6932873 () Bool)

(declare-fun tp!1911279 () Bool)

(declare-fun tp!1911283 () Bool)

(assert (=> b!6932873 (= e!4171380 (and tp!1911279 tp!1911283))))

(assert (= (and start!666178 res!2827548) b!6932869))

(assert (= (and b!6932869 res!2827544) b!6932864))

(assert (= (and b!6932864 res!2827542) b!6932851))

(assert (= (and b!6932851 (not res!2827539)) b!6932861))

(assert (= (and b!6932861 (not res!2827545)) b!6932863))

(assert (= (and b!6932863 (not res!2827540)) b!6932852))

(assert (= (and b!6932852 (not res!2827543)) b!6932872))

(assert (= (and b!6932872 (not res!2827547)) b!6932862))

(assert (= (and b!6932862 (not res!2827546)) b!6932871))

(assert (= (and b!6932871 (not res!2827541)) b!6932860))

(get-info :version)

(assert (= (and start!666178 ((_ is ElementMatch!16951) r1!6342)) b!6932859))

(assert (= (and start!666178 ((_ is Concat!25796) r1!6342)) b!6932873))

(assert (= (and start!666178 ((_ is Star!16951) r1!6342)) b!6932857))

(assert (= (and start!666178 ((_ is Union!16951) r1!6342)) b!6932855))

(assert (= (and start!666178 ((_ is ElementMatch!16951) r2!6280)) b!6932858))

(assert (= (and start!666178 ((_ is Concat!25796) r2!6280)) b!6932870))

(assert (= (and start!666178 ((_ is Star!16951) r2!6280)) b!6932868))

(assert (= (and start!666178 ((_ is Union!16951) r2!6280)) b!6932853))

(assert (= (and start!666178 ((_ is ElementMatch!16951) r3!135)) b!6932867))

(assert (= (and start!666178 ((_ is Concat!25796) r3!135)) b!6932854))

(assert (= (and start!666178 ((_ is Star!16951) r3!135)) b!6932866))

(assert (= (and start!666178 ((_ is Union!16951) r3!135)) b!6932856))

(assert (= (and start!666178 ((_ is Cons!66580) s!14361)) b!6932865))

(declare-fun m!7639384 () Bool)

(assert (=> b!6932871 m!7639384))

(declare-fun m!7639386 () Bool)

(assert (=> b!6932871 m!7639386))

(declare-fun m!7639388 () Bool)

(assert (=> b!6932871 m!7639388))

(declare-fun m!7639390 () Bool)

(assert (=> b!6932871 m!7639390))

(assert (=> b!6932871 m!7639386))

(declare-fun m!7639392 () Bool)

(assert (=> b!6932871 m!7639392))

(declare-fun m!7639394 () Bool)

(assert (=> b!6932871 m!7639394))

(declare-fun m!7639396 () Bool)

(assert (=> b!6932861 m!7639396))

(declare-fun m!7639398 () Bool)

(assert (=> b!6932861 m!7639398))

(declare-fun m!7639400 () Bool)

(assert (=> b!6932860 m!7639400))

(declare-fun m!7639402 () Bool)

(assert (=> b!6932860 m!7639402))

(declare-fun m!7639404 () Bool)

(assert (=> b!6932860 m!7639404))

(declare-fun m!7639406 () Bool)

(assert (=> b!6932860 m!7639406))

(declare-fun m!7639408 () Bool)

(assert (=> b!6932860 m!7639408))

(assert (=> b!6932860 m!7639406))

(declare-fun m!7639410 () Bool)

(assert (=> b!6932860 m!7639410))

(declare-fun m!7639412 () Bool)

(assert (=> b!6932860 m!7639412))

(assert (=> b!6932860 m!7639404))

(declare-fun m!7639414 () Bool)

(assert (=> b!6932860 m!7639414))

(declare-fun m!7639416 () Bool)

(assert (=> b!6932860 m!7639416))

(declare-fun m!7639418 () Bool)

(assert (=> b!6932860 m!7639418))

(declare-fun m!7639420 () Bool)

(assert (=> b!6932860 m!7639420))

(declare-fun m!7639422 () Bool)

(assert (=> b!6932860 m!7639422))

(declare-fun m!7639424 () Bool)

(assert (=> b!6932860 m!7639424))

(declare-fun m!7639426 () Bool)

(assert (=> b!6932851 m!7639426))

(declare-fun m!7639428 () Bool)

(assert (=> b!6932851 m!7639428))

(declare-fun m!7639430 () Bool)

(assert (=> b!6932851 m!7639430))

(declare-fun m!7639432 () Bool)

(assert (=> b!6932851 m!7639432))

(declare-fun m!7639434 () Bool)

(assert (=> b!6932851 m!7639434))

(declare-fun m!7639436 () Bool)

(assert (=> b!6932851 m!7639436))

(declare-fun m!7639438 () Bool)

(assert (=> b!6932872 m!7639438))

(declare-fun m!7639440 () Bool)

(assert (=> b!6932872 m!7639440))

(declare-fun m!7639442 () Bool)

(assert (=> b!6932872 m!7639442))

(declare-fun m!7639444 () Bool)

(assert (=> b!6932872 m!7639444))

(declare-fun m!7639446 () Bool)

(assert (=> b!6932872 m!7639446))

(declare-fun m!7639448 () Bool)

(assert (=> b!6932872 m!7639448))

(declare-fun m!7639450 () Bool)

(assert (=> b!6932872 m!7639450))

(declare-fun m!7639452 () Bool)

(assert (=> b!6932872 m!7639452))

(declare-fun m!7639454 () Bool)

(assert (=> b!6932872 m!7639454))

(declare-fun m!7639456 () Bool)

(assert (=> b!6932872 m!7639456))

(assert (=> b!6932872 m!7639448))

(declare-fun m!7639458 () Bool)

(assert (=> b!6932864 m!7639458))

(declare-fun m!7639460 () Bool)

(assert (=> b!6932862 m!7639460))

(declare-fun m!7639462 () Bool)

(assert (=> b!6932852 m!7639462))

(declare-fun m!7639464 () Bool)

(assert (=> start!666178 m!7639464))

(declare-fun m!7639466 () Bool)

(assert (=> b!6932863 m!7639466))

(declare-fun m!7639468 () Bool)

(assert (=> b!6932863 m!7639468))

(declare-fun m!7639470 () Bool)

(assert (=> b!6932863 m!7639470))

(declare-fun m!7639472 () Bool)

(assert (=> b!6932863 m!7639472))

(declare-fun m!7639474 () Bool)

(assert (=> b!6932863 m!7639474))

(declare-fun m!7639476 () Bool)

(assert (=> b!6932863 m!7639476))

(declare-fun m!7639478 () Bool)

(assert (=> b!6932863 m!7639478))

(assert (=> b!6932863 m!7639478))

(declare-fun m!7639480 () Bool)

(assert (=> b!6932863 m!7639480))

(declare-fun m!7639482 () Bool)

(assert (=> b!6932869 m!7639482))

(check-sat (not b!6932862) tp_is_empty!43127 (not b!6932853) (not b!6932851) (not b!6932860) (not start!666178) (not b!6932855) (not b!6932857) (not b!6932873) (not b!6932868) (not b!6932863) (not b!6932865) (not b!6932852) (not b!6932856) (not b!6932854) (not b!6932864) (not b!6932866) (not b!6932861) (not b!6932872) (not b!6932871) (not b!6932870) (not b!6932869))
(check-sat)
(get-model)

(declare-fun b!6932954 () Bool)

(declare-fun e!4171433 () Bool)

(declare-fun call!629965 () Bool)

(assert (=> b!6932954 (= e!4171433 call!629965)))

(declare-fun b!6932955 () Bool)

(declare-fun e!4171434 () Bool)

(declare-fun call!629964 () Bool)

(assert (=> b!6932955 (= e!4171434 call!629964)))

(declare-fun b!6932956 () Bool)

(declare-fun res!2827591 () Bool)

(declare-fun e!4171429 () Bool)

(assert (=> b!6932956 (=> res!2827591 e!4171429)))

(assert (=> b!6932956 (= res!2827591 (not ((_ is Concat!25796) r2!6280)))))

(declare-fun e!4171430 () Bool)

(assert (=> b!6932956 (= e!4171430 e!4171429)))

(declare-fun b!6932958 () Bool)

(declare-fun res!2827595 () Bool)

(declare-fun e!4171435 () Bool)

(assert (=> b!6932958 (=> (not res!2827595) (not e!4171435))))

(assert (=> b!6932958 (= res!2827595 call!629965)))

(assert (=> b!6932958 (= e!4171430 e!4171435)))

(declare-fun b!6932959 () Bool)

(declare-fun call!629966 () Bool)

(assert (=> b!6932959 (= e!4171435 call!629966)))

(declare-fun bm!629959 () Bool)

(declare-fun c!1286618 () Bool)

(assert (=> bm!629959 (= call!629965 (validRegex!8657 (ite c!1286618 (regOne!34415 r2!6280) (regTwo!34414 r2!6280))))))

(declare-fun bm!629960 () Bool)

(assert (=> bm!629960 (= call!629966 call!629964)))

(declare-fun b!6932960 () Bool)

(declare-fun e!4171432 () Bool)

(assert (=> b!6932960 (= e!4171432 e!4171434)))

(declare-fun res!2827593 () Bool)

(declare-fun nullable!6770 (Regex!16951) Bool)

(assert (=> b!6932960 (= res!2827593 (not (nullable!6770 (reg!17280 r2!6280))))))

(assert (=> b!6932960 (=> (not res!2827593) (not e!4171434))))

(declare-fun b!6932961 () Bool)

(declare-fun e!4171431 () Bool)

(assert (=> b!6932961 (= e!4171431 e!4171432)))

(declare-fun c!1286619 () Bool)

(assert (=> b!6932961 (= c!1286619 ((_ is Star!16951) r2!6280))))

(declare-fun d!2166261 () Bool)

(declare-fun res!2827594 () Bool)

(assert (=> d!2166261 (=> res!2827594 e!4171431)))

(assert (=> d!2166261 (= res!2827594 ((_ is ElementMatch!16951) r2!6280))))

(assert (=> d!2166261 (= (validRegex!8657 r2!6280) e!4171431)))

(declare-fun b!6932957 () Bool)

(assert (=> b!6932957 (= e!4171429 e!4171433)))

(declare-fun res!2827592 () Bool)

(assert (=> b!6932957 (=> (not res!2827592) (not e!4171433))))

(assert (=> b!6932957 (= res!2827592 call!629966)))

(declare-fun b!6932962 () Bool)

(assert (=> b!6932962 (= e!4171432 e!4171430)))

(assert (=> b!6932962 (= c!1286618 ((_ is Union!16951) r2!6280))))

(declare-fun bm!629961 () Bool)

(assert (=> bm!629961 (= call!629964 (validRegex!8657 (ite c!1286619 (reg!17280 r2!6280) (ite c!1286618 (regTwo!34415 r2!6280) (regOne!34414 r2!6280)))))))

(assert (= (and d!2166261 (not res!2827594)) b!6932961))

(assert (= (and b!6932961 c!1286619) b!6932960))

(assert (= (and b!6932961 (not c!1286619)) b!6932962))

(assert (= (and b!6932960 res!2827593) b!6932955))

(assert (= (and b!6932962 c!1286618) b!6932958))

(assert (= (and b!6932962 (not c!1286618)) b!6932956))

(assert (= (and b!6932958 res!2827595) b!6932959))

(assert (= (and b!6932956 (not res!2827591)) b!6932957))

(assert (= (and b!6932957 res!2827592) b!6932954))

(assert (= (or b!6932958 b!6932954) bm!629959))

(assert (= (or b!6932959 b!6932957) bm!629960))

(assert (= (or b!6932955 bm!629960) bm!629961))

(declare-fun m!7639514 () Bool)

(assert (=> bm!629959 m!7639514))

(declare-fun m!7639516 () Bool)

(assert (=> b!6932960 m!7639516))

(declare-fun m!7639518 () Bool)

(assert (=> bm!629961 m!7639518))

(assert (=> b!6932869 d!2166261))

(declare-fun b!6932977 () Bool)

(declare-fun e!4171447 () Bool)

(declare-fun call!629969 () Bool)

(assert (=> b!6932977 (= e!4171447 call!629969)))

(declare-fun b!6932978 () Bool)

(declare-fun e!4171448 () Bool)

(declare-fun call!629968 () Bool)

(assert (=> b!6932978 (= e!4171448 call!629968)))

(declare-fun b!6932979 () Bool)

(declare-fun res!2827604 () Bool)

(declare-fun e!4171443 () Bool)

(assert (=> b!6932979 (=> res!2827604 e!4171443)))

(assert (=> b!6932979 (= res!2827604 (not ((_ is Concat!25796) r1!6342)))))

(declare-fun e!4171444 () Bool)

(assert (=> b!6932979 (= e!4171444 e!4171443)))

(declare-fun b!6932981 () Bool)

(declare-fun res!2827608 () Bool)

(declare-fun e!4171449 () Bool)

(assert (=> b!6932981 (=> (not res!2827608) (not e!4171449))))

(assert (=> b!6932981 (= res!2827608 call!629969)))

(assert (=> b!6932981 (= e!4171444 e!4171449)))

(declare-fun b!6932982 () Bool)

(declare-fun call!629970 () Bool)

(assert (=> b!6932982 (= e!4171449 call!629970)))

(declare-fun bm!629963 () Bool)

(declare-fun c!1286623 () Bool)

(assert (=> bm!629963 (= call!629969 (validRegex!8657 (ite c!1286623 (regOne!34415 r1!6342) (regTwo!34414 r1!6342))))))

(declare-fun bm!629964 () Bool)

(assert (=> bm!629964 (= call!629970 call!629968)))

(declare-fun b!6932983 () Bool)

(declare-fun e!4171446 () Bool)

(assert (=> b!6932983 (= e!4171446 e!4171448)))

(declare-fun res!2827606 () Bool)

(assert (=> b!6932983 (= res!2827606 (not (nullable!6770 (reg!17280 r1!6342))))))

(assert (=> b!6932983 (=> (not res!2827606) (not e!4171448))))

(declare-fun b!6932984 () Bool)

(declare-fun e!4171445 () Bool)

(assert (=> b!6932984 (= e!4171445 e!4171446)))

(declare-fun c!1286624 () Bool)

(assert (=> b!6932984 (= c!1286624 ((_ is Star!16951) r1!6342))))

(declare-fun d!2166267 () Bool)

(declare-fun res!2827607 () Bool)

(assert (=> d!2166267 (=> res!2827607 e!4171445)))

(assert (=> d!2166267 (= res!2827607 ((_ is ElementMatch!16951) r1!6342))))

(assert (=> d!2166267 (= (validRegex!8657 r1!6342) e!4171445)))

(declare-fun b!6932980 () Bool)

(assert (=> b!6932980 (= e!4171443 e!4171447)))

(declare-fun res!2827605 () Bool)

(assert (=> b!6932980 (=> (not res!2827605) (not e!4171447))))

(assert (=> b!6932980 (= res!2827605 call!629970)))

(declare-fun b!6932985 () Bool)

(assert (=> b!6932985 (= e!4171446 e!4171444)))

(assert (=> b!6932985 (= c!1286623 ((_ is Union!16951) r1!6342))))

(declare-fun bm!629965 () Bool)

(assert (=> bm!629965 (= call!629968 (validRegex!8657 (ite c!1286624 (reg!17280 r1!6342) (ite c!1286623 (regTwo!34415 r1!6342) (regOne!34414 r1!6342)))))))

(assert (= (and d!2166267 (not res!2827607)) b!6932984))

(assert (= (and b!6932984 c!1286624) b!6932983))

(assert (= (and b!6932984 (not c!1286624)) b!6932985))

(assert (= (and b!6932983 res!2827606) b!6932978))

(assert (= (and b!6932985 c!1286623) b!6932981))

(assert (= (and b!6932985 (not c!1286623)) b!6932979))

(assert (= (and b!6932981 res!2827608) b!6932982))

(assert (= (and b!6932979 (not res!2827604)) b!6932980))

(assert (= (and b!6932980 res!2827605) b!6932977))

(assert (= (or b!6932981 b!6932977) bm!629963))

(assert (= (or b!6932982 b!6932980) bm!629964))

(assert (= (or b!6932978 bm!629964) bm!629965))

(declare-fun m!7639528 () Bool)

(assert (=> bm!629963 m!7639528))

(declare-fun m!7639530 () Bool)

(assert (=> b!6932983 m!7639530))

(declare-fun m!7639532 () Bool)

(assert (=> bm!629965 m!7639532))

(assert (=> start!666178 d!2166267))

(declare-fun b!6932986 () Bool)

(declare-fun e!4171454 () Bool)

(declare-fun call!629972 () Bool)

(assert (=> b!6932986 (= e!4171454 call!629972)))

(declare-fun b!6932987 () Bool)

(declare-fun e!4171455 () Bool)

(declare-fun call!629971 () Bool)

(assert (=> b!6932987 (= e!4171455 call!629971)))

(declare-fun b!6932988 () Bool)

(declare-fun res!2827609 () Bool)

(declare-fun e!4171450 () Bool)

(assert (=> b!6932988 (=> res!2827609 e!4171450)))

(assert (=> b!6932988 (= res!2827609 (not ((_ is Concat!25796) r3!135)))))

(declare-fun e!4171451 () Bool)

(assert (=> b!6932988 (= e!4171451 e!4171450)))

(declare-fun b!6932990 () Bool)

(declare-fun res!2827613 () Bool)

(declare-fun e!4171456 () Bool)

(assert (=> b!6932990 (=> (not res!2827613) (not e!4171456))))

(assert (=> b!6932990 (= res!2827613 call!629972)))

(assert (=> b!6932990 (= e!4171451 e!4171456)))

(declare-fun b!6932991 () Bool)

(declare-fun call!629973 () Bool)

(assert (=> b!6932991 (= e!4171456 call!629973)))

(declare-fun bm!629966 () Bool)

(declare-fun c!1286625 () Bool)

(assert (=> bm!629966 (= call!629972 (validRegex!8657 (ite c!1286625 (regOne!34415 r3!135) (regTwo!34414 r3!135))))))

(declare-fun bm!629967 () Bool)

(assert (=> bm!629967 (= call!629973 call!629971)))

(declare-fun b!6932992 () Bool)

(declare-fun e!4171453 () Bool)

(assert (=> b!6932992 (= e!4171453 e!4171455)))

(declare-fun res!2827611 () Bool)

(assert (=> b!6932992 (= res!2827611 (not (nullable!6770 (reg!17280 r3!135))))))

(assert (=> b!6932992 (=> (not res!2827611) (not e!4171455))))

(declare-fun b!6932993 () Bool)

(declare-fun e!4171452 () Bool)

(assert (=> b!6932993 (= e!4171452 e!4171453)))

(declare-fun c!1286626 () Bool)

(assert (=> b!6932993 (= c!1286626 ((_ is Star!16951) r3!135))))

(declare-fun d!2166271 () Bool)

(declare-fun res!2827612 () Bool)

(assert (=> d!2166271 (=> res!2827612 e!4171452)))

(assert (=> d!2166271 (= res!2827612 ((_ is ElementMatch!16951) r3!135))))

(assert (=> d!2166271 (= (validRegex!8657 r3!135) e!4171452)))

(declare-fun b!6932989 () Bool)

(assert (=> b!6932989 (= e!4171450 e!4171454)))

(declare-fun res!2827610 () Bool)

(assert (=> b!6932989 (=> (not res!2827610) (not e!4171454))))

(assert (=> b!6932989 (= res!2827610 call!629973)))

(declare-fun b!6932994 () Bool)

(assert (=> b!6932994 (= e!4171453 e!4171451)))

(assert (=> b!6932994 (= c!1286625 ((_ is Union!16951) r3!135))))

(declare-fun bm!629968 () Bool)

(assert (=> bm!629968 (= call!629971 (validRegex!8657 (ite c!1286626 (reg!17280 r3!135) (ite c!1286625 (regTwo!34415 r3!135) (regOne!34414 r3!135)))))))

(assert (= (and d!2166271 (not res!2827612)) b!6932993))

(assert (= (and b!6932993 c!1286626) b!6932992))

(assert (= (and b!6932993 (not c!1286626)) b!6932994))

(assert (= (and b!6932992 res!2827611) b!6932987))

(assert (= (and b!6932994 c!1286625) b!6932990))

(assert (= (and b!6932994 (not c!1286625)) b!6932988))

(assert (= (and b!6932990 res!2827613) b!6932991))

(assert (= (and b!6932988 (not res!2827609)) b!6932989))

(assert (= (and b!6932989 res!2827610) b!6932986))

(assert (= (or b!6932990 b!6932986) bm!629966))

(assert (= (or b!6932991 b!6932989) bm!629967))

(assert (= (or b!6932987 bm!629967) bm!629968))

(declare-fun m!7639534 () Bool)

(assert (=> bm!629966 m!7639534))

(declare-fun m!7639536 () Bool)

(assert (=> b!6932992 m!7639536))

(declare-fun m!7639538 () Bool)

(assert (=> bm!629968 m!7639538))

(assert (=> b!6932864 d!2166271))

(declare-fun bs!1850830 () Bool)

(declare-fun b!6933065 () Bool)

(assert (= bs!1850830 (and b!6933065 b!6932872)))

(declare-fun lambda!394619 () Int)

(assert (=> bs!1850830 (not (= lambda!394619 lambda!394607))))

(assert (=> bs!1850830 (not (= lambda!394619 lambda!394608))))

(declare-fun bs!1850831 () Bool)

(assert (= bs!1850831 (and b!6933065 b!6932860)))

(assert (=> bs!1850831 (not (= lambda!394619 lambda!394609))))

(declare-fun bs!1850832 () Bool)

(assert (= bs!1850832 (and b!6933065 b!6932863)))

(assert (=> bs!1850832 (not (= lambda!394619 lambda!394605))))

(assert (=> bs!1850832 (not (= lambda!394619 lambda!394606))))

(assert (=> bs!1850831 (not (= lambda!394619 lambda!394610))))

(assert (=> b!6933065 true))

(assert (=> b!6933065 true))

(declare-fun bs!1850833 () Bool)

(declare-fun b!6933061 () Bool)

(assert (= bs!1850833 (and b!6933061 b!6933065)))

(declare-fun lambda!394620 () Int)

(assert (=> bs!1850833 (not (= lambda!394620 lambda!394619))))

(declare-fun bs!1850835 () Bool)

(assert (= bs!1850835 (and b!6933061 b!6932872)))

(assert (=> bs!1850835 (not (= lambda!394620 lambda!394607))))

(assert (=> bs!1850835 (= (and (= lt!2473646 (_2!37111 lt!2473648)) (= (regOne!34414 lt!2473647) r2!6280) (= (regTwo!34414 lt!2473647) r3!135)) (= lambda!394620 lambda!394608))))

(declare-fun bs!1850837 () Bool)

(assert (= bs!1850837 (and b!6933061 b!6932860)))

(assert (=> bs!1850837 (not (= lambda!394620 lambda!394609))))

(declare-fun bs!1850838 () Bool)

(assert (= bs!1850838 (and b!6933061 b!6932863)))

(assert (=> bs!1850838 (not (= lambda!394620 lambda!394605))))

(assert (=> bs!1850838 (= (and (= lt!2473646 s!14361) (= (regOne!34414 lt!2473647) r1!6342) (= (regTwo!34414 lt!2473647) lt!2473650)) (= lambda!394620 lambda!394606))))

(assert (=> bs!1850837 (= (and (= (regOne!34414 lt!2473647) r1!6342) (= (regTwo!34414 lt!2473647) r2!6280)) (= lambda!394620 lambda!394610))))

(assert (=> b!6933061 true))

(assert (=> b!6933061 true))

(declare-fun bm!629977 () Bool)

(declare-fun c!1286644 () Bool)

(declare-fun call!629982 () Bool)

(assert (=> bm!629977 (= call!629982 (Exists!3951 (ite c!1286644 lambda!394619 lambda!394620)))))

(declare-fun b!6933059 () Bool)

(declare-fun e!4171498 () Bool)

(assert (=> b!6933059 (= e!4171498 (= lt!2473646 (Cons!66580 (c!1286601 lt!2473647) Nil!66580)))))

(declare-fun b!6933060 () Bool)

(declare-fun e!4171496 () Bool)

(assert (=> b!6933060 (= e!4171496 (matchRSpec!4008 (regTwo!34415 lt!2473647) lt!2473646))))

(declare-fun e!4171493 () Bool)

(assert (=> b!6933061 (= e!4171493 call!629982)))

(declare-fun b!6933062 () Bool)

(declare-fun e!4171495 () Bool)

(declare-fun call!629983 () Bool)

(assert (=> b!6933062 (= e!4171495 call!629983)))

(declare-fun b!6933063 () Bool)

(declare-fun c!1286643 () Bool)

(assert (=> b!6933063 (= c!1286643 ((_ is ElementMatch!16951) lt!2473647))))

(declare-fun e!4171494 () Bool)

(assert (=> b!6933063 (= e!4171494 e!4171498)))

(declare-fun b!6933064 () Bool)

(declare-fun e!4171499 () Bool)

(assert (=> b!6933064 (= e!4171499 e!4171496)))

(declare-fun res!2827646 () Bool)

(assert (=> b!6933064 (= res!2827646 (matchRSpec!4008 (regOne!34415 lt!2473647) lt!2473646))))

(assert (=> b!6933064 (=> res!2827646 e!4171496)))

(declare-fun e!4171497 () Bool)

(assert (=> b!6933065 (= e!4171497 call!629982)))

(declare-fun b!6933066 () Bool)

(declare-fun res!2827648 () Bool)

(assert (=> b!6933066 (=> res!2827648 e!4171497)))

(assert (=> b!6933066 (= res!2827648 call!629983)))

(assert (=> b!6933066 (= e!4171493 e!4171497)))

(declare-fun b!6933067 () Bool)

(declare-fun c!1286645 () Bool)

(assert (=> b!6933067 (= c!1286645 ((_ is Union!16951) lt!2473647))))

(assert (=> b!6933067 (= e!4171498 e!4171499)))

(declare-fun b!6933068 () Bool)

(assert (=> b!6933068 (= e!4171499 e!4171493)))

(assert (=> b!6933068 (= c!1286644 ((_ is Star!16951) lt!2473647))))

(declare-fun b!6933069 () Bool)

(assert (=> b!6933069 (= e!4171495 e!4171494)))

(declare-fun res!2827647 () Bool)

(assert (=> b!6933069 (= res!2827647 (not ((_ is EmptyLang!16951) lt!2473647)))))

(assert (=> b!6933069 (=> (not res!2827647) (not e!4171494))))

(declare-fun d!2166273 () Bool)

(declare-fun c!1286646 () Bool)

(assert (=> d!2166273 (= c!1286646 ((_ is EmptyExpr!16951) lt!2473647))))

(assert (=> d!2166273 (= (matchRSpec!4008 lt!2473647 lt!2473646) e!4171495)))

(declare-fun bm!629978 () Bool)

(declare-fun isEmpty!38841 (List!66704) Bool)

(assert (=> bm!629978 (= call!629983 (isEmpty!38841 lt!2473646))))

(assert (= (and d!2166273 c!1286646) b!6933062))

(assert (= (and d!2166273 (not c!1286646)) b!6933069))

(assert (= (and b!6933069 res!2827647) b!6933063))

(assert (= (and b!6933063 c!1286643) b!6933059))

(assert (= (and b!6933063 (not c!1286643)) b!6933067))

(assert (= (and b!6933067 c!1286645) b!6933064))

(assert (= (and b!6933067 (not c!1286645)) b!6933068))

(assert (= (and b!6933064 (not res!2827646)) b!6933060))

(assert (= (and b!6933068 c!1286644) b!6933066))

(assert (= (and b!6933068 (not c!1286644)) b!6933061))

(assert (= (and b!6933066 (not res!2827648)) b!6933065))

(assert (= (or b!6933065 b!6933061) bm!629977))

(assert (= (or b!6933062 b!6933066) bm!629978))

(declare-fun m!7639544 () Bool)

(assert (=> bm!629977 m!7639544))

(declare-fun m!7639546 () Bool)

(assert (=> b!6933060 m!7639546))

(declare-fun m!7639548 () Bool)

(assert (=> b!6933064 m!7639548))

(declare-fun m!7639550 () Bool)

(assert (=> bm!629978 m!7639550))

(assert (=> b!6932860 d!2166273))

(declare-fun d!2166279 () Bool)

(assert (=> d!2166279 (= (matchR!9090 lt!2473647 lt!2473646) (matchRSpec!4008 lt!2473647 lt!2473646))))

(declare-fun lt!2473667 () Unit!160626)

(declare-fun choose!51633 (Regex!16951 List!66704) Unit!160626)

(assert (=> d!2166279 (= lt!2473667 (choose!51633 lt!2473647 lt!2473646))))

(assert (=> d!2166279 (validRegex!8657 lt!2473647)))

(assert (=> d!2166279 (= (mainMatchTheorem!4008 lt!2473647 lt!2473646) lt!2473667)))

(declare-fun bs!1850849 () Bool)

(assert (= bs!1850849 d!2166279))

(assert (=> bs!1850849 m!7639416))

(assert (=> bs!1850849 m!7639412))

(declare-fun m!7639558 () Bool)

(assert (=> bs!1850849 m!7639558))

(declare-fun m!7639560 () Bool)

(assert (=> bs!1850849 m!7639560))

(assert (=> b!6932860 d!2166279))

(declare-fun b!6933160 () Bool)

(declare-fun res!2827697 () Bool)

(declare-fun e!4171559 () Bool)

(assert (=> b!6933160 (=> (not res!2827697) (not e!4171559))))

(declare-fun lt!2473676 () Option!16720)

(assert (=> b!6933160 (= res!2827697 (matchR!9090 r2!6280 (_2!37111 (get!23363 lt!2473676))))))

(declare-fun d!2166283 () Bool)

(declare-fun e!4171561 () Bool)

(assert (=> d!2166283 e!4171561))

(declare-fun res!2827693 () Bool)

(assert (=> d!2166283 (=> res!2827693 e!4171561)))

(assert (=> d!2166283 (= res!2827693 e!4171559)))

(declare-fun res!2827694 () Bool)

(assert (=> d!2166283 (=> (not res!2827694) (not e!4171559))))

(assert (=> d!2166283 (= res!2827694 (isDefined!13421 lt!2473676))))

(declare-fun e!4171560 () Option!16720)

(assert (=> d!2166283 (= lt!2473676 e!4171560)))

(declare-fun c!1286670 () Bool)

(declare-fun e!4171563 () Bool)

(assert (=> d!2166283 (= c!1286670 e!4171563)))

(declare-fun res!2827695 () Bool)

(assert (=> d!2166283 (=> (not res!2827695) (not e!4171563))))

(assert (=> d!2166283 (= res!2827695 (matchR!9090 r1!6342 Nil!66580))))

(assert (=> d!2166283 (validRegex!8657 r1!6342)))

(assert (=> d!2166283 (= (findConcatSeparation!3134 r1!6342 r2!6280 Nil!66580 lt!2473646 lt!2473646) lt!2473676)))

(declare-fun b!6933161 () Bool)

(assert (=> b!6933161 (= e!4171561 (not (isDefined!13421 lt!2473676)))))

(declare-fun b!6933162 () Bool)

(declare-fun e!4171562 () Option!16720)

(assert (=> b!6933162 (= e!4171560 e!4171562)))

(declare-fun c!1286671 () Bool)

(assert (=> b!6933162 (= c!1286671 ((_ is Nil!66580) lt!2473646))))

(declare-fun b!6933163 () Bool)

(assert (=> b!6933163 (= e!4171560 (Some!16719 (tuple2!67617 Nil!66580 lt!2473646)))))

(declare-fun b!6933164 () Bool)

(assert (=> b!6933164 (= e!4171559 (= (++!14990 (_1!37111 (get!23363 lt!2473676)) (_2!37111 (get!23363 lt!2473676))) lt!2473646))))

(declare-fun b!6933165 () Bool)

(declare-fun res!2827696 () Bool)

(assert (=> b!6933165 (=> (not res!2827696) (not e!4171559))))

(assert (=> b!6933165 (= res!2827696 (matchR!9090 r1!6342 (_1!37111 (get!23363 lt!2473676))))))

(declare-fun b!6933166 () Bool)

(assert (=> b!6933166 (= e!4171563 (matchR!9090 r2!6280 lt!2473646))))

(declare-fun b!6933167 () Bool)

(assert (=> b!6933167 (= e!4171562 None!16719)))

(declare-fun b!6933168 () Bool)

(declare-fun lt!2473677 () Unit!160626)

(declare-fun lt!2473675 () Unit!160626)

(assert (=> b!6933168 (= lt!2473677 lt!2473675)))

(assert (=> b!6933168 (= (++!14990 (++!14990 Nil!66580 (Cons!66580 (h!73028 lt!2473646) Nil!66580)) (t!380447 lt!2473646)) lt!2473646)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2848 (List!66704 C!34172 List!66704 List!66704) Unit!160626)

(assert (=> b!6933168 (= lt!2473675 (lemmaMoveElementToOtherListKeepsConcatEq!2848 Nil!66580 (h!73028 lt!2473646) (t!380447 lt!2473646) lt!2473646))))

(assert (=> b!6933168 (= e!4171562 (findConcatSeparation!3134 r1!6342 r2!6280 (++!14990 Nil!66580 (Cons!66580 (h!73028 lt!2473646) Nil!66580)) (t!380447 lt!2473646) lt!2473646))))

(assert (= (and d!2166283 res!2827695) b!6933166))

(assert (= (and d!2166283 c!1286670) b!6933163))

(assert (= (and d!2166283 (not c!1286670)) b!6933162))

(assert (= (and b!6933162 c!1286671) b!6933167))

(assert (= (and b!6933162 (not c!1286671)) b!6933168))

(assert (= (and d!2166283 res!2827694) b!6933165))

(assert (= (and b!6933165 res!2827696) b!6933160))

(assert (= (and b!6933160 res!2827697) b!6933164))

(assert (= (and d!2166283 (not res!2827693)) b!6933161))

(declare-fun m!7639596 () Bool)

(assert (=> b!6933168 m!7639596))

(assert (=> b!6933168 m!7639596))

(declare-fun m!7639598 () Bool)

(assert (=> b!6933168 m!7639598))

(declare-fun m!7639600 () Bool)

(assert (=> b!6933168 m!7639600))

(assert (=> b!6933168 m!7639596))

(declare-fun m!7639602 () Bool)

(assert (=> b!6933168 m!7639602))

(declare-fun m!7639604 () Bool)

(assert (=> b!6933161 m!7639604))

(declare-fun m!7639606 () Bool)

(assert (=> b!6933166 m!7639606))

(declare-fun m!7639608 () Bool)

(assert (=> b!6933165 m!7639608))

(declare-fun m!7639610 () Bool)

(assert (=> b!6933165 m!7639610))

(assert (=> b!6933164 m!7639608))

(declare-fun m!7639612 () Bool)

(assert (=> b!6933164 m!7639612))

(assert (=> b!6933160 m!7639608))

(declare-fun m!7639614 () Bool)

(assert (=> b!6933160 m!7639614))

(assert (=> d!2166283 m!7639604))

(declare-fun m!7639616 () Bool)

(assert (=> d!2166283 m!7639616))

(assert (=> d!2166283 m!7639464))

(assert (=> b!6932860 d!2166283))

(declare-fun d!2166295 () Bool)

(declare-fun isEmpty!38842 (Option!16720) Bool)

(assert (=> d!2166295 (= (isDefined!13421 (findConcatSeparation!3134 r1!6342 r2!6280 Nil!66580 lt!2473646 lt!2473646)) (not (isEmpty!38842 (findConcatSeparation!3134 r1!6342 r2!6280 Nil!66580 lt!2473646 lt!2473646))))))

(declare-fun bs!1850856 () Bool)

(assert (= bs!1850856 d!2166295))

(assert (=> bs!1850856 m!7639404))

(declare-fun m!7639618 () Bool)

(assert (=> bs!1850856 m!7639618))

(assert (=> b!6932860 d!2166295))

(declare-fun d!2166297 () Bool)

(declare-fun choose!51634 (Int) Bool)

(assert (=> d!2166297 (= (Exists!3951 lambda!394609) (choose!51634 lambda!394609))))

(declare-fun bs!1850857 () Bool)

(assert (= bs!1850857 d!2166297))

(declare-fun m!7639620 () Bool)

(assert (=> bs!1850857 m!7639620))

(assert (=> b!6932860 d!2166297))

(declare-fun d!2166299 () Bool)

(assert (=> d!2166299 (= (Exists!3951 lambda!394610) (choose!51634 lambda!394610))))

(declare-fun bs!1850858 () Bool)

(assert (= bs!1850858 d!2166299))

(declare-fun m!7639622 () Bool)

(assert (=> bs!1850858 m!7639622))

(assert (=> b!6932860 d!2166299))

(declare-fun bs!1850867 () Bool)

(declare-fun d!2166301 () Bool)

(assert (= bs!1850867 (and d!2166301 b!6933065)))

(declare-fun lambda!394634 () Int)

(assert (=> bs!1850867 (not (= lambda!394634 lambda!394619))))

(declare-fun bs!1850868 () Bool)

(assert (= bs!1850868 (and d!2166301 b!6932872)))

(assert (=> bs!1850868 (= (and (= lt!2473646 (_2!37111 lt!2473648)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394634 lambda!394607))))

(assert (=> bs!1850868 (not (= lambda!394634 lambda!394608))))

(declare-fun bs!1850869 () Bool)

(assert (= bs!1850869 (and d!2166301 b!6932860)))

(assert (=> bs!1850869 (= lambda!394634 lambda!394609)))

(declare-fun bs!1850870 () Bool)

(assert (= bs!1850870 (and d!2166301 b!6932863)))

(assert (=> bs!1850870 (= (and (= lt!2473646 s!14361) (= r2!6280 lt!2473650)) (= lambda!394634 lambda!394605))))

(assert (=> bs!1850869 (not (= lambda!394634 lambda!394610))))

(declare-fun bs!1850871 () Bool)

(assert (= bs!1850871 (and d!2166301 b!6933061)))

(assert (=> bs!1850871 (not (= lambda!394634 lambda!394620))))

(assert (=> bs!1850870 (not (= lambda!394634 lambda!394606))))

(assert (=> d!2166301 true))

(assert (=> d!2166301 true))

(assert (=> d!2166301 true))

(declare-fun lambda!394637 () Int)

(assert (=> bs!1850867 (not (= lambda!394637 lambda!394619))))

(declare-fun bs!1850872 () Bool)

(assert (= bs!1850872 d!2166301))

(assert (=> bs!1850872 (not (= lambda!394637 lambda!394634))))

(assert (=> bs!1850868 (not (= lambda!394637 lambda!394607))))

(assert (=> bs!1850868 (= (and (= lt!2473646 (_2!37111 lt!2473648)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394637 lambda!394608))))

(assert (=> bs!1850869 (not (= lambda!394637 lambda!394609))))

(assert (=> bs!1850870 (not (= lambda!394637 lambda!394605))))

(assert (=> bs!1850869 (= lambda!394637 lambda!394610)))

(assert (=> bs!1850871 (= (and (= r1!6342 (regOne!34414 lt!2473647)) (= r2!6280 (regTwo!34414 lt!2473647))) (= lambda!394637 lambda!394620))))

(assert (=> bs!1850870 (= (and (= lt!2473646 s!14361) (= r2!6280 lt!2473650)) (= lambda!394637 lambda!394606))))

(assert (=> d!2166301 true))

(assert (=> d!2166301 true))

(assert (=> d!2166301 true))

(assert (=> d!2166301 (= (Exists!3951 lambda!394634) (Exists!3951 lambda!394637))))

(declare-fun lt!2473685 () Unit!160626)

(declare-fun choose!51635 (Regex!16951 Regex!16951 List!66704) Unit!160626)

(assert (=> d!2166301 (= lt!2473685 (choose!51635 r1!6342 r2!6280 lt!2473646))))

(assert (=> d!2166301 (validRegex!8657 r1!6342)))

(assert (=> d!2166301 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2412 r1!6342 r2!6280 lt!2473646) lt!2473685)))

(declare-fun m!7639630 () Bool)

(assert (=> bs!1850872 m!7639630))

(declare-fun m!7639632 () Bool)

(assert (=> bs!1850872 m!7639632))

(declare-fun m!7639634 () Bool)

(assert (=> bs!1850872 m!7639634))

(assert (=> bs!1850872 m!7639464))

(assert (=> b!6932860 d!2166301))

(declare-fun d!2166305 () Bool)

(assert (=> d!2166305 (= (++!14990 (++!14990 (_1!37111 lt!2473648) (_1!37111 lt!2473640)) (_2!37111 lt!2473640)) (++!14990 (_1!37111 lt!2473648) (++!14990 (_1!37111 lt!2473640) (_2!37111 lt!2473640))))))

(declare-fun lt!2473689 () Unit!160626)

(declare-fun choose!51636 (List!66704 List!66704 List!66704) Unit!160626)

(assert (=> d!2166305 (= lt!2473689 (choose!51636 (_1!37111 lt!2473648) (_1!37111 lt!2473640) (_2!37111 lt!2473640)))))

(assert (=> d!2166305 (= (lemmaConcatAssociativity!3032 (_1!37111 lt!2473648) (_1!37111 lt!2473640) (_2!37111 lt!2473640)) lt!2473689)))

(declare-fun bs!1850882 () Bool)

(assert (= bs!1850882 d!2166305))

(assert (=> bs!1850882 m!7639386))

(assert (=> bs!1850882 m!7639418))

(assert (=> bs!1850882 m!7639418))

(declare-fun m!7639636 () Bool)

(assert (=> bs!1850882 m!7639636))

(assert (=> bs!1850882 m!7639386))

(assert (=> bs!1850882 m!7639392))

(declare-fun m!7639638 () Bool)

(assert (=> bs!1850882 m!7639638))

(assert (=> b!6932860 d!2166305))

(declare-fun b!6933223 () Bool)

(declare-fun e!4171593 () List!66704)

(assert (=> b!6933223 (= e!4171593 (Cons!66580 (h!73028 (_1!37111 lt!2473648)) (++!14990 (t!380447 (_1!37111 lt!2473648)) (_1!37111 lt!2473640))))))

(declare-fun b!6933222 () Bool)

(assert (=> b!6933222 (= e!4171593 (_1!37111 lt!2473640))))

(declare-fun d!2166307 () Bool)

(declare-fun e!4171592 () Bool)

(assert (=> d!2166307 e!4171592))

(declare-fun res!2827733 () Bool)

(assert (=> d!2166307 (=> (not res!2827733) (not e!4171592))))

(declare-fun lt!2473694 () List!66704)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13091 (List!66704) (InoxSet C!34172))

(assert (=> d!2166307 (= res!2827733 (= (content!13091 lt!2473694) ((_ map or) (content!13091 (_1!37111 lt!2473648)) (content!13091 (_1!37111 lt!2473640)))))))

(assert (=> d!2166307 (= lt!2473694 e!4171593)))

(declare-fun c!1286681 () Bool)

(assert (=> d!2166307 (= c!1286681 ((_ is Nil!66580) (_1!37111 lt!2473648)))))

(assert (=> d!2166307 (= (++!14990 (_1!37111 lt!2473648) (_1!37111 lt!2473640)) lt!2473694)))

(declare-fun b!6933224 () Bool)

(declare-fun res!2827734 () Bool)

(assert (=> b!6933224 (=> (not res!2827734) (not e!4171592))))

(declare-fun size!40788 (List!66704) Int)

(assert (=> b!6933224 (= res!2827734 (= (size!40788 lt!2473694) (+ (size!40788 (_1!37111 lt!2473648)) (size!40788 (_1!37111 lt!2473640)))))))

(declare-fun b!6933225 () Bool)

(assert (=> b!6933225 (= e!4171592 (or (not (= (_1!37111 lt!2473640) Nil!66580)) (= lt!2473694 (_1!37111 lt!2473648))))))

(assert (= (and d!2166307 c!1286681) b!6933222))

(assert (= (and d!2166307 (not c!1286681)) b!6933223))

(assert (= (and d!2166307 res!2827733) b!6933224))

(assert (= (and b!6933224 res!2827734) b!6933225))

(declare-fun m!7639662 () Bool)

(assert (=> b!6933223 m!7639662))

(declare-fun m!7639664 () Bool)

(assert (=> d!2166307 m!7639664))

(declare-fun m!7639666 () Bool)

(assert (=> d!2166307 m!7639666))

(declare-fun m!7639668 () Bool)

(assert (=> d!2166307 m!7639668))

(declare-fun m!7639670 () Bool)

(assert (=> b!6933224 m!7639670))

(declare-fun m!7639672 () Bool)

(assert (=> b!6933224 m!7639672))

(declare-fun m!7639674 () Bool)

(assert (=> b!6933224 m!7639674))

(assert (=> b!6932860 d!2166307))

(declare-fun b!6933227 () Bool)

(declare-fun e!4171595 () List!66704)

(assert (=> b!6933227 (= e!4171595 (Cons!66580 (h!73028 lt!2473646) (++!14990 (t!380447 lt!2473646) (_2!37111 lt!2473640))))))

(declare-fun b!6933226 () Bool)

(assert (=> b!6933226 (= e!4171595 (_2!37111 lt!2473640))))

(declare-fun d!2166315 () Bool)

(declare-fun e!4171594 () Bool)

(assert (=> d!2166315 e!4171594))

(declare-fun res!2827735 () Bool)

(assert (=> d!2166315 (=> (not res!2827735) (not e!4171594))))

(declare-fun lt!2473695 () List!66704)

(assert (=> d!2166315 (= res!2827735 (= (content!13091 lt!2473695) ((_ map or) (content!13091 lt!2473646) (content!13091 (_2!37111 lt!2473640)))))))

(assert (=> d!2166315 (= lt!2473695 e!4171595)))

(declare-fun c!1286682 () Bool)

(assert (=> d!2166315 (= c!1286682 ((_ is Nil!66580) lt!2473646))))

(assert (=> d!2166315 (= (++!14990 lt!2473646 (_2!37111 lt!2473640)) lt!2473695)))

(declare-fun b!6933228 () Bool)

(declare-fun res!2827736 () Bool)

(assert (=> b!6933228 (=> (not res!2827736) (not e!4171594))))

(assert (=> b!6933228 (= res!2827736 (= (size!40788 lt!2473695) (+ (size!40788 lt!2473646) (size!40788 (_2!37111 lt!2473640)))))))

(declare-fun b!6933229 () Bool)

(assert (=> b!6933229 (= e!4171594 (or (not (= (_2!37111 lt!2473640) Nil!66580)) (= lt!2473695 lt!2473646)))))

(assert (= (and d!2166315 c!1286682) b!6933226))

(assert (= (and d!2166315 (not c!1286682)) b!6933227))

(assert (= (and d!2166315 res!2827735) b!6933228))

(assert (= (and b!6933228 res!2827736) b!6933229))

(declare-fun m!7639676 () Bool)

(assert (=> b!6933227 m!7639676))

(declare-fun m!7639678 () Bool)

(assert (=> d!2166315 m!7639678))

(declare-fun m!7639680 () Bool)

(assert (=> d!2166315 m!7639680))

(declare-fun m!7639682 () Bool)

(assert (=> d!2166315 m!7639682))

(declare-fun m!7639684 () Bool)

(assert (=> b!6933228 m!7639684))

(declare-fun m!7639686 () Bool)

(assert (=> b!6933228 m!7639686))

(declare-fun m!7639688 () Bool)

(assert (=> b!6933228 m!7639688))

(assert (=> b!6932860 d!2166315))

(declare-fun b!6933247 () Bool)

(declare-fun e!4171611 () Bool)

(declare-fun e!4171609 () Bool)

(assert (=> b!6933247 (= e!4171611 e!4171609)))

(declare-fun res!2827752 () Bool)

(assert (=> b!6933247 (=> (not res!2827752) (not e!4171609))))

(assert (=> b!6933247 (= res!2827752 (not ((_ is Nil!66580) (_1!37111 lt!2473648))))))

(declare-fun b!6933250 () Bool)

(declare-fun e!4171610 () Bool)

(assert (=> b!6933250 (= e!4171610 (>= (size!40788 (_1!37111 lt!2473648)) (size!40788 Nil!66580)))))

(declare-fun b!6933249 () Bool)

(declare-fun tail!12950 (List!66704) List!66704)

(assert (=> b!6933249 (= e!4171609 (isPrefix!5812 (tail!12950 Nil!66580) (tail!12950 (_1!37111 lt!2473648))))))

(declare-fun d!2166317 () Bool)

(assert (=> d!2166317 e!4171610))

(declare-fun res!2827750 () Bool)

(assert (=> d!2166317 (=> res!2827750 e!4171610)))

(declare-fun lt!2473698 () Bool)

(assert (=> d!2166317 (= res!2827750 (not lt!2473698))))

(assert (=> d!2166317 (= lt!2473698 e!4171611)))

(declare-fun res!2827753 () Bool)

(assert (=> d!2166317 (=> res!2827753 e!4171611)))

(assert (=> d!2166317 (= res!2827753 ((_ is Nil!66580) Nil!66580))))

(assert (=> d!2166317 (= (isPrefix!5812 Nil!66580 (_1!37111 lt!2473648)) lt!2473698)))

(declare-fun b!6933248 () Bool)

(declare-fun res!2827751 () Bool)

(assert (=> b!6933248 (=> (not res!2827751) (not e!4171609))))

(declare-fun head!13898 (List!66704) C!34172)

(assert (=> b!6933248 (= res!2827751 (= (head!13898 Nil!66580) (head!13898 (_1!37111 lt!2473648))))))

(assert (= (and d!2166317 (not res!2827753)) b!6933247))

(assert (= (and b!6933247 res!2827752) b!6933248))

(assert (= (and b!6933248 res!2827751) b!6933249))

(assert (= (and d!2166317 (not res!2827750)) b!6933250))

(assert (=> b!6933250 m!7639672))

(declare-fun m!7639706 () Bool)

(assert (=> b!6933250 m!7639706))

(declare-fun m!7639708 () Bool)

(assert (=> b!6933249 m!7639708))

(declare-fun m!7639710 () Bool)

(assert (=> b!6933249 m!7639710))

(assert (=> b!6933249 m!7639708))

(assert (=> b!6933249 m!7639710))

(declare-fun m!7639712 () Bool)

(assert (=> b!6933249 m!7639712))

(declare-fun m!7639714 () Bool)

(assert (=> b!6933248 m!7639714))

(declare-fun m!7639716 () Bool)

(assert (=> b!6933248 m!7639716))

(assert (=> b!6932860 d!2166317))

(declare-fun bs!1850906 () Bool)

(declare-fun d!2166327 () Bool)

(assert (= bs!1850906 (and d!2166327 b!6933065)))

(declare-fun lambda!394644 () Int)

(assert (=> bs!1850906 (not (= lambda!394644 lambda!394619))))

(declare-fun bs!1850907 () Bool)

(assert (= bs!1850907 (and d!2166327 d!2166301)))

(assert (=> bs!1850907 (= lambda!394644 lambda!394634)))

(declare-fun bs!1850908 () Bool)

(assert (= bs!1850908 (and d!2166327 b!6932872)))

(assert (=> bs!1850908 (= (and (= lt!2473646 (_2!37111 lt!2473648)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394644 lambda!394607))))

(assert (=> bs!1850908 (not (= lambda!394644 lambda!394608))))

(declare-fun bs!1850909 () Bool)

(assert (= bs!1850909 (and d!2166327 b!6932860)))

(assert (=> bs!1850909 (= lambda!394644 lambda!394609)))

(declare-fun bs!1850910 () Bool)

(assert (= bs!1850910 (and d!2166327 b!6932863)))

(assert (=> bs!1850910 (= (and (= lt!2473646 s!14361) (= r2!6280 lt!2473650)) (= lambda!394644 lambda!394605))))

(assert (=> bs!1850907 (not (= lambda!394644 lambda!394637))))

(assert (=> bs!1850909 (not (= lambda!394644 lambda!394610))))

(declare-fun bs!1850911 () Bool)

(assert (= bs!1850911 (and d!2166327 b!6933061)))

(assert (=> bs!1850911 (not (= lambda!394644 lambda!394620))))

(assert (=> bs!1850910 (not (= lambda!394644 lambda!394606))))

(assert (=> d!2166327 true))

(assert (=> d!2166327 true))

(assert (=> d!2166327 true))

(assert (=> d!2166327 (= (isDefined!13421 (findConcatSeparation!3134 r1!6342 r2!6280 Nil!66580 lt!2473646 lt!2473646)) (Exists!3951 lambda!394644))))

(declare-fun lt!2473701 () Unit!160626)

(declare-fun choose!51639 (Regex!16951 Regex!16951 List!66704) Unit!160626)

(assert (=> d!2166327 (= lt!2473701 (choose!51639 r1!6342 r2!6280 lt!2473646))))

(assert (=> d!2166327 (validRegex!8657 r1!6342)))

(assert (=> d!2166327 (= (lemmaFindConcatSeparationEquivalentToExists!2892 r1!6342 r2!6280 lt!2473646) lt!2473701)))

(declare-fun bs!1850912 () Bool)

(assert (= bs!1850912 d!2166327))

(assert (=> bs!1850912 m!7639404))

(assert (=> bs!1850912 m!7639464))

(assert (=> bs!1850912 m!7639404))

(assert (=> bs!1850912 m!7639414))

(declare-fun m!7639720 () Bool)

(assert (=> bs!1850912 m!7639720))

(declare-fun m!7639722 () Bool)

(assert (=> bs!1850912 m!7639722))

(assert (=> b!6932860 d!2166327))

(declare-fun b!6933319 () Bool)

(declare-fun res!2827798 () Bool)

(declare-fun e!4171652 () Bool)

(assert (=> b!6933319 (=> res!2827798 e!4171652)))

(declare-fun e!4171653 () Bool)

(assert (=> b!6933319 (= res!2827798 e!4171653)))

(declare-fun res!2827795 () Bool)

(assert (=> b!6933319 (=> (not res!2827795) (not e!4171653))))

(declare-fun lt!2473717 () Bool)

(assert (=> b!6933319 (= res!2827795 lt!2473717)))

(declare-fun b!6933320 () Bool)

(declare-fun res!2827799 () Bool)

(assert (=> b!6933320 (=> res!2827799 e!4171652)))

(assert (=> b!6933320 (= res!2827799 (not ((_ is ElementMatch!16951) lt!2473647)))))

(declare-fun e!4171648 () Bool)

(assert (=> b!6933320 (= e!4171648 e!4171652)))

(declare-fun b!6933321 () Bool)

(declare-fun e!4171654 () Bool)

(assert (=> b!6933321 (= e!4171652 e!4171654)))

(declare-fun res!2827800 () Bool)

(assert (=> b!6933321 (=> (not res!2827800) (not e!4171654))))

(assert (=> b!6933321 (= res!2827800 (not lt!2473717))))

(declare-fun b!6933322 () Bool)

(declare-fun res!2827794 () Bool)

(declare-fun e!4171651 () Bool)

(assert (=> b!6933322 (=> res!2827794 e!4171651)))

(assert (=> b!6933322 (= res!2827794 (not (isEmpty!38841 (tail!12950 lt!2473646))))))

(declare-fun d!2166331 () Bool)

(declare-fun e!4171649 () Bool)

(assert (=> d!2166331 e!4171649))

(declare-fun c!1286700 () Bool)

(assert (=> d!2166331 (= c!1286700 ((_ is EmptyExpr!16951) lt!2473647))))

(declare-fun e!4171650 () Bool)

(assert (=> d!2166331 (= lt!2473717 e!4171650)))

(declare-fun c!1286699 () Bool)

(assert (=> d!2166331 (= c!1286699 (isEmpty!38841 lt!2473646))))

(assert (=> d!2166331 (validRegex!8657 lt!2473647)))

(assert (=> d!2166331 (= (matchR!9090 lt!2473647 lt!2473646) lt!2473717)))

(declare-fun b!6933323 () Bool)

(assert (=> b!6933323 (= e!4171650 (nullable!6770 lt!2473647))))

(declare-fun b!6933324 () Bool)

(declare-fun res!2827796 () Bool)

(assert (=> b!6933324 (=> (not res!2827796) (not e!4171653))))

(assert (=> b!6933324 (= res!2827796 (isEmpty!38841 (tail!12950 lt!2473646)))))

(declare-fun b!6933325 () Bool)

(assert (=> b!6933325 (= e!4171649 e!4171648)))

(declare-fun c!1286701 () Bool)

(assert (=> b!6933325 (= c!1286701 ((_ is EmptyLang!16951) lt!2473647))))

(declare-fun bm!630004 () Bool)

(declare-fun call!630009 () Bool)

(assert (=> bm!630004 (= call!630009 (isEmpty!38841 lt!2473646))))

(declare-fun b!6933326 () Bool)

(assert (=> b!6933326 (= e!4171649 (= lt!2473717 call!630009))))

(declare-fun b!6933327 () Bool)

(assert (=> b!6933327 (= e!4171654 e!4171651)))

(declare-fun res!2827801 () Bool)

(assert (=> b!6933327 (=> res!2827801 e!4171651)))

(assert (=> b!6933327 (= res!2827801 call!630009)))

(declare-fun b!6933328 () Bool)

(assert (=> b!6933328 (= e!4171648 (not lt!2473717))))

(declare-fun b!6933329 () Bool)

(assert (=> b!6933329 (= e!4171651 (not (= (head!13898 lt!2473646) (c!1286601 lt!2473647))))))

(declare-fun b!6933330 () Bool)

(declare-fun res!2827797 () Bool)

(assert (=> b!6933330 (=> (not res!2827797) (not e!4171653))))

(assert (=> b!6933330 (= res!2827797 (not call!630009))))

(declare-fun b!6933331 () Bool)

(assert (=> b!6933331 (= e!4171653 (= (head!13898 lt!2473646) (c!1286601 lt!2473647)))))

(declare-fun b!6933332 () Bool)

(declare-fun derivativeStep!5445 (Regex!16951 C!34172) Regex!16951)

(assert (=> b!6933332 (= e!4171650 (matchR!9090 (derivativeStep!5445 lt!2473647 (head!13898 lt!2473646)) (tail!12950 lt!2473646)))))

(assert (= (and d!2166331 c!1286699) b!6933323))

(assert (= (and d!2166331 (not c!1286699)) b!6933332))

(assert (= (and d!2166331 c!1286700) b!6933326))

(assert (= (and d!2166331 (not c!1286700)) b!6933325))

(assert (= (and b!6933325 c!1286701) b!6933328))

(assert (= (and b!6933325 (not c!1286701)) b!6933320))

(assert (= (and b!6933320 (not res!2827799)) b!6933319))

(assert (= (and b!6933319 res!2827795) b!6933330))

(assert (= (and b!6933330 res!2827797) b!6933324))

(assert (= (and b!6933324 res!2827796) b!6933331))

(assert (= (and b!6933319 (not res!2827798)) b!6933321))

(assert (= (and b!6933321 res!2827800) b!6933327))

(assert (= (and b!6933327 (not res!2827801)) b!6933322))

(assert (= (and b!6933322 (not res!2827794)) b!6933329))

(assert (= (or b!6933326 b!6933327 b!6933330) bm!630004))

(declare-fun m!7639776 () Bool)

(assert (=> b!6933332 m!7639776))

(assert (=> b!6933332 m!7639776))

(declare-fun m!7639778 () Bool)

(assert (=> b!6933332 m!7639778))

(declare-fun m!7639780 () Bool)

(assert (=> b!6933332 m!7639780))

(assert (=> b!6933332 m!7639778))

(assert (=> b!6933332 m!7639780))

(declare-fun m!7639784 () Bool)

(assert (=> b!6933332 m!7639784))

(assert (=> b!6933331 m!7639776))

(declare-fun m!7639788 () Bool)

(assert (=> b!6933323 m!7639788))

(assert (=> bm!630004 m!7639550))

(assert (=> d!2166331 m!7639550))

(assert (=> d!2166331 m!7639560))

(assert (=> b!6933322 m!7639780))

(assert (=> b!6933322 m!7639780))

(declare-fun m!7639794 () Bool)

(assert (=> b!6933322 m!7639794))

(assert (=> b!6933329 m!7639776))

(assert (=> b!6933324 m!7639780))

(assert (=> b!6933324 m!7639780))

(assert (=> b!6933324 m!7639794))

(assert (=> b!6932860 d!2166331))

(declare-fun b!6933348 () Bool)

(declare-fun e!4171663 () List!66704)

(assert (=> b!6933348 (= e!4171663 (Cons!66580 (h!73028 (_1!37111 lt!2473640)) (++!14990 (t!380447 (_1!37111 lt!2473640)) (_2!37111 lt!2473640))))))

(declare-fun b!6933347 () Bool)

(assert (=> b!6933347 (= e!4171663 (_2!37111 lt!2473640))))

(declare-fun d!2166341 () Bool)

(declare-fun e!4171662 () Bool)

(assert (=> d!2166341 e!4171662))

(declare-fun res!2827810 () Bool)

(assert (=> d!2166341 (=> (not res!2827810) (not e!4171662))))

(declare-fun lt!2473719 () List!66704)

(assert (=> d!2166341 (= res!2827810 (= (content!13091 lt!2473719) ((_ map or) (content!13091 (_1!37111 lt!2473640)) (content!13091 (_2!37111 lt!2473640)))))))

(assert (=> d!2166341 (= lt!2473719 e!4171663)))

(declare-fun c!1286705 () Bool)

(assert (=> d!2166341 (= c!1286705 ((_ is Nil!66580) (_1!37111 lt!2473640)))))

(assert (=> d!2166341 (= (++!14990 (_1!37111 lt!2473640) (_2!37111 lt!2473640)) lt!2473719)))

(declare-fun b!6933349 () Bool)

(declare-fun res!2827811 () Bool)

(assert (=> b!6933349 (=> (not res!2827811) (not e!4171662))))

(assert (=> b!6933349 (= res!2827811 (= (size!40788 lt!2473719) (+ (size!40788 (_1!37111 lt!2473640)) (size!40788 (_2!37111 lt!2473640)))))))

(declare-fun b!6933350 () Bool)

(assert (=> b!6933350 (= e!4171662 (or (not (= (_2!37111 lt!2473640) Nil!66580)) (= lt!2473719 (_1!37111 lt!2473640))))))

(assert (= (and d!2166341 c!1286705) b!6933347))

(assert (= (and d!2166341 (not c!1286705)) b!6933348))

(assert (= (and d!2166341 res!2827810) b!6933349))

(assert (= (and b!6933349 res!2827811) b!6933350))

(declare-fun m!7639802 () Bool)

(assert (=> b!6933348 m!7639802))

(declare-fun m!7639804 () Bool)

(assert (=> d!2166341 m!7639804))

(assert (=> d!2166341 m!7639668))

(assert (=> d!2166341 m!7639682))

(declare-fun m!7639806 () Bool)

(assert (=> b!6933349 m!7639806))

(assert (=> b!6933349 m!7639674))

(assert (=> b!6933349 m!7639688))

(assert (=> b!6932871 d!2166341))

(declare-fun d!2166347 () Bool)

(assert (=> d!2166347 (= (matchR!9090 r3!135 (_2!37111 lt!2473640)) (matchRSpec!4008 r3!135 (_2!37111 lt!2473640)))))

(declare-fun lt!2473721 () Unit!160626)

(assert (=> d!2166347 (= lt!2473721 (choose!51633 r3!135 (_2!37111 lt!2473640)))))

(assert (=> d!2166347 (validRegex!8657 r3!135)))

(assert (=> d!2166347 (= (mainMatchTheorem!4008 r3!135 (_2!37111 lt!2473640)) lt!2473721)))

(declare-fun bs!1850927 () Bool)

(assert (= bs!1850927 d!2166347))

(assert (=> bs!1850927 m!7639460))

(assert (=> bs!1850927 m!7639394))

(declare-fun m!7639808 () Bool)

(assert (=> bs!1850927 m!7639808))

(assert (=> bs!1850927 m!7639458))

(assert (=> b!6932871 d!2166347))

(declare-fun d!2166349 () Bool)

(assert (=> d!2166349 (= (matchR!9090 r2!6280 (_1!37111 lt!2473640)) (matchRSpec!4008 r2!6280 (_1!37111 lt!2473640)))))

(declare-fun lt!2473722 () Unit!160626)

(assert (=> d!2166349 (= lt!2473722 (choose!51633 r2!6280 (_1!37111 lt!2473640)))))

(assert (=> d!2166349 (validRegex!8657 r2!6280)))

(assert (=> d!2166349 (= (mainMatchTheorem!4008 r2!6280 (_1!37111 lt!2473640)) lt!2473722)))

(declare-fun bs!1850929 () Bool)

(assert (= bs!1850929 d!2166349))

(assert (=> bs!1850929 m!7639450))

(assert (=> bs!1850929 m!7639384))

(declare-fun m!7639810 () Bool)

(assert (=> bs!1850929 m!7639810))

(assert (=> bs!1850929 m!7639482))

(assert (=> b!6932871 d!2166349))

(declare-fun bs!1850937 () Bool)

(declare-fun b!6933357 () Bool)

(assert (= bs!1850937 (and b!6933357 b!6933065)))

(declare-fun lambda!394647 () Int)

(assert (=> bs!1850937 (= (and (= (_2!37111 lt!2473640) lt!2473646) (= (reg!17280 r3!135) (reg!17280 lt!2473647)) (= r3!135 lt!2473647)) (= lambda!394647 lambda!394619))))

(declare-fun bs!1850939 () Bool)

(assert (= bs!1850939 (and b!6933357 d!2166301)))

(assert (=> bs!1850939 (not (= lambda!394647 lambda!394634))))

(declare-fun bs!1850941 () Bool)

(assert (= bs!1850941 (and b!6933357 b!6932872)))

(assert (=> bs!1850941 (not (= lambda!394647 lambda!394608))))

(declare-fun bs!1850942 () Bool)

(assert (= bs!1850942 (and b!6933357 b!6932860)))

(assert (=> bs!1850942 (not (= lambda!394647 lambda!394609))))

(declare-fun bs!1850944 () Bool)

(assert (= bs!1850944 (and b!6933357 b!6932863)))

(assert (=> bs!1850944 (not (= lambda!394647 lambda!394605))))

(assert (=> bs!1850939 (not (= lambda!394647 lambda!394637))))

(assert (=> bs!1850942 (not (= lambda!394647 lambda!394610))))

(declare-fun bs!1850945 () Bool)

(assert (= bs!1850945 (and b!6933357 d!2166327)))

(assert (=> bs!1850945 (not (= lambda!394647 lambda!394644))))

(assert (=> bs!1850941 (not (= lambda!394647 lambda!394607))))

(declare-fun bs!1850946 () Bool)

(assert (= bs!1850946 (and b!6933357 b!6933061)))

(assert (=> bs!1850946 (not (= lambda!394647 lambda!394620))))

(assert (=> bs!1850944 (not (= lambda!394647 lambda!394606))))

(assert (=> b!6933357 true))

(assert (=> b!6933357 true))

(declare-fun bs!1850948 () Bool)

(declare-fun b!6933353 () Bool)

(assert (= bs!1850948 (and b!6933353 b!6933065)))

(declare-fun lambda!394649 () Int)

(assert (=> bs!1850948 (not (= lambda!394649 lambda!394619))))

(declare-fun bs!1850949 () Bool)

(assert (= bs!1850949 (and b!6933353 b!6933357)))

(assert (=> bs!1850949 (not (= lambda!394649 lambda!394647))))

(declare-fun bs!1850950 () Bool)

(assert (= bs!1850950 (and b!6933353 d!2166301)))

(assert (=> bs!1850950 (not (= lambda!394649 lambda!394634))))

(declare-fun bs!1850951 () Bool)

(assert (= bs!1850951 (and b!6933353 b!6932872)))

(assert (=> bs!1850951 (= (and (= (_2!37111 lt!2473640) (_2!37111 lt!2473648)) (= (regOne!34414 r3!135) r2!6280) (= (regTwo!34414 r3!135) r3!135)) (= lambda!394649 lambda!394608))))

(declare-fun bs!1850952 () Bool)

(assert (= bs!1850952 (and b!6933353 b!6932860)))

(assert (=> bs!1850952 (not (= lambda!394649 lambda!394609))))

(declare-fun bs!1850953 () Bool)

(assert (= bs!1850953 (and b!6933353 b!6932863)))

(assert (=> bs!1850953 (not (= lambda!394649 lambda!394605))))

(assert (=> bs!1850950 (= (and (= (_2!37111 lt!2473640) lt!2473646) (= (regOne!34414 r3!135) r1!6342) (= (regTwo!34414 r3!135) r2!6280)) (= lambda!394649 lambda!394637))))

(assert (=> bs!1850952 (= (and (= (_2!37111 lt!2473640) lt!2473646) (= (regOne!34414 r3!135) r1!6342) (= (regTwo!34414 r3!135) r2!6280)) (= lambda!394649 lambda!394610))))

(declare-fun bs!1850954 () Bool)

(assert (= bs!1850954 (and b!6933353 d!2166327)))

(assert (=> bs!1850954 (not (= lambda!394649 lambda!394644))))

(assert (=> bs!1850951 (not (= lambda!394649 lambda!394607))))

(declare-fun bs!1850955 () Bool)

(assert (= bs!1850955 (and b!6933353 b!6933061)))

(assert (=> bs!1850955 (= (and (= (_2!37111 lt!2473640) lt!2473646) (= (regOne!34414 r3!135) (regOne!34414 lt!2473647)) (= (regTwo!34414 r3!135) (regTwo!34414 lt!2473647))) (= lambda!394649 lambda!394620))))

(assert (=> bs!1850953 (= (and (= (_2!37111 lt!2473640) s!14361) (= (regOne!34414 r3!135) r1!6342) (= (regTwo!34414 r3!135) lt!2473650)) (= lambda!394649 lambda!394606))))

(assert (=> b!6933353 true))

(assert (=> b!6933353 true))

(declare-fun c!1286707 () Bool)

(declare-fun bm!630006 () Bool)

(declare-fun call!630011 () Bool)

(assert (=> bm!630006 (= call!630011 (Exists!3951 (ite c!1286707 lambda!394647 lambda!394649)))))

(declare-fun b!6933351 () Bool)

(declare-fun e!4171669 () Bool)

(assert (=> b!6933351 (= e!4171669 (= (_2!37111 lt!2473640) (Cons!66580 (c!1286601 r3!135) Nil!66580)))))

(declare-fun b!6933352 () Bool)

(declare-fun e!4171667 () Bool)

(assert (=> b!6933352 (= e!4171667 (matchRSpec!4008 (regTwo!34415 r3!135) (_2!37111 lt!2473640)))))

(declare-fun e!4171664 () Bool)

(assert (=> b!6933353 (= e!4171664 call!630011)))

(declare-fun b!6933354 () Bool)

(declare-fun e!4171666 () Bool)

(declare-fun call!630012 () Bool)

(assert (=> b!6933354 (= e!4171666 call!630012)))

(declare-fun b!6933355 () Bool)

(declare-fun c!1286706 () Bool)

(assert (=> b!6933355 (= c!1286706 ((_ is ElementMatch!16951) r3!135))))

(declare-fun e!4171665 () Bool)

(assert (=> b!6933355 (= e!4171665 e!4171669)))

(declare-fun b!6933356 () Bool)

(declare-fun e!4171670 () Bool)

(assert (=> b!6933356 (= e!4171670 e!4171667)))

(declare-fun res!2827812 () Bool)

(assert (=> b!6933356 (= res!2827812 (matchRSpec!4008 (regOne!34415 r3!135) (_2!37111 lt!2473640)))))

(assert (=> b!6933356 (=> res!2827812 e!4171667)))

(declare-fun e!4171668 () Bool)

(assert (=> b!6933357 (= e!4171668 call!630011)))

(declare-fun b!6933358 () Bool)

(declare-fun res!2827814 () Bool)

(assert (=> b!6933358 (=> res!2827814 e!4171668)))

(assert (=> b!6933358 (= res!2827814 call!630012)))

(assert (=> b!6933358 (= e!4171664 e!4171668)))

(declare-fun b!6933359 () Bool)

(declare-fun c!1286708 () Bool)

(assert (=> b!6933359 (= c!1286708 ((_ is Union!16951) r3!135))))

(assert (=> b!6933359 (= e!4171669 e!4171670)))

(declare-fun b!6933360 () Bool)

(assert (=> b!6933360 (= e!4171670 e!4171664)))

(assert (=> b!6933360 (= c!1286707 ((_ is Star!16951) r3!135))))

(declare-fun b!6933361 () Bool)

(assert (=> b!6933361 (= e!4171666 e!4171665)))

(declare-fun res!2827813 () Bool)

(assert (=> b!6933361 (= res!2827813 (not ((_ is EmptyLang!16951) r3!135)))))

(assert (=> b!6933361 (=> (not res!2827813) (not e!4171665))))

(declare-fun d!2166351 () Bool)

(declare-fun c!1286709 () Bool)

(assert (=> d!2166351 (= c!1286709 ((_ is EmptyExpr!16951) r3!135))))

(assert (=> d!2166351 (= (matchRSpec!4008 r3!135 (_2!37111 lt!2473640)) e!4171666)))

(declare-fun bm!630007 () Bool)

(assert (=> bm!630007 (= call!630012 (isEmpty!38841 (_2!37111 lt!2473640)))))

(assert (= (and d!2166351 c!1286709) b!6933354))

(assert (= (and d!2166351 (not c!1286709)) b!6933361))

(assert (= (and b!6933361 res!2827813) b!6933355))

(assert (= (and b!6933355 c!1286706) b!6933351))

(assert (= (and b!6933355 (not c!1286706)) b!6933359))

(assert (= (and b!6933359 c!1286708) b!6933356))

(assert (= (and b!6933359 (not c!1286708)) b!6933360))

(assert (= (and b!6933356 (not res!2827812)) b!6933352))

(assert (= (and b!6933360 c!1286707) b!6933358))

(assert (= (and b!6933360 (not c!1286707)) b!6933353))

(assert (= (and b!6933358 (not res!2827814)) b!6933357))

(assert (= (or b!6933357 b!6933353) bm!630006))

(assert (= (or b!6933354 b!6933358) bm!630007))

(declare-fun m!7639824 () Bool)

(assert (=> bm!630006 m!7639824))

(declare-fun m!7639826 () Bool)

(assert (=> b!6933352 m!7639826))

(declare-fun m!7639828 () Bool)

(assert (=> b!6933356 m!7639828))

(declare-fun m!7639830 () Bool)

(assert (=> bm!630007 m!7639830))

(assert (=> b!6932871 d!2166351))

(declare-fun bs!1850961 () Bool)

(declare-fun b!6933379 () Bool)

(assert (= bs!1850961 (and b!6933379 b!6933353)))

(declare-fun lambda!394651 () Int)

(assert (=> bs!1850961 (not (= lambda!394651 lambda!394649))))

(declare-fun bs!1850963 () Bool)

(assert (= bs!1850963 (and b!6933379 b!6933065)))

(assert (=> bs!1850963 (= (and (= (_1!37111 lt!2473640) lt!2473646) (= (reg!17280 r2!6280) (reg!17280 lt!2473647)) (= r2!6280 lt!2473647)) (= lambda!394651 lambda!394619))))

(declare-fun bs!1850965 () Bool)

(assert (= bs!1850965 (and b!6933379 b!6933357)))

(assert (=> bs!1850965 (= (and (= (_1!37111 lt!2473640) (_2!37111 lt!2473640)) (= (reg!17280 r2!6280) (reg!17280 r3!135)) (= r2!6280 r3!135)) (= lambda!394651 lambda!394647))))

(declare-fun bs!1850967 () Bool)

(assert (= bs!1850967 (and b!6933379 d!2166301)))

(assert (=> bs!1850967 (not (= lambda!394651 lambda!394634))))

(declare-fun bs!1850969 () Bool)

(assert (= bs!1850969 (and b!6933379 b!6932872)))

(assert (=> bs!1850969 (not (= lambda!394651 lambda!394608))))

(declare-fun bs!1850970 () Bool)

(assert (= bs!1850970 (and b!6933379 b!6932860)))

(assert (=> bs!1850970 (not (= lambda!394651 lambda!394609))))

(declare-fun bs!1850972 () Bool)

(assert (= bs!1850972 (and b!6933379 b!6932863)))

(assert (=> bs!1850972 (not (= lambda!394651 lambda!394605))))

(assert (=> bs!1850967 (not (= lambda!394651 lambda!394637))))

(assert (=> bs!1850970 (not (= lambda!394651 lambda!394610))))

(declare-fun bs!1850974 () Bool)

(assert (= bs!1850974 (and b!6933379 d!2166327)))

(assert (=> bs!1850974 (not (= lambda!394651 lambda!394644))))

(assert (=> bs!1850969 (not (= lambda!394651 lambda!394607))))

(declare-fun bs!1850977 () Bool)

(assert (= bs!1850977 (and b!6933379 b!6933061)))

(assert (=> bs!1850977 (not (= lambda!394651 lambda!394620))))

(assert (=> bs!1850972 (not (= lambda!394651 lambda!394606))))

(assert (=> b!6933379 true))

(assert (=> b!6933379 true))

(declare-fun bs!1850981 () Bool)

(declare-fun b!6933375 () Bool)

(assert (= bs!1850981 (and b!6933375 b!6933353)))

(declare-fun lambda!394652 () Int)

(assert (=> bs!1850981 (= (and (= (_1!37111 lt!2473640) (_2!37111 lt!2473640)) (= (regOne!34414 r2!6280) (regOne!34414 r3!135)) (= (regTwo!34414 r2!6280) (regTwo!34414 r3!135))) (= lambda!394652 lambda!394649))))

(declare-fun bs!1850982 () Bool)

(assert (= bs!1850982 (and b!6933375 b!6933065)))

(assert (=> bs!1850982 (not (= lambda!394652 lambda!394619))))

(declare-fun bs!1850983 () Bool)

(assert (= bs!1850983 (and b!6933375 b!6933357)))

(assert (=> bs!1850983 (not (= lambda!394652 lambda!394647))))

(declare-fun bs!1850984 () Bool)

(assert (= bs!1850984 (and b!6933375 d!2166301)))

(assert (=> bs!1850984 (not (= lambda!394652 lambda!394634))))

(declare-fun bs!1850986 () Bool)

(assert (= bs!1850986 (and b!6933375 b!6932872)))

(assert (=> bs!1850986 (= (and (= (_1!37111 lt!2473640) (_2!37111 lt!2473648)) (= (regOne!34414 r2!6280) r2!6280) (= (regTwo!34414 r2!6280) r3!135)) (= lambda!394652 lambda!394608))))

(declare-fun bs!1850988 () Bool)

(assert (= bs!1850988 (and b!6933375 b!6932860)))

(assert (=> bs!1850988 (not (= lambda!394652 lambda!394609))))

(declare-fun bs!1850990 () Bool)

(assert (= bs!1850990 (and b!6933375 b!6932863)))

(assert (=> bs!1850990 (not (= lambda!394652 lambda!394605))))

(declare-fun bs!1850992 () Bool)

(assert (= bs!1850992 (and b!6933375 b!6933379)))

(assert (=> bs!1850992 (not (= lambda!394652 lambda!394651))))

(assert (=> bs!1850984 (= (and (= (_1!37111 lt!2473640) lt!2473646) (= (regOne!34414 r2!6280) r1!6342) (= (regTwo!34414 r2!6280) r2!6280)) (= lambda!394652 lambda!394637))))

(assert (=> bs!1850988 (= (and (= (_1!37111 lt!2473640) lt!2473646) (= (regOne!34414 r2!6280) r1!6342) (= (regTwo!34414 r2!6280) r2!6280)) (= lambda!394652 lambda!394610))))

(declare-fun bs!1850995 () Bool)

(assert (= bs!1850995 (and b!6933375 d!2166327)))

(assert (=> bs!1850995 (not (= lambda!394652 lambda!394644))))

(assert (=> bs!1850986 (not (= lambda!394652 lambda!394607))))

(declare-fun bs!1850997 () Bool)

(assert (= bs!1850997 (and b!6933375 b!6933061)))

(assert (=> bs!1850997 (= (and (= (_1!37111 lt!2473640) lt!2473646) (= (regOne!34414 r2!6280) (regOne!34414 lt!2473647)) (= (regTwo!34414 r2!6280) (regTwo!34414 lt!2473647))) (= lambda!394652 lambda!394620))))

(assert (=> bs!1850990 (= (and (= (_1!37111 lt!2473640) s!14361) (= (regOne!34414 r2!6280) r1!6342) (= (regTwo!34414 r2!6280) lt!2473650)) (= lambda!394652 lambda!394606))))

(assert (=> b!6933375 true))

(assert (=> b!6933375 true))

(declare-fun c!1286715 () Bool)

(declare-fun call!630015 () Bool)

(declare-fun bm!630010 () Bool)

(assert (=> bm!630010 (= call!630015 (Exists!3951 (ite c!1286715 lambda!394651 lambda!394652)))))

(declare-fun b!6933373 () Bool)

(declare-fun e!4171683 () Bool)

(assert (=> b!6933373 (= e!4171683 (= (_1!37111 lt!2473640) (Cons!66580 (c!1286601 r2!6280) Nil!66580)))))

(declare-fun b!6933374 () Bool)

(declare-fun e!4171681 () Bool)

(assert (=> b!6933374 (= e!4171681 (matchRSpec!4008 (regTwo!34415 r2!6280) (_1!37111 lt!2473640)))))

(declare-fun e!4171678 () Bool)

(assert (=> b!6933375 (= e!4171678 call!630015)))

(declare-fun b!6933376 () Bool)

(declare-fun e!4171680 () Bool)

(declare-fun call!630016 () Bool)

(assert (=> b!6933376 (= e!4171680 call!630016)))

(declare-fun b!6933377 () Bool)

(declare-fun c!1286714 () Bool)

(assert (=> b!6933377 (= c!1286714 ((_ is ElementMatch!16951) r2!6280))))

(declare-fun e!4171679 () Bool)

(assert (=> b!6933377 (= e!4171679 e!4171683)))

(declare-fun b!6933378 () Bool)

(declare-fun e!4171684 () Bool)

(assert (=> b!6933378 (= e!4171684 e!4171681)))

(declare-fun res!2827818 () Bool)

(assert (=> b!6933378 (= res!2827818 (matchRSpec!4008 (regOne!34415 r2!6280) (_1!37111 lt!2473640)))))

(assert (=> b!6933378 (=> res!2827818 e!4171681)))

(declare-fun e!4171682 () Bool)

(assert (=> b!6933379 (= e!4171682 call!630015)))

(declare-fun b!6933380 () Bool)

(declare-fun res!2827820 () Bool)

(assert (=> b!6933380 (=> res!2827820 e!4171682)))

(assert (=> b!6933380 (= res!2827820 call!630016)))

(assert (=> b!6933380 (= e!4171678 e!4171682)))

(declare-fun b!6933381 () Bool)

(declare-fun c!1286716 () Bool)

(assert (=> b!6933381 (= c!1286716 ((_ is Union!16951) r2!6280))))

(assert (=> b!6933381 (= e!4171683 e!4171684)))

(declare-fun b!6933382 () Bool)

(assert (=> b!6933382 (= e!4171684 e!4171678)))

(assert (=> b!6933382 (= c!1286715 ((_ is Star!16951) r2!6280))))

(declare-fun b!6933383 () Bool)

(assert (=> b!6933383 (= e!4171680 e!4171679)))

(declare-fun res!2827819 () Bool)

(assert (=> b!6933383 (= res!2827819 (not ((_ is EmptyLang!16951) r2!6280)))))

(assert (=> b!6933383 (=> (not res!2827819) (not e!4171679))))

(declare-fun d!2166361 () Bool)

(declare-fun c!1286717 () Bool)

(assert (=> d!2166361 (= c!1286717 ((_ is EmptyExpr!16951) r2!6280))))

(assert (=> d!2166361 (= (matchRSpec!4008 r2!6280 (_1!37111 lt!2473640)) e!4171680)))

(declare-fun bm!630011 () Bool)

(assert (=> bm!630011 (= call!630016 (isEmpty!38841 (_1!37111 lt!2473640)))))

(assert (= (and d!2166361 c!1286717) b!6933376))

(assert (= (and d!2166361 (not c!1286717)) b!6933383))

(assert (= (and b!6933383 res!2827819) b!6933377))

(assert (= (and b!6933377 c!1286714) b!6933373))

(assert (= (and b!6933377 (not c!1286714)) b!6933381))

(assert (= (and b!6933381 c!1286716) b!6933378))

(assert (= (and b!6933381 (not c!1286716)) b!6933382))

(assert (= (and b!6933378 (not res!2827818)) b!6933374))

(assert (= (and b!6933382 c!1286715) b!6933380))

(assert (= (and b!6933382 (not c!1286715)) b!6933375))

(assert (= (and b!6933380 (not res!2827820)) b!6933379))

(assert (= (or b!6933379 b!6933375) bm!630010))

(assert (= (or b!6933376 b!6933380) bm!630011))

(declare-fun m!7639832 () Bool)

(assert (=> bm!630010 m!7639832))

(declare-fun m!7639834 () Bool)

(assert (=> b!6933374 m!7639834))

(declare-fun m!7639836 () Bool)

(assert (=> b!6933378 m!7639836))

(declare-fun m!7639838 () Bool)

(assert (=> bm!630011 m!7639838))

(assert (=> b!6932871 d!2166361))

(declare-fun b!6933385 () Bool)

(declare-fun e!4171686 () List!66704)

(assert (=> b!6933385 (= e!4171686 (Cons!66580 (h!73028 (_1!37111 lt!2473648)) (++!14990 (t!380447 (_1!37111 lt!2473648)) (++!14990 (_1!37111 lt!2473640) (_2!37111 lt!2473640)))))))

(declare-fun b!6933384 () Bool)

(assert (=> b!6933384 (= e!4171686 (++!14990 (_1!37111 lt!2473640) (_2!37111 lt!2473640)))))

(declare-fun d!2166363 () Bool)

(declare-fun e!4171685 () Bool)

(assert (=> d!2166363 e!4171685))

(declare-fun res!2827821 () Bool)

(assert (=> d!2166363 (=> (not res!2827821) (not e!4171685))))

(declare-fun lt!2473724 () List!66704)

(assert (=> d!2166363 (= res!2827821 (= (content!13091 lt!2473724) ((_ map or) (content!13091 (_1!37111 lt!2473648)) (content!13091 (++!14990 (_1!37111 lt!2473640) (_2!37111 lt!2473640))))))))

(assert (=> d!2166363 (= lt!2473724 e!4171686)))

(declare-fun c!1286718 () Bool)

(assert (=> d!2166363 (= c!1286718 ((_ is Nil!66580) (_1!37111 lt!2473648)))))

(assert (=> d!2166363 (= (++!14990 (_1!37111 lt!2473648) (++!14990 (_1!37111 lt!2473640) (_2!37111 lt!2473640))) lt!2473724)))

(declare-fun b!6933386 () Bool)

(declare-fun res!2827822 () Bool)

(assert (=> b!6933386 (=> (not res!2827822) (not e!4171685))))

(assert (=> b!6933386 (= res!2827822 (= (size!40788 lt!2473724) (+ (size!40788 (_1!37111 lt!2473648)) (size!40788 (++!14990 (_1!37111 lt!2473640) (_2!37111 lt!2473640))))))))

(declare-fun b!6933387 () Bool)

(assert (=> b!6933387 (= e!4171685 (or (not (= (++!14990 (_1!37111 lt!2473640) (_2!37111 lt!2473640)) Nil!66580)) (= lt!2473724 (_1!37111 lt!2473648))))))

(assert (= (and d!2166363 c!1286718) b!6933384))

(assert (= (and d!2166363 (not c!1286718)) b!6933385))

(assert (= (and d!2166363 res!2827821) b!6933386))

(assert (= (and b!6933386 res!2827822) b!6933387))

(assert (=> b!6933385 m!7639386))

(declare-fun m!7639840 () Bool)

(assert (=> b!6933385 m!7639840))

(declare-fun m!7639842 () Bool)

(assert (=> d!2166363 m!7639842))

(assert (=> d!2166363 m!7639666))

(assert (=> d!2166363 m!7639386))

(declare-fun m!7639844 () Bool)

(assert (=> d!2166363 m!7639844))

(declare-fun m!7639846 () Bool)

(assert (=> b!6933386 m!7639846))

(assert (=> b!6933386 m!7639672))

(assert (=> b!6933386 m!7639386))

(declare-fun m!7639848 () Bool)

(assert (=> b!6933386 m!7639848))

(assert (=> b!6932871 d!2166363))

(declare-fun d!2166365 () Bool)

(assert (=> d!2166365 (= (isDefined!13421 lt!2473655) (not (isEmpty!38842 lt!2473655)))))

(declare-fun bs!1851005 () Bool)

(assert (= bs!1851005 d!2166365))

(declare-fun m!7639850 () Bool)

(assert (=> bs!1851005 m!7639850))

(assert (=> b!6932861 d!2166365))

(declare-fun b!6933388 () Bool)

(declare-fun res!2827827 () Bool)

(declare-fun e!4171687 () Bool)

(assert (=> b!6933388 (=> (not res!2827827) (not e!4171687))))

(declare-fun lt!2473726 () Option!16720)

(assert (=> b!6933388 (= res!2827827 (matchR!9090 lt!2473650 (_2!37111 (get!23363 lt!2473726))))))

(declare-fun d!2166367 () Bool)

(declare-fun e!4171689 () Bool)

(assert (=> d!2166367 e!4171689))

(declare-fun res!2827823 () Bool)

(assert (=> d!2166367 (=> res!2827823 e!4171689)))

(assert (=> d!2166367 (= res!2827823 e!4171687)))

(declare-fun res!2827824 () Bool)

(assert (=> d!2166367 (=> (not res!2827824) (not e!4171687))))

(assert (=> d!2166367 (= res!2827824 (isDefined!13421 lt!2473726))))

(declare-fun e!4171688 () Option!16720)

(assert (=> d!2166367 (= lt!2473726 e!4171688)))

(declare-fun c!1286719 () Bool)

(declare-fun e!4171691 () Bool)

(assert (=> d!2166367 (= c!1286719 e!4171691)))

(declare-fun res!2827825 () Bool)

(assert (=> d!2166367 (=> (not res!2827825) (not e!4171691))))

(assert (=> d!2166367 (= res!2827825 (matchR!9090 r1!6342 Nil!66580))))

(assert (=> d!2166367 (validRegex!8657 r1!6342)))

(assert (=> d!2166367 (= (findConcatSeparation!3134 r1!6342 lt!2473650 Nil!66580 s!14361 s!14361) lt!2473726)))

(declare-fun b!6933389 () Bool)

(assert (=> b!6933389 (= e!4171689 (not (isDefined!13421 lt!2473726)))))

(declare-fun b!6933390 () Bool)

(declare-fun e!4171690 () Option!16720)

(assert (=> b!6933390 (= e!4171688 e!4171690)))

(declare-fun c!1286720 () Bool)

(assert (=> b!6933390 (= c!1286720 ((_ is Nil!66580) s!14361))))

(declare-fun b!6933391 () Bool)

(assert (=> b!6933391 (= e!4171688 (Some!16719 (tuple2!67617 Nil!66580 s!14361)))))

(declare-fun b!6933392 () Bool)

(assert (=> b!6933392 (= e!4171687 (= (++!14990 (_1!37111 (get!23363 lt!2473726)) (_2!37111 (get!23363 lt!2473726))) s!14361))))

(declare-fun b!6933393 () Bool)

(declare-fun res!2827826 () Bool)

(assert (=> b!6933393 (=> (not res!2827826) (not e!4171687))))

(assert (=> b!6933393 (= res!2827826 (matchR!9090 r1!6342 (_1!37111 (get!23363 lt!2473726))))))

(declare-fun b!6933394 () Bool)

(assert (=> b!6933394 (= e!4171691 (matchR!9090 lt!2473650 s!14361))))

(declare-fun b!6933395 () Bool)

(assert (=> b!6933395 (= e!4171690 None!16719)))

(declare-fun b!6933396 () Bool)

(declare-fun lt!2473727 () Unit!160626)

(declare-fun lt!2473725 () Unit!160626)

(assert (=> b!6933396 (= lt!2473727 lt!2473725)))

(assert (=> b!6933396 (= (++!14990 (++!14990 Nil!66580 (Cons!66580 (h!73028 s!14361) Nil!66580)) (t!380447 s!14361)) s!14361)))

(assert (=> b!6933396 (= lt!2473725 (lemmaMoveElementToOtherListKeepsConcatEq!2848 Nil!66580 (h!73028 s!14361) (t!380447 s!14361) s!14361))))

(assert (=> b!6933396 (= e!4171690 (findConcatSeparation!3134 r1!6342 lt!2473650 (++!14990 Nil!66580 (Cons!66580 (h!73028 s!14361) Nil!66580)) (t!380447 s!14361) s!14361))))

(assert (= (and d!2166367 res!2827825) b!6933394))

(assert (= (and d!2166367 c!1286719) b!6933391))

(assert (= (and d!2166367 (not c!1286719)) b!6933390))

(assert (= (and b!6933390 c!1286720) b!6933395))

(assert (= (and b!6933390 (not c!1286720)) b!6933396))

(assert (= (and d!2166367 res!2827824) b!6933393))

(assert (= (and b!6933393 res!2827826) b!6933388))

(assert (= (and b!6933388 res!2827827) b!6933392))

(assert (= (and d!2166367 (not res!2827823)) b!6933389))

(declare-fun m!7639858 () Bool)

(assert (=> b!6933396 m!7639858))

(assert (=> b!6933396 m!7639858))

(declare-fun m!7639866 () Bool)

(assert (=> b!6933396 m!7639866))

(declare-fun m!7639870 () Bool)

(assert (=> b!6933396 m!7639870))

(assert (=> b!6933396 m!7639858))

(declare-fun m!7639874 () Bool)

(assert (=> b!6933396 m!7639874))

(declare-fun m!7639876 () Bool)

(assert (=> b!6933389 m!7639876))

(declare-fun m!7639878 () Bool)

(assert (=> b!6933394 m!7639878))

(declare-fun m!7639882 () Bool)

(assert (=> b!6933393 m!7639882))

(declare-fun m!7639884 () Bool)

(assert (=> b!6933393 m!7639884))

(assert (=> b!6933392 m!7639882))

(declare-fun m!7639890 () Bool)

(assert (=> b!6933392 m!7639890))

(assert (=> b!6933388 m!7639882))

(declare-fun m!7639892 () Bool)

(assert (=> b!6933388 m!7639892))

(assert (=> d!2166367 m!7639876))

(assert (=> d!2166367 m!7639616))

(assert (=> d!2166367 m!7639464))

(assert (=> b!6932861 d!2166367))

(declare-fun bs!1851009 () Bool)

(declare-fun b!6933417 () Bool)

(assert (= bs!1851009 (and b!6933417 b!6933353)))

(declare-fun lambda!394655 () Int)

(assert (=> bs!1851009 (not (= lambda!394655 lambda!394649))))

(declare-fun bs!1851011 () Bool)

(assert (= bs!1851011 (and b!6933417 b!6933065)))

(assert (=> bs!1851011 (= (and (= s!14361 lt!2473646) (= (reg!17280 lt!2473641) (reg!17280 lt!2473647)) (= lt!2473641 lt!2473647)) (= lambda!394655 lambda!394619))))

(declare-fun bs!1851013 () Bool)

(assert (= bs!1851013 (and b!6933417 b!6933357)))

(assert (=> bs!1851013 (= (and (= s!14361 (_2!37111 lt!2473640)) (= (reg!17280 lt!2473641) (reg!17280 r3!135)) (= lt!2473641 r3!135)) (= lambda!394655 lambda!394647))))

(declare-fun bs!1851015 () Bool)

(assert (= bs!1851015 (and b!6933417 d!2166301)))

(assert (=> bs!1851015 (not (= lambda!394655 lambda!394634))))

(declare-fun bs!1851017 () Bool)

(assert (= bs!1851017 (and b!6933417 b!6932872)))

(assert (=> bs!1851017 (not (= lambda!394655 lambda!394608))))

(declare-fun bs!1851018 () Bool)

(assert (= bs!1851018 (and b!6933417 b!6932860)))

(assert (=> bs!1851018 (not (= lambda!394655 lambda!394609))))

(declare-fun bs!1851019 () Bool)

(assert (= bs!1851019 (and b!6933417 b!6933379)))

(assert (=> bs!1851019 (= (and (= s!14361 (_1!37111 lt!2473640)) (= (reg!17280 lt!2473641) (reg!17280 r2!6280)) (= lt!2473641 r2!6280)) (= lambda!394655 lambda!394651))))

(assert (=> bs!1851015 (not (= lambda!394655 lambda!394637))))

(assert (=> bs!1851018 (not (= lambda!394655 lambda!394610))))

(declare-fun bs!1851023 () Bool)

(assert (= bs!1851023 (and b!6933417 d!2166327)))

(assert (=> bs!1851023 (not (= lambda!394655 lambda!394644))))

(assert (=> bs!1851017 (not (= lambda!394655 lambda!394607))))

(declare-fun bs!1851026 () Bool)

(assert (= bs!1851026 (and b!6933417 b!6932863)))

(assert (=> bs!1851026 (not (= lambda!394655 lambda!394605))))

(declare-fun bs!1851028 () Bool)

(assert (= bs!1851028 (and b!6933417 b!6933375)))

(assert (=> bs!1851028 (not (= lambda!394655 lambda!394652))))

(declare-fun bs!1851029 () Bool)

(assert (= bs!1851029 (and b!6933417 b!6933061)))

(assert (=> bs!1851029 (not (= lambda!394655 lambda!394620))))

(assert (=> bs!1851026 (not (= lambda!394655 lambda!394606))))

(assert (=> b!6933417 true))

(assert (=> b!6933417 true))

(declare-fun bs!1851032 () Bool)

(declare-fun b!6933413 () Bool)

(assert (= bs!1851032 (and b!6933413 b!6933353)))

(declare-fun lambda!394656 () Int)

(assert (=> bs!1851032 (= (and (= s!14361 (_2!37111 lt!2473640)) (= (regOne!34414 lt!2473641) (regOne!34414 r3!135)) (= (regTwo!34414 lt!2473641) (regTwo!34414 r3!135))) (= lambda!394656 lambda!394649))))

(declare-fun bs!1851034 () Bool)

(assert (= bs!1851034 (and b!6933413 b!6933065)))

(assert (=> bs!1851034 (not (= lambda!394656 lambda!394619))))

(declare-fun bs!1851035 () Bool)

(assert (= bs!1851035 (and b!6933413 b!6933357)))

(assert (=> bs!1851035 (not (= lambda!394656 lambda!394647))))

(declare-fun bs!1851036 () Bool)

(assert (= bs!1851036 (and b!6933413 d!2166301)))

(assert (=> bs!1851036 (not (= lambda!394656 lambda!394634))))

(declare-fun bs!1851037 () Bool)

(assert (= bs!1851037 (and b!6933413 b!6932872)))

(assert (=> bs!1851037 (= (and (= s!14361 (_2!37111 lt!2473648)) (= (regOne!34414 lt!2473641) r2!6280) (= (regTwo!34414 lt!2473641) r3!135)) (= lambda!394656 lambda!394608))))

(declare-fun bs!1851038 () Bool)

(assert (= bs!1851038 (and b!6933413 b!6932860)))

(assert (=> bs!1851038 (not (= lambda!394656 lambda!394609))))

(declare-fun bs!1851039 () Bool)

(assert (= bs!1851039 (and b!6933413 b!6933379)))

(assert (=> bs!1851039 (not (= lambda!394656 lambda!394651))))

(assert (=> bs!1851036 (= (and (= s!14361 lt!2473646) (= (regOne!34414 lt!2473641) r1!6342) (= (regTwo!34414 lt!2473641) r2!6280)) (= lambda!394656 lambda!394637))))

(assert (=> bs!1851038 (= (and (= s!14361 lt!2473646) (= (regOne!34414 lt!2473641) r1!6342) (= (regTwo!34414 lt!2473641) r2!6280)) (= lambda!394656 lambda!394610))))

(declare-fun bs!1851040 () Bool)

(assert (= bs!1851040 (and b!6933413 d!2166327)))

(assert (=> bs!1851040 (not (= lambda!394656 lambda!394644))))

(assert (=> bs!1851037 (not (= lambda!394656 lambda!394607))))

(declare-fun bs!1851041 () Bool)

(assert (= bs!1851041 (and b!6933413 b!6932863)))

(assert (=> bs!1851041 (not (= lambda!394656 lambda!394605))))

(declare-fun bs!1851042 () Bool)

(assert (= bs!1851042 (and b!6933413 b!6933375)))

(assert (=> bs!1851042 (= (and (= s!14361 (_1!37111 lt!2473640)) (= (regOne!34414 lt!2473641) (regOne!34414 r2!6280)) (= (regTwo!34414 lt!2473641) (regTwo!34414 r2!6280))) (= lambda!394656 lambda!394652))))

(declare-fun bs!1851043 () Bool)

(assert (= bs!1851043 (and b!6933413 b!6933061)))

(assert (=> bs!1851043 (= (and (= s!14361 lt!2473646) (= (regOne!34414 lt!2473641) (regOne!34414 lt!2473647)) (= (regTwo!34414 lt!2473641) (regTwo!34414 lt!2473647))) (= lambda!394656 lambda!394620))))

(assert (=> bs!1851041 (= (and (= (regOne!34414 lt!2473641) r1!6342) (= (regTwo!34414 lt!2473641) lt!2473650)) (= lambda!394656 lambda!394606))))

(declare-fun bs!1851044 () Bool)

(assert (= bs!1851044 (and b!6933413 b!6933417)))

(assert (=> bs!1851044 (not (= lambda!394656 lambda!394655))))

(assert (=> b!6933413 true))

(assert (=> b!6933413 true))

(declare-fun c!1286725 () Bool)

(declare-fun bm!630013 () Bool)

(declare-fun call!630018 () Bool)

(assert (=> bm!630013 (= call!630018 (Exists!3951 (ite c!1286725 lambda!394655 lambda!394656)))))

(declare-fun b!6933411 () Bool)

(declare-fun e!4171704 () Bool)

(assert (=> b!6933411 (= e!4171704 (= s!14361 (Cons!66580 (c!1286601 lt!2473641) Nil!66580)))))

(declare-fun b!6933412 () Bool)

(declare-fun e!4171702 () Bool)

(assert (=> b!6933412 (= e!4171702 (matchRSpec!4008 (regTwo!34415 lt!2473641) s!14361))))

(declare-fun e!4171699 () Bool)

(assert (=> b!6933413 (= e!4171699 call!630018)))

(declare-fun b!6933414 () Bool)

(declare-fun e!4171701 () Bool)

(declare-fun call!630019 () Bool)

(assert (=> b!6933414 (= e!4171701 call!630019)))

(declare-fun b!6933415 () Bool)

(declare-fun c!1286724 () Bool)

(assert (=> b!6933415 (= c!1286724 ((_ is ElementMatch!16951) lt!2473641))))

(declare-fun e!4171700 () Bool)

(assert (=> b!6933415 (= e!4171700 e!4171704)))

(declare-fun b!6933416 () Bool)

(declare-fun e!4171705 () Bool)

(assert (=> b!6933416 (= e!4171705 e!4171702)))

(declare-fun res!2827836 () Bool)

(assert (=> b!6933416 (= res!2827836 (matchRSpec!4008 (regOne!34415 lt!2473641) s!14361))))

(assert (=> b!6933416 (=> res!2827836 e!4171702)))

(declare-fun e!4171703 () Bool)

(assert (=> b!6933417 (= e!4171703 call!630018)))

(declare-fun b!6933418 () Bool)

(declare-fun res!2827838 () Bool)

(assert (=> b!6933418 (=> res!2827838 e!4171703)))

(assert (=> b!6933418 (= res!2827838 call!630019)))

(assert (=> b!6933418 (= e!4171699 e!4171703)))

(declare-fun b!6933419 () Bool)

(declare-fun c!1286726 () Bool)

(assert (=> b!6933419 (= c!1286726 ((_ is Union!16951) lt!2473641))))

(assert (=> b!6933419 (= e!4171704 e!4171705)))

(declare-fun b!6933420 () Bool)

(assert (=> b!6933420 (= e!4171705 e!4171699)))

(assert (=> b!6933420 (= c!1286725 ((_ is Star!16951) lt!2473641))))

(declare-fun b!6933421 () Bool)

(assert (=> b!6933421 (= e!4171701 e!4171700)))

(declare-fun res!2827837 () Bool)

(assert (=> b!6933421 (= res!2827837 (not ((_ is EmptyLang!16951) lt!2473641)))))

(assert (=> b!6933421 (=> (not res!2827837) (not e!4171700))))

(declare-fun d!2166373 () Bool)

(declare-fun c!1286727 () Bool)

(assert (=> d!2166373 (= c!1286727 ((_ is EmptyExpr!16951) lt!2473641))))

(assert (=> d!2166373 (= (matchRSpec!4008 lt!2473641 s!14361) e!4171701)))

(declare-fun bm!630014 () Bool)

(assert (=> bm!630014 (= call!630019 (isEmpty!38841 s!14361))))

(assert (= (and d!2166373 c!1286727) b!6933414))

(assert (= (and d!2166373 (not c!1286727)) b!6933421))

(assert (= (and b!6933421 res!2827837) b!6933415))

(assert (= (and b!6933415 c!1286724) b!6933411))

(assert (= (and b!6933415 (not c!1286724)) b!6933419))

(assert (= (and b!6933419 c!1286726) b!6933416))

(assert (= (and b!6933419 (not c!1286726)) b!6933420))

(assert (= (and b!6933416 (not res!2827836)) b!6933412))

(assert (= (and b!6933420 c!1286725) b!6933418))

(assert (= (and b!6933420 (not c!1286725)) b!6933413))

(assert (= (and b!6933418 (not res!2827838)) b!6933417))

(assert (= (or b!6933417 b!6933413) bm!630013))

(assert (= (or b!6933414 b!6933418) bm!630014))

(declare-fun m!7639894 () Bool)

(assert (=> bm!630013 m!7639894))

(declare-fun m!7639896 () Bool)

(assert (=> b!6933412 m!7639896))

(declare-fun m!7639898 () Bool)

(assert (=> b!6933416 m!7639898))

(declare-fun m!7639900 () Bool)

(assert (=> bm!630014 m!7639900))

(assert (=> b!6932851 d!2166373))

(declare-fun d!2166375 () Bool)

(assert (=> d!2166375 (= (matchR!9090 lt!2473643 s!14361) (matchRSpec!4008 lt!2473643 s!14361))))

(declare-fun lt!2473730 () Unit!160626)

(assert (=> d!2166375 (= lt!2473730 (choose!51633 lt!2473643 s!14361))))

(assert (=> d!2166375 (validRegex!8657 lt!2473643)))

(assert (=> d!2166375 (= (mainMatchTheorem!4008 lt!2473643 s!14361) lt!2473730)))

(declare-fun bs!1851045 () Bool)

(assert (= bs!1851045 d!2166375))

(assert (=> bs!1851045 m!7639432))

(assert (=> bs!1851045 m!7639426))

(declare-fun m!7639908 () Bool)

(assert (=> bs!1851045 m!7639908))

(declare-fun m!7639910 () Bool)

(assert (=> bs!1851045 m!7639910))

(assert (=> b!6932851 d!2166375))

(declare-fun d!2166379 () Bool)

(assert (=> d!2166379 (= (matchR!9090 lt!2473641 s!14361) (matchRSpec!4008 lt!2473641 s!14361))))

(declare-fun lt!2473731 () Unit!160626)

(assert (=> d!2166379 (= lt!2473731 (choose!51633 lt!2473641 s!14361))))

(assert (=> d!2166379 (validRegex!8657 lt!2473641)))

(assert (=> d!2166379 (= (mainMatchTheorem!4008 lt!2473641 s!14361) lt!2473731)))

(declare-fun bs!1851046 () Bool)

(assert (= bs!1851046 d!2166379))

(assert (=> bs!1851046 m!7639436))

(assert (=> bs!1851046 m!7639430))

(declare-fun m!7639912 () Bool)

(assert (=> bs!1851046 m!7639912))

(declare-fun m!7639914 () Bool)

(assert (=> bs!1851046 m!7639914))

(assert (=> b!6932851 d!2166379))

(declare-fun b!6933422 () Bool)

(declare-fun res!2827843 () Bool)

(declare-fun e!4171710 () Bool)

(assert (=> b!6933422 (=> res!2827843 e!4171710)))

(declare-fun e!4171711 () Bool)

(assert (=> b!6933422 (= res!2827843 e!4171711)))

(declare-fun res!2827840 () Bool)

(assert (=> b!6933422 (=> (not res!2827840) (not e!4171711))))

(declare-fun lt!2473732 () Bool)

(assert (=> b!6933422 (= res!2827840 lt!2473732)))

(declare-fun b!6933423 () Bool)

(declare-fun res!2827844 () Bool)

(assert (=> b!6933423 (=> res!2827844 e!4171710)))

(assert (=> b!6933423 (= res!2827844 (not ((_ is ElementMatch!16951) lt!2473641)))))

(declare-fun e!4171706 () Bool)

(assert (=> b!6933423 (= e!4171706 e!4171710)))

(declare-fun b!6933424 () Bool)

(declare-fun e!4171712 () Bool)

(assert (=> b!6933424 (= e!4171710 e!4171712)))

(declare-fun res!2827845 () Bool)

(assert (=> b!6933424 (=> (not res!2827845) (not e!4171712))))

(assert (=> b!6933424 (= res!2827845 (not lt!2473732))))

(declare-fun b!6933425 () Bool)

(declare-fun res!2827839 () Bool)

(declare-fun e!4171709 () Bool)

(assert (=> b!6933425 (=> res!2827839 e!4171709)))

(assert (=> b!6933425 (= res!2827839 (not (isEmpty!38841 (tail!12950 s!14361))))))

(declare-fun d!2166381 () Bool)

(declare-fun e!4171707 () Bool)

(assert (=> d!2166381 e!4171707))

(declare-fun c!1286729 () Bool)

(assert (=> d!2166381 (= c!1286729 ((_ is EmptyExpr!16951) lt!2473641))))

(declare-fun e!4171708 () Bool)

(assert (=> d!2166381 (= lt!2473732 e!4171708)))

(declare-fun c!1286728 () Bool)

(assert (=> d!2166381 (= c!1286728 (isEmpty!38841 s!14361))))

(assert (=> d!2166381 (validRegex!8657 lt!2473641)))

(assert (=> d!2166381 (= (matchR!9090 lt!2473641 s!14361) lt!2473732)))

(declare-fun b!6933426 () Bool)

(assert (=> b!6933426 (= e!4171708 (nullable!6770 lt!2473641))))

(declare-fun b!6933427 () Bool)

(declare-fun res!2827841 () Bool)

(assert (=> b!6933427 (=> (not res!2827841) (not e!4171711))))

(assert (=> b!6933427 (= res!2827841 (isEmpty!38841 (tail!12950 s!14361)))))

(declare-fun b!6933428 () Bool)

(assert (=> b!6933428 (= e!4171707 e!4171706)))

(declare-fun c!1286730 () Bool)

(assert (=> b!6933428 (= c!1286730 ((_ is EmptyLang!16951) lt!2473641))))

(declare-fun bm!630015 () Bool)

(declare-fun call!630020 () Bool)

(assert (=> bm!630015 (= call!630020 (isEmpty!38841 s!14361))))

(declare-fun b!6933429 () Bool)

(assert (=> b!6933429 (= e!4171707 (= lt!2473732 call!630020))))

(declare-fun b!6933430 () Bool)

(assert (=> b!6933430 (= e!4171712 e!4171709)))

(declare-fun res!2827846 () Bool)

(assert (=> b!6933430 (=> res!2827846 e!4171709)))

(assert (=> b!6933430 (= res!2827846 call!630020)))

(declare-fun b!6933431 () Bool)

(assert (=> b!6933431 (= e!4171706 (not lt!2473732))))

(declare-fun b!6933432 () Bool)

(assert (=> b!6933432 (= e!4171709 (not (= (head!13898 s!14361) (c!1286601 lt!2473641))))))

(declare-fun b!6933433 () Bool)

(declare-fun res!2827842 () Bool)

(assert (=> b!6933433 (=> (not res!2827842) (not e!4171711))))

(assert (=> b!6933433 (= res!2827842 (not call!630020))))

(declare-fun b!6933434 () Bool)

(assert (=> b!6933434 (= e!4171711 (= (head!13898 s!14361) (c!1286601 lt!2473641)))))

(declare-fun b!6933435 () Bool)

(assert (=> b!6933435 (= e!4171708 (matchR!9090 (derivativeStep!5445 lt!2473641 (head!13898 s!14361)) (tail!12950 s!14361)))))

(assert (= (and d!2166381 c!1286728) b!6933426))

(assert (= (and d!2166381 (not c!1286728)) b!6933435))

(assert (= (and d!2166381 c!1286729) b!6933429))

(assert (= (and d!2166381 (not c!1286729)) b!6933428))

(assert (= (and b!6933428 c!1286730) b!6933431))

(assert (= (and b!6933428 (not c!1286730)) b!6933423))

(assert (= (and b!6933423 (not res!2827844)) b!6933422))

(assert (= (and b!6933422 res!2827840) b!6933433))

(assert (= (and b!6933433 res!2827842) b!6933427))

(assert (= (and b!6933427 res!2827841) b!6933434))

(assert (= (and b!6933422 (not res!2827843)) b!6933424))

(assert (= (and b!6933424 res!2827845) b!6933430))

(assert (= (and b!6933430 (not res!2827846)) b!6933425))

(assert (= (and b!6933425 (not res!2827839)) b!6933432))

(assert (= (or b!6933429 b!6933430 b!6933433) bm!630015))

(declare-fun m!7639918 () Bool)

(assert (=> b!6933435 m!7639918))

(assert (=> b!6933435 m!7639918))

(declare-fun m!7639920 () Bool)

(assert (=> b!6933435 m!7639920))

(declare-fun m!7639922 () Bool)

(assert (=> b!6933435 m!7639922))

(assert (=> b!6933435 m!7639920))

(assert (=> b!6933435 m!7639922))

(declare-fun m!7639924 () Bool)

(assert (=> b!6933435 m!7639924))

(assert (=> b!6933434 m!7639918))

(declare-fun m!7639926 () Bool)

(assert (=> b!6933426 m!7639926))

(assert (=> bm!630015 m!7639900))

(assert (=> d!2166381 m!7639900))

(assert (=> d!2166381 m!7639914))

(assert (=> b!6933425 m!7639922))

(assert (=> b!6933425 m!7639922))

(declare-fun m!7639928 () Bool)

(assert (=> b!6933425 m!7639928))

(assert (=> b!6933432 m!7639918))

(assert (=> b!6933427 m!7639922))

(assert (=> b!6933427 m!7639922))

(assert (=> b!6933427 m!7639928))

(assert (=> b!6932851 d!2166381))

(declare-fun bs!1851048 () Bool)

(declare-fun b!6933442 () Bool)

(assert (= bs!1851048 (and b!6933442 b!6933353)))

(declare-fun lambda!394658 () Int)

(assert (=> bs!1851048 (not (= lambda!394658 lambda!394649))))

(declare-fun bs!1851049 () Bool)

(assert (= bs!1851049 (and b!6933442 b!6933065)))

(assert (=> bs!1851049 (= (and (= s!14361 lt!2473646) (= (reg!17280 lt!2473643) (reg!17280 lt!2473647)) (= lt!2473643 lt!2473647)) (= lambda!394658 lambda!394619))))

(declare-fun bs!1851050 () Bool)

(assert (= bs!1851050 (and b!6933442 b!6933357)))

(assert (=> bs!1851050 (= (and (= s!14361 (_2!37111 lt!2473640)) (= (reg!17280 lt!2473643) (reg!17280 r3!135)) (= lt!2473643 r3!135)) (= lambda!394658 lambda!394647))))

(declare-fun bs!1851051 () Bool)

(assert (= bs!1851051 (and b!6933442 d!2166301)))

(assert (=> bs!1851051 (not (= lambda!394658 lambda!394634))))

(declare-fun bs!1851052 () Bool)

(assert (= bs!1851052 (and b!6933442 b!6932872)))

(assert (=> bs!1851052 (not (= lambda!394658 lambda!394608))))

(declare-fun bs!1851053 () Bool)

(assert (= bs!1851053 (and b!6933442 b!6932860)))

(assert (=> bs!1851053 (not (= lambda!394658 lambda!394609))))

(declare-fun bs!1851054 () Bool)

(assert (= bs!1851054 (and b!6933442 b!6933413)))

(assert (=> bs!1851054 (not (= lambda!394658 lambda!394656))))

(declare-fun bs!1851055 () Bool)

(assert (= bs!1851055 (and b!6933442 b!6933379)))

(assert (=> bs!1851055 (= (and (= s!14361 (_1!37111 lt!2473640)) (= (reg!17280 lt!2473643) (reg!17280 r2!6280)) (= lt!2473643 r2!6280)) (= lambda!394658 lambda!394651))))

(assert (=> bs!1851051 (not (= lambda!394658 lambda!394637))))

(assert (=> bs!1851053 (not (= lambda!394658 lambda!394610))))

(declare-fun bs!1851056 () Bool)

(assert (= bs!1851056 (and b!6933442 d!2166327)))

(assert (=> bs!1851056 (not (= lambda!394658 lambda!394644))))

(assert (=> bs!1851052 (not (= lambda!394658 lambda!394607))))

(declare-fun bs!1851057 () Bool)

(assert (= bs!1851057 (and b!6933442 b!6932863)))

(assert (=> bs!1851057 (not (= lambda!394658 lambda!394605))))

(declare-fun bs!1851058 () Bool)

(assert (= bs!1851058 (and b!6933442 b!6933375)))

(assert (=> bs!1851058 (not (= lambda!394658 lambda!394652))))

(declare-fun bs!1851059 () Bool)

(assert (= bs!1851059 (and b!6933442 b!6933061)))

(assert (=> bs!1851059 (not (= lambda!394658 lambda!394620))))

(assert (=> bs!1851057 (not (= lambda!394658 lambda!394606))))

(declare-fun bs!1851060 () Bool)

(assert (= bs!1851060 (and b!6933442 b!6933417)))

(assert (=> bs!1851060 (= (and (= (reg!17280 lt!2473643) (reg!17280 lt!2473641)) (= lt!2473643 lt!2473641)) (= lambda!394658 lambda!394655))))

(assert (=> b!6933442 true))

(assert (=> b!6933442 true))

(declare-fun bs!1851061 () Bool)

(declare-fun b!6933438 () Bool)

(assert (= bs!1851061 (and b!6933438 b!6933353)))

(declare-fun lambda!394659 () Int)

(assert (=> bs!1851061 (= (and (= s!14361 (_2!37111 lt!2473640)) (= (regOne!34414 lt!2473643) (regOne!34414 r3!135)) (= (regTwo!34414 lt!2473643) (regTwo!34414 r3!135))) (= lambda!394659 lambda!394649))))

(declare-fun bs!1851062 () Bool)

(assert (= bs!1851062 (and b!6933438 b!6933065)))

(assert (=> bs!1851062 (not (= lambda!394659 lambda!394619))))

(declare-fun bs!1851063 () Bool)

(assert (= bs!1851063 (and b!6933438 b!6933357)))

(assert (=> bs!1851063 (not (= lambda!394659 lambda!394647))))

(declare-fun bs!1851064 () Bool)

(assert (= bs!1851064 (and b!6933438 b!6933442)))

(assert (=> bs!1851064 (not (= lambda!394659 lambda!394658))))

(declare-fun bs!1851065 () Bool)

(assert (= bs!1851065 (and b!6933438 d!2166301)))

(assert (=> bs!1851065 (not (= lambda!394659 lambda!394634))))

(declare-fun bs!1851066 () Bool)

(assert (= bs!1851066 (and b!6933438 b!6932872)))

(assert (=> bs!1851066 (= (and (= s!14361 (_2!37111 lt!2473648)) (= (regOne!34414 lt!2473643) r2!6280) (= (regTwo!34414 lt!2473643) r3!135)) (= lambda!394659 lambda!394608))))

(declare-fun bs!1851067 () Bool)

(assert (= bs!1851067 (and b!6933438 b!6932860)))

(assert (=> bs!1851067 (not (= lambda!394659 lambda!394609))))

(declare-fun bs!1851068 () Bool)

(assert (= bs!1851068 (and b!6933438 b!6933413)))

(assert (=> bs!1851068 (= (and (= (regOne!34414 lt!2473643) (regOne!34414 lt!2473641)) (= (regTwo!34414 lt!2473643) (regTwo!34414 lt!2473641))) (= lambda!394659 lambda!394656))))

(declare-fun bs!1851069 () Bool)

(assert (= bs!1851069 (and b!6933438 b!6933379)))

(assert (=> bs!1851069 (not (= lambda!394659 lambda!394651))))

(assert (=> bs!1851065 (= (and (= s!14361 lt!2473646) (= (regOne!34414 lt!2473643) r1!6342) (= (regTwo!34414 lt!2473643) r2!6280)) (= lambda!394659 lambda!394637))))

(assert (=> bs!1851067 (= (and (= s!14361 lt!2473646) (= (regOne!34414 lt!2473643) r1!6342) (= (regTwo!34414 lt!2473643) r2!6280)) (= lambda!394659 lambda!394610))))

(declare-fun bs!1851070 () Bool)

(assert (= bs!1851070 (and b!6933438 d!2166327)))

(assert (=> bs!1851070 (not (= lambda!394659 lambda!394644))))

(assert (=> bs!1851066 (not (= lambda!394659 lambda!394607))))

(declare-fun bs!1851071 () Bool)

(assert (= bs!1851071 (and b!6933438 b!6932863)))

(assert (=> bs!1851071 (not (= lambda!394659 lambda!394605))))

(declare-fun bs!1851072 () Bool)

(assert (= bs!1851072 (and b!6933438 b!6933375)))

(assert (=> bs!1851072 (= (and (= s!14361 (_1!37111 lt!2473640)) (= (regOne!34414 lt!2473643) (regOne!34414 r2!6280)) (= (regTwo!34414 lt!2473643) (regTwo!34414 r2!6280))) (= lambda!394659 lambda!394652))))

(declare-fun bs!1851073 () Bool)

(assert (= bs!1851073 (and b!6933438 b!6933061)))

(assert (=> bs!1851073 (= (and (= s!14361 lt!2473646) (= (regOne!34414 lt!2473643) (regOne!34414 lt!2473647)) (= (regTwo!34414 lt!2473643) (regTwo!34414 lt!2473647))) (= lambda!394659 lambda!394620))))

(assert (=> bs!1851071 (= (and (= (regOne!34414 lt!2473643) r1!6342) (= (regTwo!34414 lt!2473643) lt!2473650)) (= lambda!394659 lambda!394606))))

(declare-fun bs!1851074 () Bool)

(assert (= bs!1851074 (and b!6933438 b!6933417)))

(assert (=> bs!1851074 (not (= lambda!394659 lambda!394655))))

(assert (=> b!6933438 true))

(assert (=> b!6933438 true))

(declare-fun call!630021 () Bool)

(declare-fun c!1286732 () Bool)

(declare-fun bm!630016 () Bool)

(assert (=> bm!630016 (= call!630021 (Exists!3951 (ite c!1286732 lambda!394658 lambda!394659)))))

(declare-fun b!6933436 () Bool)

(declare-fun e!4171718 () Bool)

(assert (=> b!6933436 (= e!4171718 (= s!14361 (Cons!66580 (c!1286601 lt!2473643) Nil!66580)))))

(declare-fun b!6933437 () Bool)

(declare-fun e!4171716 () Bool)

(assert (=> b!6933437 (= e!4171716 (matchRSpec!4008 (regTwo!34415 lt!2473643) s!14361))))

(declare-fun e!4171713 () Bool)

(assert (=> b!6933438 (= e!4171713 call!630021)))

(declare-fun b!6933439 () Bool)

(declare-fun e!4171715 () Bool)

(declare-fun call!630022 () Bool)

(assert (=> b!6933439 (= e!4171715 call!630022)))

(declare-fun b!6933440 () Bool)

(declare-fun c!1286731 () Bool)

(assert (=> b!6933440 (= c!1286731 ((_ is ElementMatch!16951) lt!2473643))))

(declare-fun e!4171714 () Bool)

(assert (=> b!6933440 (= e!4171714 e!4171718)))

(declare-fun b!6933441 () Bool)

(declare-fun e!4171719 () Bool)

(assert (=> b!6933441 (= e!4171719 e!4171716)))

(declare-fun res!2827847 () Bool)

(assert (=> b!6933441 (= res!2827847 (matchRSpec!4008 (regOne!34415 lt!2473643) s!14361))))

(assert (=> b!6933441 (=> res!2827847 e!4171716)))

(declare-fun e!4171717 () Bool)

(assert (=> b!6933442 (= e!4171717 call!630021)))

(declare-fun b!6933443 () Bool)

(declare-fun res!2827849 () Bool)

(assert (=> b!6933443 (=> res!2827849 e!4171717)))

(assert (=> b!6933443 (= res!2827849 call!630022)))

(assert (=> b!6933443 (= e!4171713 e!4171717)))

(declare-fun b!6933444 () Bool)

(declare-fun c!1286733 () Bool)

(assert (=> b!6933444 (= c!1286733 ((_ is Union!16951) lt!2473643))))

(assert (=> b!6933444 (= e!4171718 e!4171719)))

(declare-fun b!6933445 () Bool)

(assert (=> b!6933445 (= e!4171719 e!4171713)))

(assert (=> b!6933445 (= c!1286732 ((_ is Star!16951) lt!2473643))))

(declare-fun b!6933446 () Bool)

(assert (=> b!6933446 (= e!4171715 e!4171714)))

(declare-fun res!2827848 () Bool)

(assert (=> b!6933446 (= res!2827848 (not ((_ is EmptyLang!16951) lt!2473643)))))

(assert (=> b!6933446 (=> (not res!2827848) (not e!4171714))))

(declare-fun d!2166385 () Bool)

(declare-fun c!1286734 () Bool)

(assert (=> d!2166385 (= c!1286734 ((_ is EmptyExpr!16951) lt!2473643))))

(assert (=> d!2166385 (= (matchRSpec!4008 lt!2473643 s!14361) e!4171715)))

(declare-fun bm!630017 () Bool)

(assert (=> bm!630017 (= call!630022 (isEmpty!38841 s!14361))))

(assert (= (and d!2166385 c!1286734) b!6933439))

(assert (= (and d!2166385 (not c!1286734)) b!6933446))

(assert (= (and b!6933446 res!2827848) b!6933440))

(assert (= (and b!6933440 c!1286731) b!6933436))

(assert (= (and b!6933440 (not c!1286731)) b!6933444))

(assert (= (and b!6933444 c!1286733) b!6933441))

(assert (= (and b!6933444 (not c!1286733)) b!6933445))

(assert (= (and b!6933441 (not res!2827847)) b!6933437))

(assert (= (and b!6933445 c!1286732) b!6933443))

(assert (= (and b!6933445 (not c!1286732)) b!6933438))

(assert (= (and b!6933443 (not res!2827849)) b!6933442))

(assert (= (or b!6933442 b!6933438) bm!630016))

(assert (= (or b!6933439 b!6933443) bm!630017))

(declare-fun m!7639964 () Bool)

(assert (=> bm!630016 m!7639964))

(declare-fun m!7639966 () Bool)

(assert (=> b!6933437 m!7639966))

(declare-fun m!7639968 () Bool)

(assert (=> b!6933441 m!7639968))

(assert (=> bm!630017 m!7639900))

(assert (=> b!6932851 d!2166385))

(declare-fun b!6933468 () Bool)

(declare-fun res!2827865 () Bool)

(declare-fun e!4171735 () Bool)

(assert (=> b!6933468 (=> res!2827865 e!4171735)))

(declare-fun e!4171736 () Bool)

(assert (=> b!6933468 (= res!2827865 e!4171736)))

(declare-fun res!2827862 () Bool)

(assert (=> b!6933468 (=> (not res!2827862) (not e!4171736))))

(declare-fun lt!2473739 () Bool)

(assert (=> b!6933468 (= res!2827862 lt!2473739)))

(declare-fun b!6933469 () Bool)

(declare-fun res!2827866 () Bool)

(assert (=> b!6933469 (=> res!2827866 e!4171735)))

(assert (=> b!6933469 (= res!2827866 (not ((_ is ElementMatch!16951) lt!2473643)))))

(declare-fun e!4171731 () Bool)

(assert (=> b!6933469 (= e!4171731 e!4171735)))

(declare-fun b!6933470 () Bool)

(declare-fun e!4171737 () Bool)

(assert (=> b!6933470 (= e!4171735 e!4171737)))

(declare-fun res!2827867 () Bool)

(assert (=> b!6933470 (=> (not res!2827867) (not e!4171737))))

(assert (=> b!6933470 (= res!2827867 (not lt!2473739))))

(declare-fun b!6933471 () Bool)

(declare-fun res!2827861 () Bool)

(declare-fun e!4171734 () Bool)

(assert (=> b!6933471 (=> res!2827861 e!4171734)))

(assert (=> b!6933471 (= res!2827861 (not (isEmpty!38841 (tail!12950 s!14361))))))

(declare-fun d!2166391 () Bool)

(declare-fun e!4171732 () Bool)

(assert (=> d!2166391 e!4171732))

(declare-fun c!1286741 () Bool)

(assert (=> d!2166391 (= c!1286741 ((_ is EmptyExpr!16951) lt!2473643))))

(declare-fun e!4171733 () Bool)

(assert (=> d!2166391 (= lt!2473739 e!4171733)))

(declare-fun c!1286740 () Bool)

(assert (=> d!2166391 (= c!1286740 (isEmpty!38841 s!14361))))

(assert (=> d!2166391 (validRegex!8657 lt!2473643)))

(assert (=> d!2166391 (= (matchR!9090 lt!2473643 s!14361) lt!2473739)))

(declare-fun b!6933472 () Bool)

(assert (=> b!6933472 (= e!4171733 (nullable!6770 lt!2473643))))

(declare-fun b!6933473 () Bool)

(declare-fun res!2827863 () Bool)

(assert (=> b!6933473 (=> (not res!2827863) (not e!4171736))))

(assert (=> b!6933473 (= res!2827863 (isEmpty!38841 (tail!12950 s!14361)))))

(declare-fun b!6933474 () Bool)

(assert (=> b!6933474 (= e!4171732 e!4171731)))

(declare-fun c!1286742 () Bool)

(assert (=> b!6933474 (= c!1286742 ((_ is EmptyLang!16951) lt!2473643))))

(declare-fun bm!630018 () Bool)

(declare-fun call!630023 () Bool)

(assert (=> bm!630018 (= call!630023 (isEmpty!38841 s!14361))))

(declare-fun b!6933475 () Bool)

(assert (=> b!6933475 (= e!4171732 (= lt!2473739 call!630023))))

(declare-fun b!6933476 () Bool)

(assert (=> b!6933476 (= e!4171737 e!4171734)))

(declare-fun res!2827868 () Bool)

(assert (=> b!6933476 (=> res!2827868 e!4171734)))

(assert (=> b!6933476 (= res!2827868 call!630023)))

(declare-fun b!6933477 () Bool)

(assert (=> b!6933477 (= e!4171731 (not lt!2473739))))

(declare-fun b!6933478 () Bool)

(assert (=> b!6933478 (= e!4171734 (not (= (head!13898 s!14361) (c!1286601 lt!2473643))))))

(declare-fun b!6933479 () Bool)

(declare-fun res!2827864 () Bool)

(assert (=> b!6933479 (=> (not res!2827864) (not e!4171736))))

(assert (=> b!6933479 (= res!2827864 (not call!630023))))

(declare-fun b!6933480 () Bool)

(assert (=> b!6933480 (= e!4171736 (= (head!13898 s!14361) (c!1286601 lt!2473643)))))

(declare-fun b!6933481 () Bool)

(assert (=> b!6933481 (= e!4171733 (matchR!9090 (derivativeStep!5445 lt!2473643 (head!13898 s!14361)) (tail!12950 s!14361)))))

(assert (= (and d!2166391 c!1286740) b!6933472))

(assert (= (and d!2166391 (not c!1286740)) b!6933481))

(assert (= (and d!2166391 c!1286741) b!6933475))

(assert (= (and d!2166391 (not c!1286741)) b!6933474))

(assert (= (and b!6933474 c!1286742) b!6933477))

(assert (= (and b!6933474 (not c!1286742)) b!6933469))

(assert (= (and b!6933469 (not res!2827866)) b!6933468))

(assert (= (and b!6933468 res!2827862) b!6933479))

(assert (= (and b!6933479 res!2827864) b!6933473))

(assert (= (and b!6933473 res!2827863) b!6933480))

(assert (= (and b!6933468 (not res!2827865)) b!6933470))

(assert (= (and b!6933470 res!2827867) b!6933476))

(assert (= (and b!6933476 (not res!2827868)) b!6933471))

(assert (= (and b!6933471 (not res!2827861)) b!6933478))

(assert (= (or b!6933475 b!6933476 b!6933479) bm!630018))

(assert (=> b!6933481 m!7639918))

(assert (=> b!6933481 m!7639918))

(declare-fun m!7639970 () Bool)

(assert (=> b!6933481 m!7639970))

(assert (=> b!6933481 m!7639922))

(assert (=> b!6933481 m!7639970))

(assert (=> b!6933481 m!7639922))

(declare-fun m!7639972 () Bool)

(assert (=> b!6933481 m!7639972))

(assert (=> b!6933480 m!7639918))

(declare-fun m!7639974 () Bool)

(assert (=> b!6933472 m!7639974))

(assert (=> bm!630018 m!7639900))

(assert (=> d!2166391 m!7639900))

(assert (=> d!2166391 m!7639910))

(assert (=> b!6933471 m!7639922))

(assert (=> b!6933471 m!7639922))

(assert (=> b!6933471 m!7639928))

(assert (=> b!6933478 m!7639918))

(assert (=> b!6933473 m!7639922))

(assert (=> b!6933473 m!7639922))

(assert (=> b!6933473 m!7639928))

(assert (=> b!6932851 d!2166391))

(declare-fun d!2166393 () Bool)

(assert (=> d!2166393 (= (isDefined!13421 lt!2473632) (not (isEmpty!38842 lt!2473632)))))

(declare-fun bs!1851075 () Bool)

(assert (= bs!1851075 d!2166393))

(declare-fun m!7639976 () Bool)

(assert (=> bs!1851075 m!7639976))

(assert (=> b!6932872 d!2166393))

(declare-fun bs!1851077 () Bool)

(declare-fun d!2166395 () Bool)

(assert (= bs!1851077 (and d!2166395 b!6933353)))

(declare-fun lambda!394660 () Int)

(assert (=> bs!1851077 (not (= lambda!394660 lambda!394649))))

(declare-fun bs!1851080 () Bool)

(assert (= bs!1851080 (and d!2166395 b!6933357)))

(assert (=> bs!1851080 (not (= lambda!394660 lambda!394647))))

(declare-fun bs!1851081 () Bool)

(assert (= bs!1851081 (and d!2166395 b!6933442)))

(assert (=> bs!1851081 (not (= lambda!394660 lambda!394658))))

(declare-fun bs!1851082 () Bool)

(assert (= bs!1851082 (and d!2166395 d!2166301)))

(assert (=> bs!1851082 (= (and (= (_2!37111 lt!2473648) lt!2473646) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394660 lambda!394634))))

(declare-fun bs!1851083 () Bool)

(assert (= bs!1851083 (and d!2166395 b!6932872)))

(assert (=> bs!1851083 (not (= lambda!394660 lambda!394608))))

(declare-fun bs!1851084 () Bool)

(assert (= bs!1851084 (and d!2166395 b!6932860)))

(assert (=> bs!1851084 (= (and (= (_2!37111 lt!2473648) lt!2473646) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394660 lambda!394609))))

(declare-fun bs!1851085 () Bool)

(assert (= bs!1851085 (and d!2166395 b!6933413)))

(assert (=> bs!1851085 (not (= lambda!394660 lambda!394656))))

(declare-fun bs!1851086 () Bool)

(assert (= bs!1851086 (and d!2166395 b!6933379)))

(assert (=> bs!1851086 (not (= lambda!394660 lambda!394651))))

(assert (=> bs!1851082 (not (= lambda!394660 lambda!394637))))

(assert (=> bs!1851084 (not (= lambda!394660 lambda!394610))))

(declare-fun bs!1851087 () Bool)

(assert (= bs!1851087 (and d!2166395 b!6933438)))

(assert (=> bs!1851087 (not (= lambda!394660 lambda!394659))))

(declare-fun bs!1851088 () Bool)

(assert (= bs!1851088 (and d!2166395 b!6933065)))

(assert (=> bs!1851088 (not (= lambda!394660 lambda!394619))))

(declare-fun bs!1851089 () Bool)

(assert (= bs!1851089 (and d!2166395 d!2166327)))

(assert (=> bs!1851089 (= (and (= (_2!37111 lt!2473648) lt!2473646) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394660 lambda!394644))))

(assert (=> bs!1851083 (= lambda!394660 lambda!394607)))

(declare-fun bs!1851090 () Bool)

(assert (= bs!1851090 (and d!2166395 b!6932863)))

(assert (=> bs!1851090 (= (and (= (_2!37111 lt!2473648) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473650)) (= lambda!394660 lambda!394605))))

(declare-fun bs!1851091 () Bool)

(assert (= bs!1851091 (and d!2166395 b!6933375)))

(assert (=> bs!1851091 (not (= lambda!394660 lambda!394652))))

(declare-fun bs!1851092 () Bool)

(assert (= bs!1851092 (and d!2166395 b!6933061)))

(assert (=> bs!1851092 (not (= lambda!394660 lambda!394620))))

(assert (=> bs!1851090 (not (= lambda!394660 lambda!394606))))

(declare-fun bs!1851093 () Bool)

(assert (= bs!1851093 (and d!2166395 b!6933417)))

(assert (=> bs!1851093 (not (= lambda!394660 lambda!394655))))

(assert (=> d!2166395 true))

(assert (=> d!2166395 true))

(assert (=> d!2166395 true))

(assert (=> d!2166395 (= (isDefined!13421 (findConcatSeparation!3134 r2!6280 r3!135 Nil!66580 (_2!37111 lt!2473648) (_2!37111 lt!2473648))) (Exists!3951 lambda!394660))))

(declare-fun lt!2473742 () Unit!160626)

(assert (=> d!2166395 (= lt!2473742 (choose!51639 r2!6280 r3!135 (_2!37111 lt!2473648)))))

(assert (=> d!2166395 (validRegex!8657 r2!6280)))

(assert (=> d!2166395 (= (lemmaFindConcatSeparationEquivalentToExists!2892 r2!6280 r3!135 (_2!37111 lt!2473648)) lt!2473742)))

(declare-fun bs!1851094 () Bool)

(assert (= bs!1851094 d!2166395))

(assert (=> bs!1851094 m!7639440))

(assert (=> bs!1851094 m!7639482))

(assert (=> bs!1851094 m!7639440))

(declare-fun m!7639986 () Bool)

(assert (=> bs!1851094 m!7639986))

(declare-fun m!7639988 () Bool)

(assert (=> bs!1851094 m!7639988))

(declare-fun m!7639990 () Bool)

(assert (=> bs!1851094 m!7639990))

(assert (=> b!6932872 d!2166395))

(declare-fun b!6933490 () Bool)

(declare-fun res!2827881 () Bool)

(declare-fun e!4171748 () Bool)

(assert (=> b!6933490 (=> res!2827881 e!4171748)))

(declare-fun e!4171749 () Bool)

(assert (=> b!6933490 (= res!2827881 e!4171749)))

(declare-fun res!2827878 () Bool)

(assert (=> b!6933490 (=> (not res!2827878) (not e!4171749))))

(declare-fun lt!2473746 () Bool)

(assert (=> b!6933490 (= res!2827878 lt!2473746)))

(declare-fun b!6933491 () Bool)

(declare-fun res!2827882 () Bool)

(assert (=> b!6933491 (=> res!2827882 e!4171748)))

(assert (=> b!6933491 (= res!2827882 (not ((_ is ElementMatch!16951) r2!6280)))))

(declare-fun e!4171744 () Bool)

(assert (=> b!6933491 (= e!4171744 e!4171748)))

(declare-fun b!6933492 () Bool)

(declare-fun e!4171750 () Bool)

(assert (=> b!6933492 (= e!4171748 e!4171750)))

(declare-fun res!2827883 () Bool)

(assert (=> b!6933492 (=> (not res!2827883) (not e!4171750))))

(assert (=> b!6933492 (= res!2827883 (not lt!2473746))))

(declare-fun b!6933493 () Bool)

(declare-fun res!2827877 () Bool)

(declare-fun e!4171747 () Bool)

(assert (=> b!6933493 (=> res!2827877 e!4171747)))

(assert (=> b!6933493 (= res!2827877 (not (isEmpty!38841 (tail!12950 (_1!37111 lt!2473640)))))))

(declare-fun d!2166403 () Bool)

(declare-fun e!4171745 () Bool)

(assert (=> d!2166403 e!4171745))

(declare-fun c!1286744 () Bool)

(assert (=> d!2166403 (= c!1286744 ((_ is EmptyExpr!16951) r2!6280))))

(declare-fun e!4171746 () Bool)

(assert (=> d!2166403 (= lt!2473746 e!4171746)))

(declare-fun c!1286743 () Bool)

(assert (=> d!2166403 (= c!1286743 (isEmpty!38841 (_1!37111 lt!2473640)))))

(assert (=> d!2166403 (validRegex!8657 r2!6280)))

(assert (=> d!2166403 (= (matchR!9090 r2!6280 (_1!37111 lt!2473640)) lt!2473746)))

(declare-fun b!6933494 () Bool)

(assert (=> b!6933494 (= e!4171746 (nullable!6770 r2!6280))))

(declare-fun b!6933495 () Bool)

(declare-fun res!2827879 () Bool)

(assert (=> b!6933495 (=> (not res!2827879) (not e!4171749))))

(assert (=> b!6933495 (= res!2827879 (isEmpty!38841 (tail!12950 (_1!37111 lt!2473640))))))

(declare-fun b!6933496 () Bool)

(assert (=> b!6933496 (= e!4171745 e!4171744)))

(declare-fun c!1286745 () Bool)

(assert (=> b!6933496 (= c!1286745 ((_ is EmptyLang!16951) r2!6280))))

(declare-fun bm!630019 () Bool)

(declare-fun call!630024 () Bool)

(assert (=> bm!630019 (= call!630024 (isEmpty!38841 (_1!37111 lt!2473640)))))

(declare-fun b!6933497 () Bool)

(assert (=> b!6933497 (= e!4171745 (= lt!2473746 call!630024))))

(declare-fun b!6933498 () Bool)

(assert (=> b!6933498 (= e!4171750 e!4171747)))

(declare-fun res!2827884 () Bool)

(assert (=> b!6933498 (=> res!2827884 e!4171747)))

(assert (=> b!6933498 (= res!2827884 call!630024)))

(declare-fun b!6933499 () Bool)

(assert (=> b!6933499 (= e!4171744 (not lt!2473746))))

(declare-fun b!6933500 () Bool)

(assert (=> b!6933500 (= e!4171747 (not (= (head!13898 (_1!37111 lt!2473640)) (c!1286601 r2!6280))))))

(declare-fun b!6933501 () Bool)

(declare-fun res!2827880 () Bool)

(assert (=> b!6933501 (=> (not res!2827880) (not e!4171749))))

(assert (=> b!6933501 (= res!2827880 (not call!630024))))

(declare-fun b!6933502 () Bool)

(assert (=> b!6933502 (= e!4171749 (= (head!13898 (_1!37111 lt!2473640)) (c!1286601 r2!6280)))))

(declare-fun b!6933503 () Bool)

(assert (=> b!6933503 (= e!4171746 (matchR!9090 (derivativeStep!5445 r2!6280 (head!13898 (_1!37111 lt!2473640))) (tail!12950 (_1!37111 lt!2473640))))))

(assert (= (and d!2166403 c!1286743) b!6933494))

(assert (= (and d!2166403 (not c!1286743)) b!6933503))

(assert (= (and d!2166403 c!1286744) b!6933497))

(assert (= (and d!2166403 (not c!1286744)) b!6933496))

(assert (= (and b!6933496 c!1286745) b!6933499))

(assert (= (and b!6933496 (not c!1286745)) b!6933491))

(assert (= (and b!6933491 (not res!2827882)) b!6933490))

(assert (= (and b!6933490 res!2827878) b!6933501))

(assert (= (and b!6933501 res!2827880) b!6933495))

(assert (= (and b!6933495 res!2827879) b!6933502))

(assert (= (and b!6933490 (not res!2827881)) b!6933492))

(assert (= (and b!6933492 res!2827883) b!6933498))

(assert (= (and b!6933498 (not res!2827884)) b!6933493))

(assert (= (and b!6933493 (not res!2827877)) b!6933500))

(assert (= (or b!6933497 b!6933498 b!6933501) bm!630019))

(declare-fun m!7639992 () Bool)

(assert (=> b!6933503 m!7639992))

(assert (=> b!6933503 m!7639992))

(declare-fun m!7639994 () Bool)

(assert (=> b!6933503 m!7639994))

(declare-fun m!7639996 () Bool)

(assert (=> b!6933503 m!7639996))

(assert (=> b!6933503 m!7639994))

(assert (=> b!6933503 m!7639996))

(declare-fun m!7639998 () Bool)

(assert (=> b!6933503 m!7639998))

(assert (=> b!6933502 m!7639992))

(declare-fun m!7640000 () Bool)

(assert (=> b!6933494 m!7640000))

(assert (=> bm!630019 m!7639838))

(assert (=> d!2166403 m!7639838))

(assert (=> d!2166403 m!7639482))

(assert (=> b!6933493 m!7639996))

(assert (=> b!6933493 m!7639996))

(declare-fun m!7640002 () Bool)

(assert (=> b!6933493 m!7640002))

(assert (=> b!6933500 m!7639992))

(assert (=> b!6933495 m!7639996))

(assert (=> b!6933495 m!7639996))

(assert (=> b!6933495 m!7640002))

(assert (=> b!6932872 d!2166403))

(declare-fun d!2166405 () Bool)

(assert (=> d!2166405 (= (matchR!9090 lt!2473650 (_2!37111 lt!2473648)) (matchRSpec!4008 lt!2473650 (_2!37111 lt!2473648)))))

(declare-fun lt!2473747 () Unit!160626)

(assert (=> d!2166405 (= lt!2473747 (choose!51633 lt!2473650 (_2!37111 lt!2473648)))))

(assert (=> d!2166405 (validRegex!8657 lt!2473650)))

(assert (=> d!2166405 (= (mainMatchTheorem!4008 lt!2473650 (_2!37111 lt!2473648)) lt!2473747)))

(declare-fun bs!1851095 () Bool)

(assert (= bs!1851095 d!2166405))

(assert (=> bs!1851095 m!7639462))

(assert (=> bs!1851095 m!7639442))

(declare-fun m!7640004 () Bool)

(assert (=> bs!1851095 m!7640004))

(declare-fun m!7640006 () Bool)

(assert (=> bs!1851095 m!7640006))

(assert (=> b!6932872 d!2166405))

(declare-fun d!2166407 () Bool)

(assert (=> d!2166407 (= (get!23363 lt!2473632) (v!52991 lt!2473632))))

(assert (=> b!6932872 d!2166407))

(declare-fun d!2166411 () Bool)

(assert (=> d!2166411 (= (Exists!3951 lambda!394608) (choose!51634 lambda!394608))))

(declare-fun bs!1851097 () Bool)

(assert (= bs!1851097 d!2166411))

(declare-fun m!7640016 () Bool)

(assert (=> bs!1851097 m!7640016))

(assert (=> b!6932872 d!2166411))

(declare-fun bs!1851098 () Bool)

(declare-fun d!2166413 () Bool)

(assert (= bs!1851098 (and d!2166413 b!6933353)))

(declare-fun lambda!394661 () Int)

(assert (=> bs!1851098 (not (= lambda!394661 lambda!394649))))

(declare-fun bs!1851099 () Bool)

(assert (= bs!1851099 (and d!2166413 b!6933357)))

(assert (=> bs!1851099 (not (= lambda!394661 lambda!394647))))

(declare-fun bs!1851100 () Bool)

(assert (= bs!1851100 (and d!2166413 b!6933442)))

(assert (=> bs!1851100 (not (= lambda!394661 lambda!394658))))

(declare-fun bs!1851101 () Bool)

(assert (= bs!1851101 (and d!2166413 d!2166301)))

(assert (=> bs!1851101 (= (and (= (_2!37111 lt!2473648) lt!2473646) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394661 lambda!394634))))

(declare-fun bs!1851102 () Bool)

(assert (= bs!1851102 (and d!2166413 b!6932872)))

(assert (=> bs!1851102 (not (= lambda!394661 lambda!394608))))

(declare-fun bs!1851104 () Bool)

(assert (= bs!1851104 (and d!2166413 b!6932860)))

(assert (=> bs!1851104 (= (and (= (_2!37111 lt!2473648) lt!2473646) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394661 lambda!394609))))

(declare-fun bs!1851105 () Bool)

(assert (= bs!1851105 (and d!2166413 b!6933413)))

(assert (=> bs!1851105 (not (= lambda!394661 lambda!394656))))

(declare-fun bs!1851106 () Bool)

(assert (= bs!1851106 (and d!2166413 b!6933379)))

(assert (=> bs!1851106 (not (= lambda!394661 lambda!394651))))

(assert (=> bs!1851101 (not (= lambda!394661 lambda!394637))))

(assert (=> bs!1851104 (not (= lambda!394661 lambda!394610))))

(declare-fun bs!1851110 () Bool)

(assert (= bs!1851110 (and d!2166413 b!6933438)))

(assert (=> bs!1851110 (not (= lambda!394661 lambda!394659))))

(declare-fun bs!1851112 () Bool)

(assert (= bs!1851112 (and d!2166413 b!6933065)))

(assert (=> bs!1851112 (not (= lambda!394661 lambda!394619))))

(declare-fun bs!1851114 () Bool)

(assert (= bs!1851114 (and d!2166413 d!2166327)))

(assert (=> bs!1851114 (= (and (= (_2!37111 lt!2473648) lt!2473646) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394661 lambda!394644))))

(assert (=> bs!1851102 (= lambda!394661 lambda!394607)))

(declare-fun bs!1851116 () Bool)

(assert (= bs!1851116 (and d!2166413 b!6932863)))

(assert (=> bs!1851116 (= (and (= (_2!37111 lt!2473648) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473650)) (= lambda!394661 lambda!394605))))

(declare-fun bs!1851118 () Bool)

(assert (= bs!1851118 (and d!2166413 b!6933375)))

(assert (=> bs!1851118 (not (= lambda!394661 lambda!394652))))

(declare-fun bs!1851119 () Bool)

(assert (= bs!1851119 (and d!2166413 d!2166395)))

(assert (=> bs!1851119 (= lambda!394661 lambda!394660)))

(declare-fun bs!1851120 () Bool)

(assert (= bs!1851120 (and d!2166413 b!6933061)))

(assert (=> bs!1851120 (not (= lambda!394661 lambda!394620))))

(assert (=> bs!1851116 (not (= lambda!394661 lambda!394606))))

(declare-fun bs!1851123 () Bool)

(assert (= bs!1851123 (and d!2166413 b!6933417)))

(assert (=> bs!1851123 (not (= lambda!394661 lambda!394655))))

(assert (=> d!2166413 true))

(assert (=> d!2166413 true))

(assert (=> d!2166413 true))

(declare-fun lambda!394663 () Int)

(assert (=> bs!1851098 (= (and (= (_2!37111 lt!2473648) (_2!37111 lt!2473640)) (= r2!6280 (regOne!34414 r3!135)) (= r3!135 (regTwo!34414 r3!135))) (= lambda!394663 lambda!394649))))

(assert (=> bs!1851099 (not (= lambda!394663 lambda!394647))))

(assert (=> bs!1851100 (not (= lambda!394663 lambda!394658))))

(assert (=> bs!1851101 (not (= lambda!394663 lambda!394634))))

(assert (=> bs!1851102 (= lambda!394663 lambda!394608)))

(assert (=> bs!1851105 (= (and (= (_2!37111 lt!2473648) s!14361) (= r2!6280 (regOne!34414 lt!2473641)) (= r3!135 (regTwo!34414 lt!2473641))) (= lambda!394663 lambda!394656))))

(assert (=> bs!1851106 (not (= lambda!394663 lambda!394651))))

(assert (=> bs!1851101 (= (and (= (_2!37111 lt!2473648) lt!2473646) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394663 lambda!394637))))

(assert (=> bs!1851104 (= (and (= (_2!37111 lt!2473648) lt!2473646) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394663 lambda!394610))))

(assert (=> bs!1851110 (= (and (= (_2!37111 lt!2473648) s!14361) (= r2!6280 (regOne!34414 lt!2473643)) (= r3!135 (regTwo!34414 lt!2473643))) (= lambda!394663 lambda!394659))))

(assert (=> bs!1851112 (not (= lambda!394663 lambda!394619))))

(assert (=> bs!1851114 (not (= lambda!394663 lambda!394644))))

(assert (=> bs!1851102 (not (= lambda!394663 lambda!394607))))

(assert (=> bs!1851104 (not (= lambda!394663 lambda!394609))))

(declare-fun bs!1851131 () Bool)

(assert (= bs!1851131 d!2166413))

(assert (=> bs!1851131 (not (= lambda!394663 lambda!394661))))

(assert (=> bs!1851116 (not (= lambda!394663 lambda!394605))))

(assert (=> bs!1851118 (= (and (= (_2!37111 lt!2473648) (_1!37111 lt!2473640)) (= r2!6280 (regOne!34414 r2!6280)) (= r3!135 (regTwo!34414 r2!6280))) (= lambda!394663 lambda!394652))))

(assert (=> bs!1851119 (not (= lambda!394663 lambda!394660))))

(assert (=> bs!1851120 (= (and (= (_2!37111 lt!2473648) lt!2473646) (= r2!6280 (regOne!34414 lt!2473647)) (= r3!135 (regTwo!34414 lt!2473647))) (= lambda!394663 lambda!394620))))

(assert (=> bs!1851116 (= (and (= (_2!37111 lt!2473648) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473650)) (= lambda!394663 lambda!394606))))

(assert (=> bs!1851123 (not (= lambda!394663 lambda!394655))))

(assert (=> d!2166413 true))

(assert (=> d!2166413 true))

(assert (=> d!2166413 true))

(assert (=> d!2166413 (= (Exists!3951 lambda!394661) (Exists!3951 lambda!394663))))

(declare-fun lt!2473750 () Unit!160626)

(assert (=> d!2166413 (= lt!2473750 (choose!51635 r2!6280 r3!135 (_2!37111 lt!2473648)))))

(assert (=> d!2166413 (validRegex!8657 r2!6280)))

(assert (=> d!2166413 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2412 r2!6280 r3!135 (_2!37111 lt!2473648)) lt!2473750)))

(declare-fun m!7640038 () Bool)

(assert (=> bs!1851131 m!7640038))

(declare-fun m!7640040 () Bool)

(assert (=> bs!1851131 m!7640040))

(declare-fun m!7640042 () Bool)

(assert (=> bs!1851131 m!7640042))

(assert (=> bs!1851131 m!7639482))

(assert (=> b!6932872 d!2166413))

(declare-fun d!2166421 () Bool)

(assert (=> d!2166421 (= (Exists!3951 lambda!394607) (choose!51634 lambda!394607))))

(declare-fun bs!1851139 () Bool)

(assert (= bs!1851139 d!2166421))

(declare-fun m!7640044 () Bool)

(assert (=> bs!1851139 m!7640044))

(assert (=> b!6932872 d!2166421))

(declare-fun bs!1851145 () Bool)

(declare-fun b!6933529 () Bool)

(assert (= bs!1851145 (and b!6933529 b!6933353)))

(declare-fun lambda!394665 () Int)

(assert (=> bs!1851145 (not (= lambda!394665 lambda!394649))))

(declare-fun bs!1851147 () Bool)

(assert (= bs!1851147 (and b!6933529 b!6933357)))

(assert (=> bs!1851147 (= (and (= (_2!37111 lt!2473648) (_2!37111 lt!2473640)) (= (reg!17280 lt!2473650) (reg!17280 r3!135)) (= lt!2473650 r3!135)) (= lambda!394665 lambda!394647))))

(declare-fun bs!1851149 () Bool)

(assert (= bs!1851149 (and b!6933529 b!6933442)))

(assert (=> bs!1851149 (= (and (= (_2!37111 lt!2473648) s!14361) (= (reg!17280 lt!2473650) (reg!17280 lt!2473643)) (= lt!2473650 lt!2473643)) (= lambda!394665 lambda!394658))))

(declare-fun bs!1851151 () Bool)

(assert (= bs!1851151 (and b!6933529 d!2166301)))

(assert (=> bs!1851151 (not (= lambda!394665 lambda!394634))))

(declare-fun bs!1851152 () Bool)

(assert (= bs!1851152 (and b!6933529 d!2166413)))

(assert (=> bs!1851152 (not (= lambda!394665 lambda!394663))))

(declare-fun bs!1851154 () Bool)

(assert (= bs!1851154 (and b!6933529 b!6932872)))

(assert (=> bs!1851154 (not (= lambda!394665 lambda!394608))))

(declare-fun bs!1851155 () Bool)

(assert (= bs!1851155 (and b!6933529 b!6933413)))

(assert (=> bs!1851155 (not (= lambda!394665 lambda!394656))))

(declare-fun bs!1851157 () Bool)

(assert (= bs!1851157 (and b!6933529 b!6933379)))

(assert (=> bs!1851157 (= (and (= (_2!37111 lt!2473648) (_1!37111 lt!2473640)) (= (reg!17280 lt!2473650) (reg!17280 r2!6280)) (= lt!2473650 r2!6280)) (= lambda!394665 lambda!394651))))

(assert (=> bs!1851151 (not (= lambda!394665 lambda!394637))))

(declare-fun bs!1851158 () Bool)

(assert (= bs!1851158 (and b!6933529 b!6932860)))

(assert (=> bs!1851158 (not (= lambda!394665 lambda!394610))))

(declare-fun bs!1851159 () Bool)

(assert (= bs!1851159 (and b!6933529 b!6933438)))

(assert (=> bs!1851159 (not (= lambda!394665 lambda!394659))))

(declare-fun bs!1851160 () Bool)

(assert (= bs!1851160 (and b!6933529 b!6933065)))

(assert (=> bs!1851160 (= (and (= (_2!37111 lt!2473648) lt!2473646) (= (reg!17280 lt!2473650) (reg!17280 lt!2473647)) (= lt!2473650 lt!2473647)) (= lambda!394665 lambda!394619))))

(declare-fun bs!1851161 () Bool)

(assert (= bs!1851161 (and b!6933529 d!2166327)))

(assert (=> bs!1851161 (not (= lambda!394665 lambda!394644))))

(assert (=> bs!1851154 (not (= lambda!394665 lambda!394607))))

(assert (=> bs!1851158 (not (= lambda!394665 lambda!394609))))

(assert (=> bs!1851152 (not (= lambda!394665 lambda!394661))))

(declare-fun bs!1851165 () Bool)

(assert (= bs!1851165 (and b!6933529 b!6932863)))

(assert (=> bs!1851165 (not (= lambda!394665 lambda!394605))))

(declare-fun bs!1851167 () Bool)

(assert (= bs!1851167 (and b!6933529 b!6933375)))

(assert (=> bs!1851167 (not (= lambda!394665 lambda!394652))))

(declare-fun bs!1851169 () Bool)

(assert (= bs!1851169 (and b!6933529 d!2166395)))

(assert (=> bs!1851169 (not (= lambda!394665 lambda!394660))))

(declare-fun bs!1851171 () Bool)

(assert (= bs!1851171 (and b!6933529 b!6933061)))

(assert (=> bs!1851171 (not (= lambda!394665 lambda!394620))))

(assert (=> bs!1851165 (not (= lambda!394665 lambda!394606))))

(declare-fun bs!1851173 () Bool)

(assert (= bs!1851173 (and b!6933529 b!6933417)))

(assert (=> bs!1851173 (= (and (= (_2!37111 lt!2473648) s!14361) (= (reg!17280 lt!2473650) (reg!17280 lt!2473641)) (= lt!2473650 lt!2473641)) (= lambda!394665 lambda!394655))))

(assert (=> b!6933529 true))

(assert (=> b!6933529 true))

(declare-fun bs!1851178 () Bool)

(declare-fun b!6933525 () Bool)

(assert (= bs!1851178 (and b!6933525 b!6933353)))

(declare-fun lambda!394667 () Int)

(assert (=> bs!1851178 (= (and (= (_2!37111 lt!2473648) (_2!37111 lt!2473640)) (= (regOne!34414 lt!2473650) (regOne!34414 r3!135)) (= (regTwo!34414 lt!2473650) (regTwo!34414 r3!135))) (= lambda!394667 lambda!394649))))

(declare-fun bs!1851181 () Bool)

(assert (= bs!1851181 (and b!6933525 b!6933357)))

(assert (=> bs!1851181 (not (= lambda!394667 lambda!394647))))

(declare-fun bs!1851183 () Bool)

(assert (= bs!1851183 (and b!6933525 b!6933442)))

(assert (=> bs!1851183 (not (= lambda!394667 lambda!394658))))

(declare-fun bs!1851185 () Bool)

(assert (= bs!1851185 (and b!6933525 d!2166301)))

(assert (=> bs!1851185 (not (= lambda!394667 lambda!394634))))

(declare-fun bs!1851187 () Bool)

(assert (= bs!1851187 (and b!6933525 d!2166413)))

(assert (=> bs!1851187 (= (and (= (regOne!34414 lt!2473650) r2!6280) (= (regTwo!34414 lt!2473650) r3!135)) (= lambda!394667 lambda!394663))))

(declare-fun bs!1851188 () Bool)

(assert (= bs!1851188 (and b!6933525 b!6932872)))

(assert (=> bs!1851188 (= (and (= (regOne!34414 lt!2473650) r2!6280) (= (regTwo!34414 lt!2473650) r3!135)) (= lambda!394667 lambda!394608))))

(declare-fun bs!1851190 () Bool)

(assert (= bs!1851190 (and b!6933525 b!6933413)))

(assert (=> bs!1851190 (= (and (= (_2!37111 lt!2473648) s!14361) (= (regOne!34414 lt!2473650) (regOne!34414 lt!2473641)) (= (regTwo!34414 lt!2473650) (regTwo!34414 lt!2473641))) (= lambda!394667 lambda!394656))))

(assert (=> bs!1851185 (= (and (= (_2!37111 lt!2473648) lt!2473646) (= (regOne!34414 lt!2473650) r1!6342) (= (regTwo!34414 lt!2473650) r2!6280)) (= lambda!394667 lambda!394637))))

(declare-fun bs!1851192 () Bool)

(assert (= bs!1851192 (and b!6933525 b!6932860)))

(assert (=> bs!1851192 (= (and (= (_2!37111 lt!2473648) lt!2473646) (= (regOne!34414 lt!2473650) r1!6342) (= (regTwo!34414 lt!2473650) r2!6280)) (= lambda!394667 lambda!394610))))

(declare-fun bs!1851193 () Bool)

(assert (= bs!1851193 (and b!6933525 b!6933438)))

(assert (=> bs!1851193 (= (and (= (_2!37111 lt!2473648) s!14361) (= (regOne!34414 lt!2473650) (regOne!34414 lt!2473643)) (= (regTwo!34414 lt!2473650) (regTwo!34414 lt!2473643))) (= lambda!394667 lambda!394659))))

(declare-fun bs!1851194 () Bool)

(assert (= bs!1851194 (and b!6933525 b!6933065)))

(assert (=> bs!1851194 (not (= lambda!394667 lambda!394619))))

(declare-fun bs!1851195 () Bool)

(assert (= bs!1851195 (and b!6933525 d!2166327)))

(assert (=> bs!1851195 (not (= lambda!394667 lambda!394644))))

(assert (=> bs!1851188 (not (= lambda!394667 lambda!394607))))

(assert (=> bs!1851192 (not (= lambda!394667 lambda!394609))))

(assert (=> bs!1851187 (not (= lambda!394667 lambda!394661))))

(declare-fun bs!1851196 () Bool)

(assert (= bs!1851196 (and b!6933525 b!6932863)))

(assert (=> bs!1851196 (not (= lambda!394667 lambda!394605))))

(declare-fun bs!1851197 () Bool)

(assert (= bs!1851197 (and b!6933525 b!6933375)))

(assert (=> bs!1851197 (= (and (= (_2!37111 lt!2473648) (_1!37111 lt!2473640)) (= (regOne!34414 lt!2473650) (regOne!34414 r2!6280)) (= (regTwo!34414 lt!2473650) (regTwo!34414 r2!6280))) (= lambda!394667 lambda!394652))))

(declare-fun bs!1851198 () Bool)

(assert (= bs!1851198 (and b!6933525 b!6933379)))

(assert (=> bs!1851198 (not (= lambda!394667 lambda!394651))))

(declare-fun bs!1851199 () Bool)

(assert (= bs!1851199 (and b!6933525 b!6933529)))

(assert (=> bs!1851199 (not (= lambda!394667 lambda!394665))))

(declare-fun bs!1851201 () Bool)

(assert (= bs!1851201 (and b!6933525 d!2166395)))

(assert (=> bs!1851201 (not (= lambda!394667 lambda!394660))))

(declare-fun bs!1851202 () Bool)

(assert (= bs!1851202 (and b!6933525 b!6933061)))

(assert (=> bs!1851202 (= (and (= (_2!37111 lt!2473648) lt!2473646) (= (regOne!34414 lt!2473650) (regOne!34414 lt!2473647)) (= (regTwo!34414 lt!2473650) (regTwo!34414 lt!2473647))) (= lambda!394667 lambda!394620))))

(assert (=> bs!1851196 (= (and (= (_2!37111 lt!2473648) s!14361) (= (regOne!34414 lt!2473650) r1!6342) (= (regTwo!34414 lt!2473650) lt!2473650)) (= lambda!394667 lambda!394606))))

(declare-fun bs!1851203 () Bool)

(assert (= bs!1851203 (and b!6933525 b!6933417)))

(assert (=> bs!1851203 (not (= lambda!394667 lambda!394655))))

(assert (=> b!6933525 true))

(assert (=> b!6933525 true))

(declare-fun bm!630022 () Bool)

(declare-fun c!1286752 () Bool)

(declare-fun call!630027 () Bool)

(assert (=> bm!630022 (= call!630027 (Exists!3951 (ite c!1286752 lambda!394665 lambda!394667)))))

(declare-fun b!6933523 () Bool)

(declare-fun e!4171768 () Bool)

(assert (=> b!6933523 (= e!4171768 (= (_2!37111 lt!2473648) (Cons!66580 (c!1286601 lt!2473650) Nil!66580)))))

(declare-fun b!6933524 () Bool)

(declare-fun e!4171766 () Bool)

(assert (=> b!6933524 (= e!4171766 (matchRSpec!4008 (regTwo!34415 lt!2473650) (_2!37111 lt!2473648)))))

(declare-fun e!4171763 () Bool)

(assert (=> b!6933525 (= e!4171763 call!630027)))

(declare-fun b!6933526 () Bool)

(declare-fun e!4171765 () Bool)

(declare-fun call!630028 () Bool)

(assert (=> b!6933526 (= e!4171765 call!630028)))

(declare-fun b!6933527 () Bool)

(declare-fun c!1286751 () Bool)

(assert (=> b!6933527 (= c!1286751 ((_ is ElementMatch!16951) lt!2473650))))

(declare-fun e!4171764 () Bool)

(assert (=> b!6933527 (= e!4171764 e!4171768)))

(declare-fun b!6933528 () Bool)

(declare-fun e!4171769 () Bool)

(assert (=> b!6933528 (= e!4171769 e!4171766)))

(declare-fun res!2827894 () Bool)

(assert (=> b!6933528 (= res!2827894 (matchRSpec!4008 (regOne!34415 lt!2473650) (_2!37111 lt!2473648)))))

(assert (=> b!6933528 (=> res!2827894 e!4171766)))

(declare-fun e!4171767 () Bool)

(assert (=> b!6933529 (= e!4171767 call!630027)))

(declare-fun b!6933530 () Bool)

(declare-fun res!2827896 () Bool)

(assert (=> b!6933530 (=> res!2827896 e!4171767)))

(assert (=> b!6933530 (= res!2827896 call!630028)))

(assert (=> b!6933530 (= e!4171763 e!4171767)))

(declare-fun b!6933531 () Bool)

(declare-fun c!1286753 () Bool)

(assert (=> b!6933531 (= c!1286753 ((_ is Union!16951) lt!2473650))))

(assert (=> b!6933531 (= e!4171768 e!4171769)))

(declare-fun b!6933532 () Bool)

(assert (=> b!6933532 (= e!4171769 e!4171763)))

(assert (=> b!6933532 (= c!1286752 ((_ is Star!16951) lt!2473650))))

(declare-fun b!6933533 () Bool)

(assert (=> b!6933533 (= e!4171765 e!4171764)))

(declare-fun res!2827895 () Bool)

(assert (=> b!6933533 (= res!2827895 (not ((_ is EmptyLang!16951) lt!2473650)))))

(assert (=> b!6933533 (=> (not res!2827895) (not e!4171764))))

(declare-fun d!2166423 () Bool)

(declare-fun c!1286754 () Bool)

(assert (=> d!2166423 (= c!1286754 ((_ is EmptyExpr!16951) lt!2473650))))

(assert (=> d!2166423 (= (matchRSpec!4008 lt!2473650 (_2!37111 lt!2473648)) e!4171765)))

(declare-fun bm!630023 () Bool)

(assert (=> bm!630023 (= call!630028 (isEmpty!38841 (_2!37111 lt!2473648)))))

(assert (= (and d!2166423 c!1286754) b!6933526))

(assert (= (and d!2166423 (not c!1286754)) b!6933533))

(assert (= (and b!6933533 res!2827895) b!6933527))

(assert (= (and b!6933527 c!1286751) b!6933523))

(assert (= (and b!6933527 (not c!1286751)) b!6933531))

(assert (= (and b!6933531 c!1286753) b!6933528))

(assert (= (and b!6933531 (not c!1286753)) b!6933532))

(assert (= (and b!6933528 (not res!2827894)) b!6933524))

(assert (= (and b!6933532 c!1286752) b!6933530))

(assert (= (and b!6933532 (not c!1286752)) b!6933525))

(assert (= (and b!6933530 (not res!2827896)) b!6933529))

(assert (= (or b!6933529 b!6933525) bm!630022))

(assert (= (or b!6933526 b!6933530) bm!630023))

(declare-fun m!7640054 () Bool)

(assert (=> bm!630022 m!7640054))

(declare-fun m!7640056 () Bool)

(assert (=> b!6933524 m!7640056))

(declare-fun m!7640058 () Bool)

(assert (=> b!6933528 m!7640058))

(declare-fun m!7640060 () Bool)

(assert (=> bm!630023 m!7640060))

(assert (=> b!6932872 d!2166423))

(declare-fun b!6933545 () Bool)

(declare-fun res!2827904 () Bool)

(declare-fun e!4171777 () Bool)

(assert (=> b!6933545 (=> (not res!2827904) (not e!4171777))))

(declare-fun lt!2473755 () Option!16720)

(assert (=> b!6933545 (= res!2827904 (matchR!9090 r3!135 (_2!37111 (get!23363 lt!2473755))))))

(declare-fun d!2166429 () Bool)

(declare-fun e!4171779 () Bool)

(assert (=> d!2166429 e!4171779))

(declare-fun res!2827900 () Bool)

(assert (=> d!2166429 (=> res!2827900 e!4171779)))

(assert (=> d!2166429 (= res!2827900 e!4171777)))

(declare-fun res!2827901 () Bool)

(assert (=> d!2166429 (=> (not res!2827901) (not e!4171777))))

(assert (=> d!2166429 (= res!2827901 (isDefined!13421 lt!2473755))))

(declare-fun e!4171778 () Option!16720)

(assert (=> d!2166429 (= lt!2473755 e!4171778)))

(declare-fun c!1286759 () Bool)

(declare-fun e!4171781 () Bool)

(assert (=> d!2166429 (= c!1286759 e!4171781)))

(declare-fun res!2827902 () Bool)

(assert (=> d!2166429 (=> (not res!2827902) (not e!4171781))))

(assert (=> d!2166429 (= res!2827902 (matchR!9090 r2!6280 Nil!66580))))

(assert (=> d!2166429 (validRegex!8657 r2!6280)))

(assert (=> d!2166429 (= (findConcatSeparation!3134 r2!6280 r3!135 Nil!66580 (_2!37111 lt!2473648) (_2!37111 lt!2473648)) lt!2473755)))

(declare-fun b!6933546 () Bool)

(assert (=> b!6933546 (= e!4171779 (not (isDefined!13421 lt!2473755)))))

(declare-fun b!6933547 () Bool)

(declare-fun e!4171780 () Option!16720)

(assert (=> b!6933547 (= e!4171778 e!4171780)))

(declare-fun c!1286760 () Bool)

(assert (=> b!6933547 (= c!1286760 ((_ is Nil!66580) (_2!37111 lt!2473648)))))

(declare-fun b!6933548 () Bool)

(assert (=> b!6933548 (= e!4171778 (Some!16719 (tuple2!67617 Nil!66580 (_2!37111 lt!2473648))))))

(declare-fun b!6933549 () Bool)

(assert (=> b!6933549 (= e!4171777 (= (++!14990 (_1!37111 (get!23363 lt!2473755)) (_2!37111 (get!23363 lt!2473755))) (_2!37111 lt!2473648)))))

(declare-fun b!6933550 () Bool)

(declare-fun res!2827903 () Bool)

(assert (=> b!6933550 (=> (not res!2827903) (not e!4171777))))

(assert (=> b!6933550 (= res!2827903 (matchR!9090 r2!6280 (_1!37111 (get!23363 lt!2473755))))))

(declare-fun b!6933551 () Bool)

(assert (=> b!6933551 (= e!4171781 (matchR!9090 r3!135 (_2!37111 lt!2473648)))))

(declare-fun b!6933552 () Bool)

(assert (=> b!6933552 (= e!4171780 None!16719)))

(declare-fun b!6933553 () Bool)

(declare-fun lt!2473756 () Unit!160626)

(declare-fun lt!2473754 () Unit!160626)

(assert (=> b!6933553 (= lt!2473756 lt!2473754)))

(assert (=> b!6933553 (= (++!14990 (++!14990 Nil!66580 (Cons!66580 (h!73028 (_2!37111 lt!2473648)) Nil!66580)) (t!380447 (_2!37111 lt!2473648))) (_2!37111 lt!2473648))))

(assert (=> b!6933553 (= lt!2473754 (lemmaMoveElementToOtherListKeepsConcatEq!2848 Nil!66580 (h!73028 (_2!37111 lt!2473648)) (t!380447 (_2!37111 lt!2473648)) (_2!37111 lt!2473648)))))

(assert (=> b!6933553 (= e!4171780 (findConcatSeparation!3134 r2!6280 r3!135 (++!14990 Nil!66580 (Cons!66580 (h!73028 (_2!37111 lt!2473648)) Nil!66580)) (t!380447 (_2!37111 lt!2473648)) (_2!37111 lt!2473648)))))

(assert (= (and d!2166429 res!2827902) b!6933551))

(assert (= (and d!2166429 c!1286759) b!6933548))

(assert (= (and d!2166429 (not c!1286759)) b!6933547))

(assert (= (and b!6933547 c!1286760) b!6933552))

(assert (= (and b!6933547 (not c!1286760)) b!6933553))

(assert (= (and d!2166429 res!2827901) b!6933550))

(assert (= (and b!6933550 res!2827903) b!6933545))

(assert (= (and b!6933545 res!2827904) b!6933549))

(assert (= (and d!2166429 (not res!2827900)) b!6933546))

(declare-fun m!7640062 () Bool)

(assert (=> b!6933553 m!7640062))

(assert (=> b!6933553 m!7640062))

(declare-fun m!7640064 () Bool)

(assert (=> b!6933553 m!7640064))

(declare-fun m!7640066 () Bool)

(assert (=> b!6933553 m!7640066))

(assert (=> b!6933553 m!7640062))

(declare-fun m!7640068 () Bool)

(assert (=> b!6933553 m!7640068))

(declare-fun m!7640070 () Bool)

(assert (=> b!6933546 m!7640070))

(declare-fun m!7640072 () Bool)

(assert (=> b!6933551 m!7640072))

(declare-fun m!7640074 () Bool)

(assert (=> b!6933550 m!7640074))

(declare-fun m!7640076 () Bool)

(assert (=> b!6933550 m!7640076))

(assert (=> b!6933549 m!7640074))

(declare-fun m!7640078 () Bool)

(assert (=> b!6933549 m!7640078))

(assert (=> b!6933545 m!7640074))

(declare-fun m!7640080 () Bool)

(assert (=> b!6933545 m!7640080))

(assert (=> d!2166429 m!7640070))

(declare-fun m!7640082 () Bool)

(assert (=> d!2166429 m!7640082))

(assert (=> d!2166429 m!7639482))

(assert (=> b!6932872 d!2166429))

(declare-fun b!6933554 () Bool)

(declare-fun res!2827909 () Bool)

(declare-fun e!4171786 () Bool)

(assert (=> b!6933554 (=> res!2827909 e!4171786)))

(declare-fun e!4171787 () Bool)

(assert (=> b!6933554 (= res!2827909 e!4171787)))

(declare-fun res!2827906 () Bool)

(assert (=> b!6933554 (=> (not res!2827906) (not e!4171787))))

(declare-fun lt!2473757 () Bool)

(assert (=> b!6933554 (= res!2827906 lt!2473757)))

(declare-fun b!6933555 () Bool)

(declare-fun res!2827910 () Bool)

(assert (=> b!6933555 (=> res!2827910 e!4171786)))

(assert (=> b!6933555 (= res!2827910 (not ((_ is ElementMatch!16951) r3!135)))))

(declare-fun e!4171782 () Bool)

(assert (=> b!6933555 (= e!4171782 e!4171786)))

(declare-fun b!6933556 () Bool)

(declare-fun e!4171788 () Bool)

(assert (=> b!6933556 (= e!4171786 e!4171788)))

(declare-fun res!2827911 () Bool)

(assert (=> b!6933556 (=> (not res!2827911) (not e!4171788))))

(assert (=> b!6933556 (= res!2827911 (not lt!2473757))))

(declare-fun b!6933557 () Bool)

(declare-fun res!2827905 () Bool)

(declare-fun e!4171785 () Bool)

(assert (=> b!6933557 (=> res!2827905 e!4171785)))

(assert (=> b!6933557 (= res!2827905 (not (isEmpty!38841 (tail!12950 (_2!37111 lt!2473640)))))))

(declare-fun d!2166431 () Bool)

(declare-fun e!4171783 () Bool)

(assert (=> d!2166431 e!4171783))

(declare-fun c!1286762 () Bool)

(assert (=> d!2166431 (= c!1286762 ((_ is EmptyExpr!16951) r3!135))))

(declare-fun e!4171784 () Bool)

(assert (=> d!2166431 (= lt!2473757 e!4171784)))

(declare-fun c!1286761 () Bool)

(assert (=> d!2166431 (= c!1286761 (isEmpty!38841 (_2!37111 lt!2473640)))))

(assert (=> d!2166431 (validRegex!8657 r3!135)))

(assert (=> d!2166431 (= (matchR!9090 r3!135 (_2!37111 lt!2473640)) lt!2473757)))

(declare-fun b!6933558 () Bool)

(assert (=> b!6933558 (= e!4171784 (nullable!6770 r3!135))))

(declare-fun b!6933559 () Bool)

(declare-fun res!2827907 () Bool)

(assert (=> b!6933559 (=> (not res!2827907) (not e!4171787))))

(assert (=> b!6933559 (= res!2827907 (isEmpty!38841 (tail!12950 (_2!37111 lt!2473640))))))

(declare-fun b!6933560 () Bool)

(assert (=> b!6933560 (= e!4171783 e!4171782)))

(declare-fun c!1286763 () Bool)

(assert (=> b!6933560 (= c!1286763 ((_ is EmptyLang!16951) r3!135))))

(declare-fun bm!630026 () Bool)

(declare-fun call!630031 () Bool)

(assert (=> bm!630026 (= call!630031 (isEmpty!38841 (_2!37111 lt!2473640)))))

(declare-fun b!6933561 () Bool)

(assert (=> b!6933561 (= e!4171783 (= lt!2473757 call!630031))))

(declare-fun b!6933562 () Bool)

(assert (=> b!6933562 (= e!4171788 e!4171785)))

(declare-fun res!2827912 () Bool)

(assert (=> b!6933562 (=> res!2827912 e!4171785)))

(assert (=> b!6933562 (= res!2827912 call!630031)))

(declare-fun b!6933563 () Bool)

(assert (=> b!6933563 (= e!4171782 (not lt!2473757))))

(declare-fun b!6933564 () Bool)

(assert (=> b!6933564 (= e!4171785 (not (= (head!13898 (_2!37111 lt!2473640)) (c!1286601 r3!135))))))

(declare-fun b!6933565 () Bool)

(declare-fun res!2827908 () Bool)

(assert (=> b!6933565 (=> (not res!2827908) (not e!4171787))))

(assert (=> b!6933565 (= res!2827908 (not call!630031))))

(declare-fun b!6933566 () Bool)

(assert (=> b!6933566 (= e!4171787 (= (head!13898 (_2!37111 lt!2473640)) (c!1286601 r3!135)))))

(declare-fun b!6933567 () Bool)

(assert (=> b!6933567 (= e!4171784 (matchR!9090 (derivativeStep!5445 r3!135 (head!13898 (_2!37111 lt!2473640))) (tail!12950 (_2!37111 lt!2473640))))))

(assert (= (and d!2166431 c!1286761) b!6933558))

(assert (= (and d!2166431 (not c!1286761)) b!6933567))

(assert (= (and d!2166431 c!1286762) b!6933561))

(assert (= (and d!2166431 (not c!1286762)) b!6933560))

(assert (= (and b!6933560 c!1286763) b!6933563))

(assert (= (and b!6933560 (not c!1286763)) b!6933555))

(assert (= (and b!6933555 (not res!2827910)) b!6933554))

(assert (= (and b!6933554 res!2827906) b!6933565))

(assert (= (and b!6933565 res!2827908) b!6933559))

(assert (= (and b!6933559 res!2827907) b!6933566))

(assert (= (and b!6933554 (not res!2827909)) b!6933556))

(assert (= (and b!6933556 res!2827911) b!6933562))

(assert (= (and b!6933562 (not res!2827912)) b!6933557))

(assert (= (and b!6933557 (not res!2827905)) b!6933564))

(assert (= (or b!6933561 b!6933562 b!6933565) bm!630026))

(declare-fun m!7640084 () Bool)

(assert (=> b!6933567 m!7640084))

(assert (=> b!6933567 m!7640084))

(declare-fun m!7640086 () Bool)

(assert (=> b!6933567 m!7640086))

(declare-fun m!7640088 () Bool)

(assert (=> b!6933567 m!7640088))

(assert (=> b!6933567 m!7640086))

(assert (=> b!6933567 m!7640088))

(declare-fun m!7640090 () Bool)

(assert (=> b!6933567 m!7640090))

(assert (=> b!6933566 m!7640084))

(declare-fun m!7640092 () Bool)

(assert (=> b!6933558 m!7640092))

(assert (=> bm!630026 m!7639830))

(assert (=> d!2166431 m!7639830))

(assert (=> d!2166431 m!7639458))

(assert (=> b!6933557 m!7640088))

(assert (=> b!6933557 m!7640088))

(declare-fun m!7640094 () Bool)

(assert (=> b!6933557 m!7640094))

(assert (=> b!6933564 m!7640084))

(assert (=> b!6933559 m!7640088))

(assert (=> b!6933559 m!7640088))

(assert (=> b!6933559 m!7640094))

(assert (=> b!6932862 d!2166431))

(declare-fun b!6933568 () Bool)

(declare-fun res!2827917 () Bool)

(declare-fun e!4171793 () Bool)

(assert (=> b!6933568 (=> res!2827917 e!4171793)))

(declare-fun e!4171794 () Bool)

(assert (=> b!6933568 (= res!2827917 e!4171794)))

(declare-fun res!2827914 () Bool)

(assert (=> b!6933568 (=> (not res!2827914) (not e!4171794))))

(declare-fun lt!2473758 () Bool)

(assert (=> b!6933568 (= res!2827914 lt!2473758)))

(declare-fun b!6933569 () Bool)

(declare-fun res!2827918 () Bool)

(assert (=> b!6933569 (=> res!2827918 e!4171793)))

(assert (=> b!6933569 (= res!2827918 (not ((_ is ElementMatch!16951) lt!2473650)))))

(declare-fun e!4171789 () Bool)

(assert (=> b!6933569 (= e!4171789 e!4171793)))

(declare-fun b!6933570 () Bool)

(declare-fun e!4171795 () Bool)

(assert (=> b!6933570 (= e!4171793 e!4171795)))

(declare-fun res!2827919 () Bool)

(assert (=> b!6933570 (=> (not res!2827919) (not e!4171795))))

(assert (=> b!6933570 (= res!2827919 (not lt!2473758))))

(declare-fun b!6933571 () Bool)

(declare-fun res!2827913 () Bool)

(declare-fun e!4171792 () Bool)

(assert (=> b!6933571 (=> res!2827913 e!4171792)))

(assert (=> b!6933571 (= res!2827913 (not (isEmpty!38841 (tail!12950 (_2!37111 lt!2473648)))))))

(declare-fun d!2166433 () Bool)

(declare-fun e!4171790 () Bool)

(assert (=> d!2166433 e!4171790))

(declare-fun c!1286765 () Bool)

(assert (=> d!2166433 (= c!1286765 ((_ is EmptyExpr!16951) lt!2473650))))

(declare-fun e!4171791 () Bool)

(assert (=> d!2166433 (= lt!2473758 e!4171791)))

(declare-fun c!1286764 () Bool)

(assert (=> d!2166433 (= c!1286764 (isEmpty!38841 (_2!37111 lt!2473648)))))

(assert (=> d!2166433 (validRegex!8657 lt!2473650)))

(assert (=> d!2166433 (= (matchR!9090 lt!2473650 (_2!37111 lt!2473648)) lt!2473758)))

(declare-fun b!6933572 () Bool)

(assert (=> b!6933572 (= e!4171791 (nullable!6770 lt!2473650))))

(declare-fun b!6933573 () Bool)

(declare-fun res!2827915 () Bool)

(assert (=> b!6933573 (=> (not res!2827915) (not e!4171794))))

(assert (=> b!6933573 (= res!2827915 (isEmpty!38841 (tail!12950 (_2!37111 lt!2473648))))))

(declare-fun b!6933574 () Bool)

(assert (=> b!6933574 (= e!4171790 e!4171789)))

(declare-fun c!1286766 () Bool)

(assert (=> b!6933574 (= c!1286766 ((_ is EmptyLang!16951) lt!2473650))))

(declare-fun bm!630027 () Bool)

(declare-fun call!630032 () Bool)

(assert (=> bm!630027 (= call!630032 (isEmpty!38841 (_2!37111 lt!2473648)))))

(declare-fun b!6933575 () Bool)

(assert (=> b!6933575 (= e!4171790 (= lt!2473758 call!630032))))

(declare-fun b!6933576 () Bool)

(assert (=> b!6933576 (= e!4171795 e!4171792)))

(declare-fun res!2827920 () Bool)

(assert (=> b!6933576 (=> res!2827920 e!4171792)))

(assert (=> b!6933576 (= res!2827920 call!630032)))

(declare-fun b!6933577 () Bool)

(assert (=> b!6933577 (= e!4171789 (not lt!2473758))))

(declare-fun b!6933578 () Bool)

(assert (=> b!6933578 (= e!4171792 (not (= (head!13898 (_2!37111 lt!2473648)) (c!1286601 lt!2473650))))))

(declare-fun b!6933579 () Bool)

(declare-fun res!2827916 () Bool)

(assert (=> b!6933579 (=> (not res!2827916) (not e!4171794))))

(assert (=> b!6933579 (= res!2827916 (not call!630032))))

(declare-fun b!6933580 () Bool)

(assert (=> b!6933580 (= e!4171794 (= (head!13898 (_2!37111 lt!2473648)) (c!1286601 lt!2473650)))))

(declare-fun b!6933581 () Bool)

(assert (=> b!6933581 (= e!4171791 (matchR!9090 (derivativeStep!5445 lt!2473650 (head!13898 (_2!37111 lt!2473648))) (tail!12950 (_2!37111 lt!2473648))))))

(assert (= (and d!2166433 c!1286764) b!6933572))

(assert (= (and d!2166433 (not c!1286764)) b!6933581))

(assert (= (and d!2166433 c!1286765) b!6933575))

(assert (= (and d!2166433 (not c!1286765)) b!6933574))

(assert (= (and b!6933574 c!1286766) b!6933577))

(assert (= (and b!6933574 (not c!1286766)) b!6933569))

(assert (= (and b!6933569 (not res!2827918)) b!6933568))

(assert (= (and b!6933568 res!2827914) b!6933579))

(assert (= (and b!6933579 res!2827916) b!6933573))

(assert (= (and b!6933573 res!2827915) b!6933580))

(assert (= (and b!6933568 (not res!2827917)) b!6933570))

(assert (= (and b!6933570 res!2827919) b!6933576))

(assert (= (and b!6933576 (not res!2827920)) b!6933571))

(assert (= (and b!6933571 (not res!2827913)) b!6933578))

(assert (= (or b!6933575 b!6933576 b!6933579) bm!630027))

(declare-fun m!7640096 () Bool)

(assert (=> b!6933581 m!7640096))

(assert (=> b!6933581 m!7640096))

(declare-fun m!7640098 () Bool)

(assert (=> b!6933581 m!7640098))

(declare-fun m!7640100 () Bool)

(assert (=> b!6933581 m!7640100))

(assert (=> b!6933581 m!7640098))

(assert (=> b!6933581 m!7640100))

(declare-fun m!7640102 () Bool)

(assert (=> b!6933581 m!7640102))

(assert (=> b!6933580 m!7640096))

(declare-fun m!7640104 () Bool)

(assert (=> b!6933572 m!7640104))

(assert (=> bm!630027 m!7640060))

(assert (=> d!2166433 m!7640060))

(assert (=> d!2166433 m!7640006))

(assert (=> b!6933571 m!7640100))

(assert (=> b!6933571 m!7640100))

(declare-fun m!7640106 () Bool)

(assert (=> b!6933571 m!7640106))

(assert (=> b!6933578 m!7640096))

(assert (=> b!6933573 m!7640100))

(assert (=> b!6933573 m!7640100))

(assert (=> b!6933573 m!7640106))

(assert (=> b!6932852 d!2166433))

(declare-fun bs!1851232 () Bool)

(declare-fun d!2166435 () Bool)

(assert (= bs!1851232 (and d!2166435 b!6933353)))

(declare-fun lambda!394670 () Int)

(assert (=> bs!1851232 (not (= lambda!394670 lambda!394649))))

(declare-fun bs!1851234 () Bool)

(assert (= bs!1851234 (and d!2166435 b!6933357)))

(assert (=> bs!1851234 (not (= lambda!394670 lambda!394647))))

(declare-fun bs!1851236 () Bool)

(assert (= bs!1851236 (and d!2166435 b!6933442)))

(assert (=> bs!1851236 (not (= lambda!394670 lambda!394658))))

(declare-fun bs!1851239 () Bool)

(assert (= bs!1851239 (and d!2166435 d!2166301)))

(assert (=> bs!1851239 (= (and (= s!14361 lt!2473646) (= lt!2473650 r2!6280)) (= lambda!394670 lambda!394634))))

(declare-fun bs!1851241 () Bool)

(assert (= bs!1851241 (and d!2166435 d!2166413)))

(assert (=> bs!1851241 (not (= lambda!394670 lambda!394663))))

(declare-fun bs!1851243 () Bool)

(assert (= bs!1851243 (and d!2166435 b!6932872)))

(assert (=> bs!1851243 (not (= lambda!394670 lambda!394608))))

(declare-fun bs!1851245 () Bool)

(assert (= bs!1851245 (and d!2166435 b!6933525)))

(assert (=> bs!1851245 (not (= lambda!394670 lambda!394667))))

(declare-fun bs!1851247 () Bool)

(assert (= bs!1851247 (and d!2166435 b!6933413)))

(assert (=> bs!1851247 (not (= lambda!394670 lambda!394656))))

(assert (=> bs!1851239 (not (= lambda!394670 lambda!394637))))

(declare-fun bs!1851249 () Bool)

(assert (= bs!1851249 (and d!2166435 b!6932860)))

(assert (=> bs!1851249 (not (= lambda!394670 lambda!394610))))

(declare-fun bs!1851251 () Bool)

(assert (= bs!1851251 (and d!2166435 b!6933438)))

(assert (=> bs!1851251 (not (= lambda!394670 lambda!394659))))

(declare-fun bs!1851252 () Bool)

(assert (= bs!1851252 (and d!2166435 b!6933065)))

(assert (=> bs!1851252 (not (= lambda!394670 lambda!394619))))

(declare-fun bs!1851254 () Bool)

(assert (= bs!1851254 (and d!2166435 d!2166327)))

(assert (=> bs!1851254 (= (and (= s!14361 lt!2473646) (= lt!2473650 r2!6280)) (= lambda!394670 lambda!394644))))

(assert (=> bs!1851243 (= (and (= s!14361 (_2!37111 lt!2473648)) (= r1!6342 r2!6280) (= lt!2473650 r3!135)) (= lambda!394670 lambda!394607))))

(assert (=> bs!1851249 (= (and (= s!14361 lt!2473646) (= lt!2473650 r2!6280)) (= lambda!394670 lambda!394609))))

(assert (=> bs!1851241 (= (and (= s!14361 (_2!37111 lt!2473648)) (= r1!6342 r2!6280) (= lt!2473650 r3!135)) (= lambda!394670 lambda!394661))))

(declare-fun bs!1851255 () Bool)

(assert (= bs!1851255 (and d!2166435 b!6932863)))

(assert (=> bs!1851255 (= lambda!394670 lambda!394605)))

(declare-fun bs!1851256 () Bool)

(assert (= bs!1851256 (and d!2166435 b!6933375)))

(assert (=> bs!1851256 (not (= lambda!394670 lambda!394652))))

(declare-fun bs!1851257 () Bool)

(assert (= bs!1851257 (and d!2166435 b!6933379)))

(assert (=> bs!1851257 (not (= lambda!394670 lambda!394651))))

(declare-fun bs!1851258 () Bool)

(assert (= bs!1851258 (and d!2166435 b!6933529)))

(assert (=> bs!1851258 (not (= lambda!394670 lambda!394665))))

(declare-fun bs!1851260 () Bool)

(assert (= bs!1851260 (and d!2166435 d!2166395)))

(assert (=> bs!1851260 (= (and (= s!14361 (_2!37111 lt!2473648)) (= r1!6342 r2!6280) (= lt!2473650 r3!135)) (= lambda!394670 lambda!394660))))

(declare-fun bs!1851261 () Bool)

(assert (= bs!1851261 (and d!2166435 b!6933061)))

(assert (=> bs!1851261 (not (= lambda!394670 lambda!394620))))

(assert (=> bs!1851255 (not (= lambda!394670 lambda!394606))))

(declare-fun bs!1851262 () Bool)

(assert (= bs!1851262 (and d!2166435 b!6933417)))

(assert (=> bs!1851262 (not (= lambda!394670 lambda!394655))))

(assert (=> d!2166435 true))

(assert (=> d!2166435 true))

(assert (=> d!2166435 true))

(declare-fun bs!1851264 () Bool)

(assert (= bs!1851264 d!2166435))

(declare-fun lambda!394672 () Int)

(assert (=> bs!1851264 (not (= lambda!394672 lambda!394670))))

(assert (=> bs!1851232 (= (and (= s!14361 (_2!37111 lt!2473640)) (= r1!6342 (regOne!34414 r3!135)) (= lt!2473650 (regTwo!34414 r3!135))) (= lambda!394672 lambda!394649))))

(assert (=> bs!1851234 (not (= lambda!394672 lambda!394647))))

(assert (=> bs!1851236 (not (= lambda!394672 lambda!394658))))

(assert (=> bs!1851239 (not (= lambda!394672 lambda!394634))))

(assert (=> bs!1851241 (= (and (= s!14361 (_2!37111 lt!2473648)) (= r1!6342 r2!6280) (= lt!2473650 r3!135)) (= lambda!394672 lambda!394663))))

(assert (=> bs!1851243 (= (and (= s!14361 (_2!37111 lt!2473648)) (= r1!6342 r2!6280) (= lt!2473650 r3!135)) (= lambda!394672 lambda!394608))))

(assert (=> bs!1851245 (= (and (= s!14361 (_2!37111 lt!2473648)) (= r1!6342 (regOne!34414 lt!2473650)) (= lt!2473650 (regTwo!34414 lt!2473650))) (= lambda!394672 lambda!394667))))

(assert (=> bs!1851247 (= (and (= r1!6342 (regOne!34414 lt!2473641)) (= lt!2473650 (regTwo!34414 lt!2473641))) (= lambda!394672 lambda!394656))))

(assert (=> bs!1851239 (= (and (= s!14361 lt!2473646) (= lt!2473650 r2!6280)) (= lambda!394672 lambda!394637))))

(assert (=> bs!1851249 (= (and (= s!14361 lt!2473646) (= lt!2473650 r2!6280)) (= lambda!394672 lambda!394610))))

(assert (=> bs!1851251 (= (and (= r1!6342 (regOne!34414 lt!2473643)) (= lt!2473650 (regTwo!34414 lt!2473643))) (= lambda!394672 lambda!394659))))

(assert (=> bs!1851252 (not (= lambda!394672 lambda!394619))))

(assert (=> bs!1851254 (not (= lambda!394672 lambda!394644))))

(assert (=> bs!1851243 (not (= lambda!394672 lambda!394607))))

(assert (=> bs!1851249 (not (= lambda!394672 lambda!394609))))

(assert (=> bs!1851241 (not (= lambda!394672 lambda!394661))))

(assert (=> bs!1851255 (not (= lambda!394672 lambda!394605))))

(assert (=> bs!1851256 (= (and (= s!14361 (_1!37111 lt!2473640)) (= r1!6342 (regOne!34414 r2!6280)) (= lt!2473650 (regTwo!34414 r2!6280))) (= lambda!394672 lambda!394652))))

(assert (=> bs!1851257 (not (= lambda!394672 lambda!394651))))

(assert (=> bs!1851258 (not (= lambda!394672 lambda!394665))))

(assert (=> bs!1851260 (not (= lambda!394672 lambda!394660))))

(assert (=> bs!1851261 (= (and (= s!14361 lt!2473646) (= r1!6342 (regOne!34414 lt!2473647)) (= lt!2473650 (regTwo!34414 lt!2473647))) (= lambda!394672 lambda!394620))))

(assert (=> bs!1851255 (= lambda!394672 lambda!394606)))

(assert (=> bs!1851262 (not (= lambda!394672 lambda!394655))))

(assert (=> d!2166435 true))

(assert (=> d!2166435 true))

(assert (=> d!2166435 true))

(assert (=> d!2166435 (= (Exists!3951 lambda!394670) (Exists!3951 lambda!394672))))

(declare-fun lt!2473759 () Unit!160626)

(assert (=> d!2166435 (= lt!2473759 (choose!51635 r1!6342 lt!2473650 s!14361))))

(assert (=> d!2166435 (validRegex!8657 r1!6342)))

(assert (=> d!2166435 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2412 r1!6342 lt!2473650 s!14361) lt!2473759)))

(declare-fun m!7640116 () Bool)

(assert (=> bs!1851264 m!7640116))

(declare-fun m!7640118 () Bool)

(assert (=> bs!1851264 m!7640118))

(declare-fun m!7640120 () Bool)

(assert (=> bs!1851264 m!7640120))

(assert (=> bs!1851264 m!7639464))

(assert (=> b!6932863 d!2166435))

(declare-fun bs!1851286 () Bool)

(declare-fun b!6933599 () Bool)

(assert (= bs!1851286 (and b!6933599 d!2166435)))

(declare-fun lambda!394674 () Int)

(assert (=> bs!1851286 (not (= lambda!394674 lambda!394670))))

(declare-fun bs!1851288 () Bool)

(assert (= bs!1851288 (and b!6933599 b!6933353)))

(assert (=> bs!1851288 (not (= lambda!394674 lambda!394649))))

(declare-fun bs!1851290 () Bool)

(assert (= bs!1851290 (and b!6933599 b!6933357)))

(assert (=> bs!1851290 (= (and (= (_1!37111 lt!2473648) (_2!37111 lt!2473640)) (= (reg!17280 r1!6342) (reg!17280 r3!135)) (= r1!6342 r3!135)) (= lambda!394674 lambda!394647))))

(declare-fun bs!1851292 () Bool)

(assert (= bs!1851292 (and b!6933599 b!6933442)))

(assert (=> bs!1851292 (= (and (= (_1!37111 lt!2473648) s!14361) (= (reg!17280 r1!6342) (reg!17280 lt!2473643)) (= r1!6342 lt!2473643)) (= lambda!394674 lambda!394658))))

(declare-fun bs!1851294 () Bool)

(assert (= bs!1851294 (and b!6933599 d!2166301)))

(assert (=> bs!1851294 (not (= lambda!394674 lambda!394634))))

(declare-fun bs!1851296 () Bool)

(assert (= bs!1851296 (and b!6933599 d!2166413)))

(assert (=> bs!1851296 (not (= lambda!394674 lambda!394663))))

(declare-fun bs!1851298 () Bool)

(assert (= bs!1851298 (and b!6933599 b!6932872)))

(assert (=> bs!1851298 (not (= lambda!394674 lambda!394608))))

(assert (=> bs!1851286 (not (= lambda!394674 lambda!394672))))

(declare-fun bs!1851301 () Bool)

(assert (= bs!1851301 (and b!6933599 b!6933525)))

(assert (=> bs!1851301 (not (= lambda!394674 lambda!394667))))

(declare-fun bs!1851303 () Bool)

(assert (= bs!1851303 (and b!6933599 b!6933413)))

(assert (=> bs!1851303 (not (= lambda!394674 lambda!394656))))

(assert (=> bs!1851294 (not (= lambda!394674 lambda!394637))))

(declare-fun bs!1851305 () Bool)

(assert (= bs!1851305 (and b!6933599 b!6932860)))

(assert (=> bs!1851305 (not (= lambda!394674 lambda!394610))))

(declare-fun bs!1851306 () Bool)

(assert (= bs!1851306 (and b!6933599 b!6933438)))

(assert (=> bs!1851306 (not (= lambda!394674 lambda!394659))))

(declare-fun bs!1851307 () Bool)

(assert (= bs!1851307 (and b!6933599 b!6933065)))

(assert (=> bs!1851307 (= (and (= (_1!37111 lt!2473648) lt!2473646) (= (reg!17280 r1!6342) (reg!17280 lt!2473647)) (= r1!6342 lt!2473647)) (= lambda!394674 lambda!394619))))

(declare-fun bs!1851309 () Bool)

(assert (= bs!1851309 (and b!6933599 d!2166327)))

(assert (=> bs!1851309 (not (= lambda!394674 lambda!394644))))

(assert (=> bs!1851298 (not (= lambda!394674 lambda!394607))))

(assert (=> bs!1851305 (not (= lambda!394674 lambda!394609))))

(assert (=> bs!1851296 (not (= lambda!394674 lambda!394661))))

(declare-fun bs!1851314 () Bool)

(assert (= bs!1851314 (and b!6933599 b!6932863)))

(assert (=> bs!1851314 (not (= lambda!394674 lambda!394605))))

(declare-fun bs!1851316 () Bool)

(assert (= bs!1851316 (and b!6933599 b!6933375)))

(assert (=> bs!1851316 (not (= lambda!394674 lambda!394652))))

(declare-fun bs!1851318 () Bool)

(assert (= bs!1851318 (and b!6933599 b!6933379)))

(assert (=> bs!1851318 (= (and (= (_1!37111 lt!2473648) (_1!37111 lt!2473640)) (= (reg!17280 r1!6342) (reg!17280 r2!6280)) (= r1!6342 r2!6280)) (= lambda!394674 lambda!394651))))

(declare-fun bs!1851320 () Bool)

(assert (= bs!1851320 (and b!6933599 b!6933529)))

(assert (=> bs!1851320 (= (and (= (_1!37111 lt!2473648) (_2!37111 lt!2473648)) (= (reg!17280 r1!6342) (reg!17280 lt!2473650)) (= r1!6342 lt!2473650)) (= lambda!394674 lambda!394665))))

(declare-fun bs!1851322 () Bool)

(assert (= bs!1851322 (and b!6933599 d!2166395)))

(assert (=> bs!1851322 (not (= lambda!394674 lambda!394660))))

(declare-fun bs!1851323 () Bool)

(assert (= bs!1851323 (and b!6933599 b!6933061)))

(assert (=> bs!1851323 (not (= lambda!394674 lambda!394620))))

(assert (=> bs!1851314 (not (= lambda!394674 lambda!394606))))

(declare-fun bs!1851325 () Bool)

(assert (= bs!1851325 (and b!6933599 b!6933417)))

(assert (=> bs!1851325 (= (and (= (_1!37111 lt!2473648) s!14361) (= (reg!17280 r1!6342) (reg!17280 lt!2473641)) (= r1!6342 lt!2473641)) (= lambda!394674 lambda!394655))))

(assert (=> b!6933599 true))

(assert (=> b!6933599 true))

(declare-fun bs!1851327 () Bool)

(declare-fun b!6933595 () Bool)

(assert (= bs!1851327 (and b!6933595 d!2166435)))

(declare-fun lambda!394675 () Int)

(assert (=> bs!1851327 (not (= lambda!394675 lambda!394670))))

(declare-fun bs!1851328 () Bool)

(assert (= bs!1851328 (and b!6933595 b!6933353)))

(assert (=> bs!1851328 (= (and (= (_1!37111 lt!2473648) (_2!37111 lt!2473640)) (= (regOne!34414 r1!6342) (regOne!34414 r3!135)) (= (regTwo!34414 r1!6342) (regTwo!34414 r3!135))) (= lambda!394675 lambda!394649))))

(declare-fun bs!1851329 () Bool)

(assert (= bs!1851329 (and b!6933595 b!6933357)))

(assert (=> bs!1851329 (not (= lambda!394675 lambda!394647))))

(declare-fun bs!1851330 () Bool)

(assert (= bs!1851330 (and b!6933595 b!6933442)))

(assert (=> bs!1851330 (not (= lambda!394675 lambda!394658))))

(declare-fun bs!1851331 () Bool)

(assert (= bs!1851331 (and b!6933595 d!2166413)))

(assert (=> bs!1851331 (= (and (= (_1!37111 lt!2473648) (_2!37111 lt!2473648)) (= (regOne!34414 r1!6342) r2!6280) (= (regTwo!34414 r1!6342) r3!135)) (= lambda!394675 lambda!394663))))

(declare-fun bs!1851332 () Bool)

(assert (= bs!1851332 (and b!6933595 b!6932872)))

(assert (=> bs!1851332 (= (and (= (_1!37111 lt!2473648) (_2!37111 lt!2473648)) (= (regOne!34414 r1!6342) r2!6280) (= (regTwo!34414 r1!6342) r3!135)) (= lambda!394675 lambda!394608))))

(assert (=> bs!1851327 (= (and (= (_1!37111 lt!2473648) s!14361) (= (regOne!34414 r1!6342) r1!6342) (= (regTwo!34414 r1!6342) lt!2473650)) (= lambda!394675 lambda!394672))))

(declare-fun bs!1851333 () Bool)

(assert (= bs!1851333 (and b!6933595 b!6933525)))

(assert (=> bs!1851333 (= (and (= (_1!37111 lt!2473648) (_2!37111 lt!2473648)) (= (regOne!34414 r1!6342) (regOne!34414 lt!2473650)) (= (regTwo!34414 r1!6342) (regTwo!34414 lt!2473650))) (= lambda!394675 lambda!394667))))

(declare-fun bs!1851334 () Bool)

(assert (= bs!1851334 (and b!6933595 b!6933413)))

(assert (=> bs!1851334 (= (and (= (_1!37111 lt!2473648) s!14361) (= (regOne!34414 r1!6342) (regOne!34414 lt!2473641)) (= (regTwo!34414 r1!6342) (regTwo!34414 lt!2473641))) (= lambda!394675 lambda!394656))))

(declare-fun bs!1851335 () Bool)

(assert (= bs!1851335 (and b!6933595 d!2166301)))

(assert (=> bs!1851335 (= (and (= (_1!37111 lt!2473648) lt!2473646) (= (regOne!34414 r1!6342) r1!6342) (= (regTwo!34414 r1!6342) r2!6280)) (= lambda!394675 lambda!394637))))

(declare-fun bs!1851336 () Bool)

(assert (= bs!1851336 (and b!6933595 b!6932860)))

(assert (=> bs!1851336 (= (and (= (_1!37111 lt!2473648) lt!2473646) (= (regOne!34414 r1!6342) r1!6342) (= (regTwo!34414 r1!6342) r2!6280)) (= lambda!394675 lambda!394610))))

(declare-fun bs!1851337 () Bool)

(assert (= bs!1851337 (and b!6933595 b!6933438)))

(assert (=> bs!1851337 (= (and (= (_1!37111 lt!2473648) s!14361) (= (regOne!34414 r1!6342) (regOne!34414 lt!2473643)) (= (regTwo!34414 r1!6342) (regTwo!34414 lt!2473643))) (= lambda!394675 lambda!394659))))

(declare-fun bs!1851338 () Bool)

(assert (= bs!1851338 (and b!6933595 b!6933065)))

(assert (=> bs!1851338 (not (= lambda!394675 lambda!394619))))

(declare-fun bs!1851339 () Bool)

(assert (= bs!1851339 (and b!6933595 b!6933599)))

(assert (=> bs!1851339 (not (= lambda!394675 lambda!394674))))

(assert (=> bs!1851335 (not (= lambda!394675 lambda!394634))))

(declare-fun bs!1851340 () Bool)

(assert (= bs!1851340 (and b!6933595 d!2166327)))

(assert (=> bs!1851340 (not (= lambda!394675 lambda!394644))))

(assert (=> bs!1851332 (not (= lambda!394675 lambda!394607))))

(assert (=> bs!1851336 (not (= lambda!394675 lambda!394609))))

(assert (=> bs!1851331 (not (= lambda!394675 lambda!394661))))

(declare-fun bs!1851341 () Bool)

(assert (= bs!1851341 (and b!6933595 b!6932863)))

(assert (=> bs!1851341 (not (= lambda!394675 lambda!394605))))

(declare-fun bs!1851342 () Bool)

(assert (= bs!1851342 (and b!6933595 b!6933375)))

(assert (=> bs!1851342 (= (and (= (_1!37111 lt!2473648) (_1!37111 lt!2473640)) (= (regOne!34414 r1!6342) (regOne!34414 r2!6280)) (= (regTwo!34414 r1!6342) (regTwo!34414 r2!6280))) (= lambda!394675 lambda!394652))))

(declare-fun bs!1851343 () Bool)

(assert (= bs!1851343 (and b!6933595 b!6933379)))

(assert (=> bs!1851343 (not (= lambda!394675 lambda!394651))))

(declare-fun bs!1851344 () Bool)

(assert (= bs!1851344 (and b!6933595 b!6933529)))

(assert (=> bs!1851344 (not (= lambda!394675 lambda!394665))))

(declare-fun bs!1851345 () Bool)

(assert (= bs!1851345 (and b!6933595 d!2166395)))

(assert (=> bs!1851345 (not (= lambda!394675 lambda!394660))))

(declare-fun bs!1851346 () Bool)

(assert (= bs!1851346 (and b!6933595 b!6933061)))

(assert (=> bs!1851346 (= (and (= (_1!37111 lt!2473648) lt!2473646) (= (regOne!34414 r1!6342) (regOne!34414 lt!2473647)) (= (regTwo!34414 r1!6342) (regTwo!34414 lt!2473647))) (= lambda!394675 lambda!394620))))

(assert (=> bs!1851341 (= (and (= (_1!37111 lt!2473648) s!14361) (= (regOne!34414 r1!6342) r1!6342) (= (regTwo!34414 r1!6342) lt!2473650)) (= lambda!394675 lambda!394606))))

(declare-fun bs!1851347 () Bool)

(assert (= bs!1851347 (and b!6933595 b!6933417)))

(assert (=> bs!1851347 (not (= lambda!394675 lambda!394655))))

(assert (=> b!6933595 true))

(assert (=> b!6933595 true))

(declare-fun bm!630030 () Bool)

(declare-fun call!630035 () Bool)

(declare-fun c!1286772 () Bool)

(assert (=> bm!630030 (= call!630035 (Exists!3951 (ite c!1286772 lambda!394674 lambda!394675)))))

(declare-fun b!6933593 () Bool)

(declare-fun e!4171808 () Bool)

(assert (=> b!6933593 (= e!4171808 (= (_1!37111 lt!2473648) (Cons!66580 (c!1286601 r1!6342) Nil!66580)))))

(declare-fun b!6933594 () Bool)

(declare-fun e!4171806 () Bool)

(assert (=> b!6933594 (= e!4171806 (matchRSpec!4008 (regTwo!34415 r1!6342) (_1!37111 lt!2473648)))))

(declare-fun e!4171803 () Bool)

(assert (=> b!6933595 (= e!4171803 call!630035)))

(declare-fun b!6933596 () Bool)

(declare-fun e!4171805 () Bool)

(declare-fun call!630036 () Bool)

(assert (=> b!6933596 (= e!4171805 call!630036)))

(declare-fun b!6933597 () Bool)

(declare-fun c!1286771 () Bool)

(assert (=> b!6933597 (= c!1286771 ((_ is ElementMatch!16951) r1!6342))))

(declare-fun e!4171804 () Bool)

(assert (=> b!6933597 (= e!4171804 e!4171808)))

(declare-fun b!6933598 () Bool)

(declare-fun e!4171809 () Bool)

(assert (=> b!6933598 (= e!4171809 e!4171806)))

(declare-fun res!2827924 () Bool)

(assert (=> b!6933598 (= res!2827924 (matchRSpec!4008 (regOne!34415 r1!6342) (_1!37111 lt!2473648)))))

(assert (=> b!6933598 (=> res!2827924 e!4171806)))

(declare-fun e!4171807 () Bool)

(assert (=> b!6933599 (= e!4171807 call!630035)))

(declare-fun b!6933600 () Bool)

(declare-fun res!2827926 () Bool)

(assert (=> b!6933600 (=> res!2827926 e!4171807)))

(assert (=> b!6933600 (= res!2827926 call!630036)))

(assert (=> b!6933600 (= e!4171803 e!4171807)))

(declare-fun b!6933601 () Bool)

(declare-fun c!1286773 () Bool)

(assert (=> b!6933601 (= c!1286773 ((_ is Union!16951) r1!6342))))

(assert (=> b!6933601 (= e!4171808 e!4171809)))

(declare-fun b!6933602 () Bool)

(assert (=> b!6933602 (= e!4171809 e!4171803)))

(assert (=> b!6933602 (= c!1286772 ((_ is Star!16951) r1!6342))))

(declare-fun b!6933603 () Bool)

(assert (=> b!6933603 (= e!4171805 e!4171804)))

(declare-fun res!2827925 () Bool)

(assert (=> b!6933603 (= res!2827925 (not ((_ is EmptyLang!16951) r1!6342)))))

(assert (=> b!6933603 (=> (not res!2827925) (not e!4171804))))

(declare-fun d!2166441 () Bool)

(declare-fun c!1286774 () Bool)

(assert (=> d!2166441 (= c!1286774 ((_ is EmptyExpr!16951) r1!6342))))

(assert (=> d!2166441 (= (matchRSpec!4008 r1!6342 (_1!37111 lt!2473648)) e!4171805)))

(declare-fun bm!630031 () Bool)

(assert (=> bm!630031 (= call!630036 (isEmpty!38841 (_1!37111 lt!2473648)))))

(assert (= (and d!2166441 c!1286774) b!6933596))

(assert (= (and d!2166441 (not c!1286774)) b!6933603))

(assert (= (and b!6933603 res!2827925) b!6933597))

(assert (= (and b!6933597 c!1286771) b!6933593))

(assert (= (and b!6933597 (not c!1286771)) b!6933601))

(assert (= (and b!6933601 c!1286773) b!6933598))

(assert (= (and b!6933601 (not c!1286773)) b!6933602))

(assert (= (and b!6933598 (not res!2827924)) b!6933594))

(assert (= (and b!6933602 c!1286772) b!6933600))

(assert (= (and b!6933602 (not c!1286772)) b!6933595))

(assert (= (and b!6933600 (not res!2827926)) b!6933599))

(assert (= (or b!6933599 b!6933595) bm!630030))

(assert (= (or b!6933596 b!6933600) bm!630031))

(declare-fun m!7640144 () Bool)

(assert (=> bm!630030 m!7640144))

(declare-fun m!7640146 () Bool)

(assert (=> b!6933594 m!7640146))

(declare-fun m!7640148 () Bool)

(assert (=> b!6933598 m!7640148))

(declare-fun m!7640150 () Bool)

(assert (=> bm!630031 m!7640150))

(assert (=> b!6932863 d!2166441))

(declare-fun d!2166447 () Bool)

(assert (=> d!2166447 (= (Exists!3951 lambda!394605) (choose!51634 lambda!394605))))

(declare-fun bs!1851348 () Bool)

(assert (= bs!1851348 d!2166447))

(declare-fun m!7640152 () Bool)

(assert (=> bs!1851348 m!7640152))

(assert (=> b!6932863 d!2166447))

(declare-fun bs!1851349 () Bool)

(declare-fun d!2166449 () Bool)

(assert (= bs!1851349 (and d!2166449 b!6933353)))

(declare-fun lambda!394676 () Int)

(assert (=> bs!1851349 (not (= lambda!394676 lambda!394649))))

(declare-fun bs!1851350 () Bool)

(assert (= bs!1851350 (and d!2166449 b!6933357)))

(assert (=> bs!1851350 (not (= lambda!394676 lambda!394647))))

(declare-fun bs!1851351 () Bool)

(assert (= bs!1851351 (and d!2166449 b!6933442)))

(assert (=> bs!1851351 (not (= lambda!394676 lambda!394658))))

(declare-fun bs!1851352 () Bool)

(assert (= bs!1851352 (and d!2166449 d!2166413)))

(assert (=> bs!1851352 (not (= lambda!394676 lambda!394663))))

(declare-fun bs!1851353 () Bool)

(assert (= bs!1851353 (and d!2166449 b!6932872)))

(assert (=> bs!1851353 (not (= lambda!394676 lambda!394608))))

(declare-fun bs!1851354 () Bool)

(assert (= bs!1851354 (and d!2166449 d!2166435)))

(assert (=> bs!1851354 (not (= lambda!394676 lambda!394672))))

(declare-fun bs!1851355 () Bool)

(assert (= bs!1851355 (and d!2166449 b!6933525)))

(assert (=> bs!1851355 (not (= lambda!394676 lambda!394667))))

(declare-fun bs!1851356 () Bool)

(assert (= bs!1851356 (and d!2166449 b!6933413)))

(assert (=> bs!1851356 (not (= lambda!394676 lambda!394656))))

(declare-fun bs!1851357 () Bool)

(assert (= bs!1851357 (and d!2166449 d!2166301)))

(assert (=> bs!1851357 (not (= lambda!394676 lambda!394637))))

(declare-fun bs!1851358 () Bool)

(assert (= bs!1851358 (and d!2166449 b!6932860)))

(assert (=> bs!1851358 (not (= lambda!394676 lambda!394610))))

(declare-fun bs!1851359 () Bool)

(assert (= bs!1851359 (and d!2166449 b!6933595)))

(assert (=> bs!1851359 (not (= lambda!394676 lambda!394675))))

(assert (=> bs!1851354 (= lambda!394676 lambda!394670)))

(declare-fun bs!1851360 () Bool)

(assert (= bs!1851360 (and d!2166449 b!6933438)))

(assert (=> bs!1851360 (not (= lambda!394676 lambda!394659))))

(declare-fun bs!1851361 () Bool)

(assert (= bs!1851361 (and d!2166449 b!6933065)))

(assert (=> bs!1851361 (not (= lambda!394676 lambda!394619))))

(declare-fun bs!1851362 () Bool)

(assert (= bs!1851362 (and d!2166449 b!6933599)))

(assert (=> bs!1851362 (not (= lambda!394676 lambda!394674))))

(assert (=> bs!1851357 (= (and (= s!14361 lt!2473646) (= lt!2473650 r2!6280)) (= lambda!394676 lambda!394634))))

(declare-fun bs!1851363 () Bool)

(assert (= bs!1851363 (and d!2166449 d!2166327)))

(assert (=> bs!1851363 (= (and (= s!14361 lt!2473646) (= lt!2473650 r2!6280)) (= lambda!394676 lambda!394644))))

(assert (=> bs!1851353 (= (and (= s!14361 (_2!37111 lt!2473648)) (= r1!6342 r2!6280) (= lt!2473650 r3!135)) (= lambda!394676 lambda!394607))))

(assert (=> bs!1851358 (= (and (= s!14361 lt!2473646) (= lt!2473650 r2!6280)) (= lambda!394676 lambda!394609))))

(assert (=> bs!1851352 (= (and (= s!14361 (_2!37111 lt!2473648)) (= r1!6342 r2!6280) (= lt!2473650 r3!135)) (= lambda!394676 lambda!394661))))

(declare-fun bs!1851364 () Bool)

(assert (= bs!1851364 (and d!2166449 b!6932863)))

(assert (=> bs!1851364 (= lambda!394676 lambda!394605)))

(declare-fun bs!1851365 () Bool)

(assert (= bs!1851365 (and d!2166449 b!6933375)))

(assert (=> bs!1851365 (not (= lambda!394676 lambda!394652))))

(declare-fun bs!1851366 () Bool)

(assert (= bs!1851366 (and d!2166449 b!6933379)))

(assert (=> bs!1851366 (not (= lambda!394676 lambda!394651))))

(declare-fun bs!1851367 () Bool)

(assert (= bs!1851367 (and d!2166449 b!6933529)))

(assert (=> bs!1851367 (not (= lambda!394676 lambda!394665))))

(declare-fun bs!1851368 () Bool)

(assert (= bs!1851368 (and d!2166449 d!2166395)))

(assert (=> bs!1851368 (= (and (= s!14361 (_2!37111 lt!2473648)) (= r1!6342 r2!6280) (= lt!2473650 r3!135)) (= lambda!394676 lambda!394660))))

(declare-fun bs!1851369 () Bool)

(assert (= bs!1851369 (and d!2166449 b!6933061)))

(assert (=> bs!1851369 (not (= lambda!394676 lambda!394620))))

(assert (=> bs!1851364 (not (= lambda!394676 lambda!394606))))

(declare-fun bs!1851370 () Bool)

(assert (= bs!1851370 (and d!2166449 b!6933417)))

(assert (=> bs!1851370 (not (= lambda!394676 lambda!394655))))

(assert (=> d!2166449 true))

(assert (=> d!2166449 true))

(assert (=> d!2166449 true))

(assert (=> d!2166449 (= (isDefined!13421 (findConcatSeparation!3134 r1!6342 lt!2473650 Nil!66580 s!14361 s!14361)) (Exists!3951 lambda!394676))))

(declare-fun lt!2473763 () Unit!160626)

(assert (=> d!2166449 (= lt!2473763 (choose!51639 r1!6342 lt!2473650 s!14361))))

(assert (=> d!2166449 (validRegex!8657 r1!6342)))

(assert (=> d!2166449 (= (lemmaFindConcatSeparationEquivalentToExists!2892 r1!6342 lt!2473650 s!14361) lt!2473763)))

(declare-fun bs!1851371 () Bool)

(assert (= bs!1851371 d!2166449))

(assert (=> bs!1851371 m!7639398))

(assert (=> bs!1851371 m!7639464))

(assert (=> bs!1851371 m!7639398))

(declare-fun m!7640154 () Bool)

(assert (=> bs!1851371 m!7640154))

(declare-fun m!7640156 () Bool)

(assert (=> bs!1851371 m!7640156))

(declare-fun m!7640158 () Bool)

(assert (=> bs!1851371 m!7640158))

(assert (=> b!6932863 d!2166449))

(declare-fun b!6933687 () Bool)

(declare-fun res!2827935 () Bool)

(declare-fun e!4171838 () Bool)

(assert (=> b!6933687 (=> res!2827935 e!4171838)))

(declare-fun e!4171839 () Bool)

(assert (=> b!6933687 (= res!2827935 e!4171839)))

(declare-fun res!2827932 () Bool)

(assert (=> b!6933687 (=> (not res!2827932) (not e!4171839))))

(declare-fun lt!2473764 () Bool)

(assert (=> b!6933687 (= res!2827932 lt!2473764)))

(declare-fun b!6933688 () Bool)

(declare-fun res!2827936 () Bool)

(assert (=> b!6933688 (=> res!2827936 e!4171838)))

(assert (=> b!6933688 (= res!2827936 (not ((_ is ElementMatch!16951) r1!6342)))))

(declare-fun e!4171834 () Bool)

(assert (=> b!6933688 (= e!4171834 e!4171838)))

(declare-fun b!6933689 () Bool)

(declare-fun e!4171840 () Bool)

(assert (=> b!6933689 (= e!4171838 e!4171840)))

(declare-fun res!2827937 () Bool)

(assert (=> b!6933689 (=> (not res!2827937) (not e!4171840))))

(assert (=> b!6933689 (= res!2827937 (not lt!2473764))))

(declare-fun b!6933690 () Bool)

(declare-fun res!2827931 () Bool)

(declare-fun e!4171837 () Bool)

(assert (=> b!6933690 (=> res!2827931 e!4171837)))

(assert (=> b!6933690 (= res!2827931 (not (isEmpty!38841 (tail!12950 (_1!37111 lt!2473648)))))))

(declare-fun d!2166451 () Bool)

(declare-fun e!4171835 () Bool)

(assert (=> d!2166451 e!4171835))

(declare-fun c!1286778 () Bool)

(assert (=> d!2166451 (= c!1286778 ((_ is EmptyExpr!16951) r1!6342))))

(declare-fun e!4171836 () Bool)

(assert (=> d!2166451 (= lt!2473764 e!4171836)))

(declare-fun c!1286777 () Bool)

(assert (=> d!2166451 (= c!1286777 (isEmpty!38841 (_1!37111 lt!2473648)))))

(assert (=> d!2166451 (validRegex!8657 r1!6342)))

(assert (=> d!2166451 (= (matchR!9090 r1!6342 (_1!37111 lt!2473648)) lt!2473764)))

(declare-fun b!6933691 () Bool)

(assert (=> b!6933691 (= e!4171836 (nullable!6770 r1!6342))))

(declare-fun b!6933692 () Bool)

(declare-fun res!2827933 () Bool)

(assert (=> b!6933692 (=> (not res!2827933) (not e!4171839))))

(assert (=> b!6933692 (= res!2827933 (isEmpty!38841 (tail!12950 (_1!37111 lt!2473648))))))

(declare-fun b!6933693 () Bool)

(assert (=> b!6933693 (= e!4171835 e!4171834)))

(declare-fun c!1286779 () Bool)

(assert (=> b!6933693 (= c!1286779 ((_ is EmptyLang!16951) r1!6342))))

(declare-fun bm!630032 () Bool)

(declare-fun call!630037 () Bool)

(assert (=> bm!630032 (= call!630037 (isEmpty!38841 (_1!37111 lt!2473648)))))

(declare-fun b!6933694 () Bool)

(assert (=> b!6933694 (= e!4171835 (= lt!2473764 call!630037))))

(declare-fun b!6933695 () Bool)

(assert (=> b!6933695 (= e!4171840 e!4171837)))

(declare-fun res!2827938 () Bool)

(assert (=> b!6933695 (=> res!2827938 e!4171837)))

(assert (=> b!6933695 (= res!2827938 call!630037)))

(declare-fun b!6933696 () Bool)

(assert (=> b!6933696 (= e!4171834 (not lt!2473764))))

(declare-fun b!6933697 () Bool)

(assert (=> b!6933697 (= e!4171837 (not (= (head!13898 (_1!37111 lt!2473648)) (c!1286601 r1!6342))))))

(declare-fun b!6933698 () Bool)

(declare-fun res!2827934 () Bool)

(assert (=> b!6933698 (=> (not res!2827934) (not e!4171839))))

(assert (=> b!6933698 (= res!2827934 (not call!630037))))

(declare-fun b!6933699 () Bool)

(assert (=> b!6933699 (= e!4171839 (= (head!13898 (_1!37111 lt!2473648)) (c!1286601 r1!6342)))))

(declare-fun b!6933700 () Bool)

(assert (=> b!6933700 (= e!4171836 (matchR!9090 (derivativeStep!5445 r1!6342 (head!13898 (_1!37111 lt!2473648))) (tail!12950 (_1!37111 lt!2473648))))))

(assert (= (and d!2166451 c!1286777) b!6933691))

(assert (= (and d!2166451 (not c!1286777)) b!6933700))

(assert (= (and d!2166451 c!1286778) b!6933694))

(assert (= (and d!2166451 (not c!1286778)) b!6933693))

(assert (= (and b!6933693 c!1286779) b!6933696))

(assert (= (and b!6933693 (not c!1286779)) b!6933688))

(assert (= (and b!6933688 (not res!2827936)) b!6933687))

(assert (= (and b!6933687 res!2827932) b!6933698))

(assert (= (and b!6933698 res!2827934) b!6933692))

(assert (= (and b!6933692 res!2827933) b!6933699))

(assert (= (and b!6933687 (not res!2827935)) b!6933689))

(assert (= (and b!6933689 res!2827937) b!6933695))

(assert (= (and b!6933695 (not res!2827938)) b!6933690))

(assert (= (and b!6933690 (not res!2827931)) b!6933697))

(assert (= (or b!6933694 b!6933695 b!6933698) bm!630032))

(assert (=> b!6933700 m!7639716))

(assert (=> b!6933700 m!7639716))

(declare-fun m!7640160 () Bool)

(assert (=> b!6933700 m!7640160))

(assert (=> b!6933700 m!7639710))

(assert (=> b!6933700 m!7640160))

(assert (=> b!6933700 m!7639710))

(declare-fun m!7640162 () Bool)

(assert (=> b!6933700 m!7640162))

(assert (=> b!6933699 m!7639716))

(declare-fun m!7640164 () Bool)

(assert (=> b!6933691 m!7640164))

(assert (=> bm!630032 m!7640150))

(assert (=> d!2166451 m!7640150))

(assert (=> d!2166451 m!7639464))

(assert (=> b!6933690 m!7639710))

(assert (=> b!6933690 m!7639710))

(declare-fun m!7640166 () Bool)

(assert (=> b!6933690 m!7640166))

(assert (=> b!6933697 m!7639716))

(assert (=> b!6933692 m!7639710))

(assert (=> b!6933692 m!7639710))

(assert (=> b!6933692 m!7640166))

(assert (=> b!6932863 d!2166451))

(declare-fun d!2166453 () Bool)

(assert (=> d!2166453 (= (get!23363 lt!2473655) (v!52991 lt!2473655))))

(assert (=> b!6932863 d!2166453))

(declare-fun d!2166455 () Bool)

(assert (=> d!2166455 (= (Exists!3951 lambda!394606) (choose!51634 lambda!394606))))

(declare-fun bs!1851372 () Bool)

(assert (= bs!1851372 d!2166455))

(declare-fun m!7640168 () Bool)

(assert (=> bs!1851372 m!7640168))

(assert (=> b!6932863 d!2166455))

(declare-fun d!2166457 () Bool)

(assert (=> d!2166457 (= (matchR!9090 r1!6342 (_1!37111 lt!2473648)) (matchRSpec!4008 r1!6342 (_1!37111 lt!2473648)))))

(declare-fun lt!2473765 () Unit!160626)

(assert (=> d!2166457 (= lt!2473765 (choose!51633 r1!6342 (_1!37111 lt!2473648)))))

(assert (=> d!2166457 (validRegex!8657 r1!6342)))

(assert (=> d!2166457 (= (mainMatchTheorem!4008 r1!6342 (_1!37111 lt!2473648)) lt!2473765)))

(declare-fun bs!1851373 () Bool)

(assert (= bs!1851373 d!2166457))

(assert (=> bs!1851373 m!7639466))

(assert (=> bs!1851373 m!7639480))

(declare-fun m!7640170 () Bool)

(assert (=> bs!1851373 m!7640170))

(assert (=> bs!1851373 m!7639464))

(assert (=> b!6932863 d!2166457))

(declare-fun e!4171843 () Bool)

(assert (=> b!6932853 (= tp!1911272 e!4171843)))

(declare-fun b!6933713 () Bool)

(declare-fun tp!1911382 () Bool)

(assert (=> b!6933713 (= e!4171843 tp!1911382)))

(declare-fun b!6933714 () Bool)

(declare-fun tp!1911386 () Bool)

(declare-fun tp!1911385 () Bool)

(assert (=> b!6933714 (= e!4171843 (and tp!1911386 tp!1911385))))

(declare-fun b!6933712 () Bool)

(declare-fun tp!1911383 () Bool)

(declare-fun tp!1911384 () Bool)

(assert (=> b!6933712 (= e!4171843 (and tp!1911383 tp!1911384))))

(declare-fun b!6933711 () Bool)

(assert (=> b!6933711 (= e!4171843 tp_is_empty!43127)))

(assert (= (and b!6932853 ((_ is ElementMatch!16951) (regOne!34415 r2!6280))) b!6933711))

(assert (= (and b!6932853 ((_ is Concat!25796) (regOne!34415 r2!6280))) b!6933712))

(assert (= (and b!6932853 ((_ is Star!16951) (regOne!34415 r2!6280))) b!6933713))

(assert (= (and b!6932853 ((_ is Union!16951) (regOne!34415 r2!6280))) b!6933714))

(declare-fun e!4171844 () Bool)

(assert (=> b!6932853 (= tp!1911276 e!4171844)))

(declare-fun b!6933717 () Bool)

(declare-fun tp!1911387 () Bool)

(assert (=> b!6933717 (= e!4171844 tp!1911387)))

(declare-fun b!6933718 () Bool)

(declare-fun tp!1911391 () Bool)

(declare-fun tp!1911390 () Bool)

(assert (=> b!6933718 (= e!4171844 (and tp!1911391 tp!1911390))))

(declare-fun b!6933716 () Bool)

(declare-fun tp!1911388 () Bool)

(declare-fun tp!1911389 () Bool)

(assert (=> b!6933716 (= e!4171844 (and tp!1911388 tp!1911389))))

(declare-fun b!6933715 () Bool)

(assert (=> b!6933715 (= e!4171844 tp_is_empty!43127)))

(assert (= (and b!6932853 ((_ is ElementMatch!16951) (regTwo!34415 r2!6280))) b!6933715))

(assert (= (and b!6932853 ((_ is Concat!25796) (regTwo!34415 r2!6280))) b!6933716))

(assert (= (and b!6932853 ((_ is Star!16951) (regTwo!34415 r2!6280))) b!6933717))

(assert (= (and b!6932853 ((_ is Union!16951) (regTwo!34415 r2!6280))) b!6933718))

(declare-fun e!4171845 () Bool)

(assert (=> b!6932870 (= tp!1911275 e!4171845)))

(declare-fun b!6933721 () Bool)

(declare-fun tp!1911392 () Bool)

(assert (=> b!6933721 (= e!4171845 tp!1911392)))

(declare-fun b!6933722 () Bool)

(declare-fun tp!1911396 () Bool)

(declare-fun tp!1911395 () Bool)

(assert (=> b!6933722 (= e!4171845 (and tp!1911396 tp!1911395))))

(declare-fun b!6933720 () Bool)

(declare-fun tp!1911393 () Bool)

(declare-fun tp!1911394 () Bool)

(assert (=> b!6933720 (= e!4171845 (and tp!1911393 tp!1911394))))

(declare-fun b!6933719 () Bool)

(assert (=> b!6933719 (= e!4171845 tp_is_empty!43127)))

(assert (= (and b!6932870 ((_ is ElementMatch!16951) (regOne!34414 r2!6280))) b!6933719))

(assert (= (and b!6932870 ((_ is Concat!25796) (regOne!34414 r2!6280))) b!6933720))

(assert (= (and b!6932870 ((_ is Star!16951) (regOne!34414 r2!6280))) b!6933721))

(assert (= (and b!6932870 ((_ is Union!16951) (regOne!34414 r2!6280))) b!6933722))

(declare-fun e!4171846 () Bool)

(assert (=> b!6932870 (= tp!1911282 e!4171846)))

(declare-fun b!6933725 () Bool)

(declare-fun tp!1911397 () Bool)

(assert (=> b!6933725 (= e!4171846 tp!1911397)))

(declare-fun b!6933726 () Bool)

(declare-fun tp!1911401 () Bool)

(declare-fun tp!1911400 () Bool)

(assert (=> b!6933726 (= e!4171846 (and tp!1911401 tp!1911400))))

(declare-fun b!6933724 () Bool)

(declare-fun tp!1911398 () Bool)

(declare-fun tp!1911399 () Bool)

(assert (=> b!6933724 (= e!4171846 (and tp!1911398 tp!1911399))))

(declare-fun b!6933723 () Bool)

(assert (=> b!6933723 (= e!4171846 tp_is_empty!43127)))

(assert (= (and b!6932870 ((_ is ElementMatch!16951) (regTwo!34414 r2!6280))) b!6933723))

(assert (= (and b!6932870 ((_ is Concat!25796) (regTwo!34414 r2!6280))) b!6933724))

(assert (= (and b!6932870 ((_ is Star!16951) (regTwo!34414 r2!6280))) b!6933725))

(assert (= (and b!6932870 ((_ is Union!16951) (regTwo!34414 r2!6280))) b!6933726))

(declare-fun e!4171847 () Bool)

(assert (=> b!6932854 (= tp!1911278 e!4171847)))

(declare-fun b!6933729 () Bool)

(declare-fun tp!1911402 () Bool)

(assert (=> b!6933729 (= e!4171847 tp!1911402)))

(declare-fun b!6933730 () Bool)

(declare-fun tp!1911406 () Bool)

(declare-fun tp!1911405 () Bool)

(assert (=> b!6933730 (= e!4171847 (and tp!1911406 tp!1911405))))

(declare-fun b!6933728 () Bool)

(declare-fun tp!1911403 () Bool)

(declare-fun tp!1911404 () Bool)

(assert (=> b!6933728 (= e!4171847 (and tp!1911403 tp!1911404))))

(declare-fun b!6933727 () Bool)

(assert (=> b!6933727 (= e!4171847 tp_is_empty!43127)))

(assert (= (and b!6932854 ((_ is ElementMatch!16951) (regOne!34414 r3!135))) b!6933727))

(assert (= (and b!6932854 ((_ is Concat!25796) (regOne!34414 r3!135))) b!6933728))

(assert (= (and b!6932854 ((_ is Star!16951) (regOne!34414 r3!135))) b!6933729))

(assert (= (and b!6932854 ((_ is Union!16951) (regOne!34414 r3!135))) b!6933730))

(declare-fun e!4171848 () Bool)

(assert (=> b!6932854 (= tp!1911280 e!4171848)))

(declare-fun b!6933733 () Bool)

(declare-fun tp!1911407 () Bool)

(assert (=> b!6933733 (= e!4171848 tp!1911407)))

(declare-fun b!6933734 () Bool)

(declare-fun tp!1911411 () Bool)

(declare-fun tp!1911410 () Bool)

(assert (=> b!6933734 (= e!4171848 (and tp!1911411 tp!1911410))))

(declare-fun b!6933732 () Bool)

(declare-fun tp!1911408 () Bool)

(declare-fun tp!1911409 () Bool)

(assert (=> b!6933732 (= e!4171848 (and tp!1911408 tp!1911409))))

(declare-fun b!6933731 () Bool)

(assert (=> b!6933731 (= e!4171848 tp_is_empty!43127)))

(assert (= (and b!6932854 ((_ is ElementMatch!16951) (regTwo!34414 r3!135))) b!6933731))

(assert (= (and b!6932854 ((_ is Concat!25796) (regTwo!34414 r3!135))) b!6933732))

(assert (= (and b!6932854 ((_ is Star!16951) (regTwo!34414 r3!135))) b!6933733))

(assert (= (and b!6932854 ((_ is Union!16951) (regTwo!34414 r3!135))) b!6933734))

(declare-fun b!6933739 () Bool)

(declare-fun e!4171851 () Bool)

(declare-fun tp!1911414 () Bool)

(assert (=> b!6933739 (= e!4171851 (and tp_is_empty!43127 tp!1911414))))

(assert (=> b!6932865 (= tp!1911269 e!4171851)))

(assert (= (and b!6932865 ((_ is Cons!66580) (t!380447 s!14361))) b!6933739))

(declare-fun e!4171852 () Bool)

(assert (=> b!6932855 (= tp!1911270 e!4171852)))

(declare-fun b!6933742 () Bool)

(declare-fun tp!1911415 () Bool)

(assert (=> b!6933742 (= e!4171852 tp!1911415)))

(declare-fun b!6933743 () Bool)

(declare-fun tp!1911419 () Bool)

(declare-fun tp!1911418 () Bool)

(assert (=> b!6933743 (= e!4171852 (and tp!1911419 tp!1911418))))

(declare-fun b!6933741 () Bool)

(declare-fun tp!1911416 () Bool)

(declare-fun tp!1911417 () Bool)

(assert (=> b!6933741 (= e!4171852 (and tp!1911416 tp!1911417))))

(declare-fun b!6933740 () Bool)

(assert (=> b!6933740 (= e!4171852 tp_is_empty!43127)))

(assert (= (and b!6932855 ((_ is ElementMatch!16951) (regOne!34415 r1!6342))) b!6933740))

(assert (= (and b!6932855 ((_ is Concat!25796) (regOne!34415 r1!6342))) b!6933741))

(assert (= (and b!6932855 ((_ is Star!16951) (regOne!34415 r1!6342))) b!6933742))

(assert (= (and b!6932855 ((_ is Union!16951) (regOne!34415 r1!6342))) b!6933743))

(declare-fun e!4171853 () Bool)

(assert (=> b!6932855 (= tp!1911281 e!4171853)))

(declare-fun b!6933746 () Bool)

(declare-fun tp!1911420 () Bool)

(assert (=> b!6933746 (= e!4171853 tp!1911420)))

(declare-fun b!6933747 () Bool)

(declare-fun tp!1911424 () Bool)

(declare-fun tp!1911423 () Bool)

(assert (=> b!6933747 (= e!4171853 (and tp!1911424 tp!1911423))))

(declare-fun b!6933745 () Bool)

(declare-fun tp!1911421 () Bool)

(declare-fun tp!1911422 () Bool)

(assert (=> b!6933745 (= e!4171853 (and tp!1911421 tp!1911422))))

(declare-fun b!6933744 () Bool)

(assert (=> b!6933744 (= e!4171853 tp_is_empty!43127)))

(assert (= (and b!6932855 ((_ is ElementMatch!16951) (regTwo!34415 r1!6342))) b!6933744))

(assert (= (and b!6932855 ((_ is Concat!25796) (regTwo!34415 r1!6342))) b!6933745))

(assert (= (and b!6932855 ((_ is Star!16951) (regTwo!34415 r1!6342))) b!6933746))

(assert (= (and b!6932855 ((_ is Union!16951) (regTwo!34415 r1!6342))) b!6933747))

(declare-fun e!4171854 () Bool)

(assert (=> b!6932866 (= tp!1911268 e!4171854)))

(declare-fun b!6933750 () Bool)

(declare-fun tp!1911425 () Bool)

(assert (=> b!6933750 (= e!4171854 tp!1911425)))

(declare-fun b!6933751 () Bool)

(declare-fun tp!1911429 () Bool)

(declare-fun tp!1911428 () Bool)

(assert (=> b!6933751 (= e!4171854 (and tp!1911429 tp!1911428))))

(declare-fun b!6933749 () Bool)

(declare-fun tp!1911426 () Bool)

(declare-fun tp!1911427 () Bool)

(assert (=> b!6933749 (= e!4171854 (and tp!1911426 tp!1911427))))

(declare-fun b!6933748 () Bool)

(assert (=> b!6933748 (= e!4171854 tp_is_empty!43127)))

(assert (= (and b!6932866 ((_ is ElementMatch!16951) (reg!17280 r3!135))) b!6933748))

(assert (= (and b!6932866 ((_ is Concat!25796) (reg!17280 r3!135))) b!6933749))

(assert (= (and b!6932866 ((_ is Star!16951) (reg!17280 r3!135))) b!6933750))

(assert (= (and b!6932866 ((_ is Union!16951) (reg!17280 r3!135))) b!6933751))

(declare-fun e!4171855 () Bool)

(assert (=> b!6932856 (= tp!1911273 e!4171855)))

(declare-fun b!6933754 () Bool)

(declare-fun tp!1911430 () Bool)

(assert (=> b!6933754 (= e!4171855 tp!1911430)))

(declare-fun b!6933755 () Bool)

(declare-fun tp!1911434 () Bool)

(declare-fun tp!1911433 () Bool)

(assert (=> b!6933755 (= e!4171855 (and tp!1911434 tp!1911433))))

(declare-fun b!6933753 () Bool)

(declare-fun tp!1911431 () Bool)

(declare-fun tp!1911432 () Bool)

(assert (=> b!6933753 (= e!4171855 (and tp!1911431 tp!1911432))))

(declare-fun b!6933752 () Bool)

(assert (=> b!6933752 (= e!4171855 tp_is_empty!43127)))

(assert (= (and b!6932856 ((_ is ElementMatch!16951) (regOne!34415 r3!135))) b!6933752))

(assert (= (and b!6932856 ((_ is Concat!25796) (regOne!34415 r3!135))) b!6933753))

(assert (= (and b!6932856 ((_ is Star!16951) (regOne!34415 r3!135))) b!6933754))

(assert (= (and b!6932856 ((_ is Union!16951) (regOne!34415 r3!135))) b!6933755))

(declare-fun e!4171856 () Bool)

(assert (=> b!6932856 (= tp!1911274 e!4171856)))

(declare-fun b!6933758 () Bool)

(declare-fun tp!1911435 () Bool)

(assert (=> b!6933758 (= e!4171856 tp!1911435)))

(declare-fun b!6933759 () Bool)

(declare-fun tp!1911439 () Bool)

(declare-fun tp!1911438 () Bool)

(assert (=> b!6933759 (= e!4171856 (and tp!1911439 tp!1911438))))

(declare-fun b!6933757 () Bool)

(declare-fun tp!1911436 () Bool)

(declare-fun tp!1911437 () Bool)

(assert (=> b!6933757 (= e!4171856 (and tp!1911436 tp!1911437))))

(declare-fun b!6933756 () Bool)

(assert (=> b!6933756 (= e!4171856 tp_is_empty!43127)))

(assert (= (and b!6932856 ((_ is ElementMatch!16951) (regTwo!34415 r3!135))) b!6933756))

(assert (= (and b!6932856 ((_ is Concat!25796) (regTwo!34415 r3!135))) b!6933757))

(assert (= (and b!6932856 ((_ is Star!16951) (regTwo!34415 r3!135))) b!6933758))

(assert (= (and b!6932856 ((_ is Union!16951) (regTwo!34415 r3!135))) b!6933759))

(declare-fun e!4171857 () Bool)

(assert (=> b!6932873 (= tp!1911279 e!4171857)))

(declare-fun b!6933762 () Bool)

(declare-fun tp!1911440 () Bool)

(assert (=> b!6933762 (= e!4171857 tp!1911440)))

(declare-fun b!6933763 () Bool)

(declare-fun tp!1911444 () Bool)

(declare-fun tp!1911443 () Bool)

(assert (=> b!6933763 (= e!4171857 (and tp!1911444 tp!1911443))))

(declare-fun b!6933761 () Bool)

(declare-fun tp!1911441 () Bool)

(declare-fun tp!1911442 () Bool)

(assert (=> b!6933761 (= e!4171857 (and tp!1911441 tp!1911442))))

(declare-fun b!6933760 () Bool)

(assert (=> b!6933760 (= e!4171857 tp_is_empty!43127)))

(assert (= (and b!6932873 ((_ is ElementMatch!16951) (regOne!34414 r1!6342))) b!6933760))

(assert (= (and b!6932873 ((_ is Concat!25796) (regOne!34414 r1!6342))) b!6933761))

(assert (= (and b!6932873 ((_ is Star!16951) (regOne!34414 r1!6342))) b!6933762))

(assert (= (and b!6932873 ((_ is Union!16951) (regOne!34414 r1!6342))) b!6933763))

(declare-fun e!4171858 () Bool)

(assert (=> b!6932873 (= tp!1911283 e!4171858)))

(declare-fun b!6933766 () Bool)

(declare-fun tp!1911445 () Bool)

(assert (=> b!6933766 (= e!4171858 tp!1911445)))

(declare-fun b!6933767 () Bool)

(declare-fun tp!1911449 () Bool)

(declare-fun tp!1911448 () Bool)

(assert (=> b!6933767 (= e!4171858 (and tp!1911449 tp!1911448))))

(declare-fun b!6933765 () Bool)

(declare-fun tp!1911446 () Bool)

(declare-fun tp!1911447 () Bool)

(assert (=> b!6933765 (= e!4171858 (and tp!1911446 tp!1911447))))

(declare-fun b!6933764 () Bool)

(assert (=> b!6933764 (= e!4171858 tp_is_empty!43127)))

(assert (= (and b!6932873 ((_ is ElementMatch!16951) (regTwo!34414 r1!6342))) b!6933764))

(assert (= (and b!6932873 ((_ is Concat!25796) (regTwo!34414 r1!6342))) b!6933765))

(assert (= (and b!6932873 ((_ is Star!16951) (regTwo!34414 r1!6342))) b!6933766))

(assert (= (and b!6932873 ((_ is Union!16951) (regTwo!34414 r1!6342))) b!6933767))

(declare-fun e!4171859 () Bool)

(assert (=> b!6932857 (= tp!1911277 e!4171859)))

(declare-fun b!6933770 () Bool)

(declare-fun tp!1911450 () Bool)

(assert (=> b!6933770 (= e!4171859 tp!1911450)))

(declare-fun b!6933771 () Bool)

(declare-fun tp!1911454 () Bool)

(declare-fun tp!1911453 () Bool)

(assert (=> b!6933771 (= e!4171859 (and tp!1911454 tp!1911453))))

(declare-fun b!6933769 () Bool)

(declare-fun tp!1911451 () Bool)

(declare-fun tp!1911452 () Bool)

(assert (=> b!6933769 (= e!4171859 (and tp!1911451 tp!1911452))))

(declare-fun b!6933768 () Bool)

(assert (=> b!6933768 (= e!4171859 tp_is_empty!43127)))

(assert (= (and b!6932857 ((_ is ElementMatch!16951) (reg!17280 r1!6342))) b!6933768))

(assert (= (and b!6932857 ((_ is Concat!25796) (reg!17280 r1!6342))) b!6933769))

(assert (= (and b!6932857 ((_ is Star!16951) (reg!17280 r1!6342))) b!6933770))

(assert (= (and b!6932857 ((_ is Union!16951) (reg!17280 r1!6342))) b!6933771))

(declare-fun e!4171860 () Bool)

(assert (=> b!6932868 (= tp!1911271 e!4171860)))

(declare-fun b!6933774 () Bool)

(declare-fun tp!1911455 () Bool)

(assert (=> b!6933774 (= e!4171860 tp!1911455)))

(declare-fun b!6933775 () Bool)

(declare-fun tp!1911459 () Bool)

(declare-fun tp!1911458 () Bool)

(assert (=> b!6933775 (= e!4171860 (and tp!1911459 tp!1911458))))

(declare-fun b!6933773 () Bool)

(declare-fun tp!1911456 () Bool)

(declare-fun tp!1911457 () Bool)

(assert (=> b!6933773 (= e!4171860 (and tp!1911456 tp!1911457))))

(declare-fun b!6933772 () Bool)

(assert (=> b!6933772 (= e!4171860 tp_is_empty!43127)))

(assert (= (and b!6932868 ((_ is ElementMatch!16951) (reg!17280 r2!6280))) b!6933772))

(assert (= (and b!6932868 ((_ is Concat!25796) (reg!17280 r2!6280))) b!6933773))

(assert (= (and b!6932868 ((_ is Star!16951) (reg!17280 r2!6280))) b!6933774))

(assert (= (and b!6932868 ((_ is Union!16951) (reg!17280 r2!6280))) b!6933775))

(check-sat (not b!6933437) (not b!6933356) (not b!6933481) (not bm!630016) (not b!6933594) (not b!6933759) (not b!6933248) (not d!2166447) (not b!6933434) (not b!6933761) (not b!6933757) (not b!6933249) (not bm!630026) (not b!6933060) (not b!6933746) (not b!6933378) (not b!6933572) (not b!6933724) (not d!2166411) (not b!6933166) (not bm!630023) tp_is_empty!43127 (not b!6933385) (not b!6933753) (not b!6933332) (not b!6933581) (not b!6933567) (not d!2166327) (not b!6933765) (not b!6933545) (not b!6933721) (not b!6933223) (not b!6933388) (not b!6933472) (not b!6933700) (not b!6933558) (not b!6933427) (not b!6933564) (not d!2166301) (not b!6933323) (not d!2166379) (not d!2166299) (not bm!630014) (not d!2166431) (not d!2166381) (not d!2166347) (not b!6933733) (not b!6933495) (not b!6933502) (not b!6933224) (not b!6933769) (not d!2166363) (not b!6933774) (not b!6933734) (not d!2166433) (not b!6933750) (not b!6933573) (not bm!629965) (not b!6933580) (not b!6933168) (not bm!629959) (not b!6933714) (not b!6933412) (not b!6933749) (not d!2166435) (not b!6932983) (not bm!630007) (not b!6933728) (not b!6933432) (not d!2166315) (not b!6933692) (not b!6933426) (not d!2166403) (not b!6933690) (not b!6933528) (not d!2166365) (not b!6933441) (not d!2166307) (not b!6933571) (not b!6933697) (not b!6933493) (not b!6933747) (not b!6933389) (not b!6933745) (not b!6933766) (not b!6933566) (not b!6933546) (not b!6933374) (not d!2166413) (not b!6933160) (not b!6933773) (not b!6933559) (not b!6933775) (not bm!630032) (not bm!630011) (not b!6933352) (not d!2166295) (not d!2166393) (not d!2166341) (not b!6933557) (not b!6933435) (not b!6933392) (not d!2166297) (not b!6933717) (not d!2166429) (not b!6933716) (not d!2166449) (not b!6933739) (not b!6933713) (not b!6933730) (not d!2166305) (not b!6933551) (not b!6933161) (not b!6933770) (not b!6933524) (not d!2166421) (not bm!629963) (not b!6933743) (not bm!630031) (not d!2166279) (not b!6933718) (not b!6933394) (not d!2166391) (not b!6932960) (not bm!629977) (not b!6932992) (not b!6933324) (not bm!630030) (not b!6933553) (not bm!630010) (not d!2166331) (not b!6933500) (not b!6933228) (not b!6933331) (not bm!630022) (not b!6933699) (not bm!630004) (not bm!630018) (not b!6933250) (not b!6933741) (not bm!630015) (not b!6933578) (not b!6933393) (not b!6933471) (not b!6933725) (not b!6933549) (not bm!629968) (not b!6933416) (not b!6933763) (not b!6933755) (not b!6933064) (not b!6933751) (not b!6933732) (not d!2166451) (not b!6933349) (not b!6933771) (not b!6933767) (not b!6933386) (not b!6933726) (not b!6933425) (not b!6933722) (not b!6933348) (not b!6933473) (not d!2166367) (not bm!629961) (not bm!630017) (not bm!630013) (not b!6933712) (not b!6933691) (not b!6933720) (not d!2166405) (not b!6933754) (not b!6933729) (not bm!630027) (not bm!629966) (not b!6933322) (not b!6933396) (not b!6933503) (not b!6933480) (not b!6933164) (not b!6933494) (not bm!630006) (not d!2166349) (not b!6933227) (not b!6933758) (not d!2166457) (not b!6933478) (not bm!629978) (not d!2166283) (not b!6933598) (not b!6933762) (not b!6933329) (not b!6933550) (not d!2166375) (not bm!630019) (not b!6933165) (not d!2166455) (not d!2166395) (not b!6933742))
(check-sat)
