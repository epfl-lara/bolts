; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80090 () Bool)

(assert start!80090)

(declare-fun b!886685 () Bool)

(assert (=> b!886685 true))

(assert (=> b!886685 true))

(declare-fun lambda!27432 () Int)

(declare-fun lambda!27431 () Int)

(assert (=> b!886685 (not (= lambda!27432 lambda!27431))))

(assert (=> b!886685 true))

(assert (=> b!886685 true))

(declare-fun b!886676 () Bool)

(declare-fun e!581370 () Bool)

(declare-fun tp_is_empty!4213 () Bool)

(declare-fun tp!279487 () Bool)

(assert (=> b!886676 (= e!581370 (and tp_is_empty!4213 tp!279487))))

(declare-fun b!886677 () Bool)

(declare-fun e!581367 () Bool)

(declare-fun e!581371 () Bool)

(assert (=> b!886677 (= e!581367 (not e!581371))))

(declare-fun res!403301 () Bool)

(assert (=> b!886677 (=> res!403301 e!581371)))

(declare-fun lt!331691 () Bool)

(declare-datatypes ((C!5140 0))(
  ( (C!5141 (val!2818 Int)) )
))
(declare-datatypes ((Regex!2285 0))(
  ( (ElementMatch!2285 (c!143368 C!5140)) (Concat!4118 (regOne!5082 Regex!2285) (regTwo!5082 Regex!2285)) (EmptyExpr!2285) (Star!2285 (reg!2614 Regex!2285)) (EmptyLang!2285) (Union!2285 (regOne!5083 Regex!2285) (regTwo!5083 Regex!2285)) )
))
(declare-fun r!15766 () Regex!2285)

(get-info :version)

(assert (=> b!886677 (= res!403301 (or (not lt!331691) (and ((_ is Concat!4118) r!15766) ((_ is EmptyExpr!2285) (regOne!5082 r!15766))) (and ((_ is Concat!4118) r!15766) ((_ is EmptyExpr!2285) (regTwo!5082 r!15766))) (not ((_ is Concat!4118) r!15766))))))

(declare-datatypes ((List!9515 0))(
  ( (Nil!9499) (Cons!9499 (h!14900 C!5140) (t!100561 List!9515)) )
))
(declare-fun s!10566 () List!9515)

(declare-fun matchRSpec!86 (Regex!2285 List!9515) Bool)

(assert (=> b!886677 (= lt!331691 (matchRSpec!86 r!15766 s!10566))))

(declare-fun matchR!823 (Regex!2285 List!9515) Bool)

(assert (=> b!886677 (= lt!331691 (matchR!823 r!15766 s!10566))))

(declare-datatypes ((Unit!14149 0))(
  ( (Unit!14150) )
))
(declare-fun lt!331695 () Unit!14149)

(declare-fun mainMatchTheorem!86 (Regex!2285 List!9515) Unit!14149)

(assert (=> b!886677 (= lt!331695 (mainMatchTheorem!86 r!15766 s!10566))))

(declare-fun b!886678 () Bool)

(declare-fun e!581369 () Bool)

(declare-fun tp!279491 () Bool)

(assert (=> b!886678 (= e!581369 tp!279491)))

(declare-fun b!886679 () Bool)

(declare-fun e!581368 () Bool)

(assert (=> b!886679 (= e!581368 true)))

(declare-fun lt!331699 () Regex!2285)

(declare-fun lt!331696 () Regex!2285)

(declare-datatypes ((tuple2!10656 0))(
  ( (tuple2!10657 (_1!6154 List!9515) (_2!6154 List!9515)) )
))
(declare-fun lt!331693 () tuple2!10656)

(declare-fun ++!2484 (List!9515 List!9515) List!9515)

(assert (=> b!886679 (matchR!823 (Concat!4118 lt!331699 lt!331696) (++!2484 (_1!6154 lt!331693) (_2!6154 lt!331693)))))

(declare-fun lt!331701 () Unit!14149)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!2 (Regex!2285 Regex!2285 List!9515 List!9515) Unit!14149)

(assert (=> b!886679 (= lt!331701 (lemmaTwoRegexMatchThenConcatMatchesConcatString!2 lt!331699 lt!331696 (_1!6154 lt!331693) (_2!6154 lt!331693)))))

(declare-fun b!886680 () Bool)

(declare-fun e!581372 () Bool)

(declare-fun e!581373 () Bool)

(assert (=> b!886680 (= e!581372 e!581373)))

(declare-fun res!403299 () Bool)

(assert (=> b!886680 (=> res!403299 e!581373)))

(assert (=> b!886680 (= res!403299 (not (matchR!823 (regOne!5082 r!15766) (_1!6154 lt!331693))))))

(declare-datatypes ((Option!1970 0))(
  ( (None!1969) (Some!1969 (v!19386 tuple2!10656)) )
))
(declare-fun lt!331697 () Option!1970)

(declare-fun get!2977 (Option!1970) tuple2!10656)

(assert (=> b!886680 (= lt!331693 (get!2977 lt!331697))))

(declare-fun b!886681 () Bool)

(declare-fun res!403298 () Bool)

(assert (=> b!886681 (=> res!403298 e!581368)))

(declare-fun validRegex!754 (Regex!2285) Bool)

(assert (=> b!886681 (= res!403298 (not (validRegex!754 lt!331696)))))

(declare-fun b!886682 () Bool)

(declare-fun tp!279490 () Bool)

(declare-fun tp!279492 () Bool)

(assert (=> b!886682 (= e!581369 (and tp!279490 tp!279492))))

(declare-fun b!886683 () Bool)

(declare-fun res!403304 () Bool)

(assert (=> b!886683 (=> res!403304 e!581373)))

(assert (=> b!886683 (= res!403304 (not (matchR!823 (regTwo!5082 r!15766) (_2!6154 lt!331693))))))

(declare-fun b!886684 () Bool)

(declare-fun tp!279488 () Bool)

(declare-fun tp!279489 () Bool)

(assert (=> b!886684 (= e!581369 (and tp!279488 tp!279489))))

(declare-fun res!403300 () Bool)

(assert (=> start!80090 (=> (not res!403300) (not e!581367))))

(assert (=> start!80090 (= res!403300 (validRegex!754 r!15766))))

(assert (=> start!80090 e!581367))

(assert (=> start!80090 e!581369))

(assert (=> start!80090 e!581370))

(assert (=> b!886685 (= e!581371 e!581372)))

(declare-fun res!403303 () Bool)

(assert (=> b!886685 (=> res!403303 e!581372)))

(declare-fun isEmpty!5707 (List!9515) Bool)

(assert (=> b!886685 (= res!403303 (isEmpty!5707 s!10566))))

(declare-fun Exists!80 (Int) Bool)

(assert (=> b!886685 (= (Exists!80 lambda!27431) (Exists!80 lambda!27432))))

(declare-fun lt!331694 () Unit!14149)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!70 (Regex!2285 Regex!2285 List!9515) Unit!14149)

(assert (=> b!886685 (= lt!331694 (lemmaExistCutMatchRandMatchRSpecEquivalent!70 (regOne!5082 r!15766) (regTwo!5082 r!15766) s!10566))))

(declare-fun isDefined!1612 (Option!1970) Bool)

(assert (=> b!886685 (= (isDefined!1612 lt!331697) (Exists!80 lambda!27431))))

(declare-fun findConcatSeparation!76 (Regex!2285 Regex!2285 List!9515 List!9515 List!9515) Option!1970)

(assert (=> b!886685 (= lt!331697 (findConcatSeparation!76 (regOne!5082 r!15766) (regTwo!5082 r!15766) Nil!9499 s!10566 s!10566))))

(declare-fun lt!331692 () Unit!14149)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!76 (Regex!2285 Regex!2285 List!9515) Unit!14149)

(assert (=> b!886685 (= lt!331692 (lemmaFindConcatSeparationEquivalentToExists!76 (regOne!5082 r!15766) (regTwo!5082 r!15766) s!10566))))

(declare-fun b!886686 () Bool)

(assert (=> b!886686 (= e!581373 e!581368)))

(declare-fun res!403302 () Bool)

(assert (=> b!886686 (=> res!403302 e!581368)))

(assert (=> b!886686 (= res!403302 (not (validRegex!754 lt!331699)))))

(assert (=> b!886686 (matchR!823 lt!331696 (_2!6154 lt!331693))))

(declare-fun removeUselessConcat!28 (Regex!2285) Regex!2285)

(assert (=> b!886686 (= lt!331696 (removeUselessConcat!28 (regTwo!5082 r!15766)))))

(declare-fun lt!331700 () Unit!14149)

(declare-fun lemmaRemoveUselessConcatSound!22 (Regex!2285 List!9515) Unit!14149)

(assert (=> b!886686 (= lt!331700 (lemmaRemoveUselessConcatSound!22 (regTwo!5082 r!15766) (_2!6154 lt!331693)))))

(assert (=> b!886686 (matchR!823 lt!331699 (_1!6154 lt!331693))))

(assert (=> b!886686 (= lt!331699 (removeUselessConcat!28 (regOne!5082 r!15766)))))

(declare-fun lt!331698 () Unit!14149)

(assert (=> b!886686 (= lt!331698 (lemmaRemoveUselessConcatSound!22 (regOne!5082 r!15766) (_1!6154 lt!331693)))))

(declare-fun b!886687 () Bool)

(assert (=> b!886687 (= e!581369 tp_is_empty!4213)))

(assert (= (and start!80090 res!403300) b!886677))

(assert (= (and b!886677 (not res!403301)) b!886685))

(assert (= (and b!886685 (not res!403303)) b!886680))

(assert (= (and b!886680 (not res!403299)) b!886683))

(assert (= (and b!886683 (not res!403304)) b!886686))

(assert (= (and b!886686 (not res!403302)) b!886681))

(assert (= (and b!886681 (not res!403298)) b!886679))

(assert (= (and start!80090 ((_ is ElementMatch!2285) r!15766)) b!886687))

(assert (= (and start!80090 ((_ is Concat!4118) r!15766)) b!886682))

(assert (= (and start!80090 ((_ is Star!2285) r!15766)) b!886678))

(assert (= (and start!80090 ((_ is Union!2285) r!15766)) b!886684))

(assert (= (and start!80090 ((_ is Cons!9499) s!10566)) b!886676))

(declare-fun m!1132123 () Bool)

(assert (=> b!886685 m!1132123))

(declare-fun m!1132125 () Bool)

(assert (=> b!886685 m!1132125))

(declare-fun m!1132127 () Bool)

(assert (=> b!886685 m!1132127))

(declare-fun m!1132129 () Bool)

(assert (=> b!886685 m!1132129))

(assert (=> b!886685 m!1132123))

(declare-fun m!1132131 () Bool)

(assert (=> b!886685 m!1132131))

(declare-fun m!1132133 () Bool)

(assert (=> b!886685 m!1132133))

(declare-fun m!1132135 () Bool)

(assert (=> b!886685 m!1132135))

(declare-fun m!1132137 () Bool)

(assert (=> b!886681 m!1132137))

(declare-fun m!1132139 () Bool)

(assert (=> start!80090 m!1132139))

(declare-fun m!1132141 () Bool)

(assert (=> b!886680 m!1132141))

(declare-fun m!1132143 () Bool)

(assert (=> b!886680 m!1132143))

(declare-fun m!1132145 () Bool)

(assert (=> b!886677 m!1132145))

(declare-fun m!1132147 () Bool)

(assert (=> b!886677 m!1132147))

(declare-fun m!1132149 () Bool)

(assert (=> b!886677 m!1132149))

(declare-fun m!1132151 () Bool)

(assert (=> b!886679 m!1132151))

(assert (=> b!886679 m!1132151))

(declare-fun m!1132153 () Bool)

(assert (=> b!886679 m!1132153))

(declare-fun m!1132155 () Bool)

(assert (=> b!886679 m!1132155))

(declare-fun m!1132157 () Bool)

(assert (=> b!886683 m!1132157))

(declare-fun m!1132159 () Bool)

(assert (=> b!886686 m!1132159))

(declare-fun m!1132161 () Bool)

(assert (=> b!886686 m!1132161))

(declare-fun m!1132163 () Bool)

(assert (=> b!886686 m!1132163))

(declare-fun m!1132165 () Bool)

(assert (=> b!886686 m!1132165))

(declare-fun m!1132167 () Bool)

(assert (=> b!886686 m!1132167))

(declare-fun m!1132169 () Bool)

(assert (=> b!886686 m!1132169))

(declare-fun m!1132171 () Bool)

(assert (=> b!886686 m!1132171))

(check-sat (not b!886678) (not b!886680) (not b!886681) (not b!886685) (not b!886686) (not b!886676) tp_is_empty!4213 (not b!886683) (not b!886682) (not b!886684) (not b!886677) (not start!80090) (not b!886679))
(check-sat)
