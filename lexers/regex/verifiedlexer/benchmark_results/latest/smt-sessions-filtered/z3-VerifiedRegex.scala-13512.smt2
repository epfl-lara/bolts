; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728348 () Bool)

(assert start!728348)

(declare-fun res!3016405 () Bool)

(declare-fun e!4486046 () Bool)

(assert (=> start!728348 (=> (not res!3016405) (not e!4486046))))

(declare-datatypes ((C!39964 0))(
  ( (C!39965 (val!30422 Int)) )
))
(declare-datatypes ((Regex!19819 0))(
  ( (ElementMatch!19819 (c!1390268 C!39964)) (Concat!28664 (regOne!40150 Regex!19819) (regTwo!40150 Regex!19819)) (EmptyExpr!19819) (Star!19819 (reg!20148 Regex!19819)) (EmptyLang!19819) (Union!19819 (regOne!40151 Regex!19819) (regTwo!40151 Regex!19819)) )
))
(declare-fun baseR!93 () Regex!19819)

(declare-fun validRegex!10247 (Regex!19819) Bool)

(assert (=> start!728348 (= res!3016405 (validRegex!10247 baseR!93))))

(assert (=> start!728348 e!4486046))

(declare-fun e!4486041 () Bool)

(assert (=> start!728348 e!4486041))

(declare-fun e!4486040 () Bool)

(assert (=> start!728348 e!4486040))

(declare-fun e!4486043 () Bool)

(assert (=> start!728348 e!4486043))

(declare-fun e!4486044 () Bool)

(assert (=> start!728348 e!4486044))

(declare-fun b!7526253 () Bool)

(declare-fun tp_is_empty!49993 () Bool)

(assert (=> b!7526253 (= e!4486041 tp_is_empty!49993)))

(declare-fun b!7526254 () Bool)

(declare-fun res!3016403 () Bool)

(assert (=> b!7526254 (=> (not res!3016403) (not e!4486046))))

(declare-datatypes ((List!72702 0))(
  ( (Nil!72578) (Cons!72578 (h!79026 C!39964) (t!387409 List!72702)) )
))
(declare-fun returnP!57 () List!72702)

(declare-fun input!6727 () List!72702)

(declare-fun isPrefix!6025 (List!72702 List!72702) Bool)

(assert (=> b!7526254 (= res!3016403 (isPrefix!6025 returnP!57 input!6727))))

(declare-fun b!7526255 () Bool)

(declare-fun tp!2187353 () Bool)

(assert (=> b!7526255 (= e!4486041 tp!2187353)))

(declare-fun b!7526256 () Bool)

(declare-fun res!3016397 () Bool)

(declare-fun e!4486042 () Bool)

(assert (=> b!7526256 (=> (not res!3016397) (not e!4486042))))

(declare-fun lt!2638768 () Int)

(declare-fun lt!2638766 () Int)

(assert (=> b!7526256 (= res!3016397 (>= lt!2638768 lt!2638766))))

(declare-fun b!7526257 () Bool)

(declare-fun tp!2187346 () Bool)

(assert (=> b!7526257 (= e!4486043 (and tp_is_empty!49993 tp!2187346))))

(declare-fun b!7526258 () Bool)

(declare-fun tp!2187351 () Bool)

(declare-fun tp!2187350 () Bool)

(assert (=> b!7526258 (= e!4486041 (and tp!2187351 tp!2187350))))

(declare-fun b!7526259 () Bool)

(declare-fun res!3016404 () Bool)

(assert (=> b!7526259 (=> (not res!3016404) (not e!4486042))))

(declare-fun bigger!57 () List!72702)

(declare-fun matchR!9423 (Regex!19819 List!72702) Bool)

(assert (=> b!7526259 (= res!3016404 (matchR!9423 baseR!93 bigger!57))))

(declare-fun b!7526260 () Bool)

(declare-fun res!3016406 () Bool)

(assert (=> b!7526260 (=> (not res!3016406) (not e!4486042))))

(assert (=> b!7526260 (= res!3016406 (isPrefix!6025 Nil!72578 input!6727))))

(declare-fun b!7526261 () Bool)

(declare-fun tp!2187348 () Bool)

(declare-fun tp!2187352 () Bool)

(assert (=> b!7526261 (= e!4486041 (and tp!2187348 tp!2187352))))

(declare-fun b!7526262 () Bool)

(declare-fun res!3016402 () Bool)

(assert (=> b!7526262 (=> (not res!3016402) (not e!4486042))))

(declare-fun lt!2638770 () Int)

(assert (=> b!7526262 (= res!3016402 (not (= lt!2638768 lt!2638770)))))

(declare-fun b!7526263 () Bool)

(declare-fun e!4486047 () Bool)

(assert (=> b!7526263 (= e!4486047 e!4486042)))

(declare-fun res!3016401 () Bool)

(assert (=> b!7526263 (=> (not res!3016401) (not e!4486042))))

(declare-datatypes ((tuple2!68780 0))(
  ( (tuple2!68781 (_1!37693 List!72702) (_2!37693 List!72702)) )
))
(declare-fun findLongestMatchInner!2098 (Regex!19819 List!72702 Int List!72702 List!72702 Int) tuple2!68780)

(declare-fun size!42315 (List!72702) Int)

(assert (=> b!7526263 (= res!3016401 (= (_1!37693 (findLongestMatchInner!2098 baseR!93 Nil!72578 lt!2638766 input!6727 input!6727 (size!42315 input!6727))) returnP!57))))

(assert (=> b!7526263 (= lt!2638766 (size!42315 Nil!72578))))

(declare-fun b!7526264 () Bool)

(declare-fun tp!2187349 () Bool)

(assert (=> b!7526264 (= e!4486044 (and tp_is_empty!49993 tp!2187349))))

(declare-fun b!7526265 () Bool)

(declare-fun res!3016400 () Bool)

(assert (=> b!7526265 (=> (not res!3016400) (not e!4486046))))

(assert (=> b!7526265 (= res!3016400 (isPrefix!6025 bigger!57 input!6727))))

(declare-fun b!7526266 () Bool)

(assert (=> b!7526266 (= e!4486046 e!4486047)))

(declare-fun res!3016399 () Bool)

(assert (=> b!7526266 (=> (not res!3016399) (not e!4486047))))

(assert (=> b!7526266 (= res!3016399 (>= lt!2638768 lt!2638770))))

(assert (=> b!7526266 (= lt!2638770 (size!42315 returnP!57))))

(assert (=> b!7526266 (= lt!2638768 (size!42315 bigger!57))))

(declare-fun b!7526267 () Bool)

(declare-fun e!4486045 () Bool)

(assert (=> b!7526267 (= e!4486045 true)))

(declare-fun lt!2638767 () Regex!19819)

(declare-fun derivative!375 (Regex!19819 List!72702) Regex!19819)

(assert (=> b!7526267 (= lt!2638767 (derivative!375 baseR!93 Nil!72578))))

(declare-fun b!7526268 () Bool)

(assert (=> b!7526268 (= e!4486042 (not e!4486045))))

(declare-fun res!3016398 () Bool)

(assert (=> b!7526268 (=> res!3016398 e!4486045)))

(declare-fun getSuffix!3515 (List!72702 List!72702) List!72702)

(assert (=> b!7526268 (= res!3016398 (not (matchR!9423 baseR!93 (getSuffix!3515 bigger!57 Nil!72578))))))

(assert (=> b!7526268 (isPrefix!6025 Nil!72578 bigger!57)))

(declare-datatypes ((Unit!166533 0))(
  ( (Unit!166534) )
))
(declare-fun lt!2638769 () Unit!166533)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!791 (List!72702 List!72702 List!72702) Unit!166533)

(assert (=> b!7526268 (= lt!2638769 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!791 bigger!57 Nil!72578 input!6727))))

(declare-fun b!7526269 () Bool)

(declare-fun tp!2187347 () Bool)

(assert (=> b!7526269 (= e!4486040 (and tp_is_empty!49993 tp!2187347))))

(assert (= (and start!728348 res!3016405) b!7526254))

(assert (= (and b!7526254 res!3016403) b!7526265))

(assert (= (and b!7526265 res!3016400) b!7526266))

(assert (= (and b!7526266 res!3016399) b!7526263))

(assert (= (and b!7526263 res!3016401) b!7526262))

(assert (= (and b!7526262 res!3016402) b!7526259))

(assert (= (and b!7526259 res!3016404) b!7526260))

(assert (= (and b!7526260 res!3016406) b!7526256))

(assert (= (and b!7526256 res!3016397) b!7526268))

(assert (= (and b!7526268 (not res!3016398)) b!7526267))

(get-info :version)

(assert (= (and start!728348 ((_ is ElementMatch!19819) baseR!93)) b!7526253))

(assert (= (and start!728348 ((_ is Concat!28664) baseR!93)) b!7526258))

(assert (= (and start!728348 ((_ is Star!19819) baseR!93)) b!7526255))

(assert (= (and start!728348 ((_ is Union!19819) baseR!93)) b!7526261))

(assert (= (and start!728348 ((_ is Cons!72578) returnP!57)) b!7526269))

(assert (= (and start!728348 ((_ is Cons!72578) input!6727)) b!7526257))

(assert (= (and start!728348 ((_ is Cons!72578) bigger!57)) b!7526264))

(declare-fun m!8101636 () Bool)

(assert (=> b!7526265 m!8101636))

(declare-fun m!8101638 () Bool)

(assert (=> b!7526267 m!8101638))

(declare-fun m!8101640 () Bool)

(assert (=> start!728348 m!8101640))

(declare-fun m!8101642 () Bool)

(assert (=> b!7526263 m!8101642))

(assert (=> b!7526263 m!8101642))

(declare-fun m!8101644 () Bool)

(assert (=> b!7526263 m!8101644))

(declare-fun m!8101646 () Bool)

(assert (=> b!7526263 m!8101646))

(declare-fun m!8101648 () Bool)

(assert (=> b!7526266 m!8101648))

(declare-fun m!8101650 () Bool)

(assert (=> b!7526266 m!8101650))

(declare-fun m!8101652 () Bool)

(assert (=> b!7526254 m!8101652))

(declare-fun m!8101654 () Bool)

(assert (=> b!7526268 m!8101654))

(assert (=> b!7526268 m!8101654))

(declare-fun m!8101656 () Bool)

(assert (=> b!7526268 m!8101656))

(declare-fun m!8101658 () Bool)

(assert (=> b!7526268 m!8101658))

(declare-fun m!8101660 () Bool)

(assert (=> b!7526268 m!8101660))

(declare-fun m!8101662 () Bool)

(assert (=> b!7526260 m!8101662))

(declare-fun m!8101664 () Bool)

(assert (=> b!7526259 m!8101664))

(check-sat (not b!7526265) (not start!728348) (not b!7526266) (not b!7526254) (not b!7526260) tp_is_empty!49993 (not b!7526264) (not b!7526258) (not b!7526269) (not b!7526267) (not b!7526263) (not b!7526261) (not b!7526257) (not b!7526255) (not b!7526268) (not b!7526259))
(check-sat)
