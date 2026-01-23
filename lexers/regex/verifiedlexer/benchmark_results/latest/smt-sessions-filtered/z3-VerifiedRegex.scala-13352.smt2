; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724186 () Bool)

(assert start!724186)

(declare-fun b!7468589 () Bool)

(assert (=> b!7468589 true))

(assert (=> b!7468589 true))

(assert (=> b!7468589 true))

(declare-fun lambda!462399 () Int)

(declare-fun lambda!462398 () Int)

(assert (=> b!7468589 (not (= lambda!462399 lambda!462398))))

(assert (=> b!7468589 true))

(assert (=> b!7468589 true))

(assert (=> b!7468589 true))

(declare-fun bs!1930729 () Bool)

(declare-fun b!7468598 () Bool)

(assert (= bs!1930729 (and b!7468598 b!7468589)))

(declare-datatypes ((C!39408 0))(
  ( (C!39409 (val!30102 Int)) )
))
(declare-datatypes ((Regex!19567 0))(
  ( (ElementMatch!19567 (c!1380172 C!39408)) (Concat!28412 (regOne!39646 Regex!19567) (regTwo!39646 Regex!19567)) (EmptyExpr!19567) (Star!19567 (reg!19896 Regex!19567)) (EmptyLang!19567) (Union!19567 (regOne!39647 Regex!19567) (regTwo!39647 Regex!19567)) )
))
(declare-fun r1!5845 () Regex!19567)

(declare-fun lt!2624940 () Regex!19567)

(declare-fun lambda!462400 () Int)

(assert (=> bs!1930729 (= (= r1!5845 lt!2624940) (= lambda!462400 lambda!462398))))

(assert (=> bs!1930729 (not (= lambda!462400 lambda!462399))))

(assert (=> b!7468598 true))

(assert (=> b!7468598 true))

(assert (=> b!7468598 true))

(declare-fun lambda!462401 () Int)

(assert (=> bs!1930729 (not (= lambda!462401 lambda!462398))))

(assert (=> bs!1930729 (= (= r1!5845 lt!2624940) (= lambda!462401 lambda!462399))))

(assert (=> b!7468598 (not (= lambda!462401 lambda!462400))))

(assert (=> b!7468598 true))

(assert (=> b!7468598 true))

(assert (=> b!7468598 true))

(declare-fun b!7468582 () Bool)

(declare-fun e!4456255 () Bool)

(declare-fun tp!2165347 () Bool)

(declare-fun tp!2165349 () Bool)

(assert (=> b!7468582 (= e!4456255 (and tp!2165347 tp!2165349))))

(declare-fun b!7468583 () Bool)

(declare-fun e!4456250 () Bool)

(declare-fun tp!2165353 () Bool)

(declare-fun tp!2165355 () Bool)

(assert (=> b!7468583 (= e!4456250 (and tp!2165353 tp!2165355))))

(declare-fun b!7468584 () Bool)

(declare-fun res!2996063 () Bool)

(declare-fun e!4456253 () Bool)

(assert (=> b!7468584 (=> (not res!2996063) (not e!4456253))))

(declare-fun rTail!78 () Regex!19567)

(declare-fun validRegex!10081 (Regex!19567) Bool)

(assert (=> b!7468584 (= res!2996063 (validRegex!10081 rTail!78))))

(declare-fun b!7468585 () Bool)

(declare-fun tp_is_empty!49423 () Bool)

(assert (=> b!7468585 (= e!4456255 tp_is_empty!49423)))

(declare-fun b!7468586 () Bool)

(assert (=> b!7468586 (= e!4456250 tp_is_empty!49423)))

(declare-fun b!7468587 () Bool)

(declare-fun e!4456247 () Bool)

(declare-fun e!4456251 () Bool)

(assert (=> b!7468587 (= e!4456247 e!4456251)))

(declare-fun res!2996065 () Bool)

(assert (=> b!7468587 (=> res!2996065 e!4456251)))

(declare-fun lt!2624921 () Bool)

(declare-fun lt!2624929 () Bool)

(assert (=> b!7468587 (= res!2996065 (or (and (not lt!2624921) (not lt!2624929)) (not lt!2624921)))))

(declare-fun lt!2624930 () Regex!19567)

(declare-datatypes ((List!72283 0))(
  ( (Nil!72159) (Cons!72159 (h!78607 C!39408) (t!386852 List!72283)) )
))
(declare-fun s!13591 () List!72283)

(declare-fun matchRSpec!4246 (Regex!19567 List!72283) Bool)

(assert (=> b!7468587 (= lt!2624929 (matchRSpec!4246 lt!2624930 s!13591))))

(declare-fun matchR!9331 (Regex!19567 List!72283) Bool)

(assert (=> b!7468587 (= lt!2624929 (matchR!9331 lt!2624930 s!13591))))

(declare-datatypes ((Unit!165969 0))(
  ( (Unit!165970) )
))
(declare-fun lt!2624928 () Unit!165969)

(declare-fun mainMatchTheorem!4240 (Regex!19567 List!72283) Unit!165969)

(assert (=> b!7468587 (= lt!2624928 (mainMatchTheorem!4240 lt!2624930 s!13591))))

(declare-fun lt!2624926 () Regex!19567)

(assert (=> b!7468587 (= lt!2624921 (matchRSpec!4246 lt!2624926 s!13591))))

(assert (=> b!7468587 (= lt!2624921 (matchR!9331 lt!2624926 s!13591))))

(declare-fun lt!2624937 () Unit!165969)

(assert (=> b!7468587 (= lt!2624937 (mainMatchTheorem!4240 lt!2624926 s!13591))))

(declare-fun b!7468588 () Bool)

(declare-fun res!2996068 () Bool)

(assert (=> b!7468588 (=> (not res!2996068) (not e!4456253))))

(declare-fun r2!5783 () Regex!19567)

(assert (=> b!7468588 (= res!2996068 (validRegex!10081 r2!5783))))

(declare-fun e!4456256 () Bool)

(assert (=> b!7468589 (= e!4456256 e!4456247)))

(declare-fun res!2996069 () Bool)

(assert (=> b!7468589 (=> res!2996069 e!4456247)))

(declare-fun lt!2624942 () Bool)

(declare-fun lt!2624933 () Bool)

(assert (=> b!7468589 (= res!2996069 (or lt!2624942 (not lt!2624933)))))

(declare-fun Exists!4186 (Int) Bool)

(assert (=> b!7468589 (= (Exists!4186 lambda!462398) (Exists!4186 lambda!462399))))

(declare-fun lt!2624924 () Unit!165969)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2520 (Regex!19567 Regex!19567 List!72283) Unit!165969)

(assert (=> b!7468589 (= lt!2624924 (lemmaExistCutMatchRandMatchRSpecEquivalent!2520 lt!2624940 rTail!78 s!13591))))

(assert (=> b!7468589 (= lt!2624942 (Exists!4186 lambda!462398))))

(declare-datatypes ((tuple2!68584 0))(
  ( (tuple2!68585 (_1!37595 List!72283) (_2!37595 List!72283)) )
))
(declare-datatypes ((Option!17124 0))(
  ( (None!17123) (Some!17123 (v!54252 tuple2!68584)) )
))
(declare-fun isDefined!13813 (Option!17124) Bool)

(declare-fun findConcatSeparation!3246 (Regex!19567 Regex!19567 List!72283 List!72283 List!72283) Option!17124)

(assert (=> b!7468589 (= lt!2624942 (isDefined!13813 (findConcatSeparation!3246 lt!2624940 rTail!78 Nil!72159 s!13591 s!13591)))))

(declare-fun lt!2624939 () Unit!165969)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3004 (Regex!19567 Regex!19567 List!72283) Unit!165969)

(assert (=> b!7468589 (= lt!2624939 (lemmaFindConcatSeparationEquivalentToExists!3004 lt!2624940 rTail!78 s!13591))))

(declare-fun b!7468590 () Bool)

(declare-fun e!4456249 () Bool)

(declare-fun tp!2165354 () Bool)

(assert (=> b!7468590 (= e!4456249 tp!2165354)))

(declare-fun res!2996070 () Bool)

(assert (=> start!724186 (=> (not res!2996070) (not e!4456253))))

(assert (=> start!724186 (= res!2996070 (validRegex!10081 r1!5845))))

(assert (=> start!724186 e!4456253))

(assert (=> start!724186 e!4456255))

(assert (=> start!724186 e!4456250))

(assert (=> start!724186 e!4456249))

(declare-fun e!4456254 () Bool)

(assert (=> start!724186 e!4456254))

(declare-fun b!7468591 () Bool)

(assert (=> b!7468591 (= e!4456249 tp_is_empty!49423)))

(declare-fun b!7468592 () Bool)

(declare-fun tp!2165350 () Bool)

(declare-fun tp!2165351 () Bool)

(assert (=> b!7468592 (= e!4456249 (and tp!2165350 tp!2165351))))

(declare-fun b!7468593 () Bool)

(declare-fun tp!2165342 () Bool)

(assert (=> b!7468593 (= e!4456255 tp!2165342)))

(declare-fun b!7468594 () Bool)

(declare-fun tp!2165346 () Bool)

(declare-fun tp!2165345 () Bool)

(assert (=> b!7468594 (= e!4456249 (and tp!2165346 tp!2165345))))

(declare-fun b!7468595 () Bool)

(declare-fun tp!2165352 () Bool)

(assert (=> b!7468595 (= e!4456250 tp!2165352)))

(declare-fun b!7468596 () Bool)

(declare-fun tp!2165340 () Bool)

(assert (=> b!7468596 (= e!4456254 (and tp_is_empty!49423 tp!2165340))))

(declare-fun b!7468597 () Bool)

(declare-fun tp!2165343 () Bool)

(declare-fun tp!2165341 () Bool)

(assert (=> b!7468597 (= e!4456250 (and tp!2165343 tp!2165341))))

(declare-fun e!4456252 () Bool)

(assert (=> b!7468598 (= e!4456251 e!4456252)))

(declare-fun res!2996064 () Bool)

(assert (=> b!7468598 (=> res!2996064 e!4456252)))

(declare-fun lt!2624945 () tuple2!68584)

(assert (=> b!7468598 (= res!2996064 (not (matchR!9331 r1!5845 (_1!37595 lt!2624945))))))

(declare-fun lt!2624931 () Option!17124)

(declare-fun get!25218 (Option!17124) tuple2!68584)

(assert (=> b!7468598 (= lt!2624945 (get!25218 lt!2624931))))

(assert (=> b!7468598 (= (Exists!4186 lambda!462400) (Exists!4186 lambda!462401))))

(declare-fun lt!2624941 () Unit!165969)

(assert (=> b!7468598 (= lt!2624941 (lemmaExistCutMatchRandMatchRSpecEquivalent!2520 r1!5845 rTail!78 s!13591))))

(assert (=> b!7468598 (= (isDefined!13813 lt!2624931) (Exists!4186 lambda!462400))))

(assert (=> b!7468598 (= lt!2624931 (findConcatSeparation!3246 r1!5845 rTail!78 Nil!72159 s!13591 s!13591))))

(declare-fun lt!2624943 () Unit!165969)

(assert (=> b!7468598 (= lt!2624943 (lemmaFindConcatSeparationEquivalentToExists!3004 r1!5845 rTail!78 s!13591))))

(declare-fun b!7468599 () Bool)

(assert (=> b!7468599 (= e!4456253 (not e!4456256))))

(declare-fun res!2996066 () Bool)

(assert (=> b!7468599 (=> res!2996066 e!4456256)))

(declare-fun lt!2624932 () Bool)

(assert (=> b!7468599 (= res!2996066 lt!2624932)))

(declare-fun lt!2624944 () Regex!19567)

(assert (=> b!7468599 (= lt!2624933 (matchRSpec!4246 lt!2624944 s!13591))))

(assert (=> b!7468599 (= lt!2624933 (matchR!9331 lt!2624944 s!13591))))

(declare-fun lt!2624935 () Unit!165969)

(assert (=> b!7468599 (= lt!2624935 (mainMatchTheorem!4240 lt!2624944 s!13591))))

(declare-fun lt!2624934 () Regex!19567)

(assert (=> b!7468599 (= lt!2624932 (matchRSpec!4246 lt!2624934 s!13591))))

(assert (=> b!7468599 (= lt!2624932 (matchR!9331 lt!2624934 s!13591))))

(declare-fun lt!2624923 () Unit!165969)

(assert (=> b!7468599 (= lt!2624923 (mainMatchTheorem!4240 lt!2624934 s!13591))))

(assert (=> b!7468599 (= lt!2624944 (Union!19567 lt!2624926 lt!2624930))))

(assert (=> b!7468599 (= lt!2624930 (Concat!28412 r2!5783 rTail!78))))

(assert (=> b!7468599 (= lt!2624926 (Concat!28412 r1!5845 rTail!78))))

(assert (=> b!7468599 (= lt!2624934 (Concat!28412 lt!2624940 rTail!78))))

(assert (=> b!7468599 (= lt!2624940 (Union!19567 r1!5845 r2!5783))))

(declare-fun b!7468600 () Bool)

(declare-fun e!4456248 () Bool)

(assert (=> b!7468600 (= e!4456252 e!4456248)))

(declare-fun res!2996062 () Bool)

(assert (=> b!7468600 (=> res!2996062 e!4456248)))

(declare-fun lt!2624927 () Bool)

(assert (=> b!7468600 (= res!2996062 (not lt!2624927))))

(assert (=> b!7468600 (= (matchR!9331 r2!5783 (_1!37595 lt!2624945)) (matchRSpec!4246 r2!5783 (_1!37595 lt!2624945)))))

(declare-fun lt!2624936 () Unit!165969)

(assert (=> b!7468600 (= lt!2624936 (mainMatchTheorem!4240 r2!5783 (_1!37595 lt!2624945)))))

(assert (=> b!7468600 (matchRSpec!4246 r1!5845 (_1!37595 lt!2624945))))

(declare-fun lt!2624938 () Unit!165969)

(assert (=> b!7468600 (= lt!2624938 (mainMatchTheorem!4240 r1!5845 (_1!37595 lt!2624945)))))

(assert (=> b!7468600 (= lt!2624927 (matchRSpec!4246 lt!2624940 (_1!37595 lt!2624945)))))

(assert (=> b!7468600 (= lt!2624927 (matchR!9331 lt!2624940 (_1!37595 lt!2624945)))))

(declare-fun lt!2624925 () Unit!165969)

(assert (=> b!7468600 (= lt!2624925 (mainMatchTheorem!4240 lt!2624940 (_1!37595 lt!2624945)))))

(declare-fun b!7468601 () Bool)

(declare-fun res!2996067 () Bool)

(assert (=> b!7468601 (=> res!2996067 e!4456252)))

(assert (=> b!7468601 (= res!2996067 (not (matchR!9331 rTail!78 (_2!37595 lt!2624945))))))

(declare-fun b!7468602 () Bool)

(declare-fun tp!2165344 () Bool)

(declare-fun tp!2165348 () Bool)

(assert (=> b!7468602 (= e!4456255 (and tp!2165344 tp!2165348))))

(declare-fun b!7468603 () Bool)

(assert (=> b!7468603 (= e!4456248 true)))

(declare-fun ++!17197 (List!72283 List!72283) List!72283)

(assert (=> b!7468603 (matchR!9331 lt!2624934 (++!17197 (_1!37595 lt!2624945) (_2!37595 lt!2624945)))))

(declare-fun lt!2624922 () Unit!165969)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!400 (Regex!19567 Regex!19567 List!72283 List!72283) Unit!165969)

(assert (=> b!7468603 (= lt!2624922 (lemmaTwoRegexMatchThenConcatMatchesConcatString!400 lt!2624940 rTail!78 (_1!37595 lt!2624945) (_2!37595 lt!2624945)))))

(assert (= (and start!724186 res!2996070) b!7468588))

(assert (= (and b!7468588 res!2996068) b!7468584))

(assert (= (and b!7468584 res!2996063) b!7468599))

(assert (= (and b!7468599 (not res!2996066)) b!7468589))

(assert (= (and b!7468589 (not res!2996069)) b!7468587))

(assert (= (and b!7468587 (not res!2996065)) b!7468598))

(assert (= (and b!7468598 (not res!2996064)) b!7468601))

(assert (= (and b!7468601 (not res!2996067)) b!7468600))

(assert (= (and b!7468600 (not res!2996062)) b!7468603))

(get-info :version)

(assert (= (and start!724186 ((_ is ElementMatch!19567) r1!5845)) b!7468585))

(assert (= (and start!724186 ((_ is Concat!28412) r1!5845)) b!7468582))

(assert (= (and start!724186 ((_ is Star!19567) r1!5845)) b!7468593))

(assert (= (and start!724186 ((_ is Union!19567) r1!5845)) b!7468602))

(assert (= (and start!724186 ((_ is ElementMatch!19567) r2!5783)) b!7468586))

(assert (= (and start!724186 ((_ is Concat!28412) r2!5783)) b!7468583))

(assert (= (and start!724186 ((_ is Star!19567) r2!5783)) b!7468595))

(assert (= (and start!724186 ((_ is Union!19567) r2!5783)) b!7468597))

(assert (= (and start!724186 ((_ is ElementMatch!19567) rTail!78)) b!7468591))

(assert (= (and start!724186 ((_ is Concat!28412) rTail!78)) b!7468594))

(assert (= (and start!724186 ((_ is Star!19567) rTail!78)) b!7468590))

(assert (= (and start!724186 ((_ is Union!19567) rTail!78)) b!7468592))

(assert (= (and start!724186 ((_ is Cons!72159) s!13591)) b!7468596))

(declare-fun m!8066502 () Bool)

(assert (=> b!7468589 m!8066502))

(declare-fun m!8066504 () Bool)

(assert (=> b!7468589 m!8066504))

(declare-fun m!8066506 () Bool)

(assert (=> b!7468589 m!8066506))

(declare-fun m!8066508 () Bool)

(assert (=> b!7468589 m!8066508))

(declare-fun m!8066510 () Bool)

(assert (=> b!7468589 m!8066510))

(assert (=> b!7468589 m!8066506))

(declare-fun m!8066512 () Bool)

(assert (=> b!7468589 m!8066512))

(assert (=> b!7468589 m!8066508))

(declare-fun m!8066514 () Bool)

(assert (=> b!7468600 m!8066514))

(declare-fun m!8066516 () Bool)

(assert (=> b!7468600 m!8066516))

(declare-fun m!8066518 () Bool)

(assert (=> b!7468600 m!8066518))

(declare-fun m!8066520 () Bool)

(assert (=> b!7468600 m!8066520))

(declare-fun m!8066522 () Bool)

(assert (=> b!7468600 m!8066522))

(declare-fun m!8066524 () Bool)

(assert (=> b!7468600 m!8066524))

(declare-fun m!8066526 () Bool)

(assert (=> b!7468600 m!8066526))

(declare-fun m!8066528 () Bool)

(assert (=> b!7468600 m!8066528))

(declare-fun m!8066530 () Bool)

(assert (=> b!7468588 m!8066530))

(declare-fun m!8066532 () Bool)

(assert (=> b!7468601 m!8066532))

(declare-fun m!8066534 () Bool)

(assert (=> start!724186 m!8066534))

(declare-fun m!8066536 () Bool)

(assert (=> b!7468584 m!8066536))

(declare-fun m!8066538 () Bool)

(assert (=> b!7468599 m!8066538))

(declare-fun m!8066540 () Bool)

(assert (=> b!7468599 m!8066540))

(declare-fun m!8066542 () Bool)

(assert (=> b!7468599 m!8066542))

(declare-fun m!8066544 () Bool)

(assert (=> b!7468599 m!8066544))

(declare-fun m!8066546 () Bool)

(assert (=> b!7468599 m!8066546))

(declare-fun m!8066548 () Bool)

(assert (=> b!7468599 m!8066548))

(declare-fun m!8066550 () Bool)

(assert (=> b!7468587 m!8066550))

(declare-fun m!8066552 () Bool)

(assert (=> b!7468587 m!8066552))

(declare-fun m!8066554 () Bool)

(assert (=> b!7468587 m!8066554))

(declare-fun m!8066556 () Bool)

(assert (=> b!7468587 m!8066556))

(declare-fun m!8066558 () Bool)

(assert (=> b!7468587 m!8066558))

(declare-fun m!8066560 () Bool)

(assert (=> b!7468587 m!8066560))

(declare-fun m!8066562 () Bool)

(assert (=> b!7468603 m!8066562))

(assert (=> b!7468603 m!8066562))

(declare-fun m!8066564 () Bool)

(assert (=> b!7468603 m!8066564))

(declare-fun m!8066566 () Bool)

(assert (=> b!7468603 m!8066566))

(declare-fun m!8066568 () Bool)

(assert (=> b!7468598 m!8066568))

(declare-fun m!8066570 () Bool)

(assert (=> b!7468598 m!8066570))

(declare-fun m!8066572 () Bool)

(assert (=> b!7468598 m!8066572))

(assert (=> b!7468598 m!8066570))

(declare-fun m!8066574 () Bool)

(assert (=> b!7468598 m!8066574))

(declare-fun m!8066576 () Bool)

(assert (=> b!7468598 m!8066576))

(declare-fun m!8066578 () Bool)

(assert (=> b!7468598 m!8066578))

(declare-fun m!8066580 () Bool)

(assert (=> b!7468598 m!8066580))

(declare-fun m!8066582 () Bool)

(assert (=> b!7468598 m!8066582))

(check-sat (not b!7468597) (not b!7468593) (not b!7468594) (not b!7468602) (not b!7468595) (not b!7468588) (not b!7468582) (not b!7468600) (not b!7468592) (not b!7468584) (not b!7468599) tp_is_empty!49423 (not b!7468583) (not b!7468590) (not b!7468589) (not b!7468596) (not b!7468587) (not start!724186) (not b!7468601) (not b!7468598) (not b!7468603))
(check-sat)
