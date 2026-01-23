; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!682832 () Bool)

(assert start!682832)

(declare-fun res!2878116 () Bool)

(declare-fun e!4238173 () Bool)

(assert (=> start!682832 (=> (not res!2878116) (not e!4238173))))

(declare-datatypes ((C!35326 0))(
  ( (C!35327 (val!27365 Int)) )
))
(declare-datatypes ((Regex!17528 0))(
  ( (ElementMatch!17528 (c!1313112 C!35326)) (Concat!26373 (regOne!35568 Regex!17528) (regTwo!35568 Regex!17528)) (EmptyExpr!17528) (Star!17528 (reg!17857 Regex!17528)) (EmptyLang!17528) (Union!17528 (regOne!35569 Regex!17528) (regTwo!35569 Regex!17528)) )
))
(declare-datatypes ((List!68112 0))(
  ( (Nil!67988) (Cons!67988 (h!74436 Regex!17528) (t!381891 List!68112)) )
))
(declare-datatypes ((Context!13048 0))(
  ( (Context!13049 (exprs!7024 List!68112)) )
))
(declare-fun lt!2529143 () (Set Context!13048))

(declare-datatypes ((List!68113 0))(
  ( (Nil!67989) (Cons!67989 (h!74437 C!35326) (t!381892 List!68113)) )
))
(declare-fun s!7408 () List!68113)

(declare-fun matchZipper!3068 ((Set Context!13048) List!68113) Bool)

(assert (=> start!682832 (= res!2878116 (matchZipper!3068 lt!2529143 s!7408))))

(declare-fun z1!570 () (Set Context!13048))

(declare-fun ct2!306 () Context!13048)

(declare-fun appendTo!649 ((Set Context!13048) Context!13048) (Set Context!13048))

(assert (=> start!682832 (= lt!2529143 (appendTo!649 z1!570 ct2!306))))

(assert (=> start!682832 e!4238173))

(declare-fun condSetEmpty!49575 () Bool)

(assert (=> start!682832 (= condSetEmpty!49575 (= z1!570 (as set.empty (Set Context!13048))))))

(declare-fun setRes!49575 () Bool)

(assert (=> start!682832 setRes!49575))

(declare-fun e!4238171 () Bool)

(declare-fun inv!86680 (Context!13048) Bool)

(assert (=> start!682832 (and (inv!86680 ct2!306) e!4238171)))

(declare-fun e!4238174 () Bool)

(assert (=> start!682832 e!4238174))

(declare-fun b!7049986 () Bool)

(declare-fun res!2878115 () Bool)

(assert (=> b!7049986 (=> (not res!2878115) (not e!4238173))))

(assert (=> b!7049986 (= res!2878115 (not (is-Cons!67989 s!7408)))))

(declare-fun setIsEmpty!49575 () Bool)

(assert (=> setIsEmpty!49575 setRes!49575))

(declare-fun b!7049987 () Bool)

(declare-fun e!4238172 () Bool)

(declare-fun tp!1938650 () Bool)

(assert (=> b!7049987 (= e!4238172 tp!1938650)))

(declare-fun setNonEmpty!49575 () Bool)

(declare-fun setElem!49575 () Context!13048)

(declare-fun tp!1938651 () Bool)

(assert (=> setNonEmpty!49575 (= setRes!49575 (and tp!1938651 (inv!86680 setElem!49575) e!4238172))))

(declare-fun setRest!49575 () (Set Context!13048))

(assert (=> setNonEmpty!49575 (= z1!570 (set.union (set.insert setElem!49575 (as set.empty (Set Context!13048))) setRest!49575))))

(declare-fun b!7049988 () Bool)

(declare-fun tp!1938648 () Bool)

(assert (=> b!7049988 (= e!4238171 tp!1938648)))

(declare-fun b!7049989 () Bool)

(declare-fun nullableZipper!2621 ((Set Context!13048)) Bool)

(assert (=> b!7049989 (= e!4238173 (not (nullableZipper!2621 lt!2529143)))))

(declare-fun b!7049990 () Bool)

(declare-fun tp_is_empty!44281 () Bool)

(declare-fun tp!1938649 () Bool)

(assert (=> b!7049990 (= e!4238174 (and tp_is_empty!44281 tp!1938649))))

(assert (= (and start!682832 res!2878116) b!7049986))

(assert (= (and b!7049986 res!2878115) b!7049989))

(assert (= (and start!682832 condSetEmpty!49575) setIsEmpty!49575))

(assert (= (and start!682832 (not condSetEmpty!49575)) setNonEmpty!49575))

(assert (= setNonEmpty!49575 b!7049987))

(assert (= start!682832 b!7049988))

(assert (= (and start!682832 (is-Cons!67989 s!7408)) b!7049990))

(declare-fun m!7765642 () Bool)

(assert (=> start!682832 m!7765642))

(declare-fun m!7765644 () Bool)

(assert (=> start!682832 m!7765644))

(declare-fun m!7765646 () Bool)

(assert (=> start!682832 m!7765646))

(declare-fun m!7765648 () Bool)

(assert (=> setNonEmpty!49575 m!7765648))

(declare-fun m!7765650 () Bool)

(assert (=> b!7049989 m!7765650))

(push 1)

(assert (not b!7049988))

(assert (not b!7049990))

(assert (not start!682832))

(assert (not b!7049989))

(assert (not b!7049987))

(assert tp_is_empty!44281)

(assert (not setNonEmpty!49575))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2202336 () Bool)

(declare-fun lambda!418675 () Int)

(declare-fun forall!16459 (List!68112 Int) Bool)

(assert (=> d!2202336 (= (inv!86680 setElem!49575) (forall!16459 (exprs!7024 setElem!49575) lambda!418675))))

(declare-fun bs!1875652 () Bool)

(assert (= bs!1875652 d!2202336))

(declare-fun m!7765672 () Bool)

(assert (=> bs!1875652 m!7765672))

(assert (=> setNonEmpty!49575 d!2202336))

(declare-fun d!2202342 () Bool)

(declare-fun lambda!418678 () Int)

(declare-fun exists!3493 ((Set Context!13048) Int) Bool)

(assert (=> d!2202342 (= (nullableZipper!2621 lt!2529143) (exists!3493 lt!2529143 lambda!418678))))

(declare-fun bs!1875653 () Bool)

(assert (= bs!1875653 d!2202342))

(declare-fun m!7765674 () Bool)

(assert (=> bs!1875653 m!7765674))

(assert (=> b!7049989 d!2202342))

(declare-fun d!2202344 () Bool)

(declare-fun c!1313122 () Bool)

(declare-fun isEmpty!39679 (List!68113) Bool)

(assert (=> d!2202344 (= c!1313122 (isEmpty!39679 s!7408))))

(declare-fun e!4238192 () Bool)

(assert (=> d!2202344 (= (matchZipper!3068 lt!2529143 s!7408) e!4238192)))

(declare-fun b!7050016 () Bool)

(assert (=> b!7050016 (= e!4238192 (nullableZipper!2621 lt!2529143))))

(declare-fun b!7050017 () Bool)

(declare-fun derivationStepZipper!2984 ((Set Context!13048) C!35326) (Set Context!13048))

(declare-fun head!14320 (List!68113) C!35326)

(declare-fun tail!13653 (List!68113) List!68113)

(assert (=> b!7050017 (= e!4238192 (matchZipper!3068 (derivationStepZipper!2984 lt!2529143 (head!14320 s!7408)) (tail!13653 s!7408)))))

(assert (= (and d!2202344 c!1313122) b!7050016))

(assert (= (and d!2202344 (not c!1313122)) b!7050017))

(declare-fun m!7765676 () Bool)

(assert (=> d!2202344 m!7765676))

(assert (=> b!7050016 m!7765650))

(declare-fun m!7765678 () Bool)

(assert (=> b!7050017 m!7765678))

(assert (=> b!7050017 m!7765678))

(declare-fun m!7765680 () Bool)

(assert (=> b!7050017 m!7765680))

(declare-fun m!7765682 () Bool)

(assert (=> b!7050017 m!7765682))

(assert (=> b!7050017 m!7765680))

(assert (=> b!7050017 m!7765682))

(declare-fun m!7765684 () Bool)

(assert (=> b!7050017 m!7765684))

(assert (=> start!682832 d!2202344))

(declare-fun d!2202346 () Bool)

(assert (=> d!2202346 true))

(declare-fun lambda!418683 () Int)

(declare-fun map!15840 ((Set Context!13048) Int) (Set Context!13048))

(assert (=> d!2202346 (= (appendTo!649 z1!570 ct2!306) (map!15840 z1!570 lambda!418683))))

(declare-fun bs!1875654 () Bool)

(assert (= bs!1875654 d!2202346))

(declare-fun m!7765686 () Bool)

(assert (=> bs!1875654 m!7765686))

(assert (=> start!682832 d!2202346))

(declare-fun bs!1875655 () Bool)

(declare-fun d!2202348 () Bool)

(assert (= bs!1875655 (and d!2202348 d!2202336)))

(declare-fun lambda!418684 () Int)

(assert (=> bs!1875655 (= lambda!418684 lambda!418675)))

(assert (=> d!2202348 (= (inv!86680 ct2!306) (forall!16459 (exprs!7024 ct2!306) lambda!418684))))

(declare-fun bs!1875656 () Bool)

(assert (= bs!1875656 d!2202348))

(declare-fun m!7765688 () Bool)

(assert (=> bs!1875656 m!7765688))

(assert (=> start!682832 d!2202348))

(declare-fun condSetEmpty!49581 () Bool)

(assert (=> setNonEmpty!49575 (= condSetEmpty!49581 (= setRest!49575 (as set.empty (Set Context!13048))))))

(declare-fun setRes!49581 () Bool)

(assert (=> setNonEmpty!49575 (= tp!1938651 setRes!49581)))

(declare-fun setIsEmpty!49581 () Bool)

(assert (=> setIsEmpty!49581 setRes!49581))

(declare-fun setElem!49581 () Context!13048)

(declare-fun e!4238195 () Bool)

(declare-fun setNonEmpty!49581 () Bool)

(declare-fun tp!1938669 () Bool)

(assert (=> setNonEmpty!49581 (= setRes!49581 (and tp!1938669 (inv!86680 setElem!49581) e!4238195))))

(declare-fun setRest!49581 () (Set Context!13048))

(assert (=> setNonEmpty!49581 (= setRest!49575 (set.union (set.insert setElem!49581 (as set.empty (Set Context!13048))) setRest!49581))))

(declare-fun b!7050024 () Bool)

(declare-fun tp!1938668 () Bool)

(assert (=> b!7050024 (= e!4238195 tp!1938668)))

(assert (= (and setNonEmpty!49575 condSetEmpty!49581) setIsEmpty!49581))

(assert (= (and setNonEmpty!49575 (not condSetEmpty!49581)) setNonEmpty!49581))

(assert (= setNonEmpty!49581 b!7050024))

(declare-fun m!7765690 () Bool)

(assert (=> setNonEmpty!49581 m!7765690))

(declare-fun b!7050029 () Bool)

(declare-fun e!4238198 () Bool)

(declare-fun tp!1938674 () Bool)

(declare-fun tp!1938675 () Bool)

(assert (=> b!7050029 (= e!4238198 (and tp!1938674 tp!1938675))))

(assert (=> b!7049988 (= tp!1938648 e!4238198)))

(assert (= (and b!7049988 (is-Cons!67988 (exprs!7024 ct2!306))) b!7050029))

(declare-fun b!7050034 () Bool)

(declare-fun e!4238201 () Bool)

(declare-fun tp!1938678 () Bool)

(assert (=> b!7050034 (= e!4238201 (and tp_is_empty!44281 tp!1938678))))

(assert (=> b!7049990 (= tp!1938649 e!4238201)))

(assert (= (and b!7049990 (is-Cons!67989 (t!381892 s!7408))) b!7050034))

(declare-fun b!7050035 () Bool)

(declare-fun e!4238202 () Bool)

(declare-fun tp!1938679 () Bool)

(declare-fun tp!1938680 () Bool)

(assert (=> b!7050035 (= e!4238202 (and tp!1938679 tp!1938680))))

(assert (=> b!7049987 (= tp!1938650 e!4238202)))

(assert (= (and b!7049987 (is-Cons!67988 (exprs!7024 setElem!49575))) b!7050035))

(push 1)

(assert (not setNonEmpty!49581))

(assert (not d!2202342))

(assert (not b!7050034))

(assert (not d!2202336))

(assert tp_is_empty!44281)

(assert (not d!2202348))

(assert (not b!7050016))

(assert (not b!7050017))

(assert (not d!2202346))

(assert (not d!2202344))

(assert (not b!7050035))

(assert (not b!7050024))

(assert (not b!7050029))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2202350 () Bool)

(declare-fun res!2878128 () Bool)

(declare-fun e!4238207 () Bool)

(assert (=> d!2202350 (=> res!2878128 e!4238207)))

(assert (=> d!2202350 (= res!2878128 (is-Nil!67988 (exprs!7024 ct2!306)))))

(assert (=> d!2202350 (= (forall!16459 (exprs!7024 ct2!306) lambda!418684) e!4238207)))

(declare-fun b!7050040 () Bool)

(declare-fun e!4238208 () Bool)

(assert (=> b!7050040 (= e!4238207 e!4238208)))

(declare-fun res!2878129 () Bool)

(assert (=> b!7050040 (=> (not res!2878129) (not e!4238208))))

(declare-fun dynLambda!27546 (Int Regex!17528) Bool)

(assert (=> b!7050040 (= res!2878129 (dynLambda!27546 lambda!418684 (h!74436 (exprs!7024 ct2!306))))))

(declare-fun b!7050041 () Bool)

(assert (=> b!7050041 (= e!4238208 (forall!16459 (t!381891 (exprs!7024 ct2!306)) lambda!418684))))

(assert (= (and d!2202350 (not res!2878128)) b!7050040))

(assert (= (and b!7050040 res!2878129) b!7050041))

(declare-fun b_lambda!268047 () Bool)

(assert (=> (not b_lambda!268047) (not b!7050040)))

(declare-fun m!7765692 () Bool)

(assert (=> b!7050040 m!7765692))

(declare-fun m!7765694 () Bool)

(assert (=> b!7050041 m!7765694))

(assert (=> d!2202348 d!2202350))

(declare-fun d!2202352 () Bool)

(declare-fun choose!53642 ((Set Context!13048) Int) (Set Context!13048))

(assert (=> d!2202352 (= (map!15840 z1!570 lambda!418683) (choose!53642 z1!570 lambda!418683))))

(declare-fun bs!1875657 () Bool)

(assert (= bs!1875657 d!2202352))

(declare-fun m!7765696 () Bool)

(assert (=> bs!1875657 m!7765696))

(assert (=> d!2202346 d!2202352))

(declare-fun d!2202354 () Bool)

(declare-fun res!2878130 () Bool)

(declare-fun e!4238209 () Bool)

(assert (=> d!2202354 (=> res!2878130 e!4238209)))

(assert (=> d!2202354 (= res!2878130 (is-Nil!67988 (exprs!7024 setElem!49575)))))

(assert (=> d!2202354 (= (forall!16459 (exprs!7024 setElem!49575) lambda!418675) e!4238209)))

(declare-fun b!7050042 () Bool)

(declare-fun e!4238210 () Bool)

(assert (=> b!7050042 (= e!4238209 e!4238210)))

(declare-fun res!2878131 () Bool)

(assert (=> b!7050042 (=> (not res!2878131) (not e!4238210))))

(assert (=> b!7050042 (= res!2878131 (dynLambda!27546 lambda!418675 (h!74436 (exprs!7024 setElem!49575))))))

(declare-fun b!7050043 () Bool)

(assert (=> b!7050043 (= e!4238210 (forall!16459 (t!381891 (exprs!7024 setElem!49575)) lambda!418675))))

(assert (= (and d!2202354 (not res!2878130)) b!7050042))

(assert (= (and b!7050042 res!2878131) b!7050043))

(declare-fun b_lambda!268049 () Bool)

(assert (=> (not b_lambda!268049) (not b!7050042)))

(declare-fun m!7765698 () Bool)

(assert (=> b!7050042 m!7765698))

(declare-fun m!7765700 () Bool)

(assert (=> b!7050043 m!7765700))

(assert (=> d!2202336 d!2202354))

(declare-fun d!2202356 () Bool)

(declare-fun lt!2529151 () Bool)

(declare-datatypes ((List!68116 0))(
  ( (Nil!67992) (Cons!67992 (h!74440 Context!13048) (t!381895 List!68116)) )
))
(declare-fun exists!3494 (List!68116 Int) Bool)

(declare-fun toList!10871 ((Set Context!13048)) List!68116)

(assert (=> d!2202356 (= lt!2529151 (exists!3494 (toList!10871 lt!2529143) lambda!418678))))

(declare-fun choose!53643 ((Set Context!13048) Int) Bool)

(assert (=> d!2202356 (= lt!2529151 (choose!53643 lt!2529143 lambda!418678))))

(assert (=> d!2202356 (= (exists!3493 lt!2529143 lambda!418678) lt!2529151)))

(declare-fun bs!1875658 () Bool)

(assert (= bs!1875658 d!2202356))

(declare-fun m!7765702 () Bool)

(assert (=> bs!1875658 m!7765702))

(assert (=> bs!1875658 m!7765702))

(declare-fun m!7765704 () Bool)

(assert (=> bs!1875658 m!7765704))

(declare-fun m!7765706 () Bool)

(assert (=> bs!1875658 m!7765706))

(assert (=> d!2202342 d!2202356))

(assert (=> b!7050016 d!2202342))

(declare-fun bs!1875659 () Bool)

(declare-fun d!2202358 () Bool)

(assert (= bs!1875659 (and d!2202358 d!2202336)))

(declare-fun lambda!418685 () Int)

(assert (=> bs!1875659 (= lambda!418685 lambda!418675)))

(declare-fun bs!1875660 () Bool)

(assert (= bs!1875660 (and d!2202358 d!2202348)))

(assert (=> bs!1875660 (= lambda!418685 lambda!418684)))

(assert (=> d!2202358 (= (inv!86680 setElem!49581) (forall!16459 (exprs!7024 setElem!49581) lambda!418685))))

(declare-fun bs!1875661 () Bool)

(assert (= bs!1875661 d!2202358))

(declare-fun m!7765708 () Bool)

(assert (=> bs!1875661 m!7765708))

(assert (=> setNonEmpty!49581 d!2202358))

(declare-fun d!2202360 () Bool)

(assert (=> d!2202360 (= (isEmpty!39679 s!7408) (is-Nil!67989 s!7408))))

(assert (=> d!2202344 d!2202360))

(declare-fun d!2202362 () Bool)

(declare-fun c!1313124 () Bool)

(assert (=> d!2202362 (= c!1313124 (isEmpty!39679 (tail!13653 s!7408)))))

(declare-fun e!4238211 () Bool)

(assert (=> d!2202362 (= (matchZipper!3068 (derivationStepZipper!2984 lt!2529143 (head!14320 s!7408)) (tail!13653 s!7408)) e!4238211)))

(declare-fun b!7050044 () Bool)

(assert (=> b!7050044 (= e!4238211 (nullableZipper!2621 (derivationStepZipper!2984 lt!2529143 (head!14320 s!7408))))))

(declare-fun b!7050045 () Bool)

(assert (=> b!7050045 (= e!4238211 (matchZipper!3068 (derivationStepZipper!2984 (derivationStepZipper!2984 lt!2529143 (head!14320 s!7408)) (head!14320 (tail!13653 s!7408))) (tail!13653 (tail!13653 s!7408))))))

(assert (= (and d!2202362 c!1313124) b!7050044))

(assert (= (and d!2202362 (not c!1313124)) b!7050045))

(assert (=> d!2202362 m!7765682))

(declare-fun m!7765710 () Bool)

(assert (=> d!2202362 m!7765710))

(assert (=> b!7050044 m!7765680))

(declare-fun m!7765712 () Bool)

(assert (=> b!7050044 m!7765712))

(assert (=> b!7050045 m!7765682))

(declare-fun m!7765714 () Bool)

(assert (=> b!7050045 m!7765714))

(assert (=> b!7050045 m!7765680))

(assert (=> b!7050045 m!7765714))

(declare-fun m!7765716 () Bool)

(assert (=> b!7050045 m!7765716))

(assert (=> b!7050045 m!7765682))

(declare-fun m!7765718 () Bool)

(assert (=> b!7050045 m!7765718))

(assert (=> b!7050045 m!7765716))

(assert (=> b!7050045 m!7765718))

(declare-fun m!7765720 () Bool)

(assert (=> b!7050045 m!7765720))

(assert (=> b!7050017 d!2202362))

(declare-fun d!2202364 () Bool)

(assert (=> d!2202364 true))

(declare-fun lambda!418688 () Int)

(declare-fun flatMap!2475 ((Set Context!13048) Int) (Set Context!13048))

(assert (=> d!2202364 (= (derivationStepZipper!2984 lt!2529143 (head!14320 s!7408)) (flatMap!2475 lt!2529143 lambda!418688))))

(declare-fun bs!1875662 () Bool)

(assert (= bs!1875662 d!2202364))

(declare-fun m!7765722 () Bool)

(assert (=> bs!1875662 m!7765722))

(assert (=> b!7050017 d!2202364))

(declare-fun d!2202366 () Bool)

(assert (=> d!2202366 (= (head!14320 s!7408) (h!74437 s!7408))))

(assert (=> b!7050017 d!2202366))

(declare-fun d!2202368 () Bool)

(assert (=> d!2202368 (= (tail!13653 s!7408) (t!381892 s!7408))))

(assert (=> b!7050017 d!2202368))

(declare-fun b!7050061 () Bool)

(declare-fun e!4238214 () Bool)

(declare-fun tp!1938691 () Bool)

(declare-fun tp!1938695 () Bool)

(assert (=> b!7050061 (= e!4238214 (and tp!1938691 tp!1938695))))

(declare-fun b!7050060 () Bool)

(declare-fun tp!1938694 () Bool)

(assert (=> b!7050060 (= e!4238214 tp!1938694)))

(assert (=> b!7050035 (= tp!1938679 e!4238214)))

(declare-fun b!7050059 () Bool)

(declare-fun tp!1938693 () Bool)

(declare-fun tp!1938692 () Bool)

(assert (=> b!7050059 (= e!4238214 (and tp!1938693 tp!1938692))))

(declare-fun b!7050058 () Bool)

(assert (=> b!7050058 (= e!4238214 tp_is_empty!44281)))

(assert (= (and b!7050035 (is-ElementMatch!17528 (h!74436 (exprs!7024 setElem!49575)))) b!7050058))

(assert (= (and b!7050035 (is-Concat!26373 (h!74436 (exprs!7024 setElem!49575)))) b!7050059))

(assert (= (and b!7050035 (is-Star!17528 (h!74436 (exprs!7024 setElem!49575)))) b!7050060))

(assert (= (and b!7050035 (is-Union!17528 (h!74436 (exprs!7024 setElem!49575)))) b!7050061))

(declare-fun b!7050062 () Bool)

(declare-fun e!4238215 () Bool)

(declare-fun tp!1938696 () Bool)

(declare-fun tp!1938697 () Bool)

(assert (=> b!7050062 (= e!4238215 (and tp!1938696 tp!1938697))))

(assert (=> b!7050035 (= tp!1938680 e!4238215)))

(assert (= (and b!7050035 (is-Cons!67988 (t!381891 (exprs!7024 setElem!49575)))) b!7050062))

(declare-fun b!7050063 () Bool)

(declare-fun e!4238216 () Bool)

(declare-fun tp!1938698 () Bool)

(assert (=> b!7050063 (= e!4238216 (and tp_is_empty!44281 tp!1938698))))

(assert (=> b!7050034 (= tp!1938678 e!4238216)))

(assert (= (and b!7050034 (is-Cons!67989 (t!381892 (t!381892 s!7408)))) b!7050063))

(declare-fun b!7050067 () Bool)

(declare-fun e!4238217 () Bool)

(declare-fun tp!1938699 () Bool)

(declare-fun tp!1938703 () Bool)

(assert (=> b!7050067 (= e!4238217 (and tp!1938699 tp!1938703))))

(declare-fun b!7050066 () Bool)

(declare-fun tp!1938702 () Bool)

(assert (=> b!7050066 (= e!4238217 tp!1938702)))

(assert (=> b!7050029 (= tp!1938674 e!4238217)))

(declare-fun b!7050065 () Bool)

(declare-fun tp!1938701 () Bool)

(declare-fun tp!1938700 () Bool)

(assert (=> b!7050065 (= e!4238217 (and tp!1938701 tp!1938700))))

(declare-fun b!7050064 () Bool)

(assert (=> b!7050064 (= e!4238217 tp_is_empty!44281)))

(assert (= (and b!7050029 (is-ElementMatch!17528 (h!74436 (exprs!7024 ct2!306)))) b!7050064))

(assert (= (and b!7050029 (is-Concat!26373 (h!74436 (exprs!7024 ct2!306)))) b!7050065))

(assert (= (and b!7050029 (is-Star!17528 (h!74436 (exprs!7024 ct2!306)))) b!7050066))

(assert (= (and b!7050029 (is-Union!17528 (h!74436 (exprs!7024 ct2!306)))) b!7050067))

(declare-fun b!7050068 () Bool)

(declare-fun e!4238218 () Bool)

(declare-fun tp!1938704 () Bool)

(declare-fun tp!1938705 () Bool)

(assert (=> b!7050068 (= e!4238218 (and tp!1938704 tp!1938705))))

(assert (=> b!7050029 (= tp!1938675 e!4238218)))

(assert (= (and b!7050029 (is-Cons!67988 (t!381891 (exprs!7024 ct2!306)))) b!7050068))

(declare-fun condSetEmpty!49582 () Bool)

(assert (=> setNonEmpty!49581 (= condSetEmpty!49582 (= setRest!49581 (as set.empty (Set Context!13048))))))

(declare-fun setRes!49582 () Bool)

(assert (=> setNonEmpty!49581 (= tp!1938669 setRes!49582)))

(declare-fun setIsEmpty!49582 () Bool)

(assert (=> setIsEmpty!49582 setRes!49582))

(declare-fun tp!1938707 () Bool)

(declare-fun setNonEmpty!49582 () Bool)

(declare-fun e!4238219 () Bool)

(declare-fun setElem!49582 () Context!13048)

(assert (=> setNonEmpty!49582 (= setRes!49582 (and tp!1938707 (inv!86680 setElem!49582) e!4238219))))

(declare-fun setRest!49582 () (Set Context!13048))

(assert (=> setNonEmpty!49582 (= setRest!49581 (set.union (set.insert setElem!49582 (as set.empty (Set Context!13048))) setRest!49582))))

(declare-fun b!7050069 () Bool)

(declare-fun tp!1938706 () Bool)

(assert (=> b!7050069 (= e!4238219 tp!1938706)))

(assert (= (and setNonEmpty!49581 condSetEmpty!49582) setIsEmpty!49582))

(assert (= (and setNonEmpty!49581 (not condSetEmpty!49582)) setNonEmpty!49582))

(assert (= setNonEmpty!49582 b!7050069))

(declare-fun m!7765724 () Bool)

(assert (=> setNonEmpty!49582 m!7765724))

(declare-fun b!7050070 () Bool)

(declare-fun e!4238220 () Bool)

(declare-fun tp!1938708 () Bool)

(declare-fun tp!1938709 () Bool)

(assert (=> b!7050070 (= e!4238220 (and tp!1938708 tp!1938709))))

(assert (=> b!7050024 (= tp!1938668 e!4238220)))

(assert (= (and b!7050024 (is-Cons!67988 (exprs!7024 setElem!49581))) b!7050070))

(declare-fun b_lambda!268051 () Bool)

(assert (= b_lambda!268049 (or d!2202336 b_lambda!268051)))

(declare-fun bs!1875663 () Bool)

(declare-fun d!2202370 () Bool)

(assert (= bs!1875663 (and d!2202370 d!2202336)))

(declare-fun validRegex!8956 (Regex!17528) Bool)

(assert (=> bs!1875663 (= (dynLambda!27546 lambda!418675 (h!74436 (exprs!7024 setElem!49575))) (validRegex!8956 (h!74436 (exprs!7024 setElem!49575))))))

(declare-fun m!7765726 () Bool)

(assert (=> bs!1875663 m!7765726))

(assert (=> b!7050042 d!2202370))

(declare-fun b_lambda!268053 () Bool)

(assert (= b_lambda!268047 (or d!2202348 b_lambda!268053)))

(declare-fun bs!1875664 () Bool)

(declare-fun d!2202372 () Bool)

(assert (= bs!1875664 (and d!2202372 d!2202348)))

(assert (=> bs!1875664 (= (dynLambda!27546 lambda!418684 (h!74436 (exprs!7024 ct2!306))) (validRegex!8956 (h!74436 (exprs!7024 ct2!306))))))

(declare-fun m!7765728 () Bool)

(assert (=> bs!1875664 m!7765728))

(assert (=> b!7050040 d!2202372))

(push 1)

(assert (not b_lambda!268053))

(assert (not b!7050067))

(assert (not d!2202362))

(assert (not b!7050045))

(assert (not b!7050068))

(assert (not b!7050044))

(assert (not b!7050069))

(assert (not b_lambda!268051))

(assert (not b!7050062))

(assert (not b!7050063))

(assert (not b!7050061))

(assert (not b!7050059))

(assert (not b!7050060))

(assert (not setNonEmpty!49582))

(assert (not bs!1875663))

(assert (not b!7050070))

(assert (not d!2202364))

(assert (not d!2202352))

(assert (not bs!1875664))

(assert (not b!7050041))

(assert (not d!2202356))

(assert (not b!7050065))

(assert (not d!2202358))

(assert tp_is_empty!44281)

(assert (not b!7050066))

(assert (not b!7050043))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

