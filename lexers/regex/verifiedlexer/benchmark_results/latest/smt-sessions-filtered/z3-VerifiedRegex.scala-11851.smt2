; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!666174 () Bool)

(assert start!666174)

(declare-fun b!6932646 () Bool)

(assert (=> b!6932646 true))

(assert (=> b!6932646 true))

(assert (=> b!6932646 true))

(declare-fun lambda!394558 () Int)

(declare-fun lambda!394557 () Int)

(assert (=> b!6932646 (not (= lambda!394558 lambda!394557))))

(assert (=> b!6932646 true))

(assert (=> b!6932646 true))

(assert (=> b!6932646 true))

(declare-fun bs!1850817 () Bool)

(declare-fun b!6932637 () Bool)

(assert (= bs!1850817 (and b!6932637 b!6932646)))

(declare-datatypes ((C!34168 0))(
  ( (C!34169 (val!26786 Int)) )
))
(declare-datatypes ((Regex!16949 0))(
  ( (ElementMatch!16949 (c!1286599 C!34168)) (Concat!25794 (regOne!34410 Regex!16949) (regTwo!34410 Regex!16949)) (EmptyExpr!16949) (Star!16949 (reg!17278 Regex!16949)) (EmptyLang!16949) (Union!16949 (regOne!34411 Regex!16949) (regTwo!34411 Regex!16949)) )
))
(declare-fun r1!6342 () Regex!16949)

(declare-fun r3!135 () Regex!16949)

(declare-fun lt!2473481 () Regex!16949)

(declare-fun r2!6280 () Regex!16949)

(declare-datatypes ((List!66702 0))(
  ( (Nil!66578) (Cons!66578 (h!73026 C!34168) (t!380445 List!66702)) )
))
(declare-datatypes ((tuple2!67612 0))(
  ( (tuple2!67613 (_1!37109 List!66702) (_2!37109 List!66702)) )
))
(declare-fun lt!2473487 () tuple2!67612)

(declare-fun s!14361 () List!66702)

(declare-fun lambda!394559 () Int)

(assert (=> bs!1850817 (= (and (= (_2!37109 lt!2473487) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473481)) (= lambda!394559 lambda!394557))))

(assert (=> bs!1850817 (not (= lambda!394559 lambda!394558))))

(assert (=> b!6932637 true))

(assert (=> b!6932637 true))

(assert (=> b!6932637 true))

(declare-fun lambda!394560 () Int)

(assert (=> bs!1850817 (not (= lambda!394560 lambda!394557))))

(assert (=> bs!1850817 (= (and (= (_2!37109 lt!2473487) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473481)) (= lambda!394560 lambda!394558))))

(assert (=> b!6932637 (not (= lambda!394560 lambda!394559))))

(assert (=> b!6932637 true))

(assert (=> b!6932637 true))

(assert (=> b!6932637 true))

(declare-fun bs!1850818 () Bool)

(declare-fun b!6932645 () Bool)

(assert (= bs!1850818 (and b!6932645 b!6932646)))

(declare-fun lt!2473478 () List!66702)

(declare-fun lambda!394561 () Int)

(assert (=> bs!1850818 (= (and (= lt!2473478 s!14361) (= r2!6280 lt!2473481)) (= lambda!394561 lambda!394557))))

(assert (=> bs!1850818 (not (= lambda!394561 lambda!394558))))

(declare-fun bs!1850819 () Bool)

(assert (= bs!1850819 (and b!6932645 b!6932637)))

(assert (=> bs!1850819 (= (and (= lt!2473478 (_2!37109 lt!2473487)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394561 lambda!394559))))

(assert (=> bs!1850819 (not (= lambda!394561 lambda!394560))))

(assert (=> b!6932645 true))

(assert (=> b!6932645 true))

(assert (=> b!6932645 true))

(declare-fun lambda!394562 () Int)

(assert (=> bs!1850818 (not (= lambda!394562 lambda!394557))))

(assert (=> bs!1850818 (= (and (= lt!2473478 s!14361) (= r2!6280 lt!2473481)) (= lambda!394562 lambda!394558))))

(assert (=> bs!1850819 (not (= lambda!394562 lambda!394559))))

(assert (=> b!6932645 (not (= lambda!394562 lambda!394561))))

(assert (=> bs!1850819 (= (and (= lt!2473478 (_2!37109 lt!2473487)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394562 lambda!394560))))

(assert (=> b!6932645 true))

(assert (=> b!6932645 true))

(assert (=> b!6932645 true))

(declare-fun b!6932629 () Bool)

(declare-fun e!4171283 () Bool)

(declare-fun tp!1911180 () Bool)

(declare-fun tp!1911182 () Bool)

(assert (=> b!6932629 (= e!4171283 (and tp!1911180 tp!1911182))))

(declare-fun b!6932630 () Bool)

(declare-fun e!4171289 () Bool)

(declare-fun tp!1911185 () Bool)

(declare-fun tp!1911174 () Bool)

(assert (=> b!6932630 (= e!4171289 (and tp!1911185 tp!1911174))))

(declare-fun b!6932631 () Bool)

(declare-fun e!4171284 () Bool)

(declare-fun tp_is_empty!43123 () Bool)

(declare-fun tp!1911184 () Bool)

(assert (=> b!6932631 (= e!4171284 (and tp_is_empty!43123 tp!1911184))))

(declare-fun b!6932632 () Bool)

(declare-fun e!4171282 () Bool)

(assert (=> b!6932632 (= e!4171282 tp_is_empty!43123)))

(declare-fun b!6932633 () Bool)

(declare-fun tp!1911175 () Bool)

(assert (=> b!6932633 (= e!4171282 tp!1911175)))

(declare-fun res!2827411 () Bool)

(declare-fun e!4171290 () Bool)

(assert (=> start!666174 (=> (not res!2827411) (not e!4171290))))

(declare-fun validRegex!8655 (Regex!16949) Bool)

(assert (=> start!666174 (= res!2827411 (validRegex!8655 r1!6342))))

(assert (=> start!666174 e!4171290))

(assert (=> start!666174 e!4171282))

(assert (=> start!666174 e!4171289))

(assert (=> start!666174 e!4171283))

(assert (=> start!666174 e!4171284))

(declare-fun b!6932634 () Bool)

(declare-fun tp!1911181 () Bool)

(assert (=> b!6932634 (= e!4171289 tp!1911181)))

(declare-fun b!6932635 () Bool)

(assert (=> b!6932635 (= e!4171283 tp_is_empty!43123)))

(declare-fun b!6932636 () Bool)

(declare-fun tp!1911187 () Bool)

(assert (=> b!6932636 (= e!4171283 tp!1911187)))

(declare-fun e!4171287 () Bool)

(declare-fun e!4171281 () Bool)

(assert (=> b!6932637 (= e!4171287 e!4171281)))

(declare-fun res!2827408 () Bool)

(assert (=> b!6932637 (=> res!2827408 e!4171281)))

(declare-fun lt!2473474 () tuple2!67612)

(declare-fun matchR!9088 (Regex!16949 List!66702) Bool)

(assert (=> b!6932637 (= res!2827408 (not (matchR!9088 r2!6280 (_1!37109 lt!2473474))))))

(declare-datatypes ((Option!16718 0))(
  ( (None!16717) (Some!16717 (v!52989 tuple2!67612)) )
))
(declare-fun lt!2473477 () Option!16718)

(declare-fun get!23360 (Option!16718) tuple2!67612)

(assert (=> b!6932637 (= lt!2473474 (get!23360 lt!2473477))))

(declare-fun Exists!3949 (Int) Bool)

(assert (=> b!6932637 (= (Exists!3949 lambda!394559) (Exists!3949 lambda!394560))))

(declare-datatypes ((Unit!160622 0))(
  ( (Unit!160623) )
))
(declare-fun lt!2473493 () Unit!160622)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2410 (Regex!16949 Regex!16949 List!66702) Unit!160622)

(assert (=> b!6932637 (= lt!2473493 (lemmaExistCutMatchRandMatchRSpecEquivalent!2410 r2!6280 r3!135 (_2!37109 lt!2473487)))))

(declare-fun isDefined!13419 (Option!16718) Bool)

(assert (=> b!6932637 (= (isDefined!13419 lt!2473477) (Exists!3949 lambda!394559))))

(declare-fun findConcatSeparation!3132 (Regex!16949 Regex!16949 List!66702 List!66702 List!66702) Option!16718)

(assert (=> b!6932637 (= lt!2473477 (findConcatSeparation!3132 r2!6280 r3!135 Nil!66578 (_2!37109 lt!2473487) (_2!37109 lt!2473487)))))

(declare-fun lt!2473475 () Unit!160622)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2890 (Regex!16949 Regex!16949 List!66702) Unit!160622)

(assert (=> b!6932637 (= lt!2473475 (lemmaFindConcatSeparationEquivalentToExists!2890 r2!6280 r3!135 (_2!37109 lt!2473487)))))

(declare-fun matchRSpec!4006 (Regex!16949 List!66702) Bool)

(assert (=> b!6932637 (matchRSpec!4006 lt!2473481 (_2!37109 lt!2473487))))

(declare-fun lt!2473495 () Unit!160622)

(declare-fun mainMatchTheorem!4006 (Regex!16949 List!66702) Unit!160622)

(assert (=> b!6932637 (= lt!2473495 (mainMatchTheorem!4006 lt!2473481 (_2!37109 lt!2473487)))))

(declare-fun b!6932638 () Bool)

(declare-fun e!4171286 () Bool)

(declare-fun e!4171285 () Bool)

(assert (=> b!6932638 (= e!4171286 e!4171285)))

(declare-fun res!2827412 () Bool)

(assert (=> b!6932638 (=> res!2827412 e!4171285)))

(declare-fun lt!2473491 () Option!16718)

(assert (=> b!6932638 (= res!2827412 (not (isDefined!13419 lt!2473491)))))

(assert (=> b!6932638 (= lt!2473491 (findConcatSeparation!3132 r1!6342 lt!2473481 Nil!66578 s!14361 s!14361))))

(declare-fun b!6932639 () Bool)

(declare-fun e!4171288 () Bool)

(assert (=> b!6932639 (= e!4171281 e!4171288)))

(declare-fun res!2827414 () Bool)

(assert (=> b!6932639 (=> res!2827414 e!4171288)))

(declare-fun lt!2473498 () List!66702)

(assert (=> b!6932639 (= res!2827414 (not (= lt!2473498 s!14361)))))

(declare-fun ++!14988 (List!66702 List!66702) List!66702)

(assert (=> b!6932639 (= lt!2473498 (++!14988 (_1!37109 lt!2473487) (++!14988 (_1!37109 lt!2473474) (_2!37109 lt!2473474))))))

(assert (=> b!6932639 (matchRSpec!4006 r3!135 (_2!37109 lt!2473474))))

(declare-fun lt!2473485 () Unit!160622)

(assert (=> b!6932639 (= lt!2473485 (mainMatchTheorem!4006 r3!135 (_2!37109 lt!2473474)))))

(assert (=> b!6932639 (matchRSpec!4006 r2!6280 (_1!37109 lt!2473474))))

(declare-fun lt!2473492 () Unit!160622)

(assert (=> b!6932639 (= lt!2473492 (mainMatchTheorem!4006 r2!6280 (_1!37109 lt!2473474)))))

(declare-fun b!6932640 () Bool)

(declare-fun res!2827407 () Bool)

(assert (=> b!6932640 (=> (not res!2827407) (not e!4171290))))

(assert (=> b!6932640 (= res!2827407 (validRegex!8655 r3!135))))

(declare-fun b!6932641 () Bool)

(declare-fun tp!1911183 () Bool)

(declare-fun tp!1911177 () Bool)

(assert (=> b!6932641 (= e!4171282 (and tp!1911183 tp!1911177))))

(declare-fun b!6932642 () Bool)

(assert (=> b!6932642 (= e!4171289 tp_is_empty!43123)))

(declare-fun b!6932643 () Bool)

(declare-fun tp!1911178 () Bool)

(declare-fun tp!1911173 () Bool)

(assert (=> b!6932643 (= e!4171282 (and tp!1911178 tp!1911173))))

(declare-fun b!6932644 () Bool)

(declare-fun res!2827416 () Bool)

(assert (=> b!6932644 (=> res!2827416 e!4171287)))

(assert (=> b!6932644 (= res!2827416 (not (matchR!9088 lt!2473481 (_2!37109 lt!2473487))))))

(assert (=> b!6932645 (= e!4171288 true)))

(assert (=> b!6932645 (= (Exists!3949 lambda!394561) (Exists!3949 lambda!394562))))

(declare-fun lt!2473484 () Unit!160622)

(assert (=> b!6932645 (= lt!2473484 (lemmaExistCutMatchRandMatchRSpecEquivalent!2410 r1!6342 r2!6280 lt!2473478))))

(assert (=> b!6932645 (= (isDefined!13419 (findConcatSeparation!3132 r1!6342 r2!6280 Nil!66578 lt!2473478 lt!2473478)) (Exists!3949 lambda!394561))))

(declare-fun lt!2473488 () Unit!160622)

(assert (=> b!6932645 (= lt!2473488 (lemmaFindConcatSeparationEquivalentToExists!2890 r1!6342 r2!6280 lt!2473478))))

(declare-fun lt!2473489 () Regex!16949)

(assert (=> b!6932645 (= (matchR!9088 lt!2473489 lt!2473478) (matchRSpec!4006 lt!2473489 lt!2473478))))

(declare-fun lt!2473483 () Unit!160622)

(assert (=> b!6932645 (= lt!2473483 (mainMatchTheorem!4006 lt!2473489 lt!2473478))))

(assert (=> b!6932645 (= (++!14988 lt!2473478 (_2!37109 lt!2473474)) lt!2473498)))

(assert (=> b!6932645 (= lt!2473478 (++!14988 (_1!37109 lt!2473487) (_1!37109 lt!2473474)))))

(declare-fun lt!2473479 () Unit!160622)

(declare-fun lemmaConcatAssociativity!3030 (List!66702 List!66702 List!66702) Unit!160622)

(assert (=> b!6932645 (= lt!2473479 (lemmaConcatAssociativity!3030 (_1!37109 lt!2473487) (_1!37109 lt!2473474) (_2!37109 lt!2473474)))))

(assert (=> b!6932646 (= e!4171285 e!4171287)))

(declare-fun res!2827413 () Bool)

(assert (=> b!6932646 (=> res!2827413 e!4171287)))

(declare-fun lt!2473476 () Bool)

(assert (=> b!6932646 (= res!2827413 (not lt!2473476))))

(assert (=> b!6932646 (= lt!2473476 (matchRSpec!4006 r1!6342 (_1!37109 lt!2473487)))))

(assert (=> b!6932646 (= lt!2473476 (matchR!9088 r1!6342 (_1!37109 lt!2473487)))))

(declare-fun lt!2473490 () Unit!160622)

(assert (=> b!6932646 (= lt!2473490 (mainMatchTheorem!4006 r1!6342 (_1!37109 lt!2473487)))))

(assert (=> b!6932646 (= lt!2473487 (get!23360 lt!2473491))))

(assert (=> b!6932646 (= (Exists!3949 lambda!394557) (Exists!3949 lambda!394558))))

(declare-fun lt!2473482 () Unit!160622)

(assert (=> b!6932646 (= lt!2473482 (lemmaExistCutMatchRandMatchRSpecEquivalent!2410 r1!6342 lt!2473481 s!14361))))

(assert (=> b!6932646 (Exists!3949 lambda!394557)))

(declare-fun lt!2473496 () Unit!160622)

(assert (=> b!6932646 (= lt!2473496 (lemmaFindConcatSeparationEquivalentToExists!2890 r1!6342 lt!2473481 s!14361))))

(declare-fun b!6932647 () Bool)

(declare-fun res!2827410 () Bool)

(assert (=> b!6932647 (=> res!2827410 e!4171281)))

(assert (=> b!6932647 (= res!2827410 (not (matchR!9088 r3!135 (_2!37109 lt!2473474))))))

(declare-fun b!6932648 () Bool)

(declare-fun res!2827409 () Bool)

(assert (=> b!6932648 (=> (not res!2827409) (not e!4171290))))

(assert (=> b!6932648 (= res!2827409 (validRegex!8655 r2!6280))))

(declare-fun b!6932649 () Bool)

(declare-fun tp!1911172 () Bool)

(declare-fun tp!1911186 () Bool)

(assert (=> b!6932649 (= e!4171283 (and tp!1911172 tp!1911186))))

(declare-fun b!6932650 () Bool)

(declare-fun tp!1911176 () Bool)

(declare-fun tp!1911179 () Bool)

(assert (=> b!6932650 (= e!4171289 (and tp!1911176 tp!1911179))))

(declare-fun b!6932651 () Bool)

(assert (=> b!6932651 (= e!4171290 (not e!4171286))))

(declare-fun res!2827415 () Bool)

(assert (=> b!6932651 (=> res!2827415 e!4171286)))

(declare-fun lt!2473499 () Bool)

(assert (=> b!6932651 (= res!2827415 lt!2473499)))

(declare-fun lt!2473486 () Regex!16949)

(assert (=> b!6932651 (= (matchR!9088 lt!2473486 s!14361) (matchRSpec!4006 lt!2473486 s!14361))))

(declare-fun lt!2473480 () Unit!160622)

(assert (=> b!6932651 (= lt!2473480 (mainMatchTheorem!4006 lt!2473486 s!14361))))

(declare-fun lt!2473494 () Regex!16949)

(assert (=> b!6932651 (= lt!2473499 (matchRSpec!4006 lt!2473494 s!14361))))

(assert (=> b!6932651 (= lt!2473499 (matchR!9088 lt!2473494 s!14361))))

(declare-fun lt!2473497 () Unit!160622)

(assert (=> b!6932651 (= lt!2473497 (mainMatchTheorem!4006 lt!2473494 s!14361))))

(assert (=> b!6932651 (= lt!2473486 (Concat!25794 r1!6342 lt!2473481))))

(assert (=> b!6932651 (= lt!2473481 (Concat!25794 r2!6280 r3!135))))

(assert (=> b!6932651 (= lt!2473494 (Concat!25794 lt!2473489 r3!135))))

(assert (=> b!6932651 (= lt!2473489 (Concat!25794 r1!6342 r2!6280))))

(assert (= (and start!666174 res!2827411) b!6932648))

(assert (= (and b!6932648 res!2827409) b!6932640))

(assert (= (and b!6932640 res!2827407) b!6932651))

(assert (= (and b!6932651 (not res!2827415)) b!6932638))

(assert (= (and b!6932638 (not res!2827412)) b!6932646))

(assert (= (and b!6932646 (not res!2827413)) b!6932644))

(assert (= (and b!6932644 (not res!2827416)) b!6932637))

(assert (= (and b!6932637 (not res!2827408)) b!6932647))

(assert (= (and b!6932647 (not res!2827410)) b!6932639))

(assert (= (and b!6932639 (not res!2827414)) b!6932645))

(get-info :version)

(assert (= (and start!666174 ((_ is ElementMatch!16949) r1!6342)) b!6932632))

(assert (= (and start!666174 ((_ is Concat!25794) r1!6342)) b!6932643))

(assert (= (and start!666174 ((_ is Star!16949) r1!6342)) b!6932633))

(assert (= (and start!666174 ((_ is Union!16949) r1!6342)) b!6932641))

(assert (= (and start!666174 ((_ is ElementMatch!16949) r2!6280)) b!6932642))

(assert (= (and start!666174 ((_ is Concat!25794) r2!6280)) b!6932650))

(assert (= (and start!666174 ((_ is Star!16949) r2!6280)) b!6932634))

(assert (= (and start!666174 ((_ is Union!16949) r2!6280)) b!6932630))

(assert (= (and start!666174 ((_ is ElementMatch!16949) r3!135)) b!6932635))

(assert (= (and start!666174 ((_ is Concat!25794) r3!135)) b!6932649))

(assert (= (and start!666174 ((_ is Star!16949) r3!135)) b!6932636))

(assert (= (and start!666174 ((_ is Union!16949) r3!135)) b!6932629))

(assert (= (and start!666174 ((_ is Cons!66578) s!14361)) b!6932631))

(declare-fun m!7639186 () Bool)

(assert (=> b!6932644 m!7639186))

(declare-fun m!7639188 () Bool)

(assert (=> start!666174 m!7639188))

(declare-fun m!7639190 () Bool)

(assert (=> b!6932638 m!7639190))

(declare-fun m!7639192 () Bool)

(assert (=> b!6932638 m!7639192))

(declare-fun m!7639194 () Bool)

(assert (=> b!6932646 m!7639194))

(declare-fun m!7639196 () Bool)

(assert (=> b!6932646 m!7639196))

(declare-fun m!7639198 () Bool)

(assert (=> b!6932646 m!7639198))

(declare-fun m!7639200 () Bool)

(assert (=> b!6932646 m!7639200))

(declare-fun m!7639202 () Bool)

(assert (=> b!6932646 m!7639202))

(declare-fun m!7639204 () Bool)

(assert (=> b!6932646 m!7639204))

(declare-fun m!7639206 () Bool)

(assert (=> b!6932646 m!7639206))

(assert (=> b!6932646 m!7639206))

(declare-fun m!7639208 () Bool)

(assert (=> b!6932646 m!7639208))

(declare-fun m!7639210 () Bool)

(assert (=> b!6932647 m!7639210))

(declare-fun m!7639212 () Bool)

(assert (=> b!6932639 m!7639212))

(declare-fun m!7639214 () Bool)

(assert (=> b!6932639 m!7639214))

(declare-fun m!7639216 () Bool)

(assert (=> b!6932639 m!7639216))

(declare-fun m!7639218 () Bool)

(assert (=> b!6932639 m!7639218))

(assert (=> b!6932639 m!7639212))

(declare-fun m!7639220 () Bool)

(assert (=> b!6932639 m!7639220))

(declare-fun m!7639222 () Bool)

(assert (=> b!6932639 m!7639222))

(declare-fun m!7639224 () Bool)

(assert (=> b!6932645 m!7639224))

(declare-fun m!7639226 () Bool)

(assert (=> b!6932645 m!7639226))

(declare-fun m!7639228 () Bool)

(assert (=> b!6932645 m!7639228))

(declare-fun m!7639230 () Bool)

(assert (=> b!6932645 m!7639230))

(declare-fun m!7639232 () Bool)

(assert (=> b!6932645 m!7639232))

(declare-fun m!7639234 () Bool)

(assert (=> b!6932645 m!7639234))

(declare-fun m!7639236 () Bool)

(assert (=> b!6932645 m!7639236))

(declare-fun m!7639238 () Bool)

(assert (=> b!6932645 m!7639238))

(declare-fun m!7639240 () Bool)

(assert (=> b!6932645 m!7639240))

(declare-fun m!7639242 () Bool)

(assert (=> b!6932645 m!7639242))

(assert (=> b!6932645 m!7639228))

(assert (=> b!6932645 m!7639224))

(declare-fun m!7639244 () Bool)

(assert (=> b!6932645 m!7639244))

(declare-fun m!7639246 () Bool)

(assert (=> b!6932645 m!7639246))

(declare-fun m!7639248 () Bool)

(assert (=> b!6932640 m!7639248))

(declare-fun m!7639250 () Bool)

(assert (=> b!6932637 m!7639250))

(declare-fun m!7639252 () Bool)

(assert (=> b!6932637 m!7639252))

(declare-fun m!7639254 () Bool)

(assert (=> b!6932637 m!7639254))

(declare-fun m!7639256 () Bool)

(assert (=> b!6932637 m!7639256))

(declare-fun m!7639258 () Bool)

(assert (=> b!6932637 m!7639258))

(declare-fun m!7639260 () Bool)

(assert (=> b!6932637 m!7639260))

(declare-fun m!7639262 () Bool)

(assert (=> b!6932637 m!7639262))

(assert (=> b!6932637 m!7639254))

(declare-fun m!7639264 () Bool)

(assert (=> b!6932637 m!7639264))

(declare-fun m!7639266 () Bool)

(assert (=> b!6932637 m!7639266))

(declare-fun m!7639268 () Bool)

(assert (=> b!6932637 m!7639268))

(declare-fun m!7639270 () Bool)

(assert (=> b!6932648 m!7639270))

(declare-fun m!7639272 () Bool)

(assert (=> b!6932651 m!7639272))

(declare-fun m!7639274 () Bool)

(assert (=> b!6932651 m!7639274))

(declare-fun m!7639276 () Bool)

(assert (=> b!6932651 m!7639276))

(declare-fun m!7639278 () Bool)

(assert (=> b!6932651 m!7639278))

(declare-fun m!7639280 () Bool)

(assert (=> b!6932651 m!7639280))

(declare-fun m!7639282 () Bool)

(assert (=> b!6932651 m!7639282))

(check-sat (not b!6932639) (not b!6932646) (not b!6932641) (not b!6932648) (not b!6932640) (not b!6932629) (not b!6932651) tp_is_empty!43123 (not b!6932649) (not b!6932643) (not b!6932644) (not b!6932638) (not b!6932647) (not b!6932633) (not b!6932637) (not start!666174) (not b!6932630) (not b!6932634) (not b!6932645) (not b!6932636) (not b!6932631) (not b!6932650))
(check-sat)
