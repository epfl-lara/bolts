; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83638 () Bool)

(assert start!83638)

(declare-fun b!935798 () Bool)

(assert (=> b!935798 true))

(assert (=> b!935798 true))

(assert (=> b!935798 true))

(declare-fun lambda!31074 () Int)

(declare-fun lambda!31073 () Int)

(assert (=> b!935798 (not (= lambda!31074 lambda!31073))))

(assert (=> b!935798 true))

(assert (=> b!935798 true))

(assert (=> b!935798 true))

(declare-fun b!935794 () Bool)

(declare-fun e!607697 () Bool)

(assert (=> b!935794 (= e!607697 true)))

(declare-datatypes ((C!5692 0))(
  ( (C!5693 (val!3094 Int)) )
))
(declare-datatypes ((Regex!2561 0))(
  ( (ElementMatch!2561 (c!152200 C!5692)) (Concat!4394 (regOne!5634 Regex!2561) (regTwo!5634 Regex!2561)) (EmptyExpr!2561) (Star!2561 (reg!2890 Regex!2561)) (EmptyLang!2561) (Union!2561 (regOne!5635 Regex!2561) (regTwo!5635 Regex!2561)) )
))
(declare-fun lt!341235 () Regex!2561)

(declare-datatypes ((List!9791 0))(
  ( (Nil!9775) (Cons!9775 (h!15176 C!5692) (t!100837 List!9791)) )
))
(declare-fun s!10566 () List!9791)

(declare-fun matchRSpec!362 (Regex!2561 List!9791) Bool)

(assert (=> b!935794 (matchRSpec!362 lt!341235 s!10566)))

(declare-datatypes ((Unit!14741 0))(
  ( (Unit!14742) )
))
(declare-fun lt!341234 () Unit!14741)

(declare-fun mainMatchTheorem!362 (Regex!2561 List!9791) Unit!14741)

(assert (=> b!935794 (= lt!341234 (mainMatchTheorem!362 lt!341235 s!10566))))

(declare-fun b!935795 () Bool)

(declare-fun e!607699 () Bool)

(declare-fun tp!290232 () Bool)

(assert (=> b!935795 (= e!607699 tp!290232)))

(declare-fun b!935796 () Bool)

(declare-fun tp_is_empty!4765 () Bool)

(assert (=> b!935796 (= e!607699 tp_is_empty!4765)))

(declare-fun b!935797 () Bool)

(declare-fun e!607695 () Bool)

(declare-fun tp!290233 () Bool)

(assert (=> b!935797 (= e!607695 (and tp_is_empty!4765 tp!290233))))

(declare-fun e!607696 () Bool)

(assert (=> b!935798 (= e!607696 e!607697)))

(declare-fun res!424916 () Bool)

(assert (=> b!935798 (=> res!424916 e!607697)))

(declare-fun matchR!1099 (Regex!2561 List!9791) Bool)

(assert (=> b!935798 (= res!424916 (not (matchR!1099 lt!341235 s!10566)))))

(declare-fun r!15766 () Regex!2561)

(declare-fun removeUselessConcat!230 (Regex!2561) Regex!2561)

(assert (=> b!935798 (= lt!341235 (Star!2561 (removeUselessConcat!230 (reg!2890 r!15766))))))

(declare-fun Exists!312 (Int) Bool)

(assert (=> b!935798 (= (Exists!312 lambda!31073) (Exists!312 lambda!31074))))

(declare-fun lt!341237 () Unit!14741)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!56 (Regex!2561 List!9791) Unit!14741)

(assert (=> b!935798 (= lt!341237 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!56 (reg!2890 r!15766) s!10566))))

(declare-fun lt!341231 () Regex!2561)

(declare-datatypes ((tuple2!11020 0))(
  ( (tuple2!11021 (_1!6336 List!9791) (_2!6336 List!9791)) )
))
(declare-datatypes ((Option!2152 0))(
  ( (None!2151) (Some!2151 (v!19568 tuple2!11020)) )
))
(declare-fun isDefined!1794 (Option!2152) Bool)

(declare-fun findConcatSeparation!258 (Regex!2561 Regex!2561 List!9791 List!9791 List!9791) Option!2152)

(assert (=> b!935798 (= (isDefined!1794 (findConcatSeparation!258 (reg!2890 r!15766) lt!341231 Nil!9775 s!10566 s!10566)) (Exists!312 lambda!31073))))

(declare-fun lt!341232 () Unit!14741)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!258 (Regex!2561 Regex!2561 List!9791) Unit!14741)

(assert (=> b!935798 (= lt!341232 (lemmaFindConcatSeparationEquivalentToExists!258 (reg!2890 r!15766) lt!341231 s!10566))))

(assert (=> b!935798 (= lt!341231 (Star!2561 (reg!2890 r!15766)))))

(declare-fun b!935799 () Bool)

(declare-fun tp!290234 () Bool)

(declare-fun tp!290236 () Bool)

(assert (=> b!935799 (= e!607699 (and tp!290234 tp!290236))))

(declare-fun b!935800 () Bool)

(declare-fun e!607698 () Bool)

(assert (=> b!935800 (= e!607698 (not e!607696))))

(declare-fun res!424917 () Bool)

(assert (=> b!935800 (=> res!424917 e!607696)))

(declare-fun lt!341233 () Bool)

(get-info :version)

(assert (=> b!935800 (= res!424917 (or lt!341233 (and ((_ is Concat!4394) r!15766) ((_ is EmptyExpr!2561) (regOne!5634 r!15766))) (and ((_ is Concat!4394) r!15766) ((_ is EmptyExpr!2561) (regTwo!5634 r!15766))) ((_ is Concat!4394) r!15766) ((_ is Union!2561) r!15766) (not ((_ is Star!2561) r!15766))))))

(assert (=> b!935800 (= lt!341233 (matchRSpec!362 r!15766 s!10566))))

(assert (=> b!935800 (= lt!341233 (matchR!1099 r!15766 s!10566))))

(declare-fun lt!341236 () Unit!14741)

(assert (=> b!935800 (= lt!341236 (mainMatchTheorem!362 r!15766 s!10566))))

(declare-fun res!424918 () Bool)

(assert (=> start!83638 (=> (not res!424918) (not e!607698))))

(declare-fun validRegex!1030 (Regex!2561) Bool)

(assert (=> start!83638 (= res!424918 (validRegex!1030 r!15766))))

(assert (=> start!83638 e!607698))

(assert (=> start!83638 e!607699))

(assert (=> start!83638 e!607695))

(declare-fun b!935801 () Bool)

(declare-fun tp!290235 () Bool)

(declare-fun tp!290231 () Bool)

(assert (=> b!935801 (= e!607699 (and tp!290235 tp!290231))))

(assert (= (and start!83638 res!424918) b!935800))

(assert (= (and b!935800 (not res!424917)) b!935798))

(assert (= (and b!935798 (not res!424916)) b!935794))

(assert (= (and start!83638 ((_ is ElementMatch!2561) r!15766)) b!935796))

(assert (= (and start!83638 ((_ is Concat!4394) r!15766)) b!935801))

(assert (= (and start!83638 ((_ is Star!2561) r!15766)) b!935795))

(assert (= (and start!83638 ((_ is Union!2561) r!15766)) b!935799))

(assert (= (and start!83638 ((_ is Cons!9775) s!10566)) b!935797))

(declare-fun m!1155345 () Bool)

(assert (=> b!935794 m!1155345))

(declare-fun m!1155347 () Bool)

(assert (=> b!935794 m!1155347))

(declare-fun m!1155349 () Bool)

(assert (=> b!935798 m!1155349))

(declare-fun m!1155351 () Bool)

(assert (=> b!935798 m!1155351))

(declare-fun m!1155353 () Bool)

(assert (=> b!935798 m!1155353))

(declare-fun m!1155355 () Bool)

(assert (=> b!935798 m!1155355))

(declare-fun m!1155357 () Bool)

(assert (=> b!935798 m!1155357))

(declare-fun m!1155359 () Bool)

(assert (=> b!935798 m!1155359))

(declare-fun m!1155361 () Bool)

(assert (=> b!935798 m!1155361))

(assert (=> b!935798 m!1155359))

(declare-fun m!1155363 () Bool)

(assert (=> b!935798 m!1155363))

(assert (=> b!935798 m!1155361))

(declare-fun m!1155365 () Bool)

(assert (=> b!935800 m!1155365))

(declare-fun m!1155367 () Bool)

(assert (=> b!935800 m!1155367))

(declare-fun m!1155369 () Bool)

(assert (=> b!935800 m!1155369))

(declare-fun m!1155371 () Bool)

(assert (=> start!83638 m!1155371))

(check-sat tp_is_empty!4765 (not b!935801) (not b!935794) (not b!935795) (not b!935798) (not b!935799) (not b!935800) (not b!935797) (not start!83638))
(check-sat)
