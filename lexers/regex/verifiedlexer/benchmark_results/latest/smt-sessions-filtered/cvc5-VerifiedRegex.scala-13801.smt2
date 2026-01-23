; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735034 () Bool)

(assert start!735034)

(declare-fun b!7633666 () Bool)

(assert (=> b!7633666 true))

(assert (=> b!7633666 true))

(declare-fun bs!1944113 () Bool)

(declare-fun b!7633660 () Bool)

(assert (= bs!1944113 (and b!7633660 b!7633666)))

(declare-fun lambda!469193 () Int)

(declare-fun lambda!469192 () Int)

(assert (=> bs!1944113 (not (= lambda!469193 lambda!469192))))

(assert (=> b!7633660 true))

(assert (=> b!7633660 true))

(declare-fun res!3057217 () Bool)

(declare-fun e!4538116 () Bool)

(assert (=> b!7633660 (=> res!3057217 e!4538116)))

(declare-fun Exists!4550 (Int) Bool)

(assert (=> b!7633660 (= res!3057217 (not (Exists!4550 lambda!469193)))))

(declare-fun b!7633661 () Bool)

(declare-datatypes ((Unit!167736 0))(
  ( (Unit!167737) )
))
(declare-fun e!4538124 () Unit!167736)

(declare-fun Unit!167738 () Unit!167736)

(assert (=> b!7633661 (= e!4538124 Unit!167738)))

(declare-fun b!7633662 () Bool)

(declare-fun e!4538117 () Bool)

(declare-fun tp_is_empty!51147 () Bool)

(declare-fun tp!2228593 () Bool)

(assert (=> b!7633662 (= e!4538117 (and tp_is_empty!51147 tp!2228593))))

(declare-fun b!7633663 () Bool)

(declare-fun e!4538122 () Bool)

(declare-fun tp!2228591 () Bool)

(assert (=> b!7633663 (= e!4538122 (and tp_is_empty!51147 tp!2228591))))

(declare-fun b!7633664 () Bool)

(declare-fun e!4538121 () Bool)

(declare-fun tp!2228592 () Bool)

(declare-fun tp!2228586 () Bool)

(assert (=> b!7633664 (= e!4538121 (and tp!2228592 tp!2228586))))

(declare-fun b!7633665 () Bool)

(declare-fun e!4538123 () Bool)

(declare-fun tp!2228587 () Bool)

(assert (=> b!7633665 (= e!4538123 (and tp_is_empty!51147 tp!2228587))))

(declare-fun e!4538119 () Bool)

(declare-fun e!4538120 () Bool)

(assert (=> b!7633666 (= e!4538119 (not e!4538120))))

(declare-fun res!3057219 () Bool)

(assert (=> b!7633666 (=> res!3057219 e!4538120)))

(declare-datatypes ((C!41118 0))(
  ( (C!41119 (val!30999 Int)) )
))
(declare-datatypes ((Regex!20396 0))(
  ( (ElementMatch!20396 (c!1406278 C!41118)) (Concat!29241 (regOne!41304 Regex!20396) (regTwo!41304 Regex!20396)) (EmptyExpr!20396) (Star!20396 (reg!20725 Regex!20396)) (EmptyLang!20396) (Union!20396 (regOne!41305 Regex!20396) (regTwo!41305 Regex!20396)) )
))
(declare-fun r!14126 () Regex!20396)

(declare-datatypes ((List!73247 0))(
  ( (Nil!73123) (Cons!73123 (h!79571 C!41118) (t!387982 List!73247)) )
))
(declare-fun s!9605 () List!73247)

(declare-fun matchR!9899 (Regex!20396 List!73247) Bool)

(assert (=> b!7633666 (= res!3057219 (matchR!9899 r!14126 s!9605))))

(declare-fun lt!2659195 () Bool)

(assert (=> b!7633666 (= lt!2659195 (Exists!4550 lambda!469192))))

(declare-datatypes ((tuple2!69350 0))(
  ( (tuple2!69351 (_1!37978 List!73247) (_2!37978 List!73247)) )
))
(declare-datatypes ((Option!17469 0))(
  ( (None!17468) (Some!17468 (v!54603 tuple2!69350)) )
))
(declare-fun lt!2659192 () Option!17469)

(declare-fun isDefined!14085 (Option!17469) Bool)

(assert (=> b!7633666 (= lt!2659195 (isDefined!14085 lt!2659192))))

(declare-fun findConcatSeparation!3499 (Regex!20396 Regex!20396 List!73247 List!73247 List!73247) Option!17469)

(assert (=> b!7633666 (= lt!2659192 (findConcatSeparation!3499 (regOne!41304 r!14126) (regTwo!41304 r!14126) Nil!73123 s!9605 s!9605))))

(declare-fun lt!2659191 () Unit!167736)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3257 (Regex!20396 Regex!20396 List!73247) Unit!167736)

(assert (=> b!7633666 (= lt!2659191 (lemmaFindConcatSeparationEquivalentToExists!3257 (regOne!41304 r!14126) (regTwo!41304 r!14126) s!9605))))

(declare-fun b!7633667 () Bool)

(assert (=> b!7633667 (= e!4538120 e!4538116)))

(declare-fun res!3057221 () Bool)

(assert (=> b!7633667 (=> res!3057221 e!4538116)))

(assert (=> b!7633667 (= res!3057221 (Exists!4550 lambda!469192))))

(declare-fun lt!2659194 () Unit!167736)

(assert (=> b!7633667 (= lt!2659194 e!4538124)))

(declare-fun c!1406277 () Bool)

(assert (=> b!7633667 (= c!1406277 lt!2659195)))

(declare-fun b!7633668 () Bool)

(declare-fun tp!2228589 () Bool)

(declare-fun tp!2228590 () Bool)

(assert (=> b!7633668 (= e!4538121 (and tp!2228589 tp!2228590))))

(declare-fun b!7633669 () Bool)

(declare-fun Unit!167739 () Unit!167736)

(assert (=> b!7633669 (= e!4538124 Unit!167739)))

(declare-fun lt!2659193 () tuple2!69350)

(declare-fun get!25859 (Option!17469) tuple2!69350)

(assert (=> b!7633669 (= lt!2659193 (get!25859 lt!2659192))))

(declare-fun lt!2659196 () Unit!167736)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!153 (Regex!20396 Regex!20396 List!73247 List!73247 List!73247) Unit!167736)

(assert (=> b!7633669 (= lt!2659196 (lemmaFindSeparationIsDefinedThenConcatMatches!153 (regOne!41304 r!14126) (regTwo!41304 r!14126) (_1!37978 lt!2659193) (_2!37978 lt!2659193) s!9605))))

(declare-fun res!3057220 () Bool)

(declare-fun ++!17676 (List!73247 List!73247) List!73247)

(assert (=> b!7633669 (= res!3057220 (matchR!9899 r!14126 (++!17676 (_1!37978 lt!2659193) (_2!37978 lt!2659193))))))

(declare-fun e!4538118 () Bool)

(assert (=> b!7633669 (=> (not res!3057220) (not e!4538118))))

(assert (=> b!7633669 e!4538118))

(declare-fun b!7633670 () Bool)

(declare-fun tp!2228588 () Bool)

(assert (=> b!7633670 (= e!4538121 tp!2228588)))

(declare-fun b!7633671 () Bool)

(declare-fun validRegex!10814 (Regex!20396) Bool)

(assert (=> b!7633671 (= e!4538116 (validRegex!10814 (regOne!41304 r!14126)))))

(declare-fun res!3057216 () Bool)

(assert (=> start!735034 (=> (not res!3057216) (not e!4538119))))

(assert (=> start!735034 (= res!3057216 (validRegex!10814 r!14126))))

(assert (=> start!735034 e!4538119))

(assert (=> start!735034 e!4538121))

(assert (=> start!735034 e!4538122))

(assert (=> start!735034 (and e!4538117 e!4538123)))

(declare-fun b!7633672 () Bool)

(assert (=> b!7633672 (= e!4538118 false)))

(declare-fun b!7633673 () Bool)

(declare-fun res!3057218 () Bool)

(assert (=> b!7633673 (=> res!3057218 e!4538116)))

(declare-fun cut!19 () tuple2!69350)

(assert (=> b!7633673 (= res!3057218 (not (= (++!17676 (_1!37978 cut!19) (_2!37978 cut!19)) s!9605)))))

(declare-fun b!7633674 () Bool)

(assert (=> b!7633674 (= e!4538121 tp_is_empty!51147)))

(declare-fun b!7633675 () Bool)

(declare-fun res!3057215 () Bool)

(assert (=> b!7633675 (=> (not res!3057215) (not e!4538119))))

(assert (=> b!7633675 (= res!3057215 (and (not (is-EmptyExpr!20396 r!14126)) (not (is-EmptyLang!20396 r!14126)) (not (is-ElementMatch!20396 r!14126)) (not (is-Union!20396 r!14126)) (not (is-Star!20396 r!14126))))))

(assert (= (and start!735034 res!3057216) b!7633675))

(assert (= (and b!7633675 res!3057215) b!7633666))

(assert (= (and b!7633666 (not res!3057219)) b!7633667))

(assert (= (and b!7633667 c!1406277) b!7633669))

(assert (= (and b!7633667 (not c!1406277)) b!7633661))

(assert (= (and b!7633669 res!3057220) b!7633672))

(assert (= (and b!7633667 (not res!3057221)) b!7633660))

(assert (= (and b!7633660 (not res!3057217)) b!7633673))

(assert (= (and b!7633673 (not res!3057218)) b!7633671))

(assert (= (and start!735034 (is-ElementMatch!20396 r!14126)) b!7633674))

(assert (= (and start!735034 (is-Concat!29241 r!14126)) b!7633668))

(assert (= (and start!735034 (is-Star!20396 r!14126)) b!7633670))

(assert (= (and start!735034 (is-Union!20396 r!14126)) b!7633664))

(assert (= (and start!735034 (is-Cons!73123 s!9605)) b!7633663))

(assert (= (and start!735034 (is-Cons!73123 (_1!37978 cut!19))) b!7633662))

(assert (= (and start!735034 (is-Cons!73123 (_2!37978 cut!19))) b!7633665))

(declare-fun m!8159362 () Bool)

(assert (=> b!7633669 m!8159362))

(declare-fun m!8159364 () Bool)

(assert (=> b!7633669 m!8159364))

(declare-fun m!8159366 () Bool)

(assert (=> b!7633669 m!8159366))

(assert (=> b!7633669 m!8159366))

(declare-fun m!8159368 () Bool)

(assert (=> b!7633669 m!8159368))

(declare-fun m!8159370 () Bool)

(assert (=> b!7633667 m!8159370))

(declare-fun m!8159372 () Bool)

(assert (=> b!7633671 m!8159372))

(declare-fun m!8159374 () Bool)

(assert (=> start!735034 m!8159374))

(declare-fun m!8159376 () Bool)

(assert (=> b!7633666 m!8159376))

(declare-fun m!8159378 () Bool)

(assert (=> b!7633666 m!8159378))

(assert (=> b!7633666 m!8159370))

(declare-fun m!8159380 () Bool)

(assert (=> b!7633666 m!8159380))

(declare-fun m!8159382 () Bool)

(assert (=> b!7633666 m!8159382))

(declare-fun m!8159384 () Bool)

(assert (=> b!7633660 m!8159384))

(declare-fun m!8159386 () Bool)

(assert (=> b!7633673 m!8159386))

(push 1)

(assert (not b!7633669))

(assert (not b!7633660))

(assert tp_is_empty!51147)

(assert (not b!7633662))

(assert (not start!735034))

(assert (not b!7633668))

(assert (not b!7633663))

(assert (not b!7633666))

(assert (not b!7633667))

(assert (not b!7633670))

(assert (not b!7633664))

(assert (not b!7633665))

(assert (not b!7633671))

(assert (not b!7633673))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2324426 () Bool)

(declare-fun res!3057268 () Bool)

(declare-fun e!4538175 () Bool)

(assert (=> d!2324426 (=> res!3057268 e!4538175)))

(assert (=> d!2324426 (= res!3057268 (is-ElementMatch!20396 r!14126))))

(assert (=> d!2324426 (= (validRegex!10814 r!14126) e!4538175)))

(declare-fun b!7633762 () Bool)

(declare-fun e!4538177 () Bool)

(declare-fun e!4538176 () Bool)

(assert (=> b!7633762 (= e!4538177 e!4538176)))

(declare-fun res!3057266 () Bool)

(declare-fun nullable!8923 (Regex!20396) Bool)

(assert (=> b!7633762 (= res!3057266 (not (nullable!8923 (reg!20725 r!14126))))))

(assert (=> b!7633762 (=> (not res!3057266) (not e!4538176))))

(declare-fun c!1406287 () Bool)

(declare-fun bm!700744 () Bool)

(declare-fun c!1406288 () Bool)

(declare-fun call!700749 () Bool)

(assert (=> bm!700744 (= call!700749 (validRegex!10814 (ite c!1406288 (reg!20725 r!14126) (ite c!1406287 (regTwo!41305 r!14126) (regTwo!41304 r!14126)))))))

(declare-fun b!7633763 () Bool)

(assert (=> b!7633763 (= e!4538175 e!4538177)))

(assert (=> b!7633763 (= c!1406288 (is-Star!20396 r!14126))))

(declare-fun b!7633764 () Bool)

(declare-fun e!4538178 () Bool)

(declare-fun e!4538174 () Bool)

(assert (=> b!7633764 (= e!4538178 e!4538174)))

(declare-fun res!3057267 () Bool)

(assert (=> b!7633764 (=> (not res!3057267) (not e!4538174))))

(declare-fun call!700750 () Bool)

(assert (=> b!7633764 (= res!3057267 call!700750)))

(declare-fun b!7633765 () Bool)

(assert (=> b!7633765 (= e!4538176 call!700749)))

(declare-fun b!7633766 () Bool)

(declare-fun call!700751 () Bool)

(assert (=> b!7633766 (= e!4538174 call!700751)))

(declare-fun bm!700745 () Bool)

(assert (=> bm!700745 (= call!700751 call!700749)))

(declare-fun b!7633767 () Bool)

(declare-fun e!4538173 () Bool)

(assert (=> b!7633767 (= e!4538177 e!4538173)))

(assert (=> b!7633767 (= c!1406287 (is-Union!20396 r!14126))))

(declare-fun b!7633768 () Bool)

(declare-fun res!3057269 () Bool)

(assert (=> b!7633768 (=> res!3057269 e!4538178)))

(assert (=> b!7633768 (= res!3057269 (not (is-Concat!29241 r!14126)))))

(assert (=> b!7633768 (= e!4538173 e!4538178)))

(declare-fun bm!700746 () Bool)

(assert (=> bm!700746 (= call!700750 (validRegex!10814 (ite c!1406287 (regOne!41305 r!14126) (regOne!41304 r!14126))))))

(declare-fun b!7633769 () Bool)

(declare-fun e!4538172 () Bool)

(assert (=> b!7633769 (= e!4538172 call!700751)))

(declare-fun b!7633770 () Bool)

(declare-fun res!3057265 () Bool)

(assert (=> b!7633770 (=> (not res!3057265) (not e!4538172))))

(assert (=> b!7633770 (= res!3057265 call!700750)))

(assert (=> b!7633770 (= e!4538173 e!4538172)))

(assert (= (and d!2324426 (not res!3057268)) b!7633763))

(assert (= (and b!7633763 c!1406288) b!7633762))

(assert (= (and b!7633763 (not c!1406288)) b!7633767))

(assert (= (and b!7633762 res!3057266) b!7633765))

(assert (= (and b!7633767 c!1406287) b!7633770))

(assert (= (and b!7633767 (not c!1406287)) b!7633768))

(assert (= (and b!7633770 res!3057265) b!7633769))

(assert (= (and b!7633768 (not res!3057269)) b!7633764))

(assert (= (and b!7633764 res!3057267) b!7633766))

(assert (= (or b!7633770 b!7633764) bm!700746))

(assert (= (or b!7633769 b!7633766) bm!700745))

(assert (= (or b!7633765 bm!700745) bm!700744))

(declare-fun m!8159414 () Bool)

(assert (=> b!7633762 m!8159414))

(declare-fun m!8159416 () Bool)

(assert (=> bm!700744 m!8159416))

(declare-fun m!8159418 () Bool)

(assert (=> bm!700746 m!8159418))

(assert (=> start!735034 d!2324426))

(declare-fun d!2324428 () Bool)

(assert (=> d!2324428 (= (get!25859 lt!2659192) (v!54603 lt!2659192))))

(assert (=> b!7633669 d!2324428))

(declare-fun d!2324430 () Bool)

(assert (=> d!2324430 (matchR!9899 (Concat!29241 (regOne!41304 r!14126) (regTwo!41304 r!14126)) (++!17676 (_1!37978 lt!2659193) (_2!37978 lt!2659193)))))

(declare-fun lt!2659217 () Unit!167736)

(declare-fun choose!58935 (Regex!20396 Regex!20396 List!73247 List!73247 List!73247) Unit!167736)

(assert (=> d!2324430 (= lt!2659217 (choose!58935 (regOne!41304 r!14126) (regTwo!41304 r!14126) (_1!37978 lt!2659193) (_2!37978 lt!2659193) s!9605))))

(assert (=> d!2324430 (validRegex!10814 (regOne!41304 r!14126))))

(assert (=> d!2324430 (= (lemmaFindSeparationIsDefinedThenConcatMatches!153 (regOne!41304 r!14126) (regTwo!41304 r!14126) (_1!37978 lt!2659193) (_2!37978 lt!2659193) s!9605) lt!2659217)))

(declare-fun bs!1944115 () Bool)

(assert (= bs!1944115 d!2324430))

(assert (=> bs!1944115 m!8159366))

(assert (=> bs!1944115 m!8159366))

(declare-fun m!8159420 () Bool)

(assert (=> bs!1944115 m!8159420))

(declare-fun m!8159422 () Bool)

(assert (=> bs!1944115 m!8159422))

(assert (=> bs!1944115 m!8159372))

(assert (=> b!7633669 d!2324430))

(declare-fun bm!700749 () Bool)

(declare-fun call!700754 () Bool)

(declare-fun isEmpty!41758 (List!73247) Bool)

(assert (=> bm!700749 (= call!700754 (isEmpty!41758 (++!17676 (_1!37978 lt!2659193) (_2!37978 lt!2659193))))))

(declare-fun b!7633805 () Bool)

(declare-fun res!3057295 () Bool)

(declare-fun e!4538202 () Bool)

(assert (=> b!7633805 (=> (not res!3057295) (not e!4538202))))

(declare-fun tail!15236 (List!73247) List!73247)

(assert (=> b!7633805 (= res!3057295 (isEmpty!41758 (tail!15236 (++!17676 (_1!37978 lt!2659193) (_2!37978 lt!2659193)))))))

(declare-fun b!7633807 () Bool)

(declare-fun res!3057289 () Bool)

(declare-fun e!4538201 () Bool)

(assert (=> b!7633807 (=> res!3057289 e!4538201)))

(assert (=> b!7633807 (= res!3057289 e!4538202)))

(declare-fun res!3057293 () Bool)

(assert (=> b!7633807 (=> (not res!3057293) (not e!4538202))))

(declare-fun lt!2659222 () Bool)

(assert (=> b!7633807 (= res!3057293 lt!2659222)))

(declare-fun b!7633808 () Bool)

(declare-fun res!3057290 () Bool)

(assert (=> b!7633808 (=> (not res!3057290) (not e!4538202))))

(assert (=> b!7633808 (= res!3057290 (not call!700754))))

(declare-fun b!7633809 () Bool)

(declare-fun e!4538198 () Bool)

(assert (=> b!7633809 (= e!4538198 (= lt!2659222 call!700754))))

(declare-fun b!7633810 () Bool)

(declare-fun e!4538200 () Bool)

(declare-fun e!4538197 () Bool)

(assert (=> b!7633810 (= e!4538200 e!4538197)))

(declare-fun res!3057297 () Bool)

(assert (=> b!7633810 (=> res!3057297 e!4538197)))

(assert (=> b!7633810 (= res!3057297 call!700754)))

(declare-fun b!7633811 () Bool)

(declare-fun res!3057288 () Bool)

(assert (=> b!7633811 (=> res!3057288 e!4538197)))

(assert (=> b!7633811 (= res!3057288 (not (isEmpty!41758 (tail!15236 (++!17676 (_1!37978 lt!2659193) (_2!37978 lt!2659193))))))))

(declare-fun b!7633812 () Bool)

(declare-fun e!4538199 () Bool)

(assert (=> b!7633812 (= e!4538199 (not lt!2659222))))

(declare-fun d!2324432 () Bool)

(assert (=> d!2324432 e!4538198))

(declare-fun c!1406298 () Bool)

(assert (=> d!2324432 (= c!1406298 (is-EmptyExpr!20396 r!14126))))

(declare-fun e!4538203 () Bool)

(assert (=> d!2324432 (= lt!2659222 e!4538203)))

(declare-fun c!1406297 () Bool)

(assert (=> d!2324432 (= c!1406297 (isEmpty!41758 (++!17676 (_1!37978 lt!2659193) (_2!37978 lt!2659193))))))

(assert (=> d!2324432 (validRegex!10814 r!14126)))

(assert (=> d!2324432 (= (matchR!9899 r!14126 (++!17676 (_1!37978 lt!2659193) (_2!37978 lt!2659193))) lt!2659222)))

(declare-fun b!7633806 () Bool)

(declare-fun head!15696 (List!73247) C!41118)

(assert (=> b!7633806 (= e!4538197 (not (= (head!15696 (++!17676 (_1!37978 lt!2659193) (_2!37978 lt!2659193))) (c!1406278 r!14126))))))

(declare-fun b!7633813 () Bool)

(assert (=> b!7633813 (= e!4538203 (nullable!8923 r!14126))))

(declare-fun b!7633814 () Bool)

(assert (=> b!7633814 (= e!4538198 e!4538199)))

(declare-fun c!1406299 () Bool)

(assert (=> b!7633814 (= c!1406299 (is-EmptyLang!20396 r!14126))))

(declare-fun b!7633815 () Bool)

(declare-fun derivativeStep!5896 (Regex!20396 C!41118) Regex!20396)

(assert (=> b!7633815 (= e!4538203 (matchR!9899 (derivativeStep!5896 r!14126 (head!15696 (++!17676 (_1!37978 lt!2659193) (_2!37978 lt!2659193)))) (tail!15236 (++!17676 (_1!37978 lt!2659193) (_2!37978 lt!2659193)))))))

(declare-fun b!7633816 () Bool)

(declare-fun res!3057294 () Bool)

(assert (=> b!7633816 (=> res!3057294 e!4538201)))

(assert (=> b!7633816 (= res!3057294 (not (is-ElementMatch!20396 r!14126)))))

(assert (=> b!7633816 (= e!4538199 e!4538201)))

(declare-fun b!7633817 () Bool)

(assert (=> b!7633817 (= e!4538201 e!4538200)))

(declare-fun res!3057296 () Bool)

(assert (=> b!7633817 (=> (not res!3057296) (not e!4538200))))

(assert (=> b!7633817 (= res!3057296 (not lt!2659222))))

(declare-fun b!7633818 () Bool)

(assert (=> b!7633818 (= e!4538202 (= (head!15696 (++!17676 (_1!37978 lt!2659193) (_2!37978 lt!2659193))) (c!1406278 r!14126)))))

(assert (= (and d!2324432 c!1406297) b!7633813))

(assert (= (and d!2324432 (not c!1406297)) b!7633815))

(assert (= (and d!2324432 c!1406298) b!7633809))

(assert (= (and d!2324432 (not c!1406298)) b!7633814))

(assert (= (and b!7633814 c!1406299) b!7633812))

(assert (= (and b!7633814 (not c!1406299)) b!7633816))

(assert (= (and b!7633816 (not res!3057294)) b!7633807))

(assert (= (and b!7633807 res!3057293) b!7633808))

(assert (= (and b!7633808 res!3057290) b!7633805))

(assert (= (and b!7633805 res!3057295) b!7633818))

(assert (= (and b!7633807 (not res!3057289)) b!7633817))

(assert (= (and b!7633817 res!3057296) b!7633810))

(assert (= (and b!7633810 (not res!3057297)) b!7633811))

(assert (= (and b!7633811 (not res!3057288)) b!7633806))

(assert (= (or b!7633809 b!7633808 b!7633810) bm!700749))

(assert (=> b!7633815 m!8159366))

(declare-fun m!8159424 () Bool)

(assert (=> b!7633815 m!8159424))

(assert (=> b!7633815 m!8159424))

(declare-fun m!8159426 () Bool)

(assert (=> b!7633815 m!8159426))

(assert (=> b!7633815 m!8159366))

(declare-fun m!8159428 () Bool)

(assert (=> b!7633815 m!8159428))

(assert (=> b!7633815 m!8159426))

(assert (=> b!7633815 m!8159428))

(declare-fun m!8159430 () Bool)

(assert (=> b!7633815 m!8159430))

(assert (=> bm!700749 m!8159366))

(declare-fun m!8159432 () Bool)

(assert (=> bm!700749 m!8159432))

(assert (=> b!7633811 m!8159366))

(assert (=> b!7633811 m!8159428))

(assert (=> b!7633811 m!8159428))

(declare-fun m!8159434 () Bool)

(assert (=> b!7633811 m!8159434))

(assert (=> b!7633805 m!8159366))

(assert (=> b!7633805 m!8159428))

(assert (=> b!7633805 m!8159428))

(assert (=> b!7633805 m!8159434))

(assert (=> d!2324432 m!8159366))

(assert (=> d!2324432 m!8159432))

(assert (=> d!2324432 m!8159374))

(assert (=> b!7633818 m!8159366))

(assert (=> b!7633818 m!8159424))

(declare-fun m!8159436 () Bool)

(assert (=> b!7633813 m!8159436))

(assert (=> b!7633806 m!8159366))

(assert (=> b!7633806 m!8159424))

(assert (=> b!7633669 d!2324432))

(declare-fun d!2324436 () Bool)

(declare-fun e!4538210 () Bool)

(assert (=> d!2324436 e!4538210))

(declare-fun res!3057305 () Bool)

(assert (=> d!2324436 (=> (not res!3057305) (not e!4538210))))

(declare-fun lt!2659226 () List!73247)

(declare-fun content!15479 (List!73247) (Set C!41118))

(assert (=> d!2324436 (= res!3057305 (= (content!15479 lt!2659226) (set.union (content!15479 (_1!37978 lt!2659193)) (content!15479 (_2!37978 lt!2659193)))))))

(declare-fun e!4538211 () List!73247)

(assert (=> d!2324436 (= lt!2659226 e!4538211)))

(declare-fun c!1406303 () Bool)

(assert (=> d!2324436 (= c!1406303 (is-Nil!73123 (_1!37978 lt!2659193)))))

(assert (=> d!2324436 (= (++!17676 (_1!37978 lt!2659193) (_2!37978 lt!2659193)) lt!2659226)))

(declare-fun b!7633835 () Bool)

(declare-fun res!3057304 () Bool)

(assert (=> b!7633835 (=> (not res!3057304) (not e!4538210))))

(declare-fun size!42572 (List!73247) Int)

(assert (=> b!7633835 (= res!3057304 (= (size!42572 lt!2659226) (+ (size!42572 (_1!37978 lt!2659193)) (size!42572 (_2!37978 lt!2659193)))))))

(declare-fun b!7633836 () Bool)

(assert (=> b!7633836 (= e!4538210 (or (not (= (_2!37978 lt!2659193) Nil!73123)) (= lt!2659226 (_1!37978 lt!2659193))))))

(declare-fun b!7633834 () Bool)

(assert (=> b!7633834 (= e!4538211 (Cons!73123 (h!79571 (_1!37978 lt!2659193)) (++!17676 (t!387982 (_1!37978 lt!2659193)) (_2!37978 lt!2659193))))))

(declare-fun b!7633833 () Bool)

(assert (=> b!7633833 (= e!4538211 (_2!37978 lt!2659193))))

(assert (= (and d!2324436 c!1406303) b!7633833))

(assert (= (and d!2324436 (not c!1406303)) b!7633834))

(assert (= (and d!2324436 res!3057305) b!7633835))

(assert (= (and b!7633835 res!3057304) b!7633836))

(declare-fun m!8159452 () Bool)

(assert (=> d!2324436 m!8159452))

(declare-fun m!8159454 () Bool)

(assert (=> d!2324436 m!8159454))

(declare-fun m!8159456 () Bool)

(assert (=> d!2324436 m!8159456))

(declare-fun m!8159458 () Bool)

(assert (=> b!7633835 m!8159458))

(declare-fun m!8159460 () Bool)

(assert (=> b!7633835 m!8159460))

(declare-fun m!8159462 () Bool)

(assert (=> b!7633835 m!8159462))

(declare-fun m!8159464 () Bool)

(assert (=> b!7633834 m!8159464))

(assert (=> b!7633669 d!2324436))

(declare-fun d!2324442 () Bool)

(declare-fun res!3057309 () Bool)

(declare-fun e!4538215 () Bool)

(assert (=> d!2324442 (=> res!3057309 e!4538215)))

(assert (=> d!2324442 (= res!3057309 (is-ElementMatch!20396 (regOne!41304 r!14126)))))

(assert (=> d!2324442 (= (validRegex!10814 (regOne!41304 r!14126)) e!4538215)))

(declare-fun b!7633837 () Bool)

(declare-fun e!4538217 () Bool)

(declare-fun e!4538216 () Bool)

(assert (=> b!7633837 (= e!4538217 e!4538216)))

(declare-fun res!3057307 () Bool)

(assert (=> b!7633837 (= res!3057307 (not (nullable!8923 (reg!20725 (regOne!41304 r!14126)))))))

(assert (=> b!7633837 (=> (not res!3057307) (not e!4538216))))

(declare-fun bm!700750 () Bool)

(declare-fun call!700755 () Bool)

(declare-fun c!1406304 () Bool)

(declare-fun c!1406305 () Bool)

(assert (=> bm!700750 (= call!700755 (validRegex!10814 (ite c!1406305 (reg!20725 (regOne!41304 r!14126)) (ite c!1406304 (regTwo!41305 (regOne!41304 r!14126)) (regTwo!41304 (regOne!41304 r!14126))))))))

(declare-fun b!7633838 () Bool)

(assert (=> b!7633838 (= e!4538215 e!4538217)))

(assert (=> b!7633838 (= c!1406305 (is-Star!20396 (regOne!41304 r!14126)))))

(declare-fun b!7633839 () Bool)

(declare-fun e!4538218 () Bool)

(declare-fun e!4538214 () Bool)

(assert (=> b!7633839 (= e!4538218 e!4538214)))

(declare-fun res!3057308 () Bool)

(assert (=> b!7633839 (=> (not res!3057308) (not e!4538214))))

(declare-fun call!700756 () Bool)

(assert (=> b!7633839 (= res!3057308 call!700756)))

(declare-fun b!7633840 () Bool)

(assert (=> b!7633840 (= e!4538216 call!700755)))

(declare-fun b!7633841 () Bool)

(declare-fun call!700757 () Bool)

(assert (=> b!7633841 (= e!4538214 call!700757)))

(declare-fun bm!700751 () Bool)

(assert (=> bm!700751 (= call!700757 call!700755)))

(declare-fun b!7633842 () Bool)

(declare-fun e!4538213 () Bool)

(assert (=> b!7633842 (= e!4538217 e!4538213)))

(assert (=> b!7633842 (= c!1406304 (is-Union!20396 (regOne!41304 r!14126)))))

(declare-fun b!7633843 () Bool)

(declare-fun res!3057310 () Bool)

(assert (=> b!7633843 (=> res!3057310 e!4538218)))

(assert (=> b!7633843 (= res!3057310 (not (is-Concat!29241 (regOne!41304 r!14126))))))

(assert (=> b!7633843 (= e!4538213 e!4538218)))

(declare-fun bm!700752 () Bool)

(assert (=> bm!700752 (= call!700756 (validRegex!10814 (ite c!1406304 (regOne!41305 (regOne!41304 r!14126)) (regOne!41304 (regOne!41304 r!14126)))))))

(declare-fun b!7633844 () Bool)

(declare-fun e!4538212 () Bool)

(assert (=> b!7633844 (= e!4538212 call!700757)))

(declare-fun b!7633845 () Bool)

(declare-fun res!3057306 () Bool)

(assert (=> b!7633845 (=> (not res!3057306) (not e!4538212))))

(assert (=> b!7633845 (= res!3057306 call!700756)))

(assert (=> b!7633845 (= e!4538213 e!4538212)))

(assert (= (and d!2324442 (not res!3057309)) b!7633838))

(assert (= (and b!7633838 c!1406305) b!7633837))

(assert (= (and b!7633838 (not c!1406305)) b!7633842))

(assert (= (and b!7633837 res!3057307) b!7633840))

(assert (= (and b!7633842 c!1406304) b!7633845))

(assert (= (and b!7633842 (not c!1406304)) b!7633843))

(assert (= (and b!7633845 res!3057306) b!7633844))

(assert (= (and b!7633843 (not res!3057310)) b!7633839))

(assert (= (and b!7633839 res!3057308) b!7633841))

(assert (= (or b!7633845 b!7633839) bm!700752))

(assert (= (or b!7633844 b!7633841) bm!700751))

(assert (= (or b!7633840 bm!700751) bm!700750))

(declare-fun m!8159466 () Bool)

(assert (=> b!7633837 m!8159466))

(declare-fun m!8159468 () Bool)

(assert (=> bm!700750 m!8159468))

(declare-fun m!8159470 () Bool)

(assert (=> bm!700752 m!8159470))

(assert (=> b!7633671 d!2324442))

(declare-fun bm!700753 () Bool)

(declare-fun call!700758 () Bool)

(assert (=> bm!700753 (= call!700758 (isEmpty!41758 s!9605))))

(declare-fun b!7633846 () Bool)

(declare-fun res!3057316 () Bool)

(declare-fun e!4538224 () Bool)

(assert (=> b!7633846 (=> (not res!3057316) (not e!4538224))))

(assert (=> b!7633846 (= res!3057316 (isEmpty!41758 (tail!15236 s!9605)))))

(declare-fun b!7633848 () Bool)

(declare-fun res!3057312 () Bool)

(declare-fun e!4538223 () Bool)

(assert (=> b!7633848 (=> res!3057312 e!4538223)))

(assert (=> b!7633848 (= res!3057312 e!4538224)))

(declare-fun res!3057314 () Bool)

(assert (=> b!7633848 (=> (not res!3057314) (not e!4538224))))

(declare-fun lt!2659227 () Bool)

(assert (=> b!7633848 (= res!3057314 lt!2659227)))

(declare-fun b!7633849 () Bool)

(declare-fun res!3057313 () Bool)

(assert (=> b!7633849 (=> (not res!3057313) (not e!4538224))))

(assert (=> b!7633849 (= res!3057313 (not call!700758))))

(declare-fun b!7633850 () Bool)

(declare-fun e!4538220 () Bool)

(assert (=> b!7633850 (= e!4538220 (= lt!2659227 call!700758))))

(declare-fun b!7633851 () Bool)

(declare-fun e!4538222 () Bool)

(declare-fun e!4538219 () Bool)

(assert (=> b!7633851 (= e!4538222 e!4538219)))

(declare-fun res!3057318 () Bool)

(assert (=> b!7633851 (=> res!3057318 e!4538219)))

(assert (=> b!7633851 (= res!3057318 call!700758)))

(declare-fun b!7633852 () Bool)

(declare-fun res!3057311 () Bool)

(assert (=> b!7633852 (=> res!3057311 e!4538219)))

(assert (=> b!7633852 (= res!3057311 (not (isEmpty!41758 (tail!15236 s!9605))))))

(declare-fun b!7633853 () Bool)

(declare-fun e!4538221 () Bool)

(assert (=> b!7633853 (= e!4538221 (not lt!2659227))))

(declare-fun d!2324444 () Bool)

(assert (=> d!2324444 e!4538220))

(declare-fun c!1406307 () Bool)

(assert (=> d!2324444 (= c!1406307 (is-EmptyExpr!20396 r!14126))))

(declare-fun e!4538225 () Bool)

(assert (=> d!2324444 (= lt!2659227 e!4538225)))

(declare-fun c!1406306 () Bool)

(assert (=> d!2324444 (= c!1406306 (isEmpty!41758 s!9605))))

(assert (=> d!2324444 (validRegex!10814 r!14126)))

(assert (=> d!2324444 (= (matchR!9899 r!14126 s!9605) lt!2659227)))

(declare-fun b!7633847 () Bool)

(assert (=> b!7633847 (= e!4538219 (not (= (head!15696 s!9605) (c!1406278 r!14126))))))

(declare-fun b!7633854 () Bool)

(assert (=> b!7633854 (= e!4538225 (nullable!8923 r!14126))))

(declare-fun b!7633855 () Bool)

(assert (=> b!7633855 (= e!4538220 e!4538221)))

(declare-fun c!1406308 () Bool)

(assert (=> b!7633855 (= c!1406308 (is-EmptyLang!20396 r!14126))))

(declare-fun b!7633856 () Bool)

(assert (=> b!7633856 (= e!4538225 (matchR!9899 (derivativeStep!5896 r!14126 (head!15696 s!9605)) (tail!15236 s!9605)))))

(declare-fun b!7633857 () Bool)

(declare-fun res!3057315 () Bool)

(assert (=> b!7633857 (=> res!3057315 e!4538223)))

(assert (=> b!7633857 (= res!3057315 (not (is-ElementMatch!20396 r!14126)))))

(assert (=> b!7633857 (= e!4538221 e!4538223)))

(declare-fun b!7633858 () Bool)

(assert (=> b!7633858 (= e!4538223 e!4538222)))

(declare-fun res!3057317 () Bool)

(assert (=> b!7633858 (=> (not res!3057317) (not e!4538222))))

(assert (=> b!7633858 (= res!3057317 (not lt!2659227))))

(declare-fun b!7633859 () Bool)

(assert (=> b!7633859 (= e!4538224 (= (head!15696 s!9605) (c!1406278 r!14126)))))

(assert (= (and d!2324444 c!1406306) b!7633854))

(assert (= (and d!2324444 (not c!1406306)) b!7633856))

(assert (= (and d!2324444 c!1406307) b!7633850))

(assert (= (and d!2324444 (not c!1406307)) b!7633855))

(assert (= (and b!7633855 c!1406308) b!7633853))

(assert (= (and b!7633855 (not c!1406308)) b!7633857))

(assert (= (and b!7633857 (not res!3057315)) b!7633848))

(assert (= (and b!7633848 res!3057314) b!7633849))

(assert (= (and b!7633849 res!3057313) b!7633846))

(assert (= (and b!7633846 res!3057316) b!7633859))

(assert (= (and b!7633848 (not res!3057312)) b!7633858))

(assert (= (and b!7633858 res!3057317) b!7633851))

(assert (= (and b!7633851 (not res!3057318)) b!7633852))

(assert (= (and b!7633852 (not res!3057311)) b!7633847))

(assert (= (or b!7633850 b!7633849 b!7633851) bm!700753))

(declare-fun m!8159472 () Bool)

(assert (=> b!7633856 m!8159472))

(assert (=> b!7633856 m!8159472))

(declare-fun m!8159474 () Bool)

(assert (=> b!7633856 m!8159474))

(declare-fun m!8159476 () Bool)

(assert (=> b!7633856 m!8159476))

(assert (=> b!7633856 m!8159474))

(assert (=> b!7633856 m!8159476))

(declare-fun m!8159478 () Bool)

(assert (=> b!7633856 m!8159478))

(declare-fun m!8159480 () Bool)

(assert (=> bm!700753 m!8159480))

(assert (=> b!7633852 m!8159476))

(assert (=> b!7633852 m!8159476))

(declare-fun m!8159482 () Bool)

(assert (=> b!7633852 m!8159482))

(assert (=> b!7633846 m!8159476))

(assert (=> b!7633846 m!8159476))

(assert (=> b!7633846 m!8159482))

(assert (=> d!2324444 m!8159480))

(assert (=> d!2324444 m!8159374))

(assert (=> b!7633859 m!8159472))

(assert (=> b!7633854 m!8159436))

(assert (=> b!7633847 m!8159472))

(assert (=> b!7633666 d!2324444))

(declare-fun bs!1944117 () Bool)

(declare-fun d!2324446 () Bool)

(assert (= bs!1944117 (and d!2324446 b!7633666)))

(declare-fun lambda!469204 () Int)

(assert (=> bs!1944117 (= lambda!469204 lambda!469192)))

(declare-fun bs!1944118 () Bool)

(assert (= bs!1944118 (and d!2324446 b!7633660)))

(assert (=> bs!1944118 (not (= lambda!469204 lambda!469193))))

(assert (=> d!2324446 true))

(assert (=> d!2324446 true))

(assert (=> d!2324446 true))

(assert (=> d!2324446 (= (isDefined!14085 (findConcatSeparation!3499 (regOne!41304 r!14126) (regTwo!41304 r!14126) Nil!73123 s!9605 s!9605)) (Exists!4550 lambda!469204))))

(declare-fun lt!2659233 () Unit!167736)

(declare-fun choose!58936 (Regex!20396 Regex!20396 List!73247) Unit!167736)

(assert (=> d!2324446 (= lt!2659233 (choose!58936 (regOne!41304 r!14126) (regTwo!41304 r!14126) s!9605))))

(assert (=> d!2324446 (validRegex!10814 (regOne!41304 r!14126))))

(assert (=> d!2324446 (= (lemmaFindConcatSeparationEquivalentToExists!3257 (regOne!41304 r!14126) (regTwo!41304 r!14126) s!9605) lt!2659233)))

(declare-fun bs!1944119 () Bool)

(assert (= bs!1944119 d!2324446))

(assert (=> bs!1944119 m!8159378))

(declare-fun m!8159488 () Bool)

(assert (=> bs!1944119 m!8159488))

(assert (=> bs!1944119 m!8159378))

(declare-fun m!8159490 () Bool)

(assert (=> bs!1944119 m!8159490))

(assert (=> bs!1944119 m!8159372))

(declare-fun m!8159492 () Bool)

(assert (=> bs!1944119 m!8159492))

(assert (=> b!7633666 d!2324446))

(declare-fun d!2324450 () Bool)

(declare-fun isEmpty!41759 (Option!17469) Bool)

(assert (=> d!2324450 (= (isDefined!14085 lt!2659192) (not (isEmpty!41759 lt!2659192)))))

(declare-fun bs!1944120 () Bool)

(assert (= bs!1944120 d!2324450))

(declare-fun m!8159494 () Bool)

(assert (=> bs!1944120 m!8159494))

(assert (=> b!7633666 d!2324450))

(declare-fun b!7633910 () Bool)

(declare-fun res!3057349 () Bool)

(declare-fun e!4538252 () Bool)

(assert (=> b!7633910 (=> (not res!3057349) (not e!4538252))))

(declare-fun lt!2659242 () Option!17469)

(assert (=> b!7633910 (= res!3057349 (matchR!9899 (regTwo!41304 r!14126) (_2!37978 (get!25859 lt!2659242))))))

(declare-fun b!7633911 () Bool)

(declare-fun e!4538256 () Option!17469)

(assert (=> b!7633911 (= e!4538256 None!17468)))

(declare-fun b!7633912 () Bool)

(assert (=> b!7633912 (= e!4538252 (= (++!17676 (_1!37978 (get!25859 lt!2659242)) (_2!37978 (get!25859 lt!2659242))) s!9605))))

(declare-fun b!7633913 () Bool)

(declare-fun e!4538254 () Option!17469)

(assert (=> b!7633913 (= e!4538254 e!4538256)))

(declare-fun c!1406320 () Bool)

(assert (=> b!7633913 (= c!1406320 (is-Nil!73123 s!9605))))

(declare-fun d!2324452 () Bool)

(declare-fun e!4538253 () Bool)

(assert (=> d!2324452 e!4538253))

(declare-fun res!3057353 () Bool)

(assert (=> d!2324452 (=> res!3057353 e!4538253)))

(assert (=> d!2324452 (= res!3057353 e!4538252)))

(declare-fun res!3057352 () Bool)

(assert (=> d!2324452 (=> (not res!3057352) (not e!4538252))))

(assert (=> d!2324452 (= res!3057352 (isDefined!14085 lt!2659242))))

(assert (=> d!2324452 (= lt!2659242 e!4538254)))

(declare-fun c!1406319 () Bool)

(declare-fun e!4538255 () Bool)

(assert (=> d!2324452 (= c!1406319 e!4538255)))

(declare-fun res!3057351 () Bool)

(assert (=> d!2324452 (=> (not res!3057351) (not e!4538255))))

(assert (=> d!2324452 (= res!3057351 (matchR!9899 (regOne!41304 r!14126) Nil!73123))))

(assert (=> d!2324452 (validRegex!10814 (regOne!41304 r!14126))))

(assert (=> d!2324452 (= (findConcatSeparation!3499 (regOne!41304 r!14126) (regTwo!41304 r!14126) Nil!73123 s!9605 s!9605) lt!2659242)))

(declare-fun b!7633914 () Bool)

(assert (=> b!7633914 (= e!4538255 (matchR!9899 (regTwo!41304 r!14126) s!9605))))

(declare-fun b!7633915 () Bool)

(declare-fun res!3057350 () Bool)

(assert (=> b!7633915 (=> (not res!3057350) (not e!4538252))))

(assert (=> b!7633915 (= res!3057350 (matchR!9899 (regOne!41304 r!14126) (_1!37978 (get!25859 lt!2659242))))))

(declare-fun b!7633916 () Bool)

(assert (=> b!7633916 (= e!4538254 (Some!17468 (tuple2!69351 Nil!73123 s!9605)))))

(declare-fun b!7633917 () Bool)

(declare-fun lt!2659243 () Unit!167736)

(declare-fun lt!2659244 () Unit!167736)

(assert (=> b!7633917 (= lt!2659243 lt!2659244)))

(assert (=> b!7633917 (= (++!17676 (++!17676 Nil!73123 (Cons!73123 (h!79571 s!9605) Nil!73123)) (t!387982 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3250 (List!73247 C!41118 List!73247 List!73247) Unit!167736)

(assert (=> b!7633917 (= lt!2659244 (lemmaMoveElementToOtherListKeepsConcatEq!3250 Nil!73123 (h!79571 s!9605) (t!387982 s!9605) s!9605))))

(assert (=> b!7633917 (= e!4538256 (findConcatSeparation!3499 (regOne!41304 r!14126) (regTwo!41304 r!14126) (++!17676 Nil!73123 (Cons!73123 (h!79571 s!9605) Nil!73123)) (t!387982 s!9605) s!9605))))

(declare-fun b!7633918 () Bool)

(assert (=> b!7633918 (= e!4538253 (not (isDefined!14085 lt!2659242)))))

(assert (= (and d!2324452 res!3057351) b!7633914))

(assert (= (and d!2324452 c!1406319) b!7633916))

(assert (= (and d!2324452 (not c!1406319)) b!7633913))

(assert (= (and b!7633913 c!1406320) b!7633911))

(assert (= (and b!7633913 (not c!1406320)) b!7633917))

(assert (= (and d!2324452 res!3057352) b!7633915))

(assert (= (and b!7633915 res!3057350) b!7633910))

(assert (= (and b!7633910 res!3057349) b!7633912))

(assert (= (and d!2324452 (not res!3057353)) b!7633918))

(declare-fun m!8159496 () Bool)

(assert (=> b!7633910 m!8159496))

(declare-fun m!8159498 () Bool)

(assert (=> b!7633910 m!8159498))

(declare-fun m!8159500 () Bool)

(assert (=> b!7633917 m!8159500))

(assert (=> b!7633917 m!8159500))

(declare-fun m!8159502 () Bool)

(assert (=> b!7633917 m!8159502))

(declare-fun m!8159504 () Bool)

(assert (=> b!7633917 m!8159504))

(assert (=> b!7633917 m!8159500))

(declare-fun m!8159506 () Bool)

(assert (=> b!7633917 m!8159506))

(declare-fun m!8159508 () Bool)

(assert (=> b!7633918 m!8159508))

(assert (=> d!2324452 m!8159508))

(declare-fun m!8159510 () Bool)

(assert (=> d!2324452 m!8159510))

(assert (=> d!2324452 m!8159372))

(declare-fun m!8159512 () Bool)

(assert (=> b!7633914 m!8159512))

(assert (=> b!7633915 m!8159496))

(declare-fun m!8159514 () Bool)

(assert (=> b!7633915 m!8159514))

(assert (=> b!7633912 m!8159496))

(declare-fun m!8159516 () Bool)

(assert (=> b!7633912 m!8159516))

(assert (=> b!7633666 d!2324452))

(declare-fun d!2324454 () Bool)

(declare-fun choose!58937 (Int) Bool)

(assert (=> d!2324454 (= (Exists!4550 lambda!469192) (choose!58937 lambda!469192))))

(declare-fun bs!1944121 () Bool)

(assert (= bs!1944121 d!2324454))

(declare-fun m!8159518 () Bool)

(assert (=> bs!1944121 m!8159518))

(assert (=> b!7633666 d!2324454))

(declare-fun d!2324456 () Bool)

(assert (=> d!2324456 (= (Exists!4550 lambda!469193) (choose!58937 lambda!469193))))

(declare-fun bs!1944122 () Bool)

(assert (= bs!1944122 d!2324456))

(declare-fun m!8159520 () Bool)

(assert (=> bs!1944122 m!8159520))

(assert (=> b!7633660 d!2324456))

(assert (=> b!7633667 d!2324454))

(declare-fun d!2324458 () Bool)

(declare-fun e!4538257 () Bool)

(assert (=> d!2324458 e!4538257))

(declare-fun res!3057355 () Bool)

(assert (=> d!2324458 (=> (not res!3057355) (not e!4538257))))

(declare-fun lt!2659245 () List!73247)

(assert (=> d!2324458 (= res!3057355 (= (content!15479 lt!2659245) (set.union (content!15479 (_1!37978 cut!19)) (content!15479 (_2!37978 cut!19)))))))

(declare-fun e!4538258 () List!73247)

(assert (=> d!2324458 (= lt!2659245 e!4538258)))

(declare-fun c!1406321 () Bool)

(assert (=> d!2324458 (= c!1406321 (is-Nil!73123 (_1!37978 cut!19)))))

(assert (=> d!2324458 (= (++!17676 (_1!37978 cut!19) (_2!37978 cut!19)) lt!2659245)))

(declare-fun b!7633921 () Bool)

(declare-fun res!3057354 () Bool)

(assert (=> b!7633921 (=> (not res!3057354) (not e!4538257))))

(assert (=> b!7633921 (= res!3057354 (= (size!42572 lt!2659245) (+ (size!42572 (_1!37978 cut!19)) (size!42572 (_2!37978 cut!19)))))))

(declare-fun b!7633922 () Bool)

(assert (=> b!7633922 (= e!4538257 (or (not (= (_2!37978 cut!19) Nil!73123)) (= lt!2659245 (_1!37978 cut!19))))))

(declare-fun b!7633920 () Bool)

(assert (=> b!7633920 (= e!4538258 (Cons!73123 (h!79571 (_1!37978 cut!19)) (++!17676 (t!387982 (_1!37978 cut!19)) (_2!37978 cut!19))))))

(declare-fun b!7633919 () Bool)

(assert (=> b!7633919 (= e!4538258 (_2!37978 cut!19))))

(assert (= (and d!2324458 c!1406321) b!7633919))

(assert (= (and d!2324458 (not c!1406321)) b!7633920))

(assert (= (and d!2324458 res!3057355) b!7633921))

(assert (= (and b!7633921 res!3057354) b!7633922))

(declare-fun m!8159522 () Bool)

(assert (=> d!2324458 m!8159522))

(declare-fun m!8159524 () Bool)

(assert (=> d!2324458 m!8159524))

(declare-fun m!8159526 () Bool)

(assert (=> d!2324458 m!8159526))

(declare-fun m!8159528 () Bool)

(assert (=> b!7633921 m!8159528))

(declare-fun m!8159530 () Bool)

(assert (=> b!7633921 m!8159530))

(declare-fun m!8159532 () Bool)

(assert (=> b!7633921 m!8159532))

(declare-fun m!8159534 () Bool)

(assert (=> b!7633920 m!8159534))

(assert (=> b!7633673 d!2324458))

(declare-fun b!7633936 () Bool)

(declare-fun e!4538261 () Bool)

(declare-fun tp!2228630 () Bool)

(declare-fun tp!2228631 () Bool)

(assert (=> b!7633936 (= e!4538261 (and tp!2228630 tp!2228631))))

(declare-fun b!7633934 () Bool)

(declare-fun tp!2228628 () Bool)

(declare-fun tp!2228629 () Bool)

(assert (=> b!7633934 (= e!4538261 (and tp!2228628 tp!2228629))))

(declare-fun b!7633935 () Bool)

(declare-fun tp!2228632 () Bool)

(assert (=> b!7633935 (= e!4538261 tp!2228632)))

(assert (=> b!7633670 (= tp!2228588 e!4538261)))

(declare-fun b!7633933 () Bool)

(assert (=> b!7633933 (= e!4538261 tp_is_empty!51147)))

(assert (= (and b!7633670 (is-ElementMatch!20396 (reg!20725 r!14126))) b!7633933))

(assert (= (and b!7633670 (is-Concat!29241 (reg!20725 r!14126))) b!7633934))

(assert (= (and b!7633670 (is-Star!20396 (reg!20725 r!14126))) b!7633935))

(assert (= (and b!7633670 (is-Union!20396 (reg!20725 r!14126))) b!7633936))

(declare-fun b!7633940 () Bool)

(declare-fun e!4538262 () Bool)

(declare-fun tp!2228635 () Bool)

(declare-fun tp!2228636 () Bool)

(assert (=> b!7633940 (= e!4538262 (and tp!2228635 tp!2228636))))

(declare-fun b!7633938 () Bool)

(declare-fun tp!2228633 () Bool)

(declare-fun tp!2228634 () Bool)

(assert (=> b!7633938 (= e!4538262 (and tp!2228633 tp!2228634))))

(declare-fun b!7633939 () Bool)

(declare-fun tp!2228637 () Bool)

(assert (=> b!7633939 (= e!4538262 tp!2228637)))

(assert (=> b!7633664 (= tp!2228592 e!4538262)))

(declare-fun b!7633937 () Bool)

(assert (=> b!7633937 (= e!4538262 tp_is_empty!51147)))

(assert (= (and b!7633664 (is-ElementMatch!20396 (regOne!41305 r!14126))) b!7633937))

(assert (= (and b!7633664 (is-Concat!29241 (regOne!41305 r!14126))) b!7633938))

(assert (= (and b!7633664 (is-Star!20396 (regOne!41305 r!14126))) b!7633939))

(assert (= (and b!7633664 (is-Union!20396 (regOne!41305 r!14126))) b!7633940))

(declare-fun b!7633944 () Bool)

(declare-fun e!4538263 () Bool)

(declare-fun tp!2228640 () Bool)

(declare-fun tp!2228641 () Bool)

(assert (=> b!7633944 (= e!4538263 (and tp!2228640 tp!2228641))))

(declare-fun b!7633942 () Bool)

(declare-fun tp!2228638 () Bool)

(declare-fun tp!2228639 () Bool)

(assert (=> b!7633942 (= e!4538263 (and tp!2228638 tp!2228639))))

(declare-fun b!7633943 () Bool)

(declare-fun tp!2228642 () Bool)

(assert (=> b!7633943 (= e!4538263 tp!2228642)))

(assert (=> b!7633664 (= tp!2228586 e!4538263)))

(declare-fun b!7633941 () Bool)

(assert (=> b!7633941 (= e!4538263 tp_is_empty!51147)))

(assert (= (and b!7633664 (is-ElementMatch!20396 (regTwo!41305 r!14126))) b!7633941))

(assert (= (and b!7633664 (is-Concat!29241 (regTwo!41305 r!14126))) b!7633942))

(assert (= (and b!7633664 (is-Star!20396 (regTwo!41305 r!14126))) b!7633943))

(assert (= (and b!7633664 (is-Union!20396 (regTwo!41305 r!14126))) b!7633944))

(declare-fun b!7633949 () Bool)

(declare-fun e!4538266 () Bool)

(declare-fun tp!2228645 () Bool)

(assert (=> b!7633949 (= e!4538266 (and tp_is_empty!51147 tp!2228645))))

(assert (=> b!7633665 (= tp!2228587 e!4538266)))

(assert (= (and b!7633665 (is-Cons!73123 (t!387982 (_2!37978 cut!19)))) b!7633949))

(declare-fun b!7633950 () Bool)

(declare-fun e!4538267 () Bool)

(declare-fun tp!2228646 () Bool)

(assert (=> b!7633950 (= e!4538267 (and tp_is_empty!51147 tp!2228646))))

(assert (=> b!7633662 (= tp!2228593 e!4538267)))

(assert (= (and b!7633662 (is-Cons!73123 (t!387982 (_1!37978 cut!19)))) b!7633950))

(declare-fun b!7633951 () Bool)

(declare-fun e!4538268 () Bool)

(declare-fun tp!2228647 () Bool)

(assert (=> b!7633951 (= e!4538268 (and tp_is_empty!51147 tp!2228647))))

(assert (=> b!7633663 (= tp!2228591 e!4538268)))

(assert (= (and b!7633663 (is-Cons!73123 (t!387982 s!9605))) b!7633951))

(declare-fun b!7633955 () Bool)

(declare-fun e!4538269 () Bool)

(declare-fun tp!2228650 () Bool)

(declare-fun tp!2228651 () Bool)

(assert (=> b!7633955 (= e!4538269 (and tp!2228650 tp!2228651))))

(declare-fun b!7633953 () Bool)

(declare-fun tp!2228648 () Bool)

(declare-fun tp!2228649 () Bool)

(assert (=> b!7633953 (= e!4538269 (and tp!2228648 tp!2228649))))

(declare-fun b!7633954 () Bool)

(declare-fun tp!2228652 () Bool)

(assert (=> b!7633954 (= e!4538269 tp!2228652)))

(assert (=> b!7633668 (= tp!2228589 e!4538269)))

(declare-fun b!7633952 () Bool)

(assert (=> b!7633952 (= e!4538269 tp_is_empty!51147)))

(assert (= (and b!7633668 (is-ElementMatch!20396 (regOne!41304 r!14126))) b!7633952))

(assert (= (and b!7633668 (is-Concat!29241 (regOne!41304 r!14126))) b!7633953))

(assert (= (and b!7633668 (is-Star!20396 (regOne!41304 r!14126))) b!7633954))

(assert (= (and b!7633668 (is-Union!20396 (regOne!41304 r!14126))) b!7633955))

(declare-fun b!7633959 () Bool)

(declare-fun e!4538270 () Bool)

(declare-fun tp!2228655 () Bool)

(declare-fun tp!2228656 () Bool)

(assert (=> b!7633959 (= e!4538270 (and tp!2228655 tp!2228656))))

(declare-fun b!7633957 () Bool)

(declare-fun tp!2228653 () Bool)

(declare-fun tp!2228654 () Bool)

(assert (=> b!7633957 (= e!4538270 (and tp!2228653 tp!2228654))))

(declare-fun b!7633958 () Bool)

(declare-fun tp!2228657 () Bool)

(assert (=> b!7633958 (= e!4538270 tp!2228657)))

(assert (=> b!7633668 (= tp!2228590 e!4538270)))

(declare-fun b!7633956 () Bool)

(assert (=> b!7633956 (= e!4538270 tp_is_empty!51147)))

(assert (= (and b!7633668 (is-ElementMatch!20396 (regTwo!41304 r!14126))) b!7633956))

(assert (= (and b!7633668 (is-Concat!29241 (regTwo!41304 r!14126))) b!7633957))

(assert (= (and b!7633668 (is-Star!20396 (regTwo!41304 r!14126))) b!7633958))

(assert (= (and b!7633668 (is-Union!20396 (regTwo!41304 r!14126))) b!7633959))

(push 1)

(assert (not b!7633834))

(assert (not b!7633954))

(assert (not b!7633805))

(assert (not b!7633959))

(assert (not d!2324458))

(assert (not b!7633912))

(assert (not b!7633852))

(assert (not d!2324436))

(assert (not b!7633762))

(assert (not d!2324456))

(assert (not b!7633914))

(assert (not bm!700753))

(assert (not b!7633950))

(assert (not b!7633936))

(assert (not b!7633918))

(assert (not d!2324432))

(assert (not d!2324444))

(assert (not b!7633921))

(assert (not b!7633949))

(assert (not bm!700750))

(assert (not b!7633835))

(assert (not b!7633958))

(assert (not d!2324446))

(assert (not b!7633944))

(assert (not b!7633939))

(assert (not b!7633917))

(assert (not b!7633940))

(assert (not b!7633915))

(assert (not b!7633847))

(assert tp_is_empty!51147)

(assert (not b!7633955))

(assert (not b!7633854))

(assert (not b!7633837))

(assert (not bm!700752))

(assert (not b!7633934))

(assert (not bm!700746))

(assert (not b!7633856))

(assert (not b!7633943))

(assert (not b!7633806))

(assert (not b!7633957))

(assert (not b!7633811))

(assert (not b!7633859))

(assert (not b!7633942))

(assert (not d!2324450))

(assert (not b!7633951))

(assert (not b!7633910))

(assert (not b!7633953))

(assert (not bm!700749))

(assert (not b!7633815))

(assert (not b!7633846))

(assert (not d!2324452))

(assert (not d!2324430))

(assert (not b!7633813))

(assert (not b!7633920))

(assert (not b!7633935))

(assert (not bm!700744))

(assert (not b!7633818))

(assert (not b!7633938))

(assert (not d!2324454))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

