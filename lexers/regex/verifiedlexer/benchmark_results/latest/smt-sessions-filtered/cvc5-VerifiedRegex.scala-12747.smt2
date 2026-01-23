; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!704690 () Bool)

(assert start!704690)

(declare-fun b!7246312 () Bool)

(declare-fun res!2939278 () Bool)

(declare-fun e!4344727 () Bool)

(assert (=> b!7246312 (=> (not res!2939278) (not e!4344727))))

(declare-datatypes ((C!37478 0))(
  ( (C!37479 (val!28687 Int)) )
))
(declare-datatypes ((Regex!18602 0))(
  ( (ElementMatch!18602 (c!1346192 C!37478)) (Concat!27447 (regOne!37716 Regex!18602) (regTwo!37716 Regex!18602)) (EmptyExpr!18602) (Star!18602 (reg!18931 Regex!18602)) (EmptyLang!18602) (Union!18602 (regOne!37717 Regex!18602) (regTwo!37717 Regex!18602)) )
))
(declare-datatypes ((List!70402 0))(
  ( (Nil!70278) (Cons!70278 (h!76726 Regex!18602) (t!384454 List!70402)) )
))
(declare-datatypes ((Context!15084 0))(
  ( (Context!15085 (exprs!8042 List!70402)) )
))
(declare-fun ct2!328 () Context!15084)

(declare-datatypes ((List!70403 0))(
  ( (Nil!70279) (Cons!70279 (h!76727 C!37478) (t!384455 List!70403)) )
))
(declare-fun s2!1849 () List!70403)

(declare-fun matchZipper!3512 ((Set Context!15084) List!70403) Bool)

(assert (=> b!7246312 (= res!2939278 (matchZipper!3512 (set.insert ct2!328 (as set.empty (Set Context!15084))) s2!1849))))

(declare-fun b!7246313 () Bool)

(declare-fun e!4344724 () Bool)

(declare-fun tp!2036419 () Bool)

(assert (=> b!7246313 (= e!4344724 tp!2036419)))

(declare-fun res!2939279 () Bool)

(assert (=> start!704690 (=> (not res!2939279) (not e!4344727))))

(declare-fun ct1!232 () Context!15084)

(declare-fun s1!1971 () List!70403)

(assert (=> start!704690 (= res!2939279 (matchZipper!3512 (set.insert ct1!232 (as set.empty (Set Context!15084))) s1!1971))))

(assert (=> start!704690 e!4344727))

(declare-fun e!4344723 () Bool)

(declare-fun inv!89516 (Context!15084) Bool)

(assert (=> start!704690 (and (inv!89516 ct1!232) e!4344723)))

(declare-fun e!4344726 () Bool)

(assert (=> start!704690 e!4344726))

(assert (=> start!704690 (and (inv!89516 ct2!328) e!4344724)))

(declare-fun e!4344725 () Bool)

(assert (=> start!704690 e!4344725))

(declare-fun b!7246314 () Bool)

(declare-fun tp_is_empty!46669 () Bool)

(declare-fun tp!2036418 () Bool)

(assert (=> b!7246314 (= e!4344725 (and tp_is_empty!46669 tp!2036418))))

(declare-fun b!7246315 () Bool)

(declare-fun tp!2036420 () Bool)

(assert (=> b!7246315 (= e!4344726 (and tp_is_empty!46669 tp!2036420))))

(declare-fun b!7246316 () Bool)

(declare-fun lt!2582806 () Int)

(declare-fun lt!2582807 () Int)

(assert (=> b!7246316 (= e!4344727 (or (< lt!2582806 0) (< lt!2582807 0)))))

(declare-fun size!41671 (List!70403) Int)

(assert (=> b!7246316 (= lt!2582807 (size!41671 s2!1849))))

(assert (=> b!7246316 (= lt!2582806 (size!41671 s1!1971))))

(declare-fun b!7246317 () Bool)

(declare-fun tp!2036417 () Bool)

(assert (=> b!7246317 (= e!4344723 tp!2036417)))

(assert (= (and start!704690 res!2939279) b!7246312))

(assert (= (and b!7246312 res!2939278) b!7246316))

(assert (= start!704690 b!7246317))

(assert (= (and start!704690 (is-Cons!70279 s1!1971)) b!7246315))

(assert (= start!704690 b!7246313))

(assert (= (and start!704690 (is-Cons!70279 s2!1849)) b!7246314))

(declare-fun m!7923118 () Bool)

(assert (=> b!7246312 m!7923118))

(assert (=> b!7246312 m!7923118))

(declare-fun m!7923120 () Bool)

(assert (=> b!7246312 m!7923120))

(declare-fun m!7923122 () Bool)

(assert (=> start!704690 m!7923122))

(assert (=> start!704690 m!7923122))

(declare-fun m!7923124 () Bool)

(assert (=> start!704690 m!7923124))

(declare-fun m!7923126 () Bool)

(assert (=> start!704690 m!7923126))

(declare-fun m!7923128 () Bool)

(assert (=> start!704690 m!7923128))

(declare-fun m!7923130 () Bool)

(assert (=> b!7246316 m!7923130))

(declare-fun m!7923132 () Bool)

(assert (=> b!7246316 m!7923132))

(push 1)

(assert tp_is_empty!46669)

(assert (not start!704690))

(assert (not b!7246314))

(assert (not b!7246313))

(assert (not b!7246315))

(assert (not b!7246316))

(assert (not b!7246317))

(assert (not b!7246312))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2251880 () Bool)

(declare-fun c!1346198 () Bool)

(declare-fun isEmpty!40482 (List!70403) Bool)

(assert (=> d!2251880 (= c!1346198 (isEmpty!40482 s2!1849))))

(declare-fun e!4344747 () Bool)

(assert (=> d!2251880 (= (matchZipper!3512 (set.insert ct2!328 (as set.empty (Set Context!15084))) s2!1849) e!4344747)))

(declare-fun b!7246344 () Bool)

(declare-fun nullableZipper!2885 ((Set Context!15084)) Bool)

(assert (=> b!7246344 (= e!4344747 (nullableZipper!2885 (set.insert ct2!328 (as set.empty (Set Context!15084)))))))

(declare-fun b!7246345 () Bool)

(declare-fun derivationStepZipper!3390 ((Set Context!15084) C!37478) (Set Context!15084))

(declare-fun head!14873 (List!70403) C!37478)

(declare-fun tail!14275 (List!70403) List!70403)

(assert (=> b!7246345 (= e!4344747 (matchZipper!3512 (derivationStepZipper!3390 (set.insert ct2!328 (as set.empty (Set Context!15084))) (head!14873 s2!1849)) (tail!14275 s2!1849)))))

(assert (= (and d!2251880 c!1346198) b!7246344))

(assert (= (and d!2251880 (not c!1346198)) b!7246345))

(declare-fun m!7923150 () Bool)

(assert (=> d!2251880 m!7923150))

(assert (=> b!7246344 m!7923118))

(declare-fun m!7923152 () Bool)

(assert (=> b!7246344 m!7923152))

(declare-fun m!7923154 () Bool)

(assert (=> b!7246345 m!7923154))

(assert (=> b!7246345 m!7923118))

(assert (=> b!7246345 m!7923154))

(declare-fun m!7923156 () Bool)

(assert (=> b!7246345 m!7923156))

(declare-fun m!7923158 () Bool)

(assert (=> b!7246345 m!7923158))

(assert (=> b!7246345 m!7923156))

(assert (=> b!7246345 m!7923158))

(declare-fun m!7923160 () Bool)

(assert (=> b!7246345 m!7923160))

(assert (=> b!7246312 d!2251880))

(declare-fun d!2251884 () Bool)

(declare-fun c!1346200 () Bool)

(assert (=> d!2251884 (= c!1346200 (isEmpty!40482 s1!1971))))

(declare-fun e!4344749 () Bool)

(assert (=> d!2251884 (= (matchZipper!3512 (set.insert ct1!232 (as set.empty (Set Context!15084))) s1!1971) e!4344749)))

(declare-fun b!7246348 () Bool)

(assert (=> b!7246348 (= e!4344749 (nullableZipper!2885 (set.insert ct1!232 (as set.empty (Set Context!15084)))))))

(declare-fun b!7246349 () Bool)

(assert (=> b!7246349 (= e!4344749 (matchZipper!3512 (derivationStepZipper!3390 (set.insert ct1!232 (as set.empty (Set Context!15084))) (head!14873 s1!1971)) (tail!14275 s1!1971)))))

(assert (= (and d!2251884 c!1346200) b!7246348))

(assert (= (and d!2251884 (not c!1346200)) b!7246349))

(declare-fun m!7923172 () Bool)

(assert (=> d!2251884 m!7923172))

(assert (=> b!7246348 m!7923122))

(declare-fun m!7923174 () Bool)

(assert (=> b!7246348 m!7923174))

(declare-fun m!7923176 () Bool)

(assert (=> b!7246349 m!7923176))

(assert (=> b!7246349 m!7923122))

(assert (=> b!7246349 m!7923176))

(declare-fun m!7923180 () Bool)

(assert (=> b!7246349 m!7923180))

(declare-fun m!7923182 () Bool)

(assert (=> b!7246349 m!7923182))

(assert (=> b!7246349 m!7923180))

(assert (=> b!7246349 m!7923182))

(declare-fun m!7923184 () Bool)

(assert (=> b!7246349 m!7923184))

(assert (=> start!704690 d!2251884))

(declare-fun d!2251888 () Bool)

(declare-fun lambda!443180 () Int)

(declare-fun forall!17445 (List!70402 Int) Bool)

(assert (=> d!2251888 (= (inv!89516 ct1!232) (forall!17445 (exprs!8042 ct1!232) lambda!443180))))

(declare-fun bs!1905270 () Bool)

(assert (= bs!1905270 d!2251888))

(declare-fun m!7923186 () Bool)

(assert (=> bs!1905270 m!7923186))

(assert (=> start!704690 d!2251888))

(declare-fun bs!1905271 () Bool)

(declare-fun d!2251890 () Bool)

(assert (= bs!1905271 (and d!2251890 d!2251888)))

(declare-fun lambda!443181 () Int)

(assert (=> bs!1905271 (= lambda!443181 lambda!443180)))

(assert (=> d!2251890 (= (inv!89516 ct2!328) (forall!17445 (exprs!8042 ct2!328) lambda!443181))))

(declare-fun bs!1905272 () Bool)

(assert (= bs!1905272 d!2251890))

(declare-fun m!7923188 () Bool)

(assert (=> bs!1905272 m!7923188))

(assert (=> start!704690 d!2251890))

(declare-fun d!2251892 () Bool)

(declare-fun lt!2582816 () Int)

(assert (=> d!2251892 (>= lt!2582816 0)))

(declare-fun e!4344752 () Int)

(assert (=> d!2251892 (= lt!2582816 e!4344752)))

(declare-fun c!1346203 () Bool)

(assert (=> d!2251892 (= c!1346203 (is-Nil!70279 s2!1849))))

(assert (=> d!2251892 (= (size!41671 s2!1849) lt!2582816)))

(declare-fun b!7246354 () Bool)

(assert (=> b!7246354 (= e!4344752 0)))

(declare-fun b!7246355 () Bool)

(assert (=> b!7246355 (= e!4344752 (+ 1 (size!41671 (t!384455 s2!1849))))))

(assert (= (and d!2251892 c!1346203) b!7246354))

(assert (= (and d!2251892 (not c!1346203)) b!7246355))

(declare-fun m!7923190 () Bool)

(assert (=> b!7246355 m!7923190))

(assert (=> b!7246316 d!2251892))

(declare-fun d!2251894 () Bool)

(declare-fun lt!2582817 () Int)

(assert (=> d!2251894 (>= lt!2582817 0)))

(declare-fun e!4344753 () Int)

(assert (=> d!2251894 (= lt!2582817 e!4344753)))

(declare-fun c!1346204 () Bool)

(assert (=> d!2251894 (= c!1346204 (is-Nil!70279 s1!1971))))

(assert (=> d!2251894 (= (size!41671 s1!1971) lt!2582817)))

(declare-fun b!7246356 () Bool)

(assert (=> b!7246356 (= e!4344753 0)))

(declare-fun b!7246357 () Bool)

(assert (=> b!7246357 (= e!4344753 (+ 1 (size!41671 (t!384455 s1!1971))))))

(assert (= (and d!2251894 c!1346204) b!7246356))

(assert (= (and d!2251894 (not c!1346204)) b!7246357))

(declare-fun m!7923192 () Bool)

(assert (=> b!7246357 m!7923192))

(assert (=> b!7246316 d!2251894))

(declare-fun b!7246362 () Bool)

(declare-fun e!4344756 () Bool)

(declare-fun tp!2036437 () Bool)

(declare-fun tp!2036438 () Bool)

(assert (=> b!7246362 (= e!4344756 (and tp!2036437 tp!2036438))))

(assert (=> b!7246317 (= tp!2036417 e!4344756)))

(assert (= (and b!7246317 (is-Cons!70278 (exprs!8042 ct1!232))) b!7246362))

(declare-fun b!7246367 () Bool)

(declare-fun e!4344759 () Bool)

(declare-fun tp!2036441 () Bool)

(assert (=> b!7246367 (= e!4344759 (and tp_is_empty!46669 tp!2036441))))

(assert (=> b!7246314 (= tp!2036418 e!4344759)))

(assert (= (and b!7246314 (is-Cons!70279 (t!384455 s2!1849))) b!7246367))

(declare-fun b!7246368 () Bool)

(declare-fun e!4344760 () Bool)

(declare-fun tp!2036442 () Bool)

(declare-fun tp!2036443 () Bool)

(assert (=> b!7246368 (= e!4344760 (and tp!2036442 tp!2036443))))

(assert (=> b!7246313 (= tp!2036419 e!4344760)))

(assert (= (and b!7246313 (is-Cons!70278 (exprs!8042 ct2!328))) b!7246368))

(declare-fun b!7246369 () Bool)

(declare-fun e!4344761 () Bool)

(declare-fun tp!2036444 () Bool)

(assert (=> b!7246369 (= e!4344761 (and tp_is_empty!46669 tp!2036444))))

(assert (=> b!7246315 (= tp!2036420 e!4344761)))

(assert (= (and b!7246315 (is-Cons!70279 (t!384455 s1!1971))) b!7246369))

(push 1)

(assert (not b!7246348))

(assert (not b!7246357))

(assert (not d!2251890))

(assert (not d!2251888))

(assert (not d!2251880))

(assert (not b!7246345))

(assert (not d!2251884))

(assert (not b!7246355))

(assert (not b!7246344))

(assert (not b!7246362))

(assert (not b!7246349))

(assert (not b!7246368))

(assert (not b!7246369))

(assert (not b!7246367))

(assert tp_is_empty!46669)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

