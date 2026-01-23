; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753868 () Bool)

(assert start!753868)

(declare-fun b!8011361 () Bool)

(declare-fun e!4719268 () Bool)

(declare-fun tp!2397636 () Bool)

(declare-fun tp!2397642 () Bool)

(assert (=> b!8011361 (= e!4719268 (and tp!2397636 tp!2397642))))

(declare-fun b!8011362 () Bool)

(declare-fun e!4719271 () Bool)

(declare-fun tp_is_empty!53877 () Bool)

(declare-fun tp!2397638 () Bool)

(assert (=> b!8011362 (= e!4719271 (and tp_is_empty!53877 tp!2397638))))

(declare-fun b!8011363 () Bool)

(declare-fun tp!2397641 () Bool)

(assert (=> b!8011363 (= e!4719268 tp!2397641)))

(declare-fun b!8011365 () Bool)

(declare-fun tp!2397640 () Bool)

(declare-fun tp!2397639 () Bool)

(assert (=> b!8011365 (= e!4719268 (and tp!2397640 tp!2397639))))

(declare-fun b!8011366 () Bool)

(declare-fun res!3167777 () Bool)

(declare-fun e!4719267 () Bool)

(assert (=> b!8011366 (=> (not res!3167777) (not e!4719267))))

(declare-fun totalInputSize!629 () Int)

(declare-datatypes ((C!43672 0))(
  ( (C!43673 (val!32384 Int)) )
))
(declare-datatypes ((List!74896 0))(
  ( (Nil!74772) (Cons!74772 (h!81220 C!43672) (t!390639 List!74896)) )
))
(declare-fun totalInput!1349 () List!74896)

(declare-fun size!43569 (List!74896) Int)

(assert (=> b!8011366 (= res!3167777 (= totalInputSize!629 (size!43569 totalInput!1349)))))

(declare-fun b!8011367 () Bool)

(declare-fun res!3167776 () Bool)

(assert (=> b!8011367 (=> (not res!3167776) (not e!4719267))))

(declare-fun testedPSize!271 () Int)

(declare-fun testedP!353 () List!74896)

(assert (=> b!8011367 (= res!3167776 (= testedPSize!271 (size!43569 testedP!353)))))

(declare-fun b!8011368 () Bool)

(assert (=> b!8011368 (= e!4719268 tp_is_empty!53877)))

(declare-fun b!8011369 () Bool)

(declare-fun e!4719270 () Bool)

(declare-fun tp!2397635 () Bool)

(assert (=> b!8011369 (= e!4719270 (and tp_is_empty!53877 tp!2397635))))

(declare-fun b!8011370 () Bool)

(declare-fun e!4719265 () Bool)

(assert (=> b!8011370 (= e!4719267 (not e!4719265))))

(declare-fun res!3167775 () Bool)

(assert (=> b!8011370 (=> res!3167775 e!4719265)))

(declare-fun isPrefix!6719 (List!74896 List!74896) Bool)

(assert (=> b!8011370 (= res!3167775 (not (isPrefix!6719 testedP!353 totalInput!1349)))))

(declare-fun lt!2716901 () List!74896)

(assert (=> b!8011370 (isPrefix!6719 testedP!353 lt!2716901)))

(declare-datatypes ((Unit!170800 0))(
  ( (Unit!170801) )
))
(declare-fun lt!2716900 () Unit!170800)

(declare-fun testedSuffix!271 () List!74896)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3950 (List!74896 List!74896) Unit!170800)

(assert (=> b!8011370 (= lt!2716900 (lemmaConcatTwoListThenFirstIsPrefix!3950 testedP!353 testedSuffix!271))))

(declare-fun b!8011364 () Bool)

(declare-fun e!4719269 () Bool)

(declare-fun tp!2397637 () Bool)

(assert (=> b!8011364 (= e!4719269 (and tp_is_empty!53877 tp!2397637))))

(declare-fun res!3167774 () Bool)

(declare-fun e!4719266 () Bool)

(assert (=> start!753868 (=> (not res!3167774) (not e!4719266))))

(declare-datatypes ((Regex!21667 0))(
  ( (ElementMatch!21667 (c!1470506 C!43672)) (Concat!30666 (regOne!43846 Regex!21667) (regTwo!43846 Regex!21667)) (EmptyExpr!21667) (Star!21667 (reg!21996 Regex!21667)) (EmptyLang!21667) (Union!21667 (regOne!43847 Regex!21667) (regTwo!43847 Regex!21667)) )
))
(declare-fun r!15422 () Regex!21667)

(declare-fun validRegex!11971 (Regex!21667) Bool)

(assert (=> start!753868 (= res!3167774 (validRegex!11971 r!15422))))

(assert (=> start!753868 e!4719266))

(assert (=> start!753868 e!4719270))

(assert (=> start!753868 true))

(assert (=> start!753868 e!4719269))

(assert (=> start!753868 e!4719268))

(assert (=> start!753868 e!4719271))

(declare-fun b!8011371 () Bool)

(declare-fun lt!2716902 () List!74896)

(assert (=> b!8011371 (= e!4719265 (= lt!2716902 testedSuffix!271))))

(assert (=> b!8011371 (= testedSuffix!271 lt!2716902)))

(declare-fun lt!2716903 () Unit!170800)

(declare-fun lemmaSamePrefixThenSameSuffix!3076 (List!74896 List!74896 List!74896 List!74896 List!74896) Unit!170800)

(assert (=> b!8011371 (= lt!2716903 (lemmaSamePrefixThenSameSuffix!3076 testedP!353 testedSuffix!271 testedP!353 lt!2716902 totalInput!1349))))

(declare-fun getSuffix!3914 (List!74896 List!74896) List!74896)

(assert (=> b!8011371 (= lt!2716902 (getSuffix!3914 totalInput!1349 testedP!353))))

(declare-fun b!8011372 () Bool)

(assert (=> b!8011372 (= e!4719266 e!4719267)))

(declare-fun res!3167778 () Bool)

(assert (=> b!8011372 (=> (not res!3167778) (not e!4719267))))

(assert (=> b!8011372 (= res!3167778 (= lt!2716901 totalInput!1349))))

(declare-fun ++!18493 (List!74896 List!74896) List!74896)

(assert (=> b!8011372 (= lt!2716901 (++!18493 testedP!353 testedSuffix!271))))

(assert (= (and start!753868 res!3167774) b!8011372))

(assert (= (and b!8011372 res!3167778) b!8011367))

(assert (= (and b!8011367 res!3167776) b!8011366))

(assert (= (and b!8011366 res!3167777) b!8011370))

(assert (= (and b!8011370 (not res!3167775)) b!8011371))

(get-info :version)

(assert (= (and start!753868 ((_ is Cons!74772) totalInput!1349)) b!8011369))

(assert (= (and start!753868 ((_ is Cons!74772) testedSuffix!271)) b!8011364))

(assert (= (and start!753868 ((_ is ElementMatch!21667) r!15422)) b!8011368))

(assert (= (and start!753868 ((_ is Concat!30666) r!15422)) b!8011365))

(assert (= (and start!753868 ((_ is Star!21667) r!15422)) b!8011363))

(assert (= (and start!753868 ((_ is Union!21667) r!15422)) b!8011361))

(assert (= (and start!753868 ((_ is Cons!74772) testedP!353)) b!8011362))

(declare-fun m!8375324 () Bool)

(assert (=> b!8011367 m!8375324))

(declare-fun m!8375326 () Bool)

(assert (=> b!8011372 m!8375326))

(declare-fun m!8375328 () Bool)

(assert (=> b!8011366 m!8375328))

(declare-fun m!8375330 () Bool)

(assert (=> b!8011370 m!8375330))

(declare-fun m!8375332 () Bool)

(assert (=> b!8011370 m!8375332))

(declare-fun m!8375334 () Bool)

(assert (=> b!8011370 m!8375334))

(declare-fun m!8375336 () Bool)

(assert (=> start!753868 m!8375336))

(declare-fun m!8375338 () Bool)

(assert (=> b!8011371 m!8375338))

(declare-fun m!8375340 () Bool)

(assert (=> b!8011371 m!8375340))

(check-sat (not b!8011363) (not b!8011361) (not b!8011362) (not b!8011365) tp_is_empty!53877 (not b!8011371) (not b!8011364) (not b!8011370) (not b!8011367) (not start!753868) (not b!8011372) (not b!8011366) (not b!8011369))
(check-sat)
