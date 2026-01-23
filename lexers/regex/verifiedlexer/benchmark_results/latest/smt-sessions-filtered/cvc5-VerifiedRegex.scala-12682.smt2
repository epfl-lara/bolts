; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701214 () Bool)

(assert start!701214)

(declare-fun b!7229704 () Bool)

(declare-fun e!4333941 () Bool)

(declare-fun tp_is_empty!46409 () Bool)

(declare-fun tp!2033426 () Bool)

(assert (=> b!7229704 (= e!4333941 (and tp_is_empty!46409 tp!2033426))))

(declare-fun b!7229705 () Bool)

(declare-fun e!4333940 () Bool)

(declare-fun e!4333942 () Bool)

(assert (=> b!7229705 (= e!4333940 (not e!4333942))))

(declare-fun res!2933215 () Bool)

(assert (=> b!7229705 (=> res!2933215 e!4333942)))

(declare-datatypes ((C!37218 0))(
  ( (C!37219 (val!28557 Int)) )
))
(declare-datatypes ((Regex!18472 0))(
  ( (ElementMatch!18472 (c!1341263 C!37218)) (Concat!27317 (regOne!37456 Regex!18472) (regTwo!37456 Regex!18472)) (EmptyExpr!18472) (Star!18472 (reg!18801 Regex!18472)) (EmptyLang!18472) (Union!18472 (regOne!37457 Regex!18472) (regTwo!37457 Regex!18472)) )
))
(declare-datatypes ((List!70032 0))(
  ( (Nil!69908) (Cons!69908 (h!76356 Regex!18472) (t!384081 List!70032)) )
))
(declare-fun lt!2572644 () List!70032)

(declare-datatypes ((Context!14824 0))(
  ( (Context!14825 (exprs!7912 List!70032)) )
))
(declare-fun ct2!328 () Context!14824)

(assert (=> b!7229705 (= res!2933215 (not (= (Context!14825 lt!2572644) ct2!328)))))

(declare-fun ct1!232 () Context!14824)

(declare-datatypes ((Unit!163479 0))(
  ( (Unit!163480) )
))
(declare-fun lt!2572645 () Unit!163479)

(declare-fun lambda!438978 () Int)

(declare-fun lemmaConcatPreservesForall!1281 (List!70032 List!70032 Int) Unit!163479)

(assert (=> b!7229705 (= lt!2572645 (lemmaConcatPreservesForall!1281 (exprs!7912 ct1!232) (exprs!7912 ct2!328) lambda!438978))))

(declare-datatypes ((List!70033 0))(
  ( (Nil!69909) (Cons!69909 (h!76357 C!37218) (t!384082 List!70033)) )
))
(declare-fun s1!1971 () List!70033)

(declare-fun isEmpty!40306 (List!70033) Bool)

(assert (=> b!7229705 (isEmpty!40306 s1!1971)))

(declare-fun lt!2572646 () Unit!163479)

(declare-fun lt!2572643 () (Set Context!14824))

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!39 ((Set Context!14824) List!70033) Unit!163479)

(assert (=> b!7229705 (= lt!2572646 (lemmaZipperOfEmptyContextMatchesEmptyString!39 lt!2572643 s1!1971))))

(declare-fun b!7229706 () Bool)

(declare-fun e!4333937 () Bool)

(declare-fun tp!2033428 () Bool)

(assert (=> b!7229706 (= e!4333937 (and tp_is_empty!46409 tp!2033428))))

(declare-fun b!7229707 () Bool)

(declare-fun res!2933213 () Bool)

(assert (=> b!7229707 (=> res!2933213 e!4333942)))

(declare-fun s2!1849 () List!70033)

(declare-fun ++!16250 (List!70033 List!70033) List!70033)

(assert (=> b!7229707 (= res!2933213 (not (= (++!16250 s1!1971 s2!1849) s2!1849)))))

(declare-fun b!7229708 () Bool)

(declare-fun e!4333936 () Bool)

(assert (=> b!7229708 (= e!4333936 e!4333940)))

(declare-fun res!2933212 () Bool)

(assert (=> b!7229708 (=> (not res!2933212) (not e!4333940))))

(assert (=> b!7229708 (= res!2933212 (is-Nil!69908 (exprs!7912 ct1!232)))))

(declare-fun ++!16251 (List!70032 List!70032) List!70032)

(assert (=> b!7229708 (= lt!2572644 (++!16251 (exprs!7912 ct1!232) (exprs!7912 ct2!328)))))

(declare-fun lt!2572642 () Unit!163479)

(assert (=> b!7229708 (= lt!2572642 (lemmaConcatPreservesForall!1281 (exprs!7912 ct1!232) (exprs!7912 ct2!328) lambda!438978))))

(declare-fun b!7229709 () Bool)

(declare-fun e!4333938 () Bool)

(declare-fun tp!2033427 () Bool)

(assert (=> b!7229709 (= e!4333938 tp!2033427)))

(declare-fun b!7229710 () Bool)

(declare-fun res!2933211 () Bool)

(assert (=> b!7229710 (=> (not res!2933211) (not e!4333936))))

(declare-fun matchZipper!3382 ((Set Context!14824) List!70033) Bool)

(assert (=> b!7229710 (= res!2933211 (matchZipper!3382 (set.insert ct2!328 (as set.empty (Set Context!14824))) s2!1849))))

(declare-fun b!7229711 () Bool)

(declare-fun e!4333939 () Bool)

(declare-fun tp!2033425 () Bool)

(assert (=> b!7229711 (= e!4333939 tp!2033425)))

(declare-fun b!7229712 () Bool)

(declare-fun forall!17298 (List!70032 Int) Bool)

(assert (=> b!7229712 (= e!4333942 (forall!17298 (exprs!7912 ct1!232) lambda!438978))))

(declare-fun res!2933214 () Bool)

(assert (=> start!701214 (=> (not res!2933214) (not e!4333936))))

(assert (=> start!701214 (= res!2933214 (matchZipper!3382 lt!2572643 s1!1971))))

(assert (=> start!701214 (= lt!2572643 (set.insert ct1!232 (as set.empty (Set Context!14824))))))

(assert (=> start!701214 e!4333936))

(declare-fun inv!89191 (Context!14824) Bool)

(assert (=> start!701214 (and (inv!89191 ct1!232) e!4333938)))

(assert (=> start!701214 e!4333941))

(assert (=> start!701214 e!4333937))

(assert (=> start!701214 (and (inv!89191 ct2!328) e!4333939)))

(assert (= (and start!701214 res!2933214) b!7229710))

(assert (= (and b!7229710 res!2933211) b!7229708))

(assert (= (and b!7229708 res!2933212) b!7229705))

(assert (= (and b!7229705 (not res!2933215)) b!7229707))

(assert (= (and b!7229707 (not res!2933213)) b!7229712))

(assert (= start!701214 b!7229709))

(assert (= (and start!701214 (is-Cons!69909 s1!1971)) b!7229704))

(assert (= (and start!701214 (is-Cons!69909 s2!1849)) b!7229706))

(assert (= start!701214 b!7229711))

(declare-fun m!7897822 () Bool)

(assert (=> b!7229710 m!7897822))

(assert (=> b!7229710 m!7897822))

(declare-fun m!7897824 () Bool)

(assert (=> b!7229710 m!7897824))

(declare-fun m!7897826 () Bool)

(assert (=> b!7229707 m!7897826))

(declare-fun m!7897828 () Bool)

(assert (=> start!701214 m!7897828))

(declare-fun m!7897830 () Bool)

(assert (=> start!701214 m!7897830))

(declare-fun m!7897832 () Bool)

(assert (=> start!701214 m!7897832))

(declare-fun m!7897834 () Bool)

(assert (=> start!701214 m!7897834))

(declare-fun m!7897836 () Bool)

(assert (=> b!7229705 m!7897836))

(declare-fun m!7897838 () Bool)

(assert (=> b!7229705 m!7897838))

(declare-fun m!7897840 () Bool)

(assert (=> b!7229705 m!7897840))

(declare-fun m!7897842 () Bool)

(assert (=> b!7229708 m!7897842))

(assert (=> b!7229708 m!7897836))

(declare-fun m!7897844 () Bool)

(assert (=> b!7229712 m!7897844))

(push 1)

(assert (not b!7229706))

(assert (not b!7229709))

(assert (not b!7229712))

(assert (not b!7229707))

(assert (not b!7229710))

(assert (not b!7229704))

(assert (not b!7229711))

(assert (not b!7229708))

(assert (not start!701214))

(assert tp_is_empty!46409)

(assert (not b!7229705))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!4333968 () Bool)

(declare-fun b!7229751 () Bool)

(declare-fun lt!2572664 () List!70033)

(assert (=> b!7229751 (= e!4333968 (or (not (= s2!1849 Nil!69909)) (= lt!2572664 s1!1971)))))

(declare-fun d!2245225 () Bool)

(assert (=> d!2245225 e!4333968))

(declare-fun res!2933235 () Bool)

(assert (=> d!2245225 (=> (not res!2933235) (not e!4333968))))

(declare-fun content!14348 (List!70033) (Set C!37218))

(assert (=> d!2245225 (= res!2933235 (= (content!14348 lt!2572664) (set.union (content!14348 s1!1971) (content!14348 s2!1849))))))

(declare-fun e!4333969 () List!70033)

(assert (=> d!2245225 (= lt!2572664 e!4333969)))

(declare-fun c!1341267 () Bool)

(assert (=> d!2245225 (= c!1341267 (is-Nil!69909 s1!1971))))

(assert (=> d!2245225 (= (++!16250 s1!1971 s2!1849) lt!2572664)))

(declare-fun b!7229748 () Bool)

(assert (=> b!7229748 (= e!4333969 s2!1849)))

(declare-fun b!7229750 () Bool)

(declare-fun res!2933236 () Bool)

(assert (=> b!7229750 (=> (not res!2933236) (not e!4333968))))

(declare-fun size!41529 (List!70033) Int)

(assert (=> b!7229750 (= res!2933236 (= (size!41529 lt!2572664) (+ (size!41529 s1!1971) (size!41529 s2!1849))))))

(declare-fun b!7229749 () Bool)

(assert (=> b!7229749 (= e!4333969 (Cons!69909 (h!76357 s1!1971) (++!16250 (t!384082 s1!1971) s2!1849)))))

(assert (= (and d!2245225 c!1341267) b!7229748))

(assert (= (and d!2245225 (not c!1341267)) b!7229749))

(assert (= (and d!2245225 res!2933235) b!7229750))

(assert (= (and b!7229750 res!2933236) b!7229751))

(declare-fun m!7897870 () Bool)

(assert (=> d!2245225 m!7897870))

(declare-fun m!7897872 () Bool)

(assert (=> d!2245225 m!7897872))

(declare-fun m!7897874 () Bool)

(assert (=> d!2245225 m!7897874))

(declare-fun m!7897876 () Bool)

(assert (=> b!7229750 m!7897876))

(declare-fun m!7897878 () Bool)

(assert (=> b!7229750 m!7897878))

(declare-fun m!7897880 () Bool)

(assert (=> b!7229750 m!7897880))

(declare-fun m!7897882 () Bool)

(assert (=> b!7229749 m!7897882))

(assert (=> b!7229707 d!2245225))

(declare-fun d!2245227 () Bool)

(declare-fun res!2933241 () Bool)

(declare-fun e!4333974 () Bool)

(assert (=> d!2245227 (=> res!2933241 e!4333974)))

(assert (=> d!2245227 (= res!2933241 (is-Nil!69908 (exprs!7912 ct1!232)))))

(assert (=> d!2245227 (= (forall!17298 (exprs!7912 ct1!232) lambda!438978) e!4333974)))

(declare-fun b!7229756 () Bool)

(declare-fun e!4333975 () Bool)

(assert (=> b!7229756 (= e!4333974 e!4333975)))

(declare-fun res!2933242 () Bool)

(assert (=> b!7229756 (=> (not res!2933242) (not e!4333975))))

(declare-fun dynLambda!28494 (Int Regex!18472) Bool)

(assert (=> b!7229756 (= res!2933242 (dynLambda!28494 lambda!438978 (h!76356 (exprs!7912 ct1!232))))))

(declare-fun b!7229757 () Bool)

(assert (=> b!7229757 (= e!4333975 (forall!17298 (t!384081 (exprs!7912 ct1!232)) lambda!438978))))

(assert (= (and d!2245227 (not res!2933241)) b!7229756))

(assert (= (and b!7229756 res!2933242) b!7229757))

(declare-fun b_lambda!276971 () Bool)

(assert (=> (not b_lambda!276971) (not b!7229756)))

(declare-fun m!7897884 () Bool)

(assert (=> b!7229756 m!7897884))

(declare-fun m!7897886 () Bool)

(assert (=> b!7229757 m!7897886))

(assert (=> b!7229712 d!2245227))

(declare-fun d!2245229 () Bool)

(declare-fun c!1341270 () Bool)

(assert (=> d!2245229 (= c!1341270 (isEmpty!40306 s1!1971))))

(declare-fun e!4333978 () Bool)

(assert (=> d!2245229 (= (matchZipper!3382 lt!2572643 s1!1971) e!4333978)))

(declare-fun b!7229762 () Bool)

(declare-fun nullableZipper!2797 ((Set Context!14824)) Bool)

(assert (=> b!7229762 (= e!4333978 (nullableZipper!2797 lt!2572643))))

(declare-fun b!7229763 () Bool)

(declare-fun derivationStepZipper!3266 ((Set Context!14824) C!37218) (Set Context!14824))

(declare-fun head!14783 (List!70033) C!37218)

(declare-fun tail!14098 (List!70033) List!70033)

(assert (=> b!7229763 (= e!4333978 (matchZipper!3382 (derivationStepZipper!3266 lt!2572643 (head!14783 s1!1971)) (tail!14098 s1!1971)))))

(assert (= (and d!2245229 c!1341270) b!7229762))

(assert (= (and d!2245229 (not c!1341270)) b!7229763))

(assert (=> d!2245229 m!7897838))

(declare-fun m!7897888 () Bool)

(assert (=> b!7229762 m!7897888))

(declare-fun m!7897890 () Bool)

(assert (=> b!7229763 m!7897890))

(assert (=> b!7229763 m!7897890))

(declare-fun m!7897892 () Bool)

(assert (=> b!7229763 m!7897892))

(declare-fun m!7897894 () Bool)

(assert (=> b!7229763 m!7897894))

(assert (=> b!7229763 m!7897892))

(assert (=> b!7229763 m!7897894))

(declare-fun m!7897896 () Bool)

(assert (=> b!7229763 m!7897896))

(assert (=> start!701214 d!2245229))

(declare-fun bs!1902325 () Bool)

(declare-fun d!2245233 () Bool)

(assert (= bs!1902325 (and d!2245233 b!7229708)))

(declare-fun lambda!438988 () Int)

(assert (=> bs!1902325 (= lambda!438988 lambda!438978)))

(assert (=> d!2245233 (= (inv!89191 ct1!232) (forall!17298 (exprs!7912 ct1!232) lambda!438988))))

(declare-fun bs!1902326 () Bool)

(assert (= bs!1902326 d!2245233))

(declare-fun m!7897898 () Bool)

(assert (=> bs!1902326 m!7897898))

(assert (=> start!701214 d!2245233))

(declare-fun bs!1902327 () Bool)

(declare-fun d!2245235 () Bool)

(assert (= bs!1902327 (and d!2245235 b!7229708)))

(declare-fun lambda!438989 () Int)

(assert (=> bs!1902327 (= lambda!438989 lambda!438978)))

(declare-fun bs!1902328 () Bool)

(assert (= bs!1902328 (and d!2245235 d!2245233)))

(assert (=> bs!1902328 (= lambda!438989 lambda!438988)))

(assert (=> d!2245235 (= (inv!89191 ct2!328) (forall!17298 (exprs!7912 ct2!328) lambda!438989))))

(declare-fun bs!1902329 () Bool)

(assert (= bs!1902329 d!2245235))

(declare-fun m!7897900 () Bool)

(assert (=> bs!1902329 m!7897900))

(assert (=> start!701214 d!2245235))

(declare-fun d!2245237 () Bool)

(assert (=> d!2245237 (forall!17298 (++!16251 (exprs!7912 ct1!232) (exprs!7912 ct2!328)) lambda!438978)))

(declare-fun lt!2572669 () Unit!163479)

(declare-fun choose!55476 (List!70032 List!70032 Int) Unit!163479)

(assert (=> d!2245237 (= lt!2572669 (choose!55476 (exprs!7912 ct1!232) (exprs!7912 ct2!328) lambda!438978))))

(assert (=> d!2245237 (forall!17298 (exprs!7912 ct1!232) lambda!438978)))

(assert (=> d!2245237 (= (lemmaConcatPreservesForall!1281 (exprs!7912 ct1!232) (exprs!7912 ct2!328) lambda!438978) lt!2572669)))

(declare-fun bs!1902330 () Bool)

(assert (= bs!1902330 d!2245237))

(assert (=> bs!1902330 m!7897842))

(assert (=> bs!1902330 m!7897842))

(declare-fun m!7897902 () Bool)

(assert (=> bs!1902330 m!7897902))

(declare-fun m!7897904 () Bool)

(assert (=> bs!1902330 m!7897904))

(assert (=> bs!1902330 m!7897844))

(assert (=> b!7229705 d!2245237))

(declare-fun d!2245239 () Bool)

(assert (=> d!2245239 (= (isEmpty!40306 s1!1971) (is-Nil!69909 s1!1971))))

(assert (=> b!7229705 d!2245239))

(declare-fun d!2245241 () Bool)

(assert (=> d!2245241 (= (matchZipper!3382 lt!2572643 s1!1971) (isEmpty!40306 s1!1971))))

(declare-fun lt!2572673 () Unit!163479)

(declare-fun choose!55477 ((Set Context!14824) List!70033) Unit!163479)

(assert (=> d!2245241 (= lt!2572673 (choose!55477 lt!2572643 s1!1971))))

(assert (=> d!2245241 (= lt!2572643 (set.singleton (Context!14825 Nil!69908)))))

(assert (=> d!2245241 (= (lemmaZipperOfEmptyContextMatchesEmptyString!39 lt!2572643 s1!1971) lt!2572673)))

(declare-fun bs!1902331 () Bool)

(assert (= bs!1902331 d!2245241))

(assert (=> bs!1902331 m!7897828))

(assert (=> bs!1902331 m!7897838))

(declare-fun m!7897920 () Bool)

(assert (=> bs!1902331 m!7897920))

(assert (=> b!7229705 d!2245241))

(declare-fun d!2245245 () Bool)

(declare-fun c!1341274 () Bool)

(assert (=> d!2245245 (= c!1341274 (isEmpty!40306 s2!1849))))

(declare-fun e!4333985 () Bool)

(assert (=> d!2245245 (= (matchZipper!3382 (set.insert ct2!328 (as set.empty (Set Context!14824))) s2!1849) e!4333985)))

(declare-fun b!7229776 () Bool)

(assert (=> b!7229776 (= e!4333985 (nullableZipper!2797 (set.insert ct2!328 (as set.empty (Set Context!14824)))))))

(declare-fun b!7229777 () Bool)

(assert (=> b!7229777 (= e!4333985 (matchZipper!3382 (derivationStepZipper!3266 (set.insert ct2!328 (as set.empty (Set Context!14824))) (head!14783 s2!1849)) (tail!14098 s2!1849)))))

(assert (= (and d!2245245 c!1341274) b!7229776))

(assert (= (and d!2245245 (not c!1341274)) b!7229777))

(declare-fun m!7897922 () Bool)

(assert (=> d!2245245 m!7897922))

(assert (=> b!7229776 m!7897822))

(declare-fun m!7897924 () Bool)

(assert (=> b!7229776 m!7897924))

(declare-fun m!7897926 () Bool)

(assert (=> b!7229777 m!7897926))

(assert (=> b!7229777 m!7897822))

(assert (=> b!7229777 m!7897926))

(declare-fun m!7897928 () Bool)

(assert (=> b!7229777 m!7897928))

(declare-fun m!7897930 () Bool)

(assert (=> b!7229777 m!7897930))

(assert (=> b!7229777 m!7897928))

(assert (=> b!7229777 m!7897930))

(declare-fun m!7897932 () Bool)

(assert (=> b!7229777 m!7897932))

(assert (=> b!7229710 d!2245245))

(declare-fun b!7229787 () Bool)

(declare-fun e!4333990 () List!70032)

(assert (=> b!7229787 (= e!4333990 (Cons!69908 (h!76356 (exprs!7912 ct1!232)) (++!16251 (t!384081 (exprs!7912 ct1!232)) (exprs!7912 ct2!328))))))

(declare-fun b!7229786 () Bool)

(assert (=> b!7229786 (= e!4333990 (exprs!7912 ct2!328))))

(declare-fun b!7229789 () Bool)

(declare-fun e!4333991 () Bool)

(declare-fun lt!2572678 () List!70032)

(assert (=> b!7229789 (= e!4333991 (or (not (= (exprs!7912 ct2!328) Nil!69908)) (= lt!2572678 (exprs!7912 ct1!232))))))

(declare-fun b!7229788 () Bool)

(declare-fun res!2933254 () Bool)

(assert (=> b!7229788 (=> (not res!2933254) (not e!4333991))))

(declare-fun size!41530 (List!70032) Int)

(assert (=> b!7229788 (= res!2933254 (= (size!41530 lt!2572678) (+ (size!41530 (exprs!7912 ct1!232)) (size!41530 (exprs!7912 ct2!328)))))))

(declare-fun d!2245247 () Bool)

(assert (=> d!2245247 e!4333991))

(declare-fun res!2933253 () Bool)

(assert (=> d!2245247 (=> (not res!2933253) (not e!4333991))))

(declare-fun content!14349 (List!70032) (Set Regex!18472))

(assert (=> d!2245247 (= res!2933253 (= (content!14349 lt!2572678) (set.union (content!14349 (exprs!7912 ct1!232)) (content!14349 (exprs!7912 ct2!328)))))))

(assert (=> d!2245247 (= lt!2572678 e!4333990)))

(declare-fun c!1341277 () Bool)

(assert (=> d!2245247 (= c!1341277 (is-Nil!69908 (exprs!7912 ct1!232)))))

(assert (=> d!2245247 (= (++!16251 (exprs!7912 ct1!232) (exprs!7912 ct2!328)) lt!2572678)))

(assert (= (and d!2245247 c!1341277) b!7229786))

(assert (= (and d!2245247 (not c!1341277)) b!7229787))

(assert (= (and d!2245247 res!2933253) b!7229788))

(assert (= (and b!7229788 res!2933254) b!7229789))

(declare-fun m!7897934 () Bool)

(assert (=> b!7229787 m!7897934))

(declare-fun m!7897936 () Bool)

(assert (=> b!7229788 m!7897936))

(declare-fun m!7897938 () Bool)

(assert (=> b!7229788 m!7897938))

(declare-fun m!7897940 () Bool)

(assert (=> b!7229788 m!7897940))

(declare-fun m!7897942 () Bool)

(assert (=> d!2245247 m!7897942))

(declare-fun m!7897944 () Bool)

(assert (=> d!2245247 m!7897944))

(declare-fun m!7897946 () Bool)

(assert (=> d!2245247 m!7897946))

(assert (=> b!7229708 d!2245247))

(assert (=> b!7229708 d!2245237))

(declare-fun b!7229802 () Bool)

(declare-fun e!4333998 () Bool)

(declare-fun tp!2033443 () Bool)

(assert (=> b!7229802 (= e!4333998 (and tp_is_empty!46409 tp!2033443))))

(assert (=> b!7229706 (= tp!2033428 e!4333998)))

(assert (= (and b!7229706 (is-Cons!69909 (t!384082 s2!1849))) b!7229802))

(declare-fun b!7229807 () Bool)

(declare-fun e!4334001 () Bool)

(declare-fun tp!2033448 () Bool)

(declare-fun tp!2033449 () Bool)

(assert (=> b!7229807 (= e!4334001 (and tp!2033448 tp!2033449))))

(assert (=> b!7229711 (= tp!2033425 e!4334001)))

(assert (= (and b!7229711 (is-Cons!69908 (exprs!7912 ct2!328))) b!7229807))

(declare-fun b!7229808 () Bool)

(declare-fun e!4334002 () Bool)

(declare-fun tp!2033450 () Bool)

(assert (=> b!7229808 (= e!4334002 (and tp_is_empty!46409 tp!2033450))))

(assert (=> b!7229704 (= tp!2033426 e!4334002)))

(assert (= (and b!7229704 (is-Cons!69909 (t!384082 s1!1971))) b!7229808))

(declare-fun b!7229809 () Bool)

(declare-fun e!4334003 () Bool)

(declare-fun tp!2033451 () Bool)

(declare-fun tp!2033452 () Bool)

(assert (=> b!7229809 (= e!4334003 (and tp!2033451 tp!2033452))))

(assert (=> b!7229709 (= tp!2033427 e!4334003)))

(assert (= (and b!7229709 (is-Cons!69908 (exprs!7912 ct1!232))) b!7229809))

(declare-fun b_lambda!276973 () Bool)

(assert (= b_lambda!276971 (or b!7229708 b_lambda!276973)))

(declare-fun bs!1902332 () Bool)

(declare-fun d!2245249 () Bool)

(assert (= bs!1902332 (and d!2245249 b!7229708)))

(declare-fun validRegex!9501 (Regex!18472) Bool)

(assert (=> bs!1902332 (= (dynLambda!28494 lambda!438978 (h!76356 (exprs!7912 ct1!232))) (validRegex!9501 (h!76356 (exprs!7912 ct1!232))))))

(declare-fun m!7897948 () Bool)

(assert (=> bs!1902332 m!7897948))

(assert (=> b!7229756 d!2245249))

(push 1)

(assert (not b!7229788))

(assert (not d!2245247))

(assert (not b!7229763))

(assert (not b!7229807))

(assert (not b!7229750))

(assert (not b!7229749))

(assert (not d!2245235))

(assert (not d!2245225))

(assert tp_is_empty!46409)

(assert (not d!2245245))

(assert (not b!7229776))

(assert (not b!7229809))

(assert (not b!7229802))

(assert (not b!7229757))

(assert (not d!2245237))

(assert (not b!7229787))

(assert (not b!7229777))

(assert (not d!2245229))

(assert (not b!7229808))

(assert (not d!2245241))

(assert (not b_lambda!276973))

(assert (not d!2245233))

(assert (not bs!1902332))

(assert (not b!7229762))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

