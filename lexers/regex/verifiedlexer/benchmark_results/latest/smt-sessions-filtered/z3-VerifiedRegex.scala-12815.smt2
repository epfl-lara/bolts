; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!707998 () Bool)

(assert start!707998)

(declare-fun b!7262951 () Bool)

(declare-fun res!2944683 () Bool)

(declare-fun e!4355403 () Bool)

(assert (=> b!7262951 (=> (not res!2944683) (not e!4355403))))

(declare-datatypes ((C!37752 0))(
  ( (C!37753 (val!28824 Int)) )
))
(declare-datatypes ((List!70793 0))(
  ( (Nil!70669) (Cons!70669 (h!77117 C!37752) (t!384859 List!70793)) )
))
(declare-fun s!7854 () List!70793)

(get-info :version)

(assert (=> b!7262951 (= res!2944683 ((_ is Cons!70669) s!7854))))

(declare-fun b!7262952 () Bool)

(declare-fun e!4355401 () Bool)

(declare-fun tp!2039805 () Bool)

(assert (=> b!7262952 (= e!4355401 tp!2039805)))

(declare-fun b!7262953 () Bool)

(declare-fun e!4355402 () Bool)

(declare-fun tp_is_empty!46943 () Bool)

(declare-fun tp!2039804 () Bool)

(assert (=> b!7262953 (= e!4355402 (and tp_is_empty!46943 tp!2039804))))

(declare-fun b!7262955 () Bool)

(declare-fun e!4355400 () Bool)

(declare-fun tp!2039806 () Bool)

(assert (=> b!7262955 (= e!4355400 tp!2039806)))

(declare-fun b!7262956 () Bool)

(declare-fun e!4355399 () Bool)

(assert (=> b!7262956 (= e!4355403 e!4355399)))

(declare-fun res!2944685 () Bool)

(assert (=> b!7262956 (=> (not res!2944685) (not e!4355399))))

(declare-datatypes ((Regex!18739 0))(
  ( (ElementMatch!18739 (c!1351195 C!37752)) (Concat!27584 (regOne!37990 Regex!18739) (regTwo!37990 Regex!18739)) (EmptyExpr!18739) (Star!18739 (reg!19068 Regex!18739)) (EmptyLang!18739) (Union!18739 (regOne!37991 Regex!18739) (regTwo!37991 Regex!18739)) )
))
(declare-datatypes ((List!70794 0))(
  ( (Nil!70670) (Cons!70670 (h!77118 Regex!18739) (t!384860 List!70794)) )
))
(declare-datatypes ((Context!15358 0))(
  ( (Context!15359 (exprs!8179 List!70794)) )
))
(declare-fun ct1!250 () Context!15358)

(declare-fun lambda!446893 () Int)

(declare-fun forall!17578 (List!70794 Int) Bool)

(assert (=> b!7262956 (= res!2944685 (forall!17578 (exprs!8179 ct1!250) lambda!446893))))

(declare-fun b!7262957 () Bool)

(declare-fun ct2!346 () Context!15358)

(assert (=> b!7262957 (= e!4355399 (not (forall!17578 (exprs!8179 ct2!346) lambda!446893)))))

(declare-fun res!2944684 () Bool)

(assert (=> start!707998 (=> (not res!2944684) (not e!4355403))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!3643 ((InoxSet Context!15358) List!70793) Bool)

(assert (=> start!707998 (= res!2944684 (matchZipper!3643 (store ((as const (Array Context!15358 Bool)) false) ct2!346 true) s!7854))))

(assert (=> start!707998 e!4355403))

(declare-fun inv!89857 (Context!15358) Bool)

(assert (=> start!707998 (and (inv!89857 ct2!346) e!4355401)))

(assert (=> start!707998 e!4355402))

(assert (=> start!707998 (and (inv!89857 ct1!250) e!4355400)))

(declare-fun b!7262954 () Bool)

(declare-fun res!2944682 () Bool)

(assert (=> b!7262954 (=> (not res!2944682) (not e!4355403))))

(declare-fun nullableContext!229 (Context!15358) Bool)

(assert (=> b!7262954 (= res!2944682 (nullableContext!229 ct1!250))))

(assert (= (and start!707998 res!2944684) b!7262954))

(assert (= (and b!7262954 res!2944682) b!7262951))

(assert (= (and b!7262951 res!2944683) b!7262956))

(assert (= (and b!7262956 res!2944685) b!7262957))

(assert (= start!707998 b!7262952))

(assert (= (and start!707998 ((_ is Cons!70669) s!7854)) b!7262953))

(assert (= start!707998 b!7262955))

(declare-fun m!7947496 () Bool)

(assert (=> b!7262956 m!7947496))

(declare-fun m!7947498 () Bool)

(assert (=> b!7262957 m!7947498))

(declare-fun m!7947500 () Bool)

(assert (=> start!707998 m!7947500))

(assert (=> start!707998 m!7947500))

(declare-fun m!7947502 () Bool)

(assert (=> start!707998 m!7947502))

(declare-fun m!7947504 () Bool)

(assert (=> start!707998 m!7947504))

(declare-fun m!7947506 () Bool)

(assert (=> start!707998 m!7947506))

(declare-fun m!7947508 () Bool)

(assert (=> b!7262954 m!7947508))

(check-sat (not b!7262953) (not b!7262957) tp_is_empty!46943 (not b!7262952) (not start!707998) (not b!7262955) (not b!7262956) (not b!7262954))
(check-sat)
(get-model)

(declare-fun d!2259552 () Bool)

(declare-fun c!1351200 () Bool)

(declare-fun isEmpty!40627 (List!70793) Bool)

(assert (=> d!2259552 (= c!1351200 (isEmpty!40627 s!7854))))

(declare-fun e!4355408 () Bool)

(assert (=> d!2259552 (= (matchZipper!3643 (store ((as const (Array Context!15358 Bool)) false) ct2!346 true) s!7854) e!4355408)))

(declare-fun b!7262966 () Bool)

(declare-fun nullableZipper!2961 ((InoxSet Context!15358)) Bool)

(assert (=> b!7262966 (= e!4355408 (nullableZipper!2961 (store ((as const (Array Context!15358 Bool)) false) ct2!346 true)))))

(declare-fun b!7262967 () Bool)

(declare-fun derivationStepZipper!3487 ((InoxSet Context!15358) C!37752) (InoxSet Context!15358))

(declare-fun head!14960 (List!70793) C!37752)

(declare-fun tail!14419 (List!70793) List!70793)

(assert (=> b!7262967 (= e!4355408 (matchZipper!3643 (derivationStepZipper!3487 (store ((as const (Array Context!15358 Bool)) false) ct2!346 true) (head!14960 s!7854)) (tail!14419 s!7854)))))

(assert (= (and d!2259552 c!1351200) b!7262966))

(assert (= (and d!2259552 (not c!1351200)) b!7262967))

(declare-fun m!7947510 () Bool)

(assert (=> d!2259552 m!7947510))

(assert (=> b!7262966 m!7947500))

(declare-fun m!7947512 () Bool)

(assert (=> b!7262966 m!7947512))

(declare-fun m!7947514 () Bool)

(assert (=> b!7262967 m!7947514))

(assert (=> b!7262967 m!7947500))

(assert (=> b!7262967 m!7947514))

(declare-fun m!7947516 () Bool)

(assert (=> b!7262967 m!7947516))

(declare-fun m!7947518 () Bool)

(assert (=> b!7262967 m!7947518))

(assert (=> b!7262967 m!7947516))

(assert (=> b!7262967 m!7947518))

(declare-fun m!7947520 () Bool)

(assert (=> b!7262967 m!7947520))

(assert (=> start!707998 d!2259552))

(declare-fun bs!1909767 () Bool)

(declare-fun d!2259556 () Bool)

(assert (= bs!1909767 (and d!2259556 b!7262956)))

(declare-fun lambda!446898 () Int)

(assert (=> bs!1909767 (= lambda!446898 lambda!446893)))

(assert (=> d!2259556 (= (inv!89857 ct2!346) (forall!17578 (exprs!8179 ct2!346) lambda!446898))))

(declare-fun bs!1909768 () Bool)

(assert (= bs!1909768 d!2259556))

(declare-fun m!7947534 () Bool)

(assert (=> bs!1909768 m!7947534))

(assert (=> start!707998 d!2259556))

(declare-fun bs!1909769 () Bool)

(declare-fun d!2259560 () Bool)

(assert (= bs!1909769 (and d!2259560 b!7262956)))

(declare-fun lambda!446899 () Int)

(assert (=> bs!1909769 (= lambda!446899 lambda!446893)))

(declare-fun bs!1909770 () Bool)

(assert (= bs!1909770 (and d!2259560 d!2259556)))

(assert (=> bs!1909770 (= lambda!446899 lambda!446898)))

(assert (=> d!2259560 (= (inv!89857 ct1!250) (forall!17578 (exprs!8179 ct1!250) lambda!446899))))

(declare-fun bs!1909772 () Bool)

(assert (= bs!1909772 d!2259560))

(declare-fun m!7947536 () Bool)

(assert (=> bs!1909772 m!7947536))

(assert (=> start!707998 d!2259560))

(declare-fun bs!1909777 () Bool)

(declare-fun d!2259562 () Bool)

(assert (= bs!1909777 (and d!2259562 b!7262956)))

(declare-fun lambda!446904 () Int)

(assert (=> bs!1909777 (not (= lambda!446904 lambda!446893))))

(declare-fun bs!1909778 () Bool)

(assert (= bs!1909778 (and d!2259562 d!2259556)))

(assert (=> bs!1909778 (not (= lambda!446904 lambda!446898))))

(declare-fun bs!1909779 () Bool)

(assert (= bs!1909779 (and d!2259562 d!2259560)))

(assert (=> bs!1909779 (not (= lambda!446904 lambda!446899))))

(assert (=> d!2259562 (= (nullableContext!229 ct1!250) (forall!17578 (exprs!8179 ct1!250) lambda!446904))))

(declare-fun bs!1909780 () Bool)

(assert (= bs!1909780 d!2259562))

(declare-fun m!7947542 () Bool)

(assert (=> bs!1909780 m!7947542))

(assert (=> b!7262954 d!2259562))

(declare-fun d!2259568 () Bool)

(declare-fun res!2944698 () Bool)

(declare-fun e!4355422 () Bool)

(assert (=> d!2259568 (=> res!2944698 e!4355422)))

(assert (=> d!2259568 (= res!2944698 ((_ is Nil!70670) (exprs!8179 ct2!346)))))

(assert (=> d!2259568 (= (forall!17578 (exprs!8179 ct2!346) lambda!446893) e!4355422)))

(declare-fun b!7262982 () Bool)

(declare-fun e!4355423 () Bool)

(assert (=> b!7262982 (= e!4355422 e!4355423)))

(declare-fun res!2944699 () Bool)

(assert (=> b!7262982 (=> (not res!2944699) (not e!4355423))))

(declare-fun dynLambda!28846 (Int Regex!18739) Bool)

(assert (=> b!7262982 (= res!2944699 (dynLambda!28846 lambda!446893 (h!77118 (exprs!8179 ct2!346))))))

(declare-fun b!7262983 () Bool)

(assert (=> b!7262983 (= e!4355423 (forall!17578 (t!384860 (exprs!8179 ct2!346)) lambda!446893))))

(assert (= (and d!2259568 (not res!2944698)) b!7262982))

(assert (= (and b!7262982 res!2944699) b!7262983))

(declare-fun b_lambda!279393 () Bool)

(assert (=> (not b_lambda!279393) (not b!7262982)))

(declare-fun m!7947552 () Bool)

(assert (=> b!7262982 m!7947552))

(declare-fun m!7947554 () Bool)

(assert (=> b!7262983 m!7947554))

(assert (=> b!7262957 d!2259568))

(declare-fun d!2259574 () Bool)

(declare-fun res!2944700 () Bool)

(declare-fun e!4355424 () Bool)

(assert (=> d!2259574 (=> res!2944700 e!4355424)))

(assert (=> d!2259574 (= res!2944700 ((_ is Nil!70670) (exprs!8179 ct1!250)))))

(assert (=> d!2259574 (= (forall!17578 (exprs!8179 ct1!250) lambda!446893) e!4355424)))

(declare-fun b!7262984 () Bool)

(declare-fun e!4355425 () Bool)

(assert (=> b!7262984 (= e!4355424 e!4355425)))

(declare-fun res!2944701 () Bool)

(assert (=> b!7262984 (=> (not res!2944701) (not e!4355425))))

(assert (=> b!7262984 (= res!2944701 (dynLambda!28846 lambda!446893 (h!77118 (exprs!8179 ct1!250))))))

(declare-fun b!7262985 () Bool)

(assert (=> b!7262985 (= e!4355425 (forall!17578 (t!384860 (exprs!8179 ct1!250)) lambda!446893))))

(assert (= (and d!2259574 (not res!2944700)) b!7262984))

(assert (= (and b!7262984 res!2944701) b!7262985))

(declare-fun b_lambda!279395 () Bool)

(assert (=> (not b_lambda!279395) (not b!7262984)))

(declare-fun m!7947556 () Bool)

(assert (=> b!7262984 m!7947556))

(declare-fun m!7947558 () Bool)

(assert (=> b!7262985 m!7947558))

(assert (=> b!7262956 d!2259574))

(declare-fun b!7262990 () Bool)

(declare-fun e!4355428 () Bool)

(declare-fun tp!2039811 () Bool)

(declare-fun tp!2039812 () Bool)

(assert (=> b!7262990 (= e!4355428 (and tp!2039811 tp!2039812))))

(assert (=> b!7262955 (= tp!2039806 e!4355428)))

(assert (= (and b!7262955 ((_ is Cons!70670) (exprs!8179 ct1!250))) b!7262990))

(declare-fun b!7262999 () Bool)

(declare-fun e!4355433 () Bool)

(declare-fun tp!2039819 () Bool)

(assert (=> b!7262999 (= e!4355433 (and tp_is_empty!46943 tp!2039819))))

(assert (=> b!7262953 (= tp!2039804 e!4355433)))

(assert (= (and b!7262953 ((_ is Cons!70669) (t!384859 s!7854))) b!7262999))

(declare-fun b!7263001 () Bool)

(declare-fun e!4355435 () Bool)

(declare-fun tp!2039822 () Bool)

(declare-fun tp!2039823 () Bool)

(assert (=> b!7263001 (= e!4355435 (and tp!2039822 tp!2039823))))

(assert (=> b!7262952 (= tp!2039805 e!4355435)))

(assert (= (and b!7262952 ((_ is Cons!70670) (exprs!8179 ct2!346))) b!7263001))

(declare-fun b_lambda!279397 () Bool)

(assert (= b_lambda!279395 (or b!7262956 b_lambda!279397)))

(declare-fun bs!1909785 () Bool)

(declare-fun d!2259576 () Bool)

(assert (= bs!1909785 (and d!2259576 b!7262956)))

(declare-fun validRegex!9555 (Regex!18739) Bool)

(assert (=> bs!1909785 (= (dynLambda!28846 lambda!446893 (h!77118 (exprs!8179 ct1!250))) (validRegex!9555 (h!77118 (exprs!8179 ct1!250))))))

(declare-fun m!7947562 () Bool)

(assert (=> bs!1909785 m!7947562))

(assert (=> b!7262984 d!2259576))

(declare-fun b_lambda!279399 () Bool)

(assert (= b_lambda!279393 (or b!7262956 b_lambda!279399)))

(declare-fun bs!1909786 () Bool)

(declare-fun d!2259578 () Bool)

(assert (= bs!1909786 (and d!2259578 b!7262956)))

(assert (=> bs!1909786 (= (dynLambda!28846 lambda!446893 (h!77118 (exprs!8179 ct2!346))) (validRegex!9555 (h!77118 (exprs!8179 ct2!346))))))

(declare-fun m!7947564 () Bool)

(assert (=> bs!1909786 m!7947564))

(assert (=> b!7262982 d!2259578))

(check-sat (not d!2259552) (not bs!1909785) tp_is_empty!46943 (not d!2259556) (not b!7262985) (not b!7262990) (not b_lambda!279397) (not bs!1909786) (not b!7262983) (not d!2259562) (not d!2259560) (not b!7262967) (not b!7262966) (not b!7262999) (not b!7263001) (not b_lambda!279399))
(check-sat)
