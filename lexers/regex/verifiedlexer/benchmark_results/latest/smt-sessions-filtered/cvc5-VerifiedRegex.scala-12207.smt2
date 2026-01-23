; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!687572 () Bool)

(assert start!687572)

(declare-fun b!7075084 () Bool)

(assert (=> b!7075084 true))

(declare-fun b!7075088 () Bool)

(assert (=> b!7075088 true))

(declare-fun b!7075086 () Bool)

(assert (=> b!7075086 true))

(declare-fun b!7075075 () Bool)

(declare-fun e!4253558 () Bool)

(declare-fun e!4253561 () Bool)

(assert (=> b!7075075 (= e!4253558 e!4253561)))

(declare-fun res!2889856 () Bool)

(assert (=> b!7075075 (=> res!2889856 e!4253561)))

(declare-datatypes ((C!35590 0))(
  ( (C!35591 (val!27497 Int)) )
))
(declare-datatypes ((Regex!17660 0))(
  ( (ElementMatch!17660 (c!1319952 C!35590)) (Concat!26505 (regOne!35832 Regex!17660) (regTwo!35832 Regex!17660)) (EmptyExpr!17660) (Star!17660 (reg!17989 Regex!17660)) (EmptyLang!17660) (Union!17660 (regOne!35833 Regex!17660) (regTwo!35833 Regex!17660)) )
))
(declare-datatypes ((List!68506 0))(
  ( (Nil!68382) (Cons!68382 (h!74830 Regex!17660) (t!382289 List!68506)) )
))
(declare-datatypes ((Context!13312 0))(
  ( (Context!13313 (exprs!7156 List!68506)) )
))
(declare-fun lt!2548624 () (Set Context!13312))

(declare-fun lt!2548623 () (Set Context!13312))

(assert (=> b!7075075 (= res!2889856 (not (= lt!2548624 lt!2548623)))))

(declare-fun lt!2548619 () Context!13312)

(assert (=> b!7075075 (= lt!2548624 (set.insert lt!2548619 (as set.empty (Set Context!13312))))))

(declare-fun lambda!426478 () Int)

(declare-datatypes ((Unit!162030 0))(
  ( (Unit!162031) )
))
(declare-fun lt!2548614 () Unit!162030)

(declare-fun lt!2548621 () Context!13312)

(declare-fun ct2!306 () Context!13312)

(declare-fun lemmaConcatPreservesForall!971 (List!68506 List!68506 Int) Unit!162030)

(assert (=> b!7075075 (= lt!2548614 (lemmaConcatPreservesForall!971 (exprs!7156 lt!2548621) (exprs!7156 ct2!306) lambda!426478))))

(declare-fun setIsEmpty!50336 () Bool)

(declare-fun setRes!50336 () Bool)

(assert (=> setIsEmpty!50336 setRes!50336))

(declare-fun b!7075076 () Bool)

(declare-fun res!2889855 () Bool)

(declare-fun e!4253564 () Bool)

(assert (=> b!7075076 (=> res!2889855 e!4253564)))

(assert (=> b!7075076 (= res!2889855 (not (is-Cons!68382 (exprs!7156 lt!2548621))))))

(declare-fun b!7075077 () Bool)

(declare-fun e!4253559 () Bool)

(declare-fun tp_is_empty!44545 () Bool)

(declare-fun tp!1942676 () Bool)

(assert (=> b!7075077 (= e!4253559 (and tp_is_empty!44545 tp!1942676))))

(declare-fun b!7075078 () Bool)

(declare-fun e!4253560 () Bool)

(assert (=> b!7075078 (= e!4253564 e!4253560)))

(declare-fun res!2889858 () Bool)

(assert (=> b!7075078 (=> res!2889858 e!4253560)))

(declare-fun nullable!7343 (Regex!17660) Bool)

(assert (=> b!7075078 (= res!2889858 (nullable!7343 (h!74830 (exprs!7156 lt!2548621))))))

(declare-fun lt!2548616 () List!68506)

(declare-fun tail!13852 (List!68506) List!68506)

(assert (=> b!7075078 (= lt!2548616 (tail!13852 (exprs!7156 lt!2548621)))))

(declare-fun b!7075079 () Bool)

(declare-fun res!2889861 () Bool)

(declare-fun e!4253563 () Bool)

(assert (=> b!7075079 (=> (not res!2889861) (not e!4253563))))

(declare-datatypes ((List!68507 0))(
  ( (Nil!68383) (Cons!68383 (h!74831 C!35590) (t!382290 List!68507)) )
))
(declare-fun s!7408 () List!68507)

(assert (=> b!7075079 (= res!2889861 (is-Cons!68383 s!7408))))

(declare-fun setElem!50336 () Context!13312)

(declare-fun e!4253562 () Bool)

(declare-fun setNonEmpty!50336 () Bool)

(declare-fun tp!1942677 () Bool)

(declare-fun inv!87010 (Context!13312) Bool)

(assert (=> setNonEmpty!50336 (= setRes!50336 (and tp!1942677 (inv!87010 setElem!50336) e!4253562))))

(declare-fun z1!570 () (Set Context!13312))

(declare-fun setRest!50336 () (Set Context!13312))

(assert (=> setNonEmpty!50336 (= z1!570 (set.union (set.insert setElem!50336 (as set.empty (Set Context!13312))) setRest!50336))))

(declare-fun b!7075080 () Bool)

(declare-fun e!4253565 () Bool)

(declare-fun tp!1942675 () Bool)

(assert (=> b!7075080 (= e!4253565 tp!1942675)))

(declare-fun b!7075081 () Bool)

(declare-fun e!4253556 () Bool)

(assert (=> b!7075081 (= e!4253560 e!4253556)))

(declare-fun res!2889853 () Bool)

(assert (=> b!7075081 (=> res!2889853 e!4253556)))

(declare-fun matchZipper!3200 ((Set Context!13312) List!68507) Bool)

(declare-fun derivationStepZipperDown!2294 (Regex!17660 Context!13312 C!35590) (Set Context!13312))

(declare-fun ++!15801 (List!68506 List!68506) List!68506)

(assert (=> b!7075081 (= res!2889853 (not (matchZipper!3200 (derivationStepZipperDown!2294 (h!74830 (exprs!7156 lt!2548621)) (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (h!74831 s!7408)) (t!382290 s!7408))))))

(declare-fun lt!2548620 () Unit!162030)

(assert (=> b!7075081 (= lt!2548620 (lemmaConcatPreservesForall!971 lt!2548616 (exprs!7156 ct2!306) lambda!426478))))

(declare-fun res!2889859 () Bool)

(assert (=> start!687572 (=> (not res!2889859) (not e!4253563))))

(declare-fun lt!2548626 () (Set Context!13312))

(assert (=> start!687572 (= res!2889859 (matchZipper!3200 lt!2548626 s!7408))))

(declare-fun appendTo!781 ((Set Context!13312) Context!13312) (Set Context!13312))

(assert (=> start!687572 (= lt!2548626 (appendTo!781 z1!570 ct2!306))))

(assert (=> start!687572 e!4253563))

(declare-fun condSetEmpty!50336 () Bool)

(assert (=> start!687572 (= condSetEmpty!50336 (= z1!570 (as set.empty (Set Context!13312))))))

(assert (=> start!687572 setRes!50336))

(assert (=> start!687572 (and (inv!87010 ct2!306) e!4253565)))

(assert (=> start!687572 e!4253559))

(declare-fun b!7075082 () Bool)

(declare-fun tp!1942678 () Bool)

(assert (=> b!7075082 (= e!4253562 tp!1942678)))

(declare-fun b!7075083 () Bool)

(declare-fun res!2889860 () Bool)

(assert (=> b!7075083 (=> res!2889860 e!4253564)))

(declare-fun isEmpty!39911 (List!68506) Bool)

(assert (=> b!7075083 (= res!2889860 (isEmpty!39911 (exprs!7156 lt!2548621)))))

(declare-fun e!4253557 () Bool)

(assert (=> b!7075084 (= e!4253563 (not e!4253557))))

(declare-fun res!2889862 () Bool)

(assert (=> b!7075084 (=> res!2889862 e!4253557)))

(assert (=> b!7075084 (= res!2889862 (not (matchZipper!3200 lt!2548623 s!7408)))))

(declare-fun lt!2548618 () Context!13312)

(assert (=> b!7075084 (= lt!2548623 (set.insert lt!2548618 (as set.empty (Set Context!13312))))))

(declare-fun lambda!426476 () Int)

(declare-fun getWitness!1770 ((Set Context!13312) Int) Context!13312)

(assert (=> b!7075084 (= lt!2548618 (getWitness!1770 lt!2548626 lambda!426476))))

(declare-datatypes ((List!68508 0))(
  ( (Nil!68384) (Cons!68384 (h!74832 Context!13312) (t!382291 List!68508)) )
))
(declare-fun lt!2548627 () List!68508)

(declare-fun exists!3720 (List!68508 Int) Bool)

(assert (=> b!7075084 (exists!3720 lt!2548627 lambda!426476)))

(declare-fun lt!2548622 () Unit!162030)

(declare-fun lemmaZipperMatchesExistsMatchingContext!581 (List!68508 List!68507) Unit!162030)

(assert (=> b!7075084 (= lt!2548622 (lemmaZipperMatchesExistsMatchingContext!581 lt!2548627 s!7408))))

(declare-fun toList!11001 ((Set Context!13312)) List!68508)

(assert (=> b!7075084 (= lt!2548627 (toList!11001 lt!2548626))))

(declare-fun b!7075085 () Bool)

(declare-fun validRegex!8977 (Regex!17660) Bool)

(assert (=> b!7075085 (= e!4253556 (validRegex!8977 (h!74830 (exprs!7156 lt!2548621))))))

(assert (=> b!7075086 (= e!4253561 e!4253564)))

(declare-fun res!2889863 () Bool)

(assert (=> b!7075086 (=> res!2889863 e!4253564)))

(declare-fun lt!2548628 () (Set Context!13312))

(declare-fun derivationStepZipper!3110 ((Set Context!13312) C!35590) (Set Context!13312))

(assert (=> b!7075086 (= res!2889863 (not (= (derivationStepZipper!3110 lt!2548624 (h!74831 s!7408)) lt!2548628)))))

(declare-fun lambda!426479 () Int)

(declare-fun flatMap!2586 ((Set Context!13312) Int) (Set Context!13312))

(declare-fun derivationStepZipperUp!2244 (Context!13312 C!35590) (Set Context!13312))

(assert (=> b!7075086 (= (flatMap!2586 lt!2548624 lambda!426479) (derivationStepZipperUp!2244 lt!2548619 (h!74831 s!7408)))))

(declare-fun lt!2548625 () Unit!162030)

(declare-fun lemmaFlatMapOnSingletonSet!2095 ((Set Context!13312) Context!13312 Int) Unit!162030)

(assert (=> b!7075086 (= lt!2548625 (lemmaFlatMapOnSingletonSet!2095 lt!2548624 lt!2548619 lambda!426479))))

(assert (=> b!7075086 (= lt!2548628 (derivationStepZipperUp!2244 lt!2548619 (h!74831 s!7408)))))

(declare-fun lt!2548617 () Unit!162030)

(assert (=> b!7075086 (= lt!2548617 (lemmaConcatPreservesForall!971 (exprs!7156 lt!2548621) (exprs!7156 ct2!306) lambda!426478))))

(declare-fun b!7075087 () Bool)

(declare-fun res!2889854 () Bool)

(assert (=> b!7075087 (=> res!2889854 e!4253557)))

(assert (=> b!7075087 (= res!2889854 (not (set.member lt!2548618 lt!2548626)))))

(assert (=> b!7075088 (= e!4253557 e!4253558)))

(declare-fun res!2889857 () Bool)

(assert (=> b!7075088 (=> res!2889857 e!4253558)))

(assert (=> b!7075088 (= res!2889857 (or (not (= lt!2548619 lt!2548618)) (not (set.member lt!2548621 z1!570))))))

(assert (=> b!7075088 (= lt!2548619 (Context!13313 (++!15801 (exprs!7156 lt!2548621) (exprs!7156 ct2!306))))))

(declare-fun lt!2548615 () Unit!162030)

(assert (=> b!7075088 (= lt!2548615 (lemmaConcatPreservesForall!971 (exprs!7156 lt!2548621) (exprs!7156 ct2!306) lambda!426478))))

(declare-fun lambda!426477 () Int)

(declare-fun mapPost2!489 ((Set Context!13312) Int Context!13312) Context!13312)

(assert (=> b!7075088 (= lt!2548621 (mapPost2!489 z1!570 lambda!426477 lt!2548618))))

(assert (= (and start!687572 res!2889859) b!7075079))

(assert (= (and b!7075079 res!2889861) b!7075084))

(assert (= (and b!7075084 (not res!2889862)) b!7075087))

(assert (= (and b!7075087 (not res!2889854)) b!7075088))

(assert (= (and b!7075088 (not res!2889857)) b!7075075))

(assert (= (and b!7075075 (not res!2889856)) b!7075086))

(assert (= (and b!7075086 (not res!2889863)) b!7075076))

(assert (= (and b!7075076 (not res!2889855)) b!7075083))

(assert (= (and b!7075083 (not res!2889860)) b!7075078))

(assert (= (and b!7075078 (not res!2889858)) b!7075081))

(assert (= (and b!7075081 (not res!2889853)) b!7075085))

(assert (= (and start!687572 condSetEmpty!50336) setIsEmpty!50336))

(assert (= (and start!687572 (not condSetEmpty!50336)) setNonEmpty!50336))

(assert (= setNonEmpty!50336 b!7075082))

(assert (= start!687572 b!7075080))

(assert (= (and start!687572 (is-Cons!68383 s!7408)) b!7075077))

(declare-fun m!7802796 () Bool)

(assert (=> b!7075086 m!7802796))

(declare-fun m!7802798 () Bool)

(assert (=> b!7075086 m!7802798))

(declare-fun m!7802800 () Bool)

(assert (=> b!7075086 m!7802800))

(declare-fun m!7802802 () Bool)

(assert (=> b!7075086 m!7802802))

(declare-fun m!7802804 () Bool)

(assert (=> b!7075086 m!7802804))

(declare-fun m!7802806 () Bool)

(assert (=> b!7075083 m!7802806))

(declare-fun m!7802808 () Bool)

(assert (=> setNonEmpty!50336 m!7802808))

(declare-fun m!7802810 () Bool)

(assert (=> b!7075084 m!7802810))

(declare-fun m!7802812 () Bool)

(assert (=> b!7075084 m!7802812))

(declare-fun m!7802814 () Bool)

(assert (=> b!7075084 m!7802814))

(declare-fun m!7802816 () Bool)

(assert (=> b!7075084 m!7802816))

(declare-fun m!7802818 () Bool)

(assert (=> b!7075084 m!7802818))

(declare-fun m!7802820 () Bool)

(assert (=> b!7075084 m!7802820))

(declare-fun m!7802822 () Bool)

(assert (=> b!7075088 m!7802822))

(declare-fun m!7802824 () Bool)

(assert (=> b!7075088 m!7802824))

(assert (=> b!7075088 m!7802796))

(declare-fun m!7802826 () Bool)

(assert (=> b!7075088 m!7802826))

(declare-fun m!7802828 () Bool)

(assert (=> b!7075078 m!7802828))

(declare-fun m!7802830 () Bool)

(assert (=> b!7075078 m!7802830))

(declare-fun m!7802832 () Bool)

(assert (=> b!7075087 m!7802832))

(declare-fun m!7802834 () Bool)

(assert (=> b!7075081 m!7802834))

(declare-fun m!7802836 () Bool)

(assert (=> b!7075081 m!7802836))

(assert (=> b!7075081 m!7802836))

(declare-fun m!7802838 () Bool)

(assert (=> b!7075081 m!7802838))

(declare-fun m!7802840 () Bool)

(assert (=> b!7075081 m!7802840))

(declare-fun m!7802842 () Bool)

(assert (=> start!687572 m!7802842))

(declare-fun m!7802844 () Bool)

(assert (=> start!687572 m!7802844))

(declare-fun m!7802846 () Bool)

(assert (=> start!687572 m!7802846))

(declare-fun m!7802848 () Bool)

(assert (=> b!7075085 m!7802848))

(declare-fun m!7802850 () Bool)

(assert (=> b!7075075 m!7802850))

(assert (=> b!7075075 m!7802796))

(push 1)

(assert (not b!7075078))

(assert (not b!7075075))

(assert (not b!7075086))

(assert (not b!7075080))

(assert (not b!7075082))

(assert (not b!7075084))

(assert (not b!7075085))

(assert (not start!687572))

(assert (not setNonEmpty!50336))

(assert (not b!7075077))

(assert tp_is_empty!44545)

(assert (not b!7075088))

(assert (not b!7075083))

(assert (not b!7075081))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2212600 () Bool)

(declare-fun forall!16614 (List!68506 Int) Bool)

(assert (=> d!2212600 (forall!16614 (++!15801 (exprs!7156 lt!2548621) (exprs!7156 ct2!306)) lambda!426478)))

(declare-fun lt!2548678 () Unit!162030)

(declare-fun choose!54291 (List!68506 List!68506 Int) Unit!162030)

(assert (=> d!2212600 (= lt!2548678 (choose!54291 (exprs!7156 lt!2548621) (exprs!7156 ct2!306) lambda!426478))))

(assert (=> d!2212600 (forall!16614 (exprs!7156 lt!2548621) lambda!426478)))

(assert (=> d!2212600 (= (lemmaConcatPreservesForall!971 (exprs!7156 lt!2548621) (exprs!7156 ct2!306) lambda!426478) lt!2548678)))

(declare-fun bs!1881124 () Bool)

(assert (= bs!1881124 d!2212600))

(assert (=> bs!1881124 m!7802824))

(assert (=> bs!1881124 m!7802824))

(declare-fun m!7802908 () Bool)

(assert (=> bs!1881124 m!7802908))

(declare-fun m!7802910 () Bool)

(assert (=> bs!1881124 m!7802910))

(declare-fun m!7802912 () Bool)

(assert (=> bs!1881124 m!7802912))

(assert (=> b!7075075 d!2212600))

(declare-fun bs!1881125 () Bool)

(declare-fun d!2212602 () Bool)

(assert (= bs!1881125 (and d!2212602 b!7075084)))

(declare-fun lambda!426504 () Int)

(assert (=> bs!1881125 (= lambda!426504 lambda!426476)))

(assert (=> d!2212602 true))

(assert (=> d!2212602 (exists!3720 lt!2548627 lambda!426504)))

(declare-fun lt!2548681 () Unit!162030)

(declare-fun choose!54292 (List!68508 List!68507) Unit!162030)

(assert (=> d!2212602 (= lt!2548681 (choose!54292 lt!2548627 s!7408))))

(declare-fun content!13818 (List!68508) (Set Context!13312))

(assert (=> d!2212602 (matchZipper!3200 (content!13818 lt!2548627) s!7408)))

(assert (=> d!2212602 (= (lemmaZipperMatchesExistsMatchingContext!581 lt!2548627 s!7408) lt!2548681)))

(declare-fun bs!1881126 () Bool)

(assert (= bs!1881126 d!2212602))

(declare-fun m!7802914 () Bool)

(assert (=> bs!1881126 m!7802914))

(declare-fun m!7802916 () Bool)

(assert (=> bs!1881126 m!7802916))

(declare-fun m!7802918 () Bool)

(assert (=> bs!1881126 m!7802918))

(assert (=> bs!1881126 m!7802918))

(declare-fun m!7802920 () Bool)

(assert (=> bs!1881126 m!7802920))

(assert (=> b!7075084 d!2212602))

(declare-fun bs!1881127 () Bool)

(declare-fun d!2212604 () Bool)

(assert (= bs!1881127 (and d!2212604 b!7075084)))

(declare-fun lambda!426507 () Int)

(assert (=> bs!1881127 (not (= lambda!426507 lambda!426476))))

(declare-fun bs!1881128 () Bool)

(assert (= bs!1881128 (and d!2212604 d!2212602)))

(assert (=> bs!1881128 (not (= lambda!426507 lambda!426504))))

(assert (=> d!2212604 true))

(declare-fun order!28427 () Int)

(declare-fun dynLambda!27831 (Int Int) Int)

(assert (=> d!2212604 (< (dynLambda!27831 order!28427 lambda!426476) (dynLambda!27831 order!28427 lambda!426507))))

(declare-fun forall!16615 (List!68508 Int) Bool)

(assert (=> d!2212604 (= (exists!3720 lt!2548627 lambda!426476) (not (forall!16615 lt!2548627 lambda!426507)))))

(declare-fun bs!1881129 () Bool)

(assert (= bs!1881129 d!2212604))

(declare-fun m!7802922 () Bool)

(assert (=> bs!1881129 m!7802922))

(assert (=> b!7075084 d!2212604))

(declare-fun d!2212606 () Bool)

(declare-fun e!4253598 () Bool)

(assert (=> d!2212606 e!4253598))

(declare-fun res!2889900 () Bool)

(assert (=> d!2212606 (=> (not res!2889900) (not e!4253598))))

(declare-fun lt!2548684 () Context!13312)

(declare-fun dynLambda!27832 (Int Context!13312) Bool)

(assert (=> d!2212606 (= res!2889900 (dynLambda!27832 lambda!426476 lt!2548684))))

(declare-fun getWitness!1772 (List!68508 Int) Context!13312)

(assert (=> d!2212606 (= lt!2548684 (getWitness!1772 (toList!11001 lt!2548626) lambda!426476))))

(declare-fun exists!3722 ((Set Context!13312) Int) Bool)

(assert (=> d!2212606 (exists!3722 lt!2548626 lambda!426476)))

(assert (=> d!2212606 (= (getWitness!1770 lt!2548626 lambda!426476) lt!2548684)))

(declare-fun b!7075147 () Bool)

(assert (=> b!7075147 (= e!4253598 (set.member lt!2548684 lt!2548626))))

(assert (= (and d!2212606 res!2889900) b!7075147))

(declare-fun b_lambda!270151 () Bool)

(assert (=> (not b_lambda!270151) (not d!2212606)))

(declare-fun m!7802924 () Bool)

(assert (=> d!2212606 m!7802924))

(assert (=> d!2212606 m!7802820))

(assert (=> d!2212606 m!7802820))

(declare-fun m!7802926 () Bool)

(assert (=> d!2212606 m!7802926))

(declare-fun m!7802928 () Bool)

(assert (=> d!2212606 m!7802928))

(declare-fun m!7802930 () Bool)

(assert (=> b!7075147 m!7802930))

(assert (=> b!7075084 d!2212606))

(declare-fun d!2212608 () Bool)

(declare-fun c!1319966 () Bool)

(declare-fun isEmpty!39913 (List!68507) Bool)

(assert (=> d!2212608 (= c!1319966 (isEmpty!39913 s!7408))))

(declare-fun e!4253601 () Bool)

(assert (=> d!2212608 (= (matchZipper!3200 lt!2548623 s!7408) e!4253601)))

(declare-fun b!7075152 () Bool)

(declare-fun nullableZipper!2708 ((Set Context!13312)) Bool)

(assert (=> b!7075152 (= e!4253601 (nullableZipper!2708 lt!2548623))))

(declare-fun b!7075153 () Bool)

(declare-fun head!14416 (List!68507) C!35590)

(declare-fun tail!13854 (List!68507) List!68507)

(assert (=> b!7075153 (= e!4253601 (matchZipper!3200 (derivationStepZipper!3110 lt!2548623 (head!14416 s!7408)) (tail!13854 s!7408)))))

(assert (= (and d!2212608 c!1319966) b!7075152))

(assert (= (and d!2212608 (not c!1319966)) b!7075153))

(declare-fun m!7802932 () Bool)

(assert (=> d!2212608 m!7802932))

(declare-fun m!7802934 () Bool)

(assert (=> b!7075152 m!7802934))

(declare-fun m!7802936 () Bool)

(assert (=> b!7075153 m!7802936))

(assert (=> b!7075153 m!7802936))

(declare-fun m!7802938 () Bool)

(assert (=> b!7075153 m!7802938))

(declare-fun m!7802940 () Bool)

(assert (=> b!7075153 m!7802940))

(assert (=> b!7075153 m!7802938))

(assert (=> b!7075153 m!7802940))

(declare-fun m!7802942 () Bool)

(assert (=> b!7075153 m!7802942))

(assert (=> b!7075084 d!2212608))

(declare-fun d!2212610 () Bool)

(declare-fun e!4253604 () Bool)

(assert (=> d!2212610 e!4253604))

(declare-fun res!2889903 () Bool)

(assert (=> d!2212610 (=> (not res!2889903) (not e!4253604))))

(declare-fun lt!2548687 () List!68508)

(declare-fun noDuplicate!2736 (List!68508) Bool)

(assert (=> d!2212610 (= res!2889903 (noDuplicate!2736 lt!2548687))))

(declare-fun choose!54293 ((Set Context!13312)) List!68508)

(assert (=> d!2212610 (= lt!2548687 (choose!54293 lt!2548626))))

(assert (=> d!2212610 (= (toList!11001 lt!2548626) lt!2548687)))

(declare-fun b!7075156 () Bool)

(assert (=> b!7075156 (= e!4253604 (= (content!13818 lt!2548687) lt!2548626))))

(assert (= (and d!2212610 res!2889903) b!7075156))

(declare-fun m!7802944 () Bool)

(assert (=> d!2212610 m!7802944))

(declare-fun m!7802946 () Bool)

(assert (=> d!2212610 m!7802946))

(declare-fun m!7802948 () Bool)

(assert (=> b!7075156 m!7802948))

(assert (=> b!7075084 d!2212610))

(declare-fun bs!1881130 () Bool)

(declare-fun d!2212612 () Bool)

(assert (= bs!1881130 (and d!2212612 b!7075088)))

(declare-fun lambda!426510 () Int)

(assert (=> bs!1881130 (= lambda!426510 lambda!426478)))

(assert (=> d!2212612 (= (inv!87010 setElem!50336) (forall!16614 (exprs!7156 setElem!50336) lambda!426510))))

(declare-fun bs!1881131 () Bool)

(assert (= bs!1881131 d!2212612))

(declare-fun m!7802950 () Bool)

(assert (=> bs!1881131 m!7802950))

(assert (=> setNonEmpty!50336 d!2212612))

(declare-fun b!7075175 () Bool)

(declare-fun res!2889917 () Bool)

(declare-fun e!4253624 () Bool)

(assert (=> b!7075175 (=> res!2889917 e!4253624)))

(assert (=> b!7075175 (= res!2889917 (not (is-Concat!26505 (h!74830 (exprs!7156 lt!2548621)))))))

(declare-fun e!4253621 () Bool)

(assert (=> b!7075175 (= e!4253621 e!4253624)))

(declare-fun bm!642976 () Bool)

(declare-fun call!642982 () Bool)

(declare-fun call!642981 () Bool)

(assert (=> bm!642976 (= call!642982 call!642981)))

(declare-fun b!7075176 () Bool)

(declare-fun e!4253623 () Bool)

(declare-fun e!4253620 () Bool)

(assert (=> b!7075176 (= e!4253623 e!4253620)))

(declare-fun c!1319972 () Bool)

(assert (=> b!7075176 (= c!1319972 (is-Star!17660 (h!74830 (exprs!7156 lt!2548621))))))

(declare-fun b!7075177 () Bool)

(declare-fun e!4253625 () Bool)

(assert (=> b!7075177 (= e!4253625 call!642982)))

(declare-fun b!7075178 () Bool)

(declare-fun res!2889916 () Bool)

(declare-fun e!4253619 () Bool)

(assert (=> b!7075178 (=> (not res!2889916) (not e!4253619))))

(declare-fun call!642983 () Bool)

(assert (=> b!7075178 (= res!2889916 call!642983)))

(assert (=> b!7075178 (= e!4253621 e!4253619)))

(declare-fun b!7075179 () Bool)

(declare-fun e!4253622 () Bool)

(assert (=> b!7075179 (= e!4253622 call!642981)))

(declare-fun b!7075180 () Bool)

(assert (=> b!7075180 (= e!4253624 e!4253625)))

(declare-fun res!2889918 () Bool)

(assert (=> b!7075180 (=> (not res!2889918) (not e!4253625))))

(assert (=> b!7075180 (= res!2889918 call!642983)))

(declare-fun d!2212614 () Bool)

(declare-fun res!2889919 () Bool)

(assert (=> d!2212614 (=> res!2889919 e!4253623)))

(assert (=> d!2212614 (= res!2889919 (is-ElementMatch!17660 (h!74830 (exprs!7156 lt!2548621))))))

(assert (=> d!2212614 (= (validRegex!8977 (h!74830 (exprs!7156 lt!2548621))) e!4253623)))

(declare-fun bm!642977 () Bool)

(declare-fun c!1319971 () Bool)

(assert (=> bm!642977 (= call!642983 (validRegex!8977 (ite c!1319971 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))))))

(declare-fun b!7075181 () Bool)

(assert (=> b!7075181 (= e!4253620 e!4253621)))

(assert (=> b!7075181 (= c!1319971 (is-Union!17660 (h!74830 (exprs!7156 lt!2548621))))))

(declare-fun bm!642978 () Bool)

(assert (=> bm!642978 (= call!642981 (validRegex!8977 (ite c!1319972 (reg!17989 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319971 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regTwo!35832 (h!74830 (exprs!7156 lt!2548621)))))))))

(declare-fun b!7075182 () Bool)

(assert (=> b!7075182 (= e!4253620 e!4253622)))

(declare-fun res!2889915 () Bool)

(assert (=> b!7075182 (= res!2889915 (not (nullable!7343 (reg!17989 (h!74830 (exprs!7156 lt!2548621))))))))

(assert (=> b!7075182 (=> (not res!2889915) (not e!4253622))))

(declare-fun b!7075183 () Bool)

(assert (=> b!7075183 (= e!4253619 call!642982)))

(assert (= (and d!2212614 (not res!2889919)) b!7075176))

(assert (= (and b!7075176 c!1319972) b!7075182))

(assert (= (and b!7075176 (not c!1319972)) b!7075181))

(assert (= (and b!7075182 res!2889915) b!7075179))

(assert (= (and b!7075181 c!1319971) b!7075178))

(assert (= (and b!7075181 (not c!1319971)) b!7075175))

(assert (= (and b!7075178 res!2889916) b!7075183))

(assert (= (and b!7075175 (not res!2889917)) b!7075180))

(assert (= (and b!7075180 res!2889918) b!7075177))

(assert (= (or b!7075183 b!7075177) bm!642976))

(assert (= (or b!7075178 b!7075180) bm!642977))

(assert (= (or b!7075179 bm!642976) bm!642978))

(declare-fun m!7802952 () Bool)

(assert (=> bm!642977 m!7802952))

(declare-fun m!7802954 () Bool)

(assert (=> bm!642978 m!7802954))

(declare-fun m!7802956 () Bool)

(assert (=> b!7075182 m!7802956))

(assert (=> b!7075085 d!2212614))

(declare-fun d!2212616 () Bool)

(declare-fun choose!54294 ((Set Context!13312) Int) (Set Context!13312))

(assert (=> d!2212616 (= (flatMap!2586 lt!2548624 lambda!426479) (choose!54294 lt!2548624 lambda!426479))))

(declare-fun bs!1881132 () Bool)

(assert (= bs!1881132 d!2212616))

(declare-fun m!7802958 () Bool)

(assert (=> bs!1881132 m!7802958))

(assert (=> b!7075086 d!2212616))

(declare-fun b!7075194 () Bool)

(declare-fun e!4253633 () (Set Context!13312))

(assert (=> b!7075194 (= e!4253633 (as set.empty (Set Context!13312)))))

(declare-fun call!642986 () (Set Context!13312))

(declare-fun b!7075195 () Bool)

(declare-fun e!4253634 () (Set Context!13312))

(assert (=> b!7075195 (= e!4253634 (set.union call!642986 (derivationStepZipperUp!2244 (Context!13313 (t!382289 (exprs!7156 lt!2548619))) (h!74831 s!7408))))))

(declare-fun bm!642981 () Bool)

(assert (=> bm!642981 (= call!642986 (derivationStepZipperDown!2294 (h!74830 (exprs!7156 lt!2548619)) (Context!13313 (t!382289 (exprs!7156 lt!2548619))) (h!74831 s!7408)))))

(declare-fun b!7075196 () Bool)

(assert (=> b!7075196 (= e!4253634 e!4253633)))

(declare-fun c!1319977 () Bool)

(assert (=> b!7075196 (= c!1319977 (is-Cons!68382 (exprs!7156 lt!2548619)))))

(declare-fun d!2212618 () Bool)

(declare-fun c!1319978 () Bool)

(declare-fun e!4253632 () Bool)

(assert (=> d!2212618 (= c!1319978 e!4253632)))

(declare-fun res!2889922 () Bool)

(assert (=> d!2212618 (=> (not res!2889922) (not e!4253632))))

(assert (=> d!2212618 (= res!2889922 (is-Cons!68382 (exprs!7156 lt!2548619)))))

(assert (=> d!2212618 (= (derivationStepZipperUp!2244 lt!2548619 (h!74831 s!7408)) e!4253634)))

(declare-fun b!7075197 () Bool)

(assert (=> b!7075197 (= e!4253632 (nullable!7343 (h!74830 (exprs!7156 lt!2548619))))))

(declare-fun b!7075198 () Bool)

(assert (=> b!7075198 (= e!4253633 call!642986)))

(assert (= (and d!2212618 res!2889922) b!7075197))

(assert (= (and d!2212618 c!1319978) b!7075195))

(assert (= (and d!2212618 (not c!1319978)) b!7075196))

(assert (= (and b!7075196 c!1319977) b!7075198))

(assert (= (and b!7075196 (not c!1319977)) b!7075194))

(assert (= (or b!7075195 b!7075198) bm!642981))

(declare-fun m!7802960 () Bool)

(assert (=> b!7075195 m!7802960))

(declare-fun m!7802962 () Bool)

(assert (=> bm!642981 m!7802962))

(declare-fun m!7802964 () Bool)

(assert (=> b!7075197 m!7802964))

(assert (=> b!7075086 d!2212618))

(assert (=> b!7075086 d!2212600))

(declare-fun d!2212620 () Bool)

(declare-fun dynLambda!27833 (Int Context!13312) (Set Context!13312))

(assert (=> d!2212620 (= (flatMap!2586 lt!2548624 lambda!426479) (dynLambda!27833 lambda!426479 lt!2548619))))

(declare-fun lt!2548690 () Unit!162030)

(declare-fun choose!54295 ((Set Context!13312) Context!13312 Int) Unit!162030)

(assert (=> d!2212620 (= lt!2548690 (choose!54295 lt!2548624 lt!2548619 lambda!426479))))

(assert (=> d!2212620 (= lt!2548624 (set.insert lt!2548619 (as set.empty (Set Context!13312))))))

(assert (=> d!2212620 (= (lemmaFlatMapOnSingletonSet!2095 lt!2548624 lt!2548619 lambda!426479) lt!2548690)))

(declare-fun b_lambda!270153 () Bool)

(assert (=> (not b_lambda!270153) (not d!2212620)))

(declare-fun bs!1881133 () Bool)

(assert (= bs!1881133 d!2212620))

(assert (=> bs!1881133 m!7802804))

(declare-fun m!7802966 () Bool)

(assert (=> bs!1881133 m!7802966))

(declare-fun m!7802968 () Bool)

(assert (=> bs!1881133 m!7802968))

(assert (=> bs!1881133 m!7802850))

(assert (=> b!7075086 d!2212620))

(declare-fun bs!1881134 () Bool)

(declare-fun d!2212622 () Bool)

(assert (= bs!1881134 (and d!2212622 b!7075086)))

(declare-fun lambda!426513 () Int)

(assert (=> bs!1881134 (= lambda!426513 lambda!426479)))

(assert (=> d!2212622 true))

(assert (=> d!2212622 (= (derivationStepZipper!3110 lt!2548624 (h!74831 s!7408)) (flatMap!2586 lt!2548624 lambda!426513))))

(declare-fun bs!1881135 () Bool)

(assert (= bs!1881135 d!2212622))

(declare-fun m!7802970 () Bool)

(assert (=> bs!1881135 m!7802970))

(assert (=> b!7075086 d!2212622))

(declare-fun d!2212624 () Bool)

(declare-fun c!1319981 () Bool)

(assert (=> d!2212624 (= c!1319981 (isEmpty!39913 (t!382290 s!7408)))))

(declare-fun e!4253635 () Bool)

(assert (=> d!2212624 (= (matchZipper!3200 (derivationStepZipperDown!2294 (h!74830 (exprs!7156 lt!2548621)) (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (h!74831 s!7408)) (t!382290 s!7408)) e!4253635)))

(declare-fun b!7075201 () Bool)

(assert (=> b!7075201 (= e!4253635 (nullableZipper!2708 (derivationStepZipperDown!2294 (h!74830 (exprs!7156 lt!2548621)) (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (h!74831 s!7408))))))

(declare-fun b!7075202 () Bool)

(assert (=> b!7075202 (= e!4253635 (matchZipper!3200 (derivationStepZipper!3110 (derivationStepZipperDown!2294 (h!74830 (exprs!7156 lt!2548621)) (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (h!74831 s!7408)) (head!14416 (t!382290 s!7408))) (tail!13854 (t!382290 s!7408))))))

(assert (= (and d!2212624 c!1319981) b!7075201))

(assert (= (and d!2212624 (not c!1319981)) b!7075202))

(declare-fun m!7802972 () Bool)

(assert (=> d!2212624 m!7802972))

(assert (=> b!7075201 m!7802836))

(declare-fun m!7802974 () Bool)

(assert (=> b!7075201 m!7802974))

(declare-fun m!7802976 () Bool)

(assert (=> b!7075202 m!7802976))

(assert (=> b!7075202 m!7802836))

(assert (=> b!7075202 m!7802976))

(declare-fun m!7802978 () Bool)

(assert (=> b!7075202 m!7802978))

(declare-fun m!7802980 () Bool)

(assert (=> b!7075202 m!7802980))

(assert (=> b!7075202 m!7802978))

(assert (=> b!7075202 m!7802980))

(declare-fun m!7802982 () Bool)

(assert (=> b!7075202 m!7802982))

(assert (=> b!7075081 d!2212624))

(declare-fun b!7075225 () Bool)

(declare-fun e!4253649 () (Set Context!13312))

(declare-fun call!642999 () (Set Context!13312))

(assert (=> b!7075225 (= e!4253649 call!642999)))

(declare-fun b!7075226 () Bool)

(declare-fun c!1319992 () Bool)

(declare-fun e!4253653 () Bool)

(assert (=> b!7075226 (= c!1319992 e!4253653)))

(declare-fun res!2889925 () Bool)

(assert (=> b!7075226 (=> (not res!2889925) (not e!4253653))))

(assert (=> b!7075226 (= res!2889925 (is-Concat!26505 (h!74830 (exprs!7156 lt!2548621))))))

(declare-fun e!4253650 () (Set Context!13312))

(declare-fun e!4253648 () (Set Context!13312))

(assert (=> b!7075226 (= e!4253650 e!4253648)))

(declare-fun b!7075227 () Bool)

(declare-fun e!4253651 () (Set Context!13312))

(assert (=> b!7075227 (= e!4253651 (set.insert (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (as set.empty (Set Context!13312))))))

(declare-fun d!2212628 () Bool)

(declare-fun c!1319993 () Bool)

(assert (=> d!2212628 (= c!1319993 (and (is-ElementMatch!17660 (h!74830 (exprs!7156 lt!2548621))) (= (c!1319952 (h!74830 (exprs!7156 lt!2548621))) (h!74831 s!7408))))))

(assert (=> d!2212628 (= (derivationStepZipperDown!2294 (h!74830 (exprs!7156 lt!2548621)) (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (h!74831 s!7408)) e!4253651)))

(declare-fun b!7075228 () Bool)

(assert (=> b!7075228 (= e!4253648 e!4253649)))

(declare-fun c!1319996 () Bool)

(assert (=> b!7075228 (= c!1319996 (is-Concat!26505 (h!74830 (exprs!7156 lt!2548621))))))

(declare-fun b!7075229 () Bool)

(declare-fun e!4253652 () (Set Context!13312))

(assert (=> b!7075229 (= e!4253652 (as set.empty (Set Context!13312)))))

(declare-fun b!7075230 () Bool)

(assert (=> b!7075230 (= e!4253653 (nullable!7343 (regOne!35832 (h!74830 (exprs!7156 lt!2548621)))))))

(declare-fun bm!642994 () Bool)

(declare-fun call!643001 () List!68506)

(declare-fun call!643004 () List!68506)

(assert (=> bm!642994 (= call!643001 call!643004)))

(declare-fun call!643003 () (Set Context!13312))

(declare-fun c!1319994 () Bool)

(declare-fun bm!642995 () Bool)

(assert (=> bm!642995 (= call!643003 (derivationStepZipperDown!2294 (ite c!1319994 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621)))) (ite c!1319994 (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (Context!13313 call!643004)) (h!74831 s!7408)))))

(declare-fun bm!642996 () Bool)

(declare-fun call!643002 () (Set Context!13312))

(declare-fun call!643000 () (Set Context!13312))

(assert (=> bm!642996 (= call!643002 call!643000)))

(declare-fun b!7075231 () Bool)

(assert (=> b!7075231 (= e!4253652 call!642999)))

(declare-fun bm!642997 () Bool)

(assert (=> bm!642997 (= call!643000 (derivationStepZipperDown!2294 (ite c!1319994 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319992 (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319996 (regOne!35832 (h!74830 (exprs!7156 lt!2548621))) (reg!17989 (h!74830 (exprs!7156 lt!2548621)))))) (ite (or c!1319994 c!1319992) (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (Context!13313 call!643001)) (h!74831 s!7408)))))

(declare-fun bm!642998 () Bool)

(assert (=> bm!642998 (= call!642999 call!643002)))

(declare-fun b!7075232 () Bool)

(assert (=> b!7075232 (= e!4253648 (set.union call!643003 call!643002))))

(declare-fun bm!642999 () Bool)

(declare-fun $colon$colon!2665 (List!68506 Regex!17660) List!68506)

(assert (=> bm!642999 (= call!643004 ($colon$colon!2665 (exprs!7156 (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306)))) (ite (or c!1319992 c!1319996) (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))) (h!74830 (exprs!7156 lt!2548621)))))))

(declare-fun b!7075233 () Bool)

(assert (=> b!7075233 (= e!4253651 e!4253650)))

(assert (=> b!7075233 (= c!1319994 (is-Union!17660 (h!74830 (exprs!7156 lt!2548621))))))

(declare-fun b!7075234 () Bool)

(assert (=> b!7075234 (= e!4253650 (set.union call!643000 call!643003))))

(declare-fun b!7075235 () Bool)

(declare-fun c!1319995 () Bool)

(assert (=> b!7075235 (= c!1319995 (is-Star!17660 (h!74830 (exprs!7156 lt!2548621))))))

(assert (=> b!7075235 (= e!4253649 e!4253652)))

(assert (= (and d!2212628 c!1319993) b!7075227))

(assert (= (and d!2212628 (not c!1319993)) b!7075233))

(assert (= (and b!7075233 c!1319994) b!7075234))

(assert (= (and b!7075233 (not c!1319994)) b!7075226))

(assert (= (and b!7075226 res!2889925) b!7075230))

(assert (= (and b!7075226 c!1319992) b!7075232))

(assert (= (and b!7075226 (not c!1319992)) b!7075228))

(assert (= (and b!7075228 c!1319996) b!7075225))

(assert (= (and b!7075228 (not c!1319996)) b!7075235))

(assert (= (and b!7075235 c!1319995) b!7075231))

(assert (= (and b!7075235 (not c!1319995)) b!7075229))

(assert (= (or b!7075225 b!7075231) bm!642994))

(assert (= (or b!7075225 b!7075231) bm!642998))

(assert (= (or b!7075232 bm!642998) bm!642996))

(assert (= (or b!7075232 bm!642994) bm!642999))

(assert (= (or b!7075234 bm!642996) bm!642997))

(assert (= (or b!7075234 b!7075232) bm!642995))

(declare-fun m!7802988 () Bool)

(assert (=> b!7075227 m!7802988))

(declare-fun m!7802990 () Bool)

(assert (=> b!7075230 m!7802990))

(declare-fun m!7802992 () Bool)

(assert (=> bm!642995 m!7802992))

(declare-fun m!7802994 () Bool)

(assert (=> bm!642997 m!7802994))

(declare-fun m!7802996 () Bool)

(assert (=> bm!642999 m!7802996))

(assert (=> b!7075081 d!2212628))

(declare-fun b!7075262 () Bool)

(declare-fun e!4253673 () List!68506)

(assert (=> b!7075262 (= e!4253673 (exprs!7156 ct2!306))))

(declare-fun b!7075263 () Bool)

(assert (=> b!7075263 (= e!4253673 (Cons!68382 (h!74830 lt!2548616) (++!15801 (t!382289 lt!2548616) (exprs!7156 ct2!306))))))

(declare-fun lt!2548693 () List!68506)

(declare-fun b!7075265 () Bool)

(declare-fun e!4253672 () Bool)

(assert (=> b!7075265 (= e!4253672 (or (not (= (exprs!7156 ct2!306) Nil!68382)) (= lt!2548693 lt!2548616)))))

(declare-fun b!7075264 () Bool)

(declare-fun res!2889941 () Bool)

(assert (=> b!7075264 (=> (not res!2889941) (not e!4253672))))

(declare-fun size!41226 (List!68506) Int)

(assert (=> b!7075264 (= res!2889941 (= (size!41226 lt!2548693) (+ (size!41226 lt!2548616) (size!41226 (exprs!7156 ct2!306)))))))

(declare-fun d!2212636 () Bool)

(assert (=> d!2212636 e!4253672))

(declare-fun res!2889940 () Bool)

(assert (=> d!2212636 (=> (not res!2889940) (not e!4253672))))

(declare-fun content!13819 (List!68506) (Set Regex!17660))

(assert (=> d!2212636 (= res!2889940 (= (content!13819 lt!2548693) (set.union (content!13819 lt!2548616) (content!13819 (exprs!7156 ct2!306)))))))

(assert (=> d!2212636 (= lt!2548693 e!4253673)))

(declare-fun c!1320003 () Bool)

(assert (=> d!2212636 (= c!1320003 (is-Nil!68382 lt!2548616))))

(assert (=> d!2212636 (= (++!15801 lt!2548616 (exprs!7156 ct2!306)) lt!2548693)))

(assert (= (and d!2212636 c!1320003) b!7075262))

(assert (= (and d!2212636 (not c!1320003)) b!7075263))

(assert (= (and d!2212636 res!2889940) b!7075264))

(assert (= (and b!7075264 res!2889941) b!7075265))

(declare-fun m!7802998 () Bool)

(assert (=> b!7075263 m!7802998))

(declare-fun m!7803000 () Bool)

(assert (=> b!7075264 m!7803000))

(declare-fun m!7803002 () Bool)

(assert (=> b!7075264 m!7803002))

(declare-fun m!7803004 () Bool)

(assert (=> b!7075264 m!7803004))

(declare-fun m!7803006 () Bool)

(assert (=> d!2212636 m!7803006))

(declare-fun m!7803008 () Bool)

(assert (=> d!2212636 m!7803008))

(declare-fun m!7803010 () Bool)

(assert (=> d!2212636 m!7803010))

(assert (=> b!7075081 d!2212636))

(declare-fun d!2212638 () Bool)

(assert (=> d!2212638 (forall!16614 (++!15801 lt!2548616 (exprs!7156 ct2!306)) lambda!426478)))

(declare-fun lt!2548694 () Unit!162030)

(assert (=> d!2212638 (= lt!2548694 (choose!54291 lt!2548616 (exprs!7156 ct2!306) lambda!426478))))

(assert (=> d!2212638 (forall!16614 lt!2548616 lambda!426478)))

(assert (=> d!2212638 (= (lemmaConcatPreservesForall!971 lt!2548616 (exprs!7156 ct2!306) lambda!426478) lt!2548694)))

(declare-fun bs!1881139 () Bool)

(assert (= bs!1881139 d!2212638))

(assert (=> bs!1881139 m!7802834))

(assert (=> bs!1881139 m!7802834))

(declare-fun m!7803012 () Bool)

(assert (=> bs!1881139 m!7803012))

(declare-fun m!7803014 () Bool)

(assert (=> bs!1881139 m!7803014))

(declare-fun m!7803016 () Bool)

(assert (=> bs!1881139 m!7803016))

(assert (=> b!7075081 d!2212638))

(declare-fun d!2212640 () Bool)

(declare-fun nullableFct!2820 (Regex!17660) Bool)

(assert (=> d!2212640 (= (nullable!7343 (h!74830 (exprs!7156 lt!2548621))) (nullableFct!2820 (h!74830 (exprs!7156 lt!2548621))))))

(declare-fun bs!1881140 () Bool)

(assert (= bs!1881140 d!2212640))

(declare-fun m!7803018 () Bool)

(assert (=> bs!1881140 m!7803018))

(assert (=> b!7075078 d!2212640))

(declare-fun d!2212642 () Bool)

(assert (=> d!2212642 (= (tail!13852 (exprs!7156 lt!2548621)) (t!382289 (exprs!7156 lt!2548621)))))

(assert (=> b!7075078 d!2212642))

(declare-fun d!2212644 () Bool)

(declare-fun c!1320004 () Bool)

(assert (=> d!2212644 (= c!1320004 (isEmpty!39913 s!7408))))

(declare-fun e!4253674 () Bool)

(assert (=> d!2212644 (= (matchZipper!3200 lt!2548626 s!7408) e!4253674)))

(declare-fun b!7075266 () Bool)

(assert (=> b!7075266 (= e!4253674 (nullableZipper!2708 lt!2548626))))

(declare-fun b!7075267 () Bool)

(assert (=> b!7075267 (= e!4253674 (matchZipper!3200 (derivationStepZipper!3110 lt!2548626 (head!14416 s!7408)) (tail!13854 s!7408)))))

(assert (= (and d!2212644 c!1320004) b!7075266))

(assert (= (and d!2212644 (not c!1320004)) b!7075267))

(assert (=> d!2212644 m!7802932))

(declare-fun m!7803020 () Bool)

(assert (=> b!7075266 m!7803020))

(assert (=> b!7075267 m!7802936))

(assert (=> b!7075267 m!7802936))

(declare-fun m!7803022 () Bool)

(assert (=> b!7075267 m!7803022))

(assert (=> b!7075267 m!7802940))

(assert (=> b!7075267 m!7803022))

(assert (=> b!7075267 m!7802940))

(declare-fun m!7803024 () Bool)

(assert (=> b!7075267 m!7803024))

(assert (=> start!687572 d!2212644))

(declare-fun bs!1881141 () Bool)

(declare-fun d!2212646 () Bool)

(assert (= bs!1881141 (and d!2212646 b!7075088)))

(declare-fun lambda!426521 () Int)

(assert (=> bs!1881141 (= lambda!426521 lambda!426477)))

(assert (=> d!2212646 true))

(declare-fun map!16007 ((Set Context!13312) Int) (Set Context!13312))

(assert (=> d!2212646 (= (appendTo!781 z1!570 ct2!306) (map!16007 z1!570 lambda!426521))))

(declare-fun bs!1881142 () Bool)

(assert (= bs!1881142 d!2212646))

(declare-fun m!7803032 () Bool)

(assert (=> bs!1881142 m!7803032))

(assert (=> start!687572 d!2212646))

(declare-fun bs!1881143 () Bool)

(declare-fun d!2212650 () Bool)

(assert (= bs!1881143 (and d!2212650 b!7075088)))

(declare-fun lambda!426522 () Int)

(assert (=> bs!1881143 (= lambda!426522 lambda!426478)))

(declare-fun bs!1881144 () Bool)

(assert (= bs!1881144 (and d!2212650 d!2212612)))

(assert (=> bs!1881144 (= lambda!426522 lambda!426510)))

(assert (=> d!2212650 (= (inv!87010 ct2!306) (forall!16614 (exprs!7156 ct2!306) lambda!426522))))

(declare-fun bs!1881145 () Bool)

(assert (= bs!1881145 d!2212650))

(declare-fun m!7803034 () Bool)

(assert (=> bs!1881145 m!7803034))

(assert (=> start!687572 d!2212650))

(declare-fun b!7075277 () Bool)

(declare-fun e!4253683 () List!68506)

(assert (=> b!7075277 (= e!4253683 (exprs!7156 ct2!306))))

(declare-fun b!7075278 () Bool)

(assert (=> b!7075278 (= e!4253683 (Cons!68382 (h!74830 (exprs!7156 lt!2548621)) (++!15801 (t!382289 (exprs!7156 lt!2548621)) (exprs!7156 ct2!306))))))

(declare-fun lt!2548697 () List!68506)

(declare-fun b!7075280 () Bool)

(declare-fun e!4253682 () Bool)

(assert (=> b!7075280 (= e!4253682 (or (not (= (exprs!7156 ct2!306) Nil!68382)) (= lt!2548697 (exprs!7156 lt!2548621))))))

(declare-fun b!7075279 () Bool)

(declare-fun res!2889948 () Bool)

(assert (=> b!7075279 (=> (not res!2889948) (not e!4253682))))

(assert (=> b!7075279 (= res!2889948 (= (size!41226 lt!2548697) (+ (size!41226 (exprs!7156 lt!2548621)) (size!41226 (exprs!7156 ct2!306)))))))

(declare-fun d!2212652 () Bool)

(assert (=> d!2212652 e!4253682))

(declare-fun res!2889947 () Bool)

(assert (=> d!2212652 (=> (not res!2889947) (not e!4253682))))

(assert (=> d!2212652 (= res!2889947 (= (content!13819 lt!2548697) (set.union (content!13819 (exprs!7156 lt!2548621)) (content!13819 (exprs!7156 ct2!306)))))))

(assert (=> d!2212652 (= lt!2548697 e!4253683)))

(declare-fun c!1320008 () Bool)

(assert (=> d!2212652 (= c!1320008 (is-Nil!68382 (exprs!7156 lt!2548621)))))

(assert (=> d!2212652 (= (++!15801 (exprs!7156 lt!2548621) (exprs!7156 ct2!306)) lt!2548697)))

(assert (= (and d!2212652 c!1320008) b!7075277))

(assert (= (and d!2212652 (not c!1320008)) b!7075278))

(assert (= (and d!2212652 res!2889947) b!7075279))

(assert (= (and b!7075279 res!2889948) b!7075280))

(declare-fun m!7803036 () Bool)

(assert (=> b!7075278 m!7803036))

(declare-fun m!7803038 () Bool)

(assert (=> b!7075279 m!7803038))

(declare-fun m!7803040 () Bool)

(assert (=> b!7075279 m!7803040))

(assert (=> b!7075279 m!7803004))

(declare-fun m!7803042 () Bool)

(assert (=> d!2212652 m!7803042))

(declare-fun m!7803044 () Bool)

(assert (=> d!2212652 m!7803044))

(assert (=> d!2212652 m!7803010))

(assert (=> b!7075088 d!2212652))

(assert (=> b!7075088 d!2212600))

(declare-fun d!2212654 () Bool)

(declare-fun e!4253686 () Bool)

(assert (=> d!2212654 e!4253686))

(declare-fun res!2889951 () Bool)

(assert (=> d!2212654 (=> (not res!2889951) (not e!4253686))))

(declare-fun lt!2548700 () Context!13312)

(declare-fun dynLambda!27834 (Int Context!13312) Context!13312)

(assert (=> d!2212654 (= res!2889951 (= lt!2548618 (dynLambda!27834 lambda!426477 lt!2548700)))))

(declare-fun choose!54296 ((Set Context!13312) Int Context!13312) Context!13312)

(assert (=> d!2212654 (= lt!2548700 (choose!54296 z1!570 lambda!426477 lt!2548618))))

(assert (=> d!2212654 (set.member lt!2548618 (map!16007 z1!570 lambda!426477))))

(assert (=> d!2212654 (= (mapPost2!489 z1!570 lambda!426477 lt!2548618) lt!2548700)))

(declare-fun b!7075284 () Bool)

(assert (=> b!7075284 (= e!4253686 (set.member lt!2548700 z1!570))))

(assert (= (and d!2212654 res!2889951) b!7075284))

(declare-fun b_lambda!270155 () Bool)

(assert (=> (not b_lambda!270155) (not d!2212654)))

(declare-fun m!7803046 () Bool)

(assert (=> d!2212654 m!7803046))

(declare-fun m!7803048 () Bool)

(assert (=> d!2212654 m!7803048))

(declare-fun m!7803050 () Bool)

(assert (=> d!2212654 m!7803050))

(declare-fun m!7803052 () Bool)

(assert (=> d!2212654 m!7803052))

(declare-fun m!7803054 () Bool)

(assert (=> b!7075284 m!7803054))

(assert (=> b!7075088 d!2212654))

(declare-fun d!2212656 () Bool)

(assert (=> d!2212656 (= (isEmpty!39911 (exprs!7156 lt!2548621)) (is-Nil!68382 (exprs!7156 lt!2548621)))))

(assert (=> b!7075083 d!2212656))

(declare-fun condSetEmpty!50342 () Bool)

(assert (=> setNonEmpty!50336 (= condSetEmpty!50342 (= setRest!50336 (as set.empty (Set Context!13312))))))

(declare-fun setRes!50342 () Bool)

(assert (=> setNonEmpty!50336 (= tp!1942677 setRes!50342)))

(declare-fun setIsEmpty!50342 () Bool)

(assert (=> setIsEmpty!50342 setRes!50342))

(declare-fun setNonEmpty!50342 () Bool)

(declare-fun setElem!50342 () Context!13312)

(declare-fun e!4253691 () Bool)

(declare-fun tp!1942696 () Bool)

(assert (=> setNonEmpty!50342 (= setRes!50342 (and tp!1942696 (inv!87010 setElem!50342) e!4253691))))

(declare-fun setRest!50342 () (Set Context!13312))

(assert (=> setNonEmpty!50342 (= setRest!50336 (set.union (set.insert setElem!50342 (as set.empty (Set Context!13312))) setRest!50342))))

(declare-fun b!7075293 () Bool)

(declare-fun tp!1942695 () Bool)

(assert (=> b!7075293 (= e!4253691 tp!1942695)))

(assert (= (and setNonEmpty!50336 condSetEmpty!50342) setIsEmpty!50342))

(assert (= (and setNonEmpty!50336 (not condSetEmpty!50342)) setNonEmpty!50342))

(assert (= setNonEmpty!50342 b!7075293))

(declare-fun m!7803056 () Bool)

(assert (=> setNonEmpty!50342 m!7803056))

(declare-fun b!7075298 () Bool)

(declare-fun e!4253694 () Bool)

(declare-fun tp!1942701 () Bool)

(declare-fun tp!1942702 () Bool)

(assert (=> b!7075298 (= e!4253694 (and tp!1942701 tp!1942702))))

(assert (=> b!7075080 (= tp!1942675 e!4253694)))

(assert (= (and b!7075080 (is-Cons!68382 (exprs!7156 ct2!306))) b!7075298))

(declare-fun b!7075303 () Bool)

(declare-fun e!4253697 () Bool)

(declare-fun tp!1942705 () Bool)

(assert (=> b!7075303 (= e!4253697 (and tp_is_empty!44545 tp!1942705))))

(assert (=> b!7075077 (= tp!1942676 e!4253697)))

(assert (= (and b!7075077 (is-Cons!68383 (t!382290 s!7408))) b!7075303))

(declare-fun b!7075304 () Bool)

(declare-fun e!4253698 () Bool)

(declare-fun tp!1942706 () Bool)

(declare-fun tp!1942707 () Bool)

(assert (=> b!7075304 (= e!4253698 (and tp!1942706 tp!1942707))))

(assert (=> b!7075082 (= tp!1942678 e!4253698)))

(assert (= (and b!7075082 (is-Cons!68382 (exprs!7156 setElem!50336))) b!7075304))

(declare-fun b_lambda!270157 () Bool)

(assert (= b_lambda!270151 (or b!7075084 b_lambda!270157)))

(declare-fun bs!1881146 () Bool)

(declare-fun d!2212658 () Bool)

(assert (= bs!1881146 (and d!2212658 b!7075084)))

(assert (=> bs!1881146 (= (dynLambda!27832 lambda!426476 lt!2548684) (matchZipper!3200 (set.insert lt!2548684 (as set.empty (Set Context!13312))) s!7408))))

(declare-fun m!7803058 () Bool)

(assert (=> bs!1881146 m!7803058))

(assert (=> bs!1881146 m!7803058))

(declare-fun m!7803060 () Bool)

(assert (=> bs!1881146 m!7803060))

(assert (=> d!2212606 d!2212658))

(declare-fun b_lambda!270159 () Bool)

(assert (= b_lambda!270153 (or b!7075086 b_lambda!270159)))

(declare-fun bs!1881147 () Bool)

(declare-fun d!2212660 () Bool)

(assert (= bs!1881147 (and d!2212660 b!7075086)))

(assert (=> bs!1881147 (= (dynLambda!27833 lambda!426479 lt!2548619) (derivationStepZipperUp!2244 lt!2548619 (h!74831 s!7408)))))

(assert (=> bs!1881147 m!7802798))

(assert (=> d!2212620 d!2212660))

(declare-fun b_lambda!270161 () Bool)

(assert (= b_lambda!270155 (or b!7075088 b_lambda!270161)))

(declare-fun bs!1881148 () Bool)

(declare-fun d!2212662 () Bool)

(assert (= bs!1881148 (and d!2212662 b!7075088)))

(declare-fun lt!2548701 () Unit!162030)

(assert (=> bs!1881148 (= lt!2548701 (lemmaConcatPreservesForall!971 (exprs!7156 lt!2548700) (exprs!7156 ct2!306) lambda!426478))))

(assert (=> bs!1881148 (= (dynLambda!27834 lambda!426477 lt!2548700) (Context!13313 (++!15801 (exprs!7156 lt!2548700) (exprs!7156 ct2!306))))))

(declare-fun m!7803062 () Bool)

(assert (=> bs!1881148 m!7803062))

(declare-fun m!7803064 () Bool)

(assert (=> bs!1881148 m!7803064))

(assert (=> d!2212654 d!2212662))

(push 1)

(assert (not d!2212616))

(assert (not b!7075266))

(assert (not b_lambda!270159))

(assert (not b!7075197))

(assert (not b!7075264))

(assert (not d!2212620))

(assert (not b!7075195))

(assert (not d!2212608))

(assert (not d!2212624))

(assert (not b!7075202))

(assert (not d!2212604))

(assert (not d!2212602))

(assert (not d!2212638))

(assert (not b_lambda!270157))

(assert (not d!2212640))

(assert (not d!2212600))

(assert (not b!7075182))

(assert (not bm!642999))

(assert (not b!7075278))

(assert (not b!7075279))

(assert (not d!2212652))

(assert (not setNonEmpty!50342))

(assert (not bs!1881147))

(assert (not d!2212644))

(assert tp_is_empty!44545)

(assert (not b!7075267))

(assert (not b!7075201))

(assert (not d!2212606))

(assert (not b!7075304))

(assert (not d!2212622))

(assert (not bs!1881148))

(assert (not b!7075152))

(assert (not bs!1881146))

(assert (not d!2212646))

(assert (not b!7075298))

(assert (not b!7075230))

(assert (not bm!642995))

(assert (not d!2212636))

(assert (not bm!642997))

(assert (not d!2212650))

(assert (not bm!642981))

(assert (not d!2212612))

(assert (not b!7075293))

(assert (not bm!642977))

(assert (not b!7075153))

(assert (not b!7075303))

(assert (not d!2212654))

(assert (not bm!642978))

(assert (not b!7075263))

(assert (not d!2212610))

(assert (not b!7075156))

(assert (not b_lambda!270161))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2212708 () Bool)

(assert (=> d!2212708 (= (nullable!7343 (regOne!35832 (h!74830 (exprs!7156 lt!2548621)))) (nullableFct!2820 (regOne!35832 (h!74830 (exprs!7156 lt!2548621)))))))

(declare-fun bs!1881168 () Bool)

(assert (= bs!1881168 d!2212708))

(declare-fun m!7803204 () Bool)

(assert (=> bs!1881168 m!7803204))

(assert (=> b!7075230 d!2212708))

(declare-fun d!2212710 () Bool)

(declare-fun choose!54302 ((Set Context!13312) Int) (Set Context!13312))

(assert (=> d!2212710 (= (map!16007 z1!570 lambda!426521) (choose!54302 z1!570 lambda!426521))))

(declare-fun bs!1881169 () Bool)

(assert (= bs!1881169 d!2212710))

(declare-fun m!7803206 () Bool)

(assert (=> bs!1881169 m!7803206))

(assert (=> d!2212646 d!2212710))

(declare-fun b!7075405 () Bool)

(declare-fun e!4253757 () (Set Context!13312))

(declare-fun call!643035 () (Set Context!13312))

(assert (=> b!7075405 (= e!4253757 call!643035)))

(declare-fun b!7075406 () Bool)

(declare-fun c!1320044 () Bool)

(declare-fun e!4253761 () Bool)

(assert (=> b!7075406 (= c!1320044 e!4253761)))

(declare-fun res!2889975 () Bool)

(assert (=> b!7075406 (=> (not res!2889975) (not e!4253761))))

(assert (=> b!7075406 (= res!2889975 (is-Concat!26505 (ite c!1319994 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))))))

(declare-fun e!4253758 () (Set Context!13312))

(declare-fun e!4253756 () (Set Context!13312))

(assert (=> b!7075406 (= e!4253758 e!4253756)))

(declare-fun e!4253759 () (Set Context!13312))

(declare-fun b!7075407 () Bool)

(assert (=> b!7075407 (= e!4253759 (set.insert (ite c!1319994 (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (Context!13313 call!643004)) (as set.empty (Set Context!13312))))))

(declare-fun d!2212712 () Bool)

(declare-fun c!1320045 () Bool)

(assert (=> d!2212712 (= c!1320045 (and (is-ElementMatch!17660 (ite c!1319994 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))) (= (c!1319952 (ite c!1319994 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))) (h!74831 s!7408))))))

(assert (=> d!2212712 (= (derivationStepZipperDown!2294 (ite c!1319994 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621)))) (ite c!1319994 (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (Context!13313 call!643004)) (h!74831 s!7408)) e!4253759)))

(declare-fun b!7075408 () Bool)

(assert (=> b!7075408 (= e!4253756 e!4253757)))

(declare-fun c!1320048 () Bool)

(assert (=> b!7075408 (= c!1320048 (is-Concat!26505 (ite c!1319994 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))))))

(declare-fun b!7075409 () Bool)

(declare-fun e!4253760 () (Set Context!13312))

(assert (=> b!7075409 (= e!4253760 (as set.empty (Set Context!13312)))))

(declare-fun b!7075410 () Bool)

(assert (=> b!7075410 (= e!4253761 (nullable!7343 (regOne!35832 (ite c!1319994 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621)))))))))

(declare-fun bm!643030 () Bool)

(declare-fun call!643037 () List!68506)

(declare-fun call!643040 () List!68506)

(assert (=> bm!643030 (= call!643037 call!643040)))

(declare-fun call!643039 () (Set Context!13312))

(declare-fun c!1320046 () Bool)

(declare-fun bm!643031 () Bool)

(assert (=> bm!643031 (= call!643039 (derivationStepZipperDown!2294 (ite c!1320046 (regTwo!35833 (ite c!1319994 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))) (regOne!35832 (ite c!1319994 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621)))))) (ite c!1320046 (ite c!1319994 (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (Context!13313 call!643004)) (Context!13313 call!643040)) (h!74831 s!7408)))))

(declare-fun bm!643032 () Bool)

(declare-fun call!643038 () (Set Context!13312))

(declare-fun call!643036 () (Set Context!13312))

(assert (=> bm!643032 (= call!643038 call!643036)))

(declare-fun b!7075411 () Bool)

(assert (=> b!7075411 (= e!4253760 call!643035)))

(declare-fun bm!643033 () Bool)

(assert (=> bm!643033 (= call!643036 (derivationStepZipperDown!2294 (ite c!1320046 (regOne!35833 (ite c!1319994 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))) (ite c!1320044 (regTwo!35832 (ite c!1319994 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))) (ite c!1320048 (regOne!35832 (ite c!1319994 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))) (reg!17989 (ite c!1319994 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621)))))))) (ite (or c!1320046 c!1320044) (ite c!1319994 (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (Context!13313 call!643004)) (Context!13313 call!643037)) (h!74831 s!7408)))))

(declare-fun bm!643034 () Bool)

(assert (=> bm!643034 (= call!643035 call!643038)))

(declare-fun b!7075412 () Bool)

(assert (=> b!7075412 (= e!4253756 (set.union call!643039 call!643038))))

(declare-fun bm!643035 () Bool)

(assert (=> bm!643035 (= call!643040 ($colon$colon!2665 (exprs!7156 (ite c!1319994 (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (Context!13313 call!643004))) (ite (or c!1320044 c!1320048) (regTwo!35832 (ite c!1319994 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))) (ite c!1319994 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621)))))))))

(declare-fun b!7075413 () Bool)

(assert (=> b!7075413 (= e!4253759 e!4253758)))

(assert (=> b!7075413 (= c!1320046 (is-Union!17660 (ite c!1319994 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))))))

(declare-fun b!7075414 () Bool)

(assert (=> b!7075414 (= e!4253758 (set.union call!643036 call!643039))))

(declare-fun b!7075415 () Bool)

(declare-fun c!1320047 () Bool)

(assert (=> b!7075415 (= c!1320047 (is-Star!17660 (ite c!1319994 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))))))

(assert (=> b!7075415 (= e!4253757 e!4253760)))

(assert (= (and d!2212712 c!1320045) b!7075407))

(assert (= (and d!2212712 (not c!1320045)) b!7075413))

(assert (= (and b!7075413 c!1320046) b!7075414))

(assert (= (and b!7075413 (not c!1320046)) b!7075406))

(assert (= (and b!7075406 res!2889975) b!7075410))

(assert (= (and b!7075406 c!1320044) b!7075412))

(assert (= (and b!7075406 (not c!1320044)) b!7075408))

(assert (= (and b!7075408 c!1320048) b!7075405))

(assert (= (and b!7075408 (not c!1320048)) b!7075415))

(assert (= (and b!7075415 c!1320047) b!7075411))

(assert (= (and b!7075415 (not c!1320047)) b!7075409))

(assert (= (or b!7075405 b!7075411) bm!643030))

(assert (= (or b!7075405 b!7075411) bm!643034))

(assert (= (or b!7075412 bm!643034) bm!643032))

(assert (= (or b!7075412 bm!643030) bm!643035))

(assert (= (or b!7075414 bm!643032) bm!643033))

(assert (= (or b!7075414 b!7075412) bm!643031))

(declare-fun m!7803208 () Bool)

(assert (=> b!7075407 m!7803208))

(declare-fun m!7803210 () Bool)

(assert (=> b!7075410 m!7803210))

(declare-fun m!7803212 () Bool)

(assert (=> bm!643031 m!7803212))

(declare-fun m!7803214 () Bool)

(assert (=> bm!643033 m!7803214))

(declare-fun m!7803216 () Bool)

(assert (=> bm!643035 m!7803216))

(assert (=> bm!642995 d!2212712))

(declare-fun d!2212714 () Bool)

(assert (=> d!2212714 (= (flatMap!2586 lt!2548624 lambda!426513) (choose!54294 lt!2548624 lambda!426513))))

(declare-fun bs!1881170 () Bool)

(assert (= bs!1881170 d!2212714))

(declare-fun m!7803218 () Bool)

(assert (=> bs!1881170 m!7803218))

(assert (=> d!2212622 d!2212714))

(assert (=> d!2212620 d!2212616))

(declare-fun d!2212716 () Bool)

(assert (=> d!2212716 (= (flatMap!2586 lt!2548624 lambda!426479) (dynLambda!27833 lambda!426479 lt!2548619))))

(assert (=> d!2212716 true))

(declare-fun _$13!4558 () Unit!162030)

(assert (=> d!2212716 (= (choose!54295 lt!2548624 lt!2548619 lambda!426479) _$13!4558)))

(declare-fun b_lambda!270175 () Bool)

(assert (=> (not b_lambda!270175) (not d!2212716)))

(declare-fun bs!1881171 () Bool)

(assert (= bs!1881171 d!2212716))

(assert (=> bs!1881171 m!7802804))

(assert (=> bs!1881171 m!7802966))

(assert (=> d!2212620 d!2212716))

(declare-fun d!2212718 () Bool)

(declare-fun res!2889980 () Bool)

(declare-fun e!4253766 () Bool)

(assert (=> d!2212718 (=> res!2889980 e!4253766)))

(assert (=> d!2212718 (= res!2889980 (is-Nil!68384 lt!2548687))))

(assert (=> d!2212718 (= (noDuplicate!2736 lt!2548687) e!4253766)))

(declare-fun b!7075420 () Bool)

(declare-fun e!4253767 () Bool)

(assert (=> b!7075420 (= e!4253766 e!4253767)))

(declare-fun res!2889981 () Bool)

(assert (=> b!7075420 (=> (not res!2889981) (not e!4253767))))

(declare-fun contains!20503 (List!68508 Context!13312) Bool)

(assert (=> b!7075420 (= res!2889981 (not (contains!20503 (t!382291 lt!2548687) (h!74832 lt!2548687))))))

(declare-fun b!7075421 () Bool)

(assert (=> b!7075421 (= e!4253767 (noDuplicate!2736 (t!382291 lt!2548687)))))

(assert (= (and d!2212718 (not res!2889980)) b!7075420))

(assert (= (and b!7075420 res!2889981) b!7075421))

(declare-fun m!7803220 () Bool)

(assert (=> b!7075420 m!7803220))

(declare-fun m!7803222 () Bool)

(assert (=> b!7075421 m!7803222))

(assert (=> d!2212610 d!2212718))

(declare-fun d!2212720 () Bool)

(declare-fun e!4253776 () Bool)

(assert (=> d!2212720 e!4253776))

(declare-fun res!2889986 () Bool)

(assert (=> d!2212720 (=> (not res!2889986) (not e!4253776))))

(declare-fun res!2889987 () List!68508)

(assert (=> d!2212720 (= res!2889986 (noDuplicate!2736 res!2889987))))

(declare-fun e!4253775 () Bool)

(assert (=> d!2212720 e!4253775))

(assert (=> d!2212720 (= (choose!54293 lt!2548626) res!2889987)))

(declare-fun b!7075429 () Bool)

(declare-fun e!4253774 () Bool)

(declare-fun tp!1942729 () Bool)

(assert (=> b!7075429 (= e!4253774 tp!1942729)))

(declare-fun tp!1942730 () Bool)

(declare-fun b!7075428 () Bool)

(assert (=> b!7075428 (= e!4253775 (and (inv!87010 (h!74832 res!2889987)) e!4253774 tp!1942730))))

(declare-fun b!7075430 () Bool)

(assert (=> b!7075430 (= e!4253776 (= (content!13818 res!2889987) lt!2548626))))

(assert (= b!7075428 b!7075429))

(assert (= (and d!2212720 (is-Cons!68384 res!2889987)) b!7075428))

(assert (= (and d!2212720 res!2889986) b!7075430))

(declare-fun m!7803224 () Bool)

(assert (=> d!2212720 m!7803224))

(declare-fun m!7803226 () Bool)

(assert (=> b!7075428 m!7803226))

(declare-fun m!7803228 () Bool)

(assert (=> b!7075430 m!7803228))

(assert (=> d!2212610 d!2212720))

(declare-fun bs!1881172 () Bool)

(declare-fun d!2212722 () Bool)

(assert (= bs!1881172 (and d!2212722 b!7075088)))

(declare-fun lambda!426538 () Int)

(assert (=> bs!1881172 (= lambda!426538 lambda!426478)))

(declare-fun bs!1881173 () Bool)

(assert (= bs!1881173 (and d!2212722 d!2212612)))

(assert (=> bs!1881173 (= lambda!426538 lambda!426510)))

(declare-fun bs!1881174 () Bool)

(assert (= bs!1881174 (and d!2212722 d!2212650)))

(assert (=> bs!1881174 (= lambda!426538 lambda!426522)))

(assert (=> d!2212722 (= (inv!87010 setElem!50342) (forall!16614 (exprs!7156 setElem!50342) lambda!426538))))

(declare-fun bs!1881175 () Bool)

(assert (= bs!1881175 d!2212722))

(declare-fun m!7803230 () Bool)

(assert (=> bs!1881175 m!7803230))

(assert (=> setNonEmpty!50342 d!2212722))

(declare-fun d!2212724 () Bool)

(assert (=> d!2212724 true))

(declare-fun setRes!50348 () Bool)

(assert (=> d!2212724 setRes!50348))

(declare-fun condSetEmpty!50348 () Bool)

(declare-fun res!2889990 () (Set Context!13312))

(assert (=> d!2212724 (= condSetEmpty!50348 (= res!2889990 (as set.empty (Set Context!13312))))))

(assert (=> d!2212724 (= (choose!54294 lt!2548624 lambda!426479) res!2889990)))

(declare-fun setIsEmpty!50348 () Bool)

(assert (=> setIsEmpty!50348 setRes!50348))

(declare-fun setElem!50348 () Context!13312)

(declare-fun e!4253779 () Bool)

(declare-fun tp!1942736 () Bool)

(declare-fun setNonEmpty!50348 () Bool)

(assert (=> setNonEmpty!50348 (= setRes!50348 (and tp!1942736 (inv!87010 setElem!50348) e!4253779))))

(declare-fun setRest!50348 () (Set Context!13312))

(assert (=> setNonEmpty!50348 (= res!2889990 (set.union (set.insert setElem!50348 (as set.empty (Set Context!13312))) setRest!50348))))

(declare-fun b!7075433 () Bool)

(declare-fun tp!1942735 () Bool)

(assert (=> b!7075433 (= e!4253779 tp!1942735)))

(assert (= (and d!2212724 condSetEmpty!50348) setIsEmpty!50348))

(assert (= (and d!2212724 (not condSetEmpty!50348)) setNonEmpty!50348))

(assert (= setNonEmpty!50348 b!7075433))

(declare-fun m!7803232 () Bool)

(assert (=> setNonEmpty!50348 m!7803232))

(assert (=> d!2212616 d!2212724))

(declare-fun b!7075448 () Bool)

(declare-fun e!4253796 () Bool)

(declare-fun call!643045 () Bool)

(assert (=> b!7075448 (= e!4253796 call!643045)))

(declare-fun d!2212726 () Bool)

(declare-fun res!2890002 () Bool)

(declare-fun e!4253795 () Bool)

(assert (=> d!2212726 (=> res!2890002 e!4253795)))

(assert (=> d!2212726 (= res!2890002 (is-EmptyExpr!17660 (h!74830 (exprs!7156 lt!2548621))))))

(assert (=> d!2212726 (= (nullableFct!2820 (h!74830 (exprs!7156 lt!2548621))) e!4253795)))

(declare-fun b!7075449 () Bool)

(declare-fun e!4253792 () Bool)

(declare-fun e!4253797 () Bool)

(assert (=> b!7075449 (= e!4253792 e!4253797)))

(declare-fun res!2890005 () Bool)

(assert (=> b!7075449 (= res!2890005 call!643045)))

(assert (=> b!7075449 (=> res!2890005 e!4253797)))

(declare-fun bm!643040 () Bool)

(declare-fun call!643046 () Bool)

(declare-fun c!1320051 () Bool)

(assert (=> bm!643040 (= call!643046 (nullable!7343 (ite c!1320051 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))))))

(declare-fun b!7075450 () Bool)

(assert (=> b!7075450 (= e!4253797 call!643046)))

(declare-fun b!7075451 () Bool)

(declare-fun e!4253793 () Bool)

(assert (=> b!7075451 (= e!4253793 e!4253792)))

(assert (=> b!7075451 (= c!1320051 (is-Union!17660 (h!74830 (exprs!7156 lt!2548621))))))

(declare-fun b!7075452 () Bool)

(declare-fun e!4253794 () Bool)

(assert (=> b!7075452 (= e!4253794 e!4253793)))

(declare-fun res!2890003 () Bool)

(assert (=> b!7075452 (=> res!2890003 e!4253793)))

(assert (=> b!7075452 (= res!2890003 (is-Star!17660 (h!74830 (exprs!7156 lt!2548621))))))

(declare-fun b!7075453 () Bool)

(assert (=> b!7075453 (= e!4253792 e!4253796)))

(declare-fun res!2890001 () Bool)

(assert (=> b!7075453 (= res!2890001 call!643046)))

(assert (=> b!7075453 (=> (not res!2890001) (not e!4253796))))

(declare-fun bm!643041 () Bool)

(assert (=> bm!643041 (= call!643045 (nullable!7343 (ite c!1320051 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))))))))

(declare-fun b!7075454 () Bool)

(assert (=> b!7075454 (= e!4253795 e!4253794)))

(declare-fun res!2890004 () Bool)

(assert (=> b!7075454 (=> (not res!2890004) (not e!4253794))))

(assert (=> b!7075454 (= res!2890004 (and (not (is-EmptyLang!17660 (h!74830 (exprs!7156 lt!2548621)))) (not (is-ElementMatch!17660 (h!74830 (exprs!7156 lt!2548621))))))))

(assert (= (and d!2212726 (not res!2890002)) b!7075454))

(assert (= (and b!7075454 res!2890004) b!7075452))

(assert (= (and b!7075452 (not res!2890003)) b!7075451))

(assert (= (and b!7075451 c!1320051) b!7075449))

(assert (= (and b!7075451 (not c!1320051)) b!7075453))

(assert (= (and b!7075449 (not res!2890005)) b!7075450))

(assert (= (and b!7075453 res!2890001) b!7075448))

(assert (= (or b!7075450 b!7075453) bm!643040))

(assert (= (or b!7075449 b!7075448) bm!643041))

(declare-fun m!7803234 () Bool)

(assert (=> bm!643040 m!7803234))

(declare-fun m!7803236 () Bool)

(assert (=> bm!643041 m!7803236))

(assert (=> d!2212640 d!2212726))

(declare-fun d!2212728 () Bool)

(declare-fun c!1320054 () Bool)

(assert (=> d!2212728 (= c!1320054 (is-Nil!68384 lt!2548687))))

(declare-fun e!4253800 () (Set Context!13312))

(assert (=> d!2212728 (= (content!13818 lt!2548687) e!4253800)))

(declare-fun b!7075459 () Bool)

(assert (=> b!7075459 (= e!4253800 (as set.empty (Set Context!13312)))))

(declare-fun b!7075460 () Bool)

(assert (=> b!7075460 (= e!4253800 (set.union (set.insert (h!74832 lt!2548687) (as set.empty (Set Context!13312))) (content!13818 (t!382291 lt!2548687))))))

(assert (= (and d!2212728 c!1320054) b!7075459))

(assert (= (and d!2212728 (not c!1320054)) b!7075460))

(declare-fun m!7803238 () Bool)

(assert (=> b!7075460 m!7803238))

(declare-fun m!7803240 () Bool)

(assert (=> b!7075460 m!7803240))

(assert (=> b!7075156 d!2212728))

(assert (=> bs!1881147 d!2212618))

(declare-fun d!2212730 () Bool)

(declare-fun e!4253811 () Bool)

(assert (=> d!2212730 e!4253811))

(declare-fun res!2890010 () Bool)

(assert (=> d!2212730 (=> (not res!2890010) (not e!4253811))))

(declare-fun lt!2548733 () Context!13312)

(assert (=> d!2212730 (= res!2890010 (dynLambda!27832 lambda!426476 lt!2548733))))

(declare-fun e!4253809 () Context!13312)

(assert (=> d!2212730 (= lt!2548733 e!4253809)))

(declare-fun c!1320059 () Bool)

(declare-fun e!4253810 () Bool)

(assert (=> d!2212730 (= c!1320059 e!4253810)))

(declare-fun res!2890011 () Bool)

(assert (=> d!2212730 (=> (not res!2890011) (not e!4253810))))

(assert (=> d!2212730 (= res!2890011 (is-Cons!68384 (toList!11001 lt!2548626)))))

(assert (=> d!2212730 (exists!3720 (toList!11001 lt!2548626) lambda!426476)))

(assert (=> d!2212730 (= (getWitness!1772 (toList!11001 lt!2548626) lambda!426476) lt!2548733)))

(declare-fun b!7075473 () Bool)

(assert (=> b!7075473 (= e!4253810 (dynLambda!27832 lambda!426476 (h!74832 (toList!11001 lt!2548626))))))

(declare-fun b!7075474 () Bool)

(assert (=> b!7075474 (= e!4253811 (contains!20503 (toList!11001 lt!2548626) lt!2548733))))

(declare-fun b!7075475 () Bool)

(declare-fun e!4253812 () Context!13312)

(assert (=> b!7075475 (= e!4253809 e!4253812)))

(declare-fun c!1320060 () Bool)

(assert (=> b!7075475 (= c!1320060 (is-Cons!68384 (toList!11001 lt!2548626)))))

(declare-fun b!7075476 () Bool)

(declare-fun lt!2548732 () Unit!162030)

(declare-fun Unit!162034 () Unit!162030)

(assert (=> b!7075476 (= lt!2548732 Unit!162034)))

(assert (=> b!7075476 false))

(declare-fun head!14418 (List!68508) Context!13312)

(assert (=> b!7075476 (= e!4253812 (head!14418 (toList!11001 lt!2548626)))))

(declare-fun b!7075477 () Bool)

(assert (=> b!7075477 (= e!4253809 (h!74832 (toList!11001 lt!2548626)))))

(declare-fun b!7075478 () Bool)

(assert (=> b!7075478 (= e!4253812 (getWitness!1772 (t!382291 (toList!11001 lt!2548626)) lambda!426476))))

(assert (= (and d!2212730 res!2890011) b!7075473))

(assert (= (and d!2212730 c!1320059) b!7075477))

(assert (= (and d!2212730 (not c!1320059)) b!7075475))

(assert (= (and b!7075475 c!1320060) b!7075478))

(assert (= (and b!7075475 (not c!1320060)) b!7075476))

(assert (= (and d!2212730 res!2890010) b!7075474))

(declare-fun b_lambda!270177 () Bool)

(assert (=> (not b_lambda!270177) (not d!2212730)))

(declare-fun b_lambda!270179 () Bool)

(assert (=> (not b_lambda!270179) (not b!7075473)))

(assert (=> b!7075474 m!7802820))

(declare-fun m!7803242 () Bool)

(assert (=> b!7075474 m!7803242))

(declare-fun m!7803244 () Bool)

(assert (=> d!2212730 m!7803244))

(assert (=> d!2212730 m!7802820))

(declare-fun m!7803246 () Bool)

(assert (=> d!2212730 m!7803246))

(declare-fun m!7803248 () Bool)

(assert (=> b!7075478 m!7803248))

(assert (=> b!7075476 m!7802820))

(declare-fun m!7803250 () Bool)

(assert (=> b!7075476 m!7803250))

(declare-fun m!7803252 () Bool)

(assert (=> b!7075473 m!7803252))

(assert (=> d!2212606 d!2212730))

(assert (=> d!2212606 d!2212610))

(declare-fun d!2212732 () Bool)

(declare-fun lt!2548736 () Bool)

(assert (=> d!2212732 (= lt!2548736 (exists!3720 (toList!11001 lt!2548626) lambda!426476))))

(declare-fun choose!54304 ((Set Context!13312) Int) Bool)

(assert (=> d!2212732 (= lt!2548736 (choose!54304 lt!2548626 lambda!426476))))

(assert (=> d!2212732 (= (exists!3722 lt!2548626 lambda!426476) lt!2548736)))

(declare-fun bs!1881176 () Bool)

(assert (= bs!1881176 d!2212732))

(assert (=> bs!1881176 m!7802820))

(assert (=> bs!1881176 m!7802820))

(assert (=> bs!1881176 m!7803246))

(declare-fun m!7803254 () Bool)

(assert (=> bs!1881176 m!7803254))

(assert (=> d!2212606 d!2212732))

(declare-fun d!2212734 () Bool)

(declare-fun res!2890016 () Bool)

(declare-fun e!4253817 () Bool)

(assert (=> d!2212734 (=> res!2890016 e!4253817)))

(assert (=> d!2212734 (= res!2890016 (is-Nil!68382 (exprs!7156 ct2!306)))))

(assert (=> d!2212734 (= (forall!16614 (exprs!7156 ct2!306) lambda!426522) e!4253817)))

(declare-fun b!7075483 () Bool)

(declare-fun e!4253818 () Bool)

(assert (=> b!7075483 (= e!4253817 e!4253818)))

(declare-fun res!2890017 () Bool)

(assert (=> b!7075483 (=> (not res!2890017) (not e!4253818))))

(declare-fun dynLambda!27839 (Int Regex!17660) Bool)

(assert (=> b!7075483 (= res!2890017 (dynLambda!27839 lambda!426522 (h!74830 (exprs!7156 ct2!306))))))

(declare-fun b!7075484 () Bool)

(assert (=> b!7075484 (= e!4253818 (forall!16614 (t!382289 (exprs!7156 ct2!306)) lambda!426522))))

(assert (= (and d!2212734 (not res!2890016)) b!7075483))

(assert (= (and b!7075483 res!2890017) b!7075484))

(declare-fun b_lambda!270181 () Bool)

(assert (=> (not b_lambda!270181) (not b!7075483)))

(declare-fun m!7803256 () Bool)

(assert (=> b!7075483 m!7803256))

(declare-fun m!7803258 () Bool)

(assert (=> b!7075484 m!7803258))

(assert (=> d!2212650 d!2212734))

(declare-fun d!2212736 () Bool)

(assert (=> d!2212736 (forall!16614 (++!15801 (exprs!7156 lt!2548700) (exprs!7156 ct2!306)) lambda!426478)))

(declare-fun lt!2548737 () Unit!162030)

(assert (=> d!2212736 (= lt!2548737 (choose!54291 (exprs!7156 lt!2548700) (exprs!7156 ct2!306) lambda!426478))))

(assert (=> d!2212736 (forall!16614 (exprs!7156 lt!2548700) lambda!426478)))

(assert (=> d!2212736 (= (lemmaConcatPreservesForall!971 (exprs!7156 lt!2548700) (exprs!7156 ct2!306) lambda!426478) lt!2548737)))

(declare-fun bs!1881177 () Bool)

(assert (= bs!1881177 d!2212736))

(assert (=> bs!1881177 m!7803064))

(assert (=> bs!1881177 m!7803064))

(declare-fun m!7803260 () Bool)

(assert (=> bs!1881177 m!7803260))

(declare-fun m!7803262 () Bool)

(assert (=> bs!1881177 m!7803262))

(declare-fun m!7803264 () Bool)

(assert (=> bs!1881177 m!7803264))

(assert (=> bs!1881148 d!2212736))

(declare-fun b!7075485 () Bool)

(declare-fun e!4253820 () List!68506)

(assert (=> b!7075485 (= e!4253820 (exprs!7156 ct2!306))))

(declare-fun b!7075486 () Bool)

(assert (=> b!7075486 (= e!4253820 (Cons!68382 (h!74830 (exprs!7156 lt!2548700)) (++!15801 (t!382289 (exprs!7156 lt!2548700)) (exprs!7156 ct2!306))))))

(declare-fun e!4253819 () Bool)

(declare-fun lt!2548738 () List!68506)

(declare-fun b!7075488 () Bool)

(assert (=> b!7075488 (= e!4253819 (or (not (= (exprs!7156 ct2!306) Nil!68382)) (= lt!2548738 (exprs!7156 lt!2548700))))))

(declare-fun b!7075487 () Bool)

(declare-fun res!2890019 () Bool)

(assert (=> b!7075487 (=> (not res!2890019) (not e!4253819))))

(assert (=> b!7075487 (= res!2890019 (= (size!41226 lt!2548738) (+ (size!41226 (exprs!7156 lt!2548700)) (size!41226 (exprs!7156 ct2!306)))))))

(declare-fun d!2212738 () Bool)

(assert (=> d!2212738 e!4253819))

(declare-fun res!2890018 () Bool)

(assert (=> d!2212738 (=> (not res!2890018) (not e!4253819))))

(assert (=> d!2212738 (= res!2890018 (= (content!13819 lt!2548738) (set.union (content!13819 (exprs!7156 lt!2548700)) (content!13819 (exprs!7156 ct2!306)))))))

(assert (=> d!2212738 (= lt!2548738 e!4253820)))

(declare-fun c!1320061 () Bool)

(assert (=> d!2212738 (= c!1320061 (is-Nil!68382 (exprs!7156 lt!2548700)))))

(assert (=> d!2212738 (= (++!15801 (exprs!7156 lt!2548700) (exprs!7156 ct2!306)) lt!2548738)))

(assert (= (and d!2212738 c!1320061) b!7075485))

(assert (= (and d!2212738 (not c!1320061)) b!7075486))

(assert (= (and d!2212738 res!2890018) b!7075487))

(assert (= (and b!7075487 res!2890019) b!7075488))

(declare-fun m!7803266 () Bool)

(assert (=> b!7075486 m!7803266))

(declare-fun m!7803268 () Bool)

(assert (=> b!7075487 m!7803268))

(declare-fun m!7803270 () Bool)

(assert (=> b!7075487 m!7803270))

(assert (=> b!7075487 m!7803004))

(declare-fun m!7803272 () Bool)

(assert (=> d!2212738 m!7803272))

(declare-fun m!7803274 () Bool)

(assert (=> d!2212738 m!7803274))

(assert (=> d!2212738 m!7803010))

(assert (=> bs!1881148 d!2212738))

(declare-fun bs!1881178 () Bool)

(declare-fun d!2212740 () Bool)

(assert (= bs!1881178 (and d!2212740 b!7075084)))

(declare-fun lambda!426541 () Int)

(assert (=> bs!1881178 (not (= lambda!426541 lambda!426476))))

(declare-fun bs!1881179 () Bool)

(assert (= bs!1881179 (and d!2212740 d!2212602)))

(assert (=> bs!1881179 (not (= lambda!426541 lambda!426504))))

(declare-fun bs!1881180 () Bool)

(assert (= bs!1881180 (and d!2212740 d!2212604)))

(assert (=> bs!1881180 (not (= lambda!426541 lambda!426507))))

(assert (=> d!2212740 (= (nullableZipper!2708 lt!2548626) (exists!3722 lt!2548626 lambda!426541))))

(declare-fun bs!1881181 () Bool)

(assert (= bs!1881181 d!2212740))

(declare-fun m!7803276 () Bool)

(assert (=> bs!1881181 m!7803276))

(assert (=> b!7075266 d!2212740))

(declare-fun d!2212742 () Bool)

(assert (=> d!2212742 (= (nullable!7343 (h!74830 (exprs!7156 lt!2548619))) (nullableFct!2820 (h!74830 (exprs!7156 lt!2548619))))))

(declare-fun bs!1881182 () Bool)

(assert (= bs!1881182 d!2212742))

(declare-fun m!7803278 () Bool)

(assert (=> bs!1881182 m!7803278))

(assert (=> b!7075197 d!2212742))

(declare-fun d!2212744 () Bool)

(declare-fun lt!2548741 () Int)

(assert (=> d!2212744 (>= lt!2548741 0)))

(declare-fun e!4253823 () Int)

(assert (=> d!2212744 (= lt!2548741 e!4253823)))

(declare-fun c!1320066 () Bool)

(assert (=> d!2212744 (= c!1320066 (is-Nil!68382 lt!2548693))))

(assert (=> d!2212744 (= (size!41226 lt!2548693) lt!2548741)))

(declare-fun b!7075493 () Bool)

(assert (=> b!7075493 (= e!4253823 0)))

(declare-fun b!7075494 () Bool)

(assert (=> b!7075494 (= e!4253823 (+ 1 (size!41226 (t!382289 lt!2548693))))))

(assert (= (and d!2212744 c!1320066) b!7075493))

(assert (= (and d!2212744 (not c!1320066)) b!7075494))

(declare-fun m!7803280 () Bool)

(assert (=> b!7075494 m!7803280))

(assert (=> b!7075264 d!2212744))

(declare-fun d!2212746 () Bool)

(declare-fun lt!2548742 () Int)

(assert (=> d!2212746 (>= lt!2548742 0)))

(declare-fun e!4253824 () Int)

(assert (=> d!2212746 (= lt!2548742 e!4253824)))

(declare-fun c!1320067 () Bool)

(assert (=> d!2212746 (= c!1320067 (is-Nil!68382 lt!2548616))))

(assert (=> d!2212746 (= (size!41226 lt!2548616) lt!2548742)))

(declare-fun b!7075495 () Bool)

(assert (=> b!7075495 (= e!4253824 0)))

(declare-fun b!7075496 () Bool)

(assert (=> b!7075496 (= e!4253824 (+ 1 (size!41226 (t!382289 lt!2548616))))))

(assert (= (and d!2212746 c!1320067) b!7075495))

(assert (= (and d!2212746 (not c!1320067)) b!7075496))

(declare-fun m!7803282 () Bool)

(assert (=> b!7075496 m!7803282))

(assert (=> b!7075264 d!2212746))

(declare-fun d!2212748 () Bool)

(declare-fun lt!2548743 () Int)

(assert (=> d!2212748 (>= lt!2548743 0)))

(declare-fun e!4253825 () Int)

(assert (=> d!2212748 (= lt!2548743 e!4253825)))

(declare-fun c!1320068 () Bool)

(assert (=> d!2212748 (= c!1320068 (is-Nil!68382 (exprs!7156 ct2!306)))))

(assert (=> d!2212748 (= (size!41226 (exprs!7156 ct2!306)) lt!2548743)))

(declare-fun b!7075497 () Bool)

(assert (=> b!7075497 (= e!4253825 0)))

(declare-fun b!7075498 () Bool)

(assert (=> b!7075498 (= e!4253825 (+ 1 (size!41226 (t!382289 (exprs!7156 ct2!306)))))))

(assert (= (and d!2212748 c!1320068) b!7075497))

(assert (= (and d!2212748 (not c!1320068)) b!7075498))

(declare-fun m!7803284 () Bool)

(assert (=> b!7075498 m!7803284))

(assert (=> b!7075264 d!2212748))

(declare-fun b!7075499 () Bool)

(declare-fun e!4253827 () List!68506)

(assert (=> b!7075499 (= e!4253827 (exprs!7156 ct2!306))))

(declare-fun b!7075500 () Bool)

(assert (=> b!7075500 (= e!4253827 (Cons!68382 (h!74830 (t!382289 lt!2548616)) (++!15801 (t!382289 (t!382289 lt!2548616)) (exprs!7156 ct2!306))))))

(declare-fun e!4253826 () Bool)

(declare-fun b!7075502 () Bool)

(declare-fun lt!2548744 () List!68506)

(assert (=> b!7075502 (= e!4253826 (or (not (= (exprs!7156 ct2!306) Nil!68382)) (= lt!2548744 (t!382289 lt!2548616))))))

(declare-fun b!7075501 () Bool)

(declare-fun res!2890021 () Bool)

(assert (=> b!7075501 (=> (not res!2890021) (not e!4253826))))

(assert (=> b!7075501 (= res!2890021 (= (size!41226 lt!2548744) (+ (size!41226 (t!382289 lt!2548616)) (size!41226 (exprs!7156 ct2!306)))))))

(declare-fun d!2212750 () Bool)

(assert (=> d!2212750 e!4253826))

(declare-fun res!2890020 () Bool)

(assert (=> d!2212750 (=> (not res!2890020) (not e!4253826))))

(assert (=> d!2212750 (= res!2890020 (= (content!13819 lt!2548744) (set.union (content!13819 (t!382289 lt!2548616)) (content!13819 (exprs!7156 ct2!306)))))))

(assert (=> d!2212750 (= lt!2548744 e!4253827)))

(declare-fun c!1320069 () Bool)

(assert (=> d!2212750 (= c!1320069 (is-Nil!68382 (t!382289 lt!2548616)))))

(assert (=> d!2212750 (= (++!15801 (t!382289 lt!2548616) (exprs!7156 ct2!306)) lt!2548744)))

(assert (= (and d!2212750 c!1320069) b!7075499))

(assert (= (and d!2212750 (not c!1320069)) b!7075500))

(assert (= (and d!2212750 res!2890020) b!7075501))

(assert (= (and b!7075501 res!2890021) b!7075502))

(declare-fun m!7803286 () Bool)

(assert (=> b!7075500 m!7803286))

(declare-fun m!7803288 () Bool)

(assert (=> b!7075501 m!7803288))

(assert (=> b!7075501 m!7803282))

(assert (=> b!7075501 m!7803004))

(declare-fun m!7803290 () Bool)

(assert (=> d!2212750 m!7803290))

(declare-fun m!7803292 () Bool)

(assert (=> d!2212750 m!7803292))

(assert (=> d!2212750 m!7803010))

(assert (=> b!7075263 d!2212750))

(declare-fun d!2212752 () Bool)

(declare-fun res!2890022 () Bool)

(declare-fun e!4253828 () Bool)

(assert (=> d!2212752 (=> res!2890022 e!4253828)))

(assert (=> d!2212752 (= res!2890022 (is-Nil!68382 (++!15801 (exprs!7156 lt!2548621) (exprs!7156 ct2!306))))))

(assert (=> d!2212752 (= (forall!16614 (++!15801 (exprs!7156 lt!2548621) (exprs!7156 ct2!306)) lambda!426478) e!4253828)))

(declare-fun b!7075503 () Bool)

(declare-fun e!4253829 () Bool)

(assert (=> b!7075503 (= e!4253828 e!4253829)))

(declare-fun res!2890023 () Bool)

(assert (=> b!7075503 (=> (not res!2890023) (not e!4253829))))

(assert (=> b!7075503 (= res!2890023 (dynLambda!27839 lambda!426478 (h!74830 (++!15801 (exprs!7156 lt!2548621) (exprs!7156 ct2!306)))))))

(declare-fun b!7075504 () Bool)

(assert (=> b!7075504 (= e!4253829 (forall!16614 (t!382289 (++!15801 (exprs!7156 lt!2548621) (exprs!7156 ct2!306))) lambda!426478))))

(assert (= (and d!2212752 (not res!2890022)) b!7075503))

(assert (= (and b!7075503 res!2890023) b!7075504))

(declare-fun b_lambda!270183 () Bool)

(assert (=> (not b_lambda!270183) (not b!7075503)))

(declare-fun m!7803294 () Bool)

(assert (=> b!7075503 m!7803294))

(declare-fun m!7803296 () Bool)

(assert (=> b!7075504 m!7803296))

(assert (=> d!2212600 d!2212752))

(assert (=> d!2212600 d!2212652))

(declare-fun d!2212754 () Bool)

(assert (=> d!2212754 (forall!16614 (++!15801 (exprs!7156 lt!2548621) (exprs!7156 ct2!306)) lambda!426478)))

(assert (=> d!2212754 true))

(declare-fun _$78!675 () Unit!162030)

(assert (=> d!2212754 (= (choose!54291 (exprs!7156 lt!2548621) (exprs!7156 ct2!306) lambda!426478) _$78!675)))

(declare-fun bs!1881183 () Bool)

(assert (= bs!1881183 d!2212754))

(assert (=> bs!1881183 m!7802824))

(assert (=> bs!1881183 m!7802824))

(assert (=> bs!1881183 m!7802908))

(assert (=> d!2212600 d!2212754))

(declare-fun d!2212756 () Bool)

(declare-fun res!2890024 () Bool)

(declare-fun e!4253830 () Bool)

(assert (=> d!2212756 (=> res!2890024 e!4253830)))

(assert (=> d!2212756 (= res!2890024 (is-Nil!68382 (exprs!7156 lt!2548621)))))

(assert (=> d!2212756 (= (forall!16614 (exprs!7156 lt!2548621) lambda!426478) e!4253830)))

(declare-fun b!7075505 () Bool)

(declare-fun e!4253831 () Bool)

(assert (=> b!7075505 (= e!4253830 e!4253831)))

(declare-fun res!2890025 () Bool)

(assert (=> b!7075505 (=> (not res!2890025) (not e!4253831))))

(assert (=> b!7075505 (= res!2890025 (dynLambda!27839 lambda!426478 (h!74830 (exprs!7156 lt!2548621))))))

(declare-fun b!7075506 () Bool)

(assert (=> b!7075506 (= e!4253831 (forall!16614 (t!382289 (exprs!7156 lt!2548621)) lambda!426478))))

(assert (= (and d!2212756 (not res!2890024)) b!7075505))

(assert (= (and b!7075505 res!2890025) b!7075506))

(declare-fun b_lambda!270185 () Bool)

(assert (=> (not b_lambda!270185) (not b!7075505)))

(declare-fun m!7803298 () Bool)

(assert (=> b!7075505 m!7803298))

(declare-fun m!7803300 () Bool)

(assert (=> b!7075506 m!7803300))

(assert (=> d!2212600 d!2212756))

(declare-fun d!2212758 () Bool)

(declare-fun res!2890030 () Bool)

(declare-fun e!4253836 () Bool)

(assert (=> d!2212758 (=> res!2890030 e!4253836)))

(assert (=> d!2212758 (= res!2890030 (is-Nil!68384 lt!2548627))))

(assert (=> d!2212758 (= (forall!16615 lt!2548627 lambda!426507) e!4253836)))

(declare-fun b!7075511 () Bool)

(declare-fun e!4253837 () Bool)

(assert (=> b!7075511 (= e!4253836 e!4253837)))

(declare-fun res!2890031 () Bool)

(assert (=> b!7075511 (=> (not res!2890031) (not e!4253837))))

(assert (=> b!7075511 (= res!2890031 (dynLambda!27832 lambda!426507 (h!74832 lt!2548627)))))

(declare-fun b!7075512 () Bool)

(assert (=> b!7075512 (= e!4253837 (forall!16615 (t!382291 lt!2548627) lambda!426507))))

(assert (= (and d!2212758 (not res!2890030)) b!7075511))

(assert (= (and b!7075511 res!2890031) b!7075512))

(declare-fun b_lambda!270187 () Bool)

(assert (=> (not b_lambda!270187) (not b!7075511)))

(declare-fun m!7803302 () Bool)

(assert (=> b!7075511 m!7803302))

(declare-fun m!7803304 () Bool)

(assert (=> b!7075512 m!7803304))

(assert (=> d!2212604 d!2212758))

(declare-fun bs!1881184 () Bool)

(declare-fun d!2212760 () Bool)

(assert (= bs!1881184 (and d!2212760 b!7075084)))

(declare-fun lambda!426542 () Int)

(assert (=> bs!1881184 (not (= lambda!426542 lambda!426476))))

(declare-fun bs!1881185 () Bool)

(assert (= bs!1881185 (and d!2212760 d!2212602)))

(assert (=> bs!1881185 (not (= lambda!426542 lambda!426504))))

(declare-fun bs!1881186 () Bool)

(assert (= bs!1881186 (and d!2212760 d!2212604)))

(assert (=> bs!1881186 (= (= lambda!426504 lambda!426476) (= lambda!426542 lambda!426507))))

(declare-fun bs!1881187 () Bool)

(assert (= bs!1881187 (and d!2212760 d!2212740)))

(assert (=> bs!1881187 (not (= lambda!426542 lambda!426541))))

(assert (=> d!2212760 true))

(assert (=> d!2212760 (< (dynLambda!27831 order!28427 lambda!426504) (dynLambda!27831 order!28427 lambda!426542))))

(assert (=> d!2212760 (= (exists!3720 lt!2548627 lambda!426504) (not (forall!16615 lt!2548627 lambda!426542)))))

(declare-fun bs!1881188 () Bool)

(assert (= bs!1881188 d!2212760))

(declare-fun m!7803306 () Bool)

(assert (=> bs!1881188 m!7803306))

(assert (=> d!2212602 d!2212760))

(declare-fun bs!1881189 () Bool)

(declare-fun d!2212762 () Bool)

(assert (= bs!1881189 (and d!2212762 d!2212760)))

(declare-fun lambda!426545 () Int)

(assert (=> bs!1881189 (not (= lambda!426545 lambda!426542))))

(declare-fun bs!1881190 () Bool)

(assert (= bs!1881190 (and d!2212762 d!2212740)))

(assert (=> bs!1881190 (not (= lambda!426545 lambda!426541))))

(declare-fun bs!1881191 () Bool)

(assert (= bs!1881191 (and d!2212762 d!2212604)))

(assert (=> bs!1881191 (not (= lambda!426545 lambda!426507))))

(declare-fun bs!1881192 () Bool)

(assert (= bs!1881192 (and d!2212762 b!7075084)))

(assert (=> bs!1881192 (= lambda!426545 lambda!426476)))

(declare-fun bs!1881193 () Bool)

(assert (= bs!1881193 (and d!2212762 d!2212602)))

(assert (=> bs!1881193 (= lambda!426545 lambda!426504)))

(assert (=> d!2212762 true))

(assert (=> d!2212762 (exists!3720 lt!2548627 lambda!426545)))

(assert (=> d!2212762 true))

(declare-fun _$60!1183 () Unit!162030)

(assert (=> d!2212762 (= (choose!54292 lt!2548627 s!7408) _$60!1183)))

(declare-fun bs!1881194 () Bool)

(assert (= bs!1881194 d!2212762))

(declare-fun m!7803308 () Bool)

(assert (=> bs!1881194 m!7803308))

(assert (=> d!2212602 d!2212762))

(declare-fun d!2212764 () Bool)

(declare-fun c!1320072 () Bool)

(assert (=> d!2212764 (= c!1320072 (isEmpty!39913 s!7408))))

(declare-fun e!4253838 () Bool)

(assert (=> d!2212764 (= (matchZipper!3200 (content!13818 lt!2548627) s!7408) e!4253838)))

(declare-fun b!7075513 () Bool)

(assert (=> b!7075513 (= e!4253838 (nullableZipper!2708 (content!13818 lt!2548627)))))

(declare-fun b!7075514 () Bool)

(assert (=> b!7075514 (= e!4253838 (matchZipper!3200 (derivationStepZipper!3110 (content!13818 lt!2548627) (head!14416 s!7408)) (tail!13854 s!7408)))))

(assert (= (and d!2212764 c!1320072) b!7075513))

(assert (= (and d!2212764 (not c!1320072)) b!7075514))

(assert (=> d!2212764 m!7802932))

(assert (=> b!7075513 m!7802918))

(declare-fun m!7803310 () Bool)

(assert (=> b!7075513 m!7803310))

(assert (=> b!7075514 m!7802936))

(assert (=> b!7075514 m!7802918))

(assert (=> b!7075514 m!7802936))

(declare-fun m!7803312 () Bool)

(assert (=> b!7075514 m!7803312))

(assert (=> b!7075514 m!7802940))

(assert (=> b!7075514 m!7803312))

(assert (=> b!7075514 m!7802940))

(declare-fun m!7803314 () Bool)

(assert (=> b!7075514 m!7803314))

(assert (=> d!2212602 d!2212764))

(declare-fun d!2212766 () Bool)

(declare-fun c!1320073 () Bool)

(assert (=> d!2212766 (= c!1320073 (is-Nil!68384 lt!2548627))))

(declare-fun e!4253839 () (Set Context!13312))

(assert (=> d!2212766 (= (content!13818 lt!2548627) e!4253839)))

(declare-fun b!7075515 () Bool)

(assert (=> b!7075515 (= e!4253839 (as set.empty (Set Context!13312)))))

(declare-fun b!7075516 () Bool)

(assert (=> b!7075516 (= e!4253839 (set.union (set.insert (h!74832 lt!2548627) (as set.empty (Set Context!13312))) (content!13818 (t!382291 lt!2548627))))))

(assert (= (and d!2212766 c!1320073) b!7075515))

(assert (= (and d!2212766 (not c!1320073)) b!7075516))

(declare-fun m!7803316 () Bool)

(assert (=> b!7075516 m!7803316))

(declare-fun m!7803318 () Bool)

(assert (=> b!7075516 m!7803318))

(assert (=> d!2212602 d!2212766))

(declare-fun b!7075517 () Bool)

(declare-fun e!4253841 () (Set Context!13312))

(assert (=> b!7075517 (= e!4253841 (as set.empty (Set Context!13312)))))

(declare-fun b!7075518 () Bool)

(declare-fun call!643047 () (Set Context!13312))

(declare-fun e!4253842 () (Set Context!13312))

(assert (=> b!7075518 (= e!4253842 (set.union call!643047 (derivationStepZipperUp!2244 (Context!13313 (t!382289 (exprs!7156 (Context!13313 (t!382289 (exprs!7156 lt!2548619)))))) (h!74831 s!7408))))))

(declare-fun bm!643042 () Bool)

(assert (=> bm!643042 (= call!643047 (derivationStepZipperDown!2294 (h!74830 (exprs!7156 (Context!13313 (t!382289 (exprs!7156 lt!2548619))))) (Context!13313 (t!382289 (exprs!7156 (Context!13313 (t!382289 (exprs!7156 lt!2548619)))))) (h!74831 s!7408)))))

(declare-fun b!7075519 () Bool)

(assert (=> b!7075519 (= e!4253842 e!4253841)))

(declare-fun c!1320074 () Bool)

(assert (=> b!7075519 (= c!1320074 (is-Cons!68382 (exprs!7156 (Context!13313 (t!382289 (exprs!7156 lt!2548619))))))))

(declare-fun d!2212768 () Bool)

(declare-fun c!1320075 () Bool)

(declare-fun e!4253840 () Bool)

(assert (=> d!2212768 (= c!1320075 e!4253840)))

(declare-fun res!2890032 () Bool)

(assert (=> d!2212768 (=> (not res!2890032) (not e!4253840))))

(assert (=> d!2212768 (= res!2890032 (is-Cons!68382 (exprs!7156 (Context!13313 (t!382289 (exprs!7156 lt!2548619))))))))

(assert (=> d!2212768 (= (derivationStepZipperUp!2244 (Context!13313 (t!382289 (exprs!7156 lt!2548619))) (h!74831 s!7408)) e!4253842)))

(declare-fun b!7075520 () Bool)

(assert (=> b!7075520 (= e!4253840 (nullable!7343 (h!74830 (exprs!7156 (Context!13313 (t!382289 (exprs!7156 lt!2548619)))))))))

(declare-fun b!7075521 () Bool)

(assert (=> b!7075521 (= e!4253841 call!643047)))

(assert (= (and d!2212768 res!2890032) b!7075520))

(assert (= (and d!2212768 c!1320075) b!7075518))

(assert (= (and d!2212768 (not c!1320075)) b!7075519))

(assert (= (and b!7075519 c!1320074) b!7075521))

(assert (= (and b!7075519 (not c!1320074)) b!7075517))

(assert (= (or b!7075518 b!7075521) bm!643042))

(declare-fun m!7803320 () Bool)

(assert (=> b!7075518 m!7803320))

(declare-fun m!7803322 () Bool)

(assert (=> bm!643042 m!7803322))

(declare-fun m!7803324 () Bool)

(assert (=> b!7075520 m!7803324))

(assert (=> b!7075195 d!2212768))

(declare-fun d!2212770 () Bool)

(declare-fun lt!2548745 () Int)

(assert (=> d!2212770 (>= lt!2548745 0)))

(declare-fun e!4253843 () Int)

(assert (=> d!2212770 (= lt!2548745 e!4253843)))

(declare-fun c!1320076 () Bool)

(assert (=> d!2212770 (= c!1320076 (is-Nil!68382 lt!2548697))))

(assert (=> d!2212770 (= (size!41226 lt!2548697) lt!2548745)))

(declare-fun b!7075522 () Bool)

(assert (=> b!7075522 (= e!4253843 0)))

(declare-fun b!7075523 () Bool)

(assert (=> b!7075523 (= e!4253843 (+ 1 (size!41226 (t!382289 lt!2548697))))))

(assert (= (and d!2212770 c!1320076) b!7075522))

(assert (= (and d!2212770 (not c!1320076)) b!7075523))

(declare-fun m!7803326 () Bool)

(assert (=> b!7075523 m!7803326))

(assert (=> b!7075279 d!2212770))

(declare-fun d!2212772 () Bool)

(declare-fun lt!2548746 () Int)

(assert (=> d!2212772 (>= lt!2548746 0)))

(declare-fun e!4253844 () Int)

(assert (=> d!2212772 (= lt!2548746 e!4253844)))

(declare-fun c!1320077 () Bool)

(assert (=> d!2212772 (= c!1320077 (is-Nil!68382 (exprs!7156 lt!2548621)))))

(assert (=> d!2212772 (= (size!41226 (exprs!7156 lt!2548621)) lt!2548746)))

(declare-fun b!7075524 () Bool)

(assert (=> b!7075524 (= e!4253844 0)))

(declare-fun b!7075525 () Bool)

(assert (=> b!7075525 (= e!4253844 (+ 1 (size!41226 (t!382289 (exprs!7156 lt!2548621)))))))

(assert (= (and d!2212772 c!1320077) b!7075524))

(assert (= (and d!2212772 (not c!1320077)) b!7075525))

(declare-fun m!7803328 () Bool)

(assert (=> b!7075525 m!7803328))

(assert (=> b!7075279 d!2212772))

(assert (=> b!7075279 d!2212748))

(declare-fun b!7075526 () Bool)

(declare-fun e!4253846 () (Set Context!13312))

(declare-fun call!643048 () (Set Context!13312))

(assert (=> b!7075526 (= e!4253846 call!643048)))

(declare-fun b!7075527 () Bool)

(declare-fun c!1320078 () Bool)

(declare-fun e!4253850 () Bool)

(assert (=> b!7075527 (= c!1320078 e!4253850)))

(declare-fun res!2890033 () Bool)

(assert (=> b!7075527 (=> (not res!2890033) (not e!4253850))))

(assert (=> b!7075527 (= res!2890033 (is-Concat!26505 (h!74830 (exprs!7156 lt!2548619))))))

(declare-fun e!4253847 () (Set Context!13312))

(declare-fun e!4253845 () (Set Context!13312))

(assert (=> b!7075527 (= e!4253847 e!4253845)))

(declare-fun b!7075528 () Bool)

(declare-fun e!4253848 () (Set Context!13312))

(assert (=> b!7075528 (= e!4253848 (set.insert (Context!13313 (t!382289 (exprs!7156 lt!2548619))) (as set.empty (Set Context!13312))))))

(declare-fun d!2212774 () Bool)

(declare-fun c!1320079 () Bool)

(assert (=> d!2212774 (= c!1320079 (and (is-ElementMatch!17660 (h!74830 (exprs!7156 lt!2548619))) (= (c!1319952 (h!74830 (exprs!7156 lt!2548619))) (h!74831 s!7408))))))

(assert (=> d!2212774 (= (derivationStepZipperDown!2294 (h!74830 (exprs!7156 lt!2548619)) (Context!13313 (t!382289 (exprs!7156 lt!2548619))) (h!74831 s!7408)) e!4253848)))

(declare-fun b!7075529 () Bool)

(assert (=> b!7075529 (= e!4253845 e!4253846)))

(declare-fun c!1320082 () Bool)

(assert (=> b!7075529 (= c!1320082 (is-Concat!26505 (h!74830 (exprs!7156 lt!2548619))))))

(declare-fun b!7075530 () Bool)

(declare-fun e!4253849 () (Set Context!13312))

(assert (=> b!7075530 (= e!4253849 (as set.empty (Set Context!13312)))))

(declare-fun b!7075531 () Bool)

(assert (=> b!7075531 (= e!4253850 (nullable!7343 (regOne!35832 (h!74830 (exprs!7156 lt!2548619)))))))

(declare-fun bm!643043 () Bool)

(declare-fun call!643050 () List!68506)

(declare-fun call!643053 () List!68506)

(assert (=> bm!643043 (= call!643050 call!643053)))

(declare-fun bm!643044 () Bool)

(declare-fun call!643052 () (Set Context!13312))

(declare-fun c!1320080 () Bool)

(assert (=> bm!643044 (= call!643052 (derivationStepZipperDown!2294 (ite c!1320080 (regTwo!35833 (h!74830 (exprs!7156 lt!2548619))) (regOne!35832 (h!74830 (exprs!7156 lt!2548619)))) (ite c!1320080 (Context!13313 (t!382289 (exprs!7156 lt!2548619))) (Context!13313 call!643053)) (h!74831 s!7408)))))

(declare-fun bm!643045 () Bool)

(declare-fun call!643051 () (Set Context!13312))

(declare-fun call!643049 () (Set Context!13312))

(assert (=> bm!643045 (= call!643051 call!643049)))

(declare-fun b!7075532 () Bool)

(assert (=> b!7075532 (= e!4253849 call!643048)))

(declare-fun bm!643046 () Bool)

(assert (=> bm!643046 (= call!643049 (derivationStepZipperDown!2294 (ite c!1320080 (regOne!35833 (h!74830 (exprs!7156 lt!2548619))) (ite c!1320078 (regTwo!35832 (h!74830 (exprs!7156 lt!2548619))) (ite c!1320082 (regOne!35832 (h!74830 (exprs!7156 lt!2548619))) (reg!17989 (h!74830 (exprs!7156 lt!2548619)))))) (ite (or c!1320080 c!1320078) (Context!13313 (t!382289 (exprs!7156 lt!2548619))) (Context!13313 call!643050)) (h!74831 s!7408)))))

(declare-fun bm!643047 () Bool)

(assert (=> bm!643047 (= call!643048 call!643051)))

(declare-fun b!7075533 () Bool)

(assert (=> b!7075533 (= e!4253845 (set.union call!643052 call!643051))))

(declare-fun bm!643048 () Bool)

(assert (=> bm!643048 (= call!643053 ($colon$colon!2665 (exprs!7156 (Context!13313 (t!382289 (exprs!7156 lt!2548619)))) (ite (or c!1320078 c!1320082) (regTwo!35832 (h!74830 (exprs!7156 lt!2548619))) (h!74830 (exprs!7156 lt!2548619)))))))

(declare-fun b!7075534 () Bool)

(assert (=> b!7075534 (= e!4253848 e!4253847)))

(assert (=> b!7075534 (= c!1320080 (is-Union!17660 (h!74830 (exprs!7156 lt!2548619))))))

(declare-fun b!7075535 () Bool)

(assert (=> b!7075535 (= e!4253847 (set.union call!643049 call!643052))))

(declare-fun b!7075536 () Bool)

(declare-fun c!1320081 () Bool)

(assert (=> b!7075536 (= c!1320081 (is-Star!17660 (h!74830 (exprs!7156 lt!2548619))))))

(assert (=> b!7075536 (= e!4253846 e!4253849)))

(assert (= (and d!2212774 c!1320079) b!7075528))

(assert (= (and d!2212774 (not c!1320079)) b!7075534))

(assert (= (and b!7075534 c!1320080) b!7075535))

(assert (= (and b!7075534 (not c!1320080)) b!7075527))

(assert (= (and b!7075527 res!2890033) b!7075531))

(assert (= (and b!7075527 c!1320078) b!7075533))

(assert (= (and b!7075527 (not c!1320078)) b!7075529))

(assert (= (and b!7075529 c!1320082) b!7075526))

(assert (= (and b!7075529 (not c!1320082)) b!7075536))

(assert (= (and b!7075536 c!1320081) b!7075532))

(assert (= (and b!7075536 (not c!1320081)) b!7075530))

(assert (= (or b!7075526 b!7075532) bm!643043))

(assert (= (or b!7075526 b!7075532) bm!643047))

(assert (= (or b!7075533 bm!643047) bm!643045))

(assert (= (or b!7075533 bm!643043) bm!643048))

(assert (= (or b!7075535 bm!643045) bm!643046))

(assert (= (or b!7075535 b!7075533) bm!643044))

(declare-fun m!7803330 () Bool)

(assert (=> b!7075528 m!7803330))

(declare-fun m!7803332 () Bool)

(assert (=> b!7075531 m!7803332))

(declare-fun m!7803334 () Bool)

(assert (=> bm!643044 m!7803334))

(declare-fun m!7803336 () Bool)

(assert (=> bm!643046 m!7803336))

(declare-fun m!7803338 () Bool)

(assert (=> bm!643048 m!7803338))

(assert (=> bm!642981 d!2212774))

(declare-fun b!7075537 () Bool)

(declare-fun e!4253852 () List!68506)

(assert (=> b!7075537 (= e!4253852 (exprs!7156 ct2!306))))

(declare-fun b!7075538 () Bool)

(assert (=> b!7075538 (= e!4253852 (Cons!68382 (h!74830 (t!382289 (exprs!7156 lt!2548621))) (++!15801 (t!382289 (t!382289 (exprs!7156 lt!2548621))) (exprs!7156 ct2!306))))))

(declare-fun b!7075540 () Bool)

(declare-fun e!4253851 () Bool)

(declare-fun lt!2548747 () List!68506)

(assert (=> b!7075540 (= e!4253851 (or (not (= (exprs!7156 ct2!306) Nil!68382)) (= lt!2548747 (t!382289 (exprs!7156 lt!2548621)))))))

(declare-fun b!7075539 () Bool)

(declare-fun res!2890035 () Bool)

(assert (=> b!7075539 (=> (not res!2890035) (not e!4253851))))

(assert (=> b!7075539 (= res!2890035 (= (size!41226 lt!2548747) (+ (size!41226 (t!382289 (exprs!7156 lt!2548621))) (size!41226 (exprs!7156 ct2!306)))))))

(declare-fun d!2212776 () Bool)

(assert (=> d!2212776 e!4253851))

(declare-fun res!2890034 () Bool)

(assert (=> d!2212776 (=> (not res!2890034) (not e!4253851))))

(assert (=> d!2212776 (= res!2890034 (= (content!13819 lt!2548747) (set.union (content!13819 (t!382289 (exprs!7156 lt!2548621))) (content!13819 (exprs!7156 ct2!306)))))))

(assert (=> d!2212776 (= lt!2548747 e!4253852)))

(declare-fun c!1320083 () Bool)

(assert (=> d!2212776 (= c!1320083 (is-Nil!68382 (t!382289 (exprs!7156 lt!2548621))))))

(assert (=> d!2212776 (= (++!15801 (t!382289 (exprs!7156 lt!2548621)) (exprs!7156 ct2!306)) lt!2548747)))

(assert (= (and d!2212776 c!1320083) b!7075537))

(assert (= (and d!2212776 (not c!1320083)) b!7075538))

(assert (= (and d!2212776 res!2890034) b!7075539))

(assert (= (and b!7075539 res!2890035) b!7075540))

(declare-fun m!7803340 () Bool)

(assert (=> b!7075538 m!7803340))

(declare-fun m!7803342 () Bool)

(assert (=> b!7075539 m!7803342))

(assert (=> b!7075539 m!7803328))

(assert (=> b!7075539 m!7803004))

(declare-fun m!7803344 () Bool)

(assert (=> d!2212776 m!7803344))

(declare-fun m!7803346 () Bool)

(assert (=> d!2212776 m!7803346))

(assert (=> d!2212776 m!7803010))

(assert (=> b!7075278 d!2212776))

(declare-fun d!2212778 () Bool)

(declare-fun c!1320084 () Bool)

(assert (=> d!2212778 (= c!1320084 (isEmpty!39913 (tail!13854 s!7408)))))

(declare-fun e!4253853 () Bool)

(assert (=> d!2212778 (= (matchZipper!3200 (derivationStepZipper!3110 lt!2548626 (head!14416 s!7408)) (tail!13854 s!7408)) e!4253853)))

(declare-fun b!7075541 () Bool)

(assert (=> b!7075541 (= e!4253853 (nullableZipper!2708 (derivationStepZipper!3110 lt!2548626 (head!14416 s!7408))))))

(declare-fun b!7075542 () Bool)

(assert (=> b!7075542 (= e!4253853 (matchZipper!3200 (derivationStepZipper!3110 (derivationStepZipper!3110 lt!2548626 (head!14416 s!7408)) (head!14416 (tail!13854 s!7408))) (tail!13854 (tail!13854 s!7408))))))

(assert (= (and d!2212778 c!1320084) b!7075541))

(assert (= (and d!2212778 (not c!1320084)) b!7075542))

(assert (=> d!2212778 m!7802940))

(declare-fun m!7803348 () Bool)

(assert (=> d!2212778 m!7803348))

(assert (=> b!7075541 m!7803022))

(declare-fun m!7803350 () Bool)

(assert (=> b!7075541 m!7803350))

(assert (=> b!7075542 m!7802940))

(declare-fun m!7803352 () Bool)

(assert (=> b!7075542 m!7803352))

(assert (=> b!7075542 m!7803022))

(assert (=> b!7075542 m!7803352))

(declare-fun m!7803354 () Bool)

(assert (=> b!7075542 m!7803354))

(assert (=> b!7075542 m!7802940))

(declare-fun m!7803356 () Bool)

(assert (=> b!7075542 m!7803356))

(assert (=> b!7075542 m!7803354))

(assert (=> b!7075542 m!7803356))

(declare-fun m!7803358 () Bool)

(assert (=> b!7075542 m!7803358))

(assert (=> b!7075267 d!2212778))

(declare-fun bs!1881195 () Bool)

(declare-fun d!2212780 () Bool)

(assert (= bs!1881195 (and d!2212780 b!7075086)))

(declare-fun lambda!426546 () Int)

(assert (=> bs!1881195 (= (= (head!14416 s!7408) (h!74831 s!7408)) (= lambda!426546 lambda!426479))))

(declare-fun bs!1881196 () Bool)

(assert (= bs!1881196 (and d!2212780 d!2212622)))

(assert (=> bs!1881196 (= (= (head!14416 s!7408) (h!74831 s!7408)) (= lambda!426546 lambda!426513))))

(assert (=> d!2212780 true))

(assert (=> d!2212780 (= (derivationStepZipper!3110 lt!2548626 (head!14416 s!7408)) (flatMap!2586 lt!2548626 lambda!426546))))

(declare-fun bs!1881197 () Bool)

(assert (= bs!1881197 d!2212780))

(declare-fun m!7803360 () Bool)

(assert (=> bs!1881197 m!7803360))

(assert (=> b!7075267 d!2212780))

(declare-fun d!2212782 () Bool)

(assert (=> d!2212782 (= (head!14416 s!7408) (h!74831 s!7408))))

(assert (=> b!7075267 d!2212782))

(declare-fun d!2212784 () Bool)

(assert (=> d!2212784 (= (tail!13854 s!7408) (t!382290 s!7408))))

(assert (=> b!7075267 d!2212784))

(declare-fun d!2212786 () Bool)

(declare-fun c!1320087 () Bool)

(assert (=> d!2212786 (= c!1320087 (is-Nil!68382 lt!2548693))))

(declare-fun e!4253856 () (Set Regex!17660))

(assert (=> d!2212786 (= (content!13819 lt!2548693) e!4253856)))

(declare-fun b!7075547 () Bool)

(assert (=> b!7075547 (= e!4253856 (as set.empty (Set Regex!17660)))))

(declare-fun b!7075548 () Bool)

(assert (=> b!7075548 (= e!4253856 (set.union (set.insert (h!74830 lt!2548693) (as set.empty (Set Regex!17660))) (content!13819 (t!382289 lt!2548693))))))

(assert (= (and d!2212786 c!1320087) b!7075547))

(assert (= (and d!2212786 (not c!1320087)) b!7075548))

(declare-fun m!7803362 () Bool)

(assert (=> b!7075548 m!7803362))

(declare-fun m!7803364 () Bool)

(assert (=> b!7075548 m!7803364))

(assert (=> d!2212636 d!2212786))

(declare-fun d!2212788 () Bool)

(declare-fun c!1320088 () Bool)

(assert (=> d!2212788 (= c!1320088 (is-Nil!68382 lt!2548616))))

(declare-fun e!4253857 () (Set Regex!17660))

(assert (=> d!2212788 (= (content!13819 lt!2548616) e!4253857)))

(declare-fun b!7075549 () Bool)

(assert (=> b!7075549 (= e!4253857 (as set.empty (Set Regex!17660)))))

(declare-fun b!7075550 () Bool)

(assert (=> b!7075550 (= e!4253857 (set.union (set.insert (h!74830 lt!2548616) (as set.empty (Set Regex!17660))) (content!13819 (t!382289 lt!2548616))))))

(assert (= (and d!2212788 c!1320088) b!7075549))

(assert (= (and d!2212788 (not c!1320088)) b!7075550))

(declare-fun m!7803366 () Bool)

(assert (=> b!7075550 m!7803366))

(assert (=> b!7075550 m!7803292))

(assert (=> d!2212636 d!2212788))

(declare-fun d!2212790 () Bool)

(declare-fun c!1320089 () Bool)

(assert (=> d!2212790 (= c!1320089 (is-Nil!68382 (exprs!7156 ct2!306)))))

(declare-fun e!4253858 () (Set Regex!17660))

(assert (=> d!2212790 (= (content!13819 (exprs!7156 ct2!306)) e!4253858)))

(declare-fun b!7075551 () Bool)

(assert (=> b!7075551 (= e!4253858 (as set.empty (Set Regex!17660)))))

(declare-fun b!7075552 () Bool)

(assert (=> b!7075552 (= e!4253858 (set.union (set.insert (h!74830 (exprs!7156 ct2!306)) (as set.empty (Set Regex!17660))) (content!13819 (t!382289 (exprs!7156 ct2!306)))))))

(assert (= (and d!2212790 c!1320089) b!7075551))

(assert (= (and d!2212790 (not c!1320089)) b!7075552))

(declare-fun m!7803368 () Bool)

(assert (=> b!7075552 m!7803368))

(declare-fun m!7803370 () Bool)

(assert (=> b!7075552 m!7803370))

(assert (=> d!2212636 d!2212790))

(declare-fun bs!1881198 () Bool)

(declare-fun d!2212792 () Bool)

(assert (= bs!1881198 (and d!2212792 d!2212760)))

(declare-fun lambda!426547 () Int)

(assert (=> bs!1881198 (not (= lambda!426547 lambda!426542))))

(declare-fun bs!1881199 () Bool)

(assert (= bs!1881199 (and d!2212792 d!2212740)))

(assert (=> bs!1881199 (= lambda!426547 lambda!426541)))

(declare-fun bs!1881200 () Bool)

(assert (= bs!1881200 (and d!2212792 d!2212604)))

(assert (=> bs!1881200 (not (= lambda!426547 lambda!426507))))

(declare-fun bs!1881201 () Bool)

(assert (= bs!1881201 (and d!2212792 d!2212762)))

(assert (=> bs!1881201 (not (= lambda!426547 lambda!426545))))

(declare-fun bs!1881202 () Bool)

(assert (= bs!1881202 (and d!2212792 b!7075084)))

(assert (=> bs!1881202 (not (= lambda!426547 lambda!426476))))

(declare-fun bs!1881203 () Bool)

(assert (= bs!1881203 (and d!2212792 d!2212602)))

(assert (=> bs!1881203 (not (= lambda!426547 lambda!426504))))

(assert (=> d!2212792 (= (nullableZipper!2708 lt!2548623) (exists!3722 lt!2548623 lambda!426547))))

(declare-fun bs!1881204 () Bool)

(assert (= bs!1881204 d!2212792))

(declare-fun m!7803372 () Bool)

(assert (=> bs!1881204 m!7803372))

(assert (=> b!7075152 d!2212792))

(declare-fun b!7075553 () Bool)

(declare-fun e!4253860 () (Set Context!13312))

(declare-fun call!643054 () (Set Context!13312))

(assert (=> b!7075553 (= e!4253860 call!643054)))

(declare-fun b!7075554 () Bool)

(declare-fun c!1320090 () Bool)

(declare-fun e!4253864 () Bool)

(assert (=> b!7075554 (= c!1320090 e!4253864)))

(declare-fun res!2890036 () Bool)

(assert (=> b!7075554 (=> (not res!2890036) (not e!4253864))))

(assert (=> b!7075554 (= res!2890036 (is-Concat!26505 (ite c!1319994 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319992 (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319996 (regOne!35832 (h!74830 (exprs!7156 lt!2548621))) (reg!17989 (h!74830 (exprs!7156 lt!2548621))))))))))

(declare-fun e!4253861 () (Set Context!13312))

(declare-fun e!4253859 () (Set Context!13312))

(assert (=> b!7075554 (= e!4253861 e!4253859)))

(declare-fun b!7075555 () Bool)

(declare-fun e!4253862 () (Set Context!13312))

(assert (=> b!7075555 (= e!4253862 (set.insert (ite (or c!1319994 c!1319992) (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (Context!13313 call!643001)) (as set.empty (Set Context!13312))))))

(declare-fun d!2212794 () Bool)

(declare-fun c!1320091 () Bool)

(assert (=> d!2212794 (= c!1320091 (and (is-ElementMatch!17660 (ite c!1319994 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319992 (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319996 (regOne!35832 (h!74830 (exprs!7156 lt!2548621))) (reg!17989 (h!74830 (exprs!7156 lt!2548621))))))) (= (c!1319952 (ite c!1319994 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319992 (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319996 (regOne!35832 (h!74830 (exprs!7156 lt!2548621))) (reg!17989 (h!74830 (exprs!7156 lt!2548621))))))) (h!74831 s!7408))))))

(assert (=> d!2212794 (= (derivationStepZipperDown!2294 (ite c!1319994 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319992 (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319996 (regOne!35832 (h!74830 (exprs!7156 lt!2548621))) (reg!17989 (h!74830 (exprs!7156 lt!2548621)))))) (ite (or c!1319994 c!1319992) (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (Context!13313 call!643001)) (h!74831 s!7408)) e!4253862)))

(declare-fun b!7075556 () Bool)

(assert (=> b!7075556 (= e!4253859 e!4253860)))

(declare-fun c!1320094 () Bool)

(assert (=> b!7075556 (= c!1320094 (is-Concat!26505 (ite c!1319994 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319992 (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319996 (regOne!35832 (h!74830 (exprs!7156 lt!2548621))) (reg!17989 (h!74830 (exprs!7156 lt!2548621))))))))))

(declare-fun b!7075557 () Bool)

(declare-fun e!4253863 () (Set Context!13312))

(assert (=> b!7075557 (= e!4253863 (as set.empty (Set Context!13312)))))

(declare-fun b!7075558 () Bool)

(assert (=> b!7075558 (= e!4253864 (nullable!7343 (regOne!35832 (ite c!1319994 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319992 (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319996 (regOne!35832 (h!74830 (exprs!7156 lt!2548621))) (reg!17989 (h!74830 (exprs!7156 lt!2548621)))))))))))

(declare-fun bm!643049 () Bool)

(declare-fun call!643056 () List!68506)

(declare-fun call!643059 () List!68506)

(assert (=> bm!643049 (= call!643056 call!643059)))

(declare-fun call!643058 () (Set Context!13312))

(declare-fun bm!643050 () Bool)

(declare-fun c!1320092 () Bool)

(assert (=> bm!643050 (= call!643058 (derivationStepZipperDown!2294 (ite c!1320092 (regTwo!35833 (ite c!1319994 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319992 (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319996 (regOne!35832 (h!74830 (exprs!7156 lt!2548621))) (reg!17989 (h!74830 (exprs!7156 lt!2548621))))))) (regOne!35832 (ite c!1319994 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319992 (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319996 (regOne!35832 (h!74830 (exprs!7156 lt!2548621))) (reg!17989 (h!74830 (exprs!7156 lt!2548621)))))))) (ite c!1320092 (ite (or c!1319994 c!1319992) (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (Context!13313 call!643001)) (Context!13313 call!643059)) (h!74831 s!7408)))))

(declare-fun bm!643051 () Bool)

(declare-fun call!643057 () (Set Context!13312))

(declare-fun call!643055 () (Set Context!13312))

(assert (=> bm!643051 (= call!643057 call!643055)))

(declare-fun b!7075559 () Bool)

(assert (=> b!7075559 (= e!4253863 call!643054)))

(declare-fun bm!643052 () Bool)

(assert (=> bm!643052 (= call!643055 (derivationStepZipperDown!2294 (ite c!1320092 (regOne!35833 (ite c!1319994 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319992 (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319996 (regOne!35832 (h!74830 (exprs!7156 lt!2548621))) (reg!17989 (h!74830 (exprs!7156 lt!2548621))))))) (ite c!1320090 (regTwo!35832 (ite c!1319994 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319992 (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319996 (regOne!35832 (h!74830 (exprs!7156 lt!2548621))) (reg!17989 (h!74830 (exprs!7156 lt!2548621))))))) (ite c!1320094 (regOne!35832 (ite c!1319994 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319992 (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319996 (regOne!35832 (h!74830 (exprs!7156 lt!2548621))) (reg!17989 (h!74830 (exprs!7156 lt!2548621))))))) (reg!17989 (ite c!1319994 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319992 (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319996 (regOne!35832 (h!74830 (exprs!7156 lt!2548621))) (reg!17989 (h!74830 (exprs!7156 lt!2548621)))))))))) (ite (or c!1320092 c!1320090) (ite (or c!1319994 c!1319992) (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (Context!13313 call!643001)) (Context!13313 call!643056)) (h!74831 s!7408)))))

(declare-fun bm!643053 () Bool)

(assert (=> bm!643053 (= call!643054 call!643057)))

(declare-fun b!7075560 () Bool)

(assert (=> b!7075560 (= e!4253859 (set.union call!643058 call!643057))))

(declare-fun bm!643054 () Bool)

(assert (=> bm!643054 (= call!643059 ($colon$colon!2665 (exprs!7156 (ite (or c!1319994 c!1319992) (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (Context!13313 call!643001))) (ite (or c!1320090 c!1320094) (regTwo!35832 (ite c!1319994 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319992 (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319996 (regOne!35832 (h!74830 (exprs!7156 lt!2548621))) (reg!17989 (h!74830 (exprs!7156 lt!2548621))))))) (ite c!1319994 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319992 (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319996 (regOne!35832 (h!74830 (exprs!7156 lt!2548621))) (reg!17989 (h!74830 (exprs!7156 lt!2548621)))))))))))

(declare-fun b!7075561 () Bool)

(assert (=> b!7075561 (= e!4253862 e!4253861)))

(assert (=> b!7075561 (= c!1320092 (is-Union!17660 (ite c!1319994 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319992 (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319996 (regOne!35832 (h!74830 (exprs!7156 lt!2548621))) (reg!17989 (h!74830 (exprs!7156 lt!2548621))))))))))

(declare-fun b!7075562 () Bool)

(assert (=> b!7075562 (= e!4253861 (set.union call!643055 call!643058))))

(declare-fun b!7075563 () Bool)

(declare-fun c!1320093 () Bool)

(assert (=> b!7075563 (= c!1320093 (is-Star!17660 (ite c!1319994 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319992 (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319996 (regOne!35832 (h!74830 (exprs!7156 lt!2548621))) (reg!17989 (h!74830 (exprs!7156 lt!2548621))))))))))

(assert (=> b!7075563 (= e!4253860 e!4253863)))

(assert (= (and d!2212794 c!1320091) b!7075555))

(assert (= (and d!2212794 (not c!1320091)) b!7075561))

(assert (= (and b!7075561 c!1320092) b!7075562))

(assert (= (and b!7075561 (not c!1320092)) b!7075554))

(assert (= (and b!7075554 res!2890036) b!7075558))

(assert (= (and b!7075554 c!1320090) b!7075560))

(assert (= (and b!7075554 (not c!1320090)) b!7075556))

(assert (= (and b!7075556 c!1320094) b!7075553))

(assert (= (and b!7075556 (not c!1320094)) b!7075563))

(assert (= (and b!7075563 c!1320093) b!7075559))

(assert (= (and b!7075563 (not c!1320093)) b!7075557))

(assert (= (or b!7075553 b!7075559) bm!643049))

(assert (= (or b!7075553 b!7075559) bm!643053))

(assert (= (or b!7075560 bm!643053) bm!643051))

(assert (= (or b!7075560 bm!643049) bm!643054))

(assert (= (or b!7075562 bm!643051) bm!643052))

(assert (= (or b!7075562 b!7075560) bm!643050))

(declare-fun m!7803374 () Bool)

(assert (=> b!7075555 m!7803374))

(declare-fun m!7803376 () Bool)

(assert (=> b!7075558 m!7803376))

(declare-fun m!7803378 () Bool)

(assert (=> bm!643050 m!7803378))

(declare-fun m!7803380 () Bool)

(assert (=> bm!643052 m!7803380))

(declare-fun m!7803382 () Bool)

(assert (=> bm!643054 m!7803382))

(assert (=> bm!642997 d!2212794))

(declare-fun d!2212796 () Bool)

(declare-fun e!4253869 () Bool)

(assert (=> d!2212796 e!4253869))

(declare-fun res!2890039 () Bool)

(assert (=> d!2212796 (=> (not res!2890039) (not e!4253869))))

(declare-fun a!13680 () Context!13312)

(assert (=> d!2212796 (= res!2890039 (= lt!2548618 (dynLambda!27834 lambda!426477 a!13680)))))

(declare-fun e!4253870 () Bool)

(assert (=> d!2212796 (and (inv!87010 a!13680) e!4253870)))

(assert (=> d!2212796 (= (choose!54296 z1!570 lambda!426477 lt!2548618) a!13680)))

(declare-fun b!7075569 () Bool)

(declare-fun tp!1942739 () Bool)

(assert (=> b!7075569 (= e!4253870 tp!1942739)))

(declare-fun b!7075570 () Bool)

(assert (=> b!7075570 (= e!4253869 (set.member a!13680 z1!570))))

(assert (= d!2212796 b!7075569))

(assert (= (and d!2212796 res!2890039) b!7075570))

(declare-fun b_lambda!270189 () Bool)

(assert (=> (not b_lambda!270189) (not d!2212796)))

(declare-fun m!7803384 () Bool)

(assert (=> d!2212796 m!7803384))

(declare-fun m!7803386 () Bool)

(assert (=> d!2212796 m!7803386))

(declare-fun m!7803388 () Bool)

(assert (=> b!7075570 m!7803388))

(assert (=> d!2212654 d!2212796))

(declare-fun d!2212798 () Bool)

(assert (=> d!2212798 (= (map!16007 z1!570 lambda!426477) (choose!54302 z1!570 lambda!426477))))

(declare-fun bs!1881205 () Bool)

(assert (= bs!1881205 d!2212798))

(declare-fun m!7803390 () Bool)

(assert (=> bs!1881205 m!7803390))

(assert (=> d!2212654 d!2212798))

(declare-fun b!7075571 () Bool)

(declare-fun res!2890042 () Bool)

(declare-fun e!4253876 () Bool)

(assert (=> b!7075571 (=> res!2890042 e!4253876)))

(assert (=> b!7075571 (= res!2890042 (not (is-Concat!26505 (ite c!1319972 (reg!17989 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319971 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))))))))))

(declare-fun e!4253873 () Bool)

(assert (=> b!7075571 (= e!4253873 e!4253876)))

(declare-fun bm!643055 () Bool)

(declare-fun call!643061 () Bool)

(declare-fun call!643060 () Bool)

(assert (=> bm!643055 (= call!643061 call!643060)))

(declare-fun b!7075572 () Bool)

(declare-fun e!4253875 () Bool)

(declare-fun e!4253872 () Bool)

(assert (=> b!7075572 (= e!4253875 e!4253872)))

(declare-fun c!1320096 () Bool)

(assert (=> b!7075572 (= c!1320096 (is-Star!17660 (ite c!1319972 (reg!17989 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319971 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regTwo!35832 (h!74830 (exprs!7156 lt!2548621)))))))))

(declare-fun b!7075573 () Bool)

(declare-fun e!4253877 () Bool)

(assert (=> b!7075573 (= e!4253877 call!643061)))

(declare-fun b!7075574 () Bool)

(declare-fun res!2890041 () Bool)

(declare-fun e!4253871 () Bool)

(assert (=> b!7075574 (=> (not res!2890041) (not e!4253871))))

(declare-fun call!643062 () Bool)

(assert (=> b!7075574 (= res!2890041 call!643062)))

(assert (=> b!7075574 (= e!4253873 e!4253871)))

(declare-fun b!7075575 () Bool)

(declare-fun e!4253874 () Bool)

(assert (=> b!7075575 (= e!4253874 call!643060)))

(declare-fun b!7075576 () Bool)

(assert (=> b!7075576 (= e!4253876 e!4253877)))

(declare-fun res!2890043 () Bool)

(assert (=> b!7075576 (=> (not res!2890043) (not e!4253877))))

(assert (=> b!7075576 (= res!2890043 call!643062)))

(declare-fun d!2212800 () Bool)

(declare-fun res!2890044 () Bool)

(assert (=> d!2212800 (=> res!2890044 e!4253875)))

(assert (=> d!2212800 (= res!2890044 (is-ElementMatch!17660 (ite c!1319972 (reg!17989 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319971 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regTwo!35832 (h!74830 (exprs!7156 lt!2548621)))))))))

(assert (=> d!2212800 (= (validRegex!8977 (ite c!1319972 (reg!17989 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319971 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regTwo!35832 (h!74830 (exprs!7156 lt!2548621)))))) e!4253875)))

(declare-fun bm!643056 () Bool)

(declare-fun c!1320095 () Bool)

(assert (=> bm!643056 (= call!643062 (validRegex!8977 (ite c!1320095 (regOne!35833 (ite c!1319972 (reg!17989 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319971 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regTwo!35832 (h!74830 (exprs!7156 lt!2548621)))))) (regOne!35832 (ite c!1319972 (reg!17989 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319971 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regTwo!35832 (h!74830 (exprs!7156 lt!2548621)))))))))))

(declare-fun b!7075577 () Bool)

(assert (=> b!7075577 (= e!4253872 e!4253873)))

(assert (=> b!7075577 (= c!1320095 (is-Union!17660 (ite c!1319972 (reg!17989 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319971 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regTwo!35832 (h!74830 (exprs!7156 lt!2548621)))))))))

(declare-fun bm!643057 () Bool)

(assert (=> bm!643057 (= call!643060 (validRegex!8977 (ite c!1320096 (reg!17989 (ite c!1319972 (reg!17989 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319971 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regTwo!35832 (h!74830 (exprs!7156 lt!2548621)))))) (ite c!1320095 (regTwo!35833 (ite c!1319972 (reg!17989 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319971 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regTwo!35832 (h!74830 (exprs!7156 lt!2548621)))))) (regTwo!35832 (ite c!1319972 (reg!17989 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319971 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))))))))))))

(declare-fun b!7075578 () Bool)

(assert (=> b!7075578 (= e!4253872 e!4253874)))

(declare-fun res!2890040 () Bool)

(assert (=> b!7075578 (= res!2890040 (not (nullable!7343 (reg!17989 (ite c!1319972 (reg!17989 (h!74830 (exprs!7156 lt!2548621))) (ite c!1319971 (regTwo!35833 (h!74830 (exprs!7156 lt!2548621))) (regTwo!35832 (h!74830 (exprs!7156 lt!2548621)))))))))))

(assert (=> b!7075578 (=> (not res!2890040) (not e!4253874))))

(declare-fun b!7075579 () Bool)

(assert (=> b!7075579 (= e!4253871 call!643061)))

(assert (= (and d!2212800 (not res!2890044)) b!7075572))

(assert (= (and b!7075572 c!1320096) b!7075578))

(assert (= (and b!7075572 (not c!1320096)) b!7075577))

(assert (= (and b!7075578 res!2890040) b!7075575))

(assert (= (and b!7075577 c!1320095) b!7075574))

(assert (= (and b!7075577 (not c!1320095)) b!7075571))

(assert (= (and b!7075574 res!2890041) b!7075579))

(assert (= (and b!7075571 (not res!2890042)) b!7075576))

(assert (= (and b!7075576 res!2890043) b!7075573))

(assert (= (or b!7075579 b!7075573) bm!643055))

(assert (= (or b!7075574 b!7075576) bm!643056))

(assert (= (or b!7075575 bm!643055) bm!643057))

(declare-fun m!7803392 () Bool)

(assert (=> bm!643056 m!7803392))

(declare-fun m!7803394 () Bool)

(assert (=> bm!643057 m!7803394))

(declare-fun m!7803396 () Bool)

(assert (=> b!7075578 m!7803396))

(assert (=> bm!642978 d!2212800))

(declare-fun bs!1881206 () Bool)

(declare-fun d!2212802 () Bool)

(assert (= bs!1881206 (and d!2212802 d!2212760)))

(declare-fun lambda!426548 () Int)

(assert (=> bs!1881206 (not (= lambda!426548 lambda!426542))))

(declare-fun bs!1881207 () Bool)

(assert (= bs!1881207 (and d!2212802 d!2212604)))

(assert (=> bs!1881207 (not (= lambda!426548 lambda!426507))))

(declare-fun bs!1881208 () Bool)

(assert (= bs!1881208 (and d!2212802 d!2212762)))

(assert (=> bs!1881208 (not (= lambda!426548 lambda!426545))))

(declare-fun bs!1881209 () Bool)

(assert (= bs!1881209 (and d!2212802 b!7075084)))

(assert (=> bs!1881209 (not (= lambda!426548 lambda!426476))))

(declare-fun bs!1881210 () Bool)

(assert (= bs!1881210 (and d!2212802 d!2212602)))

(assert (=> bs!1881210 (not (= lambda!426548 lambda!426504))))

(declare-fun bs!1881211 () Bool)

(assert (= bs!1881211 (and d!2212802 d!2212792)))

(assert (=> bs!1881211 (= lambda!426548 lambda!426547)))

(declare-fun bs!1881212 () Bool)

(assert (= bs!1881212 (and d!2212802 d!2212740)))

(assert (=> bs!1881212 (= lambda!426548 lambda!426541)))

(assert (=> d!2212802 (= (nullableZipper!2708 (derivationStepZipperDown!2294 (h!74830 (exprs!7156 lt!2548621)) (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (h!74831 s!7408))) (exists!3722 (derivationStepZipperDown!2294 (h!74830 (exprs!7156 lt!2548621)) (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (h!74831 s!7408)) lambda!426548))))

(declare-fun bs!1881213 () Bool)

(assert (= bs!1881213 d!2212802))

(assert (=> bs!1881213 m!7802836))

(declare-fun m!7803398 () Bool)

(assert (=> bs!1881213 m!7803398))

(assert (=> b!7075201 d!2212802))

(declare-fun d!2212804 () Bool)

(declare-fun c!1320097 () Bool)

(assert (=> d!2212804 (= c!1320097 (isEmpty!39913 (tail!13854 s!7408)))))

(declare-fun e!4253878 () Bool)

(assert (=> d!2212804 (= (matchZipper!3200 (derivationStepZipper!3110 lt!2548623 (head!14416 s!7408)) (tail!13854 s!7408)) e!4253878)))

(declare-fun b!7075580 () Bool)

(assert (=> b!7075580 (= e!4253878 (nullableZipper!2708 (derivationStepZipper!3110 lt!2548623 (head!14416 s!7408))))))

(declare-fun b!7075581 () Bool)

(assert (=> b!7075581 (= e!4253878 (matchZipper!3200 (derivationStepZipper!3110 (derivationStepZipper!3110 lt!2548623 (head!14416 s!7408)) (head!14416 (tail!13854 s!7408))) (tail!13854 (tail!13854 s!7408))))))

(assert (= (and d!2212804 c!1320097) b!7075580))

(assert (= (and d!2212804 (not c!1320097)) b!7075581))

(assert (=> d!2212804 m!7802940))

(assert (=> d!2212804 m!7803348))

(assert (=> b!7075580 m!7802938))

(declare-fun m!7803400 () Bool)

(assert (=> b!7075580 m!7803400))

(assert (=> b!7075581 m!7802940))

(assert (=> b!7075581 m!7803352))

(assert (=> b!7075581 m!7802938))

(assert (=> b!7075581 m!7803352))

(declare-fun m!7803402 () Bool)

(assert (=> b!7075581 m!7803402))

(assert (=> b!7075581 m!7802940))

(assert (=> b!7075581 m!7803356))

(assert (=> b!7075581 m!7803402))

(assert (=> b!7075581 m!7803356))

(declare-fun m!7803404 () Bool)

(assert (=> b!7075581 m!7803404))

(assert (=> b!7075153 d!2212804))

(declare-fun bs!1881214 () Bool)

(declare-fun d!2212806 () Bool)

(assert (= bs!1881214 (and d!2212806 b!7075086)))

(declare-fun lambda!426549 () Int)

(assert (=> bs!1881214 (= (= (head!14416 s!7408) (h!74831 s!7408)) (= lambda!426549 lambda!426479))))

(declare-fun bs!1881215 () Bool)

(assert (= bs!1881215 (and d!2212806 d!2212622)))

(assert (=> bs!1881215 (= (= (head!14416 s!7408) (h!74831 s!7408)) (= lambda!426549 lambda!426513))))

(declare-fun bs!1881216 () Bool)

(assert (= bs!1881216 (and d!2212806 d!2212780)))

(assert (=> bs!1881216 (= lambda!426549 lambda!426546)))

(assert (=> d!2212806 true))

(assert (=> d!2212806 (= (derivationStepZipper!3110 lt!2548623 (head!14416 s!7408)) (flatMap!2586 lt!2548623 lambda!426549))))

(declare-fun bs!1881217 () Bool)

(assert (= bs!1881217 d!2212806))

(declare-fun m!7803406 () Bool)

(assert (=> bs!1881217 m!7803406))

(assert (=> b!7075153 d!2212806))

(assert (=> b!7075153 d!2212782))

(assert (=> b!7075153 d!2212784))

(declare-fun d!2212808 () Bool)

(declare-fun c!1320098 () Bool)

(assert (=> d!2212808 (= c!1320098 (is-Nil!68382 lt!2548697))))

(declare-fun e!4253879 () (Set Regex!17660))

(assert (=> d!2212808 (= (content!13819 lt!2548697) e!4253879)))

(declare-fun b!7075582 () Bool)

(assert (=> b!7075582 (= e!4253879 (as set.empty (Set Regex!17660)))))

(declare-fun b!7075583 () Bool)

(assert (=> b!7075583 (= e!4253879 (set.union (set.insert (h!74830 lt!2548697) (as set.empty (Set Regex!17660))) (content!13819 (t!382289 lt!2548697))))))

(assert (= (and d!2212808 c!1320098) b!7075582))

(assert (= (and d!2212808 (not c!1320098)) b!7075583))

(declare-fun m!7803408 () Bool)

(assert (=> b!7075583 m!7803408))

(declare-fun m!7803410 () Bool)

(assert (=> b!7075583 m!7803410))

(assert (=> d!2212652 d!2212808))

(declare-fun d!2212810 () Bool)

(declare-fun c!1320099 () Bool)

(assert (=> d!2212810 (= c!1320099 (is-Nil!68382 (exprs!7156 lt!2548621)))))

(declare-fun e!4253880 () (Set Regex!17660))

(assert (=> d!2212810 (= (content!13819 (exprs!7156 lt!2548621)) e!4253880)))

(declare-fun b!7075584 () Bool)

(assert (=> b!7075584 (= e!4253880 (as set.empty (Set Regex!17660)))))

(declare-fun b!7075585 () Bool)

(assert (=> b!7075585 (= e!4253880 (set.union (set.insert (h!74830 (exprs!7156 lt!2548621)) (as set.empty (Set Regex!17660))) (content!13819 (t!382289 (exprs!7156 lt!2548621)))))))

(assert (= (and d!2212810 c!1320099) b!7075584))

(assert (= (and d!2212810 (not c!1320099)) b!7075585))

(declare-fun m!7803412 () Bool)

(assert (=> b!7075585 m!7803412))

(assert (=> b!7075585 m!7803346))

(assert (=> d!2212652 d!2212810))

(assert (=> d!2212652 d!2212790))

(declare-fun d!2212812 () Bool)

(assert (=> d!2212812 (= (nullable!7343 (reg!17989 (h!74830 (exprs!7156 lt!2548621)))) (nullableFct!2820 (reg!17989 (h!74830 (exprs!7156 lt!2548621)))))))

(declare-fun bs!1881218 () Bool)

(assert (= bs!1881218 d!2212812))

(declare-fun m!7803414 () Bool)

(assert (=> bs!1881218 m!7803414))

(assert (=> b!7075182 d!2212812))

(declare-fun d!2212814 () Bool)

(declare-fun c!1320100 () Bool)

(assert (=> d!2212814 (= c!1320100 (isEmpty!39913 (tail!13854 (t!382290 s!7408))))))

(declare-fun e!4253881 () Bool)

(assert (=> d!2212814 (= (matchZipper!3200 (derivationStepZipper!3110 (derivationStepZipperDown!2294 (h!74830 (exprs!7156 lt!2548621)) (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (h!74831 s!7408)) (head!14416 (t!382290 s!7408))) (tail!13854 (t!382290 s!7408))) e!4253881)))

(declare-fun b!7075586 () Bool)

(assert (=> b!7075586 (= e!4253881 (nullableZipper!2708 (derivationStepZipper!3110 (derivationStepZipperDown!2294 (h!74830 (exprs!7156 lt!2548621)) (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (h!74831 s!7408)) (head!14416 (t!382290 s!7408)))))))

(declare-fun b!7075587 () Bool)

(assert (=> b!7075587 (= e!4253881 (matchZipper!3200 (derivationStepZipper!3110 (derivationStepZipper!3110 (derivationStepZipperDown!2294 (h!74830 (exprs!7156 lt!2548621)) (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (h!74831 s!7408)) (head!14416 (t!382290 s!7408))) (head!14416 (tail!13854 (t!382290 s!7408)))) (tail!13854 (tail!13854 (t!382290 s!7408)))))))

(assert (= (and d!2212814 c!1320100) b!7075586))

(assert (= (and d!2212814 (not c!1320100)) b!7075587))

(assert (=> d!2212814 m!7802980))

(declare-fun m!7803416 () Bool)

(assert (=> d!2212814 m!7803416))

(assert (=> b!7075586 m!7802978))

(declare-fun m!7803418 () Bool)

(assert (=> b!7075586 m!7803418))

(assert (=> b!7075587 m!7802980))

(declare-fun m!7803420 () Bool)

(assert (=> b!7075587 m!7803420))

(assert (=> b!7075587 m!7802978))

(assert (=> b!7075587 m!7803420))

(declare-fun m!7803422 () Bool)

(assert (=> b!7075587 m!7803422))

(assert (=> b!7075587 m!7802980))

(declare-fun m!7803424 () Bool)

(assert (=> b!7075587 m!7803424))

(assert (=> b!7075587 m!7803422))

(assert (=> b!7075587 m!7803424))

(declare-fun m!7803426 () Bool)

(assert (=> b!7075587 m!7803426))

(assert (=> b!7075202 d!2212814))

(declare-fun bs!1881219 () Bool)

(declare-fun d!2212816 () Bool)

(assert (= bs!1881219 (and d!2212816 b!7075086)))

(declare-fun lambda!426550 () Int)

(assert (=> bs!1881219 (= (= (head!14416 (t!382290 s!7408)) (h!74831 s!7408)) (= lambda!426550 lambda!426479))))

(declare-fun bs!1881220 () Bool)

(assert (= bs!1881220 (and d!2212816 d!2212622)))

(assert (=> bs!1881220 (= (= (head!14416 (t!382290 s!7408)) (h!74831 s!7408)) (= lambda!426550 lambda!426513))))

(declare-fun bs!1881221 () Bool)

(assert (= bs!1881221 (and d!2212816 d!2212780)))

(assert (=> bs!1881221 (= (= (head!14416 (t!382290 s!7408)) (head!14416 s!7408)) (= lambda!426550 lambda!426546))))

(declare-fun bs!1881222 () Bool)

(assert (= bs!1881222 (and d!2212816 d!2212806)))

(assert (=> bs!1881222 (= (= (head!14416 (t!382290 s!7408)) (head!14416 s!7408)) (= lambda!426550 lambda!426549))))

(assert (=> d!2212816 true))

(assert (=> d!2212816 (= (derivationStepZipper!3110 (derivationStepZipperDown!2294 (h!74830 (exprs!7156 lt!2548621)) (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (h!74831 s!7408)) (head!14416 (t!382290 s!7408))) (flatMap!2586 (derivationStepZipperDown!2294 (h!74830 (exprs!7156 lt!2548621)) (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))) (h!74831 s!7408)) lambda!426550))))

(declare-fun bs!1881223 () Bool)

(assert (= bs!1881223 d!2212816))

(assert (=> bs!1881223 m!7802836))

(declare-fun m!7803428 () Bool)

(assert (=> bs!1881223 m!7803428))

(assert (=> b!7075202 d!2212816))

(declare-fun d!2212818 () Bool)

(assert (=> d!2212818 (= (head!14416 (t!382290 s!7408)) (h!74831 (t!382290 s!7408)))))

(assert (=> b!7075202 d!2212818))

(declare-fun d!2212820 () Bool)

(assert (=> d!2212820 (= (tail!13854 (t!382290 s!7408)) (t!382290 (t!382290 s!7408)))))

(assert (=> b!7075202 d!2212820))

(declare-fun d!2212822 () Bool)

(assert (=> d!2212822 (= (isEmpty!39913 s!7408) (is-Nil!68383 s!7408))))

(assert (=> d!2212608 d!2212822))

(declare-fun d!2212824 () Bool)

(assert (=> d!2212824 (= ($colon$colon!2665 (exprs!7156 (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306)))) (ite (or c!1319992 c!1319996) (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))) (h!74830 (exprs!7156 lt!2548621)))) (Cons!68382 (ite (or c!1319992 c!1319996) (regTwo!35832 (h!74830 (exprs!7156 lt!2548621))) (h!74830 (exprs!7156 lt!2548621))) (exprs!7156 (Context!13313 (++!15801 lt!2548616 (exprs!7156 ct2!306))))))))

(assert (=> bm!642999 d!2212824))

(declare-fun d!2212826 () Bool)

(assert (=> d!2212826 (= (isEmpty!39913 (t!382290 s!7408)) (is-Nil!68383 (t!382290 s!7408)))))

(assert (=> d!2212624 d!2212826))

(assert (=> d!2212644 d!2212822))

(declare-fun d!2212828 () Bool)

(declare-fun c!1320101 () Bool)

(assert (=> d!2212828 (= c!1320101 (isEmpty!39913 s!7408))))

(declare-fun e!4253882 () Bool)

(assert (=> d!2212828 (= (matchZipper!3200 (set.insert lt!2548684 (as set.empty (Set Context!13312))) s!7408) e!4253882)))

(declare-fun b!7075588 () Bool)

(assert (=> b!7075588 (= e!4253882 (nullableZipper!2708 (set.insert lt!2548684 (as set.empty (Set Context!13312)))))))

(declare-fun b!7075589 () Bool)

(assert (=> b!7075589 (= e!4253882 (matchZipper!3200 (derivationStepZipper!3110 (set.insert lt!2548684 (as set.empty (Set Context!13312))) (head!14416 s!7408)) (tail!13854 s!7408)))))

(assert (= (and d!2212828 c!1320101) b!7075588))

(assert (= (and d!2212828 (not c!1320101)) b!7075589))

(assert (=> d!2212828 m!7802932))

(assert (=> b!7075588 m!7803058))

(declare-fun m!7803430 () Bool)

(assert (=> b!7075588 m!7803430))

(assert (=> b!7075589 m!7802936))

(assert (=> b!7075589 m!7803058))

(assert (=> b!7075589 m!7802936))

(declare-fun m!7803432 () Bool)

(assert (=> b!7075589 m!7803432))

(assert (=> b!7075589 m!7802940))

(assert (=> b!7075589 m!7803432))

(assert (=> b!7075589 m!7802940))

(declare-fun m!7803434 () Bool)

(assert (=> b!7075589 m!7803434))

(assert (=> bs!1881146 d!2212828))

(declare-fun b!7075590 () Bool)

(declare-fun res!2890047 () Bool)

(declare-fun e!4253888 () Bool)

(assert (=> b!7075590 (=> res!2890047 e!4253888)))

(assert (=> b!7075590 (= res!2890047 (not (is-Concat!26505 (ite c!1319971 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621)))))))))

(declare-fun e!4253885 () Bool)

(assert (=> b!7075590 (= e!4253885 e!4253888)))

(declare-fun bm!643058 () Bool)

(declare-fun call!643064 () Bool)

(declare-fun call!643063 () Bool)

(assert (=> bm!643058 (= call!643064 call!643063)))

(declare-fun b!7075591 () Bool)

(declare-fun e!4253887 () Bool)

(declare-fun e!4253884 () Bool)

(assert (=> b!7075591 (= e!4253887 e!4253884)))

(declare-fun c!1320103 () Bool)

(assert (=> b!7075591 (= c!1320103 (is-Star!17660 (ite c!1319971 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))))))

(declare-fun b!7075592 () Bool)

(declare-fun e!4253889 () Bool)

(assert (=> b!7075592 (= e!4253889 call!643064)))

(declare-fun b!7075593 () Bool)

(declare-fun res!2890046 () Bool)

(declare-fun e!4253883 () Bool)

(assert (=> b!7075593 (=> (not res!2890046) (not e!4253883))))

(declare-fun call!643065 () Bool)

(assert (=> b!7075593 (= res!2890046 call!643065)))

(assert (=> b!7075593 (= e!4253885 e!4253883)))

(declare-fun b!7075594 () Bool)

(declare-fun e!4253886 () Bool)

(assert (=> b!7075594 (= e!4253886 call!643063)))

(declare-fun b!7075595 () Bool)

(assert (=> b!7075595 (= e!4253888 e!4253889)))

(declare-fun res!2890048 () Bool)

(assert (=> b!7075595 (=> (not res!2890048) (not e!4253889))))

(assert (=> b!7075595 (= res!2890048 call!643065)))

(declare-fun d!2212830 () Bool)

(declare-fun res!2890049 () Bool)

(assert (=> d!2212830 (=> res!2890049 e!4253887)))

(assert (=> d!2212830 (= res!2890049 (is-ElementMatch!17660 (ite c!1319971 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))))))

(assert (=> d!2212830 (= (validRegex!8977 (ite c!1319971 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))) e!4253887)))

(declare-fun c!1320102 () Bool)

(declare-fun bm!643059 () Bool)

(assert (=> bm!643059 (= call!643065 (validRegex!8977 (ite c!1320102 (regOne!35833 (ite c!1319971 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))) (regOne!35832 (ite c!1319971 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))))))))

(declare-fun b!7075596 () Bool)

(assert (=> b!7075596 (= e!4253884 e!4253885)))

(assert (=> b!7075596 (= c!1320102 (is-Union!17660 (ite c!1319971 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))))))

(declare-fun bm!643060 () Bool)

(assert (=> bm!643060 (= call!643063 (validRegex!8977 (ite c!1320103 (reg!17989 (ite c!1319971 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))) (ite c!1320102 (regTwo!35833 (ite c!1319971 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))) (regTwo!35832 (ite c!1319971 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621)))))))))))

(declare-fun b!7075597 () Bool)

(assert (=> b!7075597 (= e!4253884 e!4253886)))

(declare-fun res!2890045 () Bool)

(assert (=> b!7075597 (= res!2890045 (not (nullable!7343 (reg!17989 (ite c!1319971 (regOne!35833 (h!74830 (exprs!7156 lt!2548621))) (regOne!35832 (h!74830 (exprs!7156 lt!2548621))))))))))

(assert (=> b!7075597 (=> (not res!2890045) (not e!4253886))))

(declare-fun b!7075598 () Bool)

(assert (=> b!7075598 (= e!4253883 call!643064)))

(assert (= (and d!2212830 (not res!2890049)) b!7075591))

(assert (= (and b!7075591 c!1320103) b!7075597))

(assert (= (and b!7075591 (not c!1320103)) b!7075596))

(assert (= (and b!7075597 res!2890045) b!7075594))

(assert (= (and b!7075596 c!1320102) b!7075593))

(assert (= (and b!7075596 (not c!1320102)) b!7075590))

(assert (= (and b!7075593 res!2890046) b!7075598))

(assert (= (and b!7075590 (not res!2890047)) b!7075595))

(assert (= (and b!7075595 res!2890048) b!7075592))

(assert (= (or b!7075598 b!7075592) bm!643058))

(assert (= (or b!7075593 b!7075595) bm!643059))

(assert (= (or b!7075594 bm!643058) bm!643060))

(declare-fun m!7803436 () Bool)

(assert (=> bm!643059 m!7803436))

(declare-fun m!7803438 () Bool)

(assert (=> bm!643060 m!7803438))

(declare-fun m!7803440 () Bool)

(assert (=> b!7075597 m!7803440))

(assert (=> bm!642977 d!2212830))

(declare-fun d!2212832 () Bool)

(declare-fun res!2890050 () Bool)

(declare-fun e!4253890 () Bool)

(assert (=> d!2212832 (=> res!2890050 e!4253890)))

(assert (=> d!2212832 (= res!2890050 (is-Nil!68382 (exprs!7156 setElem!50336)))))

(assert (=> d!2212832 (= (forall!16614 (exprs!7156 setElem!50336) lambda!426510) e!4253890)))

(declare-fun b!7075599 () Bool)

(declare-fun e!4253891 () Bool)

(assert (=> b!7075599 (= e!4253890 e!4253891)))

(declare-fun res!2890051 () Bool)

(assert (=> b!7075599 (=> (not res!2890051) (not e!4253891))))

(assert (=> b!7075599 (= res!2890051 (dynLambda!27839 lambda!426510 (h!74830 (exprs!7156 setElem!50336))))))

(declare-fun b!7075600 () Bool)

(assert (=> b!7075600 (= e!4253891 (forall!16614 (t!382289 (exprs!7156 setElem!50336)) lambda!426510))))

(assert (= (and d!2212832 (not res!2890050)) b!7075599))

(assert (= (and b!7075599 res!2890051) b!7075600))

(declare-fun b_lambda!270191 () Bool)

(assert (=> (not b_lambda!270191) (not b!7075599)))

(declare-fun m!7803442 () Bool)

(assert (=> b!7075599 m!7803442))

(declare-fun m!7803444 () Bool)

(assert (=> b!7075600 m!7803444))

(assert (=> d!2212612 d!2212832))

(declare-fun d!2212834 () Bool)

(declare-fun res!2890052 () Bool)

(declare-fun e!4253892 () Bool)

(assert (=> d!2212834 (=> res!2890052 e!4253892)))

(assert (=> d!2212834 (= res!2890052 (is-Nil!68382 (++!15801 lt!2548616 (exprs!7156 ct2!306))))))

(assert (=> d!2212834 (= (forall!16614 (++!15801 lt!2548616 (exprs!7156 ct2!306)) lambda!426478) e!4253892)))

(declare-fun b!7075601 () Bool)

(declare-fun e!4253893 () Bool)

(assert (=> b!7075601 (= e!4253892 e!4253893)))

(declare-fun res!2890053 () Bool)

(assert (=> b!7075601 (=> (not res!2890053) (not e!4253893))))

(assert (=> b!7075601 (= res!2890053 (dynLambda!27839 lambda!426478 (h!74830 (++!15801 lt!2548616 (exprs!7156 ct2!306)))))))

(declare-fun b!7075602 () Bool)

(assert (=> b!7075602 (= e!4253893 (forall!16614 (t!382289 (++!15801 lt!2548616 (exprs!7156 ct2!306))) lambda!426478))))

(assert (= (and d!2212834 (not res!2890052)) b!7075601))

(assert (= (and b!7075601 res!2890053) b!7075602))

(declare-fun b_lambda!270193 () Bool)

(assert (=> (not b_lambda!270193) (not b!7075601)))

(declare-fun m!7803446 () Bool)

(assert (=> b!7075601 m!7803446))

(declare-fun m!7803448 () Bool)

(assert (=> b!7075602 m!7803448))

(assert (=> d!2212638 d!2212834))

(assert (=> d!2212638 d!2212636))

(declare-fun d!2212836 () Bool)

(assert (=> d!2212836 (forall!16614 (++!15801 lt!2548616 (exprs!7156 ct2!306)) lambda!426478)))

(assert (=> d!2212836 true))

(declare-fun _$78!676 () Unit!162030)

(assert (=> d!2212836 (= (choose!54291 lt!2548616 (exprs!7156 ct2!306) lambda!426478) _$78!676)))

(declare-fun bs!1881224 () Bool)

(assert (= bs!1881224 d!2212836))

(assert (=> bs!1881224 m!7802834))

(assert (=> bs!1881224 m!7802834))

(assert (=> bs!1881224 m!7803012))

(assert (=> d!2212638 d!2212836))

(declare-fun d!2212838 () Bool)

(declare-fun res!2890054 () Bool)

(declare-fun e!4253894 () Bool)

(assert (=> d!2212838 (=> res!2890054 e!4253894)))

(assert (=> d!2212838 (= res!2890054 (is-Nil!68382 lt!2548616))))

(assert (=> d!2212838 (= (forall!16614 lt!2548616 lambda!426478) e!4253894)))

(declare-fun b!7075603 () Bool)

(declare-fun e!4253895 () Bool)

(assert (=> b!7075603 (= e!4253894 e!4253895)))

(declare-fun res!2890055 () Bool)

(assert (=> b!7075603 (=> (not res!2890055) (not e!4253895))))

(assert (=> b!7075603 (= res!2890055 (dynLambda!27839 lambda!426478 (h!74830 lt!2548616)))))

(declare-fun b!7075604 () Bool)

(assert (=> b!7075604 (= e!4253895 (forall!16614 (t!382289 lt!2548616) lambda!426478))))

(assert (= (and d!2212838 (not res!2890054)) b!7075603))

(assert (= (and b!7075603 res!2890055) b!7075604))

(declare-fun b_lambda!270195 () Bool)

(assert (=> (not b_lambda!270195) (not b!7075603)))

(declare-fun m!7803450 () Bool)

(assert (=> b!7075603 m!7803450))

(declare-fun m!7803452 () Bool)

(assert (=> b!7075604 m!7803452))

(assert (=> d!2212638 d!2212838))

(declare-fun b!7075605 () Bool)

(declare-fun e!4253896 () Bool)

(declare-fun tp!1942740 () Bool)

(assert (=> b!7075605 (= e!4253896 (and tp_is_empty!44545 tp!1942740))))

(assert (=> b!7075303 (= tp!1942705 e!4253896)))

(assert (= (and b!7075303 (is-Cons!68383 (t!382290 (t!382290 s!7408)))) b!7075605))

(declare-fun b!7075617 () Bool)

(declare-fun e!4253899 () Bool)

(declare-fun tp!1942754 () Bool)

(declare-fun tp!1942753 () Bool)

(assert (=> b!7075617 (= e!4253899 (and tp!1942754 tp!1942753))))

(declare-fun b!7075616 () Bool)

(assert (=> b!7075616 (= e!4253899 tp_is_empty!44545)))

(declare-fun b!7075619 () Bool)

(declare-fun tp!1942752 () Bool)

(declare-fun tp!1942751 () Bool)

(assert (=> b!7075619 (= e!4253899 (and tp!1942752 tp!1942751))))

(declare-fun b!7075618 () Bool)

(declare-fun tp!1942755 () Bool)

(assert (=> b!7075618 (= e!4253899 tp!1942755)))

(assert (=> b!7075304 (= tp!1942706 e!4253899)))

(assert (= (and b!7075304 (is-ElementMatch!17660 (h!74830 (exprs!7156 setElem!50336)))) b!7075616))

(assert (= (and b!7075304 (is-Concat!26505 (h!74830 (exprs!7156 setElem!50336)))) b!7075617))

(assert (= (and b!7075304 (is-Star!17660 (h!74830 (exprs!7156 setElem!50336)))) b!7075618))

(assert (= (and b!7075304 (is-Union!17660 (h!74830 (exprs!7156 setElem!50336)))) b!7075619))

(declare-fun b!7075620 () Bool)

(declare-fun e!4253900 () Bool)

(declare-fun tp!1942756 () Bool)

(declare-fun tp!1942757 () Bool)

(assert (=> b!7075620 (= e!4253900 (and tp!1942756 tp!1942757))))

(assert (=> b!7075304 (= tp!1942707 e!4253900)))

(assert (= (and b!7075304 (is-Cons!68382 (t!382289 (exprs!7156 setElem!50336)))) b!7075620))

(declare-fun b!7075621 () Bool)

(declare-fun e!4253901 () Bool)

(declare-fun tp!1942758 () Bool)

(declare-fun tp!1942759 () Bool)

(assert (=> b!7075621 (= e!4253901 (and tp!1942758 tp!1942759))))

(assert (=> b!7075293 (= tp!1942695 e!4253901)))

(assert (= (and b!7075293 (is-Cons!68382 (exprs!7156 setElem!50342))) b!7075621))

(declare-fun condSetEmpty!50349 () Bool)

(assert (=> setNonEmpty!50342 (= condSetEmpty!50349 (= setRest!50342 (as set.empty (Set Context!13312))))))

(declare-fun setRes!50349 () Bool)

(assert (=> setNonEmpty!50342 (= tp!1942696 setRes!50349)))

(declare-fun setIsEmpty!50349 () Bool)

(assert (=> setIsEmpty!50349 setRes!50349))

(declare-fun setElem!50349 () Context!13312)

(declare-fun e!4253902 () Bool)

(declare-fun tp!1942761 () Bool)

(declare-fun setNonEmpty!50349 () Bool)

(assert (=> setNonEmpty!50349 (= setRes!50349 (and tp!1942761 (inv!87010 setElem!50349) e!4253902))))

(declare-fun setRest!50349 () (Set Context!13312))

(assert (=> setNonEmpty!50349 (= setRest!50342 (set.union (set.insert setElem!50349 (as set.empty (Set Context!13312))) setRest!50349))))

(declare-fun b!7075622 () Bool)

(declare-fun tp!1942760 () Bool)

(assert (=> b!7075622 (= e!4253902 tp!1942760)))

(assert (= (and setNonEmpty!50342 condSetEmpty!50349) setIsEmpty!50349))

(assert (= (and setNonEmpty!50342 (not condSetEmpty!50349)) setNonEmpty!50349))

(assert (= setNonEmpty!50349 b!7075622))

(declare-fun m!7803454 () Bool)

(assert (=> setNonEmpty!50349 m!7803454))

(declare-fun b!7075624 () Bool)

(declare-fun e!4253903 () Bool)

(declare-fun tp!1942765 () Bool)

(declare-fun tp!1942764 () Bool)

(assert (=> b!7075624 (= e!4253903 (and tp!1942765 tp!1942764))))

(declare-fun b!7075623 () Bool)

(assert (=> b!7075623 (= e!4253903 tp_is_empty!44545)))

(declare-fun b!7075626 () Bool)

(declare-fun tp!1942763 () Bool)

(declare-fun tp!1942762 () Bool)

(assert (=> b!7075626 (= e!4253903 (and tp!1942763 tp!1942762))))

(declare-fun b!7075625 () Bool)

(declare-fun tp!1942766 () Bool)

(assert (=> b!7075625 (= e!4253903 tp!1942766)))

(assert (=> b!7075298 (= tp!1942701 e!4253903)))

(assert (= (and b!7075298 (is-ElementMatch!17660 (h!74830 (exprs!7156 ct2!306)))) b!7075623))

(assert (= (and b!7075298 (is-Concat!26505 (h!74830 (exprs!7156 ct2!306)))) b!7075624))

(assert (= (and b!7075298 (is-Star!17660 (h!74830 (exprs!7156 ct2!306)))) b!7075625))

(assert (= (and b!7075298 (is-Union!17660 (h!74830 (exprs!7156 ct2!306)))) b!7075626))

(declare-fun b!7075627 () Bool)

(declare-fun e!4253904 () Bool)

(declare-fun tp!1942767 () Bool)

(declare-fun tp!1942768 () Bool)

(assert (=> b!7075627 (= e!4253904 (and tp!1942767 tp!1942768))))

(assert (=> b!7075298 (= tp!1942702 e!4253904)))

(assert (= (and b!7075298 (is-Cons!68382 (t!382289 (exprs!7156 ct2!306)))) b!7075627))

(declare-fun b_lambda!270197 () Bool)

(assert (= b_lambda!270175 (or b!7075086 b_lambda!270197)))

(assert (=> d!2212716 d!2212660))

(declare-fun b_lambda!270199 () Bool)

(assert (= b_lambda!270191 (or d!2212612 b_lambda!270199)))

(declare-fun bs!1881225 () Bool)

(declare-fun d!2212840 () Bool)

(assert (= bs!1881225 (and d!2212840 d!2212612)))

(assert (=> bs!1881225 (= (dynLambda!27839 lambda!426510 (h!74830 (exprs!7156 setElem!50336))) (validRegex!8977 (h!74830 (exprs!7156 setElem!50336))))))

(declare-fun m!7803456 () Bool)

(assert (=> bs!1881225 m!7803456))

(assert (=> b!7075599 d!2212840))

(declare-fun b_lambda!270201 () Bool)

(assert (= b_lambda!270179 (or b!7075084 b_lambda!270201)))

(declare-fun bs!1881226 () Bool)

(declare-fun d!2212842 () Bool)

(assert (= bs!1881226 (and d!2212842 b!7075084)))

(assert (=> bs!1881226 (= (dynLambda!27832 lambda!426476 (h!74832 (toList!11001 lt!2548626))) (matchZipper!3200 (set.insert (h!74832 (toList!11001 lt!2548626)) (as set.empty (Set Context!13312))) s!7408))))

(declare-fun m!7803458 () Bool)

(assert (=> bs!1881226 m!7803458))

(assert (=> bs!1881226 m!7803458))

(declare-fun m!7803460 () Bool)

(assert (=> bs!1881226 m!7803460))

(assert (=> b!7075473 d!2212842))

(declare-fun b_lambda!270203 () Bool)

(assert (= b_lambda!270193 (or b!7075088 b_lambda!270203)))

(declare-fun bs!1881227 () Bool)

(declare-fun d!2212844 () Bool)

(assert (= bs!1881227 (and d!2212844 b!7075088)))

(assert (=> bs!1881227 (= (dynLambda!27839 lambda!426478 (h!74830 (++!15801 lt!2548616 (exprs!7156 ct2!306)))) (validRegex!8977 (h!74830 (++!15801 lt!2548616 (exprs!7156 ct2!306)))))))

(declare-fun m!7803462 () Bool)

(assert (=> bs!1881227 m!7803462))

(assert (=> b!7075601 d!2212844))

(declare-fun b_lambda!270205 () Bool)

(assert (= b_lambda!270185 (or b!7075088 b_lambda!270205)))

(declare-fun bs!1881228 () Bool)

(declare-fun d!2212846 () Bool)

(assert (= bs!1881228 (and d!2212846 b!7075088)))

(assert (=> bs!1881228 (= (dynLambda!27839 lambda!426478 (h!74830 (exprs!7156 lt!2548621))) (validRegex!8977 (h!74830 (exprs!7156 lt!2548621))))))

(assert (=> bs!1881228 m!7802848))

(assert (=> b!7075505 d!2212846))

(declare-fun b_lambda!270207 () Bool)

(assert (= b_lambda!270181 (or d!2212650 b_lambda!270207)))

(declare-fun bs!1881229 () Bool)

(declare-fun d!2212848 () Bool)

(assert (= bs!1881229 (and d!2212848 d!2212650)))

(assert (=> bs!1881229 (= (dynLambda!27839 lambda!426522 (h!74830 (exprs!7156 ct2!306))) (validRegex!8977 (h!74830 (exprs!7156 ct2!306))))))

(declare-fun m!7803464 () Bool)

(assert (=> bs!1881229 m!7803464))

(assert (=> b!7075483 d!2212848))

(declare-fun b_lambda!270209 () Bool)

(assert (= b_lambda!270195 (or b!7075088 b_lambda!270209)))

(declare-fun bs!1881230 () Bool)

(declare-fun d!2212850 () Bool)

(assert (= bs!1881230 (and d!2212850 b!7075088)))

(assert (=> bs!1881230 (= (dynLambda!27839 lambda!426478 (h!74830 lt!2548616)) (validRegex!8977 (h!74830 lt!2548616)))))

(declare-fun m!7803466 () Bool)

(assert (=> bs!1881230 m!7803466))

(assert (=> b!7075603 d!2212850))

(declare-fun b_lambda!270211 () Bool)

(assert (= b_lambda!270177 (or b!7075084 b_lambda!270211)))

(declare-fun bs!1881231 () Bool)

(declare-fun d!2212852 () Bool)

(assert (= bs!1881231 (and d!2212852 b!7075084)))

(assert (=> bs!1881231 (= (dynLambda!27832 lambda!426476 lt!2548733) (matchZipper!3200 (set.insert lt!2548733 (as set.empty (Set Context!13312))) s!7408))))

(declare-fun m!7803468 () Bool)

(assert (=> bs!1881231 m!7803468))

(assert (=> bs!1881231 m!7803468))

(declare-fun m!7803470 () Bool)

(assert (=> bs!1881231 m!7803470))

(assert (=> d!2212730 d!2212852))

(declare-fun b_lambda!270213 () Bool)

(assert (= b_lambda!270189 (or b!7075088 b_lambda!270213)))

(declare-fun bs!1881232 () Bool)

(declare-fun d!2212854 () Bool)

(assert (= bs!1881232 (and d!2212854 b!7075088)))

(declare-fun lt!2548748 () Unit!162030)

(assert (=> bs!1881232 (= lt!2548748 (lemmaConcatPreservesForall!971 (exprs!7156 a!13680) (exprs!7156 ct2!306) lambda!426478))))

(assert (=> bs!1881232 (= (dynLambda!27834 lambda!426477 a!13680) (Context!13313 (++!15801 (exprs!7156 a!13680) (exprs!7156 ct2!306))))))

(declare-fun m!7803472 () Bool)

(assert (=> bs!1881232 m!7803472))

(declare-fun m!7803474 () Bool)

(assert (=> bs!1881232 m!7803474))

(assert (=> d!2212796 d!2212854))

(declare-fun b_lambda!270215 () Bool)

(assert (= b_lambda!270187 (or d!2212604 b_lambda!270215)))

(declare-fun bs!1881233 () Bool)

(declare-fun d!2212856 () Bool)

(assert (= bs!1881233 (and d!2212856 d!2212604)))

(assert (=> bs!1881233 (= (dynLambda!27832 lambda!426507 (h!74832 lt!2548627)) (not (dynLambda!27832 lambda!426476 (h!74832 lt!2548627))))))

(declare-fun b_lambda!270219 () Bool)

(assert (=> (not b_lambda!270219) (not bs!1881233)))

(declare-fun m!7803476 () Bool)

(assert (=> bs!1881233 m!7803476))

(assert (=> b!7075511 d!2212856))

(declare-fun b_lambda!270217 () Bool)

(assert (= b_lambda!270183 (or b!7075088 b_lambda!270217)))

(declare-fun bs!1881234 () Bool)

(declare-fun d!2212858 () Bool)

(assert (= bs!1881234 (and d!2212858 b!7075088)))

(assert (=> bs!1881234 (= (dynLambda!27839 lambda!426478 (h!74830 (++!15801 (exprs!7156 lt!2548621) (exprs!7156 ct2!306)))) (validRegex!8977 (h!74830 (++!15801 (exprs!7156 lt!2548621) (exprs!7156 ct2!306)))))))

(declare-fun m!7803478 () Bool)

(assert (=> bs!1881234 m!7803478))

(assert (=> b!7075503 d!2212858))

(push 1)

(assert (not d!2212732))

(assert (not bm!643033))

(assert (not d!2212798))

(assert (not d!2212812))

(assert (not d!2212780))

(assert (not d!2212750))

(assert (not d!2212778))

(assert (not b!7075428))

(assert (not b!7075597))

(assert (not d!2212736))

(assert (not bm!643048))

(assert (not b!7075501))

(assert (not d!2212802))

(assert (not bm!643052))

(assert (not d!2212738))

(assert (not bm!643050))

(assert (not d!2212760))

(assert (not bm!643056))

(assert (not d!2212764))

(assert (not d!2212730))

(assert (not b!7075580))

(assert (not bs!1881232))

(assert (not b!7075520))

(assert (not b!7075626))

(assert (not b!7075498))

(assert (not bm!643040))

(assert (not b!7075512))

(assert (not bs!1881231))

(assert (not b!7075514))

(assert (not d!2212710))

(assert (not b!7075513))

(assert (not d!2212762))

(assert (not d!2212828))

(assert (not b!7075622))

(assert (not b!7075410))

(assert (not d!2212804))

(assert (not b!7075525))

(assert (not b_lambda!270205))

(assert (not d!2212708))

(assert (not b!7075496))

(assert (not b_lambda!270157))

(assert (not b!7075420))

(assert (not bs!1881234))

(assert (not b!7075487))

(assert (not b!7075619))

(assert (not b_lambda!270207))

(assert (not b!7075605))

(assert (not b!7075625))

(assert (not bm!643046))

(assert (not d!2212716))

(assert (not d!2212720))

(assert (not bm!643042))

(assert (not b!7075523))

(assert (not d!2212714))

(assert (not b_lambda!270213))

(assert (not b!7075516))

(assert (not b_lambda!270159))

(assert (not b!7075484))

(assert (not d!2212814))

(assert (not bm!643059))

(assert (not b_lambda!270203))

(assert (not b!7075550))

(assert (not b!7075583))

(assert (not b_lambda!270209))

(assert (not b!7075421))

(assert (not bs!1881226))

(assert (not b!7075569))

(assert (not b!7075602))

(assert (not b!7075506))

(assert (not b!7075581))

(assert (not b!7075618))

(assert tp_is_empty!44545)

(assert (not d!2212806))

(assert (not d!2212776))

(assert (not b!7075539))

(assert (not bs!1881230))

(assert (not b!7075621))

(assert (not bs!1881228))

(assert (not bm!643041))

(assert (not b!7075494))

(assert (not setNonEmpty!50348))

(assert (not bm!643031))

(assert (not b_lambda!270199))

(assert (not bs!1881229))

(assert (not setNonEmpty!50349))

(assert (not b!7075589))

(assert (not b!7075588))

(assert (not b_lambda!270217))

(assert (not b!7075624))

(assert (not b!7075578))

(assert (not b!7075500))

(assert (not b!7075474))

(assert (not b!7075538))

(assert (not b!7075531))

(assert (not b_lambda!270211))

(assert (not d!2212816))

(assert (not d!2212792))

(assert (not d!2212836))

(assert (not bm!643035))

(assert (not b!7075478))

(assert (not b!7075585))

(assert (not d!2212740))

(assert (not b!7075604))

(assert (not d!2212796))

(assert (not b!7075542))

(assert (not b!7075587))

(assert (not b_lambda!270215))

(assert (not bm!643060))

(assert (not b_lambda!270219))

(assert (not b!7075552))

(assert (not d!2212722))

(assert (not b!7075620))

(assert (not b_lambda!270201))

(assert (not b!7075548))

(assert (not b!7075430))

(assert (not b_lambda!270197))

(assert (not b!7075627))

(assert (not b!7075541))

(assert (not b!7075486))

(assert (not b!7075586))

(assert (not b!7075460))

(assert (not d!2212754))

(assert (not b!7075617))

(assert (not b!7075518))

(assert (not b!7075476))

(assert (not bm!643057))

(assert (not b!7075600))

(assert (not bs!1881225))

(assert (not bm!643044))

(assert (not b!7075429))

(assert (not bs!1881227))

(assert (not b!7075504))

(assert (not b!7075558))

(assert (not b_lambda!270161))

(assert (not d!2212742))

(assert (not b!7075433))

(assert (not bm!643054))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

