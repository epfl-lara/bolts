; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!682764 () Bool)

(assert start!682764)

(declare-fun b!7049624 () Bool)

(assert (=> b!7049624 true))

(declare-fun b!7049620 () Bool)

(assert (=> b!7049620 true))

(declare-fun b!7049616 () Bool)

(assert (=> b!7049616 true))

(declare-fun b!7049617 () Bool)

(declare-fun e!4237951 () Bool)

(declare-fun e!4237954 () Bool)

(assert (=> b!7049617 (= e!4237951 e!4237954)))

(declare-fun res!2877928 () Bool)

(assert (=> b!7049617 (=> res!2877928 e!4237954)))

(declare-datatypes ((C!35314 0))(
  ( (C!35315 (val!27359 Int)) )
))
(declare-datatypes ((Regex!17522 0))(
  ( (ElementMatch!17522 (c!1313030 C!35314)) (Concat!26367 (regOne!35556 Regex!17522) (regTwo!35556 Regex!17522)) (EmptyExpr!17522) (Star!17522 (reg!17851 Regex!17522)) (EmptyLang!17522) (Union!17522 (regOne!35557 Regex!17522) (regTwo!35557 Regex!17522)) )
))
(declare-datatypes ((List!68094 0))(
  ( (Nil!67970) (Cons!67970 (h!74418 Regex!17522) (t!381873 List!68094)) )
))
(declare-datatypes ((Context!13036 0))(
  ( (Context!13037 (exprs!7018 List!68094)) )
))
(declare-fun lt!2528849 () (Set Context!13036))

(declare-fun lt!2528842 () (Set Context!13036))

(assert (=> b!7049617 (= res!2877928 (not (= lt!2528849 lt!2528842)))))

(declare-fun lt!2528843 () Context!13036)

(assert (=> b!7049617 (= lt!2528849 (set.insert lt!2528843 (as set.empty (Set Context!13036))))))

(declare-fun lt!2528852 () Context!13036)

(declare-fun lambda!418525 () Int)

(declare-fun ct2!306 () Context!13036)

(declare-datatypes ((Unit!161732 0))(
  ( (Unit!161733) )
))
(declare-fun lt!2528851 () Unit!161732)

(declare-fun lemmaConcatPreservesForall!843 (List!68094 List!68094 Int) Unit!161732)

(assert (=> b!7049617 (= lt!2528851 (lemmaConcatPreservesForall!843 (exprs!7018 lt!2528852) (exprs!7018 ct2!306) lambda!418525))))

(declare-fun b!7049618 () Bool)

(declare-fun e!4237948 () Bool)

(declare-fun tp!1938543 () Bool)

(assert (=> b!7049618 (= e!4237948 tp!1938543)))

(declare-fun b!7049619 () Bool)

(declare-fun res!2877932 () Bool)

(declare-fun e!4237950 () Bool)

(assert (=> b!7049619 (=> res!2877932 e!4237950)))

(declare-fun lt!2528850 () Context!13036)

(declare-fun lt!2528846 () (Set Context!13036))

(assert (=> b!7049619 (= res!2877932 (not (set.member lt!2528850 lt!2528846)))))

(assert (=> b!7049620 (= e!4237950 e!4237951)))

(declare-fun res!2877929 () Bool)

(assert (=> b!7049620 (=> res!2877929 e!4237951)))

(declare-fun z1!570 () (Set Context!13036))

(assert (=> b!7049620 (= res!2877929 (or (not (= lt!2528843 lt!2528850)) (not (set.member lt!2528852 z1!570))))))

(declare-fun ++!15615 (List!68094 List!68094) List!68094)

(assert (=> b!7049620 (= lt!2528843 (Context!13037 (++!15615 (exprs!7018 lt!2528852) (exprs!7018 ct2!306))))))

(declare-fun lt!2528853 () Unit!161732)

(assert (=> b!7049620 (= lt!2528853 (lemmaConcatPreservesForall!843 (exprs!7018 lt!2528852) (exprs!7018 ct2!306) lambda!418525))))

(declare-fun lambda!418524 () Int)

(declare-fun mapPost2!363 ((Set Context!13036) Int Context!13036) Context!13036)

(assert (=> b!7049620 (= lt!2528852 (mapPost2!363 z1!570 lambda!418524 lt!2528850))))

(declare-fun b!7049621 () Bool)

(declare-fun e!4237949 () Bool)

(declare-fun tp!1938544 () Bool)

(assert (=> b!7049621 (= e!4237949 tp!1938544)))

(declare-fun setRes!49551 () Bool)

(declare-fun tp!1938545 () Bool)

(declare-fun setNonEmpty!49551 () Bool)

(declare-fun setElem!49551 () Context!13036)

(declare-fun inv!86665 (Context!13036) Bool)

(assert (=> setNonEmpty!49551 (= setRes!49551 (and tp!1938545 (inv!86665 setElem!49551) e!4237949))))

(declare-fun setRest!49551 () (Set Context!13036))

(assert (=> setNonEmpty!49551 (= z1!570 (set.union (set.insert setElem!49551 (as set.empty (Set Context!13036))) setRest!49551))))

(declare-fun setIsEmpty!49551 () Bool)

(assert (=> setIsEmpty!49551 setRes!49551))

(declare-fun b!7049622 () Bool)

(declare-fun e!4237953 () Bool)

(declare-fun tp_is_empty!44269 () Bool)

(declare-fun tp!1938542 () Bool)

(assert (=> b!7049622 (= e!4237953 (and tp_is_empty!44269 tp!1938542))))

(declare-fun e!4237947 () Bool)

(assert (=> b!7049616 (= e!4237954 e!4237947)))

(declare-fun res!2877931 () Bool)

(assert (=> b!7049616 (=> res!2877931 e!4237947)))

(declare-fun lt!2528845 () (Set Context!13036))

(declare-datatypes ((List!68095 0))(
  ( (Nil!67971) (Cons!67971 (h!74419 C!35314) (t!381874 List!68095)) )
))
(declare-fun s!7408 () List!68095)

(declare-fun derivationStepZipper!2978 ((Set Context!13036) C!35314) (Set Context!13036))

(assert (=> b!7049616 (= res!2877931 (not (= (derivationStepZipper!2978 lt!2528849 (h!74419 s!7408)) lt!2528845)))))

(declare-fun lambda!418526 () Int)

(declare-fun flatMap!2469 ((Set Context!13036) Int) (Set Context!13036))

(declare-fun derivationStepZipperUp!2132 (Context!13036 C!35314) (Set Context!13036))

(assert (=> b!7049616 (= (flatMap!2469 lt!2528849 lambda!418526) (derivationStepZipperUp!2132 lt!2528843 (h!74419 s!7408)))))

(declare-fun lt!2528841 () Unit!161732)

(declare-fun lemmaFlatMapOnSingletonSet!1983 ((Set Context!13036) Context!13036 Int) Unit!161732)

(assert (=> b!7049616 (= lt!2528841 (lemmaFlatMapOnSingletonSet!1983 lt!2528849 lt!2528843 lambda!418526))))

(assert (=> b!7049616 (= lt!2528845 (derivationStepZipperUp!2132 lt!2528843 (h!74419 s!7408)))))

(declare-fun lt!2528854 () Unit!161732)

(assert (=> b!7049616 (= lt!2528854 (lemmaConcatPreservesForall!843 (exprs!7018 lt!2528852) (exprs!7018 ct2!306) lambda!418525))))

(declare-fun res!2877930 () Bool)

(declare-fun e!4237952 () Bool)

(assert (=> start!682764 (=> (not res!2877930) (not e!4237952))))

(declare-fun matchZipper!3062 ((Set Context!13036) List!68095) Bool)

(assert (=> start!682764 (= res!2877930 (matchZipper!3062 lt!2528846 s!7408))))

(declare-fun appendTo!643 ((Set Context!13036) Context!13036) (Set Context!13036))

(assert (=> start!682764 (= lt!2528846 (appendTo!643 z1!570 ct2!306))))

(assert (=> start!682764 e!4237952))

(declare-fun condSetEmpty!49551 () Bool)

(assert (=> start!682764 (= condSetEmpty!49551 (= z1!570 (as set.empty (Set Context!13036))))))

(assert (=> start!682764 setRes!49551))

(assert (=> start!682764 (and (inv!86665 ct2!306) e!4237948)))

(assert (=> start!682764 e!4237953))

(declare-fun b!7049623 () Bool)

(assert (=> b!7049623 (= e!4237947 (= lt!2528843 ct2!306))))

(declare-fun lt!2528847 () Unit!161732)

(assert (=> b!7049623 (= lt!2528847 (lemmaConcatPreservesForall!843 (exprs!7018 lt!2528852) (exprs!7018 ct2!306) lambda!418525))))

(assert (=> b!7049624 (= e!4237952 (not e!4237950))))

(declare-fun res!2877934 () Bool)

(assert (=> b!7049624 (=> res!2877934 e!4237950)))

(assert (=> b!7049624 (= res!2877934 (not (matchZipper!3062 lt!2528842 s!7408)))))

(assert (=> b!7049624 (= lt!2528842 (set.insert lt!2528850 (as set.empty (Set Context!13036))))))

(declare-fun lambda!418523 () Int)

(declare-fun getWitness!1565 ((Set Context!13036) Int) Context!13036)

(assert (=> b!7049624 (= lt!2528850 (getWitness!1565 lt!2528846 lambda!418523))))

(declare-datatypes ((List!68096 0))(
  ( (Nil!67972) (Cons!67972 (h!74420 Context!13036) (t!381875 List!68096)) )
))
(declare-fun lt!2528848 () List!68096)

(declare-fun exists!3486 (List!68096 Int) Bool)

(assert (=> b!7049624 (exists!3486 lt!2528848 lambda!418523)))

(declare-fun lt!2528844 () Unit!161732)

(declare-fun lemmaZipperMatchesExistsMatchingContext!461 (List!68096 List!68095) Unit!161732)

(assert (=> b!7049624 (= lt!2528844 (lemmaZipperMatchesExistsMatchingContext!461 lt!2528848 s!7408))))

(declare-fun toList!10865 ((Set Context!13036)) List!68096)

(assert (=> b!7049624 (= lt!2528848 (toList!10865 lt!2528846))))

(declare-fun b!7049625 () Bool)

(declare-fun res!2877927 () Bool)

(assert (=> b!7049625 (=> (not res!2877927) (not e!4237952))))

(assert (=> b!7049625 (= res!2877927 (is-Cons!67971 s!7408))))

(declare-fun b!7049626 () Bool)

(declare-fun res!2877933 () Bool)

(assert (=> b!7049626 (=> res!2877933 e!4237947)))

(assert (=> b!7049626 (= res!2877933 (is-Cons!67970 (exprs!7018 lt!2528852)))))

(assert (= (and start!682764 res!2877930) b!7049625))

(assert (= (and b!7049625 res!2877927) b!7049624))

(assert (= (and b!7049624 (not res!2877934)) b!7049619))

(assert (= (and b!7049619 (not res!2877932)) b!7049620))

(assert (= (and b!7049620 (not res!2877929)) b!7049617))

(assert (= (and b!7049617 (not res!2877928)) b!7049616))

(assert (= (and b!7049616 (not res!2877931)) b!7049626))

(assert (= (and b!7049626 (not res!2877933)) b!7049623))

(assert (= (and start!682764 condSetEmpty!49551) setIsEmpty!49551))

(assert (= (and start!682764 (not condSetEmpty!49551)) setNonEmpty!49551))

(assert (= setNonEmpty!49551 b!7049621))

(assert (= start!682764 b!7049618))

(assert (= (and start!682764 (is-Cons!67971 s!7408)) b!7049622))

(declare-fun m!7765170 () Bool)

(assert (=> b!7049619 m!7765170))

(declare-fun m!7765172 () Bool)

(assert (=> setNonEmpty!49551 m!7765172))

(declare-fun m!7765174 () Bool)

(assert (=> start!682764 m!7765174))

(declare-fun m!7765176 () Bool)

(assert (=> start!682764 m!7765176))

(declare-fun m!7765178 () Bool)

(assert (=> start!682764 m!7765178))

(declare-fun m!7765180 () Bool)

(assert (=> b!7049624 m!7765180))

(declare-fun m!7765182 () Bool)

(assert (=> b!7049624 m!7765182))

(declare-fun m!7765184 () Bool)

(assert (=> b!7049624 m!7765184))

(declare-fun m!7765186 () Bool)

(assert (=> b!7049624 m!7765186))

(declare-fun m!7765188 () Bool)

(assert (=> b!7049624 m!7765188))

(declare-fun m!7765190 () Bool)

(assert (=> b!7049624 m!7765190))

(declare-fun m!7765192 () Bool)

(assert (=> b!7049620 m!7765192))

(declare-fun m!7765194 () Bool)

(assert (=> b!7049620 m!7765194))

(declare-fun m!7765196 () Bool)

(assert (=> b!7049620 m!7765196))

(declare-fun m!7765198 () Bool)

(assert (=> b!7049620 m!7765198))

(declare-fun m!7765200 () Bool)

(assert (=> b!7049617 m!7765200))

(assert (=> b!7049617 m!7765196))

(assert (=> b!7049616 m!7765196))

(declare-fun m!7765202 () Bool)

(assert (=> b!7049616 m!7765202))

(declare-fun m!7765204 () Bool)

(assert (=> b!7049616 m!7765204))

(declare-fun m!7765206 () Bool)

(assert (=> b!7049616 m!7765206))

(declare-fun m!7765208 () Bool)

(assert (=> b!7049616 m!7765208))

(assert (=> b!7049623 m!7765196))

(push 1)

(assert (not b!7049622))

(assert (not b!7049617))

(assert (not b!7049621))

(assert (not b!7049624))

(assert (not start!682764))

(assert tp_is_empty!44269)

(assert (not b!7049623))

(assert (not setNonEmpty!49551))

(assert (not b!7049618))

(assert (not b!7049620))

(assert (not b!7049616))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7049680 () Bool)

(declare-fun e!4237984 () List!68094)

(assert (=> b!7049680 (= e!4237984 (exprs!7018 ct2!306))))

(declare-fun e!4237983 () Bool)

(declare-fun b!7049683 () Bool)

(declare-fun lt!2528901 () List!68094)

(assert (=> b!7049683 (= e!4237983 (or (not (= (exprs!7018 ct2!306) Nil!67970)) (= lt!2528901 (exprs!7018 lt!2528852))))))

(declare-fun d!2202257 () Bool)

(assert (=> d!2202257 e!4237983))

(declare-fun res!2877966 () Bool)

(assert (=> d!2202257 (=> (not res!2877966) (not e!4237983))))

(declare-fun content!13634 (List!68094) (Set Regex!17522))

(assert (=> d!2202257 (= res!2877966 (= (content!13634 lt!2528901) (set.union (content!13634 (exprs!7018 lt!2528852)) (content!13634 (exprs!7018 ct2!306)))))))

(assert (=> d!2202257 (= lt!2528901 e!4237984)))

(declare-fun c!1313042 () Bool)

(assert (=> d!2202257 (= c!1313042 (is-Nil!67970 (exprs!7018 lt!2528852)))))

(assert (=> d!2202257 (= (++!15615 (exprs!7018 lt!2528852) (exprs!7018 ct2!306)) lt!2528901)))

(declare-fun b!7049682 () Bool)

(declare-fun res!2877965 () Bool)

(assert (=> b!7049682 (=> (not res!2877965) (not e!4237983))))

(declare-fun size!41126 (List!68094) Int)

(assert (=> b!7049682 (= res!2877965 (= (size!41126 lt!2528901) (+ (size!41126 (exprs!7018 lt!2528852)) (size!41126 (exprs!7018 ct2!306)))))))

(declare-fun b!7049681 () Bool)

(assert (=> b!7049681 (= e!4237984 (Cons!67970 (h!74418 (exprs!7018 lt!2528852)) (++!15615 (t!381873 (exprs!7018 lt!2528852)) (exprs!7018 ct2!306))))))

(assert (= (and d!2202257 c!1313042) b!7049680))

(assert (= (and d!2202257 (not c!1313042)) b!7049681))

(assert (= (and d!2202257 res!2877966) b!7049682))

(assert (= (and b!7049682 res!2877965) b!7049683))

(declare-fun m!7765250 () Bool)

(assert (=> d!2202257 m!7765250))

(declare-fun m!7765252 () Bool)

(assert (=> d!2202257 m!7765252))

(declare-fun m!7765254 () Bool)

(assert (=> d!2202257 m!7765254))

(declare-fun m!7765256 () Bool)

(assert (=> b!7049682 m!7765256))

(declare-fun m!7765258 () Bool)

(assert (=> b!7049682 m!7765258))

(declare-fun m!7765260 () Bool)

(assert (=> b!7049682 m!7765260))

(declare-fun m!7765262 () Bool)

(assert (=> b!7049681 m!7765262))

(assert (=> b!7049620 d!2202257))

(declare-fun d!2202259 () Bool)

(declare-fun forall!16455 (List!68094 Int) Bool)

(assert (=> d!2202259 (forall!16455 (++!15615 (exprs!7018 lt!2528852) (exprs!7018 ct2!306)) lambda!418525)))

(declare-fun lt!2528904 () Unit!161732)

(declare-fun choose!53633 (List!68094 List!68094 Int) Unit!161732)

(assert (=> d!2202259 (= lt!2528904 (choose!53633 (exprs!7018 lt!2528852) (exprs!7018 ct2!306) lambda!418525))))

(assert (=> d!2202259 (forall!16455 (exprs!7018 lt!2528852) lambda!418525)))

(assert (=> d!2202259 (= (lemmaConcatPreservesForall!843 (exprs!7018 lt!2528852) (exprs!7018 ct2!306) lambda!418525) lt!2528904)))

(declare-fun bs!1875606 () Bool)

(assert (= bs!1875606 d!2202259))

(assert (=> bs!1875606 m!7765194))

(assert (=> bs!1875606 m!7765194))

(declare-fun m!7765264 () Bool)

(assert (=> bs!1875606 m!7765264))

(declare-fun m!7765266 () Bool)

(assert (=> bs!1875606 m!7765266))

(declare-fun m!7765268 () Bool)

(assert (=> bs!1875606 m!7765268))

(assert (=> b!7049620 d!2202259))

(declare-fun d!2202261 () Bool)

(declare-fun e!4237987 () Bool)

(assert (=> d!2202261 e!4237987))

(declare-fun res!2877969 () Bool)

(assert (=> d!2202261 (=> (not res!2877969) (not e!4237987))))

(declare-fun lt!2528907 () Context!13036)

(declare-fun dynLambda!27540 (Int Context!13036) Context!13036)

(assert (=> d!2202261 (= res!2877969 (= lt!2528850 (dynLambda!27540 lambda!418524 lt!2528907)))))

(declare-fun choose!53634 ((Set Context!13036) Int Context!13036) Context!13036)

(assert (=> d!2202261 (= lt!2528907 (choose!53634 z1!570 lambda!418524 lt!2528850))))

(declare-fun map!15835 ((Set Context!13036) Int) (Set Context!13036))

(assert (=> d!2202261 (set.member lt!2528850 (map!15835 z1!570 lambda!418524))))

(assert (=> d!2202261 (= (mapPost2!363 z1!570 lambda!418524 lt!2528850) lt!2528907)))

(declare-fun b!7049687 () Bool)

(assert (=> b!7049687 (= e!4237987 (set.member lt!2528907 z1!570))))

(assert (= (and d!2202261 res!2877969) b!7049687))

(declare-fun b_lambda!268023 () Bool)

(assert (=> (not b_lambda!268023) (not d!2202261)))

(declare-fun m!7765270 () Bool)

(assert (=> d!2202261 m!7765270))

(declare-fun m!7765272 () Bool)

(assert (=> d!2202261 m!7765272))

(declare-fun m!7765274 () Bool)

(assert (=> d!2202261 m!7765274))

(declare-fun m!7765276 () Bool)

(assert (=> d!2202261 m!7765276))

(declare-fun m!7765278 () Bool)

(assert (=> b!7049687 m!7765278))

(assert (=> b!7049620 d!2202261))

(assert (=> b!7049623 d!2202259))

(declare-fun d!2202263 () Bool)

(declare-fun c!1313045 () Bool)

(declare-fun isEmpty!39677 (List!68095) Bool)

(assert (=> d!2202263 (= c!1313045 (isEmpty!39677 s!7408))))

(declare-fun e!4237990 () Bool)

(assert (=> d!2202263 (= (matchZipper!3062 lt!2528846 s!7408) e!4237990)))

(declare-fun b!7049692 () Bool)

(declare-fun nullableZipper!2619 ((Set Context!13036)) Bool)

(assert (=> b!7049692 (= e!4237990 (nullableZipper!2619 lt!2528846))))

(declare-fun b!7049693 () Bool)

(declare-fun head!14318 (List!68095) C!35314)

(declare-fun tail!13651 (List!68095) List!68095)

(assert (=> b!7049693 (= e!4237990 (matchZipper!3062 (derivationStepZipper!2978 lt!2528846 (head!14318 s!7408)) (tail!13651 s!7408)))))

(assert (= (and d!2202263 c!1313045) b!7049692))

(assert (= (and d!2202263 (not c!1313045)) b!7049693))

(declare-fun m!7765280 () Bool)

(assert (=> d!2202263 m!7765280))

(declare-fun m!7765282 () Bool)

(assert (=> b!7049692 m!7765282))

(declare-fun m!7765284 () Bool)

(assert (=> b!7049693 m!7765284))

(assert (=> b!7049693 m!7765284))

(declare-fun m!7765286 () Bool)

(assert (=> b!7049693 m!7765286))

(declare-fun m!7765288 () Bool)

(assert (=> b!7049693 m!7765288))

(assert (=> b!7049693 m!7765286))

(assert (=> b!7049693 m!7765288))

(declare-fun m!7765290 () Bool)

(assert (=> b!7049693 m!7765290))

(assert (=> start!682764 d!2202263))

(declare-fun bs!1875607 () Bool)

(declare-fun d!2202265 () Bool)

(assert (= bs!1875607 (and d!2202265 b!7049620)))

(declare-fun lambda!418553 () Int)

(assert (=> bs!1875607 (= lambda!418553 lambda!418524)))

(assert (=> d!2202265 true))

(assert (=> d!2202265 (= (appendTo!643 z1!570 ct2!306) (map!15835 z1!570 lambda!418553))))

(declare-fun bs!1875608 () Bool)

(assert (= bs!1875608 d!2202265))

(declare-fun m!7765292 () Bool)

(assert (=> bs!1875608 m!7765292))

(assert (=> start!682764 d!2202265))

(declare-fun bs!1875609 () Bool)

(declare-fun d!2202267 () Bool)

(assert (= bs!1875609 (and d!2202267 b!7049620)))

(declare-fun lambda!418556 () Int)

(assert (=> bs!1875609 (= lambda!418556 lambda!418525)))

(assert (=> d!2202267 (= (inv!86665 ct2!306) (forall!16455 (exprs!7018 ct2!306) lambda!418556))))

(declare-fun bs!1875610 () Bool)

(assert (= bs!1875610 d!2202267))

(declare-fun m!7765294 () Bool)

(assert (=> bs!1875610 m!7765294))

(assert (=> start!682764 d!2202267))

(declare-fun bs!1875611 () Bool)

(declare-fun d!2202271 () Bool)

(assert (= bs!1875611 (and d!2202271 b!7049620)))

(declare-fun lambda!418557 () Int)

(assert (=> bs!1875611 (= lambda!418557 lambda!418525)))

(declare-fun bs!1875612 () Bool)

(assert (= bs!1875612 (and d!2202271 d!2202267)))

(assert (=> bs!1875612 (= lambda!418557 lambda!418556)))

(assert (=> d!2202271 (= (inv!86665 setElem!49551) (forall!16455 (exprs!7018 setElem!49551) lambda!418557))))

(declare-fun bs!1875613 () Bool)

(assert (= bs!1875613 d!2202271))

(declare-fun m!7765296 () Bool)

(assert (=> bs!1875613 m!7765296))

(assert (=> setNonEmpty!49551 d!2202271))

(assert (=> b!7049617 d!2202259))

(declare-fun d!2202273 () Bool)

(declare-fun c!1313047 () Bool)

(assert (=> d!2202273 (= c!1313047 (isEmpty!39677 s!7408))))

(declare-fun e!4237991 () Bool)

(assert (=> d!2202273 (= (matchZipper!3062 lt!2528842 s!7408) e!4237991)))

(declare-fun b!7049694 () Bool)

(assert (=> b!7049694 (= e!4237991 (nullableZipper!2619 lt!2528842))))

(declare-fun b!7049695 () Bool)

(assert (=> b!7049695 (= e!4237991 (matchZipper!3062 (derivationStepZipper!2978 lt!2528842 (head!14318 s!7408)) (tail!13651 s!7408)))))

(assert (= (and d!2202273 c!1313047) b!7049694))

(assert (= (and d!2202273 (not c!1313047)) b!7049695))

(assert (=> d!2202273 m!7765280))

(declare-fun m!7765298 () Bool)

(assert (=> b!7049694 m!7765298))

(assert (=> b!7049695 m!7765284))

(assert (=> b!7049695 m!7765284))

(declare-fun m!7765300 () Bool)

(assert (=> b!7049695 m!7765300))

(assert (=> b!7049695 m!7765288))

(assert (=> b!7049695 m!7765300))

(assert (=> b!7049695 m!7765288))

(declare-fun m!7765302 () Bool)

(assert (=> b!7049695 m!7765302))

(assert (=> b!7049624 d!2202273))

(declare-fun d!2202275 () Bool)

(declare-fun e!4237994 () Bool)

(assert (=> d!2202275 e!4237994))

(declare-fun res!2877972 () Bool)

(assert (=> d!2202275 (=> (not res!2877972) (not e!4237994))))

(declare-fun lt!2528914 () Context!13036)

(declare-fun dynLambda!27541 (Int Context!13036) Bool)

(assert (=> d!2202275 (= res!2877972 (dynLambda!27541 lambda!418523 lt!2528914))))

(declare-fun getWitness!1567 (List!68096 Int) Context!13036)

(assert (=> d!2202275 (= lt!2528914 (getWitness!1567 (toList!10865 lt!2528846) lambda!418523))))

(declare-fun exists!3488 ((Set Context!13036) Int) Bool)

(assert (=> d!2202275 (exists!3488 lt!2528846 lambda!418523)))

(assert (=> d!2202275 (= (getWitness!1565 lt!2528846 lambda!418523) lt!2528914)))

(declare-fun b!7049698 () Bool)

(assert (=> b!7049698 (= e!4237994 (set.member lt!2528914 lt!2528846))))

(assert (= (and d!2202275 res!2877972) b!7049698))

(declare-fun b_lambda!268025 () Bool)

(assert (=> (not b_lambda!268025) (not d!2202275)))

(declare-fun m!7765304 () Bool)

(assert (=> d!2202275 m!7765304))

(assert (=> d!2202275 m!7765186))

(assert (=> d!2202275 m!7765186))

(declare-fun m!7765306 () Bool)

(assert (=> d!2202275 m!7765306))

(declare-fun m!7765308 () Bool)

(assert (=> d!2202275 m!7765308))

(declare-fun m!7765310 () Bool)

(assert (=> b!7049698 m!7765310))

(assert (=> b!7049624 d!2202275))

(declare-fun d!2202277 () Bool)

(declare-fun e!4237997 () Bool)

(assert (=> d!2202277 e!4237997))

(declare-fun res!2877975 () Bool)

(assert (=> d!2202277 (=> (not res!2877975) (not e!4237997))))

(declare-fun lt!2528918 () List!68096)

(declare-fun noDuplicate!2664 (List!68096) Bool)

(assert (=> d!2202277 (= res!2877975 (noDuplicate!2664 lt!2528918))))

(declare-fun choose!53635 ((Set Context!13036)) List!68096)

(assert (=> d!2202277 (= lt!2528918 (choose!53635 lt!2528846))))

(assert (=> d!2202277 (= (toList!10865 lt!2528846) lt!2528918)))

(declare-fun b!7049701 () Bool)

(declare-fun content!13635 (List!68096) (Set Context!13036))

(assert (=> b!7049701 (= e!4237997 (= (content!13635 lt!2528918) lt!2528846))))

(assert (= (and d!2202277 res!2877975) b!7049701))

(declare-fun m!7765316 () Bool)

(assert (=> d!2202277 m!7765316))

(declare-fun m!7765320 () Bool)

(assert (=> d!2202277 m!7765320))

(declare-fun m!7765322 () Bool)

(assert (=> b!7049701 m!7765322))

(assert (=> b!7049624 d!2202277))

(declare-fun bs!1875615 () Bool)

(declare-fun d!2202279 () Bool)

(assert (= bs!1875615 (and d!2202279 b!7049624)))

(declare-fun lambda!418560 () Int)

(assert (=> bs!1875615 (not (= lambda!418560 lambda!418523))))

(assert (=> d!2202279 true))

(declare-fun order!28257 () Int)

(declare-fun dynLambda!27542 (Int Int) Int)

(assert (=> d!2202279 (< (dynLambda!27542 order!28257 lambda!418523) (dynLambda!27542 order!28257 lambda!418560))))

(declare-fun forall!16456 (List!68096 Int) Bool)

(assert (=> d!2202279 (= (exists!3486 lt!2528848 lambda!418523) (not (forall!16456 lt!2528848 lambda!418560)))))

(declare-fun bs!1875616 () Bool)

(assert (= bs!1875616 d!2202279))

(declare-fun m!7765324 () Bool)

(assert (=> bs!1875616 m!7765324))

(assert (=> b!7049624 d!2202279))

(declare-fun bs!1875617 () Bool)

(declare-fun d!2202283 () Bool)

(assert (= bs!1875617 (and d!2202283 b!7049624)))

(declare-fun lambda!418563 () Int)

(assert (=> bs!1875617 (= lambda!418563 lambda!418523)))

(declare-fun bs!1875618 () Bool)

(assert (= bs!1875618 (and d!2202283 d!2202279)))

(assert (=> bs!1875618 (not (= lambda!418563 lambda!418560))))

(assert (=> d!2202283 true))

(assert (=> d!2202283 (exists!3486 lt!2528848 lambda!418563)))

(declare-fun lt!2528921 () Unit!161732)

(declare-fun choose!53636 (List!68096 List!68095) Unit!161732)

(assert (=> d!2202283 (= lt!2528921 (choose!53636 lt!2528848 s!7408))))

(assert (=> d!2202283 (matchZipper!3062 (content!13635 lt!2528848) s!7408)))

(assert (=> d!2202283 (= (lemmaZipperMatchesExistsMatchingContext!461 lt!2528848 s!7408) lt!2528921)))

(declare-fun bs!1875619 () Bool)

(assert (= bs!1875619 d!2202283))

(declare-fun m!7765326 () Bool)

(assert (=> bs!1875619 m!7765326))

(declare-fun m!7765328 () Bool)

(assert (=> bs!1875619 m!7765328))

(declare-fun m!7765330 () Bool)

(assert (=> bs!1875619 m!7765330))

(assert (=> bs!1875619 m!7765330))

(declare-fun m!7765332 () Bool)

(assert (=> bs!1875619 m!7765332))

(assert (=> b!7049624 d!2202283))

(assert (=> b!7049616 d!2202259))

(declare-fun bs!1875620 () Bool)

(declare-fun d!2202285 () Bool)

(assert (= bs!1875620 (and d!2202285 b!7049616)))

(declare-fun lambda!418566 () Int)

(assert (=> bs!1875620 (= lambda!418566 lambda!418526)))

(assert (=> d!2202285 true))

(assert (=> d!2202285 (= (derivationStepZipper!2978 lt!2528849 (h!74419 s!7408)) (flatMap!2469 lt!2528849 lambda!418566))))

(declare-fun bs!1875621 () Bool)

(assert (= bs!1875621 d!2202285))

(declare-fun m!7765346 () Bool)

(assert (=> bs!1875621 m!7765346))

(assert (=> b!7049616 d!2202285))

(declare-fun d!2202289 () Bool)

(declare-fun choose!53637 ((Set Context!13036) Int) (Set Context!13036))

(assert (=> d!2202289 (= (flatMap!2469 lt!2528849 lambda!418526) (choose!53637 lt!2528849 lambda!418526))))

(declare-fun bs!1875622 () Bool)

(assert (= bs!1875622 d!2202289))

(declare-fun m!7765348 () Bool)

(assert (=> bs!1875622 m!7765348))

(assert (=> b!7049616 d!2202289))

(declare-fun bm!640607 () Bool)

(declare-fun call!640612 () (Set Context!13036))

(declare-fun derivationStepZipperDown!2186 (Regex!17522 Context!13036 C!35314) (Set Context!13036))

(assert (=> bm!640607 (= call!640612 (derivationStepZipperDown!2186 (h!74418 (exprs!7018 lt!2528843)) (Context!13037 (t!381873 (exprs!7018 lt!2528843))) (h!74419 s!7408)))))

(declare-fun b!7049723 () Bool)

(declare-fun e!4238009 () (Set Context!13036))

(declare-fun e!4238008 () (Set Context!13036))

(assert (=> b!7049723 (= e!4238009 e!4238008)))

(declare-fun c!1313061 () Bool)

(assert (=> b!7049723 (= c!1313061 (is-Cons!67970 (exprs!7018 lt!2528843)))))

(declare-fun b!7049724 () Bool)

(declare-fun e!4238007 () Bool)

(declare-fun nullable!7233 (Regex!17522) Bool)

(assert (=> b!7049724 (= e!4238007 (nullable!7233 (h!74418 (exprs!7018 lt!2528843))))))

(declare-fun b!7049725 () Bool)

(assert (=> b!7049725 (= e!4238008 (as set.empty (Set Context!13036)))))

(declare-fun b!7049726 () Bool)

(assert (=> b!7049726 (= e!4238009 (set.union call!640612 (derivationStepZipperUp!2132 (Context!13037 (t!381873 (exprs!7018 lt!2528843))) (h!74419 s!7408))))))

(declare-fun d!2202291 () Bool)

(declare-fun c!1313060 () Bool)

(assert (=> d!2202291 (= c!1313060 e!4238007)))

(declare-fun res!2877978 () Bool)

(assert (=> d!2202291 (=> (not res!2877978) (not e!4238007))))

(assert (=> d!2202291 (= res!2877978 (is-Cons!67970 (exprs!7018 lt!2528843)))))

(assert (=> d!2202291 (= (derivationStepZipperUp!2132 lt!2528843 (h!74419 s!7408)) e!4238009)))

(declare-fun b!7049722 () Bool)

(assert (=> b!7049722 (= e!4238008 call!640612)))

(assert (= (and d!2202291 res!2877978) b!7049724))

(assert (= (and d!2202291 c!1313060) b!7049726))

(assert (= (and d!2202291 (not c!1313060)) b!7049723))

(assert (= (and b!7049723 c!1313061) b!7049722))

(assert (= (and b!7049723 (not c!1313061)) b!7049725))

(assert (= (or b!7049726 b!7049722) bm!640607))

(declare-fun m!7765350 () Bool)

(assert (=> bm!640607 m!7765350))

(declare-fun m!7765352 () Bool)

(assert (=> b!7049724 m!7765352))

(declare-fun m!7765354 () Bool)

(assert (=> b!7049726 m!7765354))

(assert (=> b!7049616 d!2202291))

(declare-fun d!2202293 () Bool)

(declare-fun dynLambda!27543 (Int Context!13036) (Set Context!13036))

(assert (=> d!2202293 (= (flatMap!2469 lt!2528849 lambda!418526) (dynLambda!27543 lambda!418526 lt!2528843))))

(declare-fun lt!2528926 () Unit!161732)

(declare-fun choose!53638 ((Set Context!13036) Context!13036 Int) Unit!161732)

(assert (=> d!2202293 (= lt!2528926 (choose!53638 lt!2528849 lt!2528843 lambda!418526))))

(assert (=> d!2202293 (= lt!2528849 (set.insert lt!2528843 (as set.empty (Set Context!13036))))))

(assert (=> d!2202293 (= (lemmaFlatMapOnSingletonSet!1983 lt!2528849 lt!2528843 lambda!418526) lt!2528926)))

(declare-fun b_lambda!268027 () Bool)

(assert (=> (not b_lambda!268027) (not d!2202293)))

(declare-fun bs!1875623 () Bool)

(assert (= bs!1875623 d!2202293))

(assert (=> bs!1875623 m!7765206))

(declare-fun m!7765356 () Bool)

(assert (=> bs!1875623 m!7765356))

(declare-fun m!7765358 () Bool)

(assert (=> bs!1875623 m!7765358))

(assert (=> bs!1875623 m!7765200))

(assert (=> b!7049616 d!2202293))

(declare-fun b!7049731 () Bool)

(declare-fun e!4238012 () Bool)

(declare-fun tp!1938562 () Bool)

(declare-fun tp!1938563 () Bool)

(assert (=> b!7049731 (= e!4238012 (and tp!1938562 tp!1938563))))

(assert (=> b!7049618 (= tp!1938543 e!4238012)))

(assert (= (and b!7049618 (is-Cons!67970 (exprs!7018 ct2!306))) b!7049731))

(declare-fun b!7049736 () Bool)

(declare-fun e!4238015 () Bool)

(declare-fun tp!1938566 () Bool)

(assert (=> b!7049736 (= e!4238015 (and tp_is_empty!44269 tp!1938566))))

(assert (=> b!7049622 (= tp!1938542 e!4238015)))

(assert (= (and b!7049622 (is-Cons!67971 (t!381874 s!7408))) b!7049736))

(declare-fun condSetEmpty!49557 () Bool)

(assert (=> setNonEmpty!49551 (= condSetEmpty!49557 (= setRest!49551 (as set.empty (Set Context!13036))))))

(declare-fun setRes!49557 () Bool)

(assert (=> setNonEmpty!49551 (= tp!1938545 setRes!49557)))

(declare-fun setIsEmpty!49557 () Bool)

(assert (=> setIsEmpty!49557 setRes!49557))

(declare-fun tp!1938572 () Bool)

(declare-fun e!4238018 () Bool)

(declare-fun setElem!49557 () Context!13036)

(declare-fun setNonEmpty!49557 () Bool)

(assert (=> setNonEmpty!49557 (= setRes!49557 (and tp!1938572 (inv!86665 setElem!49557) e!4238018))))

(declare-fun setRest!49557 () (Set Context!13036))

(assert (=> setNonEmpty!49557 (= setRest!49551 (set.union (set.insert setElem!49557 (as set.empty (Set Context!13036))) setRest!49557))))

(declare-fun b!7049741 () Bool)

(declare-fun tp!1938571 () Bool)

(assert (=> b!7049741 (= e!4238018 tp!1938571)))

(assert (= (and setNonEmpty!49551 condSetEmpty!49557) setIsEmpty!49557))

(assert (= (and setNonEmpty!49551 (not condSetEmpty!49557)) setNonEmpty!49557))

(assert (= setNonEmpty!49557 b!7049741))

(declare-fun m!7765360 () Bool)

(assert (=> setNonEmpty!49557 m!7765360))

(declare-fun b!7049742 () Bool)

(declare-fun e!4238019 () Bool)

(declare-fun tp!1938573 () Bool)

(declare-fun tp!1938574 () Bool)

(assert (=> b!7049742 (= e!4238019 (and tp!1938573 tp!1938574))))

(assert (=> b!7049621 (= tp!1938544 e!4238019)))

(assert (= (and b!7049621 (is-Cons!67970 (exprs!7018 setElem!49551))) b!7049742))

(declare-fun b_lambda!268029 () Bool)

(assert (= b_lambda!268025 (or b!7049624 b_lambda!268029)))

(declare-fun bs!1875625 () Bool)

(declare-fun d!2202295 () Bool)

(assert (= bs!1875625 (and d!2202295 b!7049624)))

(assert (=> bs!1875625 (= (dynLambda!27541 lambda!418523 lt!2528914) (matchZipper!3062 (set.insert lt!2528914 (as set.empty (Set Context!13036))) s!7408))))

(declare-fun m!7765362 () Bool)

(assert (=> bs!1875625 m!7765362))

(assert (=> bs!1875625 m!7765362))

(declare-fun m!7765364 () Bool)

(assert (=> bs!1875625 m!7765364))

(assert (=> d!2202275 d!2202295))

(declare-fun b_lambda!268031 () Bool)

(assert (= b_lambda!268023 (or b!7049620 b_lambda!268031)))

(declare-fun bs!1875626 () Bool)

(declare-fun d!2202297 () Bool)

(assert (= bs!1875626 (and d!2202297 b!7049620)))

(declare-fun lt!2528927 () Unit!161732)

(assert (=> bs!1875626 (= lt!2528927 (lemmaConcatPreservesForall!843 (exprs!7018 lt!2528907) (exprs!7018 ct2!306) lambda!418525))))

(assert (=> bs!1875626 (= (dynLambda!27540 lambda!418524 lt!2528907) (Context!13037 (++!15615 (exprs!7018 lt!2528907) (exprs!7018 ct2!306))))))

(declare-fun m!7765368 () Bool)

(assert (=> bs!1875626 m!7765368))

(declare-fun m!7765370 () Bool)

(assert (=> bs!1875626 m!7765370))

(assert (=> d!2202261 d!2202297))

(declare-fun b_lambda!268033 () Bool)

(assert (= b_lambda!268027 (or b!7049616 b_lambda!268033)))

(declare-fun bs!1875628 () Bool)

(declare-fun d!2202301 () Bool)

(assert (= bs!1875628 (and d!2202301 b!7049616)))

(assert (=> bs!1875628 (= (dynLambda!27543 lambda!418526 lt!2528843) (derivationStepZipperUp!2132 lt!2528843 (h!74419 s!7408)))))

(assert (=> bs!1875628 m!7765208))

(assert (=> d!2202293 d!2202301))

(push 1)

(assert (not b!7049695))

(assert (not bs!1875628))

(assert (not d!2202271))

(assert (not d!2202267))

(assert (not b!7049731))

(assert (not d!2202259))

(assert (not d!2202265))

(assert tp_is_empty!44269)

(assert (not d!2202279))

(assert (not d!2202263))

(assert (not b!7049694))

(assert (not d!2202257))

(assert (not bm!640607))

(assert (not d!2202289))

(assert (not b_lambda!268031))

(assert (not d!2202275))

(assert (not d!2202261))

(assert (not setNonEmpty!49557))

(assert (not b!7049742))

(assert (not b!7049692))

(assert (not b!7049741))

(assert (not b_lambda!268033))

(assert (not bs!1875625))

(assert (not b_lambda!268029))

(assert (not b!7049726))

(assert (not bs!1875626))

(assert (not b!7049682))

(assert (not b!7049681))

(assert (not d!2202273))

(assert (not d!2202277))

(assert (not d!2202293))

(assert (not d!2202283))

(assert (not b!7049724))

(assert (not d!2202285))

(assert (not b!7049701))

(assert (not b!7049736))

(assert (not b!7049693))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

