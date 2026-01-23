; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279098 () Bool)

(assert start!279098)

(declare-fun bs!520817 () Bool)

(declare-fun b!2864415 () Bool)

(declare-fun b!2864411 () Bool)

(assert (= bs!520817 (and b!2864415 b!2864411)))

(declare-fun lambda!105815 () Int)

(declare-fun lambda!105814 () Int)

(assert (=> bs!520817 (not (= lambda!105815 lambda!105814))))

(declare-fun res!1189228 () Bool)

(declare-fun e!1813310 () Bool)

(assert (=> b!2864411 (=> (not res!1189228) (not e!1813310))))

(declare-datatypes ((C!17506 0))(
  ( (C!17507 (val!10787 Int)) )
))
(declare-datatypes ((Regex!8662 0))(
  ( (ElementMatch!8662 (c!461865 C!17506)) (Concat!13983 (regOne!17836 Regex!8662) (regTwo!17836 Regex!8662)) (EmptyExpr!8662) (Star!8662 (reg!8991 Regex!8662)) (EmptyLang!8662) (Union!8662 (regOne!17837 Regex!8662) (regTwo!17837 Regex!8662)) )
))
(declare-datatypes ((List!34319 0))(
  ( (Nil!34195) (Cons!34195 (h!39615 Regex!8662) (t!233362 List!34319)) )
))
(declare-datatypes ((Context!5244 0))(
  ( (Context!5245 (exprs!3122 List!34319)) )
))
(declare-fun z!691 () (Set Context!5244))

(declare-fun forall!6999 ((Set Context!5244) Int) Bool)

(assert (=> b!2864411 (= res!1189228 (not (forall!6999 z!691 lambda!105814)))))

(declare-fun res!1189227 () Bool)

(assert (=> start!279098 (=> (not res!1189227) (not e!1813310))))

(declare-fun lostCauseZipper!566 ((Set Context!5244)) Bool)

(assert (=> start!279098 (= res!1189227 (not (lostCauseZipper!566 z!691)))))

(assert (=> start!279098 e!1813310))

(declare-fun condSetEmpty!25568 () Bool)

(assert (=> start!279098 (= condSetEmpty!25568 (= z!691 (as set.empty (Set Context!5244))))))

(declare-fun setRes!25568 () Bool)

(assert (=> start!279098 setRes!25568))

(declare-fun setElem!25568 () Context!5244)

(declare-fun tp!922476 () Bool)

(declare-fun e!1813308 () Bool)

(declare-fun setNonEmpty!25568 () Bool)

(declare-fun inv!46243 (Context!5244) Bool)

(assert (=> setNonEmpty!25568 (= setRes!25568 (and tp!922476 (inv!46243 setElem!25568) e!1813308))))

(declare-fun setRest!25568 () (Set Context!5244))

(assert (=> setNonEmpty!25568 (= z!691 (set.union (set.insert setElem!25568 (as set.empty (Set Context!5244))) setRest!25568))))

(declare-fun setIsEmpty!25568 () Bool)

(assert (=> setIsEmpty!25568 setRes!25568))

(declare-fun b!2864412 () Bool)

(declare-fun tp!922475 () Bool)

(assert (=> b!2864412 (= e!1813308 tp!922475)))

(declare-fun b!2864413 () Bool)

(declare-fun res!1189230 () Bool)

(assert (=> b!2864413 (=> (not res!1189230) (not e!1813310))))

(declare-datatypes ((List!34320 0))(
  ( (Nil!34196) (Cons!34196 (h!39616 C!17506) (t!233363 List!34320)) )
))
(declare-datatypes ((Option!6341 0))(
  ( (None!6340) (Some!6340 (v!34462 List!34320)) )
))
(declare-fun isDefined!4961 (Option!6341) Bool)

(declare-fun getLanguageWitness!283 ((Set Context!5244)) Option!6341)

(assert (=> b!2864413 (= res!1189230 (isDefined!4961 (getLanguageWitness!283 z!691)))))

(declare-fun b!2864414 () Bool)

(declare-fun e!1813309 () Bool)

(declare-fun lt!1015408 () Option!6341)

(assert (=> b!2864414 (= e!1813309 (isDefined!4961 lt!1015408))))

(declare-fun lt!1015405 () Context!5244)

(declare-fun matchZipper!442 ((Set Context!5244) List!34320) Bool)

(declare-fun get!10252 (Option!6341) List!34320)

(assert (=> b!2864414 (matchZipper!442 (set.insert lt!1015405 (as set.empty (Set Context!5244))) (get!10252 lt!1015408))))

(declare-fun getLanguageWitness!284 (Context!5244) Option!6341)

(assert (=> b!2864414 (= lt!1015408 (getLanguageWitness!284 lt!1015405))))

(declare-datatypes ((Unit!47843 0))(
  ( (Unit!47844) )
))
(declare-fun lt!1015407 () Unit!47843)

(declare-fun lemmaGetWitnessMatchesContext!1 (Context!5244) Unit!47843)

(assert (=> b!2864414 (= lt!1015407 (lemmaGetWitnessMatchesContext!1 lt!1015405))))

(declare-fun getWitness!589 ((Set Context!5244) Int) Context!5244)

(assert (=> b!2864414 (= lt!1015405 (getWitness!589 z!691 lambda!105815))))

(assert (=> b!2864415 (= e!1813310 (not e!1813309))))

(declare-fun res!1189229 () Bool)

(assert (=> b!2864415 (=> res!1189229 e!1813309)))

(declare-fun exists!1067 ((Set Context!5244) Int) Bool)

(assert (=> b!2864415 (= res!1189229 (not (exists!1067 z!691 lambda!105815)))))

(declare-datatypes ((List!34321 0))(
  ( (Nil!34197) (Cons!34197 (h!39617 Context!5244) (t!233364 List!34321)) )
))
(declare-fun lt!1015404 () List!34321)

(declare-fun exists!1068 (List!34321 Int) Bool)

(assert (=> b!2864415 (exists!1068 lt!1015404 lambda!105815)))

(declare-fun lt!1015406 () Unit!47843)

(declare-fun lemmaNotForallThenExists!132 (List!34321 Int) Unit!47843)

(assert (=> b!2864415 (= lt!1015406 (lemmaNotForallThenExists!132 lt!1015404 lambda!105814))))

(declare-fun toList!1993 ((Set Context!5244)) List!34321)

(assert (=> b!2864415 (= lt!1015404 (toList!1993 z!691))))

(assert (= (and start!279098 res!1189227) b!2864413))

(assert (= (and b!2864413 res!1189230) b!2864411))

(assert (= (and b!2864411 res!1189228) b!2864415))

(assert (= (and b!2864415 (not res!1189229)) b!2864414))

(assert (= (and start!279098 condSetEmpty!25568) setIsEmpty!25568))

(assert (= (and start!279098 (not condSetEmpty!25568)) setNonEmpty!25568))

(assert (= setNonEmpty!25568 b!2864412))

(declare-fun m!3284077 () Bool)

(assert (=> b!2864415 m!3284077))

(declare-fun m!3284079 () Bool)

(assert (=> b!2864415 m!3284079))

(declare-fun m!3284081 () Bool)

(assert (=> b!2864415 m!3284081))

(declare-fun m!3284083 () Bool)

(assert (=> b!2864415 m!3284083))

(declare-fun m!3284085 () Bool)

(assert (=> b!2864413 m!3284085))

(assert (=> b!2864413 m!3284085))

(declare-fun m!3284087 () Bool)

(assert (=> b!2864413 m!3284087))

(declare-fun m!3284089 () Bool)

(assert (=> start!279098 m!3284089))

(declare-fun m!3284091 () Bool)

(assert (=> setNonEmpty!25568 m!3284091))

(declare-fun m!3284093 () Bool)

(assert (=> b!2864414 m!3284093))

(declare-fun m!3284095 () Bool)

(assert (=> b!2864414 m!3284095))

(declare-fun m!3284097 () Bool)

(assert (=> b!2864414 m!3284097))

(declare-fun m!3284099 () Bool)

(assert (=> b!2864414 m!3284099))

(declare-fun m!3284101 () Bool)

(assert (=> b!2864414 m!3284101))

(declare-fun m!3284103 () Bool)

(assert (=> b!2864414 m!3284103))

(assert (=> b!2864414 m!3284103))

(assert (=> b!2864414 m!3284095))

(declare-fun m!3284105 () Bool)

(assert (=> b!2864414 m!3284105))

(declare-fun m!3284107 () Bool)

(assert (=> b!2864411 m!3284107))

(push 1)

(assert (not b!2864414))

(assert (not setNonEmpty!25568))

(assert (not b!2864415))

(assert (not start!279098))

(assert (not b!2864412))

(assert (not b!2864413))

(assert (not b!2864411))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!828153 () Bool)

(declare-fun isEmpty!18651 (Option!6341) Bool)

(assert (=> d!828153 (= (isDefined!4961 (getLanguageWitness!283 z!691)) (not (isEmpty!18651 (getLanguageWitness!283 z!691))))))

(declare-fun bs!520819 () Bool)

(assert (= bs!520819 d!828153))

(assert (=> bs!520819 m!3284085))

(declare-fun m!3284141 () Bool)

(assert (=> bs!520819 m!3284141))

(assert (=> b!2864413 d!828153))

(declare-fun bs!520820 () Bool)

(declare-fun d!828155 () Bool)

(assert (= bs!520820 (and d!828155 b!2864411)))

(declare-fun lambda!105834 () Int)

(assert (=> bs!520820 (not (= lambda!105834 lambda!105814))))

(declare-fun bs!520821 () Bool)

(assert (= bs!520821 (and d!828155 b!2864415)))

(assert (=> bs!520821 (= lambda!105834 lambda!105815)))

(declare-fun lt!1015426 () Option!6341)

(assert (=> d!828155 (= (isDefined!4961 lt!1015426) (exists!1067 z!691 lambda!105834))))

(declare-fun e!1813324 () Option!6341)

(assert (=> d!828155 (= lt!1015426 e!1813324)))

(declare-fun c!461883 () Bool)

(assert (=> d!828155 (= c!461883 (exists!1067 z!691 lambda!105834))))

(assert (=> d!828155 (= (getLanguageWitness!283 z!691) lt!1015426)))

(declare-fun b!2864435 () Bool)

(assert (=> b!2864435 (= e!1813324 (getLanguageWitness!284 (getWitness!589 z!691 lambda!105834)))))

(declare-fun b!2864436 () Bool)

(assert (=> b!2864436 (= e!1813324 None!6340)))

(assert (= (and d!828155 c!461883) b!2864435))

(assert (= (and d!828155 (not c!461883)) b!2864436))

(declare-fun m!3284143 () Bool)

(assert (=> d!828155 m!3284143))

(declare-fun m!3284145 () Bool)

(assert (=> d!828155 m!3284145))

(assert (=> d!828155 m!3284145))

(declare-fun m!3284147 () Bool)

(assert (=> b!2864435 m!3284147))

(assert (=> b!2864435 m!3284147))

(declare-fun m!3284149 () Bool)

(assert (=> b!2864435 m!3284149))

(assert (=> b!2864413 d!828155))

(declare-fun d!828157 () Bool)

(declare-fun lt!1015429 () Bool)

(assert (=> d!828157 (= lt!1015429 (exists!1068 (toList!1993 z!691) lambda!105815))))

(declare-fun choose!16886 ((Set Context!5244) Int) Bool)

(assert (=> d!828157 (= lt!1015429 (choose!16886 z!691 lambda!105815))))

(assert (=> d!828157 (= (exists!1067 z!691 lambda!105815) lt!1015429)))

(declare-fun bs!520822 () Bool)

(assert (= bs!520822 d!828157))

(assert (=> bs!520822 m!3284083))

(assert (=> bs!520822 m!3284083))

(declare-fun m!3284151 () Bool)

(assert (=> bs!520822 m!3284151))

(declare-fun m!3284153 () Bool)

(assert (=> bs!520822 m!3284153))

(assert (=> b!2864415 d!828157))

(declare-fun bs!520823 () Bool)

(declare-fun d!828159 () Bool)

(assert (= bs!520823 (and d!828159 b!2864411)))

(declare-fun lambda!105837 () Int)

(assert (=> bs!520823 (not (= lambda!105837 lambda!105814))))

(declare-fun bs!520824 () Bool)

(assert (= bs!520824 (and d!828159 b!2864415)))

(assert (=> bs!520824 (not (= lambda!105837 lambda!105815))))

(declare-fun bs!520825 () Bool)

(assert (= bs!520825 (and d!828159 d!828155)))

(assert (=> bs!520825 (not (= lambda!105837 lambda!105834))))

(assert (=> d!828159 true))

(declare-fun order!18077 () Int)

(declare-fun dynLambda!14265 (Int Int) Int)

(assert (=> d!828159 (< (dynLambda!14265 order!18077 lambda!105815) (dynLambda!14265 order!18077 lambda!105837))))

(declare-fun forall!7001 (List!34321 Int) Bool)

(assert (=> d!828159 (= (exists!1068 lt!1015404 lambda!105815) (not (forall!7001 lt!1015404 lambda!105837)))))

(declare-fun bs!520826 () Bool)

(assert (= bs!520826 d!828159))

(declare-fun m!3284155 () Bool)

(assert (=> bs!520826 m!3284155))

(assert (=> b!2864415 d!828159))

(declare-fun bs!520827 () Bool)

(declare-fun d!828161 () Bool)

(assert (= bs!520827 (and d!828161 b!2864411)))

(declare-fun lambda!105840 () Int)

(assert (=> bs!520827 (not (= lambda!105840 lambda!105814))))

(declare-fun bs!520828 () Bool)

(assert (= bs!520828 (and d!828161 b!2864415)))

(assert (=> bs!520828 (not (= lambda!105840 lambda!105815))))

(declare-fun bs!520829 () Bool)

(assert (= bs!520829 (and d!828161 d!828155)))

(assert (=> bs!520829 (not (= lambda!105840 lambda!105834))))

(declare-fun bs!520830 () Bool)

(assert (= bs!520830 (and d!828161 d!828159)))

(assert (=> bs!520830 (= (= lambda!105814 lambda!105815) (= lambda!105840 lambda!105837))))

(assert (=> d!828161 true))

(assert (=> d!828161 (< (dynLambda!14265 order!18077 lambda!105814) (dynLambda!14265 order!18077 lambda!105840))))

(assert (=> d!828161 (exists!1068 lt!1015404 lambda!105840)))

(declare-fun lt!1015432 () Unit!47843)

(declare-fun choose!16887 (List!34321 Int) Unit!47843)

(assert (=> d!828161 (= lt!1015432 (choose!16887 lt!1015404 lambda!105814))))

(assert (=> d!828161 (not (forall!7001 lt!1015404 lambda!105814))))

(assert (=> d!828161 (= (lemmaNotForallThenExists!132 lt!1015404 lambda!105814) lt!1015432)))

(declare-fun bs!520831 () Bool)

(assert (= bs!520831 d!828161))

(declare-fun m!3284157 () Bool)

(assert (=> bs!520831 m!3284157))

(declare-fun m!3284159 () Bool)

(assert (=> bs!520831 m!3284159))

(declare-fun m!3284161 () Bool)

(assert (=> bs!520831 m!3284161))

(assert (=> b!2864415 d!828161))

(declare-fun d!828163 () Bool)

(declare-fun e!1813329 () Bool)

(assert (=> d!828163 e!1813329))

(declare-fun res!1189245 () Bool)

(assert (=> d!828163 (=> (not res!1189245) (not e!1813329))))

(declare-fun lt!1015435 () List!34321)

(declare-fun noDuplicate!567 (List!34321) Bool)

(assert (=> d!828163 (= res!1189245 (noDuplicate!567 lt!1015435))))

(declare-fun choose!16888 ((Set Context!5244)) List!34321)

(assert (=> d!828163 (= lt!1015435 (choose!16888 z!691))))

(assert (=> d!828163 (= (toList!1993 z!691) lt!1015435)))

(declare-fun b!2864441 () Bool)

(declare-fun content!4669 (List!34321) (Set Context!5244))

(assert (=> b!2864441 (= e!1813329 (= (content!4669 lt!1015435) z!691))))

(assert (= (and d!828163 res!1189245) b!2864441))

(declare-fun m!3284163 () Bool)

(assert (=> d!828163 m!3284163))

(declare-fun m!3284165 () Bool)

(assert (=> d!828163 m!3284165))

(declare-fun m!3284167 () Bool)

(assert (=> b!2864441 m!3284167))

(assert (=> b!2864415 d!828163))

(declare-fun d!828167 () Bool)

(assert (=> d!828167 (= (isDefined!4961 lt!1015408) (not (isEmpty!18651 lt!1015408)))))

(declare-fun bs!520832 () Bool)

(assert (= bs!520832 d!828167))

(declare-fun m!3284169 () Bool)

(assert (=> bs!520832 m!3284169))

(assert (=> b!2864414 d!828167))

(declare-fun d!828169 () Bool)

(assert (=> d!828169 (= (get!10252 lt!1015408) (v!34462 lt!1015408))))

(assert (=> b!2864414 d!828169))

(declare-fun d!828171 () Bool)

(declare-fun c!461886 () Bool)

(declare-fun isEmpty!18652 (List!34320) Bool)

(assert (=> d!828171 (= c!461886 (isEmpty!18652 (get!10252 lt!1015408)))))

(declare-fun e!1813332 () Bool)

(assert (=> d!828171 (= (matchZipper!442 (set.insert lt!1015405 (as set.empty (Set Context!5244))) (get!10252 lt!1015408)) e!1813332)))

(declare-fun b!2864446 () Bool)

(declare-fun nullableZipper!696 ((Set Context!5244)) Bool)

(assert (=> b!2864446 (= e!1813332 (nullableZipper!696 (set.insert lt!1015405 (as set.empty (Set Context!5244)))))))

(declare-fun b!2864447 () Bool)

(declare-fun derivationStepZipper!452 ((Set Context!5244) C!17506) (Set Context!5244))

(declare-fun head!6317 (List!34320) C!17506)

(declare-fun tail!4542 (List!34320) List!34320)

(assert (=> b!2864447 (= e!1813332 (matchZipper!442 (derivationStepZipper!452 (set.insert lt!1015405 (as set.empty (Set Context!5244))) (head!6317 (get!10252 lt!1015408))) (tail!4542 (get!10252 lt!1015408))))))

(assert (= (and d!828171 c!461886) b!2864446))

(assert (= (and d!828171 (not c!461886)) b!2864447))

(assert (=> d!828171 m!3284095))

(declare-fun m!3284173 () Bool)

(assert (=> d!828171 m!3284173))

(assert (=> b!2864446 m!3284103))

(declare-fun m!3284175 () Bool)

(assert (=> b!2864446 m!3284175))

(assert (=> b!2864447 m!3284095))

(declare-fun m!3284177 () Bool)

(assert (=> b!2864447 m!3284177))

(assert (=> b!2864447 m!3284103))

(assert (=> b!2864447 m!3284177))

(declare-fun m!3284179 () Bool)

(assert (=> b!2864447 m!3284179))

(assert (=> b!2864447 m!3284095))

(declare-fun m!3284181 () Bool)

(assert (=> b!2864447 m!3284181))

(assert (=> b!2864447 m!3284179))

(assert (=> b!2864447 m!3284181))

(declare-fun m!3284183 () Bool)

(assert (=> b!2864447 m!3284183))

(assert (=> b!2864414 d!828171))

(declare-fun d!828175 () Bool)

(assert (=> d!828175 (matchZipper!442 (set.insert lt!1015405 (as set.empty (Set Context!5244))) (get!10252 (getLanguageWitness!284 lt!1015405)))))

(declare-fun lt!1015441 () Unit!47843)

(declare-fun choose!16889 (Context!5244) Unit!47843)

(assert (=> d!828175 (= lt!1015441 (choose!16889 lt!1015405))))

(declare-fun lostCause!771 (Context!5244) Bool)

(assert (=> d!828175 (not (lostCause!771 lt!1015405))))

(assert (=> d!828175 (= (lemmaGetWitnessMatchesContext!1 lt!1015405) lt!1015441)))

(declare-fun bs!520834 () Bool)

(assert (= bs!520834 d!828175))

(assert (=> bs!520834 m!3284097))

(declare-fun m!3284187 () Bool)

(assert (=> bs!520834 m!3284187))

(declare-fun m!3284189 () Bool)

(assert (=> bs!520834 m!3284189))

(assert (=> bs!520834 m!3284103))

(assert (=> bs!520834 m!3284097))

(declare-fun m!3284191 () Bool)

(assert (=> bs!520834 m!3284191))

(assert (=> bs!520834 m!3284103))

(assert (=> bs!520834 m!3284191))

(declare-fun m!3284193 () Bool)

(assert (=> bs!520834 m!3284193))

(assert (=> b!2864414 d!828175))

(declare-fun b!2864463 () Bool)

(declare-fun e!1813344 () Option!6341)

(assert (=> b!2864463 (= e!1813344 (Some!6340 Nil!34196))))

(declare-fun b!2864464 () Bool)

(declare-fun e!1813342 () Option!6341)

(assert (=> b!2864464 (= e!1813342 None!6340)))

(declare-fun b!2864465 () Bool)

(declare-fun lt!1015450 () Option!6341)

(declare-fun lt!1015449 () Option!6341)

(declare-fun ++!8138 (List!34320 List!34320) List!34320)

(assert (=> b!2864465 (= e!1813342 (Some!6340 (++!8138 (v!34462 lt!1015450) (v!34462 lt!1015449))))))

(declare-fun b!2864467 () Bool)

(declare-fun e!1813343 () Option!6341)

(assert (=> b!2864467 (= e!1813344 e!1813343)))

(declare-fun getLanguageWitness!287 (Regex!8662) Option!6341)

(assert (=> b!2864467 (= lt!1015450 (getLanguageWitness!287 (h!39615 (exprs!3122 lt!1015405))))))

(declare-fun c!461896 () Bool)

(assert (=> b!2864467 (= c!461896 (is-Some!6340 lt!1015450))))

(declare-fun b!2864468 () Bool)

(assert (=> b!2864468 (= e!1813343 None!6340)))

(declare-fun b!2864466 () Bool)

(declare-fun c!461895 () Bool)

(assert (=> b!2864466 (= c!461895 (is-Some!6340 lt!1015449))))

(assert (=> b!2864466 (= lt!1015449 (getLanguageWitness!284 (Context!5245 (t!233362 (exprs!3122 lt!1015405)))))))

(assert (=> b!2864466 (= e!1813343 e!1813342)))

(declare-fun d!828177 () Bool)

(declare-fun lt!1015448 () Option!6341)

(declare-fun lambda!105843 () Int)

(declare-fun exists!1071 (List!34319 Int) Bool)

(assert (=> d!828177 (= (isEmpty!18651 lt!1015448) (exists!1071 (exprs!3122 lt!1015405) lambda!105843))))

(assert (=> d!828177 (= lt!1015448 e!1813344)))

(declare-fun c!461897 () Bool)

(assert (=> d!828177 (= c!461897 (is-Cons!34195 (exprs!3122 lt!1015405)))))

(assert (=> d!828177 (= (getLanguageWitness!284 lt!1015405) lt!1015448)))

(assert (= (and d!828177 c!461897) b!2864467))

(assert (= (and d!828177 (not c!461897)) b!2864463))

(assert (= (and b!2864467 c!461896) b!2864466))

(assert (= (and b!2864467 (not c!461896)) b!2864468))

(assert (= (and b!2864466 c!461895) b!2864465))

(assert (= (and b!2864466 (not c!461895)) b!2864464))

(declare-fun m!3284199 () Bool)

(assert (=> b!2864465 m!3284199))

(declare-fun m!3284201 () Bool)

(assert (=> b!2864467 m!3284201))

(declare-fun m!3284203 () Bool)

(assert (=> b!2864466 m!3284203))

(declare-fun m!3284205 () Bool)

(assert (=> d!828177 m!3284205))

(declare-fun m!3284207 () Bool)

(assert (=> d!828177 m!3284207))

(assert (=> b!2864414 d!828177))

(declare-fun d!828181 () Bool)

(declare-fun e!1813347 () Bool)

(assert (=> d!828181 e!1813347))

(declare-fun res!1189251 () Bool)

(assert (=> d!828181 (=> (not res!1189251) (not e!1813347))))

(declare-fun lt!1015453 () Context!5244)

(declare-fun dynLambda!14266 (Int Context!5244) Bool)

(assert (=> d!828181 (= res!1189251 (dynLambda!14266 lambda!105815 lt!1015453))))

(declare-fun getWitness!591 (List!34321 Int) Context!5244)

(assert (=> d!828181 (= lt!1015453 (getWitness!591 (toList!1993 z!691) lambda!105815))))

(assert (=> d!828181 (exists!1067 z!691 lambda!105815)))

(assert (=> d!828181 (= (getWitness!589 z!691 lambda!105815) lt!1015453)))

(declare-fun b!2864471 () Bool)

(assert (=> b!2864471 (= e!1813347 (set.member lt!1015453 z!691))))

(assert (= (and d!828181 res!1189251) b!2864471))

(declare-fun b_lambda!85889 () Bool)

(assert (=> (not b_lambda!85889) (not d!828181)))

(declare-fun m!3284209 () Bool)

(assert (=> d!828181 m!3284209))

(assert (=> d!828181 m!3284083))

(assert (=> d!828181 m!3284083))

(declare-fun m!3284211 () Bool)

(assert (=> d!828181 m!3284211))

(assert (=> d!828181 m!3284077))

(declare-fun m!3284213 () Bool)

(assert (=> b!2864471 m!3284213))

(assert (=> b!2864414 d!828181))

(declare-fun d!828183 () Bool)

(declare-fun lt!1015456 () Bool)

(assert (=> d!828183 (= lt!1015456 (forall!7001 (toList!1993 z!691) lambda!105814))))

(declare-fun choose!16890 ((Set Context!5244) Int) Bool)

(assert (=> d!828183 (= lt!1015456 (choose!16890 z!691 lambda!105814))))

(assert (=> d!828183 (= (forall!6999 z!691 lambda!105814) lt!1015456)))

(declare-fun bs!520835 () Bool)

(assert (= bs!520835 d!828183))

(assert (=> bs!520835 m!3284083))

(assert (=> bs!520835 m!3284083))

(declare-fun m!3284215 () Bool)

(assert (=> bs!520835 m!3284215))

(declare-fun m!3284217 () Bool)

(assert (=> bs!520835 m!3284217))

(assert (=> b!2864411 d!828183))

(declare-fun bs!520836 () Bool)

(declare-fun d!828185 () Bool)

(assert (= bs!520836 (and d!828185 d!828177)))

(declare-fun lambda!105846 () Int)

(assert (=> bs!520836 (not (= lambda!105846 lambda!105843))))

(declare-fun forall!7002 (List!34319 Int) Bool)

(assert (=> d!828185 (= (inv!46243 setElem!25568) (forall!7002 (exprs!3122 setElem!25568) lambda!105846))))

(declare-fun bs!520837 () Bool)

(assert (= bs!520837 d!828185))

(declare-fun m!3284219 () Bool)

(assert (=> bs!520837 m!3284219))

(assert (=> setNonEmpty!25568 d!828185))

(declare-fun bs!520838 () Bool)

(declare-fun d!828187 () Bool)

(assert (= bs!520838 (and d!828187 d!828161)))

(declare-fun lambda!105862 () Int)

(assert (=> bs!520838 (not (= lambda!105862 lambda!105840))))

(declare-fun bs!520839 () Bool)

(assert (= bs!520839 (and d!828187 d!828159)))

(assert (=> bs!520839 (not (= lambda!105862 lambda!105837))))

(declare-fun bs!520840 () Bool)

(assert (= bs!520840 (and d!828187 d!828155)))

(assert (=> bs!520840 (not (= lambda!105862 lambda!105834))))

(declare-fun bs!520841 () Bool)

(assert (= bs!520841 (and d!828187 b!2864415)))

(assert (=> bs!520841 (not (= lambda!105862 lambda!105815))))

(declare-fun bs!520842 () Bool)

(assert (= bs!520842 (and d!828187 b!2864411)))

(assert (=> bs!520842 (= lambda!105862 lambda!105814)))

(declare-fun bs!520843 () Bool)

(declare-fun b!2864494 () Bool)

(assert (= bs!520843 (and b!2864494 d!828161)))

(declare-fun lambda!105863 () Int)

(assert (=> bs!520843 (not (= lambda!105863 lambda!105840))))

(declare-fun bs!520844 () Bool)

(assert (= bs!520844 (and b!2864494 d!828159)))

(assert (=> bs!520844 (not (= lambda!105863 lambda!105837))))

(declare-fun bs!520845 () Bool)

(assert (= bs!520845 (and b!2864494 d!828155)))

(assert (=> bs!520845 (= lambda!105863 lambda!105834)))

(declare-fun bs!520846 () Bool)

(assert (= bs!520846 (and b!2864494 b!2864415)))

(assert (=> bs!520846 (= lambda!105863 lambda!105815)))

(declare-fun bs!520847 () Bool)

(assert (= bs!520847 (and b!2864494 d!828187)))

(assert (=> bs!520847 (not (= lambda!105863 lambda!105862))))

(declare-fun bs!520848 () Bool)

(assert (= bs!520848 (and b!2864494 b!2864411)))

(assert (=> bs!520848 (not (= lambda!105863 lambda!105814))))

(declare-fun bs!520849 () Bool)

(declare-fun b!2864495 () Bool)

(assert (= bs!520849 (and b!2864495 d!828161)))

(declare-fun lambda!105864 () Int)

(assert (=> bs!520849 (not (= lambda!105864 lambda!105840))))

(declare-fun bs!520850 () Bool)

(assert (= bs!520850 (and b!2864495 d!828159)))

(assert (=> bs!520850 (not (= lambda!105864 lambda!105837))))

(declare-fun bs!520851 () Bool)

(assert (= bs!520851 (and b!2864495 d!828155)))

(assert (=> bs!520851 (= lambda!105864 lambda!105834)))

(declare-fun bs!520852 () Bool)

(assert (= bs!520852 (and b!2864495 b!2864415)))

(assert (=> bs!520852 (= lambda!105864 lambda!105815)))

(declare-fun bs!520853 () Bool)

(assert (= bs!520853 (and b!2864495 b!2864494)))

(assert (=> bs!520853 (= lambda!105864 lambda!105863)))

(declare-fun bs!520854 () Bool)

(assert (= bs!520854 (and b!2864495 d!828187)))

(assert (=> bs!520854 (not (= lambda!105864 lambda!105862))))

(declare-fun bs!520855 () Bool)

(assert (= bs!520855 (and b!2864495 b!2864411)))

(assert (=> bs!520855 (not (= lambda!105864 lambda!105814))))

(declare-fun lt!1015489 () Bool)

(assert (=> d!828187 (= lt!1015489 (isEmpty!18651 (getLanguageWitness!283 z!691)))))

(assert (=> d!828187 (= lt!1015489 (forall!6999 z!691 lambda!105862))))

(declare-fun lt!1015483 () Unit!47843)

(declare-fun e!1813363 () Unit!47843)

(assert (=> d!828187 (= lt!1015483 e!1813363)))

(declare-fun c!461918 () Bool)

(assert (=> d!828187 (= c!461918 (not (forall!6999 z!691 lambda!105862)))))

(assert (=> d!828187 (= (lostCauseZipper!566 z!691) lt!1015489)))

(declare-fun Unit!47847 () Unit!47843)

(assert (=> b!2864494 (= e!1813363 Unit!47847)))

(declare-fun lt!1015482 () List!34321)

(declare-fun call!184776 () List!34321)

(assert (=> b!2864494 (= lt!1015482 call!184776)))

(declare-fun lt!1015486 () Unit!47843)

(assert (=> b!2864494 (= lt!1015486 (lemmaNotForallThenExists!132 lt!1015482 lambda!105862))))

(declare-fun call!184775 () Bool)

(assert (=> b!2864494 call!184775))

(declare-fun lt!1015488 () Unit!47843)

(assert (=> b!2864494 (= lt!1015488 lt!1015486)))

(declare-fun lt!1015487 () List!34321)

(declare-fun bm!184771 () Bool)

(assert (=> bm!184771 (= call!184775 (exists!1068 (ite c!461918 lt!1015482 lt!1015487) (ite c!461918 lambda!105863 lambda!105864)))))

(declare-fun Unit!47848 () Unit!47843)

(assert (=> b!2864495 (= e!1813363 Unit!47848)))

(assert (=> b!2864495 (= lt!1015487 call!184776)))

(declare-fun lt!1015484 () Unit!47843)

(declare-fun lemmaForallThenNotExists!128 (List!34321 Int) Unit!47843)

(assert (=> b!2864495 (= lt!1015484 (lemmaForallThenNotExists!128 lt!1015487 lambda!105862))))

(assert (=> b!2864495 (not call!184775)))

(declare-fun lt!1015485 () Unit!47843)

(assert (=> b!2864495 (= lt!1015485 lt!1015484)))

(declare-fun bm!184770 () Bool)

(assert (=> bm!184770 (= call!184776 (toList!1993 z!691))))

(assert (= (and d!828187 c!461918) b!2864494))

(assert (= (and d!828187 (not c!461918)) b!2864495))

(assert (= (or b!2864494 b!2864495) bm!184770))

(assert (= (or b!2864494 b!2864495) bm!184771))

(assert (=> bm!184770 m!3284083))

(declare-fun m!3284231 () Bool)

(assert (=> bm!184771 m!3284231))

(declare-fun m!3284233 () Bool)

(assert (=> b!2864494 m!3284233))

(assert (=> d!828187 m!3284085))

(assert (=> d!828187 m!3284085))

(assert (=> d!828187 m!3284141))

(declare-fun m!3284235 () Bool)

(assert (=> d!828187 m!3284235))

(assert (=> d!828187 m!3284235))

(declare-fun m!3284237 () Bool)

(assert (=> b!2864495 m!3284237))

(assert (=> start!279098 d!828187))

(declare-fun condSetEmpty!25574 () Bool)

(assert (=> setNonEmpty!25568 (= condSetEmpty!25574 (= setRest!25568 (as set.empty (Set Context!5244))))))

(declare-fun setRes!25574 () Bool)

(assert (=> setNonEmpty!25568 (= tp!922476 setRes!25574)))

(declare-fun setIsEmpty!25574 () Bool)

(assert (=> setIsEmpty!25574 setRes!25574))

(declare-fun setNonEmpty!25574 () Bool)

(declare-fun tp!922488 () Bool)

(declare-fun e!1813369 () Bool)

(declare-fun setElem!25574 () Context!5244)

(assert (=> setNonEmpty!25574 (= setRes!25574 (and tp!922488 (inv!46243 setElem!25574) e!1813369))))

(declare-fun setRest!25574 () (Set Context!5244))

(assert (=> setNonEmpty!25574 (= setRest!25568 (set.union (set.insert setElem!25574 (as set.empty (Set Context!5244))) setRest!25574))))

(declare-fun b!2864506 () Bool)

(declare-fun tp!922487 () Bool)

(assert (=> b!2864506 (= e!1813369 tp!922487)))

(assert (= (and setNonEmpty!25568 condSetEmpty!25574) setIsEmpty!25574))

(assert (= (and setNonEmpty!25568 (not condSetEmpty!25574)) setNonEmpty!25574))

(assert (= setNonEmpty!25574 b!2864506))

(declare-fun m!3284249 () Bool)

(assert (=> setNonEmpty!25574 m!3284249))

(declare-fun b!2864511 () Bool)

(declare-fun e!1813372 () Bool)

(declare-fun tp!922493 () Bool)

(declare-fun tp!922494 () Bool)

(assert (=> b!2864511 (= e!1813372 (and tp!922493 tp!922494))))

(assert (=> b!2864412 (= tp!922475 e!1813372)))

(assert (= (and b!2864412 (is-Cons!34195 (exprs!3122 setElem!25568))) b!2864511))

(declare-fun b_lambda!85891 () Bool)

(assert (= b_lambda!85889 (or b!2864415 b_lambda!85891)))

(declare-fun bs!520856 () Bool)

(declare-fun d!828193 () Bool)

(assert (= bs!520856 (and d!828193 b!2864415)))

(assert (=> bs!520856 (= (dynLambda!14266 lambda!105815 lt!1015453) (not (lostCause!771 lt!1015453)))))

(declare-fun m!3284253 () Bool)

(assert (=> bs!520856 m!3284253))

(assert (=> d!828181 d!828193))

(push 1)

(assert (not d!828183))

(assert (not b!2864506))

(assert (not b!2864447))

(assert (not b!2864466))

(assert (not bm!184771))

(assert (not d!828181))

(assert (not b!2864495))

(assert (not d!828175))

(assert (not d!828155))

(assert (not b!2864511))

(assert (not d!828161))

(assert (not d!828171))

(assert (not d!828157))

(assert (not b!2864441))

(assert (not d!828187))

(assert (not d!828185))

(assert (not bs!520856))

(assert (not b!2864435))

(assert (not bm!184770))

(assert (not d!828167))

(assert (not b!2864465))

(assert (not b!2864494))

(assert (not d!828153))

(assert (not d!828177))

(assert (not setNonEmpty!25574))

(assert (not b!2864446))

(assert (not d!828163))

(assert (not b!2864467))

(assert (not b_lambda!85891))

(assert (not d!828159))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

