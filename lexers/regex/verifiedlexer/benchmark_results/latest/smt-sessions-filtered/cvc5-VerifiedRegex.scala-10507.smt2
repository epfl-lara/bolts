; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!541914 () Bool)

(assert start!541914)

(declare-fun bs!1195027 () Bool)

(declare-fun b!5128797 () Bool)

(declare-fun b!5128792 () Bool)

(assert (= bs!1195027 (and b!5128797 b!5128792)))

(declare-fun lambda!252783 () Int)

(declare-fun lambda!252782 () Int)

(assert (=> bs!1195027 (not (= lambda!252783 lambda!252782))))

(declare-fun bs!1195028 () Bool)

(declare-fun b!5128793 () Bool)

(assert (= bs!1195028 (and b!5128793 b!5128792)))

(declare-fun lambda!252784 () Int)

(assert (=> bs!1195028 (not (= lambda!252784 lambda!252782))))

(declare-fun bs!1195029 () Bool)

(assert (= bs!1195029 (and b!5128793 b!5128797)))

(assert (=> bs!1195029 (not (= lambda!252784 lambda!252783))))

(declare-fun b!5128790 () Bool)

(declare-fun e!3198627 () Bool)

(declare-fun e!3198630 () Bool)

(assert (=> b!5128790 (= e!3198627 e!3198630)))

(declare-fun res!2183827 () Bool)

(assert (=> b!5128790 (=> res!2183827 e!3198630)))

(declare-datatypes ((C!28874 0))(
  ( (C!28875 (val!24089 Int)) )
))
(declare-datatypes ((Regex!14304 0))(
  ( (ElementMatch!14304 (c!881998 C!28874)) (Concat!23149 (regOne!29120 Regex!14304) (regTwo!29120 Regex!14304)) (EmptyExpr!14304) (Star!14304 (reg!14633 Regex!14304)) (EmptyLang!14304) (Union!14304 (regOne!29121 Regex!14304) (regTwo!29121 Regex!14304)) )
))
(declare-datatypes ((List!59537 0))(
  ( (Nil!59413) (Cons!59413 (h!65861 Regex!14304) (t!372564 List!59537)) )
))
(declare-datatypes ((Context!7376 0))(
  ( (Context!7377 (exprs!4188 List!59537)) )
))
(declare-fun lt!2115359 () Context!7376)

(declare-fun lt!2115360 () Regex!14304)

(declare-fun contains!19619 (List!59537 Regex!14304) Bool)

(assert (=> b!5128790 (= res!2183827 (not (contains!19619 (exprs!4188 lt!2115359) lt!2115360)))))

(declare-fun getWitness!727 (List!59537 Int) Regex!14304)

(assert (=> b!5128790 (= lt!2115360 (getWitness!727 (exprs!4188 lt!2115359) lambda!252784))))

(declare-fun setElem!30911 () Context!7376)

(declare-fun e!3198626 () Bool)

(declare-fun setNonEmpty!30911 () Bool)

(declare-fun setRes!30911 () Bool)

(declare-fun tp!1430947 () Bool)

(declare-fun inv!78942 (Context!7376) Bool)

(assert (=> setNonEmpty!30911 (= setRes!30911 (and tp!1430947 (inv!78942 setElem!30911) e!3198626))))

(declare-fun z!1113 () (Set Context!7376))

(declare-fun setRest!30911 () (Set Context!7376))

(assert (=> setNonEmpty!30911 (= z!1113 (set.union (set.insert setElem!30911 (as set.empty (Set Context!7376))) setRest!30911))))

(declare-fun b!5128791 () Bool)

(declare-fun tp!1430946 () Bool)

(assert (=> b!5128791 (= e!3198626 tp!1430946)))

(declare-fun e!3198629 () Bool)

(assert (=> b!5128792 (= e!3198629 (not e!3198627))))

(declare-fun res!2183830 () Bool)

(assert (=> b!5128792 (=> res!2183830 e!3198627)))

(assert (=> b!5128792 (= res!2183830 (not (set.member lt!2115359 z!1113)))))

(declare-fun forall!13697 (List!59537 Int) Bool)

(assert (=> b!5128792 (forall!13697 (exprs!4188 lt!2115359) lambda!252782)))

(declare-datatypes ((Unit!150615 0))(
  ( (Unit!150616) )
))
(declare-fun lt!2115361 () Unit!150615)

(declare-fun lemmaContextForallValidExprs!19 (Context!7376 List!59537) Unit!150615)

(assert (=> b!5128792 (= lt!2115361 (lemmaContextForallValidExprs!19 lt!2115359 (exprs!4188 lt!2115359)))))

(declare-fun res!2183828 () Bool)

(assert (=> b!5128793 (=> res!2183828 e!3198627)))

(declare-fun exists!1572 (List!59537 Int) Bool)

(assert (=> b!5128793 (= res!2183828 (not (exists!1572 (exprs!4188 lt!2115359) lambda!252784)))))

(declare-fun b!5128794 () Bool)

(declare-fun e!3198628 () Bool)

(assert (=> b!5128794 (= e!3198628 e!3198629)))

(declare-fun res!2183826 () Bool)

(assert (=> b!5128794 (=> (not res!2183826) (not e!3198629))))

(declare-fun nullableContext!23 (Context!7376) Bool)

(assert (=> b!5128794 (= res!2183826 (nullableContext!23 lt!2115359))))

(declare-fun lambda!252781 () Int)

(declare-fun getWitness!728 ((Set Context!7376) Int) Context!7376)

(assert (=> b!5128794 (= lt!2115359 (getWitness!728 z!1113 lambda!252781))))

(declare-fun setIsEmpty!30911 () Bool)

(assert (=> setIsEmpty!30911 setRes!30911))

(declare-fun b!5128795 () Bool)

(declare-fun lostCause!1239 (Regex!14304) Bool)

(assert (=> b!5128795 (= e!3198630 (lostCause!1239 lt!2115360))))

(declare-fun b!5128796 () Bool)

(declare-fun res!2183824 () Bool)

(assert (=> b!5128796 (=> res!2183824 e!3198627)))

(declare-fun lostCause!1240 (Context!7376) Bool)

(assert (=> b!5128796 (= res!2183824 (not (lostCause!1240 lt!2115359)))))

(declare-fun res!2183823 () Bool)

(assert (=> b!5128797 (=> res!2183823 e!3198627)))

(assert (=> b!5128797 (= res!2183823 (not (forall!13697 (exprs!4188 lt!2115359) lambda!252783)))))

(declare-fun res!2183829 () Bool)

(assert (=> start!541914 (=> (not res!2183829) (not e!3198628))))

(declare-fun nullableZipper!1089 ((Set Context!7376)) Bool)

(assert (=> start!541914 (= res!2183829 (nullableZipper!1089 z!1113))))

(assert (=> start!541914 e!3198628))

(declare-fun condSetEmpty!30911 () Bool)

(assert (=> start!541914 (= condSetEmpty!30911 (= z!1113 (as set.empty (Set Context!7376))))))

(assert (=> start!541914 setRes!30911))

(declare-fun b!5128798 () Bool)

(declare-fun res!2183825 () Bool)

(assert (=> b!5128798 (=> (not res!2183825) (not e!3198628))))

(declare-fun exists!1573 ((Set Context!7376) Int) Bool)

(assert (=> b!5128798 (= res!2183825 (exists!1573 z!1113 lambda!252781))))

(assert (= (and start!541914 res!2183829) b!5128798))

(assert (= (and b!5128798 res!2183825) b!5128794))

(assert (= (and b!5128794 res!2183826) b!5128792))

(assert (= (and b!5128792 (not res!2183830)) b!5128797))

(assert (= (and b!5128797 (not res!2183823)) b!5128796))

(assert (= (and b!5128796 (not res!2183824)) b!5128793))

(assert (= (and b!5128793 (not res!2183828)) b!5128790))

(assert (= (and b!5128790 (not res!2183827)) b!5128795))

(assert (= (and start!541914 condSetEmpty!30911) setIsEmpty!30911))

(assert (= (and start!541914 (not condSetEmpty!30911)) setNonEmpty!30911))

(assert (= setNonEmpty!30911 b!5128791))

(declare-fun m!6193186 () Bool)

(assert (=> start!541914 m!6193186))

(declare-fun m!6193188 () Bool)

(assert (=> b!5128794 m!6193188))

(declare-fun m!6193190 () Bool)

(assert (=> b!5128794 m!6193190))

(declare-fun m!6193192 () Bool)

(assert (=> b!5128798 m!6193192))

(declare-fun m!6193194 () Bool)

(assert (=> setNonEmpty!30911 m!6193194))

(declare-fun m!6193196 () Bool)

(assert (=> b!5128796 m!6193196))

(declare-fun m!6193198 () Bool)

(assert (=> b!5128795 m!6193198))

(declare-fun m!6193200 () Bool)

(assert (=> b!5128792 m!6193200))

(declare-fun m!6193202 () Bool)

(assert (=> b!5128792 m!6193202))

(declare-fun m!6193204 () Bool)

(assert (=> b!5128792 m!6193204))

(declare-fun m!6193206 () Bool)

(assert (=> b!5128793 m!6193206))

(declare-fun m!6193208 () Bool)

(assert (=> b!5128790 m!6193208))

(declare-fun m!6193210 () Bool)

(assert (=> b!5128790 m!6193210))

(declare-fun m!6193212 () Bool)

(assert (=> b!5128797 m!6193212))

(push 1)

(assert (not b!5128792))

(assert (not b!5128791))

(assert (not setNonEmpty!30911))

(assert (not b!5128795))

(assert (not start!541914))

(assert (not b!5128790))

(assert (not b!5128797))

(assert (not b!5128793))

(assert (not b!5128794))

(assert (not b!5128796))

(assert (not b!5128798))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1195033 () Bool)

(declare-fun d!1659162 () Bool)

(assert (= bs!1195033 (and d!1659162 b!5128792)))

(declare-fun lambda!252803 () Int)

(assert (=> bs!1195033 (not (= lambda!252803 lambda!252782))))

(declare-fun bs!1195034 () Bool)

(assert (= bs!1195034 (and d!1659162 b!5128797)))

(assert (=> bs!1195034 (not (= lambda!252803 lambda!252783))))

(declare-fun bs!1195035 () Bool)

(assert (= bs!1195035 (and d!1659162 b!5128793)))

(assert (=> bs!1195035 (not (= lambda!252803 lambda!252784))))

(assert (=> d!1659162 true))

(declare-fun order!26823 () Int)

(declare-fun dynLambda!23647 (Int Int) Int)

(assert (=> d!1659162 (< (dynLambda!23647 order!26823 lambda!252784) (dynLambda!23647 order!26823 lambda!252803))))

(assert (=> d!1659162 (= (exists!1572 (exprs!4188 lt!2115359) lambda!252784) (not (forall!13697 (exprs!4188 lt!2115359) lambda!252803)))))

(declare-fun bs!1195036 () Bool)

(assert (= bs!1195036 d!1659162))

(declare-fun m!6193242 () Bool)

(assert (=> bs!1195036 m!6193242))

(assert (=> b!5128793 d!1659162))

(declare-fun d!1659164 () Bool)

(declare-fun lt!2115373 () Bool)

(declare-datatypes ((List!59539 0))(
  ( (Nil!59415) (Cons!59415 (h!65863 Context!7376) (t!372566 List!59539)) )
))
(declare-fun exists!1576 (List!59539 Int) Bool)

(declare-fun toList!8300 ((Set Context!7376)) List!59539)

(assert (=> d!1659164 (= lt!2115373 (exists!1576 (toList!8300 z!1113) lambda!252781))))

(declare-fun choose!37802 ((Set Context!7376) Int) Bool)

(assert (=> d!1659164 (= lt!2115373 (choose!37802 z!1113 lambda!252781))))

(assert (=> d!1659164 (= (exists!1573 z!1113 lambda!252781) lt!2115373)))

(declare-fun bs!1195037 () Bool)

(assert (= bs!1195037 d!1659164))

(declare-fun m!6193244 () Bool)

(assert (=> bs!1195037 m!6193244))

(assert (=> bs!1195037 m!6193244))

(declare-fun m!6193246 () Bool)

(assert (=> bs!1195037 m!6193246))

(declare-fun m!6193248 () Bool)

(assert (=> bs!1195037 m!6193248))

(assert (=> b!5128798 d!1659164))

(declare-fun bs!1195038 () Bool)

(declare-fun d!1659166 () Bool)

(assert (= bs!1195038 (and d!1659166 b!5128792)))

(declare-fun lambda!252806 () Int)

(assert (=> bs!1195038 (not (= lambda!252806 lambda!252782))))

(declare-fun bs!1195039 () Bool)

(assert (= bs!1195039 (and d!1659166 b!5128797)))

(assert (=> bs!1195039 (= lambda!252806 lambda!252783)))

(declare-fun bs!1195040 () Bool)

(assert (= bs!1195040 (and d!1659166 b!5128793)))

(assert (=> bs!1195040 (not (= lambda!252806 lambda!252784))))

(declare-fun bs!1195041 () Bool)

(assert (= bs!1195041 (and d!1659166 d!1659162)))

(assert (=> bs!1195041 (not (= lambda!252806 lambda!252803))))

(assert (=> d!1659166 (= (nullableContext!23 lt!2115359) (forall!13697 (exprs!4188 lt!2115359) lambda!252806))))

(declare-fun bs!1195042 () Bool)

(assert (= bs!1195042 d!1659166))

(declare-fun m!6193250 () Bool)

(assert (=> bs!1195042 m!6193250))

(assert (=> b!5128794 d!1659166))

(declare-fun d!1659168 () Bool)

(declare-fun e!3198648 () Bool)

(assert (=> d!1659168 e!3198648))

(declare-fun res!2183857 () Bool)

(assert (=> d!1659168 (=> (not res!2183857) (not e!3198648))))

(declare-fun lt!2115376 () Context!7376)

(declare-fun dynLambda!23648 (Int Context!7376) Bool)

(assert (=> d!1659168 (= res!2183857 (dynLambda!23648 lambda!252781 lt!2115376))))

(declare-fun getWitness!731 (List!59539 Int) Context!7376)

(assert (=> d!1659168 (= lt!2115376 (getWitness!731 (toList!8300 z!1113) lambda!252781))))

(assert (=> d!1659168 (exists!1573 z!1113 lambda!252781)))

(assert (=> d!1659168 (= (getWitness!728 z!1113 lambda!252781) lt!2115376)))

(declare-fun b!5128830 () Bool)

(assert (=> b!5128830 (= e!3198648 (set.member lt!2115376 z!1113))))

(assert (= (and d!1659168 res!2183857) b!5128830))

(declare-fun b_lambda!199261 () Bool)

(assert (=> (not b_lambda!199261) (not d!1659168)))

(declare-fun m!6193252 () Bool)

(assert (=> d!1659168 m!6193252))

(assert (=> d!1659168 m!6193244))

(assert (=> d!1659168 m!6193244))

(declare-fun m!6193254 () Bool)

(assert (=> d!1659168 m!6193254))

(assert (=> d!1659168 m!6193192))

(declare-fun m!6193256 () Bool)

(assert (=> b!5128830 m!6193256))

(assert (=> b!5128794 d!1659168))

(declare-fun bs!1195043 () Bool)

(declare-fun d!1659170 () Bool)

(assert (= bs!1195043 (and d!1659170 d!1659162)))

(declare-fun lambda!252809 () Int)

(assert (=> bs!1195043 (not (= lambda!252809 lambda!252803))))

(declare-fun bs!1195044 () Bool)

(assert (= bs!1195044 (and d!1659170 b!5128797)))

(assert (=> bs!1195044 (not (= lambda!252809 lambda!252783))))

(declare-fun bs!1195045 () Bool)

(assert (= bs!1195045 (and d!1659170 d!1659166)))

(assert (=> bs!1195045 (not (= lambda!252809 lambda!252806))))

(declare-fun bs!1195046 () Bool)

(assert (= bs!1195046 (and d!1659170 b!5128793)))

(assert (=> bs!1195046 (= lambda!252809 lambda!252784)))

(declare-fun bs!1195047 () Bool)

(assert (= bs!1195047 (and d!1659170 b!5128792)))

(assert (=> bs!1195047 (not (= lambda!252809 lambda!252782))))

(assert (=> d!1659170 (= (lostCause!1240 lt!2115359) (exists!1572 (exprs!4188 lt!2115359) lambda!252809))))

(declare-fun bs!1195048 () Bool)

(assert (= bs!1195048 d!1659170))

(declare-fun m!6193258 () Bool)

(assert (=> bs!1195048 m!6193258))

(assert (=> b!5128796 d!1659170))

(declare-fun d!1659174 () Bool)

(declare-fun res!2183862 () Bool)

(declare-fun e!3198653 () Bool)

(assert (=> d!1659174 (=> res!2183862 e!3198653)))

(assert (=> d!1659174 (= res!2183862 (is-Nil!59413 (exprs!4188 lt!2115359)))))

(assert (=> d!1659174 (= (forall!13697 (exprs!4188 lt!2115359) lambda!252782) e!3198653)))

(declare-fun b!5128835 () Bool)

(declare-fun e!3198654 () Bool)

(assert (=> b!5128835 (= e!3198653 e!3198654)))

(declare-fun res!2183863 () Bool)

(assert (=> b!5128835 (=> (not res!2183863) (not e!3198654))))

(declare-fun dynLambda!23649 (Int Regex!14304) Bool)

(assert (=> b!5128835 (= res!2183863 (dynLambda!23649 lambda!252782 (h!65861 (exprs!4188 lt!2115359))))))

(declare-fun b!5128836 () Bool)

(assert (=> b!5128836 (= e!3198654 (forall!13697 (t!372564 (exprs!4188 lt!2115359)) lambda!252782))))

(assert (= (and d!1659174 (not res!2183862)) b!5128835))

(assert (= (and b!5128835 res!2183863) b!5128836))

(declare-fun b_lambda!199263 () Bool)

(assert (=> (not b_lambda!199263) (not b!5128835)))

(declare-fun m!6193260 () Bool)

(assert (=> b!5128835 m!6193260))

(declare-fun m!6193262 () Bool)

(assert (=> b!5128836 m!6193262))

(assert (=> b!5128792 d!1659174))

(declare-fun bs!1195050 () Bool)

(declare-fun d!1659176 () Bool)

(assert (= bs!1195050 (and d!1659176 d!1659162)))

(declare-fun lambda!252812 () Int)

(assert (=> bs!1195050 (not (= lambda!252812 lambda!252803))))

(declare-fun bs!1195051 () Bool)

(assert (= bs!1195051 (and d!1659176 b!5128797)))

(assert (=> bs!1195051 (not (= lambda!252812 lambda!252783))))

(declare-fun bs!1195052 () Bool)

(assert (= bs!1195052 (and d!1659176 d!1659166)))

(assert (=> bs!1195052 (not (= lambda!252812 lambda!252806))))

(declare-fun bs!1195053 () Bool)

(assert (= bs!1195053 (and d!1659176 b!5128793)))

(assert (=> bs!1195053 (not (= lambda!252812 lambda!252784))))

(declare-fun bs!1195054 () Bool)

(assert (= bs!1195054 (and d!1659176 b!5128792)))

(assert (=> bs!1195054 (= lambda!252812 lambda!252782)))

(declare-fun bs!1195055 () Bool)

(assert (= bs!1195055 (and d!1659176 d!1659170)))

(assert (=> bs!1195055 (not (= lambda!252812 lambda!252809))))

(assert (=> d!1659176 (forall!13697 (exprs!4188 lt!2115359) lambda!252812)))

(declare-fun lt!2115382 () Unit!150615)

(declare-fun choose!37803 (Context!7376 List!59537) Unit!150615)

(assert (=> d!1659176 (= lt!2115382 (choose!37803 lt!2115359 (exprs!4188 lt!2115359)))))

(assert (=> d!1659176 (= (exprs!4188 lt!2115359) (exprs!4188 lt!2115359))))

(assert (=> d!1659176 (= (lemmaContextForallValidExprs!19 lt!2115359 (exprs!4188 lt!2115359)) lt!2115382)))

(declare-fun bs!1195056 () Bool)

(assert (= bs!1195056 d!1659176))

(declare-fun m!6193270 () Bool)

(assert (=> bs!1195056 m!6193270))

(declare-fun m!6193272 () Bool)

(assert (=> bs!1195056 m!6193272))

(assert (=> b!5128792 d!1659176))

(declare-fun d!1659180 () Bool)

(declare-fun res!2183864 () Bool)

(declare-fun e!3198655 () Bool)

(assert (=> d!1659180 (=> res!2183864 e!3198655)))

(assert (=> d!1659180 (= res!2183864 (is-Nil!59413 (exprs!4188 lt!2115359)))))

(assert (=> d!1659180 (= (forall!13697 (exprs!4188 lt!2115359) lambda!252783) e!3198655)))

(declare-fun b!5128837 () Bool)

(declare-fun e!3198656 () Bool)

(assert (=> b!5128837 (= e!3198655 e!3198656)))

(declare-fun res!2183865 () Bool)

(assert (=> b!5128837 (=> (not res!2183865) (not e!3198656))))

(assert (=> b!5128837 (= res!2183865 (dynLambda!23649 lambda!252783 (h!65861 (exprs!4188 lt!2115359))))))

(declare-fun b!5128838 () Bool)

(assert (=> b!5128838 (= e!3198656 (forall!13697 (t!372564 (exprs!4188 lt!2115359)) lambda!252783))))

(assert (= (and d!1659180 (not res!2183864)) b!5128837))

(assert (= (and b!5128837 res!2183865) b!5128838))

(declare-fun b_lambda!199265 () Bool)

(assert (=> (not b_lambda!199265) (not b!5128837)))

(declare-fun m!6193274 () Bool)

(assert (=> b!5128837 m!6193274))

(declare-fun m!6193276 () Bool)

(assert (=> b!5128838 m!6193276))

(assert (=> b!5128797 d!1659180))

(declare-fun d!1659182 () Bool)

(declare-fun lostCauseFct!306 (Regex!14304) Bool)

(assert (=> d!1659182 (= (lostCause!1239 lt!2115360) (lostCauseFct!306 lt!2115360))))

(declare-fun bs!1195057 () Bool)

(assert (= bs!1195057 d!1659182))

(declare-fun m!6193278 () Bool)

(assert (=> bs!1195057 m!6193278))

(assert (=> b!5128795 d!1659182))

(declare-fun bs!1195060 () Bool)

(declare-fun d!1659184 () Bool)

(assert (= bs!1195060 (and d!1659184 b!5128798)))

(declare-fun lambda!252818 () Int)

(assert (=> bs!1195060 (= lambda!252818 lambda!252781)))

(assert (=> d!1659184 (= (nullableZipper!1089 z!1113) (exists!1573 z!1113 lambda!252818))))

(declare-fun bs!1195062 () Bool)

(assert (= bs!1195062 d!1659184))

(declare-fun m!6193280 () Bool)

(assert (=> bs!1195062 m!6193280))

(assert (=> start!541914 d!1659184))

(declare-fun d!1659186 () Bool)

(declare-fun lt!2115385 () Bool)

(declare-fun content!10560 (List!59537) (Set Regex!14304))

(assert (=> d!1659186 (= lt!2115385 (set.member lt!2115360 (content!10560 (exprs!4188 lt!2115359))))))

(declare-fun e!3198661 () Bool)

(assert (=> d!1659186 (= lt!2115385 e!3198661)))

(declare-fun res!2183870 () Bool)

(assert (=> d!1659186 (=> (not res!2183870) (not e!3198661))))

(assert (=> d!1659186 (= res!2183870 (is-Cons!59413 (exprs!4188 lt!2115359)))))

(assert (=> d!1659186 (= (contains!19619 (exprs!4188 lt!2115359) lt!2115360) lt!2115385)))

(declare-fun b!5128843 () Bool)

(declare-fun e!3198662 () Bool)

(assert (=> b!5128843 (= e!3198661 e!3198662)))

(declare-fun res!2183871 () Bool)

(assert (=> b!5128843 (=> res!2183871 e!3198662)))

(assert (=> b!5128843 (= res!2183871 (= (h!65861 (exprs!4188 lt!2115359)) lt!2115360))))

(declare-fun b!5128844 () Bool)

(assert (=> b!5128844 (= e!3198662 (contains!19619 (t!372564 (exprs!4188 lt!2115359)) lt!2115360))))

(assert (= (and d!1659186 res!2183870) b!5128843))

(assert (= (and b!5128843 (not res!2183871)) b!5128844))

(declare-fun m!6193284 () Bool)

(assert (=> d!1659186 m!6193284))

(declare-fun m!6193286 () Bool)

(assert (=> d!1659186 m!6193286))

(declare-fun m!6193288 () Bool)

(assert (=> b!5128844 m!6193288))

(assert (=> b!5128790 d!1659186))

(declare-fun b!5128858 () Bool)

(declare-fun e!3198672 () Regex!14304)

(assert (=> b!5128858 (= e!3198672 (getWitness!727 (t!372564 (exprs!4188 lt!2115359)) lambda!252784))))

(declare-fun b!5128859 () Bool)

(declare-fun e!3198674 () Bool)

(assert (=> b!5128859 (= e!3198674 (dynLambda!23649 lambda!252784 (h!65861 (exprs!4188 lt!2115359))))))

(declare-fun b!5128860 () Bool)

(declare-fun e!3198673 () Bool)

(declare-fun lt!2115391 () Regex!14304)

(assert (=> b!5128860 (= e!3198673 (contains!19619 (exprs!4188 lt!2115359) lt!2115391))))

(declare-fun b!5128857 () Bool)

(declare-fun e!3198671 () Regex!14304)

(assert (=> b!5128857 (= e!3198671 (h!65861 (exprs!4188 lt!2115359)))))

(declare-fun d!1659190 () Bool)

(assert (=> d!1659190 e!3198673))

(declare-fun res!2183876 () Bool)

(assert (=> d!1659190 (=> (not res!2183876) (not e!3198673))))

(assert (=> d!1659190 (= res!2183876 (dynLambda!23649 lambda!252784 lt!2115391))))

(assert (=> d!1659190 (= lt!2115391 e!3198671)))

(declare-fun c!882014 () Bool)

(assert (=> d!1659190 (= c!882014 e!3198674)))

(declare-fun res!2183877 () Bool)

(assert (=> d!1659190 (=> (not res!2183877) (not e!3198674))))

(assert (=> d!1659190 (= res!2183877 (is-Cons!59413 (exprs!4188 lt!2115359)))))

(assert (=> d!1659190 (exists!1572 (exprs!4188 lt!2115359) lambda!252784)))

(assert (=> d!1659190 (= (getWitness!727 (exprs!4188 lt!2115359) lambda!252784) lt!2115391)))

(declare-fun b!5128861 () Bool)

(declare-fun lt!2115390 () Unit!150615)

(declare-fun Unit!150619 () Unit!150615)

(assert (=> b!5128861 (= lt!2115390 Unit!150619)))

(assert (=> b!5128861 false))

(declare-fun head!10972 (List!59537) Regex!14304)

(assert (=> b!5128861 (= e!3198672 (head!10972 (exprs!4188 lt!2115359)))))

(declare-fun b!5128862 () Bool)

(assert (=> b!5128862 (= e!3198671 e!3198672)))

(declare-fun c!882015 () Bool)

(assert (=> b!5128862 (= c!882015 (is-Cons!59413 (exprs!4188 lt!2115359)))))

(assert (= (and d!1659190 res!2183877) b!5128859))

(assert (= (and d!1659190 c!882014) b!5128857))

(assert (= (and d!1659190 (not c!882014)) b!5128862))

(assert (= (and b!5128862 c!882015) b!5128858))

(assert (= (and b!5128862 (not c!882015)) b!5128861))

(assert (= (and d!1659190 res!2183876) b!5128860))

(declare-fun b_lambda!199267 () Bool)

(assert (=> (not b_lambda!199267) (not b!5128859)))

(declare-fun b_lambda!199269 () Bool)

(assert (=> (not b_lambda!199269) (not d!1659190)))

(declare-fun m!6193294 () Bool)

(assert (=> b!5128861 m!6193294))

(declare-fun m!6193296 () Bool)

(assert (=> d!1659190 m!6193296))

(assert (=> d!1659190 m!6193206))

(declare-fun m!6193298 () Bool)

(assert (=> b!5128859 m!6193298))

(declare-fun m!6193300 () Bool)

(assert (=> b!5128860 m!6193300))

(declare-fun m!6193302 () Bool)

(assert (=> b!5128858 m!6193302))

(assert (=> b!5128790 d!1659190))

(declare-fun bs!1195067 () Bool)

(declare-fun d!1659196 () Bool)

(assert (= bs!1195067 (and d!1659196 b!5128797)))

(declare-fun lambda!252824 () Int)

(assert (=> bs!1195067 (not (= lambda!252824 lambda!252783))))

(declare-fun bs!1195068 () Bool)

(assert (= bs!1195068 (and d!1659196 d!1659166)))

(assert (=> bs!1195068 (not (= lambda!252824 lambda!252806))))

(declare-fun bs!1195069 () Bool)

(assert (= bs!1195069 (and d!1659196 b!5128793)))

(assert (=> bs!1195069 (not (= lambda!252824 lambda!252784))))

(declare-fun bs!1195070 () Bool)

(assert (= bs!1195070 (and d!1659196 b!5128792)))

(assert (=> bs!1195070 (= lambda!252824 lambda!252782)))

(declare-fun bs!1195071 () Bool)

(assert (= bs!1195071 (and d!1659196 d!1659170)))

(assert (=> bs!1195071 (not (= lambda!252824 lambda!252809))))

(declare-fun bs!1195072 () Bool)

(assert (= bs!1195072 (and d!1659196 d!1659162)))

(assert (=> bs!1195072 (not (= lambda!252824 lambda!252803))))

(declare-fun bs!1195073 () Bool)

(assert (= bs!1195073 (and d!1659196 d!1659176)))

(assert (=> bs!1195073 (= lambda!252824 lambda!252812)))

(assert (=> d!1659196 (= (inv!78942 setElem!30911) (forall!13697 (exprs!4188 setElem!30911) lambda!252824))))

(declare-fun bs!1195074 () Bool)

(assert (= bs!1195074 d!1659196))

(declare-fun m!6193310 () Bool)

(assert (=> bs!1195074 m!6193310))

(assert (=> setNonEmpty!30911 d!1659196))

(declare-fun b!5128873 () Bool)

(declare-fun e!3198683 () Bool)

(declare-fun tp!1430958 () Bool)

(declare-fun tp!1430959 () Bool)

(assert (=> b!5128873 (= e!3198683 (and tp!1430958 tp!1430959))))

(assert (=> b!5128791 (= tp!1430946 e!3198683)))

(assert (= (and b!5128791 (is-Cons!59413 (exprs!4188 setElem!30911))) b!5128873))

(declare-fun condSetEmpty!30917 () Bool)

(assert (=> setNonEmpty!30911 (= condSetEmpty!30917 (= setRest!30911 (as set.empty (Set Context!7376))))))

(declare-fun setRes!30917 () Bool)

(assert (=> setNonEmpty!30911 (= tp!1430947 setRes!30917)))

(declare-fun setIsEmpty!30917 () Bool)

(assert (=> setIsEmpty!30917 setRes!30917))

(declare-fun setNonEmpty!30917 () Bool)

(declare-fun tp!1430965 () Bool)

(declare-fun setElem!30917 () Context!7376)

(declare-fun e!3198686 () Bool)

(assert (=> setNonEmpty!30917 (= setRes!30917 (and tp!1430965 (inv!78942 setElem!30917) e!3198686))))

(declare-fun setRest!30917 () (Set Context!7376))

(assert (=> setNonEmpty!30917 (= setRest!30911 (set.union (set.insert setElem!30917 (as set.empty (Set Context!7376))) setRest!30917))))

(declare-fun b!5128878 () Bool)

(declare-fun tp!1430964 () Bool)

(assert (=> b!5128878 (= e!3198686 tp!1430964)))

(assert (= (and setNonEmpty!30911 condSetEmpty!30917) setIsEmpty!30917))

(assert (= (and setNonEmpty!30911 (not condSetEmpty!30917)) setNonEmpty!30917))

(assert (= setNonEmpty!30917 b!5128878))

(declare-fun m!6193312 () Bool)

(assert (=> setNonEmpty!30917 m!6193312))

(declare-fun b_lambda!199271 () Bool)

(assert (= b_lambda!199261 (or b!5128798 b_lambda!199271)))

(declare-fun bs!1195075 () Bool)

(declare-fun d!1659200 () Bool)

(assert (= bs!1195075 (and d!1659200 b!5128798)))

(assert (=> bs!1195075 (= (dynLambda!23648 lambda!252781 lt!2115376) (nullableContext!23 lt!2115376))))

(declare-fun m!6193314 () Bool)

(assert (=> bs!1195075 m!6193314))

(assert (=> d!1659168 d!1659200))

(declare-fun b_lambda!199273 () Bool)

(assert (= b_lambda!199269 (or b!5128793 b_lambda!199273)))

(declare-fun bs!1195076 () Bool)

(declare-fun d!1659202 () Bool)

(assert (= bs!1195076 (and d!1659202 b!5128793)))

(assert (=> bs!1195076 (= (dynLambda!23649 lambda!252784 lt!2115391) (lostCause!1239 lt!2115391))))

(declare-fun m!6193316 () Bool)

(assert (=> bs!1195076 m!6193316))

(assert (=> d!1659190 d!1659202))

(declare-fun b_lambda!199275 () Bool)

(assert (= b_lambda!199267 (or b!5128793 b_lambda!199275)))

(declare-fun bs!1195077 () Bool)

(declare-fun d!1659204 () Bool)

(assert (= bs!1195077 (and d!1659204 b!5128793)))

(assert (=> bs!1195077 (= (dynLambda!23649 lambda!252784 (h!65861 (exprs!4188 lt!2115359))) (lostCause!1239 (h!65861 (exprs!4188 lt!2115359))))))

(declare-fun m!6193318 () Bool)

(assert (=> bs!1195077 m!6193318))

(assert (=> b!5128859 d!1659204))

(declare-fun b_lambda!199277 () Bool)

(assert (= b_lambda!199265 (or b!5128797 b_lambda!199277)))

(declare-fun bs!1195078 () Bool)

(declare-fun d!1659206 () Bool)

(assert (= bs!1195078 (and d!1659206 b!5128797)))

(declare-fun nullable!4734 (Regex!14304) Bool)

(assert (=> bs!1195078 (= (dynLambda!23649 lambda!252783 (h!65861 (exprs!4188 lt!2115359))) (nullable!4734 (h!65861 (exprs!4188 lt!2115359))))))

(declare-fun m!6193320 () Bool)

(assert (=> bs!1195078 m!6193320))

(assert (=> b!5128837 d!1659206))

(declare-fun b_lambda!199279 () Bool)

(assert (= b_lambda!199263 (or b!5128792 b_lambda!199279)))

(declare-fun bs!1195079 () Bool)

(declare-fun d!1659208 () Bool)

(assert (= bs!1195079 (and d!1659208 b!5128792)))

(declare-fun validRegex!6230 (Regex!14304) Bool)

(assert (=> bs!1195079 (= (dynLambda!23649 lambda!252782 (h!65861 (exprs!4188 lt!2115359))) (validRegex!6230 (h!65861 (exprs!4188 lt!2115359))))))

(declare-fun m!6193322 () Bool)

(assert (=> bs!1195079 m!6193322))

(assert (=> b!5128835 d!1659208))

(push 1)

(assert (not b!5128861))

(assert (not b!5128844))

(assert (not b!5128873))

(assert (not d!1659182))

(assert (not b_lambda!199273))

(assert (not b!5128858))

(assert (not b_lambda!199271))

(assert (not d!1659184))

(assert (not b!5128860))

(assert (not bs!1195079))

(assert (not d!1659196))

(assert (not d!1659186))

(assert (not b!5128878))

(assert (not b!5128836))

(assert (not bs!1195076))

(assert (not d!1659190))

(assert (not bs!1195077))

(assert (not d!1659170))

(assert (not bs!1195075))

(assert (not d!1659166))

(assert (not b_lambda!199275))

(assert (not bs!1195078))

(assert (not d!1659162))

(assert (not d!1659176))

(assert (not b!5128838))

(assert (not b_lambda!199277))

(assert (not setNonEmpty!30917))

(assert (not b_lambda!199279))

(assert (not d!1659164))

(assert (not d!1659168))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

