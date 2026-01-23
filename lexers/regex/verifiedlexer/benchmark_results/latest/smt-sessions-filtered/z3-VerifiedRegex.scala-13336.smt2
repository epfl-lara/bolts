; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723898 () Bool)

(assert start!723898)

(declare-fun b!7461752 () Bool)

(assert (=> b!7461752 true))

(assert (=> b!7461752 true))

(assert (=> b!7461752 true))

(declare-fun lambda!461681 () Int)

(declare-fun lambda!461680 () Int)

(assert (=> b!7461752 (not (= lambda!461681 lambda!461680))))

(assert (=> b!7461752 true))

(assert (=> b!7461752 true))

(assert (=> b!7461752 true))

(declare-fun b!7461744 () Bool)

(declare-fun e!4452958 () Bool)

(declare-fun tp!2162748 () Bool)

(declare-fun tp!2162761 () Bool)

(assert (=> b!7461744 (= e!4452958 (and tp!2162748 tp!2162761))))

(declare-fun b!7461745 () Bool)

(declare-fun e!4452960 () Bool)

(declare-fun tp!2162756 () Bool)

(declare-fun tp!2162749 () Bool)

(assert (=> b!7461745 (= e!4452960 (and tp!2162756 tp!2162749))))

(declare-fun b!7461746 () Bool)

(declare-fun e!4452959 () Bool)

(declare-fun tp_is_empty!49359 () Bool)

(assert (=> b!7461746 (= e!4452959 tp_is_empty!49359)))

(declare-fun b!7461747 () Bool)

(assert (=> b!7461747 (= e!4452958 tp_is_empty!49359)))

(declare-fun res!2993057 () Bool)

(declare-fun e!4452954 () Bool)

(assert (=> start!723898 (=> (not res!2993057) (not e!4452954))))

(declare-datatypes ((C!39344 0))(
  ( (C!39345 (val!30070 Int)) )
))
(declare-datatypes ((Regex!19535 0))(
  ( (ElementMatch!19535 (c!1379362 C!39344)) (Concat!28380 (regOne!39582 Regex!19535) (regTwo!39582 Regex!19535)) (EmptyExpr!19535) (Star!19535 (reg!19864 Regex!19535)) (EmptyLang!19535) (Union!19535 (regOne!39583 Regex!19535) (regTwo!39583 Regex!19535)) )
))
(declare-fun r1!5845 () Regex!19535)

(declare-fun validRegex!10049 (Regex!19535) Bool)

(assert (=> start!723898 (= res!2993057 (validRegex!10049 r1!5845))))

(assert (=> start!723898 e!4452954))

(assert (=> start!723898 e!4452960))

(assert (=> start!723898 e!4452958))

(assert (=> start!723898 e!4452959))

(declare-fun e!4452957 () Bool)

(assert (=> start!723898 e!4452957))

(declare-fun b!7461748 () Bool)

(declare-fun tp!2162754 () Bool)

(declare-fun tp!2162750 () Bool)

(assert (=> b!7461748 (= e!4452960 (and tp!2162754 tp!2162750))))

(declare-fun b!7461749 () Bool)

(declare-fun tp!2162760 () Bool)

(assert (=> b!7461749 (= e!4452958 tp!2162760)))

(declare-fun b!7461750 () Bool)

(declare-fun tp!2162762 () Bool)

(assert (=> b!7461750 (= e!4452957 (and tp_is_empty!49359 tp!2162762))))

(declare-fun b!7461751 () Bool)

(declare-fun tp!2162752 () Bool)

(declare-fun tp!2162759 () Bool)

(assert (=> b!7461751 (= e!4452959 (and tp!2162752 tp!2162759))))

(declare-fun e!4452956 () Bool)

(declare-fun e!4452955 () Bool)

(assert (=> b!7461752 (= e!4452956 e!4452955)))

(declare-fun res!2993059 () Bool)

(assert (=> b!7461752 (=> res!2993059 e!4452955)))

(declare-fun lt!2622721 () Bool)

(declare-fun lt!2622720 () Bool)

(assert (=> b!7461752 (= res!2993059 (or lt!2622721 (not lt!2622720)))))

(declare-fun Exists!4154 (Int) Bool)

(assert (=> b!7461752 (= (Exists!4154 lambda!461680) (Exists!4154 lambda!461681))))

(declare-datatypes ((List!72251 0))(
  ( (Nil!72127) (Cons!72127 (h!78575 C!39344) (t!386820 List!72251)) )
))
(declare-fun s!13591 () List!72251)

(declare-fun lt!2622714 () Regex!19535)

(declare-datatypes ((Unit!165905 0))(
  ( (Unit!165906) )
))
(declare-fun lt!2622717 () Unit!165905)

(declare-fun rTail!78 () Regex!19535)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2488 (Regex!19535 Regex!19535 List!72251) Unit!165905)

(assert (=> b!7461752 (= lt!2622717 (lemmaExistCutMatchRandMatchRSpecEquivalent!2488 lt!2622714 rTail!78 s!13591))))

(assert (=> b!7461752 (= lt!2622721 (Exists!4154 lambda!461680))))

(declare-datatypes ((tuple2!68520 0))(
  ( (tuple2!68521 (_1!37563 List!72251) (_2!37563 List!72251)) )
))
(declare-datatypes ((Option!17092 0))(
  ( (None!17091) (Some!17091 (v!54220 tuple2!68520)) )
))
(declare-fun isDefined!13781 (Option!17092) Bool)

(declare-fun findConcatSeparation!3214 (Regex!19535 Regex!19535 List!72251 List!72251 List!72251) Option!17092)

(assert (=> b!7461752 (= lt!2622721 (isDefined!13781 (findConcatSeparation!3214 lt!2622714 rTail!78 Nil!72127 s!13591 s!13591)))))

(declare-fun lt!2622716 () Unit!165905)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2972 (Regex!19535 Regex!19535 List!72251) Unit!165905)

(assert (=> b!7461752 (= lt!2622716 (lemmaFindConcatSeparationEquivalentToExists!2972 lt!2622714 rTail!78 s!13591))))

(declare-fun b!7461753 () Bool)

(declare-fun tp!2162757 () Bool)

(assert (=> b!7461753 (= e!4452960 tp!2162757)))

(declare-fun b!7461754 () Bool)

(assert (=> b!7461754 (= e!4452960 tp_is_empty!49359)))

(declare-fun b!7461755 () Bool)

(declare-fun res!2993058 () Bool)

(assert (=> b!7461755 (=> (not res!2993058) (not e!4452954))))

(declare-fun r2!5783 () Regex!19535)

(assert (=> b!7461755 (= res!2993058 (validRegex!10049 r2!5783))))

(declare-fun b!7461756 () Bool)

(assert (=> b!7461756 (= e!4452955 true)))

(declare-fun lt!2622715 () Regex!19535)

(declare-fun matchR!9299 (Regex!19535 List!72251) Bool)

(declare-fun matchRSpec!4214 (Regex!19535 List!72251) Bool)

(assert (=> b!7461756 (= (matchR!9299 lt!2622715 s!13591) (matchRSpec!4214 lt!2622715 s!13591))))

(declare-fun lt!2622719 () Unit!165905)

(declare-fun mainMatchTheorem!4208 (Regex!19535 List!72251) Unit!165905)

(assert (=> b!7461756 (= lt!2622719 (mainMatchTheorem!4208 lt!2622715 s!13591))))

(declare-fun b!7461757 () Bool)

(declare-fun tp!2162763 () Bool)

(assert (=> b!7461757 (= e!4452959 tp!2162763)))

(declare-fun b!7461758 () Bool)

(declare-fun tp!2162755 () Bool)

(declare-fun tp!2162758 () Bool)

(assert (=> b!7461758 (= e!4452959 (and tp!2162755 tp!2162758))))

(declare-fun b!7461759 () Bool)

(assert (=> b!7461759 (= e!4452954 (not e!4452956))))

(declare-fun res!2993060 () Bool)

(assert (=> b!7461759 (=> res!2993060 e!4452956)))

(declare-fun lt!2622718 () Bool)

(assert (=> b!7461759 (= res!2993060 lt!2622718)))

(declare-fun lt!2622712 () Regex!19535)

(assert (=> b!7461759 (= lt!2622720 (matchRSpec!4214 lt!2622712 s!13591))))

(assert (=> b!7461759 (= lt!2622720 (matchR!9299 lt!2622712 s!13591))))

(declare-fun lt!2622722 () Unit!165905)

(assert (=> b!7461759 (= lt!2622722 (mainMatchTheorem!4208 lt!2622712 s!13591))))

(declare-fun lt!2622723 () Regex!19535)

(assert (=> b!7461759 (= lt!2622718 (matchRSpec!4214 lt!2622723 s!13591))))

(assert (=> b!7461759 (= lt!2622718 (matchR!9299 lt!2622723 s!13591))))

(declare-fun lt!2622713 () Unit!165905)

(assert (=> b!7461759 (= lt!2622713 (mainMatchTheorem!4208 lt!2622723 s!13591))))

(assert (=> b!7461759 (= lt!2622712 (Union!19535 lt!2622715 (Concat!28380 r2!5783 rTail!78)))))

(assert (=> b!7461759 (= lt!2622715 (Concat!28380 r1!5845 rTail!78))))

(assert (=> b!7461759 (= lt!2622723 (Concat!28380 lt!2622714 rTail!78))))

(assert (=> b!7461759 (= lt!2622714 (Union!19535 r1!5845 r2!5783))))

(declare-fun b!7461760 () Bool)

(declare-fun res!2993056 () Bool)

(assert (=> b!7461760 (=> (not res!2993056) (not e!4452954))))

(assert (=> b!7461760 (= res!2993056 (validRegex!10049 rTail!78))))

(declare-fun b!7461761 () Bool)

(declare-fun tp!2162751 () Bool)

(declare-fun tp!2162753 () Bool)

(assert (=> b!7461761 (= e!4452958 (and tp!2162751 tp!2162753))))

(assert (= (and start!723898 res!2993057) b!7461755))

(assert (= (and b!7461755 res!2993058) b!7461760))

(assert (= (and b!7461760 res!2993056) b!7461759))

(assert (= (and b!7461759 (not res!2993060)) b!7461752))

(assert (= (and b!7461752 (not res!2993059)) b!7461756))

(get-info :version)

(assert (= (and start!723898 ((_ is ElementMatch!19535) r1!5845)) b!7461754))

(assert (= (and start!723898 ((_ is Concat!28380) r1!5845)) b!7461745))

(assert (= (and start!723898 ((_ is Star!19535) r1!5845)) b!7461753))

(assert (= (and start!723898 ((_ is Union!19535) r1!5845)) b!7461748))

(assert (= (and start!723898 ((_ is ElementMatch!19535) r2!5783)) b!7461747))

(assert (= (and start!723898 ((_ is Concat!28380) r2!5783)) b!7461761))

(assert (= (and start!723898 ((_ is Star!19535) r2!5783)) b!7461749))

(assert (= (and start!723898 ((_ is Union!19535) r2!5783)) b!7461744))

(assert (= (and start!723898 ((_ is ElementMatch!19535) rTail!78)) b!7461746))

(assert (= (and start!723898 ((_ is Concat!28380) rTail!78)) b!7461758))

(assert (= (and start!723898 ((_ is Star!19535) rTail!78)) b!7461757))

(assert (= (and start!723898 ((_ is Union!19535) rTail!78)) b!7461751))

(assert (= (and start!723898 ((_ is Cons!72127) s!13591)) b!7461750))

(declare-fun m!8062708 () Bool)

(assert (=> b!7461755 m!8062708))

(declare-fun m!8062710 () Bool)

(assert (=> start!723898 m!8062710))

(declare-fun m!8062712 () Bool)

(assert (=> b!7461759 m!8062712))

(declare-fun m!8062714 () Bool)

(assert (=> b!7461759 m!8062714))

(declare-fun m!8062716 () Bool)

(assert (=> b!7461759 m!8062716))

(declare-fun m!8062718 () Bool)

(assert (=> b!7461759 m!8062718))

(declare-fun m!8062720 () Bool)

(assert (=> b!7461759 m!8062720))

(declare-fun m!8062722 () Bool)

(assert (=> b!7461759 m!8062722))

(declare-fun m!8062724 () Bool)

(assert (=> b!7461756 m!8062724))

(declare-fun m!8062726 () Bool)

(assert (=> b!7461756 m!8062726))

(declare-fun m!8062728 () Bool)

(assert (=> b!7461756 m!8062728))

(declare-fun m!8062730 () Bool)

(assert (=> b!7461760 m!8062730))

(declare-fun m!8062732 () Bool)

(assert (=> b!7461752 m!8062732))

(declare-fun m!8062734 () Bool)

(assert (=> b!7461752 m!8062734))

(declare-fun m!8062736 () Bool)

(assert (=> b!7461752 m!8062736))

(assert (=> b!7461752 m!8062732))

(declare-fun m!8062738 () Bool)

(assert (=> b!7461752 m!8062738))

(assert (=> b!7461752 m!8062734))

(declare-fun m!8062740 () Bool)

(assert (=> b!7461752 m!8062740))

(declare-fun m!8062742 () Bool)

(assert (=> b!7461752 m!8062742))

(check-sat (not b!7461744) (not b!7461753) (not b!7461750) (not b!7461752) (not b!7461748) (not b!7461758) (not b!7461757) (not b!7461751) (not b!7461745) (not b!7461760) (not start!723898) (not b!7461755) tp_is_empty!49359 (not b!7461749) (not b!7461756) (not b!7461761) (not b!7461759))
(check-sat)
