; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752960 () Bool)

(assert start!752960)

(declare-fun b!8003361 () Bool)

(declare-fun e!4714560 () Bool)

(declare-fun e!4714563 () Bool)

(assert (=> b!8003361 (= e!4714560 (not e!4714563))))

(declare-fun res!3164748 () Bool)

(assert (=> b!8003361 (=> res!3164748 e!4714563)))

(declare-datatypes ((C!43548 0))(
  ( (C!43549 (val!32322 Int)) )
))
(declare-datatypes ((List!74834 0))(
  ( (Nil!74710) (Cons!74710 (h!81158 C!43548) (t!390577 List!74834)) )
))
(declare-fun testedP!353 () List!74834)

(declare-fun totalInput!1349 () List!74834)

(declare-fun isPrefix!6659 (List!74834 List!74834) Bool)

(assert (=> b!8003361 (= res!3164748 (not (isPrefix!6659 testedP!353 totalInput!1349)))))

(declare-fun lt!2713915 () List!74834)

(assert (=> b!8003361 (isPrefix!6659 testedP!353 lt!2713915)))

(declare-datatypes ((Unit!170604 0))(
  ( (Unit!170605) )
))
(declare-fun lt!2713913 () Unit!170604)

(declare-fun testedSuffix!271 () List!74834)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3890 (List!74834 List!74834) Unit!170604)

(assert (=> b!8003361 (= lt!2713913 (lemmaConcatTwoListThenFirstIsPrefix!3890 testedP!353 testedSuffix!271))))

(declare-fun b!8003362 () Bool)

(declare-fun e!4714557 () Bool)

(declare-fun tp_is_empty!53753 () Bool)

(declare-fun tp!2394340 () Bool)

(assert (=> b!8003362 (= e!4714557 (and tp_is_empty!53753 tp!2394340))))

(declare-fun b!8003363 () Bool)

(declare-fun e!4714559 () Bool)

(declare-fun tp!2394339 () Bool)

(assert (=> b!8003363 (= e!4714559 (and tp_is_empty!53753 tp!2394339))))

(declare-fun b!8003364 () Bool)

(declare-fun e!4714562 () Bool)

(declare-fun tp!2394343 () Bool)

(assert (=> b!8003364 (= e!4714562 tp!2394343)))

(declare-fun res!3164750 () Bool)

(declare-fun e!4714561 () Bool)

(assert (=> start!752960 (=> (not res!3164750) (not e!4714561))))

(declare-datatypes ((Regex!21605 0))(
  ( (ElementMatch!21605 (c!1469398 C!43548)) (Concat!30604 (regOne!43722 Regex!21605) (regTwo!43722 Regex!21605)) (EmptyExpr!21605) (Star!21605 (reg!21934 Regex!21605)) (EmptyLang!21605) (Union!21605 (regOne!43723 Regex!21605) (regTwo!43723 Regex!21605)) )
))
(declare-fun r!15422 () Regex!21605)

(declare-fun validRegex!11909 (Regex!21605) Bool)

(assert (=> start!752960 (= res!3164750 (validRegex!11909 r!15422))))

(assert (=> start!752960 e!4714561))

(declare-fun e!4714558 () Bool)

(assert (=> start!752960 e!4714558))

(assert (=> start!752960 true))

(assert (=> start!752960 e!4714557))

(assert (=> start!752960 e!4714562))

(assert (=> start!752960 e!4714559))

(declare-fun b!8003365 () Bool)

(assert (=> b!8003365 (= e!4714561 e!4714560)))

(declare-fun res!3164752 () Bool)

(assert (=> b!8003365 (=> (not res!3164752) (not e!4714560))))

(assert (=> b!8003365 (= res!3164752 (= lt!2713915 totalInput!1349))))

(declare-fun ++!18431 (List!74834 List!74834) List!74834)

(assert (=> b!8003365 (= lt!2713915 (++!18431 testedP!353 testedSuffix!271))))

(declare-fun b!8003366 () Bool)

(assert (=> b!8003366 (= e!4714562 tp_is_empty!53753)))

(declare-fun b!8003367 () Bool)

(declare-fun tp!2394344 () Bool)

(assert (=> b!8003367 (= e!4714558 (and tp_is_empty!53753 tp!2394344))))

(declare-fun b!8003368 () Bool)

(assert (=> b!8003368 (= e!4714563 true)))

(declare-fun lt!2713914 () List!74834)

(declare-fun getSuffix!3856 (List!74834 List!74834) List!74834)

(assert (=> b!8003368 (= lt!2713914 (++!18431 testedP!353 (getSuffix!3856 totalInput!1349 testedP!353)))))

(declare-fun b!8003369 () Bool)

(declare-fun tp!2394346 () Bool)

(declare-fun tp!2394341 () Bool)

(assert (=> b!8003369 (= e!4714562 (and tp!2394346 tp!2394341))))

(declare-fun b!8003370 () Bool)

(declare-fun tp!2394342 () Bool)

(declare-fun tp!2394345 () Bool)

(assert (=> b!8003370 (= e!4714562 (and tp!2394342 tp!2394345))))

(declare-fun b!8003371 () Bool)

(declare-fun res!3164749 () Bool)

(assert (=> b!8003371 (=> (not res!3164749) (not e!4714560))))

(declare-fun totalInputSize!629 () Int)

(declare-fun size!43507 (List!74834) Int)

(assert (=> b!8003371 (= res!3164749 (= totalInputSize!629 (size!43507 totalInput!1349)))))

(declare-fun b!8003372 () Bool)

(declare-fun res!3164751 () Bool)

(assert (=> b!8003372 (=> (not res!3164751) (not e!4714560))))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8003372 (= res!3164751 (= testedPSize!271 (size!43507 testedP!353)))))

(assert (= (and start!752960 res!3164750) b!8003365))

(assert (= (and b!8003365 res!3164752) b!8003372))

(assert (= (and b!8003372 res!3164751) b!8003371))

(assert (= (and b!8003371 res!3164749) b!8003361))

(assert (= (and b!8003361 (not res!3164748)) b!8003368))

(get-info :version)

(assert (= (and start!752960 ((_ is Cons!74710) totalInput!1349)) b!8003367))

(assert (= (and start!752960 ((_ is Cons!74710) testedSuffix!271)) b!8003362))

(assert (= (and start!752960 ((_ is ElementMatch!21605) r!15422)) b!8003366))

(assert (= (and start!752960 ((_ is Concat!30604) r!15422)) b!8003369))

(assert (= (and start!752960 ((_ is Star!21605) r!15422)) b!8003364))

(assert (= (and start!752960 ((_ is Union!21605) r!15422)) b!8003370))

(assert (= (and start!752960 ((_ is Cons!74710) testedP!353)) b!8003363))

(declare-fun m!8369428 () Bool)

(assert (=> b!8003371 m!8369428))

(declare-fun m!8369430 () Bool)

(assert (=> start!752960 m!8369430))

(declare-fun m!8369432 () Bool)

(assert (=> b!8003361 m!8369432))

(declare-fun m!8369434 () Bool)

(assert (=> b!8003361 m!8369434))

(declare-fun m!8369436 () Bool)

(assert (=> b!8003361 m!8369436))

(declare-fun m!8369438 () Bool)

(assert (=> b!8003368 m!8369438))

(assert (=> b!8003368 m!8369438))

(declare-fun m!8369440 () Bool)

(assert (=> b!8003368 m!8369440))

(declare-fun m!8369442 () Bool)

(assert (=> b!8003372 m!8369442))

(declare-fun m!8369444 () Bool)

(assert (=> b!8003365 m!8369444))

(check-sat (not b!8003365) (not b!8003364) (not b!8003368) (not b!8003371) (not b!8003362) (not b!8003367) (not b!8003361) (not b!8003370) (not start!752960) (not b!8003369) (not b!8003363) (not b!8003372) tp_is_empty!53753)
(check-sat)
