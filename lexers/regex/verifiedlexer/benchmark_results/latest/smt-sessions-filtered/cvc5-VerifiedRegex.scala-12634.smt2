; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!700004 () Bool)

(assert start!700004)

(declare-fun b!7194230 () Bool)

(declare-fun res!2928830 () Bool)

(declare-fun e!4320170 () Bool)

(assert (=> b!7194230 (=> (not res!2928830) (not e!4320170))))

(declare-datatypes ((C!37026 0))(
  ( (C!37027 (val!28461 Int)) )
))
(declare-datatypes ((List!69850 0))(
  ( (Nil!69726) (Cons!69726 (h!76174 C!37026) (t!383875 List!69850)) )
))
(declare-fun s!7961 () List!69850)

(declare-fun isEmpty!40247 (List!69850) Bool)

(assert (=> b!7194230 (= res!2928830 (not (isEmpty!40247 s!7961)))))

(declare-fun b!7194231 () Bool)

(declare-fun e!4320168 () Bool)

(declare-fun tp!1999877 () Bool)

(assert (=> b!7194231 (= e!4320168 tp!1999877)))

(declare-fun b!7194232 () Bool)

(declare-fun e!4320172 () Bool)

(declare-fun tp!1999878 () Bool)

(assert (=> b!7194232 (= e!4320172 tp!1999878)))

(declare-fun b!7194233 () Bool)

(declare-fun res!2928829 () Bool)

(assert (=> b!7194233 (=> (not res!2928829) (not e!4320170))))

(declare-datatypes ((Regex!18376 0))(
  ( (ElementMatch!18376 (c!1339016 C!37026)) (Concat!27221 (regOne!37264 Regex!18376) (regTwo!37264 Regex!18376)) (EmptyExpr!18376) (Star!18376 (reg!18705 Regex!18376)) (EmptyLang!18376) (Union!18376 (regOne!37265 Regex!18376) (regTwo!37265 Regex!18376)) )
))
(declare-datatypes ((List!69851 0))(
  ( (Nil!69727) (Cons!69727 (h!76175 Regex!18376) (t!383876 List!69851)) )
))
(declare-datatypes ((Context!14656 0))(
  ( (Context!14657 (exprs!7828 List!69851)) )
))
(declare-fun c!10544 () Context!14656)

(declare-fun isEmpty!40248 (List!69851) Bool)

(assert (=> b!7194233 (= res!2928829 (not (isEmpty!40248 (exprs!7828 c!10544))))))

(declare-fun b!7194234 () Bool)

(declare-fun res!2928833 () Bool)

(declare-fun e!4320169 () Bool)

(assert (=> b!7194234 (=> (not res!2928833) (not e!4320169))))

(declare-fun lt!2571474 () (Set Context!14656))

(assert (=> b!7194234 (= res!2928833 (not (= lt!2571474 (as set.empty (Set Context!14656)))))))

(declare-fun b!7194235 () Bool)

(declare-fun res!2928832 () Bool)

(assert (=> b!7194235 (=> (not res!2928832) (not e!4320170))))

(declare-fun head!14708 (List!69851) Regex!18376)

(assert (=> b!7194235 (= res!2928832 (= (head!14708 (exprs!7828 c!10544)) EmptyLang!18376))))

(declare-fun setElem!53335 () Context!14656)

(declare-fun setRes!53335 () Bool)

(declare-fun tp!1999880 () Bool)

(declare-fun setNonEmpty!53335 () Bool)

(declare-fun inv!88963 (Context!14656) Bool)

(assert (=> setNonEmpty!53335 (= setRes!53335 (and tp!1999880 (inv!88963 setElem!53335) e!4320168))))

(declare-fun z!3517 () (Set Context!14656))

(declare-fun setRest!53335 () (Set Context!14656))

(assert (=> setNonEmpty!53335 (= z!3517 (set.union (set.insert setElem!53335 (as set.empty (Set Context!14656))) setRest!53335))))

(declare-fun b!7194236 () Bool)

(declare-fun e!4320171 () Bool)

(declare-fun tp_is_empty!46309 () Bool)

(declare-fun tp!1999879 () Bool)

(assert (=> b!7194236 (= e!4320171 (and tp_is_empty!46309 tp!1999879))))

(declare-fun b!7194237 () Bool)

(assert (=> b!7194237 (= e!4320170 e!4320169)))

(declare-fun res!2928831 () Bool)

(assert (=> b!7194237 (=> (not res!2928831) (not e!4320169))))

(declare-fun lt!2571473 () C!37026)

(declare-fun derivationStepZipperUp!2342 (Context!14656 C!37026) (Set Context!14656))

(assert (=> b!7194237 (= res!2928831 (= (derivationStepZipperUp!2342 c!10544 lt!2571473) (as set.empty (Set Context!14656))))))

(declare-fun derivationStepZipper!3237 ((Set Context!14656) C!37026) (Set Context!14656))

(assert (=> b!7194237 (= lt!2571474 (derivationStepZipper!3237 z!3517 lt!2571473))))

(declare-fun head!14709 (List!69850) C!37026)

(assert (=> b!7194237 (= lt!2571473 (head!14709 s!7961))))

(declare-fun b!7194238 () Bool)

(assert (=> b!7194238 (= e!4320169 (= s!7961 Nil!69726))))

(declare-datatypes ((List!69852 0))(
  ( (Nil!69728) (Cons!69728 (h!76176 Context!14656) (t!383877 List!69852)) )
))
(declare-fun lt!2571475 () List!69852)

(declare-fun toList!11315 ((Set Context!14656)) List!69852)

(assert (=> b!7194238 (= lt!2571475 (toList!11315 lt!2571474))))

(declare-fun res!2928834 () Bool)

(assert (=> start!700004 (=> (not res!2928834) (not e!4320170))))

(assert (=> start!700004 (= res!2928834 (= z!3517 (set.insert c!10544 (as set.empty (Set Context!14656)))))))

(assert (=> start!700004 e!4320170))

(declare-fun condSetEmpty!53335 () Bool)

(assert (=> start!700004 (= condSetEmpty!53335 (= z!3517 (as set.empty (Set Context!14656))))))

(assert (=> start!700004 setRes!53335))

(assert (=> start!700004 (and (inv!88963 c!10544) e!4320172)))

(assert (=> start!700004 e!4320171))

(declare-fun setIsEmpty!53335 () Bool)

(assert (=> setIsEmpty!53335 setRes!53335))

(assert (= (and start!700004 res!2928834) b!7194233))

(assert (= (and b!7194233 res!2928829) b!7194235))

(assert (= (and b!7194235 res!2928832) b!7194230))

(assert (= (and b!7194230 res!2928830) b!7194237))

(assert (= (and b!7194237 res!2928831) b!7194234))

(assert (= (and b!7194234 res!2928833) b!7194238))

(assert (= (and start!700004 condSetEmpty!53335) setIsEmpty!53335))

(assert (= (and start!700004 (not condSetEmpty!53335)) setNonEmpty!53335))

(assert (= setNonEmpty!53335 b!7194231))

(assert (= start!700004 b!7194232))

(assert (= (and start!700004 (is-Cons!69726 s!7961)) b!7194236))

(declare-fun m!7888730 () Bool)

(assert (=> setNonEmpty!53335 m!7888730))

(declare-fun m!7888732 () Bool)

(assert (=> b!7194237 m!7888732))

(declare-fun m!7888734 () Bool)

(assert (=> b!7194237 m!7888734))

(declare-fun m!7888736 () Bool)

(assert (=> b!7194237 m!7888736))

(declare-fun m!7888738 () Bool)

(assert (=> b!7194235 m!7888738))

(declare-fun m!7888740 () Bool)

(assert (=> start!700004 m!7888740))

(declare-fun m!7888742 () Bool)

(assert (=> start!700004 m!7888742))

(declare-fun m!7888744 () Bool)

(assert (=> b!7194233 m!7888744))

(declare-fun m!7888746 () Bool)

(assert (=> b!7194238 m!7888746))

(declare-fun m!7888748 () Bool)

(assert (=> b!7194230 m!7888748))

(push 1)

(assert (not b!7194237))

(assert (not b!7194235))

(assert tp_is_empty!46309)

(assert (not b!7194231))

(assert (not start!700004))

(assert (not b!7194236))

(assert (not b!7194233))

(assert (not b!7194230))

(assert (not setNonEmpty!53335))

(assert (not b!7194238))

(assert (not b!7194232))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2241147 () Bool)

(declare-fun lambda!438017 () Int)

(declare-fun forall!17202 (List!69851 Int) Bool)

(assert (=> d!2241147 (= (inv!88963 setElem!53335) (forall!17202 (exprs!7828 setElem!53335) lambda!438017))))

(declare-fun bs!1900429 () Bool)

(assert (= bs!1900429 d!2241147))

(declare-fun m!7888782 () Bool)

(assert (=> bs!1900429 m!7888782))

(assert (=> setNonEmpty!53335 d!2241147))

(declare-fun d!2241157 () Bool)

(assert (=> d!2241157 (= (head!14708 (exprs!7828 c!10544)) (h!76175 (exprs!7828 c!10544)))))

(assert (=> b!7194235 d!2241157))

(declare-fun bs!1900430 () Bool)

(declare-fun d!2241159 () Bool)

(assert (= bs!1900430 (and d!2241159 d!2241147)))

(declare-fun lambda!438018 () Int)

(assert (=> bs!1900430 (= lambda!438018 lambda!438017)))

(assert (=> d!2241159 (= (inv!88963 c!10544) (forall!17202 (exprs!7828 c!10544) lambda!438018))))

(declare-fun bs!1900431 () Bool)

(assert (= bs!1900431 d!2241159))

(declare-fun m!7888784 () Bool)

(assert (=> bs!1900431 m!7888784))

(assert (=> start!700004 d!2241159))

(declare-fun d!2241161 () Bool)

(assert (=> d!2241161 (= (isEmpty!40247 s!7961) (is-Nil!69726 s!7961))))

(assert (=> b!7194230 d!2241161))

(declare-fun d!2241163 () Bool)

(declare-fun e!4320202 () Bool)

(assert (=> d!2241163 e!4320202))

(declare-fun res!2928861 () Bool)

(assert (=> d!2241163 (=> (not res!2928861) (not e!4320202))))

(declare-fun lt!2571490 () List!69852)

(declare-fun noDuplicate!2901 (List!69852) Bool)

(assert (=> d!2241163 (= res!2928861 (noDuplicate!2901 lt!2571490))))

(declare-fun choose!55424 ((Set Context!14656)) List!69852)

(assert (=> d!2241163 (= lt!2571490 (choose!55424 lt!2571474))))

(assert (=> d!2241163 (= (toList!11315 lt!2571474) lt!2571490)))

(declare-fun b!7194286 () Bool)

(declare-fun content!14330 (List!69852) (Set Context!14656))

(assert (=> b!7194286 (= e!4320202 (= (content!14330 lt!2571490) lt!2571474))))

(assert (= (and d!2241163 res!2928861) b!7194286))

(declare-fun m!7888786 () Bool)

(assert (=> d!2241163 m!7888786))

(declare-fun m!7888788 () Bool)

(assert (=> d!2241163 m!7888788))

(declare-fun m!7888790 () Bool)

(assert (=> b!7194286 m!7888790))

(assert (=> b!7194238 d!2241163))

(declare-fun b!7194297 () Bool)

(declare-fun e!4320210 () (Set Context!14656))

(declare-fun e!4320209 () (Set Context!14656))

(assert (=> b!7194297 (= e!4320210 e!4320209)))

(declare-fun c!1339031 () Bool)

(assert (=> b!7194297 (= c!1339031 (is-Cons!69727 (exprs!7828 c!10544)))))

(declare-fun b!7194298 () Bool)

(declare-fun e!4320211 () Bool)

(declare-fun nullable!7790 (Regex!18376) Bool)

(assert (=> b!7194298 (= e!4320211 (nullable!7790 (h!76175 (exprs!7828 c!10544))))))

(declare-fun d!2241165 () Bool)

(declare-fun c!1339030 () Bool)

(assert (=> d!2241165 (= c!1339030 e!4320211)))

(declare-fun res!2928864 () Bool)

(assert (=> d!2241165 (=> (not res!2928864) (not e!4320211))))

(assert (=> d!2241165 (= res!2928864 (is-Cons!69727 (exprs!7828 c!10544)))))

(assert (=> d!2241165 (= (derivationStepZipperUp!2342 c!10544 lt!2571473) e!4320210)))

(declare-fun b!7194299 () Bool)

(assert (=> b!7194299 (= e!4320209 (as set.empty (Set Context!14656)))))

(declare-fun bm!656010 () Bool)

(declare-fun call!656015 () (Set Context!14656))

(declare-fun derivationStepZipperDown!2521 (Regex!18376 Context!14656 C!37026) (Set Context!14656))

(assert (=> bm!656010 (= call!656015 (derivationStepZipperDown!2521 (h!76175 (exprs!7828 c!10544)) (Context!14657 (t!383876 (exprs!7828 c!10544))) lt!2571473))))

(declare-fun b!7194300 () Bool)

(assert (=> b!7194300 (= e!4320209 call!656015)))

(declare-fun b!7194301 () Bool)

(assert (=> b!7194301 (= e!4320210 (set.union call!656015 (derivationStepZipperUp!2342 (Context!14657 (t!383876 (exprs!7828 c!10544))) lt!2571473)))))

(assert (= (and d!2241165 res!2928864) b!7194298))

(assert (= (and d!2241165 c!1339030) b!7194301))

(assert (= (and d!2241165 (not c!1339030)) b!7194297))

(assert (= (and b!7194297 c!1339031) b!7194300))

(assert (= (and b!7194297 (not c!1339031)) b!7194299))

(assert (= (or b!7194301 b!7194300) bm!656010))

(declare-fun m!7888792 () Bool)

(assert (=> b!7194298 m!7888792))

(declare-fun m!7888794 () Bool)

(assert (=> bm!656010 m!7888794))

(declare-fun m!7888796 () Bool)

(assert (=> b!7194301 m!7888796))

(assert (=> b!7194237 d!2241165))

(declare-fun d!2241167 () Bool)

(assert (=> d!2241167 true))

(declare-fun lambda!438021 () Int)

(declare-fun flatMap!2680 ((Set Context!14656) Int) (Set Context!14656))

(assert (=> d!2241167 (= (derivationStepZipper!3237 z!3517 lt!2571473) (flatMap!2680 z!3517 lambda!438021))))

(declare-fun bs!1900432 () Bool)

(assert (= bs!1900432 d!2241167))

(declare-fun m!7888798 () Bool)

(assert (=> bs!1900432 m!7888798))

(assert (=> b!7194237 d!2241167))

(declare-fun d!2241169 () Bool)

(assert (=> d!2241169 (= (head!14709 s!7961) (h!76174 s!7961))))

(assert (=> b!7194237 d!2241169))

(declare-fun d!2241171 () Bool)

(assert (=> d!2241171 (= (isEmpty!40248 (exprs!7828 c!10544)) (is-Nil!69727 (exprs!7828 c!10544)))))

(assert (=> b!7194233 d!2241171))

(declare-fun condSetEmpty!53341 () Bool)

(assert (=> setNonEmpty!53335 (= condSetEmpty!53341 (= setRest!53335 (as set.empty (Set Context!14656))))))

(declare-fun setRes!53341 () Bool)

(assert (=> setNonEmpty!53335 (= tp!1999880 setRes!53341)))

(declare-fun setIsEmpty!53341 () Bool)

(assert (=> setIsEmpty!53341 setRes!53341))

(declare-fun e!4320214 () Bool)

(declare-fun setNonEmpty!53341 () Bool)

(declare-fun tp!1999897 () Bool)

(declare-fun setElem!53341 () Context!14656)

(assert (=> setNonEmpty!53341 (= setRes!53341 (and tp!1999897 (inv!88963 setElem!53341) e!4320214))))

(declare-fun setRest!53341 () (Set Context!14656))

(assert (=> setNonEmpty!53341 (= setRest!53335 (set.union (set.insert setElem!53341 (as set.empty (Set Context!14656))) setRest!53341))))

(declare-fun b!7194308 () Bool)

(declare-fun tp!1999898 () Bool)

(assert (=> b!7194308 (= e!4320214 tp!1999898)))

(assert (= (and setNonEmpty!53335 condSetEmpty!53341) setIsEmpty!53341))

(assert (= (and setNonEmpty!53335 (not condSetEmpty!53341)) setNonEmpty!53341))

(assert (= setNonEmpty!53341 b!7194308))

(declare-fun m!7888800 () Bool)

(assert (=> setNonEmpty!53341 m!7888800))

(declare-fun b!7194313 () Bool)

(declare-fun e!4320217 () Bool)

(declare-fun tp!1999903 () Bool)

(declare-fun tp!1999904 () Bool)

(assert (=> b!7194313 (= e!4320217 (and tp!1999903 tp!1999904))))

(assert (=> b!7194232 (= tp!1999878 e!4320217)))

(assert (= (and b!7194232 (is-Cons!69727 (exprs!7828 c!10544))) b!7194313))

(declare-fun b!7194314 () Bool)

(declare-fun e!4320218 () Bool)

(declare-fun tp!1999905 () Bool)

(declare-fun tp!1999906 () Bool)

(assert (=> b!7194314 (= e!4320218 (and tp!1999905 tp!1999906))))

(assert (=> b!7194231 (= tp!1999877 e!4320218)))

(assert (= (and b!7194231 (is-Cons!69727 (exprs!7828 setElem!53335))) b!7194314))

(declare-fun b!7194319 () Bool)

(declare-fun e!4320221 () Bool)

(declare-fun tp!1999909 () Bool)

(assert (=> b!7194319 (= e!4320221 (and tp_is_empty!46309 tp!1999909))))

(assert (=> b!7194236 (= tp!1999879 e!4320221)))

(assert (= (and b!7194236 (is-Cons!69726 (t!383875 s!7961))) b!7194319))

(push 1)

(assert (not b!7194319))

(assert (not b!7194308))

(assert (not d!2241167))

(assert (not d!2241163))

(assert (not d!2241147))

(assert (not b!7194298))

(assert (not b!7194313))

(assert (not b!7194301))

(assert (not b!7194314))

(assert (not setNonEmpty!53341))

(assert (not bm!656010))

(assert (not d!2241159))

(assert (not b!7194286))

(assert tp_is_empty!46309)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

