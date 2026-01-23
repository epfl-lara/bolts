; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85354 () Bool)

(assert start!85354)

(declare-fun b!958196 () Bool)

(assert (=> b!958196 true))

(assert (=> b!958196 true))

(assert (=> b!958196 true))

(declare-fun lambda!33210 () Int)

(declare-fun lambda!33209 () Int)

(assert (=> b!958196 (not (= lambda!33210 lambda!33209))))

(assert (=> b!958196 true))

(assert (=> b!958196 true))

(assert (=> b!958196 true))

(declare-fun b!958195 () Bool)

(declare-fun res!435425 () Bool)

(declare-fun e!619289 () Bool)

(assert (=> b!958195 (=> res!435425 e!619289)))

(declare-datatypes ((C!5868 0))(
  ( (C!5869 (val!3182 Int)) )
))
(declare-datatypes ((List!9879 0))(
  ( (Nil!9863) (Cons!9863 (h!15264 C!5868) (t!100925 List!9879)) )
))
(declare-datatypes ((tuple2!11184 0))(
  ( (tuple2!11185 (_1!6418 List!9879) (_2!6418 List!9879)) )
))
(declare-fun lt!345909 () tuple2!11184)

(declare-fun s!10566 () List!9879)

(declare-fun ++!2652 (List!9879 List!9879) List!9879)

(assert (=> b!958195 (= res!435425 (not (= (++!2652 (_1!6418 lt!345909) (_2!6418 lt!345909)) s!10566)))))

(declare-fun e!619284 () Bool)

(declare-fun e!619285 () Bool)

(assert (=> b!958196 (= e!619284 e!619285)))

(declare-fun res!435423 () Bool)

(assert (=> b!958196 (=> res!435423 e!619285)))

(declare-fun isEmpty!6147 (List!9879) Bool)

(assert (=> b!958196 (= res!435423 (isEmpty!6147 s!10566))))

(declare-fun Exists!396 (Int) Bool)

(assert (=> b!958196 (= (Exists!396 lambda!33209) (Exists!396 lambda!33210))))

(declare-datatypes ((Unit!14941 0))(
  ( (Unit!14942) )
))
(declare-fun lt!345908 () Unit!14941)

(declare-datatypes ((Regex!2649 0))(
  ( (ElementMatch!2649 (c!156068 C!5868)) (Concat!4482 (regOne!5810 Regex!2649) (regTwo!5810 Regex!2649)) (EmptyExpr!2649) (Star!2649 (reg!2978 Regex!2649)) (EmptyLang!2649) (Union!2649 (regOne!5811 Regex!2649) (regTwo!5811 Regex!2649)) )
))
(declare-fun r!15766 () Regex!2649)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!124 (Regex!2649 List!9879) Unit!14941)

(assert (=> b!958196 (= lt!345908 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!124 (reg!2978 r!15766) s!10566))))

(declare-fun lt!345906 () Bool)

(assert (=> b!958196 (= lt!345906 (Exists!396 lambda!33209))))

(declare-datatypes ((Option!2234 0))(
  ( (None!2233) (Some!2233 (v!19650 tuple2!11184)) )
))
(declare-fun lt!345907 () Option!2234)

(declare-fun isDefined!1876 (Option!2234) Bool)

(assert (=> b!958196 (= lt!345906 (isDefined!1876 lt!345907))))

(declare-fun lt!345904 () Regex!2649)

(declare-fun findConcatSeparation!340 (Regex!2649 Regex!2649 List!9879 List!9879 List!9879) Option!2234)

(assert (=> b!958196 (= lt!345907 (findConcatSeparation!340 (reg!2978 r!15766) lt!345904 Nil!9863 s!10566 s!10566))))

(declare-fun lt!345905 () Unit!14941)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!340 (Regex!2649 Regex!2649 List!9879) Unit!14941)

(assert (=> b!958196 (= lt!345905 (lemmaFindConcatSeparationEquivalentToExists!340 (reg!2978 r!15766) lt!345904 s!10566))))

(assert (=> b!958196 (= lt!345904 (Star!2649 (reg!2978 r!15766)))))

(declare-fun b!958197 () Bool)

(declare-fun e!619288 () Bool)

(declare-fun tp!294852 () Bool)

(declare-fun tp!294855 () Bool)

(assert (=> b!958197 (= e!619288 (and tp!294852 tp!294855))))

(declare-fun b!958198 () Bool)

(declare-fun e!619283 () Bool)

(assert (=> b!958198 (= e!619285 e!619283)))

(declare-fun res!435422 () Bool)

(assert (=> b!958198 (=> res!435422 e!619283)))

(declare-fun matchR!1187 (Regex!2649 List!9879) Bool)

(assert (=> b!958198 (= res!435422 (not (matchR!1187 (reg!2978 r!15766) (_1!6418 lt!345909))))))

(declare-fun get!3347 (Option!2234) tuple2!11184)

(assert (=> b!958198 (= lt!345909 (get!3347 lt!345907))))

(declare-fun b!958199 () Bool)

(assert (=> b!958199 (= e!619289 true)))

(declare-fun lt!345911 () Int)

(declare-fun size!7921 (List!9879) Int)

(assert (=> b!958199 (= lt!345911 (size!7921 (_1!6418 lt!345909)))))

(declare-fun b!958200 () Bool)

(declare-fun res!435426 () Bool)

(assert (=> b!958200 (=> res!435426 e!619285)))

(assert (=> b!958200 (= res!435426 (not lt!345906))))

(declare-fun res!435419 () Bool)

(declare-fun e!619286 () Bool)

(assert (=> start!85354 (=> (not res!435419) (not e!619286))))

(declare-fun validRegex!1118 (Regex!2649) Bool)

(assert (=> start!85354 (= res!435419 (validRegex!1118 r!15766))))

(assert (=> start!85354 e!619286))

(assert (=> start!85354 e!619288))

(declare-fun e!619287 () Bool)

(assert (=> start!85354 e!619287))

(declare-fun b!958201 () Bool)

(declare-fun tp_is_empty!4941 () Bool)

(declare-fun tp!294853 () Bool)

(assert (=> b!958201 (= e!619287 (and tp_is_empty!4941 tp!294853))))

(declare-fun b!958202 () Bool)

(assert (=> b!958202 (= e!619286 (not e!619284))))

(declare-fun res!435421 () Bool)

(assert (=> b!958202 (=> res!435421 e!619284)))

(declare-fun lt!345910 () Bool)

(get-info :version)

(assert (=> b!958202 (= res!435421 (or (not lt!345910) (and ((_ is Concat!4482) r!15766) ((_ is EmptyExpr!2649) (regOne!5810 r!15766))) (and ((_ is Concat!4482) r!15766) ((_ is EmptyExpr!2649) (regTwo!5810 r!15766))) ((_ is Concat!4482) r!15766) ((_ is Union!2649) r!15766) (not ((_ is Star!2649) r!15766))))))

(declare-fun matchRSpec!450 (Regex!2649 List!9879) Bool)

(assert (=> b!958202 (= lt!345910 (matchRSpec!450 r!15766 s!10566))))

(assert (=> b!958202 (= lt!345910 (matchR!1187 r!15766 s!10566))))

(declare-fun lt!345903 () Unit!14941)

(declare-fun mainMatchTheorem!450 (Regex!2649 List!9879) Unit!14941)

(assert (=> b!958202 (= lt!345903 (mainMatchTheorem!450 r!15766 s!10566))))

(declare-fun b!958203 () Bool)

(assert (=> b!958203 (= e!619288 tp_is_empty!4941)))

(declare-fun b!958204 () Bool)

(assert (=> b!958204 (= e!619283 e!619289)))

(declare-fun res!435420 () Bool)

(assert (=> b!958204 (=> res!435420 e!619289)))

(assert (=> b!958204 (= res!435420 (not (= (size!7921 (_2!6418 lt!345909)) (size!7921 s!10566))))))

(declare-fun removeUselessConcat!300 (Regex!2649) Regex!2649)

(assert (=> b!958204 (matchR!1187 (removeUselessConcat!300 (reg!2978 r!15766)) (_1!6418 lt!345909))))

(declare-fun lt!345902 () Unit!14941)

(declare-fun lemmaRemoveUselessConcatSound!160 (Regex!2649 List!9879) Unit!14941)

(assert (=> b!958204 (= lt!345902 (lemmaRemoveUselessConcatSound!160 (reg!2978 r!15766) (_1!6418 lt!345909)))))

(declare-fun b!958205 () Bool)

(declare-fun tp!294854 () Bool)

(declare-fun tp!294851 () Bool)

(assert (=> b!958205 (= e!619288 (and tp!294854 tp!294851))))

(declare-fun b!958206 () Bool)

(declare-fun tp!294856 () Bool)

(assert (=> b!958206 (= e!619288 tp!294856)))

(declare-fun b!958207 () Bool)

(declare-fun res!435424 () Bool)

(assert (=> b!958207 (=> res!435424 e!619283)))

(assert (=> b!958207 (= res!435424 (not (matchR!1187 lt!345904 (_2!6418 lt!345909))))))

(assert (= (and start!85354 res!435419) b!958202))

(assert (= (and b!958202 (not res!435421)) b!958196))

(assert (= (and b!958196 (not res!435423)) b!958200))

(assert (= (and b!958200 (not res!435426)) b!958198))

(assert (= (and b!958198 (not res!435422)) b!958207))

(assert (= (and b!958207 (not res!435424)) b!958204))

(assert (= (and b!958204 (not res!435420)) b!958195))

(assert (= (and b!958195 (not res!435425)) b!958199))

(assert (= (and start!85354 ((_ is ElementMatch!2649) r!15766)) b!958203))

(assert (= (and start!85354 ((_ is Concat!4482) r!15766)) b!958205))

(assert (= (and start!85354 ((_ is Star!2649) r!15766)) b!958206))

(assert (= (and start!85354 ((_ is Union!2649) r!15766)) b!958197))

(assert (= (and start!85354 ((_ is Cons!9863) s!10566)) b!958201))

(declare-fun m!1167635 () Bool)

(assert (=> start!85354 m!1167635))

(declare-fun m!1167637 () Bool)

(assert (=> b!958207 m!1167637))

(declare-fun m!1167639 () Bool)

(assert (=> b!958202 m!1167639))

(declare-fun m!1167641 () Bool)

(assert (=> b!958202 m!1167641))

(declare-fun m!1167643 () Bool)

(assert (=> b!958202 m!1167643))

(declare-fun m!1167645 () Bool)

(assert (=> b!958198 m!1167645))

(declare-fun m!1167647 () Bool)

(assert (=> b!958198 m!1167647))

(declare-fun m!1167649 () Bool)

(assert (=> b!958199 m!1167649))

(declare-fun m!1167651 () Bool)

(assert (=> b!958196 m!1167651))

(declare-fun m!1167653 () Bool)

(assert (=> b!958196 m!1167653))

(declare-fun m!1167655 () Bool)

(assert (=> b!958196 m!1167655))

(declare-fun m!1167657 () Bool)

(assert (=> b!958196 m!1167657))

(declare-fun m!1167659 () Bool)

(assert (=> b!958196 m!1167659))

(assert (=> b!958196 m!1167659))

(declare-fun m!1167661 () Bool)

(assert (=> b!958196 m!1167661))

(declare-fun m!1167663 () Bool)

(assert (=> b!958196 m!1167663))

(declare-fun m!1167665 () Bool)

(assert (=> b!958195 m!1167665))

(declare-fun m!1167667 () Bool)

(assert (=> b!958204 m!1167667))

(declare-fun m!1167669 () Bool)

(assert (=> b!958204 m!1167669))

(declare-fun m!1167671 () Bool)

(assert (=> b!958204 m!1167671))

(declare-fun m!1167673 () Bool)

(assert (=> b!958204 m!1167673))

(assert (=> b!958204 m!1167667))

(declare-fun m!1167675 () Bool)

(assert (=> b!958204 m!1167675))

(check-sat (not b!958198) (not b!958197) (not start!85354) (not b!958207) (not b!958204) (not b!958196) (not b!958206) tp_is_empty!4941 (not b!958201) (not b!958202) (not b!958199) (not b!958205) (not b!958195))
(check-sat)
