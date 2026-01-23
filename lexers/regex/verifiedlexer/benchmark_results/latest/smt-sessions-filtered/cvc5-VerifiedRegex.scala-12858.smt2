; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!710172 () Bool)

(assert start!710172)

(declare-fun b!7273943 () Bool)

(declare-fun lambda!449427 () Int)

(declare-fun lambda!449426 () Int)

(assert (=> b!7273943 (not (= lambda!449427 lambda!449426))))

(declare-fun b!7273942 () Bool)

(declare-fun res!2948599 () Bool)

(declare-fun e!4361932 () Bool)

(assert (=> b!7273942 (=> (not res!2948599) (not e!4361932))))

(declare-datatypes ((C!37922 0))(
  ( (C!37923 (val!28909 Int)) )
))
(declare-datatypes ((Regex!18824 0))(
  ( (ElementMatch!18824 (c!1354340 C!37922)) (Concat!27669 (regOne!38160 Regex!18824) (regTwo!38160 Regex!18824)) (EmptyExpr!18824) (Star!18824 (reg!19153 Regex!18824)) (EmptyLang!18824) (Union!18824 (regOne!38161 Regex!18824) (regTwo!38161 Regex!18824)) )
))
(declare-datatypes ((List!70963 0))(
  ( (Nil!70839) (Cons!70839 (h!77287 Regex!18824) (t!385035 List!70963)) )
))
(declare-datatypes ((Context!15528 0))(
  ( (Context!15529 (exprs!8264 List!70963)) )
))
(declare-fun ct2!346 () Context!15528)

(declare-fun nullableContext!314 (Context!15528) Bool)

(assert (=> b!7273942 (= res!2948599 (nullableContext!314 ct2!346))))

(declare-fun e!4361930 () Bool)

(assert (=> b!7273943 (= e!4361932 e!4361930)))

(declare-fun res!2948600 () Bool)

(assert (=> b!7273943 (=> (not res!2948600) (not e!4361930))))

(declare-fun ct1!250 () Context!15528)

(declare-fun forall!17651 (List!70963 Int) Bool)

(assert (=> b!7273943 (= res!2948600 (forall!17651 (exprs!8264 ct1!250) lambda!449427))))

(declare-datatypes ((Unit!164258 0))(
  ( (Unit!164259) )
))
(declare-fun lt!2596354 () Unit!164258)

(declare-fun lemmaConcatPreservesForall!1577 (List!70963 List!70963 Int) Unit!164258)

(assert (=> b!7273943 (= lt!2596354 (lemmaConcatPreservesForall!1577 (exprs!8264 ct1!250) (exprs!8264 ct2!346) lambda!449426))))

(declare-fun b!7273944 () Bool)

(declare-fun res!2948602 () Bool)

(assert (=> b!7273944 (=> (not res!2948602) (not e!4361932))))

(assert (=> b!7273944 (= res!2948602 (nullableContext!314 ct1!250))))

(declare-fun b!7273945 () Bool)

(declare-fun e!4361933 () Bool)

(declare-fun tp_is_empty!47113 () Bool)

(declare-fun tp!2041652 () Bool)

(assert (=> b!7273945 (= e!4361933 (and tp_is_empty!47113 tp!2041652))))

(declare-fun b!7273946 () Bool)

(declare-fun res!2948598 () Bool)

(assert (=> b!7273946 (=> (not res!2948598) (not e!4361932))))

(declare-datatypes ((List!70964 0))(
  ( (Nil!70840) (Cons!70840 (h!77288 C!37922) (t!385036 List!70964)) )
))
(declare-fun s!7854 () List!70964)

(assert (=> b!7273946 (= res!2948598 (not (is-Cons!70840 s!7854)))))

(declare-fun b!7273947 () Bool)

(assert (=> b!7273947 (= e!4361930 (not (forall!17651 (exprs!8264 ct2!346) lambda!449427)))))

(declare-fun res!2948601 () Bool)

(assert (=> start!710172 (=> (not res!2948601) (not e!4361932))))

(declare-fun matchZipper!3728 ((Set Context!15528) List!70964) Bool)

(assert (=> start!710172 (= res!2948601 (matchZipper!3728 (set.insert ct2!346 (as set.empty (Set Context!15528))) s!7854))))

(assert (=> start!710172 e!4361932))

(declare-fun e!4361934 () Bool)

(declare-fun inv!90071 (Context!15528) Bool)

(assert (=> start!710172 (and (inv!90071 ct2!346) e!4361934)))

(assert (=> start!710172 e!4361933))

(declare-fun e!4361931 () Bool)

(assert (=> start!710172 (and (inv!90071 ct1!250) e!4361931)))

(declare-fun b!7273948 () Bool)

(declare-fun tp!2041653 () Bool)

(assert (=> b!7273948 (= e!4361934 tp!2041653)))

(declare-fun b!7273949 () Bool)

(declare-fun tp!2041651 () Bool)

(assert (=> b!7273949 (= e!4361931 tp!2041651)))

(assert (= (and start!710172 res!2948601) b!7273944))

(assert (= (and b!7273944 res!2948602) b!7273946))

(assert (= (and b!7273946 res!2948598) b!7273942))

(assert (= (and b!7273942 res!2948599) b!7273943))

(assert (= (and b!7273943 res!2948600) b!7273947))

(assert (= start!710172 b!7273948))

(assert (= (and start!710172 (is-Cons!70840 s!7854)) b!7273945))

(assert (= start!710172 b!7273949))

(declare-fun m!7960530 () Bool)

(assert (=> b!7273943 m!7960530))

(declare-fun m!7960532 () Bool)

(assert (=> b!7273943 m!7960532))

(declare-fun m!7960534 () Bool)

(assert (=> start!710172 m!7960534))

(assert (=> start!710172 m!7960534))

(declare-fun m!7960536 () Bool)

(assert (=> start!710172 m!7960536))

(declare-fun m!7960538 () Bool)

(assert (=> start!710172 m!7960538))

(declare-fun m!7960540 () Bool)

(assert (=> start!710172 m!7960540))

(declare-fun m!7960542 () Bool)

(assert (=> b!7273944 m!7960542))

(declare-fun m!7960544 () Bool)

(assert (=> b!7273942 m!7960544))

(declare-fun m!7960546 () Bool)

(assert (=> b!7273947 m!7960546))

(push 1)

(assert tp_is_empty!47113)

(assert (not b!7273948))

(assert (not start!710172))

(assert (not b!7273942))

(assert (not b!7273943))

(assert (not b!7273945))

(assert (not b!7273944))

(assert (not b!7273947))

(assert (not b!7273949))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1911702 () Bool)

(declare-fun d!2263947 () Bool)

(assert (= bs!1911702 (and d!2263947 b!7273943)))

(declare-fun lambda!449436 () Int)

(assert (=> bs!1911702 (= lambda!449436 lambda!449426)))

(assert (=> bs!1911702 (not (= lambda!449436 lambda!449427))))

(assert (=> d!2263947 (= (nullableContext!314 ct1!250) (forall!17651 (exprs!8264 ct1!250) lambda!449436))))

(declare-fun bs!1911703 () Bool)

(assert (= bs!1911703 d!2263947))

(declare-fun m!7960566 () Bool)

(assert (=> bs!1911703 m!7960566))

(assert (=> b!7273944 d!2263947))

(declare-fun d!2263949 () Bool)

(declare-fun res!2948622 () Bool)

(declare-fun e!4361954 () Bool)

(assert (=> d!2263949 (=> res!2948622 e!4361954)))

(assert (=> d!2263949 (= res!2948622 (is-Nil!70839 (exprs!8264 ct2!346)))))

(assert (=> d!2263949 (= (forall!17651 (exprs!8264 ct2!346) lambda!449427) e!4361954)))

(declare-fun b!7273978 () Bool)

(declare-fun e!4361955 () Bool)

(assert (=> b!7273978 (= e!4361954 e!4361955)))

(declare-fun res!2948623 () Bool)

(assert (=> b!7273978 (=> (not res!2948623) (not e!4361955))))

(declare-fun dynLambda!28965 (Int Regex!18824) Bool)

(assert (=> b!7273978 (= res!2948623 (dynLambda!28965 lambda!449427 (h!77287 (exprs!8264 ct2!346))))))

(declare-fun b!7273979 () Bool)

(assert (=> b!7273979 (= e!4361955 (forall!17651 (t!385035 (exprs!8264 ct2!346)) lambda!449427))))

(assert (= (and d!2263949 (not res!2948622)) b!7273978))

(assert (= (and b!7273978 res!2948623) b!7273979))

(declare-fun b_lambda!280653 () Bool)

(assert (=> (not b_lambda!280653) (not b!7273978)))

(declare-fun m!7960568 () Bool)

(assert (=> b!7273978 m!7960568))

(declare-fun m!7960570 () Bool)

(assert (=> b!7273979 m!7960570))

(assert (=> b!7273947 d!2263949))

(declare-fun bs!1911704 () Bool)

(declare-fun d!2263953 () Bool)

(assert (= bs!1911704 (and d!2263953 b!7273943)))

(declare-fun lambda!449437 () Int)

(assert (=> bs!1911704 (= lambda!449437 lambda!449426)))

(assert (=> bs!1911704 (not (= lambda!449437 lambda!449427))))

(declare-fun bs!1911705 () Bool)

(assert (= bs!1911705 (and d!2263953 d!2263947)))

(assert (=> bs!1911705 (= lambda!449437 lambda!449436)))

(assert (=> d!2263953 (= (nullableContext!314 ct2!346) (forall!17651 (exprs!8264 ct2!346) lambda!449437))))

(declare-fun bs!1911706 () Bool)

(assert (= bs!1911706 d!2263953))

(declare-fun m!7960572 () Bool)

(assert (=> bs!1911706 m!7960572))

(assert (=> b!7273942 d!2263953))

(declare-fun d!2263955 () Bool)

(declare-fun res!2948624 () Bool)

(declare-fun e!4361956 () Bool)

(assert (=> d!2263955 (=> res!2948624 e!4361956)))

(assert (=> d!2263955 (= res!2948624 (is-Nil!70839 (exprs!8264 ct1!250)))))

(assert (=> d!2263955 (= (forall!17651 (exprs!8264 ct1!250) lambda!449427) e!4361956)))

(declare-fun b!7273980 () Bool)

(declare-fun e!4361957 () Bool)

(assert (=> b!7273980 (= e!4361956 e!4361957)))

(declare-fun res!2948625 () Bool)

(assert (=> b!7273980 (=> (not res!2948625) (not e!4361957))))

(assert (=> b!7273980 (= res!2948625 (dynLambda!28965 lambda!449427 (h!77287 (exprs!8264 ct1!250))))))

(declare-fun b!7273981 () Bool)

(assert (=> b!7273981 (= e!4361957 (forall!17651 (t!385035 (exprs!8264 ct1!250)) lambda!449427))))

(assert (= (and d!2263955 (not res!2948624)) b!7273980))

(assert (= (and b!7273980 res!2948625) b!7273981))

(declare-fun b_lambda!280655 () Bool)

(assert (=> (not b_lambda!280655) (not b!7273980)))

(declare-fun m!7960574 () Bool)

(assert (=> b!7273980 m!7960574))

(declare-fun m!7960576 () Bool)

(assert (=> b!7273981 m!7960576))

(assert (=> b!7273943 d!2263955))

(declare-fun d!2263957 () Bool)

(declare-fun ++!16720 (List!70963 List!70963) List!70963)

(assert (=> d!2263957 (forall!17651 (++!16720 (exprs!8264 ct1!250) (exprs!8264 ct2!346)) lambda!449426)))

(declare-fun lt!2596360 () Unit!164258)

(declare-fun choose!56455 (List!70963 List!70963 Int) Unit!164258)

(assert (=> d!2263957 (= lt!2596360 (choose!56455 (exprs!8264 ct1!250) (exprs!8264 ct2!346) lambda!449426))))

(assert (=> d!2263957 (forall!17651 (exprs!8264 ct1!250) lambda!449426)))

(assert (=> d!2263957 (= (lemmaConcatPreservesForall!1577 (exprs!8264 ct1!250) (exprs!8264 ct2!346) lambda!449426) lt!2596360)))

(declare-fun bs!1911707 () Bool)

(assert (= bs!1911707 d!2263957))

(declare-fun m!7960578 () Bool)

(assert (=> bs!1911707 m!7960578))

(assert (=> bs!1911707 m!7960578))

(declare-fun m!7960580 () Bool)

(assert (=> bs!1911707 m!7960580))

(declare-fun m!7960582 () Bool)

(assert (=> bs!1911707 m!7960582))

(declare-fun m!7960584 () Bool)

(assert (=> bs!1911707 m!7960584))

(assert (=> b!7273943 d!2263957))

(declare-fun d!2263959 () Bool)

(declare-fun c!1354346 () Bool)

(declare-fun isEmpty!40744 (List!70964) Bool)

(assert (=> d!2263959 (= c!1354346 (isEmpty!40744 s!7854))))

(declare-fun e!4361966 () Bool)

(assert (=> d!2263959 (= (matchZipper!3728 (set.insert ct2!346 (as set.empty (Set Context!15528))) s!7854) e!4361966)))

(declare-fun b!7273992 () Bool)

(declare-fun nullableZipper!3026 ((Set Context!15528)) Bool)

(assert (=> b!7273992 (= e!4361966 (nullableZipper!3026 (set.insert ct2!346 (as set.empty (Set Context!15528)))))))

(declare-fun b!7273993 () Bool)

(declare-fun derivationStepZipper!3562 ((Set Context!15528) C!37922) (Set Context!15528))

(declare-fun head!15024 (List!70964) C!37922)

(declare-fun tail!14531 (List!70964) List!70964)

(assert (=> b!7273993 (= e!4361966 (matchZipper!3728 (derivationStepZipper!3562 (set.insert ct2!346 (as set.empty (Set Context!15528))) (head!15024 s!7854)) (tail!14531 s!7854)))))

(assert (= (and d!2263959 c!1354346) b!7273992))

(assert (= (and d!2263959 (not c!1354346)) b!7273993))

(declare-fun m!7960590 () Bool)

(assert (=> d!2263959 m!7960590))

(assert (=> b!7273992 m!7960534))

(declare-fun m!7960592 () Bool)

(assert (=> b!7273992 m!7960592))

(declare-fun m!7960594 () Bool)

(assert (=> b!7273993 m!7960594))

(assert (=> b!7273993 m!7960534))

(assert (=> b!7273993 m!7960594))

(declare-fun m!7960596 () Bool)

(assert (=> b!7273993 m!7960596))

(declare-fun m!7960598 () Bool)

(assert (=> b!7273993 m!7960598))

(assert (=> b!7273993 m!7960596))

(assert (=> b!7273993 m!7960598))

(declare-fun m!7960600 () Bool)

(assert (=> b!7273993 m!7960600))

(assert (=> start!710172 d!2263959))

(declare-fun bs!1911709 () Bool)

(declare-fun d!2263963 () Bool)

(assert (= bs!1911709 (and d!2263963 b!7273943)))

(declare-fun lambda!449443 () Int)

(assert (=> bs!1911709 (not (= lambda!449443 lambda!449426))))

(assert (=> bs!1911709 (= lambda!449443 lambda!449427)))

(declare-fun bs!1911711 () Bool)

(assert (= bs!1911711 (and d!2263963 d!2263947)))

(assert (=> bs!1911711 (not (= lambda!449443 lambda!449436))))

(declare-fun bs!1911712 () Bool)

(assert (= bs!1911712 (and d!2263963 d!2263953)))

(assert (=> bs!1911712 (not (= lambda!449443 lambda!449437))))

(assert (=> d!2263963 (= (inv!90071 ct2!346) (forall!17651 (exprs!8264 ct2!346) lambda!449443))))

(declare-fun bs!1911713 () Bool)

(assert (= bs!1911713 d!2263963))

(declare-fun m!7960604 () Bool)

(assert (=> bs!1911713 m!7960604))

(assert (=> start!710172 d!2263963))

(declare-fun bs!1911714 () Bool)

(declare-fun d!2263967 () Bool)

(assert (= bs!1911714 (and d!2263967 d!2263947)))

(declare-fun lambda!449444 () Int)

(assert (=> bs!1911714 (not (= lambda!449444 lambda!449436))))

(declare-fun bs!1911715 () Bool)

(assert (= bs!1911715 (and d!2263967 d!2263953)))

(assert (=> bs!1911715 (not (= lambda!449444 lambda!449437))))

(declare-fun bs!1911716 () Bool)

(assert (= bs!1911716 (and d!2263967 b!7273943)))

(assert (=> bs!1911716 (not (= lambda!449444 lambda!449426))))

(assert (=> bs!1911716 (= lambda!449444 lambda!449427)))

(declare-fun bs!1911717 () Bool)

(assert (= bs!1911717 (and d!2263967 d!2263963)))

(assert (=> bs!1911717 (= lambda!449444 lambda!449443)))

(assert (=> d!2263967 (= (inv!90071 ct1!250) (forall!17651 (exprs!8264 ct1!250) lambda!449444))))

(declare-fun bs!1911718 () Bool)

(assert (= bs!1911718 d!2263967))

(declare-fun m!7960606 () Bool)

(assert (=> bs!1911718 m!7960606))

(assert (=> start!710172 d!2263967))

(declare-fun b!7274000 () Bool)

(declare-fun e!4361971 () Bool)

(declare-fun tp!2041665 () Bool)

(assert (=> b!7274000 (= e!4361971 (and tp_is_empty!47113 tp!2041665))))

(assert (=> b!7273945 (= tp!2041652 e!4361971)))

(assert (= (and b!7273945 (is-Cons!70840 (t!385036 s!7854))) b!7274000))

(declare-fun b!7274005 () Bool)

(declare-fun e!4361974 () Bool)

(declare-fun tp!2041670 () Bool)

(declare-fun tp!2041671 () Bool)

(assert (=> b!7274005 (= e!4361974 (and tp!2041670 tp!2041671))))

(assert (=> b!7273948 (= tp!2041653 e!4361974)))

(assert (= (and b!7273948 (is-Cons!70839 (exprs!8264 ct2!346))) b!7274005))

(declare-fun b!7274006 () Bool)

(declare-fun e!4361975 () Bool)

(declare-fun tp!2041672 () Bool)

(declare-fun tp!2041673 () Bool)

(assert (=> b!7274006 (= e!4361975 (and tp!2041672 tp!2041673))))

(assert (=> b!7273949 (= tp!2041651 e!4361975)))

(assert (= (and b!7273949 (is-Cons!70839 (exprs!8264 ct1!250))) b!7274006))

(declare-fun b_lambda!280661 () Bool)

(assert (= b_lambda!280653 (or b!7273943 b_lambda!280661)))

(declare-fun bs!1911719 () Bool)

(declare-fun d!2263971 () Bool)

(assert (= bs!1911719 (and d!2263971 b!7273943)))

(declare-fun validRegex!9596 (Regex!18824) Bool)

(assert (=> bs!1911719 (= (dynLambda!28965 lambda!449427 (h!77287 (exprs!8264 ct2!346))) (validRegex!9596 (h!77287 (exprs!8264 ct2!346))))))

(declare-fun m!7960612 () Bool)

(assert (=> bs!1911719 m!7960612))

(assert (=> b!7273978 d!2263971))

(declare-fun b_lambda!280663 () Bool)

(assert (= b_lambda!280655 (or b!7273943 b_lambda!280663)))

(declare-fun bs!1911720 () Bool)

(declare-fun d!2263973 () Bool)

(assert (= bs!1911720 (and d!2263973 b!7273943)))

(assert (=> bs!1911720 (= (dynLambda!28965 lambda!449427 (h!77287 (exprs!8264 ct1!250))) (validRegex!9596 (h!77287 (exprs!8264 ct1!250))))))

(declare-fun m!7960614 () Bool)

(assert (=> bs!1911720 m!7960614))

(assert (=> b!7273980 d!2263973))

(push 1)

(assert (not b!7273993))

(assert (not d!2263947))

(assert (not b!7274005))

(assert (not b_lambda!280661))

(assert (not b!7273992))

(assert (not d!2263959))

(assert (not b!7273979))

(assert (not bs!1911720))

(assert (not d!2263967))

(assert tp_is_empty!47113)

(assert (not d!2263957))

(assert (not b_lambda!280663))

(assert (not b!7274006))

(assert (not d!2263963))

(assert (not d!2263953))

(assert (not bs!1911719))

(assert (not b!7274000))

(assert (not b!7273981))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

