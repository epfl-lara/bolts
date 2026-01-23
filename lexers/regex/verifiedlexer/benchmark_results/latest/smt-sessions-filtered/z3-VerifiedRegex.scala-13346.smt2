; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724122 () Bool)

(assert start!724122)

(declare-fun b!7466635 () Bool)

(assert (=> b!7466635 true))

(assert (=> b!7466635 true))

(assert (=> b!7466635 true))

(declare-fun lambda!462147 () Int)

(declare-fun lambda!462146 () Int)

(assert (=> b!7466635 (not (= lambda!462147 lambda!462146))))

(assert (=> b!7466635 true))

(assert (=> b!7466635 true))

(assert (=> b!7466635 true))

(declare-fun bs!1930293 () Bool)

(declare-fun b!7466638 () Bool)

(assert (= bs!1930293 (and b!7466638 b!7466635)))

(declare-datatypes ((C!39384 0))(
  ( (C!39385 (val!30090 Int)) )
))
(declare-datatypes ((Regex!19555 0))(
  ( (ElementMatch!19555 (c!1379988 C!39384)) (Concat!28400 (regOne!39622 Regex!19555) (regTwo!39622 Regex!19555)) (EmptyExpr!19555) (Star!19555 (reg!19884 Regex!19555)) (EmptyLang!19555) (Union!19555 (regOne!39623 Regex!19555) (regTwo!39623 Regex!19555)) )
))
(declare-fun lt!2624032 () Regex!19555)

(declare-fun r1!5845 () Regex!19555)

(declare-fun lambda!462148 () Int)

(assert (=> bs!1930293 (= (= r1!5845 lt!2624032) (= lambda!462148 lambda!462146))))

(assert (=> bs!1930293 (not (= lambda!462148 lambda!462147))))

(assert (=> b!7466638 true))

(assert (=> b!7466638 true))

(assert (=> b!7466638 true))

(declare-fun lambda!462149 () Int)

(assert (=> bs!1930293 (not (= lambda!462149 lambda!462146))))

(assert (=> bs!1930293 (= (= r1!5845 lt!2624032) (= lambda!462149 lambda!462147))))

(assert (=> b!7466638 (not (= lambda!462149 lambda!462148))))

(assert (=> b!7466638 true))

(assert (=> b!7466638 true))

(assert (=> b!7466638 true))

(declare-fun b!7466633 () Bool)

(declare-fun res!2995125 () Bool)

(declare-fun e!4455325 () Bool)

(assert (=> b!7466633 (=> (not res!2995125) (not e!4455325))))

(declare-fun rTail!78 () Regex!19555)

(declare-fun validRegex!10069 (Regex!19555) Bool)

(assert (=> b!7466633 (= res!2995125 (validRegex!10069 rTail!78))))

(declare-fun b!7466634 () Bool)

(declare-fun e!4455327 () Bool)

(assert (=> b!7466634 (= e!4455325 (not e!4455327))))

(declare-fun res!2995126 () Bool)

(assert (=> b!7466634 (=> res!2995126 e!4455327)))

(declare-fun lt!2624042 () Bool)

(assert (=> b!7466634 (= res!2995126 lt!2624042)))

(declare-fun lt!2624043 () Bool)

(declare-fun lt!2624044 () Regex!19555)

(declare-datatypes ((List!72271 0))(
  ( (Nil!72147) (Cons!72147 (h!78595 C!39384) (t!386840 List!72271)) )
))
(declare-fun s!13591 () List!72271)

(declare-fun matchRSpec!4234 (Regex!19555 List!72271) Bool)

(assert (=> b!7466634 (= lt!2624043 (matchRSpec!4234 lt!2624044 s!13591))))

(declare-fun matchR!9319 (Regex!19555 List!72271) Bool)

(assert (=> b!7466634 (= lt!2624043 (matchR!9319 lt!2624044 s!13591))))

(declare-datatypes ((Unit!165945 0))(
  ( (Unit!165946) )
))
(declare-fun lt!2624026 () Unit!165945)

(declare-fun mainMatchTheorem!4228 (Regex!19555 List!72271) Unit!165945)

(assert (=> b!7466634 (= lt!2624026 (mainMatchTheorem!4228 lt!2624044 s!13591))))

(declare-fun lt!2624031 () Regex!19555)

(assert (=> b!7466634 (= lt!2624042 (matchRSpec!4234 lt!2624031 s!13591))))

(assert (=> b!7466634 (= lt!2624042 (matchR!9319 lt!2624031 s!13591))))

(declare-fun lt!2624028 () Unit!165945)

(assert (=> b!7466634 (= lt!2624028 (mainMatchTheorem!4228 lt!2624031 s!13591))))

(declare-fun lt!2624036 () Regex!19555)

(declare-fun lt!2624033 () Regex!19555)

(assert (=> b!7466634 (= lt!2624044 (Union!19555 lt!2624036 lt!2624033))))

(declare-fun r2!5783 () Regex!19555)

(assert (=> b!7466634 (= lt!2624033 (Concat!28400 r2!5783 rTail!78))))

(assert (=> b!7466634 (= lt!2624036 (Concat!28400 r1!5845 rTail!78))))

(assert (=> b!7466634 (= lt!2624031 (Concat!28400 lt!2624032 rTail!78))))

(assert (=> b!7466634 (= lt!2624032 (Union!19555 r1!5845 r2!5783))))

(declare-fun e!4455332 () Bool)

(assert (=> b!7466635 (= e!4455327 e!4455332)))

(declare-fun res!2995124 () Bool)

(assert (=> b!7466635 (=> res!2995124 e!4455332)))

(declare-fun lt!2624034 () Bool)

(assert (=> b!7466635 (= res!2995124 (or lt!2624034 (not lt!2624043)))))

(declare-fun Exists!4174 (Int) Bool)

(assert (=> b!7466635 (= (Exists!4174 lambda!462146) (Exists!4174 lambda!462147))))

(declare-fun lt!2624027 () Unit!165945)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2508 (Regex!19555 Regex!19555 List!72271) Unit!165945)

(assert (=> b!7466635 (= lt!2624027 (lemmaExistCutMatchRandMatchRSpecEquivalent!2508 lt!2624032 rTail!78 s!13591))))

(assert (=> b!7466635 (= lt!2624034 (Exists!4174 lambda!462146))))

(declare-datatypes ((tuple2!68560 0))(
  ( (tuple2!68561 (_1!37583 List!72271) (_2!37583 List!72271)) )
))
(declare-datatypes ((Option!17112 0))(
  ( (None!17111) (Some!17111 (v!54240 tuple2!68560)) )
))
(declare-fun isDefined!13801 (Option!17112) Bool)

(declare-fun findConcatSeparation!3234 (Regex!19555 Regex!19555 List!72271 List!72271 List!72271) Option!17112)

(assert (=> b!7466635 (= lt!2624034 (isDefined!13801 (findConcatSeparation!3234 lt!2624032 rTail!78 Nil!72147 s!13591 s!13591)))))

(declare-fun lt!2624030 () Unit!165945)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2992 (Regex!19555 Regex!19555 List!72271) Unit!165945)

(assert (=> b!7466635 (= lt!2624030 (lemmaFindConcatSeparationEquivalentToExists!2992 lt!2624032 rTail!78 s!13591))))

(declare-fun b!7466636 () Bool)

(declare-fun e!4455324 () Bool)

(assert (=> b!7466636 (= e!4455332 e!4455324)))

(declare-fun res!2995129 () Bool)

(assert (=> b!7466636 (=> res!2995129 e!4455324)))

(declare-fun lt!2624039 () Bool)

(declare-fun lt!2624037 () Bool)

(assert (=> b!7466636 (= res!2995129 (or (and (not lt!2624039) (not lt!2624037)) (not lt!2624039)))))

(assert (=> b!7466636 (= lt!2624037 (matchRSpec!4234 lt!2624033 s!13591))))

(assert (=> b!7466636 (= lt!2624037 (matchR!9319 lt!2624033 s!13591))))

(declare-fun lt!2624040 () Unit!165945)

(assert (=> b!7466636 (= lt!2624040 (mainMatchTheorem!4228 lt!2624033 s!13591))))

(assert (=> b!7466636 (= lt!2624039 (matchRSpec!4234 lt!2624036 s!13591))))

(assert (=> b!7466636 (= lt!2624039 (matchR!9319 lt!2624036 s!13591))))

(declare-fun lt!2624045 () Unit!165945)

(assert (=> b!7466636 (= lt!2624045 (mainMatchTheorem!4228 lt!2624036 s!13591))))

(declare-fun b!7466637 () Bool)

(declare-fun e!4455326 () Bool)

(declare-fun tp!2164603 () Bool)

(declare-fun tp!2164597 () Bool)

(assert (=> b!7466637 (= e!4455326 (and tp!2164603 tp!2164597))))

(declare-fun e!4455328 () Bool)

(assert (=> b!7466638 (= e!4455324 e!4455328)))

(declare-fun res!2995130 () Bool)

(assert (=> b!7466638 (=> res!2995130 e!4455328)))

(declare-fun lt!2624041 () tuple2!68560)

(assert (=> b!7466638 (= res!2995130 (not (matchR!9319 r1!5845 (_1!37583 lt!2624041))))))

(declare-fun lt!2624038 () Option!17112)

(declare-fun get!25200 (Option!17112) tuple2!68560)

(assert (=> b!7466638 (= lt!2624041 (get!25200 lt!2624038))))

(assert (=> b!7466638 (= (Exists!4174 lambda!462148) (Exists!4174 lambda!462149))))

(declare-fun lt!2624029 () Unit!165945)

(assert (=> b!7466638 (= lt!2624029 (lemmaExistCutMatchRandMatchRSpecEquivalent!2508 r1!5845 rTail!78 s!13591))))

(assert (=> b!7466638 (= (isDefined!13801 lt!2624038) (Exists!4174 lambda!462148))))

(assert (=> b!7466638 (= lt!2624038 (findConcatSeparation!3234 r1!5845 rTail!78 Nil!72147 s!13591 s!13591))))

(declare-fun lt!2624035 () Unit!165945)

(assert (=> b!7466638 (= lt!2624035 (lemmaFindConcatSeparationEquivalentToExists!2992 r1!5845 rTail!78 s!13591))))

(declare-fun b!7466640 () Bool)

(declare-fun res!2995127 () Bool)

(assert (=> b!7466640 (=> res!2995127 e!4455328)))

(assert (=> b!7466640 (= res!2995127 (not (matchR!9319 rTail!78 (_2!37583 lt!2624041))))))

(declare-fun b!7466641 () Bool)

(declare-fun e!4455329 () Bool)

(declare-fun tp!2164591 () Bool)

(declare-fun tp!2164592 () Bool)

(assert (=> b!7466641 (= e!4455329 (and tp!2164591 tp!2164592))))

(declare-fun b!7466642 () Bool)

(declare-fun tp_is_empty!49399 () Bool)

(assert (=> b!7466642 (= e!4455326 tp_is_empty!49399)))

(declare-fun b!7466643 () Bool)

(declare-fun tp!2164589 () Bool)

(assert (=> b!7466643 (= e!4455329 tp!2164589)))

(declare-fun b!7466644 () Bool)

(declare-fun tp!2164590 () Bool)

(assert (=> b!7466644 (= e!4455326 tp!2164590)))

(declare-fun b!7466645 () Bool)

(declare-fun e!4455330 () Bool)

(declare-fun tp!2164601 () Bool)

(declare-fun tp!2164600 () Bool)

(assert (=> b!7466645 (= e!4455330 (and tp!2164601 tp!2164600))))

(declare-fun b!7466646 () Bool)

(assert (=> b!7466646 (= e!4455329 tp_is_empty!49399)))

(declare-fun b!7466647 () Bool)

(assert (=> b!7466647 (= e!4455330 tp_is_empty!49399)))

(declare-fun b!7466648 () Bool)

(declare-fun tp!2164602 () Bool)

(assert (=> b!7466648 (= e!4455330 tp!2164602)))

(declare-fun b!7466649 () Bool)

(declare-fun tp!2164598 () Bool)

(declare-fun tp!2164595 () Bool)

(assert (=> b!7466649 (= e!4455326 (and tp!2164598 tp!2164595))))

(declare-fun res!2995123 () Bool)

(assert (=> start!724122 (=> (not res!2995123) (not e!4455325))))

(assert (=> start!724122 (= res!2995123 (validRegex!10069 r1!5845))))

(assert (=> start!724122 e!4455325))

(assert (=> start!724122 e!4455330))

(assert (=> start!724122 e!4455326))

(assert (=> start!724122 e!4455329))

(declare-fun e!4455331 () Bool)

(assert (=> start!724122 e!4455331))

(declare-fun b!7466639 () Bool)

(declare-fun tp!2164593 () Bool)

(declare-fun tp!2164599 () Bool)

(assert (=> b!7466639 (= e!4455330 (and tp!2164593 tp!2164599))))

(declare-fun b!7466650 () Bool)

(declare-fun tp!2164594 () Bool)

(assert (=> b!7466650 (= e!4455331 (and tp_is_empty!49399 tp!2164594))))

(declare-fun b!7466651 () Bool)

(assert (=> b!7466651 (= e!4455328 true)))

(declare-fun b!7466652 () Bool)

(declare-fun res!2995128 () Bool)

(assert (=> b!7466652 (=> (not res!2995128) (not e!4455325))))

(assert (=> b!7466652 (= res!2995128 (validRegex!10069 r2!5783))))

(declare-fun b!7466653 () Bool)

(declare-fun tp!2164588 () Bool)

(declare-fun tp!2164596 () Bool)

(assert (=> b!7466653 (= e!4455329 (and tp!2164588 tp!2164596))))

(assert (= (and start!724122 res!2995123) b!7466652))

(assert (= (and b!7466652 res!2995128) b!7466633))

(assert (= (and b!7466633 res!2995125) b!7466634))

(assert (= (and b!7466634 (not res!2995126)) b!7466635))

(assert (= (and b!7466635 (not res!2995124)) b!7466636))

(assert (= (and b!7466636 (not res!2995129)) b!7466638))

(assert (= (and b!7466638 (not res!2995130)) b!7466640))

(assert (= (and b!7466640 (not res!2995127)) b!7466651))

(get-info :version)

(assert (= (and start!724122 ((_ is ElementMatch!19555) r1!5845)) b!7466647))

(assert (= (and start!724122 ((_ is Concat!28400) r1!5845)) b!7466645))

(assert (= (and start!724122 ((_ is Star!19555) r1!5845)) b!7466648))

(assert (= (and start!724122 ((_ is Union!19555) r1!5845)) b!7466639))

(assert (= (and start!724122 ((_ is ElementMatch!19555) r2!5783)) b!7466642))

(assert (= (and start!724122 ((_ is Concat!28400) r2!5783)) b!7466637))

(assert (= (and start!724122 ((_ is Star!19555) r2!5783)) b!7466644))

(assert (= (and start!724122 ((_ is Union!19555) r2!5783)) b!7466649))

(assert (= (and start!724122 ((_ is ElementMatch!19555) rTail!78)) b!7466646))

(assert (= (and start!724122 ((_ is Concat!28400) rTail!78)) b!7466653))

(assert (= (and start!724122 ((_ is Star!19555) rTail!78)) b!7466643))

(assert (= (and start!724122 ((_ is Union!19555) rTail!78)) b!7466641))

(assert (= (and start!724122 ((_ is Cons!72147) s!13591)) b!7466650))

(declare-fun m!8065168 () Bool)

(assert (=> b!7466640 m!8065168))

(declare-fun m!8065170 () Bool)

(assert (=> b!7466633 m!8065170))

(declare-fun m!8065172 () Bool)

(assert (=> b!7466634 m!8065172))

(declare-fun m!8065174 () Bool)

(assert (=> b!7466634 m!8065174))

(declare-fun m!8065176 () Bool)

(assert (=> b!7466634 m!8065176))

(declare-fun m!8065178 () Bool)

(assert (=> b!7466634 m!8065178))

(declare-fun m!8065180 () Bool)

(assert (=> b!7466634 m!8065180))

(declare-fun m!8065182 () Bool)

(assert (=> b!7466634 m!8065182))

(declare-fun m!8065184 () Bool)

(assert (=> b!7466635 m!8065184))

(declare-fun m!8065186 () Bool)

(assert (=> b!7466635 m!8065186))

(declare-fun m!8065188 () Bool)

(assert (=> b!7466635 m!8065188))

(assert (=> b!7466635 m!8065188))

(assert (=> b!7466635 m!8065184))

(declare-fun m!8065190 () Bool)

(assert (=> b!7466635 m!8065190))

(declare-fun m!8065192 () Bool)

(assert (=> b!7466635 m!8065192))

(declare-fun m!8065194 () Bool)

(assert (=> b!7466635 m!8065194))

(declare-fun m!8065196 () Bool)

(assert (=> b!7466638 m!8065196))

(declare-fun m!8065198 () Bool)

(assert (=> b!7466638 m!8065198))

(declare-fun m!8065200 () Bool)

(assert (=> b!7466638 m!8065200))

(assert (=> b!7466638 m!8065196))

(declare-fun m!8065202 () Bool)

(assert (=> b!7466638 m!8065202))

(declare-fun m!8065204 () Bool)

(assert (=> b!7466638 m!8065204))

(declare-fun m!8065206 () Bool)

(assert (=> b!7466638 m!8065206))

(declare-fun m!8065208 () Bool)

(assert (=> b!7466638 m!8065208))

(declare-fun m!8065210 () Bool)

(assert (=> b!7466638 m!8065210))

(declare-fun m!8065212 () Bool)

(assert (=> b!7466652 m!8065212))

(declare-fun m!8065214 () Bool)

(assert (=> start!724122 m!8065214))

(declare-fun m!8065216 () Bool)

(assert (=> b!7466636 m!8065216))

(declare-fun m!8065218 () Bool)

(assert (=> b!7466636 m!8065218))

(declare-fun m!8065220 () Bool)

(assert (=> b!7466636 m!8065220))

(declare-fun m!8065222 () Bool)

(assert (=> b!7466636 m!8065222))

(declare-fun m!8065224 () Bool)

(assert (=> b!7466636 m!8065224))

(declare-fun m!8065226 () Bool)

(assert (=> b!7466636 m!8065226))

(check-sat (not b!7466634) (not b!7466636) tp_is_empty!49399 (not b!7466640) (not b!7466641) (not b!7466650) (not b!7466633) (not b!7466639) (not start!724122) (not b!7466637) (not b!7466648) (not b!7466649) (not b!7466652) (not b!7466645) (not b!7466635) (not b!7466643) (not b!7466653) (not b!7466638) (not b!7466644))
(check-sat)
