; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752956 () Bool)

(assert start!752956)

(declare-fun b!8003290 () Bool)

(declare-fun e!4714520 () Bool)

(declare-fun tp!2394296 () Bool)

(assert (=> b!8003290 (= e!4714520 tp!2394296)))

(declare-fun b!8003291 () Bool)

(declare-fun e!4714518 () Bool)

(declare-fun tp_is_empty!53749 () Bool)

(declare-fun tp!2394292 () Bool)

(assert (=> b!8003291 (= e!4714518 (and tp_is_empty!53749 tp!2394292))))

(declare-fun b!8003292 () Bool)

(declare-fun res!3164722 () Bool)

(declare-fun e!4714519 () Bool)

(assert (=> b!8003292 (=> (not res!3164722) (not e!4714519))))

(declare-fun testedPSize!271 () Int)

(declare-datatypes ((C!43544 0))(
  ( (C!43545 (val!32320 Int)) )
))
(declare-datatypes ((List!74832 0))(
  ( (Nil!74708) (Cons!74708 (h!81156 C!43544) (t!390575 List!74832)) )
))
(declare-fun testedP!353 () List!74832)

(declare-fun size!43505 (List!74832) Int)

(assert (=> b!8003292 (= res!3164722 (= testedPSize!271 (size!43505 testedP!353)))))

(declare-fun b!8003293 () Bool)

(declare-fun e!4714517 () Bool)

(assert (=> b!8003293 (= e!4714517 e!4714519)))

(declare-fun res!3164719 () Bool)

(assert (=> b!8003293 (=> (not res!3164719) (not e!4714519))))

(declare-fun lt!2713896 () List!74832)

(declare-fun totalInput!1349 () List!74832)

(assert (=> b!8003293 (= res!3164719 (= lt!2713896 totalInput!1349))))

(declare-fun testedSuffix!271 () List!74832)

(declare-fun ++!18429 (List!74832 List!74832) List!74832)

(assert (=> b!8003293 (= lt!2713896 (++!18429 testedP!353 testedSuffix!271))))

(declare-fun b!8003294 () Bool)

(assert (=> b!8003294 (= e!4714519 (not true))))

(declare-fun lt!2713895 () Bool)

(declare-fun isPrefix!6657 (List!74832 List!74832) Bool)

(assert (=> b!8003294 (= lt!2713895 (isPrefix!6657 testedP!353 totalInput!1349))))

(assert (=> b!8003294 (isPrefix!6657 testedP!353 lt!2713896)))

(declare-datatypes ((Unit!170600 0))(
  ( (Unit!170601) )
))
(declare-fun lt!2713897 () Unit!170600)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3888 (List!74832 List!74832) Unit!170600)

(assert (=> b!8003294 (= lt!2713897 (lemmaConcatTwoListThenFirstIsPrefix!3888 testedP!353 testedSuffix!271))))

(declare-fun b!8003295 () Bool)

(declare-fun e!4714516 () Bool)

(declare-fun tp!2394293 () Bool)

(assert (=> b!8003295 (= e!4714516 (and tp_is_empty!53749 tp!2394293))))

(declare-fun b!8003296 () Bool)

(declare-fun tp!2394291 () Bool)

(declare-fun tp!2394297 () Bool)

(assert (=> b!8003296 (= e!4714520 (and tp!2394291 tp!2394297))))

(declare-fun b!8003297 () Bool)

(declare-fun res!3164721 () Bool)

(assert (=> b!8003297 (=> (not res!3164721) (not e!4714519))))

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8003297 (= res!3164721 (= totalInputSize!629 (size!43505 totalInput!1349)))))

(declare-fun b!8003298 () Bool)

(declare-fun e!4714521 () Bool)

(declare-fun tp!2394298 () Bool)

(assert (=> b!8003298 (= e!4714521 (and tp_is_empty!53749 tp!2394298))))

(declare-fun res!3164720 () Bool)

(assert (=> start!752956 (=> (not res!3164720) (not e!4714517))))

(declare-datatypes ((Regex!21603 0))(
  ( (ElementMatch!21603 (c!1469396 C!43544)) (Concat!30602 (regOne!43718 Regex!21603) (regTwo!43718 Regex!21603)) (EmptyExpr!21603) (Star!21603 (reg!21932 Regex!21603)) (EmptyLang!21603) (Union!21603 (regOne!43719 Regex!21603) (regTwo!43719 Regex!21603)) )
))
(declare-fun r!15422 () Regex!21603)

(declare-fun validRegex!11907 (Regex!21603) Bool)

(assert (=> start!752956 (= res!3164720 (validRegex!11907 r!15422))))

(assert (=> start!752956 e!4714517))

(assert (=> start!752956 e!4714518))

(assert (=> start!752956 true))

(assert (=> start!752956 e!4714521))

(assert (=> start!752956 e!4714520))

(assert (=> start!752956 e!4714516))

(declare-fun b!8003299 () Bool)

(assert (=> b!8003299 (= e!4714520 tp_is_empty!53749)))

(declare-fun b!8003300 () Bool)

(declare-fun tp!2394295 () Bool)

(declare-fun tp!2394294 () Bool)

(assert (=> b!8003300 (= e!4714520 (and tp!2394295 tp!2394294))))

(assert (= (and start!752956 res!3164720) b!8003293))

(assert (= (and b!8003293 res!3164719) b!8003292))

(assert (= (and b!8003292 res!3164722) b!8003297))

(assert (= (and b!8003297 res!3164721) b!8003294))

(get-info :version)

(assert (= (and start!752956 ((_ is Cons!74708) totalInput!1349)) b!8003291))

(assert (= (and start!752956 ((_ is Cons!74708) testedSuffix!271)) b!8003298))

(assert (= (and start!752956 ((_ is ElementMatch!21603) r!15422)) b!8003299))

(assert (= (and start!752956 ((_ is Concat!30602) r!15422)) b!8003300))

(assert (= (and start!752956 ((_ is Star!21603) r!15422)) b!8003290))

(assert (= (and start!752956 ((_ is Union!21603) r!15422)) b!8003296))

(assert (= (and start!752956 ((_ is Cons!74708) testedP!353)) b!8003295))

(declare-fun m!8369396 () Bool)

(assert (=> b!8003294 m!8369396))

(declare-fun m!8369398 () Bool)

(assert (=> b!8003294 m!8369398))

(declare-fun m!8369400 () Bool)

(assert (=> b!8003294 m!8369400))

(declare-fun m!8369402 () Bool)

(assert (=> b!8003297 m!8369402))

(declare-fun m!8369404 () Bool)

(assert (=> b!8003293 m!8369404))

(declare-fun m!8369406 () Bool)

(assert (=> b!8003292 m!8369406))

(declare-fun m!8369408 () Bool)

(assert (=> start!752956 m!8369408))

(check-sat (not b!8003297) tp_is_empty!53749 (not b!8003292) (not start!752956) (not b!8003296) (not b!8003294) (not b!8003290) (not b!8003291) (not b!8003298) (not b!8003295) (not b!8003293) (not b!8003300))
(check-sat)
