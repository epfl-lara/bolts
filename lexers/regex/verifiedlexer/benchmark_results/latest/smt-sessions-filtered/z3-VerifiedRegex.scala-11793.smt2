; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664482 () Bool)

(assert start!664482)

(declare-fun b!6895264 () Bool)

(assert (=> b!6895264 true))

(assert (=> b!6895264 true))

(assert (=> b!6895264 true))

(declare-fun lambda!390928 () Int)

(declare-fun lambda!390927 () Int)

(assert (=> b!6895264 (not (= lambda!390928 lambda!390927))))

(assert (=> b!6895264 true))

(assert (=> b!6895264 true))

(assert (=> b!6895264 true))

(declare-fun bs!1840713 () Bool)

(declare-fun b!6895257 () Bool)

(assert (= bs!1840713 (and b!6895257 b!6895264)))

(declare-datatypes ((C!33936 0))(
  ( (C!33937 (val!26670 Int)) )
))
(declare-datatypes ((Regex!16833 0))(
  ( (ElementMatch!16833 (c!1281663 C!33936)) (Concat!25678 (regOne!34178 Regex!16833) (regTwo!34178 Regex!16833)) (EmptyExpr!16833) (Star!16833 (reg!17162 Regex!16833)) (EmptyLang!16833) (Union!16833 (regOne!34179 Regex!16833) (regTwo!34179 Regex!16833)) )
))
(declare-fun r1!6342 () Regex!16833)

(declare-fun r3!135 () Regex!16833)

(declare-datatypes ((List!66590 0))(
  ( (Nil!66466) (Cons!66466 (h!72914 C!33936) (t!380333 List!66590)) )
))
(declare-datatypes ((tuple2!67400 0))(
  ( (tuple2!67401 (_1!37003 List!66590) (_2!37003 List!66590)) )
))
(declare-fun lt!2463796 () tuple2!67400)

(declare-fun lt!2463795 () Regex!16833)

(declare-fun r2!6280 () Regex!16833)

(declare-fun lambda!390929 () Int)

(declare-fun s!14361 () List!66590)

(assert (=> bs!1840713 (= (and (= (_2!37003 lt!2463796) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2463795)) (= lambda!390929 lambda!390927))))

(assert (=> bs!1840713 (not (= lambda!390929 lambda!390928))))

(assert (=> b!6895257 true))

(assert (=> b!6895257 true))

(assert (=> b!6895257 true))

(declare-fun lambda!390930 () Int)

(assert (=> bs!1840713 (not (= lambda!390930 lambda!390927))))

(assert (=> bs!1840713 (= (and (= (_2!37003 lt!2463796) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2463795)) (= lambda!390930 lambda!390928))))

(assert (=> b!6895257 (not (= lambda!390930 lambda!390929))))

(assert (=> b!6895257 true))

(assert (=> b!6895257 true))

(assert (=> b!6895257 true))

(declare-fun b!6895254 () Bool)

(declare-fun e!4153279 () Bool)

(declare-fun tp!1897965 () Bool)

(declare-fun tp!1897962 () Bool)

(assert (=> b!6895254 (= e!4153279 (and tp!1897965 tp!1897962))))

(declare-fun b!6895255 () Bool)

(declare-fun e!4153277 () Bool)

(declare-fun tp!1897963 () Bool)

(assert (=> b!6895255 (= e!4153277 tp!1897963)))

(declare-fun b!6895256 () Bool)

(declare-fun e!4153276 () Bool)

(declare-fun tp_is_empty!42891 () Bool)

(assert (=> b!6895256 (= e!4153276 tp_is_empty!42891)))

(declare-fun e!4153280 () Bool)

(assert (=> b!6895257 (= e!4153280 true)))

(declare-fun Exists!3841 (Int) Bool)

(assert (=> b!6895257 (= (Exists!3841 lambda!390929) (Exists!3841 lambda!390930))))

(declare-datatypes ((Unit!160386 0))(
  ( (Unit!160387) )
))
(declare-fun lt!2463800 () Unit!160386)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2314 (Regex!16833 Regex!16833 List!66590) Unit!160386)

(assert (=> b!6895257 (= lt!2463800 (lemmaExistCutMatchRandMatchRSpecEquivalent!2314 r2!6280 r3!135 (_2!37003 lt!2463796)))))

(declare-datatypes ((Option!16612 0))(
  ( (None!16611) (Some!16611 (v!52883 tuple2!67400)) )
))
(declare-fun isDefined!13315 (Option!16612) Bool)

(declare-fun findConcatSeparation!3026 (Regex!16833 Regex!16833 List!66590 List!66590 List!66590) Option!16612)

(assert (=> b!6895257 (= (isDefined!13315 (findConcatSeparation!3026 r2!6280 r3!135 Nil!66466 (_2!37003 lt!2463796) (_2!37003 lt!2463796))) (Exists!3841 lambda!390929))))

(declare-fun lt!2463802 () Unit!160386)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2788 (Regex!16833 Regex!16833 List!66590) Unit!160386)

(assert (=> b!6895257 (= lt!2463802 (lemmaFindConcatSeparationEquivalentToExists!2788 r2!6280 r3!135 (_2!37003 lt!2463796)))))

(declare-fun matchRSpec!3896 (Regex!16833 List!66590) Bool)

(assert (=> b!6895257 (matchRSpec!3896 lt!2463795 (_2!37003 lt!2463796))))

(declare-fun lt!2463801 () Unit!160386)

(declare-fun mainMatchTheorem!3896 (Regex!16833 List!66590) Unit!160386)

(assert (=> b!6895257 (= lt!2463801 (mainMatchTheorem!3896 lt!2463795 (_2!37003 lt!2463796)))))

(declare-fun b!6895258 () Bool)

(declare-fun tp!1897960 () Bool)

(assert (=> b!6895258 (= e!4153276 tp!1897960)))

(declare-fun b!6895259 () Bool)

(assert (=> b!6895259 (= e!4153277 tp_is_empty!42891)))

(declare-fun b!6895260 () Bool)

(declare-fun tp!1897974 () Bool)

(assert (=> b!6895260 (= e!4153279 tp!1897974)))

(declare-fun b!6895261 () Bool)

(declare-fun e!4153282 () Bool)

(declare-fun tp!1897972 () Bool)

(assert (=> b!6895261 (= e!4153282 (and tp_is_empty!42891 tp!1897972))))

(declare-fun b!6895262 () Bool)

(declare-fun tp!1897966 () Bool)

(declare-fun tp!1897967 () Bool)

(assert (=> b!6895262 (= e!4153277 (and tp!1897966 tp!1897967))))

(declare-fun b!6895263 () Bool)

(declare-fun tp!1897969 () Bool)

(declare-fun tp!1897964 () Bool)

(assert (=> b!6895263 (= e!4153276 (and tp!1897969 tp!1897964))))

(declare-fun e!4153281 () Bool)

(assert (=> b!6895264 (= e!4153281 e!4153280)))

(declare-fun res!2811233 () Bool)

(assert (=> b!6895264 (=> res!2811233 e!4153280)))

(declare-fun lt!2463791 () Bool)

(assert (=> b!6895264 (= res!2811233 (not lt!2463791))))

(assert (=> b!6895264 (= lt!2463791 (matchRSpec!3896 r1!6342 (_1!37003 lt!2463796)))))

(declare-fun matchR!8978 (Regex!16833 List!66590) Bool)

(assert (=> b!6895264 (= lt!2463791 (matchR!8978 r1!6342 (_1!37003 lt!2463796)))))

(declare-fun lt!2463799 () Unit!160386)

(assert (=> b!6895264 (= lt!2463799 (mainMatchTheorem!3896 r1!6342 (_1!37003 lt!2463796)))))

(declare-fun lt!2463792 () Option!16612)

(declare-fun get!23200 (Option!16612) tuple2!67400)

(assert (=> b!6895264 (= lt!2463796 (get!23200 lt!2463792))))

(assert (=> b!6895264 (= (Exists!3841 lambda!390927) (Exists!3841 lambda!390928))))

(declare-fun lt!2463797 () Unit!160386)

(assert (=> b!6895264 (= lt!2463797 (lemmaExistCutMatchRandMatchRSpecEquivalent!2314 r1!6342 lt!2463795 s!14361))))

(assert (=> b!6895264 (Exists!3841 lambda!390927)))

(declare-fun lt!2463803 () Unit!160386)

(assert (=> b!6895264 (= lt!2463803 (lemmaFindConcatSeparationEquivalentToExists!2788 r1!6342 lt!2463795 s!14361))))

(declare-fun b!6895266 () Bool)

(declare-fun e!4153278 () Bool)

(assert (=> b!6895266 (= e!4153278 e!4153281)))

(declare-fun res!2811234 () Bool)

(assert (=> b!6895266 (=> res!2811234 e!4153281)))

(assert (=> b!6895266 (= res!2811234 (not (isDefined!13315 lt!2463792)))))

(assert (=> b!6895266 (= lt!2463792 (findConcatSeparation!3026 r1!6342 lt!2463795 Nil!66466 s!14361 s!14361))))

(declare-fun b!6895267 () Bool)

(declare-fun tp!1897973 () Bool)

(declare-fun tp!1897961 () Bool)

(assert (=> b!6895267 (= e!4153279 (and tp!1897973 tp!1897961))))

(declare-fun b!6895268 () Bool)

(declare-fun res!2811230 () Bool)

(declare-fun e!4153275 () Bool)

(assert (=> b!6895268 (=> (not res!2811230) (not e!4153275))))

(declare-fun validRegex!8541 (Regex!16833) Bool)

(assert (=> b!6895268 (= res!2811230 (validRegex!8541 r3!135))))

(declare-fun b!6895269 () Bool)

(declare-fun tp!1897975 () Bool)

(declare-fun tp!1897970 () Bool)

(assert (=> b!6895269 (= e!4153276 (and tp!1897975 tp!1897970))))

(declare-fun b!6895270 () Bool)

(assert (=> b!6895270 (= e!4153275 (not e!4153278))))

(declare-fun res!2811235 () Bool)

(assert (=> b!6895270 (=> res!2811235 e!4153278)))

(declare-fun lt!2463793 () Bool)

(assert (=> b!6895270 (= res!2811235 lt!2463793)))

(declare-fun lt!2463794 () Regex!16833)

(assert (=> b!6895270 (= (matchR!8978 lt!2463794 s!14361) (matchRSpec!3896 lt!2463794 s!14361))))

(declare-fun lt!2463798 () Unit!160386)

(assert (=> b!6895270 (= lt!2463798 (mainMatchTheorem!3896 lt!2463794 s!14361))))

(declare-fun lt!2463805 () Regex!16833)

(assert (=> b!6895270 (= lt!2463793 (matchRSpec!3896 lt!2463805 s!14361))))

(assert (=> b!6895270 (= lt!2463793 (matchR!8978 lt!2463805 s!14361))))

(declare-fun lt!2463804 () Unit!160386)

(assert (=> b!6895270 (= lt!2463804 (mainMatchTheorem!3896 lt!2463805 s!14361))))

(assert (=> b!6895270 (= lt!2463794 (Concat!25678 r1!6342 lt!2463795))))

(assert (=> b!6895270 (= lt!2463795 (Concat!25678 r2!6280 r3!135))))

(assert (=> b!6895270 (= lt!2463805 (Concat!25678 (Concat!25678 r1!6342 r2!6280) r3!135))))

(declare-fun b!6895271 () Bool)

(declare-fun res!2811231 () Bool)

(assert (=> b!6895271 (=> res!2811231 e!4153280)))

(assert (=> b!6895271 (= res!2811231 (not (matchR!8978 lt!2463795 (_2!37003 lt!2463796))))))

(declare-fun b!6895272 () Bool)

(declare-fun res!2811236 () Bool)

(assert (=> b!6895272 (=> (not res!2811236) (not e!4153275))))

(assert (=> b!6895272 (= res!2811236 (validRegex!8541 r2!6280))))

(declare-fun b!6895273 () Bool)

(assert (=> b!6895273 (= e!4153279 tp_is_empty!42891)))

(declare-fun res!2811232 () Bool)

(assert (=> start!664482 (=> (not res!2811232) (not e!4153275))))

(assert (=> start!664482 (= res!2811232 (validRegex!8541 r1!6342))))

(assert (=> start!664482 e!4153275))

(assert (=> start!664482 e!4153277))

(assert (=> start!664482 e!4153279))

(assert (=> start!664482 e!4153276))

(assert (=> start!664482 e!4153282))

(declare-fun b!6895265 () Bool)

(declare-fun tp!1897971 () Bool)

(declare-fun tp!1897968 () Bool)

(assert (=> b!6895265 (= e!4153277 (and tp!1897971 tp!1897968))))

(assert (= (and start!664482 res!2811232) b!6895272))

(assert (= (and b!6895272 res!2811236) b!6895268))

(assert (= (and b!6895268 res!2811230) b!6895270))

(assert (= (and b!6895270 (not res!2811235)) b!6895266))

(assert (= (and b!6895266 (not res!2811234)) b!6895264))

(assert (= (and b!6895264 (not res!2811233)) b!6895271))

(assert (= (and b!6895271 (not res!2811231)) b!6895257))

(get-info :version)

(assert (= (and start!664482 ((_ is ElementMatch!16833) r1!6342)) b!6895259))

(assert (= (and start!664482 ((_ is Concat!25678) r1!6342)) b!6895262))

(assert (= (and start!664482 ((_ is Star!16833) r1!6342)) b!6895255))

(assert (= (and start!664482 ((_ is Union!16833) r1!6342)) b!6895265))

(assert (= (and start!664482 ((_ is ElementMatch!16833) r2!6280)) b!6895273))

(assert (= (and start!664482 ((_ is Concat!25678) r2!6280)) b!6895267))

(assert (= (and start!664482 ((_ is Star!16833) r2!6280)) b!6895260))

(assert (= (and start!664482 ((_ is Union!16833) r2!6280)) b!6895254))

(assert (= (and start!664482 ((_ is ElementMatch!16833) r3!135)) b!6895256))

(assert (= (and start!664482 ((_ is Concat!25678) r3!135)) b!6895269))

(assert (= (and start!664482 ((_ is Star!16833) r3!135)) b!6895258))

(assert (= (and start!664482 ((_ is Union!16833) r3!135)) b!6895263))

(assert (= (and start!664482 ((_ is Cons!66466) s!14361)) b!6895261))

(declare-fun m!7614712 () Bool)

(assert (=> b!6895270 m!7614712))

(declare-fun m!7614714 () Bool)

(assert (=> b!6895270 m!7614714))

(declare-fun m!7614716 () Bool)

(assert (=> b!6895270 m!7614716))

(declare-fun m!7614718 () Bool)

(assert (=> b!6895270 m!7614718))

(declare-fun m!7614720 () Bool)

(assert (=> b!6895270 m!7614720))

(declare-fun m!7614722 () Bool)

(assert (=> b!6895270 m!7614722))

(declare-fun m!7614724 () Bool)

(assert (=> b!6895271 m!7614724))

(declare-fun m!7614726 () Bool)

(assert (=> b!6895268 m!7614726))

(declare-fun m!7614728 () Bool)

(assert (=> b!6895272 m!7614728))

(declare-fun m!7614730 () Bool)

(assert (=> b!6895257 m!7614730))

(declare-fun m!7614732 () Bool)

(assert (=> b!6895257 m!7614732))

(declare-fun m!7614734 () Bool)

(assert (=> b!6895257 m!7614734))

(declare-fun m!7614736 () Bool)

(assert (=> b!6895257 m!7614736))

(declare-fun m!7614738 () Bool)

(assert (=> b!6895257 m!7614738))

(assert (=> b!6895257 m!7614732))

(declare-fun m!7614740 () Bool)

(assert (=> b!6895257 m!7614740))

(declare-fun m!7614742 () Bool)

(assert (=> b!6895257 m!7614742))

(assert (=> b!6895257 m!7614738))

(declare-fun m!7614744 () Bool)

(assert (=> b!6895257 m!7614744))

(declare-fun m!7614746 () Bool)

(assert (=> b!6895266 m!7614746))

(declare-fun m!7614748 () Bool)

(assert (=> b!6895266 m!7614748))

(declare-fun m!7614750 () Bool)

(assert (=> start!664482 m!7614750))

(declare-fun m!7614752 () Bool)

(assert (=> b!6895264 m!7614752))

(declare-fun m!7614754 () Bool)

(assert (=> b!6895264 m!7614754))

(declare-fun m!7614756 () Bool)

(assert (=> b!6895264 m!7614756))

(declare-fun m!7614758 () Bool)

(assert (=> b!6895264 m!7614758))

(declare-fun m!7614760 () Bool)

(assert (=> b!6895264 m!7614760))

(declare-fun m!7614762 () Bool)

(assert (=> b!6895264 m!7614762))

(assert (=> b!6895264 m!7614760))

(declare-fun m!7614764 () Bool)

(assert (=> b!6895264 m!7614764))

(declare-fun m!7614766 () Bool)

(assert (=> b!6895264 m!7614766))

(check-sat (not b!6895272) (not b!6895260) (not b!6895267) (not b!6895261) (not b!6895263) (not b!6895255) (not b!6895254) (not b!6895262) (not b!6895257) (not b!6895265) (not b!6895269) (not start!664482) (not b!6895266) (not b!6895258) tp_is_empty!42891 (not b!6895268) (not b!6895271) (not b!6895270) (not b!6895264))
(check-sat)
