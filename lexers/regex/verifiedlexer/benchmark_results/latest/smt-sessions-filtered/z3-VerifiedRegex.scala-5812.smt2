; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286788 () Bool)

(assert start!286788)

(declare-fun b!2958947 () Bool)

(assert (=> b!2958947 true))

(assert (=> b!2958947 true))

(assert (=> b!2958947 true))

(declare-fun lambda!110274 () Int)

(declare-fun lambda!110273 () Int)

(assert (=> b!2958947 (not (= lambda!110274 lambda!110273))))

(assert (=> b!2958947 true))

(assert (=> b!2958947 true))

(assert (=> b!2958947 true))

(declare-fun b!2958935 () Bool)

(declare-fun e!1862816 () Bool)

(declare-fun e!1862815 () Bool)

(assert (=> b!2958935 (= e!1862816 (not e!1862815))))

(declare-fun res!1220827 () Bool)

(assert (=> b!2958935 (=> res!1220827 e!1862815)))

(declare-fun lt!1033581 () Bool)

(declare-datatypes ((C!18536 0))(
  ( (C!18537 (val!11304 Int)) )
))
(declare-datatypes ((Regex!9175 0))(
  ( (ElementMatch!9175 (c!484899 C!18536)) (Concat!14496 (regOne!18862 Regex!9175) (regTwo!18862 Regex!9175)) (EmptyExpr!9175) (Star!9175 (reg!9504 Regex!9175)) (EmptyLang!9175) (Union!9175 (regOne!18863 Regex!9175) (regTwo!18863 Regex!9175)) )
))
(declare-fun r!17423 () Regex!9175)

(get-info :version)

(assert (=> b!2958935 (= res!1220827 (or lt!1033581 (not ((_ is Concat!14496) r!17423))))))

(declare-datatypes ((List!35040 0))(
  ( (Nil!34916) (Cons!34916 (h!40336 C!18536) (t!234105 List!35040)) )
))
(declare-fun s!11993 () List!35040)

(declare-fun matchRSpec!1312 (Regex!9175 List!35040) Bool)

(assert (=> b!2958935 (= lt!1033581 (matchRSpec!1312 r!17423 s!11993))))

(declare-fun matchR!4057 (Regex!9175 List!35040) Bool)

(assert (=> b!2958935 (= lt!1033581 (matchR!4057 r!17423 s!11993))))

(declare-datatypes ((Unit!48729 0))(
  ( (Unit!48730) )
))
(declare-fun lt!1033580 () Unit!48729)

(declare-fun mainMatchTheorem!1312 (Regex!9175 List!35040) Unit!48729)

(assert (=> b!2958935 (= lt!1033580 (mainMatchTheorem!1312 r!17423 s!11993))))

(declare-fun b!2958936 () Bool)

(declare-fun res!1220824 () Bool)

(declare-fun e!1862814 () Bool)

(assert (=> b!2958936 (=> res!1220824 e!1862814)))

(declare-fun lt!1033576 () Regex!9175)

(declare-fun isEmptyExpr!378 (Regex!9175) Bool)

(assert (=> b!2958936 (= res!1220824 (isEmptyExpr!378 lt!1033576))))

(declare-fun b!2958937 () Bool)

(declare-fun e!1862817 () Bool)

(assert (=> b!2958937 (= e!1862814 e!1862817)))

(declare-fun res!1220828 () Bool)

(assert (=> b!2958937 (=> res!1220828 e!1862817)))

(declare-fun lt!1033582 () Regex!9175)

(assert (=> b!2958937 (= res!1220828 (not (matchR!4057 lt!1033582 s!11993)))))

(declare-fun lt!1033577 () Regex!9175)

(assert (=> b!2958937 (= lt!1033582 (Concat!14496 lt!1033576 lt!1033577))))

(declare-fun b!2958938 () Bool)

(declare-fun e!1862813 () Bool)

(declare-fun tp_is_empty!15913 () Bool)

(declare-fun tp!944422 () Bool)

(assert (=> b!2958938 (= e!1862813 (and tp_is_empty!15913 tp!944422))))

(declare-fun b!2958939 () Bool)

(assert (=> b!2958939 (= e!1862815 e!1862814)))

(declare-fun res!1220823 () Bool)

(assert (=> b!2958939 (=> res!1220823 e!1862814)))

(declare-fun isEmptyLang!297 (Regex!9175) Bool)

(assert (=> b!2958939 (= res!1220823 (isEmptyLang!297 lt!1033576))))

(declare-fun simplify!180 (Regex!9175) Regex!9175)

(assert (=> b!2958939 (= lt!1033577 (simplify!180 (regTwo!18862 r!17423)))))

(assert (=> b!2958939 (= lt!1033576 (simplify!180 (regOne!18862 r!17423)))))

(declare-fun b!2958940 () Bool)

(declare-fun res!1220826 () Bool)

(assert (=> b!2958940 (=> res!1220826 e!1862814)))

(assert (=> b!2958940 (= res!1220826 (isEmptyExpr!378 lt!1033577))))

(declare-fun res!1220821 () Bool)

(assert (=> start!286788 (=> (not res!1220821) (not e!1862816))))

(declare-fun validRegex!3908 (Regex!9175) Bool)

(assert (=> start!286788 (= res!1220821 (validRegex!3908 r!17423))))

(assert (=> start!286788 e!1862816))

(declare-fun e!1862812 () Bool)

(assert (=> start!286788 e!1862812))

(assert (=> start!286788 e!1862813))

(declare-fun b!2958941 () Bool)

(assert (=> b!2958941 (= e!1862812 tp_is_empty!15913)))

(declare-fun b!2958942 () Bool)

(declare-fun tp!944421 () Bool)

(declare-fun tp!944424 () Bool)

(assert (=> b!2958942 (= e!1862812 (and tp!944421 tp!944424))))

(declare-fun b!2958943 () Bool)

(declare-fun tp!944420 () Bool)

(assert (=> b!2958943 (= e!1862812 tp!944420)))

(declare-fun b!2958944 () Bool)

(declare-fun res!1220825 () Bool)

(assert (=> b!2958944 (=> res!1220825 e!1862815)))

(declare-fun isEmpty!19200 (List!35040) Bool)

(assert (=> b!2958944 (= res!1220825 (isEmpty!19200 s!11993))))

(declare-fun b!2958945 () Bool)

(declare-fun tp!944423 () Bool)

(declare-fun tp!944425 () Bool)

(assert (=> b!2958945 (= e!1862812 (and tp!944423 tp!944425))))

(declare-fun b!2958946 () Bool)

(declare-fun res!1220822 () Bool)

(assert (=> b!2958946 (=> res!1220822 e!1862814)))

(assert (=> b!2958946 (= res!1220822 (isEmptyLang!297 lt!1033577))))

(assert (=> b!2958947 (= e!1862817 true)))

(declare-fun Exists!1507 (Int) Bool)

(assert (=> b!2958947 (= (Exists!1507 lambda!110273) (Exists!1507 lambda!110274))))

(declare-fun lt!1033579 () Unit!48729)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!528 (Regex!9175 Regex!9175 List!35040) Unit!48729)

(assert (=> b!2958947 (= lt!1033579 (lemmaExistCutMatchRandMatchRSpecEquivalent!528 lt!1033576 lt!1033577 s!11993))))

(declare-datatypes ((tuple2!33868 0))(
  ( (tuple2!33869 (_1!20066 List!35040) (_2!20066 List!35040)) )
))
(declare-datatypes ((Option!6666 0))(
  ( (None!6665) (Some!6665 (v!34799 tuple2!33868)) )
))
(declare-fun isDefined!5217 (Option!6666) Bool)

(declare-fun findConcatSeparation!1060 (Regex!9175 Regex!9175 List!35040 List!35040 List!35040) Option!6666)

(assert (=> b!2958947 (= (isDefined!5217 (findConcatSeparation!1060 lt!1033576 lt!1033577 Nil!34916 s!11993 s!11993)) (Exists!1507 lambda!110273))))

(declare-fun lt!1033578 () Unit!48729)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!838 (Regex!9175 Regex!9175 List!35040) Unit!48729)

(assert (=> b!2958947 (= lt!1033578 (lemmaFindConcatSeparationEquivalentToExists!838 lt!1033576 lt!1033577 s!11993))))

(assert (=> b!2958947 (matchRSpec!1312 lt!1033582 s!11993)))

(declare-fun lt!1033583 () Unit!48729)

(assert (=> b!2958947 (= lt!1033583 (mainMatchTheorem!1312 lt!1033582 s!11993))))

(assert (= (and start!286788 res!1220821) b!2958935))

(assert (= (and b!2958935 (not res!1220827)) b!2958944))

(assert (= (and b!2958944 (not res!1220825)) b!2958939))

(assert (= (and b!2958939 (not res!1220823)) b!2958946))

(assert (= (and b!2958946 (not res!1220822)) b!2958936))

(assert (= (and b!2958936 (not res!1220824)) b!2958940))

(assert (= (and b!2958940 (not res!1220826)) b!2958937))

(assert (= (and b!2958937 (not res!1220828)) b!2958947))

(assert (= (and start!286788 ((_ is ElementMatch!9175) r!17423)) b!2958941))

(assert (= (and start!286788 ((_ is Concat!14496) r!17423)) b!2958945))

(assert (= (and start!286788 ((_ is Star!9175) r!17423)) b!2958943))

(assert (= (and start!286788 ((_ is Union!9175) r!17423)) b!2958942))

(assert (= (and start!286788 ((_ is Cons!34916) s!11993)) b!2958938))

(declare-fun m!3333313 () Bool)

(assert (=> b!2958947 m!3333313))

(declare-fun m!3333315 () Bool)

(assert (=> b!2958947 m!3333315))

(declare-fun m!3333317 () Bool)

(assert (=> b!2958947 m!3333317))

(declare-fun m!3333319 () Bool)

(assert (=> b!2958947 m!3333319))

(declare-fun m!3333321 () Bool)

(assert (=> b!2958947 m!3333321))

(declare-fun m!3333323 () Bool)

(assert (=> b!2958947 m!3333323))

(declare-fun m!3333325 () Bool)

(assert (=> b!2958947 m!3333325))

(assert (=> b!2958947 m!3333315))

(declare-fun m!3333327 () Bool)

(assert (=> b!2958947 m!3333327))

(assert (=> b!2958947 m!3333325))

(declare-fun m!3333329 () Bool)

(assert (=> b!2958935 m!3333329))

(declare-fun m!3333331 () Bool)

(assert (=> b!2958935 m!3333331))

(declare-fun m!3333333 () Bool)

(assert (=> b!2958935 m!3333333))

(declare-fun m!3333335 () Bool)

(assert (=> b!2958937 m!3333335))

(declare-fun m!3333337 () Bool)

(assert (=> b!2958946 m!3333337))

(declare-fun m!3333339 () Bool)

(assert (=> b!2958936 m!3333339))

(declare-fun m!3333341 () Bool)

(assert (=> start!286788 m!3333341))

(declare-fun m!3333343 () Bool)

(assert (=> b!2958944 m!3333343))

(declare-fun m!3333345 () Bool)

(assert (=> b!2958940 m!3333345))

(declare-fun m!3333347 () Bool)

(assert (=> b!2958939 m!3333347))

(declare-fun m!3333349 () Bool)

(assert (=> b!2958939 m!3333349))

(declare-fun m!3333351 () Bool)

(assert (=> b!2958939 m!3333351))

(check-sat (not b!2958942) (not b!2958947) (not b!2958946) (not b!2958939) (not b!2958945) (not b!2958936) (not b!2958937) (not b!2958943) (not b!2958944) (not b!2958938) (not b!2958935) (not b!2958940) (not start!286788) tp_is_empty!15913)
(check-sat)
