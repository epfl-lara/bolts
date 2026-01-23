; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!677708 () Bool)

(assert start!677708)

(declare-fun b!7023199 () Bool)

(assert (=> b!7023199 true))

(declare-fun b!7023196 () Bool)

(declare-fun res!2867038 () Bool)

(declare-fun e!4221906 () Bool)

(assert (=> b!7023196 (=> (not res!2867038) (not e!4221906))))

(declare-datatypes ((C!35114 0))(
  ( (C!35115 (val!27259 Int)) )
))
(declare-datatypes ((List!67794 0))(
  ( (Nil!67670) (Cons!67670 (h!74118 C!35114) (t!381549 List!67794)) )
))
(declare-fun s!7408 () List!67794)

(assert (=> b!7023196 (= res!2867038 (is-Cons!67670 s!7408))))

(declare-fun b!7023198 () Bool)

(declare-fun e!4221904 () Bool)

(declare-fun tp_is_empty!44069 () Bool)

(declare-fun tp!1934830 () Bool)

(assert (=> b!7023198 (= e!4221904 (and tp_is_empty!44069 tp!1934830))))

(declare-fun setIsEmpty!48857 () Bool)

(declare-fun setRes!48857 () Bool)

(assert (=> setIsEmpty!48857 setRes!48857))

(declare-datatypes ((Regex!17422 0))(
  ( (ElementMatch!17422 (c!1305299 C!35114)) (Concat!26267 (regOne!35356 Regex!17422) (regTwo!35356 Regex!17422)) (EmptyExpr!17422) (Star!17422 (reg!17751 Regex!17422)) (EmptyLang!17422) (Union!17422 (regOne!35357 Regex!17422) (regTwo!35357 Regex!17422)) )
))
(declare-datatypes ((List!67795 0))(
  ( (Nil!67671) (Cons!67671 (h!74119 Regex!17422) (t!381550 List!67795)) )
))
(declare-datatypes ((Context!12836 0))(
  ( (Context!12837 (exprs!6918 List!67795)) )
))
(declare-fun lt!2513026 () (Set Context!12836))

(declare-fun lambda!412160 () Int)

(declare-fun matchZipper!2962 ((Set Context!12836) List!67794) Bool)

(declare-fun getWitness!1400 ((Set Context!12836) Int) Context!12836)

(assert (=> b!7023199 (= e!4221906 (not (matchZipper!2962 (set.insert (getWitness!1400 lt!2513026 lambda!412160) (as set.empty (Set Context!12836))) s!7408)))))

(declare-datatypes ((List!67796 0))(
  ( (Nil!67672) (Cons!67672 (h!74120 Context!12836) (t!381551 List!67796)) )
))
(declare-fun lt!2513027 () List!67796)

(declare-fun exists!3319 (List!67796 Int) Bool)

(assert (=> b!7023199 (exists!3319 lt!2513027 lambda!412160)))

(declare-datatypes ((Unit!161506 0))(
  ( (Unit!161507) )
))
(declare-fun lt!2513028 () Unit!161506)

(declare-fun lemmaZipperMatchesExistsMatchingContext!361 (List!67796 List!67794) Unit!161506)

(assert (=> b!7023199 (= lt!2513028 (lemmaZipperMatchesExistsMatchingContext!361 lt!2513027 s!7408))))

(declare-fun toList!10765 ((Set Context!12836)) List!67796)

(assert (=> b!7023199 (= lt!2513027 (toList!10765 lt!2513026))))

(declare-fun setNonEmpty!48857 () Bool)

(declare-fun tp!1934833 () Bool)

(declare-fun setElem!48857 () Context!12836)

(declare-fun e!4221905 () Bool)

(declare-fun inv!86415 (Context!12836) Bool)

(assert (=> setNonEmpty!48857 (= setRes!48857 (and tp!1934833 (inv!86415 setElem!48857) e!4221905))))

(declare-fun z1!570 () (Set Context!12836))

(declare-fun setRest!48857 () (Set Context!12836))

(assert (=> setNonEmpty!48857 (= z1!570 (set.union (set.insert setElem!48857 (as set.empty (Set Context!12836))) setRest!48857))))

(declare-fun b!7023200 () Bool)

(declare-fun e!4221903 () Bool)

(declare-fun tp!1934832 () Bool)

(assert (=> b!7023200 (= e!4221903 tp!1934832)))

(declare-fun res!2867039 () Bool)

(assert (=> start!677708 (=> (not res!2867039) (not e!4221906))))

(assert (=> start!677708 (= res!2867039 (matchZipper!2962 lt!2513026 s!7408))))

(declare-fun ct2!306 () Context!12836)

(declare-fun appendTo!543 ((Set Context!12836) Context!12836) (Set Context!12836))

(assert (=> start!677708 (= lt!2513026 (appendTo!543 z1!570 ct2!306))))

(assert (=> start!677708 e!4221906))

(declare-fun condSetEmpty!48857 () Bool)

(assert (=> start!677708 (= condSetEmpty!48857 (= z1!570 (as set.empty (Set Context!12836))))))

(assert (=> start!677708 setRes!48857))

(assert (=> start!677708 (and (inv!86415 ct2!306) e!4221903)))

(assert (=> start!677708 e!4221904))

(declare-fun b!7023197 () Bool)

(declare-fun tp!1934831 () Bool)

(assert (=> b!7023197 (= e!4221905 tp!1934831)))

(assert (= (and start!677708 res!2867039) b!7023196))

(assert (= (and b!7023196 res!2867038) b!7023199))

(assert (= (and start!677708 condSetEmpty!48857) setIsEmpty!48857))

(assert (= (and start!677708 (not condSetEmpty!48857)) setNonEmpty!48857))

(assert (= setNonEmpty!48857 b!7023197))

(assert (= start!677708 b!7023200))

(assert (= (and start!677708 (is-Cons!67670 s!7408)) b!7023198))

(declare-fun m!7725534 () Bool)

(assert (=> b!7023199 m!7725534))

(declare-fun m!7725536 () Bool)

(assert (=> b!7023199 m!7725536))

(declare-fun m!7725538 () Bool)

(assert (=> b!7023199 m!7725538))

(declare-fun m!7725540 () Bool)

(assert (=> b!7023199 m!7725540))

(assert (=> b!7023199 m!7725538))

(declare-fun m!7725542 () Bool)

(assert (=> b!7023199 m!7725542))

(assert (=> b!7023199 m!7725542))

(declare-fun m!7725544 () Bool)

(assert (=> b!7023199 m!7725544))

(declare-fun m!7725546 () Bool)

(assert (=> setNonEmpty!48857 m!7725546))

(declare-fun m!7725548 () Bool)

(assert (=> start!677708 m!7725548))

(declare-fun m!7725550 () Bool)

(assert (=> start!677708 m!7725550))

(declare-fun m!7725552 () Bool)

(assert (=> start!677708 m!7725552))

(push 1)

(assert (not b!7023197))

(assert (not b!7023198))

(assert tp_is_empty!44069)

(assert (not start!677708))

(assert (not setNonEmpty!48857))

(assert (not b!7023199))

(assert (not b!7023200))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2189271 () Bool)

(declare-fun c!1305307 () Bool)

(declare-fun isEmpty!39469 (List!67794) Bool)

(assert (=> d!2189271 (= c!1305307 (isEmpty!39469 s!7408))))

(declare-fun e!4221921 () Bool)

(assert (=> d!2189271 (= (matchZipper!2962 lt!2513026 s!7408) e!4221921)))

(declare-fun b!7023224 () Bool)

(declare-fun nullableZipper!2549 ((Set Context!12836)) Bool)

(assert (=> b!7023224 (= e!4221921 (nullableZipper!2549 lt!2513026))))

(declare-fun b!7023225 () Bool)

(declare-fun derivationStepZipper!2881 ((Set Context!12836) C!35114) (Set Context!12836))

(declare-fun head!14224 (List!67794) C!35114)

(declare-fun tail!13491 (List!67794) List!67794)

(assert (=> b!7023225 (= e!4221921 (matchZipper!2962 (derivationStepZipper!2881 lt!2513026 (head!14224 s!7408)) (tail!13491 s!7408)))))

(assert (= (and d!2189271 c!1305307) b!7023224))

(assert (= (and d!2189271 (not c!1305307)) b!7023225))

(declare-fun m!7725574 () Bool)

(assert (=> d!2189271 m!7725574))

(declare-fun m!7725576 () Bool)

(assert (=> b!7023224 m!7725576))

(declare-fun m!7725578 () Bool)

(assert (=> b!7023225 m!7725578))

(assert (=> b!7023225 m!7725578))

(declare-fun m!7725580 () Bool)

(assert (=> b!7023225 m!7725580))

(declare-fun m!7725582 () Bool)

(assert (=> b!7023225 m!7725582))

(assert (=> b!7023225 m!7725580))

(assert (=> b!7023225 m!7725582))

(declare-fun m!7725584 () Bool)

(assert (=> b!7023225 m!7725584))

(assert (=> start!677708 d!2189271))

(declare-fun d!2189273 () Bool)

(assert (=> d!2189273 true))

(declare-fun lambda!412170 () Int)

(declare-fun map!15707 ((Set Context!12836) Int) (Set Context!12836))

(assert (=> d!2189273 (= (appendTo!543 z1!570 ct2!306) (map!15707 z1!570 lambda!412170))))

(declare-fun bs!1868043 () Bool)

(assert (= bs!1868043 d!2189273))

(declare-fun m!7725586 () Bool)

(assert (=> bs!1868043 m!7725586))

(assert (=> start!677708 d!2189273))

(declare-fun d!2189275 () Bool)

(declare-fun lambda!412173 () Int)

(declare-fun forall!16318 (List!67795 Int) Bool)

(assert (=> d!2189275 (= (inv!86415 ct2!306) (forall!16318 (exprs!6918 ct2!306) lambda!412173))))

(declare-fun bs!1868044 () Bool)

(assert (= bs!1868044 d!2189275))

(declare-fun m!7725588 () Bool)

(assert (=> bs!1868044 m!7725588))

(assert (=> start!677708 d!2189275))

(declare-fun bs!1868045 () Bool)

(declare-fun d!2189277 () Bool)

(assert (= bs!1868045 (and d!2189277 d!2189275)))

(declare-fun lambda!412174 () Int)

(assert (=> bs!1868045 (= lambda!412174 lambda!412173)))

(assert (=> d!2189277 (= (inv!86415 setElem!48857) (forall!16318 (exprs!6918 setElem!48857) lambda!412174))))

(declare-fun bs!1868046 () Bool)

(assert (= bs!1868046 d!2189277))

(declare-fun m!7725590 () Bool)

(assert (=> bs!1868046 m!7725590))

(assert (=> setNonEmpty!48857 d!2189277))

(declare-fun bs!1868047 () Bool)

(declare-fun d!2189281 () Bool)

(assert (= bs!1868047 (and d!2189281 b!7023199)))

(declare-fun lambda!412177 () Int)

(assert (=> bs!1868047 (not (= lambda!412177 lambda!412160))))

(assert (=> d!2189281 true))

(declare-fun order!28109 () Int)

(declare-fun dynLambda!27263 (Int Int) Int)

(assert (=> d!2189281 (< (dynLambda!27263 order!28109 lambda!412160) (dynLambda!27263 order!28109 lambda!412177))))

(declare-fun forall!16319 (List!67796 Int) Bool)

(assert (=> d!2189281 (= (exists!3319 lt!2513027 lambda!412160) (not (forall!16319 lt!2513027 lambda!412177)))))

(declare-fun bs!1868048 () Bool)

(assert (= bs!1868048 d!2189281))

(declare-fun m!7725592 () Bool)

(assert (=> bs!1868048 m!7725592))

(assert (=> b!7023199 d!2189281))

(declare-fun bs!1868049 () Bool)

(declare-fun d!2189283 () Bool)

(assert (= bs!1868049 (and d!2189283 b!7023199)))

(declare-fun lambda!412182 () Int)

(assert (=> bs!1868049 (= lambda!412182 lambda!412160)))

(declare-fun bs!1868050 () Bool)

(assert (= bs!1868050 (and d!2189283 d!2189281)))

(assert (=> bs!1868050 (not (= lambda!412182 lambda!412177))))

(assert (=> d!2189283 true))

(assert (=> d!2189283 (exists!3319 lt!2513027 lambda!412182)))

(declare-fun lt!2513042 () Unit!161506)

(declare-fun choose!53013 (List!67796 List!67794) Unit!161506)

(assert (=> d!2189283 (= lt!2513042 (choose!53013 lt!2513027 s!7408))))

(declare-fun content!13472 (List!67796) (Set Context!12836))

(assert (=> d!2189283 (matchZipper!2962 (content!13472 lt!2513027) s!7408)))

(assert (=> d!2189283 (= (lemmaZipperMatchesExistsMatchingContext!361 lt!2513027 s!7408) lt!2513042)))

(declare-fun bs!1868051 () Bool)

(assert (= bs!1868051 d!2189283))

(declare-fun m!7725594 () Bool)

(assert (=> bs!1868051 m!7725594))

(declare-fun m!7725596 () Bool)

(assert (=> bs!1868051 m!7725596))

(declare-fun m!7725598 () Bool)

(assert (=> bs!1868051 m!7725598))

(assert (=> bs!1868051 m!7725598))

(declare-fun m!7725600 () Bool)

(assert (=> bs!1868051 m!7725600))

(assert (=> b!7023199 d!2189283))

(declare-fun d!2189285 () Bool)

(declare-fun e!4221924 () Bool)

(assert (=> d!2189285 e!4221924))

(declare-fun res!2867048 () Bool)

(assert (=> d!2189285 (=> (not res!2867048) (not e!4221924))))

(declare-fun lt!2513045 () Context!12836)

(declare-fun dynLambda!27264 (Int Context!12836) Bool)

(assert (=> d!2189285 (= res!2867048 (dynLambda!27264 lambda!412160 lt!2513045))))

(declare-fun getWitness!1402 (List!67796 Int) Context!12836)

(assert (=> d!2189285 (= lt!2513045 (getWitness!1402 (toList!10765 lt!2513026) lambda!412160))))

(declare-fun exists!3321 ((Set Context!12836) Int) Bool)

(assert (=> d!2189285 (exists!3321 lt!2513026 lambda!412160)))

(assert (=> d!2189285 (= (getWitness!1400 lt!2513026 lambda!412160) lt!2513045)))

(declare-fun b!7023232 () Bool)

(assert (=> b!7023232 (= e!4221924 (set.member lt!2513045 lt!2513026))))

(assert (= (and d!2189285 res!2867048) b!7023232))

(declare-fun b_lambda!265339 () Bool)

(assert (=> (not b_lambda!265339) (not d!2189285)))

(declare-fun m!7725604 () Bool)

(assert (=> d!2189285 m!7725604))

(assert (=> d!2189285 m!7725540))

(assert (=> d!2189285 m!7725540))

(declare-fun m!7725606 () Bool)

(assert (=> d!2189285 m!7725606))

(declare-fun m!7725608 () Bool)

(assert (=> d!2189285 m!7725608))

(declare-fun m!7725610 () Bool)

(assert (=> b!7023232 m!7725610))

(assert (=> b!7023199 d!2189285))

(declare-fun d!2189289 () Bool)

(declare-fun e!4221927 () Bool)

(assert (=> d!2189289 e!4221927))

(declare-fun res!2867051 () Bool)

(assert (=> d!2189289 (=> (not res!2867051) (not e!4221927))))

(declare-fun lt!2513048 () List!67796)

(declare-fun noDuplicate!2599 (List!67796) Bool)

(assert (=> d!2189289 (= res!2867051 (noDuplicate!2599 lt!2513048))))

(declare-fun choose!53014 ((Set Context!12836)) List!67796)

(assert (=> d!2189289 (= lt!2513048 (choose!53014 lt!2513026))))

(assert (=> d!2189289 (= (toList!10765 lt!2513026) lt!2513048)))

(declare-fun b!7023235 () Bool)

(assert (=> b!7023235 (= e!4221927 (= (content!13472 lt!2513048) lt!2513026))))

(assert (= (and d!2189289 res!2867051) b!7023235))

(declare-fun m!7725612 () Bool)

(assert (=> d!2189289 m!7725612))

(declare-fun m!7725614 () Bool)

(assert (=> d!2189289 m!7725614))

(declare-fun m!7725616 () Bool)

(assert (=> b!7023235 m!7725616))

(assert (=> b!7023199 d!2189289))

(declare-fun d!2189291 () Bool)

(declare-fun c!1305311 () Bool)

(assert (=> d!2189291 (= c!1305311 (isEmpty!39469 s!7408))))

(declare-fun e!4221928 () Bool)

(assert (=> d!2189291 (= (matchZipper!2962 (set.insert (getWitness!1400 lt!2513026 lambda!412160) (as set.empty (Set Context!12836))) s!7408) e!4221928)))

(declare-fun b!7023236 () Bool)

(assert (=> b!7023236 (= e!4221928 (nullableZipper!2549 (set.insert (getWitness!1400 lt!2513026 lambda!412160) (as set.empty (Set Context!12836)))))))

(declare-fun b!7023237 () Bool)

(assert (=> b!7023237 (= e!4221928 (matchZipper!2962 (derivationStepZipper!2881 (set.insert (getWitness!1400 lt!2513026 lambda!412160) (as set.empty (Set Context!12836))) (head!14224 s!7408)) (tail!13491 s!7408)))))

(assert (= (and d!2189291 c!1305311) b!7023236))

(assert (= (and d!2189291 (not c!1305311)) b!7023237))

(assert (=> d!2189291 m!7725574))

(assert (=> b!7023236 m!7725542))

(declare-fun m!7725618 () Bool)

(assert (=> b!7023236 m!7725618))

(assert (=> b!7023237 m!7725578))

(assert (=> b!7023237 m!7725542))

(assert (=> b!7023237 m!7725578))

(declare-fun m!7725620 () Bool)

(assert (=> b!7023237 m!7725620))

(assert (=> b!7023237 m!7725582))

(assert (=> b!7023237 m!7725620))

(assert (=> b!7023237 m!7725582))

(declare-fun m!7725622 () Bool)

(assert (=> b!7023237 m!7725622))

(assert (=> b!7023199 d!2189291))

(declare-fun b!7023242 () Bool)

(declare-fun e!4221931 () Bool)

(declare-fun tp!1934850 () Bool)

(declare-fun tp!1934851 () Bool)

(assert (=> b!7023242 (= e!4221931 (and tp!1934850 tp!1934851))))

(assert (=> b!7023197 (= tp!1934831 e!4221931)))

(assert (= (and b!7023197 (is-Cons!67671 (exprs!6918 setElem!48857))) b!7023242))

(declare-fun b!7023243 () Bool)

(declare-fun e!4221932 () Bool)

(declare-fun tp!1934852 () Bool)

(declare-fun tp!1934853 () Bool)

(assert (=> b!7023243 (= e!4221932 (and tp!1934852 tp!1934853))))

(assert (=> b!7023200 (= tp!1934832 e!4221932)))

(assert (= (and b!7023200 (is-Cons!67671 (exprs!6918 ct2!306))) b!7023243))

(declare-fun condSetEmpty!48863 () Bool)

(assert (=> setNonEmpty!48857 (= condSetEmpty!48863 (= setRest!48857 (as set.empty (Set Context!12836))))))

(declare-fun setRes!48863 () Bool)

(assert (=> setNonEmpty!48857 (= tp!1934833 setRes!48863)))

(declare-fun setIsEmpty!48863 () Bool)

(assert (=> setIsEmpty!48863 setRes!48863))

(declare-fun setElem!48863 () Context!12836)

(declare-fun setNonEmpty!48863 () Bool)

(declare-fun e!4221937 () Bool)

(declare-fun tp!1934859 () Bool)

(assert (=> setNonEmpty!48863 (= setRes!48863 (and tp!1934859 (inv!86415 setElem!48863) e!4221937))))

(declare-fun setRest!48863 () (Set Context!12836))

(assert (=> setNonEmpty!48863 (= setRest!48857 (set.union (set.insert setElem!48863 (as set.empty (Set Context!12836))) setRest!48863))))

(declare-fun b!7023252 () Bool)

(declare-fun tp!1934858 () Bool)

(assert (=> b!7023252 (= e!4221937 tp!1934858)))

(assert (= (and setNonEmpty!48857 condSetEmpty!48863) setIsEmpty!48863))

(assert (= (and setNonEmpty!48857 (not condSetEmpty!48863)) setNonEmpty!48863))

(assert (= setNonEmpty!48863 b!7023252))

(declare-fun m!7725624 () Bool)

(assert (=> setNonEmpty!48863 m!7725624))

(declare-fun b!7023257 () Bool)

(declare-fun e!4221940 () Bool)

(declare-fun tp!1934862 () Bool)

(assert (=> b!7023257 (= e!4221940 (and tp_is_empty!44069 tp!1934862))))

(assert (=> b!7023198 (= tp!1934830 e!4221940)))

(assert (= (and b!7023198 (is-Cons!67670 (t!381549 s!7408))) b!7023257))

(declare-fun b_lambda!265341 () Bool)

(assert (= b_lambda!265339 (or b!7023199 b_lambda!265341)))

(declare-fun bs!1868053 () Bool)

(declare-fun d!2189293 () Bool)

(assert (= bs!1868053 (and d!2189293 b!7023199)))

(assert (=> bs!1868053 (= (dynLambda!27264 lambda!412160 lt!2513045) (matchZipper!2962 (set.insert lt!2513045 (as set.empty (Set Context!12836))) s!7408))))

(declare-fun m!7725626 () Bool)

(assert (=> bs!1868053 m!7725626))

(assert (=> bs!1868053 m!7725626))

(declare-fun m!7725628 () Bool)

(assert (=> bs!1868053 m!7725628))

(assert (=> d!2189285 d!2189293))

(push 1)

(assert (not b!7023237))

(assert (not b!7023257))

(assert (not d!2189281))

(assert tp_is_empty!44069)

(assert (not d!2189285))

(assert (not b!7023235))

(assert (not b!7023242))

(assert (not b!7023252))

(assert (not bs!1868053))

(assert (not d!2189283))

(assert (not d!2189271))

(assert (not b!7023243))

(assert (not setNonEmpty!48863))

(assert (not d!2189273))

(assert (not d!2189291))

(assert (not b!7023236))

(assert (not b_lambda!265341))

(assert (not d!2189275))

(assert (not d!2189277))

(assert (not b!7023225))

(assert (not d!2189289))

(assert (not b!7023224))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

