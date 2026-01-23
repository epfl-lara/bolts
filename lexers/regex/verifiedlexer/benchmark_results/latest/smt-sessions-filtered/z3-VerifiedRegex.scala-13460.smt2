; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!727586 () Bool)

(assert start!727586)

(declare-fun b_free!134381 () Bool)

(declare-fun b_next!135171 () Bool)

(assert (=> start!727586 (= b_free!134381 (not b_next!135171))))

(declare-fun tp!2179881 () Bool)

(declare-fun b_and!352051 () Bool)

(assert (=> start!727586 (= tp!2179881 b_and!352051)))

(declare-fun b!7509908 () Bool)

(declare-fun e!4478133 () Bool)

(declare-datatypes ((B!3917 0))(
  ( (B!3918 (val!30318 Int)) )
))
(declare-datatypes ((List!72612 0))(
  ( (Nil!72488) (Cons!72488 (h!78936 B!3917) (t!387217 List!72612)) )
))
(declare-fun l!2942 () List!72612)

(declare-fun contains!20876 (List!72612 B!3917) Bool)

(assert (=> b!7509908 (= e!4478133 (not (contains!20876 l!2942 (h!78936 l!2942))))))

(declare-fun res!3012923 () Bool)

(assert (=> start!727586 (=> (not res!3012923) (not e!4478133))))

(declare-fun p!1842 () Int)

(declare-fun exists!4923 (List!72612 Int) Bool)

(assert (=> start!727586 (= res!3012923 (exists!4923 l!2942 p!1842))))

(assert (=> start!727586 e!4478133))

(declare-fun e!4478134 () Bool)

(assert (=> start!727586 e!4478134))

(assert (=> start!727586 tp!2179881))

(declare-fun b!7509909 () Bool)

(declare-fun tp_is_empty!49809 () Bool)

(declare-fun tp!2179882 () Bool)

(assert (=> b!7509909 (= e!4478134 (and tp_is_empty!49809 tp!2179882))))

(declare-fun b!7509907 () Bool)

(declare-fun res!3012921 () Bool)

(assert (=> b!7509907 (=> (not res!3012921) (not e!4478133))))

(declare-fun dynLambda!29822 (Int B!3917) Bool)

(assert (=> b!7509907 (= res!3012921 (dynLambda!29822 p!1842 (h!78936 l!2942)))))

(declare-fun b!7509906 () Bool)

(declare-fun res!3012922 () Bool)

(assert (=> b!7509906 (=> (not res!3012922) (not e!4478133))))

(get-info :version)

(assert (=> b!7509906 (= res!3012922 ((_ is Cons!72488) l!2942))))

(assert (= (and start!727586 res!3012923) b!7509906))

(assert (= (and b!7509906 res!3012922) b!7509907))

(assert (= (and b!7509907 res!3012921) b!7509908))

(assert (= (and start!727586 ((_ is Cons!72488) l!2942)) b!7509909))

(declare-fun b_lambda!288047 () Bool)

(assert (=> (not b_lambda!288047) (not b!7509907)))

(declare-fun t!387216 () Bool)

(declare-fun tb!262485 () Bool)

(assert (=> (and start!727586 (= p!1842 p!1842) t!387216) tb!262485))

(declare-fun result!356260 () Bool)

(assert (=> tb!262485 (= result!356260 true)))

(assert (=> b!7509907 t!387216))

(declare-fun b_and!352053 () Bool)

(assert (= b_and!352051 (and (=> t!387216 result!356260) b_and!352053)))

(declare-fun m!8093880 () Bool)

(assert (=> b!7509908 m!8093880))

(declare-fun m!8093882 () Bool)

(assert (=> start!727586 m!8093882))

(declare-fun m!8093884 () Bool)

(assert (=> b!7509907 m!8093884))

(check-sat tp_is_empty!49809 (not b!7509909) (not b!7509908) (not start!727586) b_and!352053 (not b_lambda!288047) (not b_next!135171))
(check-sat b_and!352053 (not b_next!135171))
(get-model)

(declare-fun b_lambda!288051 () Bool)

(assert (= b_lambda!288047 (or (and start!727586 b_free!134381) b_lambda!288051)))

(check-sat tp_is_empty!49809 (not b_lambda!288051) (not b!7509909) (not b!7509908) (not start!727586) b_and!352053 (not b_next!135171))
(check-sat b_and!352053 (not b_next!135171))
(get-model)

(declare-fun d!2306223 () Bool)

(declare-fun lt!2637317 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15334 (List!72612) (InoxSet B!3917))

(assert (=> d!2306223 (= lt!2637317 (select (content!15334 l!2942) (h!78936 l!2942)))))

(declare-fun e!4478146 () Bool)

(assert (=> d!2306223 (= lt!2637317 e!4478146)))

(declare-fun res!3012935 () Bool)

(assert (=> d!2306223 (=> (not res!3012935) (not e!4478146))))

(assert (=> d!2306223 (= res!3012935 ((_ is Cons!72488) l!2942))))

(assert (=> d!2306223 (= (contains!20876 l!2942 (h!78936 l!2942)) lt!2637317)))

(declare-fun b!7509920 () Bool)

(declare-fun e!4478145 () Bool)

(assert (=> b!7509920 (= e!4478146 e!4478145)))

(declare-fun res!3012934 () Bool)

(assert (=> b!7509920 (=> res!3012934 e!4478145)))

(assert (=> b!7509920 (= res!3012934 (= (h!78936 l!2942) (h!78936 l!2942)))))

(declare-fun b!7509921 () Bool)

(assert (=> b!7509921 (= e!4478145 (contains!20876 (t!387217 l!2942) (h!78936 l!2942)))))

(assert (= (and d!2306223 res!3012935) b!7509920))

(assert (= (and b!7509920 (not res!3012934)) b!7509921))

(declare-fun m!8093892 () Bool)

(assert (=> d!2306223 m!8093892))

(declare-fun m!8093894 () Bool)

(assert (=> d!2306223 m!8093894))

(declare-fun m!8093896 () Bool)

(assert (=> b!7509921 m!8093896))

(assert (=> b!7509908 d!2306223))

(declare-fun d!2306227 () Bool)

(assert (=> d!2306227 true))

(declare-fun order!29707 () Int)

(declare-fun lambda!466149 () Int)

(declare-fun dynLambda!29824 (Int Int) Int)

(assert (=> d!2306227 (< (dynLambda!29824 order!29707 p!1842) (dynLambda!29824 order!29707 lambda!466149))))

(declare-fun forall!18368 (List!72612 Int) Bool)

(assert (=> d!2306227 (= (exists!4923 l!2942 p!1842) (not (forall!18368 l!2942 lambda!466149)))))

(declare-fun bs!1939095 () Bool)

(assert (= bs!1939095 d!2306227))

(declare-fun m!8093900 () Bool)

(assert (=> bs!1939095 m!8093900))

(assert (=> start!727586 d!2306227))

(declare-fun b!7509935 () Bool)

(declare-fun e!4478152 () Bool)

(declare-fun tp!2179888 () Bool)

(assert (=> b!7509935 (= e!4478152 (and tp_is_empty!49809 tp!2179888))))

(assert (=> b!7509909 (= tp!2179882 e!4478152)))

(assert (= (and b!7509909 ((_ is Cons!72488) (t!387217 l!2942))) b!7509935))

(check-sat tp_is_empty!49809 (not b_lambda!288051) (not d!2306227) (not b!7509921) (not d!2306223) (not b!7509935) b_and!352053 (not b_next!135171))
(check-sat b_and!352053 (not b_next!135171))
