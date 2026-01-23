; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724342 () Bool)

(assert start!724342)

(declare-fun b!7472522 () Bool)

(assert (=> b!7472522 true))

(assert (=> b!7472522 true))

(assert (=> b!7472522 true))

(declare-fun lambda!462865 () Int)

(declare-fun lambda!462864 () Int)

(assert (=> b!7472522 (not (= lambda!462865 lambda!462864))))

(assert (=> b!7472522 true))

(assert (=> b!7472522 true))

(assert (=> b!7472522 true))

(declare-fun bs!1931597 () Bool)

(declare-fun b!7472518 () Bool)

(assert (= bs!1931597 (and b!7472518 b!7472522)))

(declare-datatypes ((C!39448 0))(
  ( (C!39449 (val!30122 Int)) )
))
(declare-datatypes ((Regex!19587 0))(
  ( (ElementMatch!19587 (c!1380610 C!39448)) (Concat!28432 (regOne!39686 Regex!19587) (regTwo!39686 Regex!19587)) (EmptyExpr!19587) (Star!19587 (reg!19916 Regex!19587)) (EmptyLang!19587) (Union!19587 (regOne!39687 Regex!19587) (regTwo!39687 Regex!19587)) )
))
(declare-fun lt!2626347 () Regex!19587)

(declare-fun r2!5783 () Regex!19587)

(declare-fun lambda!462866 () Int)

(assert (=> bs!1931597 (= (= r2!5783 lt!2626347) (= lambda!462866 lambda!462864))))

(assert (=> bs!1931597 (not (= lambda!462866 lambda!462865))))

(assert (=> b!7472518 true))

(assert (=> b!7472518 true))

(assert (=> b!7472518 true))

(declare-fun lambda!462867 () Int)

(assert (=> bs!1931597 (not (= lambda!462867 lambda!462864))))

(assert (=> bs!1931597 (= (= r2!5783 lt!2626347) (= lambda!462867 lambda!462865))))

(assert (=> b!7472518 (not (= lambda!462867 lambda!462866))))

(assert (=> b!7472518 true))

(assert (=> b!7472518 true))

(assert (=> b!7472518 true))

(declare-fun b!7472515 () Bool)

(declare-fun e!4458131 () Bool)

(declare-fun tp_is_empty!49463 () Bool)

(assert (=> b!7472515 (= e!4458131 tp_is_empty!49463)))

(declare-fun b!7472516 () Bool)

(declare-fun e!4458132 () Bool)

(declare-fun tp!2166839 () Bool)

(assert (=> b!7472516 (= e!4458132 tp!2166839)))

(declare-fun res!2997852 () Bool)

(declare-fun e!4458128 () Bool)

(assert (=> start!724342 (=> (not res!2997852) (not e!4458128))))

(declare-fun r1!5845 () Regex!19587)

(declare-fun validRegex!10101 (Regex!19587) Bool)

(assert (=> start!724342 (= res!2997852 (validRegex!10101 r1!5845))))

(assert (=> start!724342 e!4458128))

(assert (=> start!724342 e!4458132))

(declare-fun e!4458136 () Bool)

(assert (=> start!724342 e!4458136))

(assert (=> start!724342 e!4458131))

(declare-fun e!4458129 () Bool)

(assert (=> start!724342 e!4458129))

(declare-fun b!7472517 () Bool)

(declare-fun tp!2166832 () Bool)

(declare-fun tp!2166837 () Bool)

(assert (=> b!7472517 (= e!4458132 (and tp!2166832 tp!2166837))))

(declare-fun e!4458134 () Bool)

(declare-fun e!4458133 () Bool)

(assert (=> b!7472518 (= e!4458134 e!4458133)))

(declare-fun res!2997856 () Bool)

(assert (=> b!7472518 (=> res!2997856 e!4458133)))

(declare-datatypes ((List!72303 0))(
  ( (Nil!72179) (Cons!72179 (h!78627 C!39448) (t!386872 List!72303)) )
))
(declare-datatypes ((tuple2!68624 0))(
  ( (tuple2!68625 (_1!37615 List!72303) (_2!37615 List!72303)) )
))
(declare-fun lt!2626361 () tuple2!68624)

(declare-fun matchR!9351 (Regex!19587 List!72303) Bool)

(assert (=> b!7472518 (= res!2997856 (not (matchR!9351 r2!5783 (_1!37615 lt!2626361))))))

(declare-datatypes ((Option!17144 0))(
  ( (None!17143) (Some!17143 (v!54272 tuple2!68624)) )
))
(declare-fun lt!2626354 () Option!17144)

(declare-fun get!25244 (Option!17144) tuple2!68624)

(assert (=> b!7472518 (= lt!2626361 (get!25244 lt!2626354))))

(declare-fun Exists!4206 (Int) Bool)

(assert (=> b!7472518 (= (Exists!4206 lambda!462866) (Exists!4206 lambda!462867))))

(declare-fun s!13591 () List!72303)

(declare-datatypes ((Unit!166009 0))(
  ( (Unit!166010) )
))
(declare-fun lt!2626360 () Unit!166009)

(declare-fun rTail!78 () Regex!19587)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2540 (Regex!19587 Regex!19587 List!72303) Unit!166009)

(assert (=> b!7472518 (= lt!2626360 (lemmaExistCutMatchRandMatchRSpecEquivalent!2540 r2!5783 rTail!78 s!13591))))

(declare-fun isDefined!13833 (Option!17144) Bool)

(assert (=> b!7472518 (= (isDefined!13833 lt!2626354) (Exists!4206 lambda!462866))))

(declare-fun findConcatSeparation!3266 (Regex!19587 Regex!19587 List!72303 List!72303 List!72303) Option!17144)

(assert (=> b!7472518 (= lt!2626354 (findConcatSeparation!3266 r2!5783 rTail!78 Nil!72179 s!13591 s!13591))))

(declare-fun lt!2626356 () Unit!166009)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3024 (Regex!19587 Regex!19587 List!72303) Unit!166009)

(assert (=> b!7472518 (= lt!2626356 (lemmaFindConcatSeparationEquivalentToExists!3024 r2!5783 rTail!78 s!13591))))

(declare-fun b!7472519 () Bool)

(assert (=> b!7472519 (= e!4458133 true)))

(declare-fun matchRSpec!4266 (Regex!19587 List!72303) Bool)

(assert (=> b!7472519 (matchRSpec!4266 r2!5783 (_1!37615 lt!2626361))))

(declare-fun lt!2626353 () Unit!166009)

(declare-fun mainMatchTheorem!4260 (Regex!19587 List!72303) Unit!166009)

(assert (=> b!7472519 (= lt!2626353 (mainMatchTheorem!4260 r2!5783 (_1!37615 lt!2626361)))))

(assert (=> b!7472519 (= (matchR!9351 r1!5845 (_1!37615 lt!2626361)) (matchRSpec!4266 r1!5845 (_1!37615 lt!2626361)))))

(declare-fun lt!2626352 () Unit!166009)

(assert (=> b!7472519 (= lt!2626352 (mainMatchTheorem!4260 r1!5845 (_1!37615 lt!2626361)))))

(assert (=> b!7472519 (= (matchR!9351 lt!2626347 (_1!37615 lt!2626361)) (matchRSpec!4266 lt!2626347 (_1!37615 lt!2626361)))))

(declare-fun lt!2626358 () Unit!166009)

(assert (=> b!7472519 (= lt!2626358 (mainMatchTheorem!4260 lt!2626347 (_1!37615 lt!2626361)))))

(declare-fun b!7472520 () Bool)

(declare-fun tp!2166836 () Bool)

(assert (=> b!7472520 (= e!4458129 (and tp_is_empty!49463 tp!2166836))))

(declare-fun b!7472521 () Bool)

(declare-fun tp!2166828 () Bool)

(declare-fun tp!2166841 () Bool)

(assert (=> b!7472521 (= e!4458132 (and tp!2166828 tp!2166841))))

(declare-fun e!4458130 () Bool)

(declare-fun e!4458135 () Bool)

(assert (=> b!7472522 (= e!4458130 e!4458135)))

(declare-fun res!2997853 () Bool)

(assert (=> b!7472522 (=> res!2997853 e!4458135)))

(declare-fun lt!2626341 () Bool)

(declare-fun lt!2626349 () Bool)

(assert (=> b!7472522 (= res!2997853 (or lt!2626341 (not lt!2626349)))))

(assert (=> b!7472522 (= (Exists!4206 lambda!462864) (Exists!4206 lambda!462865))))

(declare-fun lt!2626362 () Unit!166009)

(assert (=> b!7472522 (= lt!2626362 (lemmaExistCutMatchRandMatchRSpecEquivalent!2540 lt!2626347 rTail!78 s!13591))))

(assert (=> b!7472522 (= lt!2626341 (Exists!4206 lambda!462864))))

(assert (=> b!7472522 (= lt!2626341 (isDefined!13833 (findConcatSeparation!3266 lt!2626347 rTail!78 Nil!72179 s!13591 s!13591)))))

(declare-fun lt!2626363 () Unit!166009)

(assert (=> b!7472522 (= lt!2626363 (lemmaFindConcatSeparationEquivalentToExists!3024 lt!2626347 rTail!78 s!13591))))

(declare-fun b!7472523 () Bool)

(declare-fun tp!2166834 () Bool)

(declare-fun tp!2166831 () Bool)

(assert (=> b!7472523 (= e!4458136 (and tp!2166834 tp!2166831))))

(declare-fun b!7472524 () Bool)

(declare-fun tp!2166833 () Bool)

(declare-fun tp!2166842 () Bool)

(assert (=> b!7472524 (= e!4458136 (and tp!2166833 tp!2166842))))

(declare-fun b!7472525 () Bool)

(declare-fun tp!2166830 () Bool)

(assert (=> b!7472525 (= e!4458131 tp!2166830)))

(declare-fun b!7472526 () Bool)

(assert (=> b!7472526 (= e!4458132 tp_is_empty!49463)))

(declare-fun b!7472527 () Bool)

(assert (=> b!7472527 (= e!4458128 (not e!4458130))))

(declare-fun res!2997851 () Bool)

(assert (=> b!7472527 (=> res!2997851 e!4458130)))

(declare-fun lt!2626355 () Bool)

(assert (=> b!7472527 (= res!2997851 lt!2626355)))

(declare-fun lt!2626342 () Regex!19587)

(assert (=> b!7472527 (= lt!2626349 (matchRSpec!4266 lt!2626342 s!13591))))

(assert (=> b!7472527 (= lt!2626349 (matchR!9351 lt!2626342 s!13591))))

(declare-fun lt!2626351 () Unit!166009)

(assert (=> b!7472527 (= lt!2626351 (mainMatchTheorem!4260 lt!2626342 s!13591))))

(declare-fun lt!2626348 () Regex!19587)

(assert (=> b!7472527 (= lt!2626355 (matchRSpec!4266 lt!2626348 s!13591))))

(assert (=> b!7472527 (= lt!2626355 (matchR!9351 lt!2626348 s!13591))))

(declare-fun lt!2626350 () Unit!166009)

(assert (=> b!7472527 (= lt!2626350 (mainMatchTheorem!4260 lt!2626348 s!13591))))

(declare-fun lt!2626359 () Regex!19587)

(declare-fun lt!2626346 () Regex!19587)

(assert (=> b!7472527 (= lt!2626342 (Union!19587 lt!2626359 lt!2626346))))

(assert (=> b!7472527 (= lt!2626346 (Concat!28432 r2!5783 rTail!78))))

(assert (=> b!7472527 (= lt!2626359 (Concat!28432 r1!5845 rTail!78))))

(assert (=> b!7472527 (= lt!2626348 (Concat!28432 lt!2626347 rTail!78))))

(assert (=> b!7472527 (= lt!2626347 (Union!19587 r1!5845 r2!5783))))

(declare-fun b!7472528 () Bool)

(declare-fun tp!2166838 () Bool)

(declare-fun tp!2166835 () Bool)

(assert (=> b!7472528 (= e!4458131 (and tp!2166838 tp!2166835))))

(declare-fun b!7472529 () Bool)

(declare-fun res!2997855 () Bool)

(assert (=> b!7472529 (=> (not res!2997855) (not e!4458128))))

(assert (=> b!7472529 (= res!2997855 (validRegex!10101 rTail!78))))

(declare-fun b!7472530 () Bool)

(declare-fun tp!2166843 () Bool)

(assert (=> b!7472530 (= e!4458136 tp!2166843)))

(declare-fun b!7472531 () Bool)

(declare-fun res!2997849 () Bool)

(assert (=> b!7472531 (=> (not res!2997849) (not e!4458128))))

(assert (=> b!7472531 (= res!2997849 (validRegex!10101 r2!5783))))

(declare-fun b!7472532 () Bool)

(declare-fun res!2997854 () Bool)

(assert (=> b!7472532 (=> res!2997854 e!4458133)))

(assert (=> b!7472532 (= res!2997854 (not (matchR!9351 rTail!78 (_2!37615 lt!2626361))))))

(declare-fun b!7472533 () Bool)

(assert (=> b!7472533 (= e!4458135 e!4458134)))

(declare-fun res!2997850 () Bool)

(assert (=> b!7472533 (=> res!2997850 e!4458134)))

(declare-fun lt!2626343 () Bool)

(declare-fun lt!2626344 () Bool)

(assert (=> b!7472533 (= res!2997850 (or (and (not lt!2626343) (not lt!2626344)) lt!2626343))))

(assert (=> b!7472533 (= lt!2626344 (matchRSpec!4266 lt!2626346 s!13591))))

(assert (=> b!7472533 (= lt!2626344 (matchR!9351 lt!2626346 s!13591))))

(declare-fun lt!2626357 () Unit!166009)

(assert (=> b!7472533 (= lt!2626357 (mainMatchTheorem!4260 lt!2626346 s!13591))))

(assert (=> b!7472533 (= lt!2626343 (matchRSpec!4266 lt!2626359 s!13591))))

(assert (=> b!7472533 (= lt!2626343 (matchR!9351 lt!2626359 s!13591))))

(declare-fun lt!2626345 () Unit!166009)

(assert (=> b!7472533 (= lt!2626345 (mainMatchTheorem!4260 lt!2626359 s!13591))))

(declare-fun b!7472534 () Bool)

(declare-fun tp!2166829 () Bool)

(declare-fun tp!2166840 () Bool)

(assert (=> b!7472534 (= e!4458131 (and tp!2166829 tp!2166840))))

(declare-fun b!7472535 () Bool)

(assert (=> b!7472535 (= e!4458136 tp_is_empty!49463)))

(assert (= (and start!724342 res!2997852) b!7472531))

(assert (= (and b!7472531 res!2997849) b!7472529))

(assert (= (and b!7472529 res!2997855) b!7472527))

(assert (= (and b!7472527 (not res!2997851)) b!7472522))

(assert (= (and b!7472522 (not res!2997853)) b!7472533))

(assert (= (and b!7472533 (not res!2997850)) b!7472518))

(assert (= (and b!7472518 (not res!2997856)) b!7472532))

(assert (= (and b!7472532 (not res!2997854)) b!7472519))

(get-info :version)

(assert (= (and start!724342 ((_ is ElementMatch!19587) r1!5845)) b!7472526))

(assert (= (and start!724342 ((_ is Concat!28432) r1!5845)) b!7472521))

(assert (= (and start!724342 ((_ is Star!19587) r1!5845)) b!7472516))

(assert (= (and start!724342 ((_ is Union!19587) r1!5845)) b!7472517))

(assert (= (and start!724342 ((_ is ElementMatch!19587) r2!5783)) b!7472535))

(assert (= (and start!724342 ((_ is Concat!28432) r2!5783)) b!7472524))

(assert (= (and start!724342 ((_ is Star!19587) r2!5783)) b!7472530))

(assert (= (and start!724342 ((_ is Union!19587) r2!5783)) b!7472523))

(assert (= (and start!724342 ((_ is ElementMatch!19587) rTail!78)) b!7472515))

(assert (= (and start!724342 ((_ is Concat!28432) rTail!78)) b!7472534))

(assert (= (and start!724342 ((_ is Star!19587) rTail!78)) b!7472525))

(assert (= (and start!724342 ((_ is Union!19587) rTail!78)) b!7472528))

(assert (= (and start!724342 ((_ is Cons!72179) s!13591)) b!7472520))

(declare-fun m!8068884 () Bool)

(assert (=> b!7472519 m!8068884))

(declare-fun m!8068886 () Bool)

(assert (=> b!7472519 m!8068886))

(declare-fun m!8068888 () Bool)

(assert (=> b!7472519 m!8068888))

(declare-fun m!8068890 () Bool)

(assert (=> b!7472519 m!8068890))

(declare-fun m!8068892 () Bool)

(assert (=> b!7472519 m!8068892))

(declare-fun m!8068894 () Bool)

(assert (=> b!7472519 m!8068894))

(declare-fun m!8068896 () Bool)

(assert (=> b!7472519 m!8068896))

(declare-fun m!8068898 () Bool)

(assert (=> b!7472519 m!8068898))

(declare-fun m!8068900 () Bool)

(assert (=> start!724342 m!8068900))

(declare-fun m!8068902 () Bool)

(assert (=> b!7472529 m!8068902))

(declare-fun m!8068904 () Bool)

(assert (=> b!7472522 m!8068904))

(declare-fun m!8068906 () Bool)

(assert (=> b!7472522 m!8068906))

(declare-fun m!8068908 () Bool)

(assert (=> b!7472522 m!8068908))

(declare-fun m!8068910 () Bool)

(assert (=> b!7472522 m!8068910))

(declare-fun m!8068912 () Bool)

(assert (=> b!7472522 m!8068912))

(assert (=> b!7472522 m!8068906))

(assert (=> b!7472522 m!8068904))

(declare-fun m!8068914 () Bool)

(assert (=> b!7472522 m!8068914))

(declare-fun m!8068916 () Bool)

(assert (=> b!7472527 m!8068916))

(declare-fun m!8068918 () Bool)

(assert (=> b!7472527 m!8068918))

(declare-fun m!8068920 () Bool)

(assert (=> b!7472527 m!8068920))

(declare-fun m!8068922 () Bool)

(assert (=> b!7472527 m!8068922))

(declare-fun m!8068924 () Bool)

(assert (=> b!7472527 m!8068924))

(declare-fun m!8068926 () Bool)

(assert (=> b!7472527 m!8068926))

(declare-fun m!8068928 () Bool)

(assert (=> b!7472532 m!8068928))

(declare-fun m!8068930 () Bool)

(assert (=> b!7472533 m!8068930))

(declare-fun m!8068932 () Bool)

(assert (=> b!7472533 m!8068932))

(declare-fun m!8068934 () Bool)

(assert (=> b!7472533 m!8068934))

(declare-fun m!8068936 () Bool)

(assert (=> b!7472533 m!8068936))

(declare-fun m!8068938 () Bool)

(assert (=> b!7472533 m!8068938))

(declare-fun m!8068940 () Bool)

(assert (=> b!7472533 m!8068940))

(declare-fun m!8068942 () Bool)

(assert (=> b!7472531 m!8068942))

(declare-fun m!8068944 () Bool)

(assert (=> b!7472518 m!8068944))

(declare-fun m!8068946 () Bool)

(assert (=> b!7472518 m!8068946))

(declare-fun m!8068948 () Bool)

(assert (=> b!7472518 m!8068948))

(declare-fun m!8068950 () Bool)

(assert (=> b!7472518 m!8068950))

(declare-fun m!8068952 () Bool)

(assert (=> b!7472518 m!8068952))

(declare-fun m!8068954 () Bool)

(assert (=> b!7472518 m!8068954))

(declare-fun m!8068956 () Bool)

(assert (=> b!7472518 m!8068956))

(assert (=> b!7472518 m!8068948))

(declare-fun m!8068958 () Bool)

(assert (=> b!7472518 m!8068958))

(check-sat (not b!7472533) (not b!7472534) (not b!7472518) (not start!724342) (not b!7472520) (not b!7472524) (not b!7472527) (not b!7472532) (not b!7472517) (not b!7472530) (not b!7472525) (not b!7472529) tp_is_empty!49463 (not b!7472531) (not b!7472522) (not b!7472523) (not b!7472528) (not b!7472519) (not b!7472521) (not b!7472516))
(check-sat)
