; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!710196 () Bool)

(assert start!710196)

(declare-fun b!7274046 () Bool)

(declare-fun lambda!449457 () Int)

(declare-fun lambda!449456 () Int)

(assert (=> b!7274046 (not (= lambda!449457 lambda!449456))))

(declare-fun b!7274040 () Bool)

(declare-fun res!2948648 () Bool)

(declare-fun e!4361996 () Bool)

(assert (=> b!7274040 (=> (not res!2948648) (not e!4361996))))

(declare-datatypes ((C!37926 0))(
  ( (C!37927 (val!28911 Int)) )
))
(declare-datatypes ((List!70967 0))(
  ( (Nil!70843) (Cons!70843 (h!77291 C!37926) (t!385039 List!70967)) )
))
(declare-fun s!7854 () List!70967)

(assert (=> b!7274040 (= res!2948648 (not (is-Cons!70843 s!7854)))))

(declare-fun b!7274041 () Bool)

(declare-fun e!4361998 () Bool)

(declare-fun tp!2041691 () Bool)

(assert (=> b!7274041 (= e!4361998 tp!2041691)))

(declare-fun b!7274042 () Bool)

(declare-fun res!2948646 () Bool)

(assert (=> b!7274042 (=> (not res!2948646) (not e!4361996))))

(declare-datatypes ((Regex!18826 0))(
  ( (ElementMatch!18826 (c!1354350 C!37926)) (Concat!27671 (regOne!38164 Regex!18826) (regTwo!38164 Regex!18826)) (EmptyExpr!18826) (Star!18826 (reg!19155 Regex!18826)) (EmptyLang!18826) (Union!18826 (regOne!38165 Regex!18826) (regTwo!38165 Regex!18826)) )
))
(declare-datatypes ((List!70968 0))(
  ( (Nil!70844) (Cons!70844 (h!77292 Regex!18826) (t!385040 List!70968)) )
))
(declare-datatypes ((Context!15532 0))(
  ( (Context!15533 (exprs!8266 List!70968)) )
))
(declare-fun ct1!250 () Context!15532)

(declare-fun nullableContext!316 (Context!15532) Bool)

(assert (=> b!7274042 (= res!2948646 (nullableContext!316 ct1!250))))

(declare-fun b!7274043 () Bool)

(declare-fun e!4361997 () Bool)

(declare-fun tp_is_empty!47117 () Bool)

(declare-fun tp!2041692 () Bool)

(assert (=> b!7274043 (= e!4361997 (and tp_is_empty!47117 tp!2041692))))

(declare-fun b!7274044 () Bool)

(declare-fun e!4362000 () Bool)

(declare-fun forall!17653 (List!70968 Int) Bool)

(assert (=> b!7274044 (= e!4362000 (not (forall!17653 (exprs!8266 ct1!250) lambda!449457)))))

(declare-fun b!7274045 () Bool)

(declare-fun res!2948644 () Bool)

(assert (=> b!7274045 (=> (not res!2948644) (not e!4361996))))

(declare-fun ct2!346 () Context!15532)

(assert (=> b!7274045 (= res!2948644 (nullableContext!316 ct2!346))))

(declare-fun res!2948645 () Bool)

(assert (=> start!710196 (=> (not res!2948645) (not e!4361996))))

(declare-fun matchZipper!3730 ((Set Context!15532) List!70967) Bool)

(assert (=> start!710196 (= res!2948645 (matchZipper!3730 (set.insert ct2!346 (as set.empty (Set Context!15532))) s!7854))))

(assert (=> start!710196 e!4361996))

(declare-fun e!4361999 () Bool)

(declare-fun inv!90076 (Context!15532) Bool)

(assert (=> start!710196 (and (inv!90076 ct2!346) e!4361999)))

(assert (=> start!710196 e!4361997))

(assert (=> start!710196 (and (inv!90076 ct1!250) e!4361998)))

(assert (=> b!7274046 (= e!4361996 e!4362000)))

(declare-fun res!2948647 () Bool)

(assert (=> b!7274046 (=> (not res!2948647) (not e!4362000))))

(declare-fun ++!16722 (List!70968 List!70968) List!70968)

(assert (=> b!7274046 (= res!2948647 (matchZipper!3730 (set.insert (Context!15533 (++!16722 (exprs!8266 ct1!250) (exprs!8266 ct2!346))) (as set.empty (Set Context!15532))) s!7854))))

(declare-datatypes ((Unit!164262 0))(
  ( (Unit!164263) )
))
(declare-fun lt!2596369 () Unit!164262)

(declare-fun lemmaConcatPreservesForall!1579 (List!70968 List!70968 Int) Unit!164262)

(assert (=> b!7274046 (= lt!2596369 (lemmaConcatPreservesForall!1579 (exprs!8266 ct1!250) (exprs!8266 ct2!346) lambda!449457))))

(declare-fun lt!2596368 () Unit!164262)

(assert (=> b!7274046 (= lt!2596368 (lemmaConcatPreservesForall!1579 (exprs!8266 ct1!250) (exprs!8266 ct2!346) lambda!449456))))

(declare-fun b!7274047 () Bool)

(declare-fun tp!2041693 () Bool)

(assert (=> b!7274047 (= e!4361999 tp!2041693)))

(assert (= (and start!710196 res!2948645) b!7274042))

(assert (= (and b!7274042 res!2948646) b!7274040))

(assert (= (and b!7274040 res!2948648) b!7274045))

(assert (= (and b!7274045 res!2948644) b!7274046))

(assert (= (and b!7274046 res!2948647) b!7274044))

(assert (= start!710196 b!7274047))

(assert (= (and start!710196 (is-Cons!70843 s!7854)) b!7274043))

(assert (= start!710196 b!7274041))

(declare-fun m!7960646 () Bool)

(assert (=> b!7274046 m!7960646))

(declare-fun m!7960648 () Bool)

(assert (=> b!7274046 m!7960648))

(assert (=> b!7274046 m!7960646))

(declare-fun m!7960650 () Bool)

(assert (=> b!7274046 m!7960650))

(declare-fun m!7960652 () Bool)

(assert (=> b!7274046 m!7960652))

(declare-fun m!7960654 () Bool)

(assert (=> b!7274046 m!7960654))

(declare-fun m!7960656 () Bool)

(assert (=> b!7274045 m!7960656))

(declare-fun m!7960658 () Bool)

(assert (=> b!7274042 m!7960658))

(declare-fun m!7960660 () Bool)

(assert (=> b!7274044 m!7960660))

(declare-fun m!7960662 () Bool)

(assert (=> start!710196 m!7960662))

(assert (=> start!710196 m!7960662))

(declare-fun m!7960664 () Bool)

(assert (=> start!710196 m!7960664))

(declare-fun m!7960666 () Bool)

(assert (=> start!710196 m!7960666))

(declare-fun m!7960668 () Bool)

(assert (=> start!710196 m!7960668))

(push 1)

(assert (not b!7274045))

(assert (not b!7274042))

(assert (not b!7274046))

(assert (not start!710196))

(assert (not b!7274047))

(assert (not b!7274043))

(assert (not b!7274044))

(assert (not b!7274041))

(assert tp_is_empty!47117)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1911738 () Bool)

(declare-fun d!2263988 () Bool)

(assert (= bs!1911738 (and d!2263988 b!7274046)))

(declare-fun lambda!449468 () Int)

(assert (=> bs!1911738 (= lambda!449468 lambda!449456)))

(assert (=> bs!1911738 (not (= lambda!449468 lambda!449457))))

(assert (=> d!2263988 (= (nullableContext!316 ct1!250) (forall!17653 (exprs!8266 ct1!250) lambda!449468))))

(declare-fun bs!1911739 () Bool)

(assert (= bs!1911739 d!2263988))

(declare-fun m!7960694 () Bool)

(assert (=> bs!1911739 m!7960694))

(assert (=> b!7274042 d!2263988))

(declare-fun d!2263990 () Bool)

(declare-fun c!1354355 () Bool)

(declare-fun isEmpty!40746 (List!70967) Bool)

(assert (=> d!2263990 (= c!1354355 (isEmpty!40746 s!7854))))

(declare-fun e!4362018 () Bool)

(assert (=> d!2263990 (= (matchZipper!3730 (set.insert (Context!15533 (++!16722 (exprs!8266 ct1!250) (exprs!8266 ct2!346))) (as set.empty (Set Context!15532))) s!7854) e!4362018)))

(declare-fun b!7274076 () Bool)

(declare-fun nullableZipper!3028 ((Set Context!15532)) Bool)

(assert (=> b!7274076 (= e!4362018 (nullableZipper!3028 (set.insert (Context!15533 (++!16722 (exprs!8266 ct1!250) (exprs!8266 ct2!346))) (as set.empty (Set Context!15532)))))))

(declare-fun b!7274077 () Bool)

(declare-fun derivationStepZipper!3564 ((Set Context!15532) C!37926) (Set Context!15532))

(declare-fun head!15026 (List!70967) C!37926)

(declare-fun tail!14533 (List!70967) List!70967)

(assert (=> b!7274077 (= e!4362018 (matchZipper!3730 (derivationStepZipper!3564 (set.insert (Context!15533 (++!16722 (exprs!8266 ct1!250) (exprs!8266 ct2!346))) (as set.empty (Set Context!15532))) (head!15026 s!7854)) (tail!14533 s!7854)))))

(assert (= (and d!2263990 c!1354355) b!7274076))

(assert (= (and d!2263990 (not c!1354355)) b!7274077))

(declare-fun m!7960696 () Bool)

(assert (=> d!2263990 m!7960696))

(assert (=> b!7274076 m!7960646))

(declare-fun m!7960698 () Bool)

(assert (=> b!7274076 m!7960698))

(declare-fun m!7960700 () Bool)

(assert (=> b!7274077 m!7960700))

(assert (=> b!7274077 m!7960646))

(assert (=> b!7274077 m!7960700))

(declare-fun m!7960702 () Bool)

(assert (=> b!7274077 m!7960702))

(declare-fun m!7960704 () Bool)

(assert (=> b!7274077 m!7960704))

(assert (=> b!7274077 m!7960702))

(assert (=> b!7274077 m!7960704))

(declare-fun m!7960706 () Bool)

(assert (=> b!7274077 m!7960706))

(assert (=> b!7274046 d!2263990))

(declare-fun b!7274087 () Bool)

(declare-fun e!4362023 () List!70968)

(assert (=> b!7274087 (= e!4362023 (Cons!70844 (h!77292 (exprs!8266 ct1!250)) (++!16722 (t!385040 (exprs!8266 ct1!250)) (exprs!8266 ct2!346))))))

(declare-fun b!7274088 () Bool)

(declare-fun res!2948668 () Bool)

(declare-fun e!4362024 () Bool)

(assert (=> b!7274088 (=> (not res!2948668) (not e!4362024))))

(declare-fun lt!2596378 () List!70968)

(declare-fun size!41835 (List!70968) Int)

(assert (=> b!7274088 (= res!2948668 (= (size!41835 lt!2596378) (+ (size!41835 (exprs!8266 ct1!250)) (size!41835 (exprs!8266 ct2!346)))))))

(declare-fun b!7274086 () Bool)

(assert (=> b!7274086 (= e!4362023 (exprs!8266 ct2!346))))

(declare-fun d!2263994 () Bool)

(assert (=> d!2263994 e!4362024))

(declare-fun res!2948669 () Bool)

(assert (=> d!2263994 (=> (not res!2948669) (not e!4362024))))

(declare-fun content!14787 (List!70968) (Set Regex!18826))

(assert (=> d!2263994 (= res!2948669 (= (content!14787 lt!2596378) (set.union (content!14787 (exprs!8266 ct1!250)) (content!14787 (exprs!8266 ct2!346)))))))

(assert (=> d!2263994 (= lt!2596378 e!4362023)))

(declare-fun c!1354358 () Bool)

(assert (=> d!2263994 (= c!1354358 (is-Nil!70844 (exprs!8266 ct1!250)))))

(assert (=> d!2263994 (= (++!16722 (exprs!8266 ct1!250) (exprs!8266 ct2!346)) lt!2596378)))

(declare-fun b!7274089 () Bool)

(assert (=> b!7274089 (= e!4362024 (or (not (= (exprs!8266 ct2!346) Nil!70844)) (= lt!2596378 (exprs!8266 ct1!250))))))

(assert (= (and d!2263994 c!1354358) b!7274086))

(assert (= (and d!2263994 (not c!1354358)) b!7274087))

(assert (= (and d!2263994 res!2948669) b!7274088))

(assert (= (and b!7274088 res!2948668) b!7274089))

(declare-fun m!7960708 () Bool)

(assert (=> b!7274087 m!7960708))

(declare-fun m!7960710 () Bool)

(assert (=> b!7274088 m!7960710))

(declare-fun m!7960712 () Bool)

(assert (=> b!7274088 m!7960712))

(declare-fun m!7960714 () Bool)

(assert (=> b!7274088 m!7960714))

(declare-fun m!7960716 () Bool)

(assert (=> d!2263994 m!7960716))

(declare-fun m!7960718 () Bool)

(assert (=> d!2263994 m!7960718))

(declare-fun m!7960720 () Bool)

(assert (=> d!2263994 m!7960720))

(assert (=> b!7274046 d!2263994))

(declare-fun d!2263996 () Bool)

(assert (=> d!2263996 (forall!17653 (++!16722 (exprs!8266 ct1!250) (exprs!8266 ct2!346)) lambda!449457)))

(declare-fun lt!2596381 () Unit!164262)

(declare-fun choose!56457 (List!70968 List!70968 Int) Unit!164262)

(assert (=> d!2263996 (= lt!2596381 (choose!56457 (exprs!8266 ct1!250) (exprs!8266 ct2!346) lambda!449457))))

(assert (=> d!2263996 (forall!17653 (exprs!8266 ct1!250) lambda!449457)))

(assert (=> d!2263996 (= (lemmaConcatPreservesForall!1579 (exprs!8266 ct1!250) (exprs!8266 ct2!346) lambda!449457) lt!2596381)))

(declare-fun bs!1911740 () Bool)

(assert (= bs!1911740 d!2263996))

(assert (=> bs!1911740 m!7960650))

(assert (=> bs!1911740 m!7960650))

(declare-fun m!7960722 () Bool)

(assert (=> bs!1911740 m!7960722))

(declare-fun m!7960724 () Bool)

(assert (=> bs!1911740 m!7960724))

(assert (=> bs!1911740 m!7960660))

(assert (=> b!7274046 d!2263996))

(declare-fun d!2263998 () Bool)

(assert (=> d!2263998 (forall!17653 (++!16722 (exprs!8266 ct1!250) (exprs!8266 ct2!346)) lambda!449456)))

(declare-fun lt!2596382 () Unit!164262)

(assert (=> d!2263998 (= lt!2596382 (choose!56457 (exprs!8266 ct1!250) (exprs!8266 ct2!346) lambda!449456))))

(assert (=> d!2263998 (forall!17653 (exprs!8266 ct1!250) lambda!449456)))

(assert (=> d!2263998 (= (lemmaConcatPreservesForall!1579 (exprs!8266 ct1!250) (exprs!8266 ct2!346) lambda!449456) lt!2596382)))

(declare-fun bs!1911741 () Bool)

(assert (= bs!1911741 d!2263998))

(assert (=> bs!1911741 m!7960650))

(assert (=> bs!1911741 m!7960650))

(declare-fun m!7960726 () Bool)

(assert (=> bs!1911741 m!7960726))

(declare-fun m!7960728 () Bool)

(assert (=> bs!1911741 m!7960728))

(declare-fun m!7960730 () Bool)

(assert (=> bs!1911741 m!7960730))

(assert (=> b!7274046 d!2263998))

(declare-fun d!2264000 () Bool)

(declare-fun c!1354362 () Bool)

(assert (=> d!2264000 (= c!1354362 (isEmpty!40746 s!7854))))

(declare-fun e!4362028 () Bool)

(assert (=> d!2264000 (= (matchZipper!3730 (set.insert ct2!346 (as set.empty (Set Context!15532))) s!7854) e!4362028)))

(declare-fun b!7274096 () Bool)

(assert (=> b!7274096 (= e!4362028 (nullableZipper!3028 (set.insert ct2!346 (as set.empty (Set Context!15532)))))))

(declare-fun b!7274097 () Bool)

(assert (=> b!7274097 (= e!4362028 (matchZipper!3730 (derivationStepZipper!3564 (set.insert ct2!346 (as set.empty (Set Context!15532))) (head!15026 s!7854)) (tail!14533 s!7854)))))

(assert (= (and d!2264000 c!1354362) b!7274096))

(assert (= (and d!2264000 (not c!1354362)) b!7274097))

(assert (=> d!2264000 m!7960696))

(assert (=> b!7274096 m!7960662))

(declare-fun m!7960732 () Bool)

(assert (=> b!7274096 m!7960732))

(assert (=> b!7274097 m!7960700))

(assert (=> b!7274097 m!7960662))

(assert (=> b!7274097 m!7960700))

(declare-fun m!7960734 () Bool)

(assert (=> b!7274097 m!7960734))

(assert (=> b!7274097 m!7960704))

(assert (=> b!7274097 m!7960734))

(assert (=> b!7274097 m!7960704))

(declare-fun m!7960736 () Bool)

(assert (=> b!7274097 m!7960736))

(assert (=> start!710196 d!2264000))

(declare-fun bs!1911742 () Bool)

(declare-fun d!2264002 () Bool)

(assert (= bs!1911742 (and d!2264002 b!7274046)))

(declare-fun lambda!449471 () Int)

(assert (=> bs!1911742 (not (= lambda!449471 lambda!449456))))

(assert (=> bs!1911742 (= lambda!449471 lambda!449457)))

(declare-fun bs!1911743 () Bool)

(assert (= bs!1911743 (and d!2264002 d!2263988)))

(assert (=> bs!1911743 (not (= lambda!449471 lambda!449468))))

(assert (=> d!2264002 (= (inv!90076 ct2!346) (forall!17653 (exprs!8266 ct2!346) lambda!449471))))

(declare-fun bs!1911744 () Bool)

(assert (= bs!1911744 d!2264002))

(declare-fun m!7960750 () Bool)

(assert (=> bs!1911744 m!7960750))

(assert (=> start!710196 d!2264002))

(declare-fun bs!1911745 () Bool)

(declare-fun d!2264006 () Bool)

(assert (= bs!1911745 (and d!2264006 b!7274046)))

(declare-fun lambda!449472 () Int)

(assert (=> bs!1911745 (not (= lambda!449472 lambda!449456))))

(assert (=> bs!1911745 (= lambda!449472 lambda!449457)))

(declare-fun bs!1911746 () Bool)

(assert (= bs!1911746 (and d!2264006 d!2263988)))

(assert (=> bs!1911746 (not (= lambda!449472 lambda!449468))))

(declare-fun bs!1911747 () Bool)

(assert (= bs!1911747 (and d!2264006 d!2264002)))

(assert (=> bs!1911747 (= lambda!449472 lambda!449471)))

(assert (=> d!2264006 (= (inv!90076 ct1!250) (forall!17653 (exprs!8266 ct1!250) lambda!449472))))

(declare-fun bs!1911748 () Bool)

(assert (= bs!1911748 d!2264006))

(declare-fun m!7960752 () Bool)

(assert (=> bs!1911748 m!7960752))

(assert (=> start!710196 d!2264006))

(declare-fun bs!1911749 () Bool)

(declare-fun d!2264008 () Bool)

(assert (= bs!1911749 (and d!2264008 b!7274046)))

(declare-fun lambda!449473 () Int)

(assert (=> bs!1911749 (= lambda!449473 lambda!449456)))

(declare-fun bs!1911750 () Bool)

(assert (= bs!1911750 (and d!2264008 d!2263988)))

(assert (=> bs!1911750 (= lambda!449473 lambda!449468)))

(declare-fun bs!1911751 () Bool)

(assert (= bs!1911751 (and d!2264008 d!2264002)))

(assert (=> bs!1911751 (not (= lambda!449473 lambda!449471))))

(assert (=> bs!1911749 (not (= lambda!449473 lambda!449457))))

(declare-fun bs!1911752 () Bool)

(assert (= bs!1911752 (and d!2264008 d!2264006)))

(assert (=> bs!1911752 (not (= lambda!449473 lambda!449472))))

(assert (=> d!2264008 (= (nullableContext!316 ct2!346) (forall!17653 (exprs!8266 ct2!346) lambda!449473))))

(declare-fun bs!1911753 () Bool)

(assert (= bs!1911753 d!2264008))

(declare-fun m!7960754 () Bool)

(assert (=> bs!1911753 m!7960754))

(assert (=> b!7274045 d!2264008))

(declare-fun d!2264010 () Bool)

(declare-fun res!2948674 () Bool)

(declare-fun e!4362033 () Bool)

(assert (=> d!2264010 (=> res!2948674 e!4362033)))

(assert (=> d!2264010 (= res!2948674 (is-Nil!70844 (exprs!8266 ct1!250)))))

(assert (=> d!2264010 (= (forall!17653 (exprs!8266 ct1!250) lambda!449457) e!4362033)))

(declare-fun b!7274102 () Bool)

(declare-fun e!4362034 () Bool)

(assert (=> b!7274102 (= e!4362033 e!4362034)))

(declare-fun res!2948675 () Bool)

(assert (=> b!7274102 (=> (not res!2948675) (not e!4362034))))

(declare-fun dynLambda!28967 (Int Regex!18826) Bool)

(assert (=> b!7274102 (= res!2948675 (dynLambda!28967 lambda!449457 (h!77292 (exprs!8266 ct1!250))))))

(declare-fun b!7274103 () Bool)

(assert (=> b!7274103 (= e!4362034 (forall!17653 (t!385040 (exprs!8266 ct1!250)) lambda!449457))))

(assert (= (and d!2264010 (not res!2948674)) b!7274102))

(assert (= (and b!7274102 res!2948675) b!7274103))

(declare-fun b_lambda!280669 () Bool)

(assert (=> (not b_lambda!280669) (not b!7274102)))

(declare-fun m!7960756 () Bool)

(assert (=> b!7274102 m!7960756))

(declare-fun m!7960758 () Bool)

(assert (=> b!7274103 m!7960758))

(assert (=> b!7274044 d!2264010))

(declare-fun b!7274108 () Bool)

(declare-fun e!4362037 () Bool)

(declare-fun tp!2041705 () Bool)

(assert (=> b!7274108 (= e!4362037 (and tp_is_empty!47117 tp!2041705))))

(assert (=> b!7274043 (= tp!2041692 e!4362037)))

(assert (= (and b!7274043 (is-Cons!70843 (t!385039 s!7854))) b!7274108))

(declare-fun b!7274113 () Bool)

(declare-fun e!4362040 () Bool)

(declare-fun tp!2041710 () Bool)

(declare-fun tp!2041711 () Bool)

(assert (=> b!7274113 (= e!4362040 (and tp!2041710 tp!2041711))))

(assert (=> b!7274047 (= tp!2041693 e!4362040)))

(assert (= (and b!7274047 (is-Cons!70844 (exprs!8266 ct2!346))) b!7274113))

(declare-fun b!7274114 () Bool)

(declare-fun e!4362041 () Bool)

(declare-fun tp!2041712 () Bool)

(declare-fun tp!2041713 () Bool)

(assert (=> b!7274114 (= e!4362041 (and tp!2041712 tp!2041713))))

(assert (=> b!7274041 (= tp!2041691 e!4362041)))

(assert (= (and b!7274041 (is-Cons!70844 (exprs!8266 ct1!250))) b!7274114))

(declare-fun b_lambda!280671 () Bool)

(assert (= b_lambda!280669 (or b!7274046 b_lambda!280671)))

(declare-fun bs!1911758 () Bool)

(declare-fun d!2264014 () Bool)

(assert (= bs!1911758 (and d!2264014 b!7274046)))

(declare-fun validRegex!9597 (Regex!18826) Bool)

(assert (=> bs!1911758 (= (dynLambda!28967 lambda!449457 (h!77292 (exprs!8266 ct1!250))) (validRegex!9597 (h!77292 (exprs!8266 ct1!250))))))

(declare-fun m!7960762 () Bool)

(assert (=> bs!1911758 m!7960762))

(assert (=> b!7274102 d!2264014))

(push 1)

(assert (not b!7274103))

(assert (not b!7274088))

(assert (not b!7274097))

(assert (not d!2264006))

(assert tp_is_empty!47117)

(assert (not d!2263996))

(assert (not b!7274096))

(assert (not b!7274113))

(assert (not d!2264000))

(assert (not b!7274114))

(assert (not b_lambda!280671))

(assert (not d!2263998))

(assert (not d!2264008))

(assert (not b!7274108))

(assert (not b!7274076))

(assert (not d!2263990))

(assert (not bs!1911758))

(assert (not b!7274077))

(assert (not d!2263988))

(assert (not b!7274087))

(assert (not d!2263994))

(assert (not d!2264002))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

