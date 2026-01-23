; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!667046 () Bool)

(assert start!667046)

(declare-fun b!6949212 () Bool)

(assert (=> b!6949212 true))

(assert (=> b!6949212 true))

(declare-fun bs!1857587 () Bool)

(declare-fun b!6949210 () Bool)

(assert (= bs!1857587 (and b!6949210 b!6949212)))

(declare-fun lambda!396274 () Int)

(declare-fun lambda!396273 () Int)

(assert (=> bs!1857587 (not (= lambda!396274 lambda!396273))))

(assert (=> b!6949210 true))

(assert (=> b!6949210 true))

(assert (=> b!6949210 true))

(declare-fun b!6949207 () Bool)

(declare-fun e!4179646 () Bool)

(declare-fun e!4179649 () Bool)

(assert (=> b!6949207 (= e!4179646 e!4179649)))

(declare-fun res!2835072 () Bool)

(assert (=> b!6949207 (=> (not res!2835072) (not e!4179649))))

(declare-datatypes ((C!34284 0))(
  ( (C!34285 (val!26844 Int)) )
))
(declare-datatypes ((List!66760 0))(
  ( (Nil!66636) (Cons!66636 (h!73084 C!34284) (t!380503 List!66760)) )
))
(declare-datatypes ((tuple2!67724 0))(
  ( (tuple2!67725 (_1!37165 List!66760) (_2!37165 List!66760)) )
))
(declare-fun lt!2477829 () tuple2!67724)

(declare-fun s!10388 () List!66760)

(declare-fun ++!15044 (List!66760 List!66760) List!66760)

(assert (=> b!6949207 (= res!2835072 (= (++!15044 (_1!37165 lt!2477829) (_2!37165 lt!2477829)) s!10388))))

(declare-fun pickWitness!352 (Int) tuple2!67724)

(assert (=> b!6949207 (= lt!2477829 (pickWitness!352 lambda!396273))))

(declare-fun b!6949208 () Bool)

(declare-fun res!2835069 () Bool)

(assert (=> b!6949208 (=> (not res!2835069) (not e!4179646))))

(declare-datatypes ((Regex!17007 0))(
  ( (ElementMatch!17007 (c!1289111 C!34284)) (Concat!25852 (regOne!34526 Regex!17007) (regTwo!34526 Regex!17007)) (EmptyExpr!17007) (Star!17007 (reg!17336 Regex!17007)) (EmptyLang!17007) (Union!17007 (regOne!34527 Regex!17007) (regTwo!34527 Regex!17007)) )
))
(declare-fun rInner!765 () Regex!17007)

(declare-fun nullable!6820 (Regex!17007) Bool)

(assert (=> b!6949208 (= res!2835069 (not (nullable!6820 rInner!765)))))

(declare-fun b!6949209 () Bool)

(declare-fun res!2835071 () Bool)

(declare-fun e!4179648 () Bool)

(assert (=> b!6949209 (=> res!2835071 e!4179648)))

(declare-fun cut!42 () tuple2!67724)

(declare-fun isEmpty!38896 (List!66760) Bool)

(assert (=> b!6949209 (= res!2835071 (isEmpty!38896 (_1!37165 cut!42)))))

(declare-fun e!4179650 () Bool)

(assert (=> b!6949210 (= e!4179650 e!4179648)))

(declare-fun res!2835073 () Bool)

(assert (=> b!6949210 (=> res!2835073 e!4179648)))

(assert (=> b!6949210 (= res!2835073 (not (= (++!15044 (_1!37165 cut!42) (_2!37165 cut!42)) s!10388)))))

(declare-datatypes ((Unit!160734 0))(
  ( (Unit!160735) )
))
(declare-fun lt!2477828 () Unit!160734)

(declare-fun ExistsThe!22 (tuple2!67724 Int) Unit!160734)

(assert (=> b!6949210 (= lt!2477828 (ExistsThe!22 lt!2477829 lambda!396274))))

(declare-fun b!6949211 () Bool)

(declare-fun e!4179644 () Bool)

(declare-fun tp_is_empty!43239 () Bool)

(declare-fun tp!1915576 () Bool)

(assert (=> b!6949211 (= e!4179644 (and tp_is_empty!43239 tp!1915576))))

(declare-fun res!2835067 () Bool)

(assert (=> b!6949212 (=> (not res!2835067) (not e!4179646))))

(declare-fun Exists!4003 (Int) Bool)

(assert (=> b!6949212 (= res!2835067 (Exists!4003 lambda!396273))))

(declare-fun b!6949213 () Bool)

(declare-fun e!4179645 () Bool)

(declare-fun tp!1915575 () Bool)

(declare-fun tp!1915578 () Bool)

(assert (=> b!6949213 (= e!4179645 (and tp!1915575 tp!1915578))))

(declare-fun b!6949214 () Bool)

(declare-fun lt!2477831 () Regex!17007)

(declare-fun validRegex!8713 (Regex!17007) Bool)

(assert (=> b!6949214 (= e!4179648 (validRegex!8713 lt!2477831))))

(declare-fun b!6949215 () Bool)

(declare-fun e!4179647 () Bool)

(declare-fun tp!1915580 () Bool)

(assert (=> b!6949215 (= e!4179647 (and tp_is_empty!43239 tp!1915580))))

(declare-fun b!6949216 () Bool)

(assert (=> b!6949216 (= e!4179649 (not e!4179650))))

(declare-fun res!2835070 () Bool)

(assert (=> b!6949216 (=> res!2835070 e!4179650)))

(declare-fun lt!2477827 () Bool)

(declare-fun lt!2477830 () Bool)

(assert (=> b!6949216 (= res!2835070 (or (not lt!2477827) (not lt!2477830)))))

(declare-fun matchRSpec!4052 (Regex!17007 List!66760) Bool)

(assert (=> b!6949216 (= lt!2477830 (matchRSpec!4052 lt!2477831 (_2!37165 lt!2477829)))))

(declare-fun matchR!9138 (Regex!17007 List!66760) Bool)

(assert (=> b!6949216 (= lt!2477830 (matchR!9138 lt!2477831 (_2!37165 lt!2477829)))))

(declare-fun lt!2477825 () Unit!160734)

(declare-fun mainMatchTheorem!4052 (Regex!17007 List!66760) Unit!160734)

(assert (=> b!6949216 (= lt!2477825 (mainMatchTheorem!4052 lt!2477831 (_2!37165 lt!2477829)))))

(assert (=> b!6949216 (= lt!2477831 (Star!17007 rInner!765))))

(assert (=> b!6949216 (= lt!2477827 (matchRSpec!4052 rInner!765 (_1!37165 lt!2477829)))))

(assert (=> b!6949216 (= lt!2477827 (matchR!9138 rInner!765 (_1!37165 lt!2477829)))))

(declare-fun lt!2477826 () Unit!160734)

(assert (=> b!6949216 (= lt!2477826 (mainMatchTheorem!4052 rInner!765 (_1!37165 lt!2477829)))))

(declare-fun b!6949217 () Bool)

(declare-fun e!4179643 () Bool)

(declare-fun tp!1915574 () Bool)

(assert (=> b!6949217 (= e!4179643 (and tp_is_empty!43239 tp!1915574))))

(declare-fun b!6949218 () Bool)

(declare-fun tp!1915581 () Bool)

(assert (=> b!6949218 (= e!4179645 tp!1915581)))

(declare-fun b!6949219 () Bool)

(declare-fun res!2835074 () Bool)

(assert (=> b!6949219 (=> res!2835074 e!4179648)))

(assert (=> b!6949219 (= res!2835074 (not (matchRSpec!4052 rInner!765 (_1!37165 cut!42))))))

(declare-fun res!2835068 () Bool)

(assert (=> start!667046 (=> (not res!2835068) (not e!4179646))))

(assert (=> start!667046 (= res!2835068 (validRegex!8713 rInner!765))))

(assert (=> start!667046 e!4179646))

(assert (=> start!667046 e!4179645))

(assert (=> start!667046 e!4179643))

(assert (=> start!667046 (and e!4179644 e!4179647)))

(declare-fun b!6949220 () Bool)

(declare-fun tp!1915577 () Bool)

(declare-fun tp!1915579 () Bool)

(assert (=> b!6949220 (= e!4179645 (and tp!1915577 tp!1915579))))

(declare-fun b!6949221 () Bool)

(assert (=> b!6949221 (= e!4179645 tp_is_empty!43239)))

(assert (= (and start!667046 res!2835068) b!6949208))

(assert (= (and b!6949208 res!2835069) b!6949212))

(assert (= (and b!6949212 res!2835067) b!6949207))

(assert (= (and b!6949207 res!2835072) b!6949216))

(assert (= (and b!6949216 (not res!2835070)) b!6949210))

(assert (= (and b!6949210 (not res!2835073)) b!6949209))

(assert (= (and b!6949209 (not res!2835071)) b!6949219))

(assert (= (and b!6949219 (not res!2835074)) b!6949214))

(get-info :version)

(assert (= (and start!667046 ((_ is ElementMatch!17007) rInner!765)) b!6949221))

(assert (= (and start!667046 ((_ is Concat!25852) rInner!765)) b!6949213))

(assert (= (and start!667046 ((_ is Star!17007) rInner!765)) b!6949218))

(assert (= (and start!667046 ((_ is Union!17007) rInner!765)) b!6949220))

(assert (= (and start!667046 ((_ is Cons!66636) s!10388)) b!6949217))

(assert (= (and start!667046 ((_ is Cons!66636) (_1!37165 cut!42))) b!6949211))

(assert (= (and start!667046 ((_ is Cons!66636) (_2!37165 cut!42))) b!6949215))

(declare-fun m!7651728 () Bool)

(assert (=> b!6949219 m!7651728))

(declare-fun m!7651730 () Bool)

(assert (=> b!6949210 m!7651730))

(declare-fun m!7651732 () Bool)

(assert (=> b!6949210 m!7651732))

(declare-fun m!7651734 () Bool)

(assert (=> b!6949216 m!7651734))

(declare-fun m!7651736 () Bool)

(assert (=> b!6949216 m!7651736))

(declare-fun m!7651738 () Bool)

(assert (=> b!6949216 m!7651738))

(declare-fun m!7651740 () Bool)

(assert (=> b!6949216 m!7651740))

(declare-fun m!7651742 () Bool)

(assert (=> b!6949216 m!7651742))

(declare-fun m!7651744 () Bool)

(assert (=> b!6949216 m!7651744))

(declare-fun m!7651746 () Bool)

(assert (=> b!6949209 m!7651746))

(declare-fun m!7651748 () Bool)

(assert (=> b!6949207 m!7651748))

(declare-fun m!7651750 () Bool)

(assert (=> b!6949207 m!7651750))

(declare-fun m!7651752 () Bool)

(assert (=> b!6949208 m!7651752))

(declare-fun m!7651754 () Bool)

(assert (=> b!6949214 m!7651754))

(declare-fun m!7651756 () Bool)

(assert (=> start!667046 m!7651756))

(declare-fun m!7651758 () Bool)

(assert (=> b!6949212 m!7651758))

(check-sat (not b!6949208) (not b!6949214) (not b!6949209) (not start!667046) (not b!6949213) (not b!6949207) (not b!6949215) (not b!6949220) tp_is_empty!43239 (not b!6949219) (not b!6949217) (not b!6949211) (not b!6949210) (not b!6949216) (not b!6949212) (not b!6949218))
(check-sat)
(get-model)

(declare-fun d!2168961 () Bool)

(declare-fun choose!51786 (Int) Bool)

(assert (=> d!2168961 (= (Exists!4003 lambda!396273) (choose!51786 lambda!396273))))

(declare-fun bs!1857589 () Bool)

(assert (= bs!1857589 d!2168961))

(declare-fun m!7651762 () Bool)

(assert (=> bs!1857589 m!7651762))

(assert (=> b!6949212 d!2168961))

(declare-fun d!2168965 () Bool)

(assert (=> d!2168965 (= (matchR!9138 lt!2477831 (_2!37165 lt!2477829)) (matchRSpec!4052 lt!2477831 (_2!37165 lt!2477829)))))

(declare-fun lt!2477834 () Unit!160734)

(declare-fun choose!51787 (Regex!17007 List!66760) Unit!160734)

(assert (=> d!2168965 (= lt!2477834 (choose!51787 lt!2477831 (_2!37165 lt!2477829)))))

(assert (=> d!2168965 (validRegex!8713 lt!2477831)))

(assert (=> d!2168965 (= (mainMatchTheorem!4052 lt!2477831 (_2!37165 lt!2477829)) lt!2477834)))

(declare-fun bs!1857590 () Bool)

(assert (= bs!1857590 d!2168965))

(assert (=> bs!1857590 m!7651734))

(assert (=> bs!1857590 m!7651738))

(declare-fun m!7651764 () Bool)

(assert (=> bs!1857590 m!7651764))

(assert (=> bs!1857590 m!7651754))

(assert (=> b!6949216 d!2168965))

(declare-fun bs!1857605 () Bool)

(declare-fun b!6949319 () Bool)

(assert (= bs!1857605 (and b!6949319 b!6949212)))

(declare-fun lambda!396287 () Int)

(assert (=> bs!1857605 (not (= lambda!396287 lambda!396273))))

(declare-fun bs!1857606 () Bool)

(assert (= bs!1857606 (and b!6949319 b!6949210)))

(assert (=> bs!1857606 (= (and (= (_2!37165 lt!2477829) s!10388) (= (reg!17336 lt!2477831) rInner!765)) (= lambda!396287 lambda!396274))))

(assert (=> b!6949319 true))

(assert (=> b!6949319 true))

(declare-fun bs!1857607 () Bool)

(declare-fun b!6949317 () Bool)

(assert (= bs!1857607 (and b!6949317 b!6949212)))

(declare-fun lambda!396288 () Int)

(assert (=> bs!1857607 (not (= lambda!396288 lambda!396273))))

(declare-fun bs!1857608 () Bool)

(assert (= bs!1857608 (and b!6949317 b!6949210)))

(assert (=> bs!1857608 (not (= lambda!396288 lambda!396274))))

(declare-fun bs!1857609 () Bool)

(assert (= bs!1857609 (and b!6949317 b!6949319)))

(assert (=> bs!1857609 (not (= lambda!396288 lambda!396287))))

(assert (=> b!6949317 true))

(assert (=> b!6949317 true))

(declare-fun b!6949312 () Bool)

(declare-fun c!1289139 () Bool)

(assert (=> b!6949312 (= c!1289139 ((_ is Union!17007) lt!2477831))))

(declare-fun e!4179707 () Bool)

(declare-fun e!4179704 () Bool)

(assert (=> b!6949312 (= e!4179707 e!4179704)))

(declare-fun c!1289136 () Bool)

(declare-fun bm!631185 () Bool)

(declare-fun call!631191 () Bool)

(assert (=> bm!631185 (= call!631191 (Exists!4003 (ite c!1289136 lambda!396287 lambda!396288)))))

(declare-fun bm!631186 () Bool)

(declare-fun call!631190 () Bool)

(assert (=> bm!631186 (= call!631190 (isEmpty!38896 (_2!37165 lt!2477829)))))

(declare-fun b!6949313 () Bool)

(declare-fun e!4179705 () Bool)

(assert (=> b!6949313 (= e!4179704 e!4179705)))

(assert (=> b!6949313 (= c!1289136 ((_ is Star!17007) lt!2477831))))

(declare-fun b!6949314 () Bool)

(declare-fun e!4179702 () Bool)

(declare-fun e!4179703 () Bool)

(assert (=> b!6949314 (= e!4179702 e!4179703)))

(declare-fun res!2835114 () Bool)

(assert (=> b!6949314 (= res!2835114 (not ((_ is EmptyLang!17007) lt!2477831)))))

(assert (=> b!6949314 (=> (not res!2835114) (not e!4179703))))

(declare-fun b!6949315 () Bool)

(declare-fun c!1289137 () Bool)

(assert (=> b!6949315 (= c!1289137 ((_ is ElementMatch!17007) lt!2477831))))

(assert (=> b!6949315 (= e!4179703 e!4179707)))

(assert (=> b!6949317 (= e!4179705 call!631191)))

(declare-fun b!6949318 () Bool)

(assert (=> b!6949318 (= e!4179707 (= (_2!37165 lt!2477829) (Cons!66636 (c!1289111 lt!2477831) Nil!66636)))))

(declare-fun e!4179701 () Bool)

(assert (=> b!6949319 (= e!4179701 call!631191)))

(declare-fun b!6949320 () Bool)

(declare-fun e!4179706 () Bool)

(assert (=> b!6949320 (= e!4179704 e!4179706)))

(declare-fun res!2835113 () Bool)

(assert (=> b!6949320 (= res!2835113 (matchRSpec!4052 (regOne!34527 lt!2477831) (_2!37165 lt!2477829)))))

(assert (=> b!6949320 (=> res!2835113 e!4179706)))

(declare-fun b!6949321 () Bool)

(declare-fun res!2835115 () Bool)

(assert (=> b!6949321 (=> res!2835115 e!4179701)))

(assert (=> b!6949321 (= res!2835115 call!631190)))

(assert (=> b!6949321 (= e!4179705 e!4179701)))

(declare-fun b!6949322 () Bool)

(assert (=> b!6949322 (= e!4179702 call!631190)))

(declare-fun d!2168967 () Bool)

(declare-fun c!1289138 () Bool)

(assert (=> d!2168967 (= c!1289138 ((_ is EmptyExpr!17007) lt!2477831))))

(assert (=> d!2168967 (= (matchRSpec!4052 lt!2477831 (_2!37165 lt!2477829)) e!4179702)))

(declare-fun b!6949316 () Bool)

(assert (=> b!6949316 (= e!4179706 (matchRSpec!4052 (regTwo!34527 lt!2477831) (_2!37165 lt!2477829)))))

(assert (= (and d!2168967 c!1289138) b!6949322))

(assert (= (and d!2168967 (not c!1289138)) b!6949314))

(assert (= (and b!6949314 res!2835114) b!6949315))

(assert (= (and b!6949315 c!1289137) b!6949318))

(assert (= (and b!6949315 (not c!1289137)) b!6949312))

(assert (= (and b!6949312 c!1289139) b!6949320))

(assert (= (and b!6949312 (not c!1289139)) b!6949313))

(assert (= (and b!6949320 (not res!2835113)) b!6949316))

(assert (= (and b!6949313 c!1289136) b!6949321))

(assert (= (and b!6949313 (not c!1289136)) b!6949317))

(assert (= (and b!6949321 (not res!2835115)) b!6949319))

(assert (= (or b!6949319 b!6949317) bm!631185))

(assert (= (or b!6949322 b!6949321) bm!631186))

(declare-fun m!7651780 () Bool)

(assert (=> bm!631185 m!7651780))

(declare-fun m!7651782 () Bool)

(assert (=> bm!631186 m!7651782))

(declare-fun m!7651784 () Bool)

(assert (=> b!6949320 m!7651784))

(declare-fun m!7651786 () Bool)

(assert (=> b!6949316 m!7651786))

(assert (=> b!6949216 d!2168967))

(declare-fun d!2168973 () Bool)

(assert (=> d!2168973 (= (matchR!9138 rInner!765 (_1!37165 lt!2477829)) (matchRSpec!4052 rInner!765 (_1!37165 lt!2477829)))))

(declare-fun lt!2477837 () Unit!160734)

(assert (=> d!2168973 (= lt!2477837 (choose!51787 rInner!765 (_1!37165 lt!2477829)))))

(assert (=> d!2168973 (validRegex!8713 rInner!765)))

(assert (=> d!2168973 (= (mainMatchTheorem!4052 rInner!765 (_1!37165 lt!2477829)) lt!2477837)))

(declare-fun bs!1857610 () Bool)

(assert (= bs!1857610 d!2168973))

(assert (=> bs!1857610 m!7651742))

(assert (=> bs!1857610 m!7651740))

(declare-fun m!7651788 () Bool)

(assert (=> bs!1857610 m!7651788))

(assert (=> bs!1857610 m!7651756))

(assert (=> b!6949216 d!2168973))

(declare-fun b!6949426 () Bool)

(declare-fun e!4179766 () Bool)

(declare-fun e!4179763 () Bool)

(assert (=> b!6949426 (= e!4179766 e!4179763)))

(declare-fun res!2835178 () Bool)

(assert (=> b!6949426 (=> res!2835178 e!4179763)))

(declare-fun call!631200 () Bool)

(assert (=> b!6949426 (= res!2835178 call!631200)))

(declare-fun b!6949427 () Bool)

(declare-fun e!4179762 () Bool)

(declare-fun lt!2477848 () Bool)

(assert (=> b!6949427 (= e!4179762 (= lt!2477848 call!631200))))

(declare-fun b!6949428 () Bool)

(declare-fun e!4179765 () Bool)

(assert (=> b!6949428 (= e!4179765 e!4179766)))

(declare-fun res!2835169 () Bool)

(assert (=> b!6949428 (=> (not res!2835169) (not e!4179766))))

(assert (=> b!6949428 (= res!2835169 (not lt!2477848))))

(declare-fun b!6949429 () Bool)

(declare-fun e!4179764 () Bool)

(declare-fun derivativeStep!5478 (Regex!17007 C!34284) Regex!17007)

(declare-fun head!13931 (List!66760) C!34284)

(declare-fun tail!12983 (List!66760) List!66760)

(assert (=> b!6949429 (= e!4179764 (matchR!9138 (derivativeStep!5478 rInner!765 (head!13931 (_1!37165 lt!2477829))) (tail!12983 (_1!37165 lt!2477829))))))

(declare-fun b!6949430 () Bool)

(declare-fun e!4179761 () Bool)

(assert (=> b!6949430 (= e!4179761 (not lt!2477848))))

(declare-fun b!6949431 () Bool)

(assert (=> b!6949431 (= e!4179763 (not (= (head!13931 (_1!37165 lt!2477829)) (c!1289111 rInner!765))))))

(declare-fun b!6949432 () Bool)

(declare-fun res!2835170 () Bool)

(declare-fun e!4179767 () Bool)

(assert (=> b!6949432 (=> (not res!2835170) (not e!4179767))))

(assert (=> b!6949432 (= res!2835170 (isEmpty!38896 (tail!12983 (_1!37165 lt!2477829))))))

(declare-fun b!6949433 () Bool)

(assert (=> b!6949433 (= e!4179767 (= (head!13931 (_1!37165 lt!2477829)) (c!1289111 rInner!765)))))

(declare-fun b!6949434 () Bool)

(declare-fun res!2835177 () Bool)

(assert (=> b!6949434 (=> (not res!2835177) (not e!4179767))))

(assert (=> b!6949434 (= res!2835177 (not call!631200))))

(declare-fun d!2168975 () Bool)

(assert (=> d!2168975 e!4179762))

(declare-fun c!1289164 () Bool)

(assert (=> d!2168975 (= c!1289164 ((_ is EmptyExpr!17007) rInner!765))))

(assert (=> d!2168975 (= lt!2477848 e!4179764)))

(declare-fun c!1289166 () Bool)

(assert (=> d!2168975 (= c!1289166 (isEmpty!38896 (_1!37165 lt!2477829)))))

(assert (=> d!2168975 (validRegex!8713 rInner!765)))

(assert (=> d!2168975 (= (matchR!9138 rInner!765 (_1!37165 lt!2477829)) lt!2477848)))

(declare-fun b!6949435 () Bool)

(assert (=> b!6949435 (= e!4179764 (nullable!6820 rInner!765))))

(declare-fun b!6949436 () Bool)

(declare-fun res!2835175 () Bool)

(assert (=> b!6949436 (=> res!2835175 e!4179765)))

(assert (=> b!6949436 (= res!2835175 e!4179767)))

(declare-fun res!2835172 () Bool)

(assert (=> b!6949436 (=> (not res!2835172) (not e!4179767))))

(assert (=> b!6949436 (= res!2835172 lt!2477848)))

(declare-fun b!6949437 () Bool)

(assert (=> b!6949437 (= e!4179762 e!4179761)))

(declare-fun c!1289165 () Bool)

(assert (=> b!6949437 (= c!1289165 ((_ is EmptyLang!17007) rInner!765))))

(declare-fun b!6949438 () Bool)

(declare-fun res!2835171 () Bool)

(assert (=> b!6949438 (=> res!2835171 e!4179763)))

(assert (=> b!6949438 (= res!2835171 (not (isEmpty!38896 (tail!12983 (_1!37165 lt!2477829)))))))

(declare-fun bm!631195 () Bool)

(assert (=> bm!631195 (= call!631200 (isEmpty!38896 (_1!37165 lt!2477829)))))

(declare-fun b!6949439 () Bool)

(declare-fun res!2835176 () Bool)

(assert (=> b!6949439 (=> res!2835176 e!4179765)))

(assert (=> b!6949439 (= res!2835176 (not ((_ is ElementMatch!17007) rInner!765)))))

(assert (=> b!6949439 (= e!4179761 e!4179765)))

(assert (= (and d!2168975 c!1289166) b!6949435))

(assert (= (and d!2168975 (not c!1289166)) b!6949429))

(assert (= (and d!2168975 c!1289164) b!6949427))

(assert (= (and d!2168975 (not c!1289164)) b!6949437))

(assert (= (and b!6949437 c!1289165) b!6949430))

(assert (= (and b!6949437 (not c!1289165)) b!6949439))

(assert (= (and b!6949439 (not res!2835176)) b!6949436))

(assert (= (and b!6949436 res!2835172) b!6949434))

(assert (= (and b!6949434 res!2835177) b!6949432))

(assert (= (and b!6949432 res!2835170) b!6949433))

(assert (= (and b!6949436 (not res!2835175)) b!6949428))

(assert (= (and b!6949428 res!2835169) b!6949426))

(assert (= (and b!6949426 (not res!2835178)) b!6949438))

(assert (= (and b!6949438 (not res!2835171)) b!6949431))

(assert (= (or b!6949427 b!6949426 b!6949434) bm!631195))

(declare-fun m!7651824 () Bool)

(assert (=> bm!631195 m!7651824))

(declare-fun m!7651826 () Bool)

(assert (=> b!6949431 m!7651826))

(declare-fun m!7651828 () Bool)

(assert (=> b!6949438 m!7651828))

(assert (=> b!6949438 m!7651828))

(declare-fun m!7651830 () Bool)

(assert (=> b!6949438 m!7651830))

(assert (=> d!2168975 m!7651824))

(assert (=> d!2168975 m!7651756))

(assert (=> b!6949433 m!7651826))

(assert (=> b!6949432 m!7651828))

(assert (=> b!6949432 m!7651828))

(assert (=> b!6949432 m!7651830))

(assert (=> b!6949435 m!7651752))

(assert (=> b!6949429 m!7651826))

(assert (=> b!6949429 m!7651826))

(declare-fun m!7651832 () Bool)

(assert (=> b!6949429 m!7651832))

(assert (=> b!6949429 m!7651828))

(assert (=> b!6949429 m!7651832))

(assert (=> b!6949429 m!7651828))

(declare-fun m!7651834 () Bool)

(assert (=> b!6949429 m!7651834))

(assert (=> b!6949216 d!2168975))

(declare-fun bs!1857626 () Bool)

(declare-fun b!6949451 () Bool)

(assert (= bs!1857626 (and b!6949451 b!6949212)))

(declare-fun lambda!396291 () Int)

(assert (=> bs!1857626 (not (= lambda!396291 lambda!396273))))

(declare-fun bs!1857627 () Bool)

(assert (= bs!1857627 (and b!6949451 b!6949210)))

(assert (=> bs!1857627 (= (and (= (_1!37165 lt!2477829) s!10388) (= (reg!17336 rInner!765) rInner!765) (= rInner!765 lt!2477831)) (= lambda!396291 lambda!396274))))

(declare-fun bs!1857628 () Bool)

(assert (= bs!1857628 (and b!6949451 b!6949319)))

(assert (=> bs!1857628 (= (and (= (_1!37165 lt!2477829) (_2!37165 lt!2477829)) (= (reg!17336 rInner!765) (reg!17336 lt!2477831)) (= rInner!765 lt!2477831)) (= lambda!396291 lambda!396287))))

(declare-fun bs!1857629 () Bool)

(assert (= bs!1857629 (and b!6949451 b!6949317)))

(assert (=> bs!1857629 (not (= lambda!396291 lambda!396288))))

(assert (=> b!6949451 true))

(assert (=> b!6949451 true))

(declare-fun bs!1857631 () Bool)

(declare-fun b!6949449 () Bool)

(assert (= bs!1857631 (and b!6949449 b!6949210)))

(declare-fun lambda!396292 () Int)

(assert (=> bs!1857631 (not (= lambda!396292 lambda!396274))))

(declare-fun bs!1857632 () Bool)

(assert (= bs!1857632 (and b!6949449 b!6949317)))

(assert (=> bs!1857632 (= (and (= (_1!37165 lt!2477829) (_2!37165 lt!2477829)) (= (regOne!34526 rInner!765) (regOne!34526 lt!2477831)) (= (regTwo!34526 rInner!765) (regTwo!34526 lt!2477831))) (= lambda!396292 lambda!396288))))

(declare-fun bs!1857633 () Bool)

(assert (= bs!1857633 (and b!6949449 b!6949451)))

(assert (=> bs!1857633 (not (= lambda!396292 lambda!396291))))

(declare-fun bs!1857634 () Bool)

(assert (= bs!1857634 (and b!6949449 b!6949319)))

(assert (=> bs!1857634 (not (= lambda!396292 lambda!396287))))

(declare-fun bs!1857635 () Bool)

(assert (= bs!1857635 (and b!6949449 b!6949212)))

(assert (=> bs!1857635 (not (= lambda!396292 lambda!396273))))

(assert (=> b!6949449 true))

(assert (=> b!6949449 true))

(declare-fun b!6949444 () Bool)

(declare-fun c!1289171 () Bool)

(assert (=> b!6949444 (= c!1289171 ((_ is Union!17007) rInner!765))))

(declare-fun e!4179776 () Bool)

(declare-fun e!4179773 () Bool)

(assert (=> b!6949444 (= e!4179776 e!4179773)))

(declare-fun call!631202 () Bool)

(declare-fun bm!631196 () Bool)

(declare-fun c!1289168 () Bool)

(assert (=> bm!631196 (= call!631202 (Exists!4003 (ite c!1289168 lambda!396291 lambda!396292)))))

(declare-fun bm!631197 () Bool)

(declare-fun call!631201 () Bool)

(assert (=> bm!631197 (= call!631201 (isEmpty!38896 (_1!37165 lt!2477829)))))

(declare-fun b!6949445 () Bool)

(declare-fun e!4179774 () Bool)

(assert (=> b!6949445 (= e!4179773 e!4179774)))

(assert (=> b!6949445 (= c!1289168 ((_ is Star!17007) rInner!765))))

(declare-fun b!6949446 () Bool)

(declare-fun e!4179771 () Bool)

(declare-fun e!4179772 () Bool)

(assert (=> b!6949446 (= e!4179771 e!4179772)))

(declare-fun res!2835182 () Bool)

(assert (=> b!6949446 (= res!2835182 (not ((_ is EmptyLang!17007) rInner!765)))))

(assert (=> b!6949446 (=> (not res!2835182) (not e!4179772))))

(declare-fun b!6949447 () Bool)

(declare-fun c!1289169 () Bool)

(assert (=> b!6949447 (= c!1289169 ((_ is ElementMatch!17007) rInner!765))))

(assert (=> b!6949447 (= e!4179772 e!4179776)))

(assert (=> b!6949449 (= e!4179774 call!631202)))

(declare-fun b!6949450 () Bool)

(assert (=> b!6949450 (= e!4179776 (= (_1!37165 lt!2477829) (Cons!66636 (c!1289111 rInner!765) Nil!66636)))))

(declare-fun e!4179770 () Bool)

(assert (=> b!6949451 (= e!4179770 call!631202)))

(declare-fun b!6949452 () Bool)

(declare-fun e!4179775 () Bool)

(assert (=> b!6949452 (= e!4179773 e!4179775)))

(declare-fun res!2835181 () Bool)

(assert (=> b!6949452 (= res!2835181 (matchRSpec!4052 (regOne!34527 rInner!765) (_1!37165 lt!2477829)))))

(assert (=> b!6949452 (=> res!2835181 e!4179775)))

(declare-fun b!6949453 () Bool)

(declare-fun res!2835183 () Bool)

(assert (=> b!6949453 (=> res!2835183 e!4179770)))

(assert (=> b!6949453 (= res!2835183 call!631201)))

(assert (=> b!6949453 (= e!4179774 e!4179770)))

(declare-fun b!6949454 () Bool)

(assert (=> b!6949454 (= e!4179771 call!631201)))

(declare-fun d!2168987 () Bool)

(declare-fun c!1289170 () Bool)

(assert (=> d!2168987 (= c!1289170 ((_ is EmptyExpr!17007) rInner!765))))

(assert (=> d!2168987 (= (matchRSpec!4052 rInner!765 (_1!37165 lt!2477829)) e!4179771)))

(declare-fun b!6949448 () Bool)

(assert (=> b!6949448 (= e!4179775 (matchRSpec!4052 (regTwo!34527 rInner!765) (_1!37165 lt!2477829)))))

(assert (= (and d!2168987 c!1289170) b!6949454))

(assert (= (and d!2168987 (not c!1289170)) b!6949446))

(assert (= (and b!6949446 res!2835182) b!6949447))

(assert (= (and b!6949447 c!1289169) b!6949450))

(assert (= (and b!6949447 (not c!1289169)) b!6949444))

(assert (= (and b!6949444 c!1289171) b!6949452))

(assert (= (and b!6949444 (not c!1289171)) b!6949445))

(assert (= (and b!6949452 (not res!2835181)) b!6949448))

(assert (= (and b!6949445 c!1289168) b!6949453))

(assert (= (and b!6949445 (not c!1289168)) b!6949449))

(assert (= (and b!6949453 (not res!2835183)) b!6949451))

(assert (= (or b!6949451 b!6949449) bm!631196))

(assert (= (or b!6949454 b!6949453) bm!631197))

(declare-fun m!7651874 () Bool)

(assert (=> bm!631196 m!7651874))

(assert (=> bm!631197 m!7651824))

(declare-fun m!7651876 () Bool)

(assert (=> b!6949452 m!7651876))

(declare-fun m!7651878 () Bool)

(assert (=> b!6949448 m!7651878))

(assert (=> b!6949216 d!2168987))

(declare-fun b!6949459 () Bool)

(declare-fun e!4179784 () Bool)

(declare-fun e!4179781 () Bool)

(assert (=> b!6949459 (= e!4179784 e!4179781)))

(declare-fun res!2835193 () Bool)

(assert (=> b!6949459 (=> res!2835193 e!4179781)))

(declare-fun call!631203 () Bool)

(assert (=> b!6949459 (= res!2835193 call!631203)))

(declare-fun b!6949460 () Bool)

(declare-fun e!4179780 () Bool)

(declare-fun lt!2477857 () Bool)

(assert (=> b!6949460 (= e!4179780 (= lt!2477857 call!631203))))

(declare-fun b!6949461 () Bool)

(declare-fun e!4179783 () Bool)

(assert (=> b!6949461 (= e!4179783 e!4179784)))

(declare-fun res!2835186 () Bool)

(assert (=> b!6949461 (=> (not res!2835186) (not e!4179784))))

(assert (=> b!6949461 (= res!2835186 (not lt!2477857))))

(declare-fun b!6949462 () Bool)

(declare-fun e!4179782 () Bool)

(assert (=> b!6949462 (= e!4179782 (matchR!9138 (derivativeStep!5478 lt!2477831 (head!13931 (_2!37165 lt!2477829))) (tail!12983 (_2!37165 lt!2477829))))))

(declare-fun b!6949463 () Bool)

(declare-fun e!4179779 () Bool)

(assert (=> b!6949463 (= e!4179779 (not lt!2477857))))

(declare-fun b!6949464 () Bool)

(assert (=> b!6949464 (= e!4179781 (not (= (head!13931 (_2!37165 lt!2477829)) (c!1289111 lt!2477831))))))

(declare-fun b!6949465 () Bool)

(declare-fun res!2835187 () Bool)

(declare-fun e!4179785 () Bool)

(assert (=> b!6949465 (=> (not res!2835187) (not e!4179785))))

(assert (=> b!6949465 (= res!2835187 (isEmpty!38896 (tail!12983 (_2!37165 lt!2477829))))))

(declare-fun b!6949466 () Bool)

(assert (=> b!6949466 (= e!4179785 (= (head!13931 (_2!37165 lt!2477829)) (c!1289111 lt!2477831)))))

(declare-fun b!6949467 () Bool)

(declare-fun res!2835192 () Bool)

(assert (=> b!6949467 (=> (not res!2835192) (not e!4179785))))

(assert (=> b!6949467 (= res!2835192 (not call!631203))))

(declare-fun d!2168997 () Bool)

(assert (=> d!2168997 e!4179780))

(declare-fun c!1289173 () Bool)

(assert (=> d!2168997 (= c!1289173 ((_ is EmptyExpr!17007) lt!2477831))))

(assert (=> d!2168997 (= lt!2477857 e!4179782)))

(declare-fun c!1289175 () Bool)

(assert (=> d!2168997 (= c!1289175 (isEmpty!38896 (_2!37165 lt!2477829)))))

(assert (=> d!2168997 (validRegex!8713 lt!2477831)))

(assert (=> d!2168997 (= (matchR!9138 lt!2477831 (_2!37165 lt!2477829)) lt!2477857)))

(declare-fun b!6949468 () Bool)

(assert (=> b!6949468 (= e!4179782 (nullable!6820 lt!2477831))))

(declare-fun b!6949469 () Bool)

(declare-fun res!2835190 () Bool)

(assert (=> b!6949469 (=> res!2835190 e!4179783)))

(assert (=> b!6949469 (= res!2835190 e!4179785)))

(declare-fun res!2835189 () Bool)

(assert (=> b!6949469 (=> (not res!2835189) (not e!4179785))))

(assert (=> b!6949469 (= res!2835189 lt!2477857)))

(declare-fun b!6949470 () Bool)

(assert (=> b!6949470 (= e!4179780 e!4179779)))

(declare-fun c!1289174 () Bool)

(assert (=> b!6949470 (= c!1289174 ((_ is EmptyLang!17007) lt!2477831))))

(declare-fun b!6949471 () Bool)

(declare-fun res!2835188 () Bool)

(assert (=> b!6949471 (=> res!2835188 e!4179781)))

(assert (=> b!6949471 (= res!2835188 (not (isEmpty!38896 (tail!12983 (_2!37165 lt!2477829)))))))

(declare-fun bm!631198 () Bool)

(assert (=> bm!631198 (= call!631203 (isEmpty!38896 (_2!37165 lt!2477829)))))

(declare-fun b!6949472 () Bool)

(declare-fun res!2835191 () Bool)

(assert (=> b!6949472 (=> res!2835191 e!4179783)))

(assert (=> b!6949472 (= res!2835191 (not ((_ is ElementMatch!17007) lt!2477831)))))

(assert (=> b!6949472 (= e!4179779 e!4179783)))

(assert (= (and d!2168997 c!1289175) b!6949468))

(assert (= (and d!2168997 (not c!1289175)) b!6949462))

(assert (= (and d!2168997 c!1289173) b!6949460))

(assert (= (and d!2168997 (not c!1289173)) b!6949470))

(assert (= (and b!6949470 c!1289174) b!6949463))

(assert (= (and b!6949470 (not c!1289174)) b!6949472))

(assert (= (and b!6949472 (not res!2835191)) b!6949469))

(assert (= (and b!6949469 res!2835189) b!6949467))

(assert (= (and b!6949467 res!2835192) b!6949465))

(assert (= (and b!6949465 res!2835187) b!6949466))

(assert (= (and b!6949469 (not res!2835190)) b!6949461))

(assert (= (and b!6949461 res!2835186) b!6949459))

(assert (= (and b!6949459 (not res!2835193)) b!6949471))

(assert (= (and b!6949471 (not res!2835188)) b!6949464))

(assert (= (or b!6949460 b!6949459 b!6949467) bm!631198))

(assert (=> bm!631198 m!7651782))

(declare-fun m!7651880 () Bool)

(assert (=> b!6949464 m!7651880))

(declare-fun m!7651882 () Bool)

(assert (=> b!6949471 m!7651882))

(assert (=> b!6949471 m!7651882))

(declare-fun m!7651884 () Bool)

(assert (=> b!6949471 m!7651884))

(assert (=> d!2168997 m!7651782))

(assert (=> d!2168997 m!7651754))

(assert (=> b!6949466 m!7651880))

(assert (=> b!6949465 m!7651882))

(assert (=> b!6949465 m!7651882))

(assert (=> b!6949465 m!7651884))

(declare-fun m!7651886 () Bool)

(assert (=> b!6949468 m!7651886))

(assert (=> b!6949462 m!7651880))

(assert (=> b!6949462 m!7651880))

(declare-fun m!7651888 () Bool)

(assert (=> b!6949462 m!7651888))

(assert (=> b!6949462 m!7651882))

(assert (=> b!6949462 m!7651888))

(assert (=> b!6949462 m!7651882))

(declare-fun m!7651890 () Bool)

(assert (=> b!6949462 m!7651890))

(assert (=> b!6949216 d!2168997))

(declare-fun b!6949519 () Bool)

(declare-fun res!2835219 () Bool)

(declare-fun e!4179818 () Bool)

(assert (=> b!6949519 (=> (not res!2835219) (not e!4179818))))

(declare-fun lt!2477860 () List!66760)

(declare-fun size!40821 (List!66760) Int)

(assert (=> b!6949519 (= res!2835219 (= (size!40821 lt!2477860) (+ (size!40821 (_1!37165 cut!42)) (size!40821 (_2!37165 cut!42)))))))

(declare-fun d!2168999 () Bool)

(assert (=> d!2168999 e!4179818))

(declare-fun res!2835218 () Bool)

(assert (=> d!2168999 (=> (not res!2835218) (not e!4179818))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13124 (List!66760) (InoxSet C!34284))

(assert (=> d!2168999 (= res!2835218 (= (content!13124 lt!2477860) ((_ map or) (content!13124 (_1!37165 cut!42)) (content!13124 (_2!37165 cut!42)))))))

(declare-fun e!4179819 () List!66760)

(assert (=> d!2168999 (= lt!2477860 e!4179819)))

(declare-fun c!1289186 () Bool)

(assert (=> d!2168999 (= c!1289186 ((_ is Nil!66636) (_1!37165 cut!42)))))

(assert (=> d!2168999 (= (++!15044 (_1!37165 cut!42) (_2!37165 cut!42)) lt!2477860)))

(declare-fun b!6949520 () Bool)

(assert (=> b!6949520 (= e!4179818 (or (not (= (_2!37165 cut!42) Nil!66636)) (= lt!2477860 (_1!37165 cut!42))))))

(declare-fun b!6949517 () Bool)

(assert (=> b!6949517 (= e!4179819 (_2!37165 cut!42))))

(declare-fun b!6949518 () Bool)

(assert (=> b!6949518 (= e!4179819 (Cons!66636 (h!73084 (_1!37165 cut!42)) (++!15044 (t!380503 (_1!37165 cut!42)) (_2!37165 cut!42))))))

(assert (= (and d!2168999 c!1289186) b!6949517))

(assert (= (and d!2168999 (not c!1289186)) b!6949518))

(assert (= (and d!2168999 res!2835218) b!6949519))

(assert (= (and b!6949519 res!2835219) b!6949520))

(declare-fun m!7651904 () Bool)

(assert (=> b!6949519 m!7651904))

(declare-fun m!7651908 () Bool)

(assert (=> b!6949519 m!7651908))

(declare-fun m!7651910 () Bool)

(assert (=> b!6949519 m!7651910))

(declare-fun m!7651912 () Bool)

(assert (=> d!2168999 m!7651912))

(declare-fun m!7651914 () Bool)

(assert (=> d!2168999 m!7651914))

(declare-fun m!7651916 () Bool)

(assert (=> d!2168999 m!7651916))

(declare-fun m!7651918 () Bool)

(assert (=> b!6949518 m!7651918))

(assert (=> b!6949210 d!2168999))

(declare-fun d!2169007 () Bool)

(assert (=> d!2169007 (Exists!4003 lambda!396274)))

(declare-fun lt!2477863 () Unit!160734)

(declare-fun choose!51792 (tuple2!67724 Int) Unit!160734)

(assert (=> d!2169007 (= lt!2477863 (choose!51792 lt!2477829 lambda!396274))))

(declare-fun dynLambda!26579 (Int tuple2!67724) Bool)

(assert (=> d!2169007 (dynLambda!26579 lambda!396274 lt!2477829)))

(assert (=> d!2169007 (= (ExistsThe!22 lt!2477829 lambda!396274) lt!2477863)))

(declare-fun b_lambda!260389 () Bool)

(assert (=> (not b_lambda!260389) (not d!2169007)))

(declare-fun bs!1857638 () Bool)

(assert (= bs!1857638 d!2169007))

(declare-fun m!7651920 () Bool)

(assert (=> bs!1857638 m!7651920))

(declare-fun m!7651922 () Bool)

(assert (=> bs!1857638 m!7651922))

(declare-fun m!7651924 () Bool)

(assert (=> bs!1857638 m!7651924))

(assert (=> b!6949210 d!2169007))

(declare-fun d!2169009 () Bool)

(assert (=> d!2169009 (= (isEmpty!38896 (_1!37165 cut!42)) ((_ is Nil!66636) (_1!37165 cut!42)))))

(assert (=> b!6949209 d!2169009))

(declare-fun bs!1857641 () Bool)

(declare-fun b!6949568 () Bool)

(assert (= bs!1857641 (and b!6949568 b!6949449)))

(declare-fun lambda!396293 () Int)

(assert (=> bs!1857641 (not (= lambda!396293 lambda!396292))))

(declare-fun bs!1857642 () Bool)

(assert (= bs!1857642 (and b!6949568 b!6949210)))

(assert (=> bs!1857642 (= (and (= (_1!37165 cut!42) s!10388) (= (reg!17336 rInner!765) rInner!765) (= rInner!765 lt!2477831)) (= lambda!396293 lambda!396274))))

(declare-fun bs!1857643 () Bool)

(assert (= bs!1857643 (and b!6949568 b!6949317)))

(assert (=> bs!1857643 (not (= lambda!396293 lambda!396288))))

(declare-fun bs!1857644 () Bool)

(assert (= bs!1857644 (and b!6949568 b!6949451)))

(assert (=> bs!1857644 (= (= (_1!37165 cut!42) (_1!37165 lt!2477829)) (= lambda!396293 lambda!396291))))

(declare-fun bs!1857645 () Bool)

(assert (= bs!1857645 (and b!6949568 b!6949319)))

(assert (=> bs!1857645 (= (and (= (_1!37165 cut!42) (_2!37165 lt!2477829)) (= (reg!17336 rInner!765) (reg!17336 lt!2477831)) (= rInner!765 lt!2477831)) (= lambda!396293 lambda!396287))))

(declare-fun bs!1857646 () Bool)

(assert (= bs!1857646 (and b!6949568 b!6949212)))

(assert (=> bs!1857646 (not (= lambda!396293 lambda!396273))))

(assert (=> b!6949568 true))

(assert (=> b!6949568 true))

(declare-fun bs!1857647 () Bool)

(declare-fun b!6949566 () Bool)

(assert (= bs!1857647 (and b!6949566 b!6949449)))

(declare-fun lambda!396294 () Int)

(assert (=> bs!1857647 (= (= (_1!37165 cut!42) (_1!37165 lt!2477829)) (= lambda!396294 lambda!396292))))

(declare-fun bs!1857648 () Bool)

(assert (= bs!1857648 (and b!6949566 b!6949568)))

(assert (=> bs!1857648 (not (= lambda!396294 lambda!396293))))

(declare-fun bs!1857649 () Bool)

(assert (= bs!1857649 (and b!6949566 b!6949210)))

(assert (=> bs!1857649 (not (= lambda!396294 lambda!396274))))

(declare-fun bs!1857650 () Bool)

(assert (= bs!1857650 (and b!6949566 b!6949317)))

(assert (=> bs!1857650 (= (and (= (_1!37165 cut!42) (_2!37165 lt!2477829)) (= (regOne!34526 rInner!765) (regOne!34526 lt!2477831)) (= (regTwo!34526 rInner!765) (regTwo!34526 lt!2477831))) (= lambda!396294 lambda!396288))))

(declare-fun bs!1857651 () Bool)

(assert (= bs!1857651 (and b!6949566 b!6949451)))

(assert (=> bs!1857651 (not (= lambda!396294 lambda!396291))))

(declare-fun bs!1857652 () Bool)

(assert (= bs!1857652 (and b!6949566 b!6949319)))

(assert (=> bs!1857652 (not (= lambda!396294 lambda!396287))))

(declare-fun bs!1857653 () Bool)

(assert (= bs!1857653 (and b!6949566 b!6949212)))

(assert (=> bs!1857653 (not (= lambda!396294 lambda!396273))))

(assert (=> b!6949566 true))

(assert (=> b!6949566 true))

(declare-fun b!6949561 () Bool)

(declare-fun c!1289190 () Bool)

(assert (=> b!6949561 (= c!1289190 ((_ is Union!17007) rInner!765))))

(declare-fun e!4179839 () Bool)

(declare-fun e!4179836 () Bool)

(assert (=> b!6949561 (= e!4179839 e!4179836)))

(declare-fun c!1289187 () Bool)

(declare-fun bm!631211 () Bool)

(declare-fun call!631217 () Bool)

(assert (=> bm!631211 (= call!631217 (Exists!4003 (ite c!1289187 lambda!396293 lambda!396294)))))

(declare-fun bm!631212 () Bool)

(declare-fun call!631216 () Bool)

(assert (=> bm!631212 (= call!631216 (isEmpty!38896 (_1!37165 cut!42)))))

(declare-fun b!6949562 () Bool)

(declare-fun e!4179837 () Bool)

(assert (=> b!6949562 (= e!4179836 e!4179837)))

(assert (=> b!6949562 (= c!1289187 ((_ is Star!17007) rInner!765))))

(declare-fun b!6949563 () Bool)

(declare-fun e!4179834 () Bool)

(declare-fun e!4179835 () Bool)

(assert (=> b!6949563 (= e!4179834 e!4179835)))

(declare-fun res!2835224 () Bool)

(assert (=> b!6949563 (= res!2835224 (not ((_ is EmptyLang!17007) rInner!765)))))

(assert (=> b!6949563 (=> (not res!2835224) (not e!4179835))))

(declare-fun b!6949564 () Bool)

(declare-fun c!1289188 () Bool)

(assert (=> b!6949564 (= c!1289188 ((_ is ElementMatch!17007) rInner!765))))

(assert (=> b!6949564 (= e!4179835 e!4179839)))

(assert (=> b!6949566 (= e!4179837 call!631217)))

(declare-fun b!6949567 () Bool)

(assert (=> b!6949567 (= e!4179839 (= (_1!37165 cut!42) (Cons!66636 (c!1289111 rInner!765) Nil!66636)))))

(declare-fun e!4179833 () Bool)

(assert (=> b!6949568 (= e!4179833 call!631217)))

(declare-fun b!6949569 () Bool)

(declare-fun e!4179838 () Bool)

(assert (=> b!6949569 (= e!4179836 e!4179838)))

(declare-fun res!2835223 () Bool)

(assert (=> b!6949569 (= res!2835223 (matchRSpec!4052 (regOne!34527 rInner!765) (_1!37165 cut!42)))))

(assert (=> b!6949569 (=> res!2835223 e!4179838)))

(declare-fun b!6949570 () Bool)

(declare-fun res!2835225 () Bool)

(assert (=> b!6949570 (=> res!2835225 e!4179833)))

(assert (=> b!6949570 (= res!2835225 call!631216)))

(assert (=> b!6949570 (= e!4179837 e!4179833)))

(declare-fun b!6949571 () Bool)

(assert (=> b!6949571 (= e!4179834 call!631216)))

(declare-fun d!2169013 () Bool)

(declare-fun c!1289189 () Bool)

(assert (=> d!2169013 (= c!1289189 ((_ is EmptyExpr!17007) rInner!765))))

(assert (=> d!2169013 (= (matchRSpec!4052 rInner!765 (_1!37165 cut!42)) e!4179834)))

(declare-fun b!6949565 () Bool)

(assert (=> b!6949565 (= e!4179838 (matchRSpec!4052 (regTwo!34527 rInner!765) (_1!37165 cut!42)))))

(assert (= (and d!2169013 c!1289189) b!6949571))

(assert (= (and d!2169013 (not c!1289189)) b!6949563))

(assert (= (and b!6949563 res!2835224) b!6949564))

(assert (= (and b!6949564 c!1289188) b!6949567))

(assert (= (and b!6949564 (not c!1289188)) b!6949561))

(assert (= (and b!6949561 c!1289190) b!6949569))

(assert (= (and b!6949561 (not c!1289190)) b!6949562))

(assert (= (and b!6949569 (not res!2835223)) b!6949565))

(assert (= (and b!6949562 c!1289187) b!6949570))

(assert (= (and b!6949562 (not c!1289187)) b!6949566))

(assert (= (and b!6949570 (not res!2835225)) b!6949568))

(assert (= (or b!6949568 b!6949566) bm!631211))

(assert (= (or b!6949571 b!6949570) bm!631212))

(declare-fun m!7651932 () Bool)

(assert (=> bm!631211 m!7651932))

(assert (=> bm!631212 m!7651746))

(declare-fun m!7651934 () Bool)

(assert (=> b!6949569 m!7651934))

(declare-fun m!7651936 () Bool)

(assert (=> b!6949565 m!7651936))

(assert (=> b!6949219 d!2169013))

(declare-fun d!2169017 () Bool)

(declare-fun res!2835239 () Bool)

(declare-fun e!4179861 () Bool)

(assert (=> d!2169017 (=> res!2835239 e!4179861)))

(assert (=> d!2169017 (= res!2835239 ((_ is ElementMatch!17007) rInner!765))))

(assert (=> d!2169017 (= (validRegex!8713 rInner!765) e!4179861)))

(declare-fun b!6949592 () Bool)

(declare-fun res!2835242 () Bool)

(declare-fun e!4179859 () Bool)

(assert (=> b!6949592 (=> res!2835242 e!4179859)))

(assert (=> b!6949592 (= res!2835242 (not ((_ is Concat!25852) rInner!765)))))

(declare-fun e!4179855 () Bool)

(assert (=> b!6949592 (= e!4179855 e!4179859)))

(declare-fun b!6949593 () Bool)

(declare-fun e!4179860 () Bool)

(assert (=> b!6949593 (= e!4179860 e!4179855)))

(declare-fun c!1289195 () Bool)

(assert (=> b!6949593 (= c!1289195 ((_ is Union!17007) rInner!765))))

(declare-fun bm!631219 () Bool)

(declare-fun call!631226 () Bool)

(assert (=> bm!631219 (= call!631226 (validRegex!8713 (ite c!1289195 (regTwo!34527 rInner!765) (regOne!34526 rInner!765))))))

(declare-fun c!1289196 () Bool)

(declare-fun call!631224 () Bool)

(declare-fun bm!631220 () Bool)

(assert (=> bm!631220 (= call!631224 (validRegex!8713 (ite c!1289196 (reg!17336 rInner!765) (ite c!1289195 (regOne!34527 rInner!765) (regTwo!34526 rInner!765)))))))

(declare-fun b!6949594 () Bool)

(declare-fun res!2835241 () Bool)

(declare-fun e!4179856 () Bool)

(assert (=> b!6949594 (=> (not res!2835241) (not e!4179856))))

(declare-fun call!631225 () Bool)

(assert (=> b!6949594 (= res!2835241 call!631225)))

(assert (=> b!6949594 (= e!4179855 e!4179856)))

(declare-fun b!6949595 () Bool)

(assert (=> b!6949595 (= e!4179856 call!631226)))

(declare-fun b!6949596 () Bool)

(declare-fun e!4179858 () Bool)

(assert (=> b!6949596 (= e!4179858 call!631225)))

(declare-fun bm!631221 () Bool)

(assert (=> bm!631221 (= call!631225 call!631224)))

(declare-fun b!6949597 () Bool)

(assert (=> b!6949597 (= e!4179861 e!4179860)))

(assert (=> b!6949597 (= c!1289196 ((_ is Star!17007) rInner!765))))

(declare-fun b!6949598 () Bool)

(declare-fun e!4179857 () Bool)

(assert (=> b!6949598 (= e!4179860 e!4179857)))

(declare-fun res!2835240 () Bool)

(assert (=> b!6949598 (= res!2835240 (not (nullable!6820 (reg!17336 rInner!765))))))

(assert (=> b!6949598 (=> (not res!2835240) (not e!4179857))))

(declare-fun b!6949599 () Bool)

(assert (=> b!6949599 (= e!4179859 e!4179858)))

(declare-fun res!2835238 () Bool)

(assert (=> b!6949599 (=> (not res!2835238) (not e!4179858))))

(assert (=> b!6949599 (= res!2835238 call!631226)))

(declare-fun b!6949600 () Bool)

(assert (=> b!6949600 (= e!4179857 call!631224)))

(assert (= (and d!2169017 (not res!2835239)) b!6949597))

(assert (= (and b!6949597 c!1289196) b!6949598))

(assert (= (and b!6949597 (not c!1289196)) b!6949593))

(assert (= (and b!6949598 res!2835240) b!6949600))

(assert (= (and b!6949593 c!1289195) b!6949594))

(assert (= (and b!6949593 (not c!1289195)) b!6949592))

(assert (= (and b!6949594 res!2835241) b!6949595))

(assert (= (and b!6949592 (not res!2835242)) b!6949599))

(assert (= (and b!6949599 res!2835238) b!6949596))

(assert (= (or b!6949594 b!6949596) bm!631221))

(assert (= (or b!6949595 b!6949599) bm!631219))

(assert (= (or b!6949600 bm!631221) bm!631220))

(declare-fun m!7651938 () Bool)

(assert (=> bm!631219 m!7651938))

(declare-fun m!7651940 () Bool)

(assert (=> bm!631220 m!7651940))

(declare-fun m!7651942 () Bool)

(assert (=> b!6949598 m!7651942))

(assert (=> start!667046 d!2169017))

(declare-fun d!2169019 () Bool)

(declare-fun res!2835244 () Bool)

(declare-fun e!4179868 () Bool)

(assert (=> d!2169019 (=> res!2835244 e!4179868)))

(assert (=> d!2169019 (= res!2835244 ((_ is ElementMatch!17007) lt!2477831))))

(assert (=> d!2169019 (= (validRegex!8713 lt!2477831) e!4179868)))

(declare-fun b!6949601 () Bool)

(declare-fun res!2835247 () Bool)

(declare-fun e!4179866 () Bool)

(assert (=> b!6949601 (=> res!2835247 e!4179866)))

(assert (=> b!6949601 (= res!2835247 (not ((_ is Concat!25852) lt!2477831)))))

(declare-fun e!4179862 () Bool)

(assert (=> b!6949601 (= e!4179862 e!4179866)))

(declare-fun b!6949602 () Bool)

(declare-fun e!4179867 () Bool)

(assert (=> b!6949602 (= e!4179867 e!4179862)))

(declare-fun c!1289197 () Bool)

(assert (=> b!6949602 (= c!1289197 ((_ is Union!17007) lt!2477831))))

(declare-fun bm!631222 () Bool)

(declare-fun call!631229 () Bool)

(assert (=> bm!631222 (= call!631229 (validRegex!8713 (ite c!1289197 (regTwo!34527 lt!2477831) (regOne!34526 lt!2477831))))))

(declare-fun call!631227 () Bool)

(declare-fun c!1289198 () Bool)

(declare-fun bm!631223 () Bool)

(assert (=> bm!631223 (= call!631227 (validRegex!8713 (ite c!1289198 (reg!17336 lt!2477831) (ite c!1289197 (regOne!34527 lt!2477831) (regTwo!34526 lt!2477831)))))))

(declare-fun b!6949603 () Bool)

(declare-fun res!2835246 () Bool)

(declare-fun e!4179863 () Bool)

(assert (=> b!6949603 (=> (not res!2835246) (not e!4179863))))

(declare-fun call!631228 () Bool)

(assert (=> b!6949603 (= res!2835246 call!631228)))

(assert (=> b!6949603 (= e!4179862 e!4179863)))

(declare-fun b!6949604 () Bool)

(assert (=> b!6949604 (= e!4179863 call!631229)))

(declare-fun b!6949605 () Bool)

(declare-fun e!4179865 () Bool)

(assert (=> b!6949605 (= e!4179865 call!631228)))

(declare-fun bm!631224 () Bool)

(assert (=> bm!631224 (= call!631228 call!631227)))

(declare-fun b!6949606 () Bool)

(assert (=> b!6949606 (= e!4179868 e!4179867)))

(assert (=> b!6949606 (= c!1289198 ((_ is Star!17007) lt!2477831))))

(declare-fun b!6949607 () Bool)

(declare-fun e!4179864 () Bool)

(assert (=> b!6949607 (= e!4179867 e!4179864)))

(declare-fun res!2835245 () Bool)

(assert (=> b!6949607 (= res!2835245 (not (nullable!6820 (reg!17336 lt!2477831))))))

(assert (=> b!6949607 (=> (not res!2835245) (not e!4179864))))

(declare-fun b!6949608 () Bool)

(assert (=> b!6949608 (= e!4179866 e!4179865)))

(declare-fun res!2835243 () Bool)

(assert (=> b!6949608 (=> (not res!2835243) (not e!4179865))))

(assert (=> b!6949608 (= res!2835243 call!631229)))

(declare-fun b!6949609 () Bool)

(assert (=> b!6949609 (= e!4179864 call!631227)))

(assert (= (and d!2169019 (not res!2835244)) b!6949606))

(assert (= (and b!6949606 c!1289198) b!6949607))

(assert (= (and b!6949606 (not c!1289198)) b!6949602))

(assert (= (and b!6949607 res!2835245) b!6949609))

(assert (= (and b!6949602 c!1289197) b!6949603))

(assert (= (and b!6949602 (not c!1289197)) b!6949601))

(assert (= (and b!6949603 res!2835246) b!6949604))

(assert (= (and b!6949601 (not res!2835247)) b!6949608))

(assert (= (and b!6949608 res!2835243) b!6949605))

(assert (= (or b!6949603 b!6949605) bm!631224))

(assert (= (or b!6949604 b!6949608) bm!631222))

(assert (= (or b!6949609 bm!631224) bm!631223))

(declare-fun m!7651944 () Bool)

(assert (=> bm!631222 m!7651944))

(declare-fun m!7651946 () Bool)

(assert (=> bm!631223 m!7651946))

(declare-fun m!7651948 () Bool)

(assert (=> b!6949607 m!7651948))

(assert (=> b!6949214 d!2169019))

(declare-fun d!2169021 () Bool)

(declare-fun nullableFct!2553 (Regex!17007) Bool)

(assert (=> d!2169021 (= (nullable!6820 rInner!765) (nullableFct!2553 rInner!765))))

(declare-fun bs!1857654 () Bool)

(assert (= bs!1857654 d!2169021))

(declare-fun m!7651950 () Bool)

(assert (=> bs!1857654 m!7651950))

(assert (=> b!6949208 d!2169021))

(declare-fun b!6949612 () Bool)

(declare-fun res!2835249 () Bool)

(declare-fun e!4179869 () Bool)

(assert (=> b!6949612 (=> (not res!2835249) (not e!4179869))))

(declare-fun lt!2477864 () List!66760)

(assert (=> b!6949612 (= res!2835249 (= (size!40821 lt!2477864) (+ (size!40821 (_1!37165 lt!2477829)) (size!40821 (_2!37165 lt!2477829)))))))

(declare-fun d!2169023 () Bool)

(assert (=> d!2169023 e!4179869))

(declare-fun res!2835248 () Bool)

(assert (=> d!2169023 (=> (not res!2835248) (not e!4179869))))

(assert (=> d!2169023 (= res!2835248 (= (content!13124 lt!2477864) ((_ map or) (content!13124 (_1!37165 lt!2477829)) (content!13124 (_2!37165 lt!2477829)))))))

(declare-fun e!4179870 () List!66760)

(assert (=> d!2169023 (= lt!2477864 e!4179870)))

(declare-fun c!1289199 () Bool)

(assert (=> d!2169023 (= c!1289199 ((_ is Nil!66636) (_1!37165 lt!2477829)))))

(assert (=> d!2169023 (= (++!15044 (_1!37165 lt!2477829) (_2!37165 lt!2477829)) lt!2477864)))

(declare-fun b!6949613 () Bool)

(assert (=> b!6949613 (= e!4179869 (or (not (= (_2!37165 lt!2477829) Nil!66636)) (= lt!2477864 (_1!37165 lt!2477829))))))

(declare-fun b!6949610 () Bool)

(assert (=> b!6949610 (= e!4179870 (_2!37165 lt!2477829))))

(declare-fun b!6949611 () Bool)

(assert (=> b!6949611 (= e!4179870 (Cons!66636 (h!73084 (_1!37165 lt!2477829)) (++!15044 (t!380503 (_1!37165 lt!2477829)) (_2!37165 lt!2477829))))))

(assert (= (and d!2169023 c!1289199) b!6949610))

(assert (= (and d!2169023 (not c!1289199)) b!6949611))

(assert (= (and d!2169023 res!2835248) b!6949612))

(assert (= (and b!6949612 res!2835249) b!6949613))

(declare-fun m!7651952 () Bool)

(assert (=> b!6949612 m!7651952))

(declare-fun m!7651954 () Bool)

(assert (=> b!6949612 m!7651954))

(declare-fun m!7651956 () Bool)

(assert (=> b!6949612 m!7651956))

(declare-fun m!7651958 () Bool)

(assert (=> d!2169023 m!7651958))

(declare-fun m!7651960 () Bool)

(assert (=> d!2169023 m!7651960))

(declare-fun m!7651962 () Bool)

(assert (=> d!2169023 m!7651962))

(declare-fun m!7651964 () Bool)

(assert (=> b!6949611 m!7651964))

(assert (=> b!6949207 d!2169023))

(declare-fun d!2169025 () Bool)

(declare-fun lt!2477867 () tuple2!67724)

(assert (=> d!2169025 (dynLambda!26579 lambda!396273 lt!2477867)))

(declare-fun choose!51793 (Int) tuple2!67724)

(assert (=> d!2169025 (= lt!2477867 (choose!51793 lambda!396273))))

(assert (=> d!2169025 (Exists!4003 lambda!396273)))

(assert (=> d!2169025 (= (pickWitness!352 lambda!396273) lt!2477867)))

(declare-fun b_lambda!260395 () Bool)

(assert (=> (not b_lambda!260395) (not d!2169025)))

(declare-fun bs!1857655 () Bool)

(assert (= bs!1857655 d!2169025))

(declare-fun m!7651966 () Bool)

(assert (=> bs!1857655 m!7651966))

(declare-fun m!7651968 () Bool)

(assert (=> bs!1857655 m!7651968))

(assert (=> bs!1857655 m!7651758))

(assert (=> b!6949207 d!2169025))

(declare-fun b!6949618 () Bool)

(declare-fun e!4179873 () Bool)

(declare-fun tp!1915624 () Bool)

(assert (=> b!6949618 (= e!4179873 (and tp_is_empty!43239 tp!1915624))))

(assert (=> b!6949217 (= tp!1915574 e!4179873)))

(assert (= (and b!6949217 ((_ is Cons!66636) (t!380503 s!10388))) b!6949618))

(declare-fun b!6949619 () Bool)

(declare-fun e!4179874 () Bool)

(declare-fun tp!1915625 () Bool)

(assert (=> b!6949619 (= e!4179874 (and tp_is_empty!43239 tp!1915625))))

(assert (=> b!6949211 (= tp!1915576 e!4179874)))

(assert (= (and b!6949211 ((_ is Cons!66636) (t!380503 (_1!37165 cut!42)))) b!6949619))

(declare-fun b!6949620 () Bool)

(declare-fun e!4179875 () Bool)

(declare-fun tp!1915626 () Bool)

(assert (=> b!6949620 (= e!4179875 (and tp_is_empty!43239 tp!1915626))))

(assert (=> b!6949215 (= tp!1915580 e!4179875)))

(assert (= (and b!6949215 ((_ is Cons!66636) (t!380503 (_2!37165 cut!42)))) b!6949620))

(declare-fun b!6949632 () Bool)

(declare-fun e!4179878 () Bool)

(declare-fun tp!1915641 () Bool)

(declare-fun tp!1915638 () Bool)

(assert (=> b!6949632 (= e!4179878 (and tp!1915641 tp!1915638))))

(declare-fun b!6949634 () Bool)

(declare-fun tp!1915640 () Bool)

(declare-fun tp!1915639 () Bool)

(assert (=> b!6949634 (= e!4179878 (and tp!1915640 tp!1915639))))

(declare-fun b!6949631 () Bool)

(assert (=> b!6949631 (= e!4179878 tp_is_empty!43239)))

(declare-fun b!6949633 () Bool)

(declare-fun tp!1915637 () Bool)

(assert (=> b!6949633 (= e!4179878 tp!1915637)))

(assert (=> b!6949220 (= tp!1915577 e!4179878)))

(assert (= (and b!6949220 ((_ is ElementMatch!17007) (regOne!34527 rInner!765))) b!6949631))

(assert (= (and b!6949220 ((_ is Concat!25852) (regOne!34527 rInner!765))) b!6949632))

(assert (= (and b!6949220 ((_ is Star!17007) (regOne!34527 rInner!765))) b!6949633))

(assert (= (and b!6949220 ((_ is Union!17007) (regOne!34527 rInner!765))) b!6949634))

(declare-fun b!6949636 () Bool)

(declare-fun e!4179879 () Bool)

(declare-fun tp!1915646 () Bool)

(declare-fun tp!1915643 () Bool)

(assert (=> b!6949636 (= e!4179879 (and tp!1915646 tp!1915643))))

(declare-fun b!6949638 () Bool)

(declare-fun tp!1915645 () Bool)

(declare-fun tp!1915644 () Bool)

(assert (=> b!6949638 (= e!4179879 (and tp!1915645 tp!1915644))))

(declare-fun b!6949635 () Bool)

(assert (=> b!6949635 (= e!4179879 tp_is_empty!43239)))

(declare-fun b!6949637 () Bool)

(declare-fun tp!1915642 () Bool)

(assert (=> b!6949637 (= e!4179879 tp!1915642)))

(assert (=> b!6949220 (= tp!1915579 e!4179879)))

(assert (= (and b!6949220 ((_ is ElementMatch!17007) (regTwo!34527 rInner!765))) b!6949635))

(assert (= (and b!6949220 ((_ is Concat!25852) (regTwo!34527 rInner!765))) b!6949636))

(assert (= (and b!6949220 ((_ is Star!17007) (regTwo!34527 rInner!765))) b!6949637))

(assert (= (and b!6949220 ((_ is Union!17007) (regTwo!34527 rInner!765))) b!6949638))

(declare-fun b!6949640 () Bool)

(declare-fun e!4179880 () Bool)

(declare-fun tp!1915651 () Bool)

(declare-fun tp!1915648 () Bool)

(assert (=> b!6949640 (= e!4179880 (and tp!1915651 tp!1915648))))

(declare-fun b!6949642 () Bool)

(declare-fun tp!1915650 () Bool)

(declare-fun tp!1915649 () Bool)

(assert (=> b!6949642 (= e!4179880 (and tp!1915650 tp!1915649))))

(declare-fun b!6949639 () Bool)

(assert (=> b!6949639 (= e!4179880 tp_is_empty!43239)))

(declare-fun b!6949641 () Bool)

(declare-fun tp!1915647 () Bool)

(assert (=> b!6949641 (= e!4179880 tp!1915647)))

(assert (=> b!6949213 (= tp!1915575 e!4179880)))

(assert (= (and b!6949213 ((_ is ElementMatch!17007) (regOne!34526 rInner!765))) b!6949639))

(assert (= (and b!6949213 ((_ is Concat!25852) (regOne!34526 rInner!765))) b!6949640))

(assert (= (and b!6949213 ((_ is Star!17007) (regOne!34526 rInner!765))) b!6949641))

(assert (= (and b!6949213 ((_ is Union!17007) (regOne!34526 rInner!765))) b!6949642))

(declare-fun b!6949644 () Bool)

(declare-fun e!4179881 () Bool)

(declare-fun tp!1915656 () Bool)

(declare-fun tp!1915653 () Bool)

(assert (=> b!6949644 (= e!4179881 (and tp!1915656 tp!1915653))))

(declare-fun b!6949646 () Bool)

(declare-fun tp!1915655 () Bool)

(declare-fun tp!1915654 () Bool)

(assert (=> b!6949646 (= e!4179881 (and tp!1915655 tp!1915654))))

(declare-fun b!6949643 () Bool)

(assert (=> b!6949643 (= e!4179881 tp_is_empty!43239)))

(declare-fun b!6949645 () Bool)

(declare-fun tp!1915652 () Bool)

(assert (=> b!6949645 (= e!4179881 tp!1915652)))

(assert (=> b!6949213 (= tp!1915578 e!4179881)))

(assert (= (and b!6949213 ((_ is ElementMatch!17007) (regTwo!34526 rInner!765))) b!6949643))

(assert (= (and b!6949213 ((_ is Concat!25852) (regTwo!34526 rInner!765))) b!6949644))

(assert (= (and b!6949213 ((_ is Star!17007) (regTwo!34526 rInner!765))) b!6949645))

(assert (= (and b!6949213 ((_ is Union!17007) (regTwo!34526 rInner!765))) b!6949646))

(declare-fun b!6949648 () Bool)

(declare-fun e!4179882 () Bool)

(declare-fun tp!1915661 () Bool)

(declare-fun tp!1915658 () Bool)

(assert (=> b!6949648 (= e!4179882 (and tp!1915661 tp!1915658))))

(declare-fun b!6949650 () Bool)

(declare-fun tp!1915660 () Bool)

(declare-fun tp!1915659 () Bool)

(assert (=> b!6949650 (= e!4179882 (and tp!1915660 tp!1915659))))

(declare-fun b!6949647 () Bool)

(assert (=> b!6949647 (= e!4179882 tp_is_empty!43239)))

(declare-fun b!6949649 () Bool)

(declare-fun tp!1915657 () Bool)

(assert (=> b!6949649 (= e!4179882 tp!1915657)))

(assert (=> b!6949218 (= tp!1915581 e!4179882)))

(assert (= (and b!6949218 ((_ is ElementMatch!17007) (reg!17336 rInner!765))) b!6949647))

(assert (= (and b!6949218 ((_ is Concat!25852) (reg!17336 rInner!765))) b!6949648))

(assert (= (and b!6949218 ((_ is Star!17007) (reg!17336 rInner!765))) b!6949649))

(assert (= (and b!6949218 ((_ is Union!17007) (reg!17336 rInner!765))) b!6949650))

(declare-fun b_lambda!260397 () Bool)

(assert (= b_lambda!260395 (or b!6949212 b_lambda!260397)))

(declare-fun bs!1857656 () Bool)

(declare-fun d!2169027 () Bool)

(assert (= bs!1857656 (and d!2169027 b!6949212)))

(declare-fun res!2835250 () Bool)

(declare-fun e!4179883 () Bool)

(assert (=> bs!1857656 (=> (not res!2835250) (not e!4179883))))

(assert (=> bs!1857656 (= res!2835250 (= (++!15044 (_1!37165 lt!2477867) (_2!37165 lt!2477867)) s!10388))))

(assert (=> bs!1857656 (= (dynLambda!26579 lambda!396273 lt!2477867) e!4179883)))

(declare-fun b!6949651 () Bool)

(declare-fun res!2835251 () Bool)

(assert (=> b!6949651 (=> (not res!2835251) (not e!4179883))))

(assert (=> b!6949651 (= res!2835251 (matchR!9138 rInner!765 (_1!37165 lt!2477867)))))

(declare-fun b!6949652 () Bool)

(assert (=> b!6949652 (= e!4179883 (matchR!9138 (Star!17007 rInner!765) (_2!37165 lt!2477867)))))

(assert (= (and bs!1857656 res!2835250) b!6949651))

(assert (= (and b!6949651 res!2835251) b!6949652))

(declare-fun m!7651970 () Bool)

(assert (=> bs!1857656 m!7651970))

(declare-fun m!7651972 () Bool)

(assert (=> b!6949651 m!7651972))

(declare-fun m!7651974 () Bool)

(assert (=> b!6949652 m!7651974))

(assert (=> d!2169025 d!2169027))

(declare-fun b_lambda!260399 () Bool)

(assert (= b_lambda!260389 (or b!6949210 b_lambda!260399)))

(declare-fun bs!1857657 () Bool)

(declare-fun d!2169029 () Bool)

(assert (= bs!1857657 (and d!2169029 b!6949210)))

(declare-fun res!2835252 () Bool)

(declare-fun e!4179884 () Bool)

(assert (=> bs!1857657 (=> (not res!2835252) (not e!4179884))))

(assert (=> bs!1857657 (= res!2835252 (= (++!15044 (_1!37165 lt!2477829) (_2!37165 lt!2477829)) s!10388))))

(assert (=> bs!1857657 (= (dynLambda!26579 lambda!396274 lt!2477829) e!4179884)))

(declare-fun b!6949653 () Bool)

(declare-fun res!2835253 () Bool)

(assert (=> b!6949653 (=> (not res!2835253) (not e!4179884))))

(assert (=> b!6949653 (= res!2835253 (not (isEmpty!38896 (_1!37165 lt!2477829))))))

(declare-fun b!6949654 () Bool)

(declare-fun res!2835254 () Bool)

(assert (=> b!6949654 (=> (not res!2835254) (not e!4179884))))

(assert (=> b!6949654 (= res!2835254 (matchRSpec!4052 rInner!765 (_1!37165 lt!2477829)))))

(declare-fun b!6949655 () Bool)

(assert (=> b!6949655 (= e!4179884 (matchRSpec!4052 lt!2477831 (_2!37165 lt!2477829)))))

(assert (= (and bs!1857657 res!2835252) b!6949653))

(assert (= (and b!6949653 res!2835253) b!6949654))

(assert (= (and b!6949654 res!2835254) b!6949655))

(assert (=> bs!1857657 m!7651748))

(assert (=> b!6949653 m!7651824))

(assert (=> b!6949654 m!7651740))

(assert (=> b!6949655 m!7651738))

(assert (=> d!2169007 d!2169029))

(check-sat (not b!6949471) (not b!6949634) (not bm!631185) (not b!6949569) (not b!6949316) (not bm!631211) (not d!2168961) (not b!6949633) (not d!2169023) (not b!6949519) (not b!6949632) (not d!2168997) (not b!6949433) (not b!6949565) (not b!6949432) (not bm!631222) (not b!6949607) (not b!6949466) (not bm!631198) (not d!2169021) (not b!6949637) (not bm!631223) (not b!6949448) (not bm!631197) (not b!6949649) (not b!6949618) (not b!6949654) (not b!6949651) (not b!6949655) (not b!6949641) (not b!6949464) (not bm!631219) (not b!6949646) (not bs!1857656) (not b!6949452) (not b!6949611) (not b!6949650) (not b!6949429) (not b!6949320) (not b!6949648) (not bm!631212) (not b!6949645) (not d!2169007) (not b!6949642) (not d!2168973) (not b!6949438) (not b!6949518) (not d!2169025) (not bm!631195) (not b!6949431) (not b!6949468) (not bm!631196) (not bm!631220) (not b!6949620) (not b_lambda!260397) tp_is_empty!43239 (not b!6949619) (not bs!1857657) (not b!6949435) (not bm!631186) (not b!6949652) (not b!6949638) (not b!6949462) (not b!6949612) (not b!6949636) (not d!2168975) (not d!2168965) (not d!2168999) (not b!6949653) (not b_lambda!260399) (not b!6949640) (not b!6949465) (not b!6949598) (not b!6949644))
(check-sat)
