; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546034 () Bool)

(assert start!546034)

(declare-fun b_free!133569 () Bool)

(declare-fun b_next!134359 () Bool)

(assert (=> start!546034 (= b_free!133569 (not b_next!134359))))

(declare-fun tp!1447980 () Bool)

(declare-fun b_and!350573 () Bool)

(assert (=> start!546034 (= tp!1447980 b_and!350573)))

(declare-fun res!2194886 () Bool)

(declare-fun e!3216714 () Bool)

(assert (=> start!546034 (=> (not res!2194886) (not e!3216714))))

(declare-datatypes ((B!3125 0))(
  ( (B!3126 (val!24346 Int)) )
))
(declare-datatypes ((List!60012 0))(
  ( (Nil!59888) (Cons!59888 (h!66336 B!3125) (t!373125 List!60012)) )
))
(declare-fun l!3049 () List!60012)

(declare-fun p!1890 () Int)

(declare-fun forall!14079 (List!60012 Int) Bool)

(assert (=> start!546034 (= res!2194886 (forall!14079 l!3049 p!1890))))

(assert (=> start!546034 e!3216714))

(declare-fun e!3216713 () Bool)

(assert (=> start!546034 e!3216713))

(assert (=> start!546034 tp!1447980))

(declare-fun b!5162695 () Bool)

(declare-fun res!2194885 () Bool)

(assert (=> b!5162695 (=> (not res!2194885) (not e!3216714))))

(get-info :version)

(assert (=> b!5162695 (= res!2194885 ((_ is Cons!59888) l!3049))))

(declare-fun b!5162696 () Bool)

(assert (=> b!5162696 (= e!3216714 (not (forall!14079 (t!373125 l!3049) p!1890)))))

(declare-fun b!5162697 () Bool)

(declare-fun tp_is_empty!38271 () Bool)

(declare-fun tp!1447981 () Bool)

(assert (=> b!5162697 (= e!3216713 (and tp_is_empty!38271 tp!1447981))))

(assert (= (and start!546034 res!2194886) b!5162695))

(assert (= (and b!5162695 res!2194885) b!5162696))

(assert (= (and start!546034 ((_ is Cons!59888) l!3049)) b!5162697))

(declare-fun m!6213336 () Bool)

(assert (=> start!546034 m!6213336))

(declare-fun m!6213338 () Bool)

(assert (=> b!5162696 m!6213338))

(check-sat (not start!546034) (not b!5162696) (not b!5162697) tp_is_empty!38271 (not b_next!134359) b_and!350573)
(check-sat b_and!350573 (not b_next!134359))
(get-model)

(declare-fun d!1665980 () Bool)

(declare-fun res!2194897 () Bool)

(declare-fun e!3216725 () Bool)

(assert (=> d!1665980 (=> res!2194897 e!3216725)))

(assert (=> d!1665980 (= res!2194897 ((_ is Nil!59888) (t!373125 l!3049)))))

(assert (=> d!1665980 (= (forall!14079 (t!373125 l!3049) p!1890) e!3216725)))

(declare-fun b!5162708 () Bool)

(declare-fun e!3216726 () Bool)

(assert (=> b!5162708 (= e!3216725 e!3216726)))

(declare-fun res!2194898 () Bool)

(assert (=> b!5162708 (=> (not res!2194898) (not e!3216726))))

(declare-fun dynLambda!23844 (Int B!3125) Bool)

(assert (=> b!5162708 (= res!2194898 (dynLambda!23844 p!1890 (h!66336 (t!373125 l!3049))))))

(declare-fun b!5162709 () Bool)

(assert (=> b!5162709 (= e!3216726 (forall!14079 (t!373125 (t!373125 l!3049)) p!1890))))

(assert (= (and d!1665980 (not res!2194897)) b!5162708))

(assert (= (and b!5162708 res!2194898) b!5162709))

(declare-fun b_lambda!200683 () Bool)

(assert (=> (not b_lambda!200683) (not b!5162708)))

(declare-fun t!373129 () Bool)

(declare-fun tb!261915 () Bool)

(assert (=> (and start!546034 (= p!1890 p!1890) t!373129) tb!261915))

(declare-fun result!330394 () Bool)

(assert (=> tb!261915 (= result!330394 true)))

(assert (=> b!5162708 t!373129))

(declare-fun b_and!350577 () Bool)

(assert (= b_and!350573 (and (=> t!373129 result!330394) b_and!350577)))

(declare-fun m!6213344 () Bool)

(assert (=> b!5162708 m!6213344))

(declare-fun m!6213346 () Bool)

(assert (=> b!5162709 m!6213346))

(assert (=> b!5162696 d!1665980))

(declare-fun d!1665986 () Bool)

(declare-fun res!2194901 () Bool)

(declare-fun e!3216729 () Bool)

(assert (=> d!1665986 (=> res!2194901 e!3216729)))

(assert (=> d!1665986 (= res!2194901 ((_ is Nil!59888) l!3049))))

(assert (=> d!1665986 (= (forall!14079 l!3049 p!1890) e!3216729)))

(declare-fun b!5162714 () Bool)

(declare-fun e!3216730 () Bool)

(assert (=> b!5162714 (= e!3216729 e!3216730)))

(declare-fun res!2194902 () Bool)

(assert (=> b!5162714 (=> (not res!2194902) (not e!3216730))))

(assert (=> b!5162714 (= res!2194902 (dynLambda!23844 p!1890 (h!66336 l!3049)))))

(declare-fun b!5162715 () Bool)

(assert (=> b!5162715 (= e!3216730 (forall!14079 (t!373125 l!3049) p!1890))))

(assert (= (and d!1665986 (not res!2194901)) b!5162714))

(assert (= (and b!5162714 res!2194902) b!5162715))

(declare-fun b_lambda!200687 () Bool)

(assert (=> (not b_lambda!200687) (not b!5162714)))

(declare-fun t!373133 () Bool)

(declare-fun tb!261919 () Bool)

(assert (=> (and start!546034 (= p!1890 p!1890) t!373133) tb!261919))

(declare-fun result!330400 () Bool)

(assert (=> tb!261919 (= result!330400 true)))

(assert (=> b!5162714 t!373133))

(declare-fun b_and!350581 () Bool)

(assert (= b_and!350577 (and (=> t!373133 result!330400) b_and!350581)))

(declare-fun m!6213350 () Bool)

(assert (=> b!5162714 m!6213350))

(assert (=> b!5162715 m!6213338))

(assert (=> start!546034 d!1665986))

(declare-fun b!5162723 () Bool)

(declare-fun e!3216736 () Bool)

(declare-fun tp!1447987 () Bool)

(assert (=> b!5162723 (= e!3216736 (and tp_is_empty!38271 tp!1447987))))

(assert (=> b!5162697 (= tp!1447981 e!3216736)))

(assert (= (and b!5162697 ((_ is Cons!59888) (t!373125 l!3049))) b!5162723))

(declare-fun b_lambda!200693 () Bool)

(assert (= b_lambda!200687 (or (and start!546034 b_free!133569) b_lambda!200693)))

(declare-fun b_lambda!200695 () Bool)

(assert (= b_lambda!200683 (or (and start!546034 b_free!133569) b_lambda!200695)))

(check-sat (not b_lambda!200695) b_and!350581 (not b_next!134359) (not b!5162723) (not b!5162715) (not b_lambda!200693) tp_is_empty!38271 (not b!5162709))
(check-sat b_and!350581 (not b_next!134359))
