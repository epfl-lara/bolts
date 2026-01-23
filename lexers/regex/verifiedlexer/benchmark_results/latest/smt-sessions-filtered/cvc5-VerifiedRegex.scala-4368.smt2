; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!232236 () Bool)

(assert start!232236)

(declare-fun b!2366303 () Bool)

(assert (=> b!2366303 true))

(assert (=> b!2366303 true))

(declare-fun lambda!87298 () Int)

(declare-fun lambda!87297 () Int)

(assert (=> b!2366303 (not (= lambda!87298 lambda!87297))))

(assert (=> b!2366303 true))

(assert (=> b!2366303 true))

(declare-fun b!2366295 () Bool)

(declare-fun e!1510824 () Bool)

(declare-fun tp!756720 () Bool)

(assert (=> b!2366295 (= e!1510824 tp!756720)))

(declare-fun b!2366296 () Bool)

(declare-fun e!1510823 () Bool)

(declare-fun tp_is_empty!11269 () Bool)

(declare-fun tp!756715 () Bool)

(assert (=> b!2366296 (= e!1510823 (and tp_is_empty!11269 tp!756715))))

(declare-fun b!2366297 () Bool)

(declare-fun e!1510820 () Bool)

(declare-fun e!1510825 () Bool)

(assert (=> b!2366297 (= e!1510820 e!1510825)))

(declare-fun res!1004226 () Bool)

(assert (=> b!2366297 (=> res!1004226 e!1510825)))

(declare-datatypes ((C!14014 0))(
  ( (C!14015 (val!8249 Int)) )
))
(declare-datatypes ((Regex!6928 0))(
  ( (ElementMatch!6928 (c!376106 C!14014)) (Concat!11564 (regOne!14368 Regex!6928) (regTwo!14368 Regex!6928)) (EmptyExpr!6928) (Star!6928 (reg!7257 Regex!6928)) (EmptyLang!6928) (Union!6928 (regOne!14369 Regex!6928) (regTwo!14369 Regex!6928)) )
))
(declare-datatypes ((List!28094 0))(
  ( (Nil!27996) (Cons!27996 (h!33397 Regex!6928) (t!208071 List!28094)) )
))
(declare-fun lt!865182 () List!28094)

(declare-fun isEmpty!15919 (List!28094) Bool)

(assert (=> b!2366297 (= res!1004226 (not (isEmpty!15919 lt!865182)))))

(declare-fun l!9164 () List!28094)

(declare-fun tail!3371 (List!28094) List!28094)

(assert (=> b!2366297 (= lt!865182 (tail!3371 l!9164))))

(declare-fun b!2366298 () Bool)

(declare-fun res!1004229 () Bool)

(assert (=> b!2366298 (=> res!1004229 e!1510820)))

(assert (=> b!2366298 (= res!1004229 (isEmpty!15919 l!9164))))

(declare-fun b!2366299 () Bool)

(declare-fun tp!756714 () Bool)

(declare-fun tp!756717 () Bool)

(assert (=> b!2366299 (= e!1510824 (and tp!756714 tp!756717))))

(declare-fun b!2366300 () Bool)

(declare-fun e!1510819 () Bool)

(declare-fun e!1510822 () Bool)

(assert (=> b!2366300 (= e!1510819 (not e!1510822))))

(declare-fun res!1004225 () Bool)

(assert (=> b!2366300 (=> res!1004225 e!1510822)))

(declare-fun r!13927 () Regex!6928)

(assert (=> b!2366300 (= res!1004225 (not (is-Concat!11564 r!13927)))))

(declare-fun lt!865185 () Bool)

(declare-fun lt!865181 () Bool)

(assert (=> b!2366300 (= lt!865185 lt!865181)))

(declare-datatypes ((List!28095 0))(
  ( (Nil!27997) (Cons!27997 (h!33398 C!14014) (t!208072 List!28095)) )
))
(declare-fun s!9460 () List!28095)

(declare-fun matchRSpec!777 (Regex!6928 List!28095) Bool)

(assert (=> b!2366300 (= lt!865181 (matchRSpec!777 r!13927 s!9460))))

(declare-fun matchR!3045 (Regex!6928 List!28095) Bool)

(assert (=> b!2366300 (= lt!865185 (matchR!3045 r!13927 s!9460))))

(declare-datatypes ((Unit!40891 0))(
  ( (Unit!40892) )
))
(declare-fun lt!865183 () Unit!40891)

(declare-fun mainMatchTheorem!777 (Regex!6928 List!28095) Unit!40891)

(assert (=> b!2366300 (= lt!865183 (mainMatchTheorem!777 r!13927 s!9460))))

(declare-fun b!2366301 () Bool)

(declare-fun e!1510821 () Bool)

(declare-fun tp!756719 () Bool)

(declare-fun tp!756716 () Bool)

(assert (=> b!2366301 (= e!1510821 (and tp!756719 tp!756716))))

(declare-fun b!2366302 () Bool)

(declare-fun res!1004230 () Bool)

(assert (=> b!2366302 (=> (not res!1004230) (not e!1510819))))

(declare-fun generalisedConcat!29 (List!28094) Regex!6928)

(assert (=> b!2366302 (= res!1004230 (= r!13927 (generalisedConcat!29 l!9164)))))

(assert (=> b!2366303 (= e!1510822 e!1510820)))

(declare-fun res!1004227 () Bool)

(assert (=> b!2366303 (=> res!1004227 e!1510820)))

(declare-fun lt!865179 () Bool)

(assert (=> b!2366303 (= res!1004227 (not (= lt!865181 lt!865179)))))

(declare-fun Exists!990 (Int) Bool)

(assert (=> b!2366303 (= (Exists!990 lambda!87297) (Exists!990 lambda!87298))))

(declare-fun lt!865184 () Unit!40891)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!329 (Regex!6928 Regex!6928 List!28095) Unit!40891)

(assert (=> b!2366303 (= lt!865184 (lemmaExistCutMatchRandMatchRSpecEquivalent!329 (regOne!14368 r!13927) (regTwo!14368 r!13927) s!9460))))

(assert (=> b!2366303 (= lt!865179 (Exists!990 lambda!87297))))

(declare-datatypes ((tuple2!27720 0))(
  ( (tuple2!27721 (_1!16401 List!28095) (_2!16401 List!28095)) )
))
(declare-datatypes ((Option!5471 0))(
  ( (None!5470) (Some!5470 (v!30878 tuple2!27720)) )
))
(declare-fun isDefined!4299 (Option!5471) Bool)

(declare-fun findConcatSeparation!579 (Regex!6928 Regex!6928 List!28095 List!28095 List!28095) Option!5471)

(assert (=> b!2366303 (= lt!865179 (isDefined!4299 (findConcatSeparation!579 (regOne!14368 r!13927) (regTwo!14368 r!13927) Nil!27997 s!9460 s!9460)))))

(declare-fun lt!865180 () Unit!40891)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!579 (Regex!6928 Regex!6928 List!28095) Unit!40891)

(assert (=> b!2366303 (= lt!865180 (lemmaFindConcatSeparationEquivalentToExists!579 (regOne!14368 r!13927) (regTwo!14368 r!13927) s!9460))))

(declare-fun b!2366304 () Bool)

(declare-fun lambda!87296 () Int)

(declare-fun forall!5562 (List!28094 Int) Bool)

(assert (=> b!2366304 (= e!1510825 (forall!5562 lt!865182 lambda!87296))))

(declare-fun res!1004228 () Bool)

(assert (=> start!232236 (=> (not res!1004228) (not e!1510819))))

(assert (=> start!232236 (= res!1004228 (forall!5562 l!9164 lambda!87296))))

(assert (=> start!232236 e!1510819))

(assert (=> start!232236 e!1510821))

(assert (=> start!232236 e!1510824))

(assert (=> start!232236 e!1510823))

(declare-fun b!2366305 () Bool)

(declare-fun tp!756718 () Bool)

(declare-fun tp!756721 () Bool)

(assert (=> b!2366305 (= e!1510824 (and tp!756718 tp!756721))))

(declare-fun b!2366306 () Bool)

(assert (=> b!2366306 (= e!1510824 tp_is_empty!11269)))

(assert (= (and start!232236 res!1004228) b!2366302))

(assert (= (and b!2366302 res!1004230) b!2366300))

(assert (= (and b!2366300 (not res!1004225)) b!2366303))

(assert (= (and b!2366303 (not res!1004227)) b!2366298))

(assert (= (and b!2366298 (not res!1004229)) b!2366297))

(assert (= (and b!2366297 (not res!1004226)) b!2366304))

(assert (= (and start!232236 (is-Cons!27996 l!9164)) b!2366301))

(assert (= (and start!232236 (is-ElementMatch!6928 r!13927)) b!2366306))

(assert (= (and start!232236 (is-Concat!11564 r!13927)) b!2366299))

(assert (= (and start!232236 (is-Star!6928 r!13927)) b!2366295))

(assert (= (and start!232236 (is-Union!6928 r!13927)) b!2366305))

(assert (= (and start!232236 (is-Cons!27997 s!9460)) b!2366296))

(declare-fun m!2776239 () Bool)

(assert (=> b!2366298 m!2776239))

(declare-fun m!2776241 () Bool)

(assert (=> b!2366300 m!2776241))

(declare-fun m!2776243 () Bool)

(assert (=> b!2366300 m!2776243))

(declare-fun m!2776245 () Bool)

(assert (=> b!2366300 m!2776245))

(declare-fun m!2776247 () Bool)

(assert (=> start!232236 m!2776247))

(declare-fun m!2776249 () Bool)

(assert (=> b!2366297 m!2776249))

(declare-fun m!2776251 () Bool)

(assert (=> b!2366297 m!2776251))

(declare-fun m!2776253 () Bool)

(assert (=> b!2366304 m!2776253))

(declare-fun m!2776255 () Bool)

(assert (=> b!2366303 m!2776255))

(declare-fun m!2776257 () Bool)

(assert (=> b!2366303 m!2776257))

(declare-fun m!2776259 () Bool)

(assert (=> b!2366303 m!2776259))

(declare-fun m!2776261 () Bool)

(assert (=> b!2366303 m!2776261))

(assert (=> b!2366303 m!2776255))

(declare-fun m!2776263 () Bool)

(assert (=> b!2366303 m!2776263))

(assert (=> b!2366303 m!2776263))

(declare-fun m!2776265 () Bool)

(assert (=> b!2366303 m!2776265))

(declare-fun m!2776267 () Bool)

(assert (=> b!2366302 m!2776267))

(push 1)

(assert (not b!2366299))

(assert (not b!2366298))

(assert (not b!2366297))

(assert tp_is_empty!11269)

(assert (not start!232236))

(assert (not b!2366304))

(assert (not b!2366300))

(assert (not b!2366301))

(assert (not b!2366305))

(assert (not b!2366295))

(assert (not b!2366296))

(assert (not b!2366303))

(assert (not b!2366302))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!694763 () Bool)

(assert (=> d!694763 (= (isEmpty!15919 lt!865182) (is-Nil!27996 lt!865182))))

(assert (=> b!2366297 d!694763))

(declare-fun d!694765 () Bool)

(assert (=> d!694765 (= (tail!3371 l!9164) (t!208071 l!9164))))

(assert (=> b!2366297 d!694765))

(declare-fun bs!460928 () Bool)

(declare-fun d!694767 () Bool)

(assert (= bs!460928 (and d!694767 start!232236)))

(declare-fun lambda!87314 () Int)

(assert (=> bs!460928 (= lambda!87314 lambda!87296)))

(declare-fun b!2366383 () Bool)

(declare-fun e!1510868 () Bool)

(declare-fun lt!865209 () Regex!6928)

(declare-fun head!5102 (List!28094) Regex!6928)

(assert (=> b!2366383 (= e!1510868 (= lt!865209 (head!5102 l!9164)))))

(declare-fun b!2366384 () Bool)

(declare-fun isConcat!14 (Regex!6928) Bool)

(assert (=> b!2366384 (= e!1510868 (isConcat!14 lt!865209))))

(declare-fun b!2366385 () Bool)

(declare-fun e!1510870 () Bool)

(assert (=> b!2366385 (= e!1510870 (isEmpty!15919 (t!208071 l!9164)))))

(declare-fun b!2366386 () Bool)

(declare-fun e!1510866 () Regex!6928)

(assert (=> b!2366386 (= e!1510866 (h!33397 l!9164))))

(declare-fun b!2366387 () Bool)

(declare-fun e!1510869 () Regex!6928)

(assert (=> b!2366387 (= e!1510869 (Concat!11564 (h!33397 l!9164) (generalisedConcat!29 (t!208071 l!9164))))))

(declare-fun b!2366388 () Bool)

(declare-fun e!1510865 () Bool)

(declare-fun e!1510867 () Bool)

(assert (=> b!2366388 (= e!1510865 e!1510867)))

(declare-fun c!376119 () Bool)

(assert (=> b!2366388 (= c!376119 (isEmpty!15919 l!9164))))

(declare-fun b!2366389 () Bool)

(assert (=> b!2366389 (= e!1510866 e!1510869)))

(declare-fun c!376116 () Bool)

(assert (=> b!2366389 (= c!376116 (is-Cons!27996 l!9164))))

(declare-fun b!2366390 () Bool)

(assert (=> b!2366390 (= e!1510869 EmptyExpr!6928)))

(assert (=> d!694767 e!1510865))

(declare-fun res!1004265 () Bool)

(assert (=> d!694767 (=> (not res!1004265) (not e!1510865))))

(declare-fun validRegex!2658 (Regex!6928) Bool)

(assert (=> d!694767 (= res!1004265 (validRegex!2658 lt!865209))))

(assert (=> d!694767 (= lt!865209 e!1510866)))

(declare-fun c!376117 () Bool)

(assert (=> d!694767 (= c!376117 e!1510870)))

(declare-fun res!1004266 () Bool)

(assert (=> d!694767 (=> (not res!1004266) (not e!1510870))))

(assert (=> d!694767 (= res!1004266 (is-Cons!27996 l!9164))))

(assert (=> d!694767 (forall!5562 l!9164 lambda!87314)))

(assert (=> d!694767 (= (generalisedConcat!29 l!9164) lt!865209)))

(declare-fun b!2366391 () Bool)

(declare-fun isEmptyExpr!14 (Regex!6928) Bool)

(assert (=> b!2366391 (= e!1510867 (isEmptyExpr!14 lt!865209))))

(declare-fun b!2366392 () Bool)

(assert (=> b!2366392 (= e!1510867 e!1510868)))

(declare-fun c!376118 () Bool)

(assert (=> b!2366392 (= c!376118 (isEmpty!15919 (tail!3371 l!9164)))))

(assert (= (and d!694767 res!1004266) b!2366385))

(assert (= (and d!694767 c!376117) b!2366386))

(assert (= (and d!694767 (not c!376117)) b!2366389))

(assert (= (and b!2366389 c!376116) b!2366387))

(assert (= (and b!2366389 (not c!376116)) b!2366390))

(assert (= (and d!694767 res!1004265) b!2366388))

(assert (= (and b!2366388 c!376119) b!2366391))

(assert (= (and b!2366388 (not c!376119)) b!2366392))

(assert (= (and b!2366392 c!376118) b!2366383))

(assert (= (and b!2366392 (not c!376118)) b!2366384))

(declare-fun m!2776299 () Bool)

(assert (=> b!2366384 m!2776299))

(declare-fun m!2776301 () Bool)

(assert (=> b!2366383 m!2776301))

(declare-fun m!2776303 () Bool)

(assert (=> d!694767 m!2776303))

(declare-fun m!2776305 () Bool)

(assert (=> d!694767 m!2776305))

(declare-fun m!2776307 () Bool)

(assert (=> b!2366385 m!2776307))

(assert (=> b!2366388 m!2776239))

(assert (=> b!2366392 m!2776251))

(assert (=> b!2366392 m!2776251))

(declare-fun m!2776309 () Bool)

(assert (=> b!2366392 m!2776309))

(declare-fun m!2776311 () Bool)

(assert (=> b!2366387 m!2776311))

(declare-fun m!2776313 () Bool)

(assert (=> b!2366391 m!2776313))

(assert (=> b!2366302 d!694767))

(declare-fun d!694771 () Bool)

(declare-fun isEmpty!15921 (Option!5471) Bool)

(assert (=> d!694771 (= (isDefined!4299 (findConcatSeparation!579 (regOne!14368 r!13927) (regTwo!14368 r!13927) Nil!27997 s!9460 s!9460)) (not (isEmpty!15921 (findConcatSeparation!579 (regOne!14368 r!13927) (regTwo!14368 r!13927) Nil!27997 s!9460 s!9460))))))

(declare-fun bs!460929 () Bool)

(assert (= bs!460929 d!694771))

(assert (=> bs!460929 m!2776255))

(declare-fun m!2776315 () Bool)

(assert (=> bs!460929 m!2776315))

(assert (=> b!2366303 d!694771))

(declare-fun d!694773 () Bool)

(declare-fun choose!13741 (Int) Bool)

(assert (=> d!694773 (= (Exists!990 lambda!87297) (choose!13741 lambda!87297))))

(declare-fun bs!460930 () Bool)

(assert (= bs!460930 d!694773))

(declare-fun m!2776317 () Bool)

(assert (=> bs!460930 m!2776317))

(assert (=> b!2366303 d!694773))

(declare-fun bs!460931 () Bool)

(declare-fun d!694775 () Bool)

(assert (= bs!460931 (and d!694775 b!2366303)))

(declare-fun lambda!87317 () Int)

(assert (=> bs!460931 (= lambda!87317 lambda!87297)))

(assert (=> bs!460931 (not (= lambda!87317 lambda!87298))))

(assert (=> d!694775 true))

(assert (=> d!694775 true))

(assert (=> d!694775 true))

(assert (=> d!694775 (= (isDefined!4299 (findConcatSeparation!579 (regOne!14368 r!13927) (regTwo!14368 r!13927) Nil!27997 s!9460 s!9460)) (Exists!990 lambda!87317))))

(declare-fun lt!865212 () Unit!40891)

(declare-fun choose!13742 (Regex!6928 Regex!6928 List!28095) Unit!40891)

(assert (=> d!694775 (= lt!865212 (choose!13742 (regOne!14368 r!13927) (regTwo!14368 r!13927) s!9460))))

(assert (=> d!694775 (validRegex!2658 (regOne!14368 r!13927))))

(assert (=> d!694775 (= (lemmaFindConcatSeparationEquivalentToExists!579 (regOne!14368 r!13927) (regTwo!14368 r!13927) s!9460) lt!865212)))

(declare-fun bs!460932 () Bool)

(assert (= bs!460932 d!694775))

(declare-fun m!2776319 () Bool)

(assert (=> bs!460932 m!2776319))

(assert (=> bs!460932 m!2776255))

(declare-fun m!2776321 () Bool)

(assert (=> bs!460932 m!2776321))

(assert (=> bs!460932 m!2776255))

(assert (=> bs!460932 m!2776257))

(declare-fun m!2776323 () Bool)

(assert (=> bs!460932 m!2776323))

(assert (=> b!2366303 d!694775))

(declare-fun b!2366447 () Bool)

(declare-fun e!1510905 () Bool)

(assert (=> b!2366447 (= e!1510905 (matchR!3045 (regTwo!14368 r!13927) s!9460))))

(declare-fun b!2366448 () Bool)

(declare-fun e!1510902 () Bool)

(declare-fun lt!865219 () Option!5471)

(declare-fun ++!6893 (List!28095 List!28095) List!28095)

(declare-fun get!8503 (Option!5471) tuple2!27720)

(assert (=> b!2366448 (= e!1510902 (= (++!6893 (_1!16401 (get!8503 lt!865219)) (_2!16401 (get!8503 lt!865219))) s!9460))))

(declare-fun b!2366449 () Bool)

(declare-fun e!1510904 () Bool)

(assert (=> b!2366449 (= e!1510904 (not (isDefined!4299 lt!865219)))))

(declare-fun b!2366450 () Bool)

(declare-fun e!1510901 () Option!5471)

(assert (=> b!2366450 (= e!1510901 (Some!5470 (tuple2!27721 Nil!27997 s!9460)))))

(declare-fun d!694777 () Bool)

(assert (=> d!694777 e!1510904))

(declare-fun res!1004301 () Bool)

(assert (=> d!694777 (=> res!1004301 e!1510904)))

(assert (=> d!694777 (= res!1004301 e!1510902)))

(declare-fun res!1004298 () Bool)

(assert (=> d!694777 (=> (not res!1004298) (not e!1510902))))

(assert (=> d!694777 (= res!1004298 (isDefined!4299 lt!865219))))

(assert (=> d!694777 (= lt!865219 e!1510901)))

(declare-fun c!376132 () Bool)

(assert (=> d!694777 (= c!376132 e!1510905)))

(declare-fun res!1004299 () Bool)

(assert (=> d!694777 (=> (not res!1004299) (not e!1510905))))

(assert (=> d!694777 (= res!1004299 (matchR!3045 (regOne!14368 r!13927) Nil!27997))))

(assert (=> d!694777 (validRegex!2658 (regOne!14368 r!13927))))

(assert (=> d!694777 (= (findConcatSeparation!579 (regOne!14368 r!13927) (regTwo!14368 r!13927) Nil!27997 s!9460 s!9460) lt!865219)))

(declare-fun b!2366451 () Bool)

(declare-fun lt!865221 () Unit!40891)

(declare-fun lt!865220 () Unit!40891)

(assert (=> b!2366451 (= lt!865221 lt!865220)))

(assert (=> b!2366451 (= (++!6893 (++!6893 Nil!27997 (Cons!27997 (h!33398 s!9460) Nil!27997)) (t!208072 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!539 (List!28095 C!14014 List!28095 List!28095) Unit!40891)

(assert (=> b!2366451 (= lt!865220 (lemmaMoveElementToOtherListKeepsConcatEq!539 Nil!27997 (h!33398 s!9460) (t!208072 s!9460) s!9460))))

(declare-fun e!1510903 () Option!5471)

(assert (=> b!2366451 (= e!1510903 (findConcatSeparation!579 (regOne!14368 r!13927) (regTwo!14368 r!13927) (++!6893 Nil!27997 (Cons!27997 (h!33398 s!9460) Nil!27997)) (t!208072 s!9460) s!9460))))

(declare-fun b!2366452 () Bool)

(assert (=> b!2366452 (= e!1510901 e!1510903)))

(declare-fun c!376133 () Bool)

(assert (=> b!2366452 (= c!376133 (is-Nil!27997 s!9460))))

(declare-fun b!2366453 () Bool)

(assert (=> b!2366453 (= e!1510903 None!5470)))

(declare-fun b!2366454 () Bool)

(declare-fun res!1004300 () Bool)

(assert (=> b!2366454 (=> (not res!1004300) (not e!1510902))))

(assert (=> b!2366454 (= res!1004300 (matchR!3045 (regOne!14368 r!13927) (_1!16401 (get!8503 lt!865219))))))

(declare-fun b!2366455 () Bool)

(declare-fun res!1004297 () Bool)

(assert (=> b!2366455 (=> (not res!1004297) (not e!1510902))))

(assert (=> b!2366455 (= res!1004297 (matchR!3045 (regTwo!14368 r!13927) (_2!16401 (get!8503 lt!865219))))))

(assert (= (and d!694777 res!1004299) b!2366447))

(assert (= (and d!694777 c!376132) b!2366450))

(assert (= (and d!694777 (not c!376132)) b!2366452))

(assert (= (and b!2366452 c!376133) b!2366453))

(assert (= (and b!2366452 (not c!376133)) b!2366451))

(assert (= (and d!694777 res!1004298) b!2366454))

(assert (= (and b!2366454 res!1004300) b!2366455))

(assert (= (and b!2366455 res!1004297) b!2366448))

(assert (= (and d!694777 (not res!1004301)) b!2366449))

(declare-fun m!2776325 () Bool)

(assert (=> b!2366447 m!2776325))

(declare-fun m!2776327 () Bool)

(assert (=> b!2366449 m!2776327))

(declare-fun m!2776329 () Bool)

(assert (=> b!2366455 m!2776329))

(declare-fun m!2776331 () Bool)

(assert (=> b!2366455 m!2776331))

(declare-fun m!2776333 () Bool)

(assert (=> b!2366451 m!2776333))

(assert (=> b!2366451 m!2776333))

(declare-fun m!2776335 () Bool)

(assert (=> b!2366451 m!2776335))

(declare-fun m!2776337 () Bool)

(assert (=> b!2366451 m!2776337))

(assert (=> b!2366451 m!2776333))

(declare-fun m!2776339 () Bool)

(assert (=> b!2366451 m!2776339))

(assert (=> b!2366454 m!2776329))

(declare-fun m!2776341 () Bool)

(assert (=> b!2366454 m!2776341))

(assert (=> d!694777 m!2776327))

(declare-fun m!2776343 () Bool)

(assert (=> d!694777 m!2776343))

(assert (=> d!694777 m!2776319))

(assert (=> b!2366448 m!2776329))

(declare-fun m!2776345 () Bool)

(assert (=> b!2366448 m!2776345))

(assert (=> b!2366303 d!694777))

(declare-fun bs!460933 () Bool)

(declare-fun d!694779 () Bool)

(assert (= bs!460933 (and d!694779 b!2366303)))

(declare-fun lambda!87326 () Int)

(assert (=> bs!460933 (= lambda!87326 lambda!87297)))

(assert (=> bs!460933 (not (= lambda!87326 lambda!87298))))

(declare-fun bs!460934 () Bool)

(assert (= bs!460934 (and d!694779 d!694775)))

(assert (=> bs!460934 (= lambda!87326 lambda!87317)))

(assert (=> d!694779 true))

(assert (=> d!694779 true))

(assert (=> d!694779 true))

(declare-fun lambda!87327 () Int)

(assert (=> bs!460933 (not (= lambda!87327 lambda!87297))))

(assert (=> bs!460933 (= lambda!87327 lambda!87298)))

(assert (=> bs!460934 (not (= lambda!87327 lambda!87317))))

(declare-fun bs!460935 () Bool)

(assert (= bs!460935 d!694779))

(assert (=> bs!460935 (not (= lambda!87327 lambda!87326))))

(assert (=> d!694779 true))

(assert (=> d!694779 true))

(assert (=> d!694779 true))

(assert (=> d!694779 (= (Exists!990 lambda!87326) (Exists!990 lambda!87327))))

(declare-fun lt!865224 () Unit!40891)

(declare-fun choose!13743 (Regex!6928 Regex!6928 List!28095) Unit!40891)

(assert (=> d!694779 (= lt!865224 (choose!13743 (regOne!14368 r!13927) (regTwo!14368 r!13927) s!9460))))

(assert (=> d!694779 (validRegex!2658 (regOne!14368 r!13927))))

(assert (=> d!694779 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!329 (regOne!14368 r!13927) (regTwo!14368 r!13927) s!9460) lt!865224)))

(declare-fun m!2776347 () Bool)

(assert (=> bs!460935 m!2776347))

(declare-fun m!2776349 () Bool)

(assert (=> bs!460935 m!2776349))

(declare-fun m!2776351 () Bool)

(assert (=> bs!460935 m!2776351))

(assert (=> bs!460935 m!2776319))

(assert (=> b!2366303 d!694779))

(declare-fun d!694781 () Bool)

(assert (=> d!694781 (= (Exists!990 lambda!87298) (choose!13741 lambda!87298))))

(declare-fun bs!460936 () Bool)

(assert (= bs!460936 d!694781))

(declare-fun m!2776353 () Bool)

(assert (=> bs!460936 m!2776353))

(assert (=> b!2366303 d!694781))

(declare-fun d!694783 () Bool)

(declare-fun res!1004317 () Bool)

(declare-fun e!1510921 () Bool)

(assert (=> d!694783 (=> res!1004317 e!1510921)))

(assert (=> d!694783 (= res!1004317 (is-Nil!27996 l!9164))))

(assert (=> d!694783 (= (forall!5562 l!9164 lambda!87296) e!1510921)))

(declare-fun b!2366479 () Bool)

(declare-fun e!1510922 () Bool)

(assert (=> b!2366479 (= e!1510921 e!1510922)))

(declare-fun res!1004318 () Bool)

(assert (=> b!2366479 (=> (not res!1004318) (not e!1510922))))

(declare-fun dynLambda!12061 (Int Regex!6928) Bool)

(assert (=> b!2366479 (= res!1004318 (dynLambda!12061 lambda!87296 (h!33397 l!9164)))))

(declare-fun b!2366480 () Bool)

(assert (=> b!2366480 (= e!1510922 (forall!5562 (t!208071 l!9164) lambda!87296))))

(assert (= (and d!694783 (not res!1004317)) b!2366479))

(assert (= (and b!2366479 res!1004318) b!2366480))

(declare-fun b_lambda!73867 () Bool)

(assert (=> (not b_lambda!73867) (not b!2366479)))

(declare-fun m!2776355 () Bool)

(assert (=> b!2366479 m!2776355))

(declare-fun m!2776357 () Bool)

(assert (=> b!2366480 m!2776357))

(assert (=> start!232236 d!694783))

(declare-fun d!694785 () Bool)

(assert (=> d!694785 (= (isEmpty!15919 l!9164) (is-Nil!27996 l!9164))))

(assert (=> b!2366298 d!694785))

(declare-fun d!694787 () Bool)

(declare-fun res!1004319 () Bool)

(declare-fun e!1510923 () Bool)

(assert (=> d!694787 (=> res!1004319 e!1510923)))

(assert (=> d!694787 (= res!1004319 (is-Nil!27996 lt!865182))))

(assert (=> d!694787 (= (forall!5562 lt!865182 lambda!87296) e!1510923)))

(declare-fun b!2366481 () Bool)

(declare-fun e!1510924 () Bool)

(assert (=> b!2366481 (= e!1510923 e!1510924)))

(declare-fun res!1004320 () Bool)

(assert (=> b!2366481 (=> (not res!1004320) (not e!1510924))))

(assert (=> b!2366481 (= res!1004320 (dynLambda!12061 lambda!87296 (h!33397 lt!865182)))))

(declare-fun b!2366482 () Bool)

(assert (=> b!2366482 (= e!1510924 (forall!5562 (t!208071 lt!865182) lambda!87296))))

(assert (= (and d!694787 (not res!1004319)) b!2366481))

(assert (= (and b!2366481 res!1004320) b!2366482))

(declare-fun b_lambda!73869 () Bool)

(assert (=> (not b_lambda!73869) (not b!2366481)))

(declare-fun m!2776359 () Bool)

(assert (=> b!2366481 m!2776359))

(declare-fun m!2776361 () Bool)

(assert (=> b!2366482 m!2776361))

(assert (=> b!2366304 d!694787))

(declare-fun bs!460940 () Bool)

(declare-fun b!2366516 () Bool)

(assert (= bs!460940 (and b!2366516 d!694775)))

(declare-fun lambda!87334 () Int)

(assert (=> bs!460940 (not (= lambda!87334 lambda!87317))))

(declare-fun bs!460941 () Bool)

(assert (= bs!460941 (and b!2366516 b!2366303)))

(assert (=> bs!460941 (not (= lambda!87334 lambda!87297))))

(declare-fun bs!460942 () Bool)

(assert (= bs!460942 (and b!2366516 d!694779)))

(assert (=> bs!460942 (not (= lambda!87334 lambda!87326))))

(assert (=> bs!460942 (not (= lambda!87334 lambda!87327))))

(assert (=> bs!460941 (not (= lambda!87334 lambda!87298))))

(assert (=> b!2366516 true))

(assert (=> b!2366516 true))

(declare-fun bs!460943 () Bool)

(declare-fun b!2366523 () Bool)

(assert (= bs!460943 (and b!2366523 d!694775)))

(declare-fun lambda!87335 () Int)

(assert (=> bs!460943 (not (= lambda!87335 lambda!87317))))

(declare-fun bs!460944 () Bool)

(assert (= bs!460944 (and b!2366523 b!2366303)))

(assert (=> bs!460944 (not (= lambda!87335 lambda!87297))))

(declare-fun bs!460945 () Bool)

(assert (= bs!460945 (and b!2366523 d!694779)))

(assert (=> bs!460945 (not (= lambda!87335 lambda!87326))))

(assert (=> bs!460945 (= lambda!87335 lambda!87327)))

(assert (=> bs!460944 (= lambda!87335 lambda!87298)))

(declare-fun bs!460946 () Bool)

(assert (= bs!460946 (and b!2366523 b!2366516)))

(assert (=> bs!460946 (not (= lambda!87335 lambda!87334))))

(assert (=> b!2366523 true))

(assert (=> b!2366523 true))

(declare-fun b!2366515 () Bool)

(declare-fun e!1510946 () Bool)

(assert (=> b!2366515 (= e!1510946 (= s!9460 (Cons!27997 (c!376106 r!13927) Nil!27997)))))

(declare-fun e!1510949 () Bool)

(declare-fun call!143969 () Bool)

(assert (=> b!2366516 (= e!1510949 call!143969)))

(declare-fun b!2366517 () Bool)

(declare-fun e!1510947 () Bool)

(declare-fun call!143970 () Bool)

(assert (=> b!2366517 (= e!1510947 call!143970)))

(declare-fun b!2366518 () Bool)

(declare-fun res!1004337 () Bool)

(assert (=> b!2366518 (=> res!1004337 e!1510949)))

(assert (=> b!2366518 (= res!1004337 call!143970)))

(declare-fun e!1510945 () Bool)

(assert (=> b!2366518 (= e!1510945 e!1510949)))

(declare-fun b!2366519 () Bool)

(declare-fun e!1510943 () Bool)

(assert (=> b!2366519 (= e!1510943 e!1510945)))

(declare-fun c!376146 () Bool)

(assert (=> b!2366519 (= c!376146 (is-Star!6928 r!13927))))

(declare-fun bm!143965 () Bool)

(assert (=> bm!143965 (= call!143969 (Exists!990 (ite c!376146 lambda!87334 lambda!87335)))))

(declare-fun b!2366520 () Bool)

(declare-fun e!1510948 () Bool)

(assert (=> b!2366520 (= e!1510947 e!1510948)))

(declare-fun res!1004339 () Bool)

(assert (=> b!2366520 (= res!1004339 (not (is-EmptyLang!6928 r!13927)))))

(assert (=> b!2366520 (=> (not res!1004339) (not e!1510948))))

(declare-fun b!2366521 () Bool)

(declare-fun c!376149 () Bool)

(assert (=> b!2366521 (= c!376149 (is-ElementMatch!6928 r!13927))))

(assert (=> b!2366521 (= e!1510948 e!1510946)))

(declare-fun b!2366522 () Bool)

(declare-fun c!376147 () Bool)

(assert (=> b!2366522 (= c!376147 (is-Union!6928 r!13927))))

(assert (=> b!2366522 (= e!1510946 e!1510943)))

(declare-fun d!694789 () Bool)

(declare-fun c!376148 () Bool)

(assert (=> d!694789 (= c!376148 (is-EmptyExpr!6928 r!13927))))

(assert (=> d!694789 (= (matchRSpec!777 r!13927 s!9460) e!1510947)))

(declare-fun bm!143964 () Bool)

(declare-fun isEmpty!15922 (List!28095) Bool)

(assert (=> bm!143964 (= call!143970 (isEmpty!15922 s!9460))))

(assert (=> b!2366523 (= e!1510945 call!143969)))

(declare-fun b!2366524 () Bool)

(declare-fun e!1510944 () Bool)

(assert (=> b!2366524 (= e!1510944 (matchRSpec!777 (regTwo!14369 r!13927) s!9460))))

(declare-fun b!2366525 () Bool)

(assert (=> b!2366525 (= e!1510943 e!1510944)))

(declare-fun res!1004338 () Bool)

(assert (=> b!2366525 (= res!1004338 (matchRSpec!777 (regOne!14369 r!13927) s!9460))))

(assert (=> b!2366525 (=> res!1004338 e!1510944)))

(assert (= (and d!694789 c!376148) b!2366517))

(assert (= (and d!694789 (not c!376148)) b!2366520))

(assert (= (and b!2366520 res!1004339) b!2366521))

(assert (= (and b!2366521 c!376149) b!2366515))

(assert (= (and b!2366521 (not c!376149)) b!2366522))

(assert (= (and b!2366522 c!376147) b!2366525))

(assert (= (and b!2366522 (not c!376147)) b!2366519))

(assert (= (and b!2366525 (not res!1004338)) b!2366524))

(assert (= (and b!2366519 c!376146) b!2366518))

(assert (= (and b!2366519 (not c!376146)) b!2366523))

(assert (= (and b!2366518 (not res!1004337)) b!2366516))

(assert (= (or b!2366516 b!2366523) bm!143965))

(assert (= (or b!2366517 b!2366518) bm!143964))

(declare-fun m!2776371 () Bool)

(assert (=> bm!143965 m!2776371))

(declare-fun m!2776373 () Bool)

(assert (=> bm!143964 m!2776373))

(declare-fun m!2776375 () Bool)

(assert (=> b!2366524 m!2776375))

(declare-fun m!2776377 () Bool)

(assert (=> b!2366525 m!2776377))

(assert (=> b!2366300 d!694789))

(declare-fun b!2366582 () Bool)

(declare-fun res!1004376 () Bool)

(declare-fun e!1510983 () Bool)

(assert (=> b!2366582 (=> (not res!1004376) (not e!1510983))))

(declare-fun call!143975 () Bool)

(assert (=> b!2366582 (= res!1004376 (not call!143975))))

(declare-fun b!2366583 () Bool)

(declare-fun res!1004373 () Bool)

(declare-fun e!1510981 () Bool)

(assert (=> b!2366583 (=> res!1004373 e!1510981)))

(declare-fun tail!3373 (List!28095) List!28095)

(assert (=> b!2366583 (= res!1004373 (not (isEmpty!15922 (tail!3373 s!9460))))))

(declare-fun b!2366584 () Bool)

(declare-fun res!1004377 () Bool)

(declare-fun e!1510979 () Bool)

(assert (=> b!2366584 (=> res!1004377 e!1510979)))

(assert (=> b!2366584 (= res!1004377 e!1510983)))

(declare-fun res!1004379 () Bool)

(assert (=> b!2366584 (=> (not res!1004379) (not e!1510983))))

(declare-fun lt!865229 () Bool)

(assert (=> b!2366584 (= res!1004379 lt!865229)))

(declare-fun b!2366585 () Bool)

(declare-fun res!1004374 () Bool)

(assert (=> b!2366585 (=> res!1004374 e!1510979)))

(assert (=> b!2366585 (= res!1004374 (not (is-ElementMatch!6928 r!13927)))))

(declare-fun e!1510978 () Bool)

(assert (=> b!2366585 (= e!1510978 e!1510979)))

(declare-fun b!2366586 () Bool)

(declare-fun head!5103 (List!28095) C!14014)

(assert (=> b!2366586 (= e!1510983 (= (head!5103 s!9460) (c!376106 r!13927)))))

(declare-fun b!2366587 () Bool)

(declare-fun e!1510980 () Bool)

(assert (=> b!2366587 (= e!1510979 e!1510980)))

(declare-fun res!1004372 () Bool)

(assert (=> b!2366587 (=> (not res!1004372) (not e!1510980))))

(assert (=> b!2366587 (= res!1004372 (not lt!865229))))

(declare-fun b!2366588 () Bool)

(declare-fun res!1004378 () Bool)

(assert (=> b!2366588 (=> (not res!1004378) (not e!1510983))))

(assert (=> b!2366588 (= res!1004378 (isEmpty!15922 (tail!3373 s!9460)))))

(declare-fun b!2366589 () Bool)

(declare-fun e!1510984 () Bool)

(declare-fun nullable!1991 (Regex!6928) Bool)

(assert (=> b!2366589 (= e!1510984 (nullable!1991 r!13927))))

(declare-fun b!2366590 () Bool)

(assert (=> b!2366590 (= e!1510981 (not (= (head!5103 s!9460) (c!376106 r!13927))))))

(declare-fun b!2366591 () Bool)

(declare-fun e!1510982 () Bool)

(assert (=> b!2366591 (= e!1510982 e!1510978)))

(declare-fun c!376163 () Bool)

(assert (=> b!2366591 (= c!376163 (is-EmptyLang!6928 r!13927))))

(declare-fun bm!143970 () Bool)

(assert (=> bm!143970 (= call!143975 (isEmpty!15922 s!9460))))

(declare-fun b!2366592 () Bool)

(assert (=> b!2366592 (= e!1510978 (not lt!865229))))

(declare-fun b!2366593 () Bool)

(assert (=> b!2366593 (= e!1510980 e!1510981)))

(declare-fun res!1004375 () Bool)

(assert (=> b!2366593 (=> res!1004375 e!1510981)))

(assert (=> b!2366593 (= res!1004375 call!143975)))

(declare-fun d!694793 () Bool)

(assert (=> d!694793 e!1510982))

(declare-fun c!376164 () Bool)

(assert (=> d!694793 (= c!376164 (is-EmptyExpr!6928 r!13927))))

(assert (=> d!694793 (= lt!865229 e!1510984)))

(declare-fun c!376162 () Bool)

(assert (=> d!694793 (= c!376162 (isEmpty!15922 s!9460))))

(assert (=> d!694793 (validRegex!2658 r!13927)))

(assert (=> d!694793 (= (matchR!3045 r!13927 s!9460) lt!865229)))

(declare-fun b!2366594 () Bool)

(assert (=> b!2366594 (= e!1510982 (= lt!865229 call!143975))))

(declare-fun b!2366595 () Bool)

(declare-fun derivativeStep!1650 (Regex!6928 C!14014) Regex!6928)

(assert (=> b!2366595 (= e!1510984 (matchR!3045 (derivativeStep!1650 r!13927 (head!5103 s!9460)) (tail!3373 s!9460)))))

(assert (= (and d!694793 c!376162) b!2366589))

(assert (= (and d!694793 (not c!376162)) b!2366595))

(assert (= (and d!694793 c!376164) b!2366594))

(assert (= (and d!694793 (not c!376164)) b!2366591))

(assert (= (and b!2366591 c!376163) b!2366592))

(assert (= (and b!2366591 (not c!376163)) b!2366585))

(assert (= (and b!2366585 (not res!1004374)) b!2366584))

(assert (= (and b!2366584 res!1004379) b!2366582))

(assert (= (and b!2366582 res!1004376) b!2366588))

(assert (= (and b!2366588 res!1004378) b!2366586))

(assert (= (and b!2366584 (not res!1004377)) b!2366587))

(assert (= (and b!2366587 res!1004372) b!2366593))

(assert (= (and b!2366593 (not res!1004375)) b!2366583))

(assert (= (and b!2366583 (not res!1004373)) b!2366590))

(assert (= (or b!2366594 b!2366582 b!2366593) bm!143970))

(declare-fun m!2776379 () Bool)

(assert (=> b!2366589 m!2776379))

(assert (=> bm!143970 m!2776373))

(assert (=> d!694793 m!2776373))

(declare-fun m!2776381 () Bool)

(assert (=> d!694793 m!2776381))

(declare-fun m!2776383 () Bool)

(assert (=> b!2366595 m!2776383))

(assert (=> b!2366595 m!2776383))

(declare-fun m!2776385 () Bool)

(assert (=> b!2366595 m!2776385))

(declare-fun m!2776387 () Bool)

(assert (=> b!2366595 m!2776387))

(assert (=> b!2366595 m!2776385))

(assert (=> b!2366595 m!2776387))

(declare-fun m!2776389 () Bool)

(assert (=> b!2366595 m!2776389))

(assert (=> b!2366586 m!2776383))

(assert (=> b!2366583 m!2776387))

(assert (=> b!2366583 m!2776387))

(declare-fun m!2776391 () Bool)

(assert (=> b!2366583 m!2776391))

(assert (=> b!2366588 m!2776387))

(assert (=> b!2366588 m!2776387))

(assert (=> b!2366588 m!2776391))

(assert (=> b!2366590 m!2776383))

(assert (=> b!2366300 d!694793))

(declare-fun d!694795 () Bool)

(assert (=> d!694795 (= (matchR!3045 r!13927 s!9460) (matchRSpec!777 r!13927 s!9460))))

(declare-fun lt!865233 () Unit!40891)

(declare-fun choose!13744 (Regex!6928 List!28095) Unit!40891)

(assert (=> d!694795 (= lt!865233 (choose!13744 r!13927 s!9460))))

(assert (=> d!694795 (validRegex!2658 r!13927)))

(assert (=> d!694795 (= (mainMatchTheorem!777 r!13927 s!9460) lt!865233)))

(declare-fun bs!460947 () Bool)

(assert (= bs!460947 d!694795))

(assert (=> bs!460947 m!2776243))

(assert (=> bs!460947 m!2776241))

(declare-fun m!2776407 () Bool)

(assert (=> bs!460947 m!2776407))

(assert (=> bs!460947 m!2776381))

(assert (=> b!2366300 d!694795))

(declare-fun b!2366621 () Bool)

(declare-fun e!1510994 () Bool)

(declare-fun tp!756758 () Bool)

(declare-fun tp!756760 () Bool)

(assert (=> b!2366621 (= e!1510994 (and tp!756758 tp!756760))))

(declare-fun b!2366620 () Bool)

(assert (=> b!2366620 (= e!1510994 tp_is_empty!11269)))

(assert (=> b!2366301 (= tp!756719 e!1510994)))

(declare-fun b!2366622 () Bool)

(declare-fun tp!756756 () Bool)

(assert (=> b!2366622 (= e!1510994 tp!756756)))

(declare-fun b!2366623 () Bool)

(declare-fun tp!756757 () Bool)

(declare-fun tp!756759 () Bool)

(assert (=> b!2366623 (= e!1510994 (and tp!756757 tp!756759))))

(assert (= (and b!2366301 (is-ElementMatch!6928 (h!33397 l!9164))) b!2366620))

(assert (= (and b!2366301 (is-Concat!11564 (h!33397 l!9164))) b!2366621))

(assert (= (and b!2366301 (is-Star!6928 (h!33397 l!9164))) b!2366622))

(assert (= (and b!2366301 (is-Union!6928 (h!33397 l!9164))) b!2366623))

(declare-fun b!2366628 () Bool)

(declare-fun e!1510997 () Bool)

(declare-fun tp!756765 () Bool)

(declare-fun tp!756766 () Bool)

(assert (=> b!2366628 (= e!1510997 (and tp!756765 tp!756766))))

(assert (=> b!2366301 (= tp!756716 e!1510997)))

(assert (= (and b!2366301 (is-Cons!27996 (t!208071 l!9164))) b!2366628))

(declare-fun b!2366633 () Bool)

(declare-fun e!1511000 () Bool)

(declare-fun tp!756769 () Bool)

(assert (=> b!2366633 (= e!1511000 (and tp_is_empty!11269 tp!756769))))

(assert (=> b!2366296 (= tp!756715 e!1511000)))

(assert (= (and b!2366296 (is-Cons!27997 (t!208072 s!9460))) b!2366633))

(declare-fun b!2366635 () Bool)

(declare-fun e!1511001 () Bool)

(declare-fun tp!756772 () Bool)

(declare-fun tp!756774 () Bool)

(assert (=> b!2366635 (= e!1511001 (and tp!756772 tp!756774))))

(declare-fun b!2366634 () Bool)

(assert (=> b!2366634 (= e!1511001 tp_is_empty!11269)))

(assert (=> b!2366299 (= tp!756714 e!1511001)))

(declare-fun b!2366636 () Bool)

(declare-fun tp!756770 () Bool)

(assert (=> b!2366636 (= e!1511001 tp!756770)))

(declare-fun b!2366637 () Bool)

(declare-fun tp!756771 () Bool)

(declare-fun tp!756773 () Bool)

(assert (=> b!2366637 (= e!1511001 (and tp!756771 tp!756773))))

(assert (= (and b!2366299 (is-ElementMatch!6928 (regOne!14368 r!13927))) b!2366634))

(assert (= (and b!2366299 (is-Concat!11564 (regOne!14368 r!13927))) b!2366635))

(assert (= (and b!2366299 (is-Star!6928 (regOne!14368 r!13927))) b!2366636))

(assert (= (and b!2366299 (is-Union!6928 (regOne!14368 r!13927))) b!2366637))

(declare-fun b!2366639 () Bool)

(declare-fun e!1511002 () Bool)

(declare-fun tp!756777 () Bool)

(declare-fun tp!756779 () Bool)

(assert (=> b!2366639 (= e!1511002 (and tp!756777 tp!756779))))

(declare-fun b!2366638 () Bool)

(assert (=> b!2366638 (= e!1511002 tp_is_empty!11269)))

(assert (=> b!2366299 (= tp!756717 e!1511002)))

(declare-fun b!2366640 () Bool)

(declare-fun tp!756775 () Bool)

(assert (=> b!2366640 (= e!1511002 tp!756775)))

(declare-fun b!2366641 () Bool)

(declare-fun tp!756776 () Bool)

(declare-fun tp!756778 () Bool)

(assert (=> b!2366641 (= e!1511002 (and tp!756776 tp!756778))))

(assert (= (and b!2366299 (is-ElementMatch!6928 (regTwo!14368 r!13927))) b!2366638))

(assert (= (and b!2366299 (is-Concat!11564 (regTwo!14368 r!13927))) b!2366639))

(assert (= (and b!2366299 (is-Star!6928 (regTwo!14368 r!13927))) b!2366640))

(assert (= (and b!2366299 (is-Union!6928 (regTwo!14368 r!13927))) b!2366641))

(declare-fun b!2366643 () Bool)

(declare-fun e!1511003 () Bool)

(declare-fun tp!756782 () Bool)

(declare-fun tp!756784 () Bool)

(assert (=> b!2366643 (= e!1511003 (and tp!756782 tp!756784))))

(declare-fun b!2366642 () Bool)

(assert (=> b!2366642 (= e!1511003 tp_is_empty!11269)))

(assert (=> b!2366305 (= tp!756718 e!1511003)))

(declare-fun b!2366644 () Bool)

(declare-fun tp!756780 () Bool)

(assert (=> b!2366644 (= e!1511003 tp!756780)))

(declare-fun b!2366645 () Bool)

(declare-fun tp!756781 () Bool)

(declare-fun tp!756783 () Bool)

(assert (=> b!2366645 (= e!1511003 (and tp!756781 tp!756783))))

(assert (= (and b!2366305 (is-ElementMatch!6928 (regOne!14369 r!13927))) b!2366642))

(assert (= (and b!2366305 (is-Concat!11564 (regOne!14369 r!13927))) b!2366643))

(assert (= (and b!2366305 (is-Star!6928 (regOne!14369 r!13927))) b!2366644))

(assert (= (and b!2366305 (is-Union!6928 (regOne!14369 r!13927))) b!2366645))

(declare-fun b!2366647 () Bool)

(declare-fun e!1511004 () Bool)

(declare-fun tp!756787 () Bool)

(declare-fun tp!756789 () Bool)

(assert (=> b!2366647 (= e!1511004 (and tp!756787 tp!756789))))

(declare-fun b!2366646 () Bool)

(assert (=> b!2366646 (= e!1511004 tp_is_empty!11269)))

(assert (=> b!2366305 (= tp!756721 e!1511004)))

(declare-fun b!2366648 () Bool)

(declare-fun tp!756785 () Bool)

(assert (=> b!2366648 (= e!1511004 tp!756785)))

(declare-fun b!2366649 () Bool)

(declare-fun tp!756786 () Bool)

(declare-fun tp!756788 () Bool)

(assert (=> b!2366649 (= e!1511004 (and tp!756786 tp!756788))))

(assert (= (and b!2366305 (is-ElementMatch!6928 (regTwo!14369 r!13927))) b!2366646))

(assert (= (and b!2366305 (is-Concat!11564 (regTwo!14369 r!13927))) b!2366647))

(assert (= (and b!2366305 (is-Star!6928 (regTwo!14369 r!13927))) b!2366648))

(assert (= (and b!2366305 (is-Union!6928 (regTwo!14369 r!13927))) b!2366649))

(declare-fun b!2366651 () Bool)

(declare-fun e!1511005 () Bool)

(declare-fun tp!756792 () Bool)

(declare-fun tp!756794 () Bool)

(assert (=> b!2366651 (= e!1511005 (and tp!756792 tp!756794))))

(declare-fun b!2366650 () Bool)

(assert (=> b!2366650 (= e!1511005 tp_is_empty!11269)))

(assert (=> b!2366295 (= tp!756720 e!1511005)))

(declare-fun b!2366652 () Bool)

(declare-fun tp!756790 () Bool)

(assert (=> b!2366652 (= e!1511005 tp!756790)))

(declare-fun b!2366653 () Bool)

(declare-fun tp!756791 () Bool)

(declare-fun tp!756793 () Bool)

(assert (=> b!2366653 (= e!1511005 (and tp!756791 tp!756793))))

(assert (= (and b!2366295 (is-ElementMatch!6928 (reg!7257 r!13927))) b!2366650))

(assert (= (and b!2366295 (is-Concat!11564 (reg!7257 r!13927))) b!2366651))

(assert (= (and b!2366295 (is-Star!6928 (reg!7257 r!13927))) b!2366652))

(assert (= (and b!2366295 (is-Union!6928 (reg!7257 r!13927))) b!2366653))

(declare-fun b_lambda!73871 () Bool)

(assert (= b_lambda!73869 (or start!232236 b_lambda!73871)))

(declare-fun bs!460948 () Bool)

(declare-fun d!694799 () Bool)

(assert (= bs!460948 (and d!694799 start!232236)))

(assert (=> bs!460948 (= (dynLambda!12061 lambda!87296 (h!33397 lt!865182)) (validRegex!2658 (h!33397 lt!865182)))))

(declare-fun m!2776409 () Bool)

(assert (=> bs!460948 m!2776409))

(assert (=> b!2366481 d!694799))

(declare-fun b_lambda!73873 () Bool)

(assert (= b_lambda!73867 (or start!232236 b_lambda!73873)))

(declare-fun bs!460949 () Bool)

(declare-fun d!694801 () Bool)

(assert (= bs!460949 (and d!694801 start!232236)))

(assert (=> bs!460949 (= (dynLambda!12061 lambda!87296 (h!33397 l!9164)) (validRegex!2658 (h!33397 l!9164)))))

(declare-fun m!2776411 () Bool)

(assert (=> bs!460949 m!2776411))

(assert (=> b!2366479 d!694801))

(push 1)

(assert (not d!694775))

(assert (not bs!460949))

(assert (not b!2366628))

(assert (not bm!143970))

(assert (not b!2366388))

(assert (not bs!460948))

(assert (not d!694773))

(assert (not d!694771))

(assert (not b!2366636))

(assert (not b!2366454))

(assert (not b!2366524))

(assert (not b!2366643))

(assert (not b!2366384))

(assert (not b!2366595))

(assert (not b!2366391))

(assert (not b!2366583))

(assert (not b!2366451))

(assert (not b!2366639))

(assert (not d!694795))

(assert (not b!2366622))

(assert (not b!2366449))

(assert (not b!2366640))

(assert (not b!2366590))

(assert (not b!2366633))

(assert (not b!2366647))

(assert (not b!2366383))

(assert (not b!2366589))

(assert (not b!2366645))

(assert (not b_lambda!73873))

(assert (not d!694777))

(assert (not b!2366653))

(assert (not b!2366641))

(assert (not d!694793))

(assert (not b!2366482))

(assert (not b!2366649))

(assert (not b!2366447))

(assert tp_is_empty!11269)

(assert (not b_lambda!73871))

(assert (not b!2366651))

(assert (not b!2366448))

(assert (not d!694767))

(assert (not b!2366648))

(assert (not b!2366637))

(assert (not b!2366392))

(assert (not bm!143964))

(assert (not b!2366586))

(assert (not b!2366588))

(assert (not bm!143965))

(assert (not b!2366644))

(assert (not b!2366623))

(assert (not b!2366621))

(assert (not d!694779))

(assert (not d!694781))

(assert (not b!2366387))

(assert (not b!2366385))

(assert (not b!2366455))

(assert (not b!2366480))

(assert (not b!2366635))

(assert (not b!2366525))

(assert (not b!2366652))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

