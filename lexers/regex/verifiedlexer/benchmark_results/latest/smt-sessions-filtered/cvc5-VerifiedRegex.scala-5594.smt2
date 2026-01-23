; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!280666 () Bool)

(assert start!280666)

(declare-fun b!2875836 () Bool)

(declare-fun e!1819892 () Bool)

(declare-fun e!1819896 () Bool)

(assert (=> b!2875836 (= e!1819892 e!1819896)))

(declare-fun res!1192570 () Bool)

(assert (=> b!2875836 (=> (not res!1192570) (not e!1819896))))

(declare-datatypes ((C!17666 0))(
  ( (C!17667 (val!10867 Int)) )
))
(declare-datatypes ((List!34517 0))(
  ( (Nil!34393) (Cons!34393 (h!39813 C!17666) (t!233560 List!34517)) )
))
(declare-datatypes ((Option!6417 0))(
  ( (None!6416) (Some!6416 (v!34542 List!34517)) )
))
(declare-fun lt!1018697 () Option!6417)

(assert (=> b!2875836 (= res!1192570 (is-Some!6416 lt!1018697))))

(declare-datatypes ((Regex!8742 0))(
  ( (ElementMatch!8742 (c!466015 C!17666)) (Concat!14063 (regOne!17996 Regex!8742) (regTwo!17996 Regex!8742)) (EmptyExpr!8742) (Star!8742 (reg!9071 Regex!8742)) (EmptyLang!8742) (Union!8742 (regOne!17997 Regex!8742) (regTwo!17997 Regex!8742)) )
))
(declare-datatypes ((List!34518 0))(
  ( (Nil!34394) (Cons!34394 (h!39814 Regex!8742) (t!233561 List!34518)) )
))
(declare-datatypes ((Context!5404 0))(
  ( (Context!5405 (exprs!3202 List!34518)) )
))
(declare-fun lt!1018696 () Context!5404)

(declare-fun getLanguageWitness!435 (Context!5404) Option!6417)

(assert (=> b!2875836 (= lt!1018697 (getLanguageWitness!435 lt!1018696))))

(declare-fun c!7184 () Context!5404)

(assert (=> b!2875836 (= lt!1018696 (Context!5405 (t!233561 (exprs!3202 c!7184))))))

(declare-fun b!2875837 () Bool)

(declare-fun res!1192571 () Bool)

(declare-fun e!1819894 () Bool)

(assert (=> b!2875837 (=> (not res!1192571) (not e!1819894))))

(assert (=> b!2875837 (= res!1192571 (is-Cons!34394 (exprs!3202 c!7184)))))

(declare-fun res!1192568 () Bool)

(assert (=> start!280666 (=> (not res!1192568) (not e!1819894))))

(declare-fun lostCause!834 (Context!5404) Bool)

(assert (=> start!280666 (= res!1192568 (not (lostCause!834 c!7184)))))

(assert (=> start!280666 e!1819894))

(declare-fun e!1819893 () Bool)

(declare-fun inv!46443 (Context!5404) Bool)

(assert (=> start!280666 (and (inv!46443 c!7184) e!1819893)))

(declare-fun b!2875838 () Bool)

(declare-fun tp!923773 () Bool)

(assert (=> b!2875838 (= e!1819893 tp!923773)))

(declare-fun b!2875839 () Bool)

(declare-fun e!1819895 () Bool)

(assert (=> b!2875839 (= e!1819896 (not e!1819895))))

(declare-fun res!1192569 () Bool)

(assert (=> b!2875839 (=> res!1192569 e!1819895)))

(declare-fun lt!1018702 () Option!6417)

(declare-fun matchR!3742 (Regex!8742 List!34517) Bool)

(assert (=> b!2875839 (= res!1192569 (not (matchR!3742 (h!39814 (exprs!3202 c!7184)) (v!34542 lt!1018702))))))

(declare-fun matchZipper!484 ((Set Context!5404) List!34517) Bool)

(declare-fun get!10340 (Option!6417) List!34517)

(assert (=> b!2875839 (matchZipper!484 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (get!10340 lt!1018697))))

(declare-datatypes ((Unit!47985 0))(
  ( (Unit!47986) )
))
(declare-fun lt!1018698 () Unit!47985)

(declare-fun lemmaGetWitnessMatchesContext!41 (Context!5404) Unit!47985)

(assert (=> b!2875839 (= lt!1018698 (lemmaGetWitnessMatchesContext!41 lt!1018696))))

(assert (=> b!2875839 (matchR!3742 (h!39814 (exprs!3202 c!7184)) (get!10340 lt!1018702))))

(declare-fun lt!1018701 () Unit!47985)

(declare-fun lemmaGetWitnessMatches!49 (Regex!8742) Unit!47985)

(assert (=> b!2875839 (= lt!1018701 (lemmaGetWitnessMatches!49 (h!39814 (exprs!3202 c!7184))))))

(declare-fun b!2875840 () Bool)

(declare-fun lt!1018700 () Context!5404)

(assert (=> b!2875840 (= e!1819895 (inv!46443 lt!1018700))))

(declare-fun lt!1018699 () (Set Context!5404))

(assert (=> b!2875840 (matchZipper!484 lt!1018699 (v!34542 lt!1018702))))

(declare-fun lt!1018703 () Unit!47985)

(declare-datatypes ((List!34519 0))(
  ( (Nil!34395) (Cons!34395 (h!39815 Context!5404) (t!233562 List!34519)) )
))
(declare-fun theoremZipperRegexEquiv!116 ((Set Context!5404) List!34519 Regex!8742 List!34517) Unit!47985)

(assert (=> b!2875840 (= lt!1018703 (theoremZipperRegexEquiv!116 lt!1018699 (Cons!34395 lt!1018700 Nil!34395) (h!39814 (exprs!3202 c!7184)) (v!34542 lt!1018702)))))

(assert (=> b!2875840 (= lt!1018699 (set.insert lt!1018700 (as set.empty (Set Context!5404))))))

(assert (=> b!2875840 (= lt!1018700 (Context!5405 (Cons!34394 (h!39814 (exprs!3202 c!7184)) Nil!34394)))))

(declare-fun b!2875841 () Bool)

(assert (=> b!2875841 (= e!1819894 e!1819892)))

(declare-fun res!1192572 () Bool)

(assert (=> b!2875841 (=> (not res!1192572) (not e!1819892))))

(assert (=> b!2875841 (= res!1192572 (is-Some!6416 lt!1018702))))

(declare-fun getLanguageWitness!436 (Regex!8742) Option!6417)

(assert (=> b!2875841 (= lt!1018702 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))))

(assert (= (and start!280666 res!1192568) b!2875837))

(assert (= (and b!2875837 res!1192571) b!2875841))

(assert (= (and b!2875841 res!1192572) b!2875836))

(assert (= (and b!2875836 res!1192570) b!2875839))

(assert (= (and b!2875839 (not res!1192569)) b!2875840))

(assert (= start!280666 b!2875838))

(declare-fun m!3293559 () Bool)

(assert (=> b!2875839 m!3293559))

(declare-fun m!3293561 () Bool)

(assert (=> b!2875839 m!3293561))

(declare-fun m!3293563 () Bool)

(assert (=> b!2875839 m!3293563))

(declare-fun m!3293565 () Bool)

(assert (=> b!2875839 m!3293565))

(declare-fun m!3293567 () Bool)

(assert (=> b!2875839 m!3293567))

(declare-fun m!3293569 () Bool)

(assert (=> b!2875839 m!3293569))

(declare-fun m!3293571 () Bool)

(assert (=> b!2875839 m!3293571))

(assert (=> b!2875839 m!3293567))

(assert (=> b!2875839 m!3293569))

(declare-fun m!3293573 () Bool)

(assert (=> b!2875839 m!3293573))

(assert (=> b!2875839 m!3293561))

(declare-fun m!3293575 () Bool)

(assert (=> b!2875836 m!3293575))

(declare-fun m!3293577 () Bool)

(assert (=> b!2875841 m!3293577))

(declare-fun m!3293579 () Bool)

(assert (=> b!2875840 m!3293579))

(declare-fun m!3293581 () Bool)

(assert (=> b!2875840 m!3293581))

(declare-fun m!3293583 () Bool)

(assert (=> b!2875840 m!3293583))

(declare-fun m!3293585 () Bool)

(assert (=> b!2875840 m!3293585))

(declare-fun m!3293587 () Bool)

(assert (=> start!280666 m!3293587))

(declare-fun m!3293589 () Bool)

(assert (=> start!280666 m!3293589))

(push 1)

(assert (not b!2875836))

(assert (not start!280666))

(assert (not b!2875838))

(assert (not b!2875841))

(assert (not b!2875839))

(assert (not b!2875840))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!831317 () Bool)

(assert (=> d!831317 (= (get!10340 lt!1018702) (v!34542 lt!1018702))))

(assert (=> b!2875839 d!831317))

(declare-fun d!831319 () Bool)

(assert (=> d!831319 (matchZipper!484 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (get!10340 (getLanguageWitness!435 lt!1018696)))))

(declare-fun lt!1018736 () Unit!47985)

(declare-fun choose!17003 (Context!5404) Unit!47985)

(assert (=> d!831319 (= lt!1018736 (choose!17003 lt!1018696))))

(assert (=> d!831319 (not (lostCause!834 lt!1018696))))

(assert (=> d!831319 (= (lemmaGetWitnessMatchesContext!41 lt!1018696) lt!1018736)))

(declare-fun bs!522676 () Bool)

(assert (= bs!522676 d!831319))

(assert (=> bs!522676 m!3293567))

(assert (=> bs!522676 m!3293575))

(assert (=> bs!522676 m!3293575))

(declare-fun m!3293623 () Bool)

(assert (=> bs!522676 m!3293623))

(declare-fun m!3293625 () Bool)

(assert (=> bs!522676 m!3293625))

(assert (=> bs!522676 m!3293567))

(assert (=> bs!522676 m!3293623))

(declare-fun m!3293627 () Bool)

(assert (=> bs!522676 m!3293627))

(declare-fun m!3293629 () Bool)

(assert (=> bs!522676 m!3293629))

(assert (=> b!2875839 d!831319))

(declare-fun d!831321 () Bool)

(assert (=> d!831321 (matchR!3742 (h!39814 (exprs!3202 c!7184)) (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))))

(declare-fun lt!1018739 () Unit!47985)

(declare-fun choose!17004 (Regex!8742) Unit!47985)

(assert (=> d!831321 (= lt!1018739 (choose!17004 (h!39814 (exprs!3202 c!7184))))))

(declare-fun validRegex!3520 (Regex!8742) Bool)

(assert (=> d!831321 (validRegex!3520 (h!39814 (exprs!3202 c!7184)))))

(assert (=> d!831321 (= (lemmaGetWitnessMatches!49 (h!39814 (exprs!3202 c!7184))) lt!1018739)))

(declare-fun bs!522677 () Bool)

(assert (= bs!522677 d!831321))

(declare-fun m!3293631 () Bool)

(assert (=> bs!522677 m!3293631))

(declare-fun m!3293633 () Bool)

(assert (=> bs!522677 m!3293633))

(assert (=> bs!522677 m!3293577))

(assert (=> bs!522677 m!3293631))

(declare-fun m!3293635 () Bool)

(assert (=> bs!522677 m!3293635))

(declare-fun m!3293637 () Bool)

(assert (=> bs!522677 m!3293637))

(assert (=> bs!522677 m!3293577))

(assert (=> b!2875839 d!831321))

(declare-fun b!2875900 () Bool)

(declare-fun e!1819932 () Bool)

(declare-fun derivativeStep!2325 (Regex!8742 C!17666) Regex!8742)

(declare-fun head!6349 (List!34517) C!17666)

(declare-fun tail!4574 (List!34517) List!34517)

(assert (=> b!2875900 (= e!1819932 (matchR!3742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))) (tail!4574 (v!34542 lt!1018702))))))

(declare-fun b!2875901 () Bool)

(declare-fun res!1192604 () Bool)

(declare-fun e!1819934 () Bool)

(assert (=> b!2875901 (=> (not res!1192604) (not e!1819934))))

(declare-fun isEmpty!18727 (List!34517) Bool)

(assert (=> b!2875901 (= res!1192604 (isEmpty!18727 (tail!4574 (v!34542 lt!1018702))))))

(declare-fun b!2875902 () Bool)

(declare-fun nullable!2692 (Regex!8742) Bool)

(assert (=> b!2875902 (= e!1819932 (nullable!2692 (h!39814 (exprs!3202 c!7184))))))

(declare-fun b!2875903 () Bool)

(declare-fun e!1819937 () Bool)

(declare-fun e!1819935 () Bool)

(assert (=> b!2875903 (= e!1819937 e!1819935)))

(declare-fun res!1192606 () Bool)

(assert (=> b!2875903 (=> res!1192606 e!1819935)))

(declare-fun call!186101 () Bool)

(assert (=> b!2875903 (= res!1192606 call!186101)))

(declare-fun b!2875905 () Bool)

(declare-fun e!1819936 () Bool)

(declare-fun lt!1018742 () Bool)

(assert (=> b!2875905 (= e!1819936 (not lt!1018742))))

(declare-fun b!2875906 () Bool)

(declare-fun res!1192608 () Bool)

(assert (=> b!2875906 (=> (not res!1192608) (not e!1819934))))

(assert (=> b!2875906 (= res!1192608 (not call!186101))))

(declare-fun b!2875907 () Bool)

(declare-fun e!1819933 () Bool)

(assert (=> b!2875907 (= e!1819933 e!1819936)))

(declare-fun c!466032 () Bool)

(assert (=> b!2875907 (= c!466032 (is-EmptyLang!8742 (h!39814 (exprs!3202 c!7184))))))

(declare-fun bm!186096 () Bool)

(assert (=> bm!186096 (= call!186101 (isEmpty!18727 (v!34542 lt!1018702)))))

(declare-fun b!2875908 () Bool)

(declare-fun e!1819938 () Bool)

(assert (=> b!2875908 (= e!1819938 e!1819937)))

(declare-fun res!1192607 () Bool)

(assert (=> b!2875908 (=> (not res!1192607) (not e!1819937))))

(assert (=> b!2875908 (= res!1192607 (not lt!1018742))))

(declare-fun b!2875909 () Bool)

(declare-fun res!1192609 () Bool)

(assert (=> b!2875909 (=> res!1192609 e!1819935)))

(assert (=> b!2875909 (= res!1192609 (not (isEmpty!18727 (tail!4574 (v!34542 lt!1018702)))))))

(declare-fun d!831323 () Bool)

(assert (=> d!831323 e!1819933))

(declare-fun c!466031 () Bool)

(assert (=> d!831323 (= c!466031 (is-EmptyExpr!8742 (h!39814 (exprs!3202 c!7184))))))

(assert (=> d!831323 (= lt!1018742 e!1819932)))

(declare-fun c!466033 () Bool)

(assert (=> d!831323 (= c!466033 (isEmpty!18727 (v!34542 lt!1018702)))))

(assert (=> d!831323 (validRegex!3520 (h!39814 (exprs!3202 c!7184)))))

(assert (=> d!831323 (= (matchR!3742 (h!39814 (exprs!3202 c!7184)) (v!34542 lt!1018702)) lt!1018742)))

(declare-fun b!2875904 () Bool)

(assert (=> b!2875904 (= e!1819934 (= (head!6349 (v!34542 lt!1018702)) (c!466015 (h!39814 (exprs!3202 c!7184)))))))

(declare-fun b!2875910 () Bool)

(assert (=> b!2875910 (= e!1819935 (not (= (head!6349 (v!34542 lt!1018702)) (c!466015 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun b!2875911 () Bool)

(declare-fun res!1192610 () Bool)

(assert (=> b!2875911 (=> res!1192610 e!1819938)))

(assert (=> b!2875911 (= res!1192610 e!1819934)))

(declare-fun res!1192611 () Bool)

(assert (=> b!2875911 (=> (not res!1192611) (not e!1819934))))

(assert (=> b!2875911 (= res!1192611 lt!1018742)))

(declare-fun b!2875912 () Bool)

(assert (=> b!2875912 (= e!1819933 (= lt!1018742 call!186101))))

(declare-fun b!2875913 () Bool)

(declare-fun res!1192605 () Bool)

(assert (=> b!2875913 (=> res!1192605 e!1819938)))

(assert (=> b!2875913 (= res!1192605 (not (is-ElementMatch!8742 (h!39814 (exprs!3202 c!7184)))))))

(assert (=> b!2875913 (= e!1819936 e!1819938)))

(assert (= (and d!831323 c!466033) b!2875902))

(assert (= (and d!831323 (not c!466033)) b!2875900))

(assert (= (and d!831323 c!466031) b!2875912))

(assert (= (and d!831323 (not c!466031)) b!2875907))

(assert (= (and b!2875907 c!466032) b!2875905))

(assert (= (and b!2875907 (not c!466032)) b!2875913))

(assert (= (and b!2875913 (not res!1192605)) b!2875911))

(assert (= (and b!2875911 res!1192611) b!2875906))

(assert (= (and b!2875906 res!1192608) b!2875901))

(assert (= (and b!2875901 res!1192604) b!2875904))

(assert (= (and b!2875911 (not res!1192610)) b!2875908))

(assert (= (and b!2875908 res!1192607) b!2875903))

(assert (= (and b!2875903 (not res!1192606)) b!2875909))

(assert (= (and b!2875909 (not res!1192609)) b!2875910))

(assert (= (or b!2875912 b!2875903 b!2875906) bm!186096))

(declare-fun m!3293639 () Bool)

(assert (=> b!2875904 m!3293639))

(declare-fun m!3293641 () Bool)

(assert (=> bm!186096 m!3293641))

(assert (=> b!2875910 m!3293639))

(declare-fun m!3293643 () Bool)

(assert (=> b!2875902 m!3293643))

(declare-fun m!3293645 () Bool)

(assert (=> b!2875909 m!3293645))

(assert (=> b!2875909 m!3293645))

(declare-fun m!3293647 () Bool)

(assert (=> b!2875909 m!3293647))

(assert (=> b!2875900 m!3293639))

(assert (=> b!2875900 m!3293639))

(declare-fun m!3293649 () Bool)

(assert (=> b!2875900 m!3293649))

(assert (=> b!2875900 m!3293645))

(assert (=> b!2875900 m!3293649))

(assert (=> b!2875900 m!3293645))

(declare-fun m!3293651 () Bool)

(assert (=> b!2875900 m!3293651))

(assert (=> b!2875901 m!3293645))

(assert (=> b!2875901 m!3293645))

(assert (=> b!2875901 m!3293647))

(assert (=> d!831323 m!3293641))

(assert (=> d!831323 m!3293635))

(assert (=> b!2875839 d!831323))

(declare-fun b!2875914 () Bool)

(declare-fun e!1819939 () Bool)

(assert (=> b!2875914 (= e!1819939 (matchR!3742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))) (tail!4574 (get!10340 lt!1018702))))))

(declare-fun b!2875915 () Bool)

(declare-fun res!1192612 () Bool)

(declare-fun e!1819941 () Bool)

(assert (=> b!2875915 (=> (not res!1192612) (not e!1819941))))

(assert (=> b!2875915 (= res!1192612 (isEmpty!18727 (tail!4574 (get!10340 lt!1018702))))))

(declare-fun b!2875916 () Bool)

(assert (=> b!2875916 (= e!1819939 (nullable!2692 (h!39814 (exprs!3202 c!7184))))))

(declare-fun b!2875917 () Bool)

(declare-fun e!1819944 () Bool)

(declare-fun e!1819942 () Bool)

(assert (=> b!2875917 (= e!1819944 e!1819942)))

(declare-fun res!1192614 () Bool)

(assert (=> b!2875917 (=> res!1192614 e!1819942)))

(declare-fun call!186102 () Bool)

(assert (=> b!2875917 (= res!1192614 call!186102)))

(declare-fun b!2875919 () Bool)

(declare-fun e!1819943 () Bool)

(declare-fun lt!1018743 () Bool)

(assert (=> b!2875919 (= e!1819943 (not lt!1018743))))

(declare-fun b!2875920 () Bool)

(declare-fun res!1192616 () Bool)

(assert (=> b!2875920 (=> (not res!1192616) (not e!1819941))))

(assert (=> b!2875920 (= res!1192616 (not call!186102))))

(declare-fun b!2875921 () Bool)

(declare-fun e!1819940 () Bool)

(assert (=> b!2875921 (= e!1819940 e!1819943)))

(declare-fun c!466035 () Bool)

(assert (=> b!2875921 (= c!466035 (is-EmptyLang!8742 (h!39814 (exprs!3202 c!7184))))))

(declare-fun bm!186097 () Bool)

(assert (=> bm!186097 (= call!186102 (isEmpty!18727 (get!10340 lt!1018702)))))

(declare-fun b!2875922 () Bool)

(declare-fun e!1819945 () Bool)

(assert (=> b!2875922 (= e!1819945 e!1819944)))

(declare-fun res!1192615 () Bool)

(assert (=> b!2875922 (=> (not res!1192615) (not e!1819944))))

(assert (=> b!2875922 (= res!1192615 (not lt!1018743))))

(declare-fun b!2875923 () Bool)

(declare-fun res!1192617 () Bool)

(assert (=> b!2875923 (=> res!1192617 e!1819942)))

(assert (=> b!2875923 (= res!1192617 (not (isEmpty!18727 (tail!4574 (get!10340 lt!1018702)))))))

(declare-fun d!831325 () Bool)

(assert (=> d!831325 e!1819940))

(declare-fun c!466034 () Bool)

(assert (=> d!831325 (= c!466034 (is-EmptyExpr!8742 (h!39814 (exprs!3202 c!7184))))))

(assert (=> d!831325 (= lt!1018743 e!1819939)))

(declare-fun c!466036 () Bool)

(assert (=> d!831325 (= c!466036 (isEmpty!18727 (get!10340 lt!1018702)))))

(assert (=> d!831325 (validRegex!3520 (h!39814 (exprs!3202 c!7184)))))

(assert (=> d!831325 (= (matchR!3742 (h!39814 (exprs!3202 c!7184)) (get!10340 lt!1018702)) lt!1018743)))

(declare-fun b!2875918 () Bool)

(assert (=> b!2875918 (= e!1819941 (= (head!6349 (get!10340 lt!1018702)) (c!466015 (h!39814 (exprs!3202 c!7184)))))))

(declare-fun b!2875924 () Bool)

(assert (=> b!2875924 (= e!1819942 (not (= (head!6349 (get!10340 lt!1018702)) (c!466015 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun b!2875925 () Bool)

(declare-fun res!1192618 () Bool)

(assert (=> b!2875925 (=> res!1192618 e!1819945)))

(assert (=> b!2875925 (= res!1192618 e!1819941)))

(declare-fun res!1192619 () Bool)

(assert (=> b!2875925 (=> (not res!1192619) (not e!1819941))))

(assert (=> b!2875925 (= res!1192619 lt!1018743)))

(declare-fun b!2875926 () Bool)

(assert (=> b!2875926 (= e!1819940 (= lt!1018743 call!186102))))

(declare-fun b!2875927 () Bool)

(declare-fun res!1192613 () Bool)

(assert (=> b!2875927 (=> res!1192613 e!1819945)))

(assert (=> b!2875927 (= res!1192613 (not (is-ElementMatch!8742 (h!39814 (exprs!3202 c!7184)))))))

(assert (=> b!2875927 (= e!1819943 e!1819945)))

(assert (= (and d!831325 c!466036) b!2875916))

(assert (= (and d!831325 (not c!466036)) b!2875914))

(assert (= (and d!831325 c!466034) b!2875926))

(assert (= (and d!831325 (not c!466034)) b!2875921))

(assert (= (and b!2875921 c!466035) b!2875919))

(assert (= (and b!2875921 (not c!466035)) b!2875927))

(assert (= (and b!2875927 (not res!1192613)) b!2875925))

(assert (= (and b!2875925 res!1192619) b!2875920))

(assert (= (and b!2875920 res!1192616) b!2875915))

(assert (= (and b!2875915 res!1192612) b!2875918))

(assert (= (and b!2875925 (not res!1192618)) b!2875922))

(assert (= (and b!2875922 res!1192615) b!2875917))

(assert (= (and b!2875917 (not res!1192614)) b!2875923))

(assert (= (and b!2875923 (not res!1192617)) b!2875924))

(assert (= (or b!2875926 b!2875917 b!2875920) bm!186097))

(assert (=> b!2875918 m!3293561))

(declare-fun m!3293653 () Bool)

(assert (=> b!2875918 m!3293653))

(assert (=> bm!186097 m!3293561))

(declare-fun m!3293655 () Bool)

(assert (=> bm!186097 m!3293655))

(assert (=> b!2875924 m!3293561))

(assert (=> b!2875924 m!3293653))

(assert (=> b!2875916 m!3293643))

(assert (=> b!2875923 m!3293561))

(declare-fun m!3293657 () Bool)

(assert (=> b!2875923 m!3293657))

(assert (=> b!2875923 m!3293657))

(declare-fun m!3293659 () Bool)

(assert (=> b!2875923 m!3293659))

(assert (=> b!2875914 m!3293561))

(assert (=> b!2875914 m!3293653))

(assert (=> b!2875914 m!3293653))

(declare-fun m!3293661 () Bool)

(assert (=> b!2875914 m!3293661))

(assert (=> b!2875914 m!3293561))

(assert (=> b!2875914 m!3293657))

(assert (=> b!2875914 m!3293661))

(assert (=> b!2875914 m!3293657))

(declare-fun m!3293663 () Bool)

(assert (=> b!2875914 m!3293663))

(assert (=> b!2875915 m!3293561))

(assert (=> b!2875915 m!3293657))

(assert (=> b!2875915 m!3293657))

(assert (=> b!2875915 m!3293659))

(assert (=> d!831325 m!3293561))

(assert (=> d!831325 m!3293655))

(assert (=> d!831325 m!3293635))

(assert (=> b!2875839 d!831325))

(declare-fun d!831327 () Bool)

(declare-fun c!466039 () Bool)

(assert (=> d!831327 (= c!466039 (isEmpty!18727 (get!10340 lt!1018697)))))

(declare-fun e!1819948 () Bool)

(assert (=> d!831327 (= (matchZipper!484 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (get!10340 lt!1018697)) e!1819948)))

(declare-fun b!2875932 () Bool)

(declare-fun nullableZipper!720 ((Set Context!5404)) Bool)

(assert (=> b!2875932 (= e!1819948 (nullableZipper!720 (set.insert lt!1018696 (as set.empty (Set Context!5404)))))))

(declare-fun b!2875933 () Bool)

(declare-fun derivationStepZipper!476 ((Set Context!5404) C!17666) (Set Context!5404))

(assert (=> b!2875933 (= e!1819948 (matchZipper!484 (derivationStepZipper!476 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (head!6349 (get!10340 lt!1018697))) (tail!4574 (get!10340 lt!1018697))))))

(assert (= (and d!831327 c!466039) b!2875932))

(assert (= (and d!831327 (not c!466039)) b!2875933))

(assert (=> d!831327 m!3293569))

(declare-fun m!3293665 () Bool)

(assert (=> d!831327 m!3293665))

(assert (=> b!2875932 m!3293567))

(declare-fun m!3293667 () Bool)

(assert (=> b!2875932 m!3293667))

(assert (=> b!2875933 m!3293569))

(declare-fun m!3293669 () Bool)

(assert (=> b!2875933 m!3293669))

(assert (=> b!2875933 m!3293567))

(assert (=> b!2875933 m!3293669))

(declare-fun m!3293671 () Bool)

(assert (=> b!2875933 m!3293671))

(assert (=> b!2875933 m!3293569))

(declare-fun m!3293673 () Bool)

(assert (=> b!2875933 m!3293673))

(assert (=> b!2875933 m!3293671))

(assert (=> b!2875933 m!3293673))

(declare-fun m!3293675 () Bool)

(assert (=> b!2875933 m!3293675))

(assert (=> b!2875839 d!831327))

(declare-fun d!831329 () Bool)

(assert (=> d!831329 (= (get!10340 lt!1018697) (v!34542 lt!1018697))))

(assert (=> b!2875839 d!831329))

(declare-fun d!831331 () Bool)

(declare-fun lambda!107265 () Int)

(declare-fun forall!7087 (List!34518 Int) Bool)

(assert (=> d!831331 (= (inv!46443 lt!1018700) (forall!7087 (exprs!3202 lt!1018700) lambda!107265))))

(declare-fun bs!522678 () Bool)

(assert (= bs!522678 d!831331))

(declare-fun m!3293677 () Bool)

(assert (=> bs!522678 m!3293677))

(assert (=> b!2875840 d!831331))

(declare-fun d!831333 () Bool)

(declare-fun c!466040 () Bool)

(assert (=> d!831333 (= c!466040 (isEmpty!18727 (v!34542 lt!1018702)))))

(declare-fun e!1819949 () Bool)

(assert (=> d!831333 (= (matchZipper!484 lt!1018699 (v!34542 lt!1018702)) e!1819949)))

(declare-fun b!2875934 () Bool)

(assert (=> b!2875934 (= e!1819949 (nullableZipper!720 lt!1018699))))

(declare-fun b!2875935 () Bool)

(assert (=> b!2875935 (= e!1819949 (matchZipper!484 (derivationStepZipper!476 lt!1018699 (head!6349 (v!34542 lt!1018702))) (tail!4574 (v!34542 lt!1018702))))))

(assert (= (and d!831333 c!466040) b!2875934))

(assert (= (and d!831333 (not c!466040)) b!2875935))

(assert (=> d!831333 m!3293641))

(declare-fun m!3293679 () Bool)

(assert (=> b!2875934 m!3293679))

(assert (=> b!2875935 m!3293639))

(assert (=> b!2875935 m!3293639))

(declare-fun m!3293681 () Bool)

(assert (=> b!2875935 m!3293681))

(assert (=> b!2875935 m!3293645))

(assert (=> b!2875935 m!3293681))

(assert (=> b!2875935 m!3293645))

(declare-fun m!3293683 () Bool)

(assert (=> b!2875935 m!3293683))

(assert (=> b!2875840 d!831333))

(declare-fun d!831335 () Bool)

(assert (=> d!831335 (= (matchR!3742 (h!39814 (exprs!3202 c!7184)) (v!34542 lt!1018702)) (matchZipper!484 lt!1018699 (v!34542 lt!1018702)))))

(declare-fun lt!1018746 () Unit!47985)

(declare-fun choose!17005 ((Set Context!5404) List!34519 Regex!8742 List!34517) Unit!47985)

(assert (=> d!831335 (= lt!1018746 (choose!17005 lt!1018699 (Cons!34395 lt!1018700 Nil!34395) (h!39814 (exprs!3202 c!7184)) (v!34542 lt!1018702)))))

(assert (=> d!831335 (validRegex!3520 (h!39814 (exprs!3202 c!7184)))))

(assert (=> d!831335 (= (theoremZipperRegexEquiv!116 lt!1018699 (Cons!34395 lt!1018700 Nil!34395) (h!39814 (exprs!3202 c!7184)) (v!34542 lt!1018702)) lt!1018746)))

(declare-fun bs!522679 () Bool)

(assert (= bs!522679 d!831335))

(assert (=> bs!522679 m!3293571))

(assert (=> bs!522679 m!3293581))

(declare-fun m!3293685 () Bool)

(assert (=> bs!522679 m!3293685))

(assert (=> bs!522679 m!3293635))

(assert (=> b!2875840 d!831335))

(declare-fun bs!522680 () Bool)

(declare-fun d!831337 () Bool)

(assert (= bs!522680 (and d!831337 d!831331)))

(declare-fun lambda!107270 () Int)

(assert (=> bs!522680 (not (= lambda!107270 lambda!107265))))

(declare-fun exists!1172 (List!34518 Int) Bool)

(assert (=> d!831337 (= (lostCause!834 c!7184) (exists!1172 (exprs!3202 c!7184) lambda!107270))))

(declare-fun bs!522681 () Bool)

(assert (= bs!522681 d!831337))

(declare-fun m!3293687 () Bool)

(assert (=> bs!522681 m!3293687))

(assert (=> start!280666 d!831337))

(declare-fun bs!522682 () Bool)

(declare-fun d!831339 () Bool)

(assert (= bs!522682 (and d!831339 d!831331)))

(declare-fun lambda!107271 () Int)

(assert (=> bs!522682 (= lambda!107271 lambda!107265)))

(declare-fun bs!522683 () Bool)

(assert (= bs!522683 (and d!831339 d!831337)))

(assert (=> bs!522683 (not (= lambda!107271 lambda!107270))))

(assert (=> d!831339 (= (inv!46443 c!7184) (forall!7087 (exprs!3202 c!7184) lambda!107271))))

(declare-fun bs!522684 () Bool)

(assert (= bs!522684 d!831339))

(declare-fun m!3293689 () Bool)

(assert (=> bs!522684 m!3293689))

(assert (=> start!280666 d!831339))

(declare-fun b!2875998 () Bool)

(declare-fun e!1819983 () Option!6417)

(declare-fun lt!1018758 () Option!6417)

(assert (=> b!2875998 (= e!1819983 lt!1018758)))

(declare-fun b!2875999 () Bool)

(declare-fun c!466073 () Bool)

(assert (=> b!2875999 (= c!466073 (is-ElementMatch!8742 (h!39814 (exprs!3202 c!7184))))))

(declare-fun e!1819988 () Option!6417)

(declare-fun e!1819981 () Option!6417)

(assert (=> b!2875999 (= e!1819988 e!1819981)))

(declare-fun b!2876000 () Bool)

(declare-fun c!466079 () Bool)

(declare-fun lt!1018759 () Option!6417)

(assert (=> b!2876000 (= c!466079 (is-Some!6416 lt!1018759))))

(declare-fun call!186107 () Option!6417)

(assert (=> b!2876000 (= lt!1018759 call!186107)))

(declare-fun e!1819984 () Option!6417)

(declare-fun e!1819986 () Option!6417)

(assert (=> b!2876000 (= e!1819984 e!1819986)))

(declare-fun bm!186102 () Bool)

(declare-fun c!466076 () Bool)

(assert (=> bm!186102 (= call!186107 (getLanguageWitness!436 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun b!2876001 () Bool)

(declare-fun e!1819985 () Option!6417)

(assert (=> b!2876001 (= e!1819985 (Some!6416 Nil!34393))))

(declare-fun b!2876002 () Bool)

(assert (=> b!2876002 (= c!466076 (is-Union!8742 (h!39814 (exprs!3202 c!7184))))))

(declare-fun e!1819982 () Option!6417)

(assert (=> b!2876002 (= e!1819985 e!1819982)))

(declare-fun b!2876004 () Bool)

(assert (=> b!2876004 (= e!1819988 None!6416)))

(declare-fun b!2876005 () Bool)

(assert (=> b!2876005 (= e!1819986 None!6416)))

(declare-fun b!2876006 () Bool)

(assert (=> b!2876006 (= e!1819982 e!1819984)))

(declare-fun lt!1018760 () Option!6417)

(declare-fun call!186108 () Option!6417)

(assert (=> b!2876006 (= lt!1018760 call!186108)))

(declare-fun c!466078 () Bool)

(assert (=> b!2876006 (= c!466078 (is-Some!6416 lt!1018760))))

(declare-fun b!2876007 () Bool)

(declare-fun e!1819987 () Option!6417)

(assert (=> b!2876007 (= e!1819987 (Some!6416 Nil!34393))))

(declare-fun b!2876008 () Bool)

(declare-fun ++!8179 (List!34517 List!34517) List!34517)

(assert (=> b!2876008 (= e!1819986 (Some!6416 (++!8179 (v!34542 lt!1018760) (v!34542 lt!1018759))))))

(declare-fun b!2876009 () Bool)

(assert (=> b!2876009 (= e!1819981 e!1819985)))

(declare-fun c!466072 () Bool)

(assert (=> b!2876009 (= c!466072 (is-Star!8742 (h!39814 (exprs!3202 c!7184))))))

(declare-fun b!2876010 () Bool)

(assert (=> b!2876010 (= e!1819984 None!6416)))

(declare-fun d!831341 () Bool)

(declare-fun c!466074 () Bool)

(assert (=> d!831341 (= c!466074 (is-EmptyExpr!8742 (h!39814 (exprs!3202 c!7184))))))

(assert (=> d!831341 (= (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))) e!1819987)))

(declare-fun b!2876003 () Bool)

(assert (=> b!2876003 (= e!1819983 call!186107)))

(declare-fun bm!186103 () Bool)

(assert (=> bm!186103 (= call!186108 (getLanguageWitness!436 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun b!2876011 () Bool)

(assert (=> b!2876011 (= e!1819987 e!1819988)))

(declare-fun c!466077 () Bool)

(assert (=> b!2876011 (= c!466077 (is-EmptyLang!8742 (h!39814 (exprs!3202 c!7184))))))

(declare-fun b!2876012 () Bool)

(assert (=> b!2876012 (= e!1819982 e!1819983)))

(assert (=> b!2876012 (= lt!1018758 call!186108)))

(declare-fun c!466075 () Bool)

(assert (=> b!2876012 (= c!466075 (is-Some!6416 lt!1018758))))

(declare-fun b!2876013 () Bool)

(assert (=> b!2876013 (= e!1819981 (Some!6416 (Cons!34393 (c!466015 (h!39814 (exprs!3202 c!7184))) Nil!34393)))))

(assert (= (and d!831341 c!466074) b!2876007))

(assert (= (and d!831341 (not c!466074)) b!2876011))

(assert (= (and b!2876011 c!466077) b!2876004))

(assert (= (and b!2876011 (not c!466077)) b!2875999))

(assert (= (and b!2875999 c!466073) b!2876013))

(assert (= (and b!2875999 (not c!466073)) b!2876009))

(assert (= (and b!2876009 c!466072) b!2876001))

(assert (= (and b!2876009 (not c!466072)) b!2876002))

(assert (= (and b!2876002 c!466076) b!2876012))

(assert (= (and b!2876002 (not c!466076)) b!2876006))

(assert (= (and b!2876012 c!466075) b!2875998))

(assert (= (and b!2876012 (not c!466075)) b!2876003))

(assert (= (and b!2876006 c!466078) b!2876000))

(assert (= (and b!2876006 (not c!466078)) b!2876010))

(assert (= (and b!2876000 c!466079) b!2876008))

(assert (= (and b!2876000 (not c!466079)) b!2876005))

(assert (= (or b!2876003 b!2876000) bm!186102))

(assert (= (or b!2876012 b!2876006) bm!186103))

(declare-fun m!3293705 () Bool)

(assert (=> bm!186102 m!3293705))

(declare-fun m!3293707 () Bool)

(assert (=> b!2876008 m!3293707))

(declare-fun m!3293709 () Bool)

(assert (=> bm!186103 m!3293709))

(assert (=> b!2875841 d!831341))

(declare-fun bs!522694 () Bool)

(declare-fun d!831349 () Bool)

(assert (= bs!522694 (and d!831349 d!831331)))

(declare-fun lambda!107282 () Int)

(assert (=> bs!522694 (not (= lambda!107282 lambda!107265))))

(declare-fun bs!522695 () Bool)

(assert (= bs!522695 (and d!831349 d!831337)))

(assert (=> bs!522695 (= lambda!107282 lambda!107270)))

(declare-fun bs!522696 () Bool)

(assert (= bs!522696 (and d!831349 d!831339)))

(assert (=> bs!522696 (not (= lambda!107282 lambda!107271))))

(declare-fun b!2876050 () Bool)

(declare-fun c!466099 () Bool)

(declare-fun lt!1018776 () Option!6417)

(assert (=> b!2876050 (= c!466099 (is-Some!6416 lt!1018776))))

(assert (=> b!2876050 (= lt!1018776 (getLanguageWitness!435 (Context!5405 (t!233561 (exprs!3202 lt!1018696)))))))

(declare-fun e!1820008 () Option!6417)

(declare-fun e!1820009 () Option!6417)

(assert (=> b!2876050 (= e!1820008 e!1820009)))

(declare-fun b!2876051 () Bool)

(declare-fun lt!1018775 () Option!6417)

(assert (=> b!2876051 (= e!1820009 (Some!6416 (++!8179 (v!34542 lt!1018775) (v!34542 lt!1018776))))))

(declare-fun b!2876052 () Bool)

(assert (=> b!2876052 (= e!1820009 None!6416)))

(declare-fun b!2876053 () Bool)

(assert (=> b!2876053 (= e!1820008 None!6416)))

(declare-fun b!2876054 () Bool)

(declare-fun e!1820007 () Option!6417)

(assert (=> b!2876054 (= e!1820007 e!1820008)))

(assert (=> b!2876054 (= lt!1018775 (getLanguageWitness!436 (h!39814 (exprs!3202 lt!1018696))))))

(declare-fun c!466101 () Bool)

(assert (=> b!2876054 (= c!466101 (is-Some!6416 lt!1018775))))

(declare-fun lt!1018774 () Option!6417)

(declare-fun isEmpty!18730 (Option!6417) Bool)

(assert (=> d!831349 (= (isEmpty!18730 lt!1018774) (exists!1172 (exprs!3202 lt!1018696) lambda!107282))))

(assert (=> d!831349 (= lt!1018774 e!1820007)))

(declare-fun c!466100 () Bool)

(assert (=> d!831349 (= c!466100 (is-Cons!34394 (exprs!3202 lt!1018696)))))

(assert (=> d!831349 (= (getLanguageWitness!435 lt!1018696) lt!1018774)))

(declare-fun b!2876055 () Bool)

(assert (=> b!2876055 (= e!1820007 (Some!6416 Nil!34393))))

(assert (= (and d!831349 c!466100) b!2876054))

(assert (= (and d!831349 (not c!466100)) b!2876055))

(assert (= (and b!2876054 c!466101) b!2876050))

(assert (= (and b!2876054 (not c!466101)) b!2876053))

(assert (= (and b!2876050 c!466099) b!2876051))

(assert (= (and b!2876050 (not c!466099)) b!2876052))

(declare-fun m!3293719 () Bool)

(assert (=> b!2876050 m!3293719))

(declare-fun m!3293721 () Bool)

(assert (=> b!2876051 m!3293721))

(declare-fun m!3293723 () Bool)

(assert (=> b!2876054 m!3293723))

(declare-fun m!3293725 () Bool)

(assert (=> d!831349 m!3293725))

(declare-fun m!3293727 () Bool)

(assert (=> d!831349 m!3293727))

(assert (=> b!2875836 d!831349))

(declare-fun b!2876060 () Bool)

(declare-fun e!1820012 () Bool)

(declare-fun tp!923781 () Bool)

(declare-fun tp!923782 () Bool)

(assert (=> b!2876060 (= e!1820012 (and tp!923781 tp!923782))))

(assert (=> b!2875838 (= tp!923773 e!1820012)))

(assert (= (and b!2875838 (is-Cons!34394 (exprs!3202 c!7184))) b!2876060))

(push 1)

(assert (not bm!186102))

(assert (not b!2875904))

(assert (not d!831323))

(assert (not b!2875923))

(assert (not b!2875909))

(assert (not b!2875916))

(assert (not d!831327))

(assert (not d!831333))

(assert (not b!2876051))

(assert (not b!2875933))

(assert (not bm!186096))

(assert (not b!2875932))

(assert (not d!831331))

(assert (not b!2875915))

(assert (not bm!186097))

(assert (not b!2875918))

(assert (not d!831349))

(assert (not b!2875935))

(assert (not b!2876008))

(assert (not d!831335))

(assert (not d!831339))

(assert (not d!831325))

(assert (not b!2875914))

(assert (not b!2875934))

(assert (not b!2876050))

(assert (not d!831321))

(assert (not b!2875901))

(assert (not bm!186103))

(assert (not b!2875900))

(assert (not b!2875910))

(assert (not d!831319))

(assert (not b!2876054))

(assert (not b!2876060))

(assert (not b!2875902))

(assert (not d!831337))

(assert (not b!2875924))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!831371 () Bool)

(declare-fun res!1192656 () Bool)

(declare-fun e!1820052 () Bool)

(assert (=> d!831371 (=> res!1192656 e!1820052)))

(assert (=> d!831371 (= res!1192656 (is-Nil!34394 (exprs!3202 c!7184)))))

(assert (=> d!831371 (= (forall!7087 (exprs!3202 c!7184) lambda!107271) e!1820052)))

(declare-fun b!2876134 () Bool)

(declare-fun e!1820053 () Bool)

(assert (=> b!2876134 (= e!1820052 e!1820053)))

(declare-fun res!1192657 () Bool)

(assert (=> b!2876134 (=> (not res!1192657) (not e!1820053))))

(declare-fun dynLambda!14318 (Int Regex!8742) Bool)

(assert (=> b!2876134 (= res!1192657 (dynLambda!14318 lambda!107271 (h!39814 (exprs!3202 c!7184))))))

(declare-fun b!2876135 () Bool)

(assert (=> b!2876135 (= e!1820053 (forall!7087 (t!233561 (exprs!3202 c!7184)) lambda!107271))))

(assert (= (and d!831371 (not res!1192656)) b!2876134))

(assert (= (and b!2876134 res!1192657) b!2876135))

(declare-fun b_lambda!86147 () Bool)

(assert (=> (not b_lambda!86147) (not b!2876134)))

(declare-fun m!3293791 () Bool)

(assert (=> b!2876134 m!3293791))

(declare-fun m!3293793 () Bool)

(assert (=> b!2876135 m!3293793))

(assert (=> d!831339 d!831371))

(declare-fun d!831373 () Bool)

(assert (=> d!831373 (= (head!6349 (v!34542 lt!1018702)) (h!39813 (v!34542 lt!1018702)))))

(assert (=> b!2875904 d!831373))

(declare-fun d!831375 () Bool)

(declare-fun lambda!107285 () Int)

(declare-fun exists!1173 ((Set Context!5404) Int) Bool)

(assert (=> d!831375 (= (nullableZipper!720 lt!1018699) (exists!1173 lt!1018699 lambda!107285))))

(declare-fun bs!522700 () Bool)

(assert (= bs!522700 d!831375))

(declare-fun m!3293795 () Bool)

(assert (=> bs!522700 m!3293795))

(assert (=> b!2875934 d!831375))

(declare-fun d!831377 () Bool)

(assert (=> d!831377 (= (isEmpty!18727 (tail!4574 (v!34542 lt!1018702))) (is-Nil!34393 (tail!4574 (v!34542 lt!1018702))))))

(assert (=> b!2875901 d!831377))

(declare-fun d!831379 () Bool)

(assert (=> d!831379 (= (tail!4574 (v!34542 lt!1018702)) (t!233560 (v!34542 lt!1018702)))))

(assert (=> b!2875901 d!831379))

(declare-fun d!831381 () Bool)

(declare-fun nullableFct!820 (Regex!8742) Bool)

(assert (=> d!831381 (= (nullable!2692 (h!39814 (exprs!3202 c!7184))) (nullableFct!820 (h!39814 (exprs!3202 c!7184))))))

(declare-fun bs!522701 () Bool)

(assert (= bs!522701 d!831381))

(declare-fun m!3293797 () Bool)

(assert (=> bs!522701 m!3293797))

(assert (=> b!2875902 d!831381))

(declare-fun bs!522702 () Bool)

(declare-fun d!831383 () Bool)

(assert (= bs!522702 (and d!831383 d!831331)))

(declare-fun lambda!107288 () Int)

(assert (=> bs!522702 (not (= lambda!107288 lambda!107265))))

(declare-fun bs!522703 () Bool)

(assert (= bs!522703 (and d!831383 d!831337)))

(assert (=> bs!522703 (not (= lambda!107288 lambda!107270))))

(declare-fun bs!522704 () Bool)

(assert (= bs!522704 (and d!831383 d!831339)))

(assert (=> bs!522704 (not (= lambda!107288 lambda!107271))))

(declare-fun bs!522705 () Bool)

(assert (= bs!522705 (and d!831383 d!831349)))

(assert (=> bs!522705 (not (= lambda!107288 lambda!107282))))

(assert (=> d!831383 true))

(declare-fun order!18137 () Int)

(declare-fun dynLambda!14319 (Int Int) Int)

(assert (=> d!831383 (< (dynLambda!14319 order!18137 lambda!107270) (dynLambda!14319 order!18137 lambda!107288))))

(assert (=> d!831383 (= (exists!1172 (exprs!3202 c!7184) lambda!107270) (not (forall!7087 (exprs!3202 c!7184) lambda!107288)))))

(declare-fun bs!522706 () Bool)

(assert (= bs!522706 d!831383))

(declare-fun m!3293799 () Bool)

(assert (=> bs!522706 m!3293799))

(assert (=> d!831337 d!831383))

(declare-fun d!831385 () Bool)

(declare-fun res!1192658 () Bool)

(declare-fun e!1820054 () Bool)

(assert (=> d!831385 (=> res!1192658 e!1820054)))

(assert (=> d!831385 (= res!1192658 (is-Nil!34394 (exprs!3202 lt!1018700)))))

(assert (=> d!831385 (= (forall!7087 (exprs!3202 lt!1018700) lambda!107265) e!1820054)))

(declare-fun b!2876138 () Bool)

(declare-fun e!1820055 () Bool)

(assert (=> b!2876138 (= e!1820054 e!1820055)))

(declare-fun res!1192659 () Bool)

(assert (=> b!2876138 (=> (not res!1192659) (not e!1820055))))

(assert (=> b!2876138 (= res!1192659 (dynLambda!14318 lambda!107265 (h!39814 (exprs!3202 lt!1018700))))))

(declare-fun b!2876139 () Bool)

(assert (=> b!2876139 (= e!1820055 (forall!7087 (t!233561 (exprs!3202 lt!1018700)) lambda!107265))))

(assert (= (and d!831385 (not res!1192658)) b!2876138))

(assert (= (and b!2876138 res!1192659) b!2876139))

(declare-fun b_lambda!86149 () Bool)

(assert (=> (not b_lambda!86149) (not b!2876138)))

(declare-fun m!3293801 () Bool)

(assert (=> b!2876138 m!3293801))

(declare-fun m!3293803 () Bool)

(assert (=> b!2876139 m!3293803))

(assert (=> d!831331 d!831385))

(declare-fun d!831387 () Bool)

(declare-fun c!466121 () Bool)

(assert (=> d!831387 (= c!466121 (isEmpty!18727 (tail!4574 (v!34542 lt!1018702))))))

(declare-fun e!1820056 () Bool)

(assert (=> d!831387 (= (matchZipper!484 (derivationStepZipper!476 lt!1018699 (head!6349 (v!34542 lt!1018702))) (tail!4574 (v!34542 lt!1018702))) e!1820056)))

(declare-fun b!2876140 () Bool)

(assert (=> b!2876140 (= e!1820056 (nullableZipper!720 (derivationStepZipper!476 lt!1018699 (head!6349 (v!34542 lt!1018702)))))))

(declare-fun b!2876141 () Bool)

(assert (=> b!2876141 (= e!1820056 (matchZipper!484 (derivationStepZipper!476 (derivationStepZipper!476 lt!1018699 (head!6349 (v!34542 lt!1018702))) (head!6349 (tail!4574 (v!34542 lt!1018702)))) (tail!4574 (tail!4574 (v!34542 lt!1018702)))))))

(assert (= (and d!831387 c!466121) b!2876140))

(assert (= (and d!831387 (not c!466121)) b!2876141))

(assert (=> d!831387 m!3293645))

(assert (=> d!831387 m!3293647))

(assert (=> b!2876140 m!3293681))

(declare-fun m!3293805 () Bool)

(assert (=> b!2876140 m!3293805))

(assert (=> b!2876141 m!3293645))

(declare-fun m!3293807 () Bool)

(assert (=> b!2876141 m!3293807))

(assert (=> b!2876141 m!3293681))

(assert (=> b!2876141 m!3293807))

(declare-fun m!3293809 () Bool)

(assert (=> b!2876141 m!3293809))

(assert (=> b!2876141 m!3293645))

(declare-fun m!3293811 () Bool)

(assert (=> b!2876141 m!3293811))

(assert (=> b!2876141 m!3293809))

(assert (=> b!2876141 m!3293811))

(declare-fun m!3293813 () Bool)

(assert (=> b!2876141 m!3293813))

(assert (=> b!2875935 d!831387))

(declare-fun d!831389 () Bool)

(assert (=> d!831389 true))

(declare-fun lambda!107291 () Int)

(declare-fun flatMap!223 ((Set Context!5404) Int) (Set Context!5404))

(assert (=> d!831389 (= (derivationStepZipper!476 lt!1018699 (head!6349 (v!34542 lt!1018702))) (flatMap!223 lt!1018699 lambda!107291))))

(declare-fun bs!522707 () Bool)

(assert (= bs!522707 d!831389))

(declare-fun m!3293815 () Bool)

(assert (=> bs!522707 m!3293815))

(assert (=> b!2875935 d!831389))

(assert (=> b!2875935 d!831373))

(assert (=> b!2875935 d!831379))

(declare-fun b!2876144 () Bool)

(declare-fun e!1820059 () Option!6417)

(declare-fun lt!1018790 () Option!6417)

(assert (=> b!2876144 (= e!1820059 lt!1018790)))

(declare-fun b!2876145 () Bool)

(declare-fun c!466125 () Bool)

(assert (=> b!2876145 (= c!466125 (is-ElementMatch!8742 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun e!1820064 () Option!6417)

(declare-fun e!1820057 () Option!6417)

(assert (=> b!2876145 (= e!1820064 e!1820057)))

(declare-fun b!2876146 () Bool)

(declare-fun c!466131 () Bool)

(declare-fun lt!1018791 () Option!6417)

(assert (=> b!2876146 (= c!466131 (is-Some!6416 lt!1018791))))

(declare-fun call!186119 () Option!6417)

(assert (=> b!2876146 (= lt!1018791 call!186119)))

(declare-fun e!1820060 () Option!6417)

(declare-fun e!1820062 () Option!6417)

(assert (=> b!2876146 (= e!1820060 e!1820062)))

(declare-fun bm!186114 () Bool)

(declare-fun c!466128 () Bool)

(assert (=> bm!186114 (= call!186119 (getLanguageWitness!436 (ite c!466128 (regTwo!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun b!2876147 () Bool)

(declare-fun e!1820061 () Option!6417)

(assert (=> b!2876147 (= e!1820061 (Some!6416 Nil!34393))))

(declare-fun b!2876148 () Bool)

(assert (=> b!2876148 (= c!466128 (is-Union!8742 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun e!1820058 () Option!6417)

(assert (=> b!2876148 (= e!1820061 e!1820058)))

(declare-fun b!2876150 () Bool)

(assert (=> b!2876150 (= e!1820064 None!6416)))

(declare-fun b!2876151 () Bool)

(assert (=> b!2876151 (= e!1820062 None!6416)))

(declare-fun b!2876152 () Bool)

(assert (=> b!2876152 (= e!1820058 e!1820060)))

(declare-fun lt!1018792 () Option!6417)

(declare-fun call!186120 () Option!6417)

(assert (=> b!2876152 (= lt!1018792 call!186120)))

(declare-fun c!466130 () Bool)

(assert (=> b!2876152 (= c!466130 (is-Some!6416 lt!1018792))))

(declare-fun b!2876153 () Bool)

(declare-fun e!1820063 () Option!6417)

(assert (=> b!2876153 (= e!1820063 (Some!6416 Nil!34393))))

(declare-fun b!2876154 () Bool)

(assert (=> b!2876154 (= e!1820062 (Some!6416 (++!8179 (v!34542 lt!1018792) (v!34542 lt!1018791))))))

(declare-fun b!2876155 () Bool)

(assert (=> b!2876155 (= e!1820057 e!1820061)))

(declare-fun c!466124 () Bool)

(assert (=> b!2876155 (= c!466124 (is-Star!8742 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun b!2876156 () Bool)

(assert (=> b!2876156 (= e!1820060 None!6416)))

(declare-fun d!831391 () Bool)

(declare-fun c!466126 () Bool)

(assert (=> d!831391 (= c!466126 (is-EmptyExpr!8742 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))

(assert (=> d!831391 (= (getLanguageWitness!436 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) e!1820063)))

(declare-fun b!2876149 () Bool)

(assert (=> b!2876149 (= e!1820059 call!186119)))

(declare-fun bm!186115 () Bool)

(assert (=> bm!186115 (= call!186120 (getLanguageWitness!436 (ite c!466128 (regOne!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun b!2876157 () Bool)

(assert (=> b!2876157 (= e!1820063 e!1820064)))

(declare-fun c!466129 () Bool)

(assert (=> b!2876157 (= c!466129 (is-EmptyLang!8742 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun b!2876158 () Bool)

(assert (=> b!2876158 (= e!1820058 e!1820059)))

(assert (=> b!2876158 (= lt!1018790 call!186120)))

(declare-fun c!466127 () Bool)

(assert (=> b!2876158 (= c!466127 (is-Some!6416 lt!1018790))))

(declare-fun b!2876159 () Bool)

(assert (=> b!2876159 (= e!1820057 (Some!6416 (Cons!34393 (c!466015 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) Nil!34393)))))

(assert (= (and d!831391 c!466126) b!2876153))

(assert (= (and d!831391 (not c!466126)) b!2876157))

(assert (= (and b!2876157 c!466129) b!2876150))

(assert (= (and b!2876157 (not c!466129)) b!2876145))

(assert (= (and b!2876145 c!466125) b!2876159))

(assert (= (and b!2876145 (not c!466125)) b!2876155))

(assert (= (and b!2876155 c!466124) b!2876147))

(assert (= (and b!2876155 (not c!466124)) b!2876148))

(assert (= (and b!2876148 c!466128) b!2876158))

(assert (= (and b!2876148 (not c!466128)) b!2876152))

(assert (= (and b!2876158 c!466127) b!2876144))

(assert (= (and b!2876158 (not c!466127)) b!2876149))

(assert (= (and b!2876152 c!466130) b!2876146))

(assert (= (and b!2876152 (not c!466130)) b!2876156))

(assert (= (and b!2876146 c!466131) b!2876154))

(assert (= (and b!2876146 (not c!466131)) b!2876151))

(assert (= (or b!2876149 b!2876146) bm!186114))

(assert (= (or b!2876158 b!2876152) bm!186115))

(declare-fun m!3293817 () Bool)

(assert (=> bm!186114 m!3293817))

(declare-fun m!3293819 () Bool)

(assert (=> b!2876154 m!3293819))

(declare-fun m!3293821 () Bool)

(assert (=> bm!186115 m!3293821))

(assert (=> bm!186103 d!831391))

(declare-fun d!831393 () Bool)

(assert (=> d!831393 (= (head!6349 (get!10340 lt!1018702)) (h!39813 (get!10340 lt!1018702)))))

(assert (=> b!2875924 d!831393))

(declare-fun b!2876170 () Bool)

(declare-fun res!1192664 () Bool)

(declare-fun e!1820070 () Bool)

(assert (=> b!2876170 (=> (not res!1192664) (not e!1820070))))

(declare-fun lt!1018795 () List!34517)

(declare-fun size!26325 (List!34517) Int)

(assert (=> b!2876170 (= res!1192664 (= (size!26325 lt!1018795) (+ (size!26325 (v!34542 lt!1018775)) (size!26325 (v!34542 lt!1018776)))))))

(declare-fun b!2876169 () Bool)

(declare-fun e!1820069 () List!34517)

(assert (=> b!2876169 (= e!1820069 (Cons!34393 (h!39813 (v!34542 lt!1018775)) (++!8179 (t!233560 (v!34542 lt!1018775)) (v!34542 lt!1018776))))))

(declare-fun b!2876171 () Bool)

(assert (=> b!2876171 (= e!1820070 (or (not (= (v!34542 lt!1018776) Nil!34393)) (= lt!1018795 (v!34542 lt!1018775))))))

(declare-fun b!2876168 () Bool)

(assert (=> b!2876168 (= e!1820069 (v!34542 lt!1018776))))

(declare-fun d!831395 () Bool)

(assert (=> d!831395 e!1820070))

(declare-fun res!1192665 () Bool)

(assert (=> d!831395 (=> (not res!1192665) (not e!1820070))))

(declare-fun content!4706 (List!34517) (Set C!17666))

(assert (=> d!831395 (= res!1192665 (= (content!4706 lt!1018795) (set.union (content!4706 (v!34542 lt!1018775)) (content!4706 (v!34542 lt!1018776)))))))

(assert (=> d!831395 (= lt!1018795 e!1820069)))

(declare-fun c!466134 () Bool)

(assert (=> d!831395 (= c!466134 (is-Nil!34393 (v!34542 lt!1018775)))))

(assert (=> d!831395 (= (++!8179 (v!34542 lt!1018775) (v!34542 lt!1018776)) lt!1018795)))

(assert (= (and d!831395 c!466134) b!2876168))

(assert (= (and d!831395 (not c!466134)) b!2876169))

(assert (= (and d!831395 res!1192665) b!2876170))

(assert (= (and b!2876170 res!1192664) b!2876171))

(declare-fun m!3293823 () Bool)

(assert (=> b!2876170 m!3293823))

(declare-fun m!3293825 () Bool)

(assert (=> b!2876170 m!3293825))

(declare-fun m!3293827 () Bool)

(assert (=> b!2876170 m!3293827))

(declare-fun m!3293829 () Bool)

(assert (=> b!2876169 m!3293829))

(declare-fun m!3293831 () Bool)

(assert (=> d!831395 m!3293831))

(declare-fun m!3293833 () Bool)

(assert (=> d!831395 m!3293833))

(declare-fun m!3293835 () Bool)

(assert (=> d!831395 m!3293835))

(assert (=> b!2876051 d!831395))

(declare-fun d!831397 () Bool)

(assert (=> d!831397 (= (isEmpty!18727 (tail!4574 (get!10340 lt!1018702))) (is-Nil!34393 (tail!4574 (get!10340 lt!1018702))))))

(assert (=> b!2875923 d!831397))

(declare-fun d!831399 () Bool)

(assert (=> d!831399 (= (tail!4574 (get!10340 lt!1018702)) (t!233560 (get!10340 lt!1018702)))))

(assert (=> b!2875923 d!831399))

(declare-fun b!2876172 () Bool)

(declare-fun e!1820071 () Bool)

(assert (=> b!2876172 (= e!1820071 (matchR!3742 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))) (head!6349 (tail!4574 (v!34542 lt!1018702)))) (tail!4574 (tail!4574 (v!34542 lt!1018702)))))))

(declare-fun b!2876173 () Bool)

(declare-fun res!1192666 () Bool)

(declare-fun e!1820073 () Bool)

(assert (=> b!2876173 (=> (not res!1192666) (not e!1820073))))

(assert (=> b!2876173 (= res!1192666 (isEmpty!18727 (tail!4574 (tail!4574 (v!34542 lt!1018702)))))))

(declare-fun b!2876174 () Bool)

(assert (=> b!2876174 (= e!1820071 (nullable!2692 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))))))

(declare-fun b!2876175 () Bool)

(declare-fun e!1820076 () Bool)

(declare-fun e!1820074 () Bool)

(assert (=> b!2876175 (= e!1820076 e!1820074)))

(declare-fun res!1192668 () Bool)

(assert (=> b!2876175 (=> res!1192668 e!1820074)))

(declare-fun call!186121 () Bool)

(assert (=> b!2876175 (= res!1192668 call!186121)))

(declare-fun b!2876177 () Bool)

(declare-fun e!1820075 () Bool)

(declare-fun lt!1018796 () Bool)

(assert (=> b!2876177 (= e!1820075 (not lt!1018796))))

(declare-fun b!2876178 () Bool)

(declare-fun res!1192670 () Bool)

(assert (=> b!2876178 (=> (not res!1192670) (not e!1820073))))

(assert (=> b!2876178 (= res!1192670 (not call!186121))))

(declare-fun b!2876179 () Bool)

(declare-fun e!1820072 () Bool)

(assert (=> b!2876179 (= e!1820072 e!1820075)))

(declare-fun c!466136 () Bool)

(assert (=> b!2876179 (= c!466136 (is-EmptyLang!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))))))

(declare-fun bm!186116 () Bool)

(assert (=> bm!186116 (= call!186121 (isEmpty!18727 (tail!4574 (v!34542 lt!1018702))))))

(declare-fun b!2876180 () Bool)

(declare-fun e!1820077 () Bool)

(assert (=> b!2876180 (= e!1820077 e!1820076)))

(declare-fun res!1192669 () Bool)

(assert (=> b!2876180 (=> (not res!1192669) (not e!1820076))))

(assert (=> b!2876180 (= res!1192669 (not lt!1018796))))

(declare-fun b!2876181 () Bool)

(declare-fun res!1192671 () Bool)

(assert (=> b!2876181 (=> res!1192671 e!1820074)))

(assert (=> b!2876181 (= res!1192671 (not (isEmpty!18727 (tail!4574 (tail!4574 (v!34542 lt!1018702))))))))

(declare-fun d!831401 () Bool)

(assert (=> d!831401 e!1820072))

(declare-fun c!466135 () Bool)

(assert (=> d!831401 (= c!466135 (is-EmptyExpr!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))))))

(assert (=> d!831401 (= lt!1018796 e!1820071)))

(declare-fun c!466137 () Bool)

(assert (=> d!831401 (= c!466137 (isEmpty!18727 (tail!4574 (v!34542 lt!1018702))))))

(assert (=> d!831401 (validRegex!3520 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))))))

(assert (=> d!831401 (= (matchR!3742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))) (tail!4574 (v!34542 lt!1018702))) lt!1018796)))

(declare-fun b!2876176 () Bool)

(assert (=> b!2876176 (= e!1820073 (= (head!6349 (tail!4574 (v!34542 lt!1018702))) (c!466015 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))))))))

(declare-fun b!2876182 () Bool)

(assert (=> b!2876182 (= e!1820074 (not (= (head!6349 (tail!4574 (v!34542 lt!1018702))) (c!466015 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))))))))

(declare-fun b!2876183 () Bool)

(declare-fun res!1192672 () Bool)

(assert (=> b!2876183 (=> res!1192672 e!1820077)))

(assert (=> b!2876183 (= res!1192672 e!1820073)))

(declare-fun res!1192673 () Bool)

(assert (=> b!2876183 (=> (not res!1192673) (not e!1820073))))

(assert (=> b!2876183 (= res!1192673 lt!1018796)))

(declare-fun b!2876184 () Bool)

(assert (=> b!2876184 (= e!1820072 (= lt!1018796 call!186121))))

(declare-fun b!2876185 () Bool)

(declare-fun res!1192667 () Bool)

(assert (=> b!2876185 (=> res!1192667 e!1820077)))

(assert (=> b!2876185 (= res!1192667 (not (is-ElementMatch!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))))))))

(assert (=> b!2876185 (= e!1820075 e!1820077)))

(assert (= (and d!831401 c!466137) b!2876174))

(assert (= (and d!831401 (not c!466137)) b!2876172))

(assert (= (and d!831401 c!466135) b!2876184))

(assert (= (and d!831401 (not c!466135)) b!2876179))

(assert (= (and b!2876179 c!466136) b!2876177))

(assert (= (and b!2876179 (not c!466136)) b!2876185))

(assert (= (and b!2876185 (not res!1192667)) b!2876183))

(assert (= (and b!2876183 res!1192673) b!2876178))

(assert (= (and b!2876178 res!1192670) b!2876173))

(assert (= (and b!2876173 res!1192666) b!2876176))

(assert (= (and b!2876183 (not res!1192672)) b!2876180))

(assert (= (and b!2876180 res!1192669) b!2876175))

(assert (= (and b!2876175 (not res!1192668)) b!2876181))

(assert (= (and b!2876181 (not res!1192671)) b!2876182))

(assert (= (or b!2876184 b!2876175 b!2876178) bm!186116))

(assert (=> b!2876176 m!3293645))

(assert (=> b!2876176 m!3293807))

(assert (=> bm!186116 m!3293645))

(assert (=> bm!186116 m!3293647))

(assert (=> b!2876182 m!3293645))

(assert (=> b!2876182 m!3293807))

(assert (=> b!2876174 m!3293649))

(declare-fun m!3293837 () Bool)

(assert (=> b!2876174 m!3293837))

(assert (=> b!2876181 m!3293645))

(assert (=> b!2876181 m!3293811))

(assert (=> b!2876181 m!3293811))

(declare-fun m!3293839 () Bool)

(assert (=> b!2876181 m!3293839))

(assert (=> b!2876172 m!3293645))

(assert (=> b!2876172 m!3293807))

(assert (=> b!2876172 m!3293649))

(assert (=> b!2876172 m!3293807))

(declare-fun m!3293841 () Bool)

(assert (=> b!2876172 m!3293841))

(assert (=> b!2876172 m!3293645))

(assert (=> b!2876172 m!3293811))

(assert (=> b!2876172 m!3293841))

(assert (=> b!2876172 m!3293811))

(declare-fun m!3293843 () Bool)

(assert (=> b!2876172 m!3293843))

(assert (=> b!2876173 m!3293645))

(assert (=> b!2876173 m!3293811))

(assert (=> b!2876173 m!3293811))

(assert (=> b!2876173 m!3293839))

(assert (=> d!831401 m!3293645))

(assert (=> d!831401 m!3293647))

(assert (=> d!831401 m!3293649))

(declare-fun m!3293845 () Bool)

(assert (=> d!831401 m!3293845))

(assert (=> b!2875900 d!831401))

(declare-fun bm!186125 () Bool)

(declare-fun call!186133 () Regex!8742)

(declare-fun call!186132 () Regex!8742)

(assert (=> bm!186125 (= call!186133 call!186132)))

(declare-fun b!2876212 () Bool)

(declare-fun e!1820093 () Regex!8742)

(assert (=> b!2876212 (= e!1820093 EmptyLang!8742)))

(declare-fun b!2876213 () Bool)

(declare-fun c!466154 () Bool)

(assert (=> b!2876213 (= c!466154 (is-Union!8742 (h!39814 (exprs!3202 c!7184))))))

(declare-fun e!1820095 () Regex!8742)

(declare-fun e!1820092 () Regex!8742)

(assert (=> b!2876213 (= e!1820095 e!1820092)))

(declare-fun b!2876214 () Bool)

(declare-fun c!466156 () Bool)

(assert (=> b!2876214 (= c!466156 (nullable!2692 (regOne!17996 (h!39814 (exprs!3202 c!7184)))))))

(declare-fun e!1820091 () Regex!8742)

(declare-fun e!1820094 () Regex!8742)

(assert (=> b!2876214 (= e!1820091 e!1820094)))

(declare-fun b!2876215 () Bool)

(assert (=> b!2876215 (= e!1820091 (Concat!14063 call!186133 (h!39814 (exprs!3202 c!7184))))))

(declare-fun call!186130 () Regex!8742)

(declare-fun b!2876216 () Bool)

(declare-fun call!186131 () Regex!8742)

(assert (=> b!2876216 (= e!1820094 (Union!8742 (Concat!14063 call!186130 (regTwo!17996 (h!39814 (exprs!3202 c!7184)))) call!186131))))

(declare-fun b!2876217 () Bool)

(assert (=> b!2876217 (= e!1820094 (Union!8742 (Concat!14063 call!186130 (regTwo!17996 (h!39814 (exprs!3202 c!7184)))) EmptyLang!8742))))

(declare-fun b!2876218 () Bool)

(assert (=> b!2876218 (= e!1820095 (ite (= (head!6349 (v!34542 lt!1018702)) (c!466015 (h!39814 (exprs!3202 c!7184)))) EmptyExpr!8742 EmptyLang!8742))))

(declare-fun b!2876219 () Bool)

(assert (=> b!2876219 (= e!1820092 (Union!8742 call!186132 call!186131))))

(declare-fun bm!186126 () Bool)

(declare-fun c!466152 () Bool)

(assert (=> bm!186126 (= call!186132 (derivativeStep!2325 (ite c!466154 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466152 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (head!6349 (v!34542 lt!1018702))))))

(declare-fun bm!186127 () Bool)

(assert (=> bm!186127 (= call!186131 (derivativeStep!2325 (ite c!466154 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))) (head!6349 (v!34542 lt!1018702))))))

(declare-fun bm!186128 () Bool)

(assert (=> bm!186128 (= call!186130 call!186133)))

(declare-fun d!831403 () Bool)

(declare-fun lt!1018802 () Regex!8742)

(assert (=> d!831403 (validRegex!3520 lt!1018802)))

(assert (=> d!831403 (= lt!1018802 e!1820093)))

(declare-fun c!466155 () Bool)

(assert (=> d!831403 (= c!466155 (or (is-EmptyExpr!8742 (h!39814 (exprs!3202 c!7184))) (is-EmptyLang!8742 (h!39814 (exprs!3202 c!7184)))))))

(assert (=> d!831403 (validRegex!3520 (h!39814 (exprs!3202 c!7184)))))

(assert (=> d!831403 (= (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))) lt!1018802)))

(declare-fun b!2876220 () Bool)

(assert (=> b!2876220 (= e!1820092 e!1820091)))

(assert (=> b!2876220 (= c!466152 (is-Star!8742 (h!39814 (exprs!3202 c!7184))))))

(declare-fun b!2876221 () Bool)

(assert (=> b!2876221 (= e!1820093 e!1820095)))

(declare-fun c!466153 () Bool)

(assert (=> b!2876221 (= c!466153 (is-ElementMatch!8742 (h!39814 (exprs!3202 c!7184))))))

(assert (= (and d!831403 c!466155) b!2876212))

(assert (= (and d!831403 (not c!466155)) b!2876221))

(assert (= (and b!2876221 c!466153) b!2876218))

(assert (= (and b!2876221 (not c!466153)) b!2876213))

(assert (= (and b!2876213 c!466154) b!2876219))

(assert (= (and b!2876213 (not c!466154)) b!2876220))

(assert (= (and b!2876220 c!466152) b!2876215))

(assert (= (and b!2876220 (not c!466152)) b!2876214))

(assert (= (and b!2876214 c!466156) b!2876216))

(assert (= (and b!2876214 (not c!466156)) b!2876217))

(assert (= (or b!2876216 b!2876217) bm!186128))

(assert (= (or b!2876215 bm!186128) bm!186125))

(assert (= (or b!2876219 bm!186125) bm!186126))

(assert (= (or b!2876219 b!2876216) bm!186127))

(declare-fun m!3293859 () Bool)

(assert (=> b!2876214 m!3293859))

(assert (=> bm!186126 m!3293639))

(declare-fun m!3293861 () Bool)

(assert (=> bm!186126 m!3293861))

(assert (=> bm!186127 m!3293639))

(declare-fun m!3293863 () Bool)

(assert (=> bm!186127 m!3293863))

(declare-fun m!3293865 () Bool)

(assert (=> d!831403 m!3293865))

(assert (=> d!831403 m!3293635))

(assert (=> b!2875900 d!831403))

(assert (=> b!2875900 d!831373))

(assert (=> b!2875900 d!831379))

(declare-fun bs!522719 () Bool)

(declare-fun d!831421 () Bool)

(assert (= bs!522719 (and d!831421 d!831349)))

(declare-fun lambda!107294 () Int)

(assert (=> bs!522719 (= lambda!107294 lambda!107282)))

(declare-fun bs!522720 () Bool)

(assert (= bs!522720 (and d!831421 d!831383)))

(assert (=> bs!522720 (not (= lambda!107294 lambda!107288))))

(declare-fun bs!522721 () Bool)

(assert (= bs!522721 (and d!831421 d!831337)))

(assert (=> bs!522721 (= lambda!107294 lambda!107270)))

(declare-fun bs!522722 () Bool)

(assert (= bs!522722 (and d!831421 d!831339)))

(assert (=> bs!522722 (not (= lambda!107294 lambda!107271))))

(declare-fun bs!522723 () Bool)

(assert (= bs!522723 (and d!831421 d!831331)))

(assert (=> bs!522723 (not (= lambda!107294 lambda!107265))))

(declare-fun b!2876224 () Bool)

(declare-fun c!466158 () Bool)

(declare-fun lt!1018805 () Option!6417)

(assert (=> b!2876224 (= c!466158 (is-Some!6416 lt!1018805))))

(assert (=> b!2876224 (= lt!1018805 (getLanguageWitness!435 (Context!5405 (t!233561 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696))))))))))

(declare-fun e!1820098 () Option!6417)

(declare-fun e!1820099 () Option!6417)

(assert (=> b!2876224 (= e!1820098 e!1820099)))

(declare-fun b!2876225 () Bool)

(declare-fun lt!1018804 () Option!6417)

(assert (=> b!2876225 (= e!1820099 (Some!6416 (++!8179 (v!34542 lt!1018804) (v!34542 lt!1018805))))))

(declare-fun b!2876226 () Bool)

(assert (=> b!2876226 (= e!1820099 None!6416)))

(declare-fun b!2876227 () Bool)

(assert (=> b!2876227 (= e!1820098 None!6416)))

(declare-fun b!2876228 () Bool)

(declare-fun e!1820097 () Option!6417)

(assert (=> b!2876228 (= e!1820097 e!1820098)))

(assert (=> b!2876228 (= lt!1018804 (getLanguageWitness!436 (h!39814 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696)))))))))

(declare-fun c!466160 () Bool)

(assert (=> b!2876228 (= c!466160 (is-Some!6416 lt!1018804))))

(declare-fun lt!1018803 () Option!6417)

(assert (=> d!831421 (= (isEmpty!18730 lt!1018803) (exists!1172 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696)))) lambda!107294))))

(assert (=> d!831421 (= lt!1018803 e!1820097)))

(declare-fun c!466159 () Bool)

(assert (=> d!831421 (= c!466159 (is-Cons!34394 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696))))))))

(assert (=> d!831421 (= (getLanguageWitness!435 (Context!5405 (t!233561 (exprs!3202 lt!1018696)))) lt!1018803)))

(declare-fun b!2876229 () Bool)

(assert (=> b!2876229 (= e!1820097 (Some!6416 Nil!34393))))

(assert (= (and d!831421 c!466159) b!2876228))

(assert (= (and d!831421 (not c!466159)) b!2876229))

(assert (= (and b!2876228 c!466160) b!2876224))

(assert (= (and b!2876228 (not c!466160)) b!2876227))

(assert (= (and b!2876224 c!466158) b!2876225))

(assert (= (and b!2876224 (not c!466158)) b!2876226))

(declare-fun m!3293877 () Bool)

(assert (=> b!2876224 m!3293877))

(declare-fun m!3293879 () Bool)

(assert (=> b!2876225 m!3293879))

(declare-fun m!3293881 () Bool)

(assert (=> b!2876228 m!3293881))

(declare-fun m!3293883 () Bool)

(assert (=> d!831421 m!3293883))

(declare-fun m!3293885 () Bool)

(assert (=> d!831421 m!3293885))

(assert (=> b!2876050 d!831421))

(declare-fun b!2876232 () Bool)

(declare-fun res!1192674 () Bool)

(declare-fun e!1820101 () Bool)

(assert (=> b!2876232 (=> (not res!1192674) (not e!1820101))))

(declare-fun lt!1018806 () List!34517)

(assert (=> b!2876232 (= res!1192674 (= (size!26325 lt!1018806) (+ (size!26325 (v!34542 lt!1018760)) (size!26325 (v!34542 lt!1018759)))))))

(declare-fun b!2876231 () Bool)

(declare-fun e!1820100 () List!34517)

(assert (=> b!2876231 (= e!1820100 (Cons!34393 (h!39813 (v!34542 lt!1018760)) (++!8179 (t!233560 (v!34542 lt!1018760)) (v!34542 lt!1018759))))))

(declare-fun b!2876233 () Bool)

(assert (=> b!2876233 (= e!1820101 (or (not (= (v!34542 lt!1018759) Nil!34393)) (= lt!1018806 (v!34542 lt!1018760))))))

(declare-fun b!2876230 () Bool)

(assert (=> b!2876230 (= e!1820100 (v!34542 lt!1018759))))

(declare-fun d!831425 () Bool)

(assert (=> d!831425 e!1820101))

(declare-fun res!1192675 () Bool)

(assert (=> d!831425 (=> (not res!1192675) (not e!1820101))))

(assert (=> d!831425 (= res!1192675 (= (content!4706 lt!1018806) (set.union (content!4706 (v!34542 lt!1018760)) (content!4706 (v!34542 lt!1018759)))))))

(assert (=> d!831425 (= lt!1018806 e!1820100)))

(declare-fun c!466163 () Bool)

(assert (=> d!831425 (= c!466163 (is-Nil!34393 (v!34542 lt!1018760)))))

(assert (=> d!831425 (= (++!8179 (v!34542 lt!1018760) (v!34542 lt!1018759)) lt!1018806)))

(assert (= (and d!831425 c!466163) b!2876230))

(assert (= (and d!831425 (not c!466163)) b!2876231))

(assert (= (and d!831425 res!1192675) b!2876232))

(assert (= (and b!2876232 res!1192674) b!2876233))

(declare-fun m!3293887 () Bool)

(assert (=> b!2876232 m!3293887))

(declare-fun m!3293889 () Bool)

(assert (=> b!2876232 m!3293889))

(declare-fun m!3293891 () Bool)

(assert (=> b!2876232 m!3293891))

(declare-fun m!3293893 () Bool)

(assert (=> b!2876231 m!3293893))

(declare-fun m!3293895 () Bool)

(assert (=> d!831425 m!3293895))

(declare-fun m!3293897 () Bool)

(assert (=> d!831425 m!3293897))

(declare-fun m!3293899 () Bool)

(assert (=> d!831425 m!3293899))

(assert (=> b!2876008 d!831425))

(declare-fun b!2876234 () Bool)

(declare-fun e!1820104 () Option!6417)

(declare-fun lt!1018807 () Option!6417)

(assert (=> b!2876234 (= e!1820104 lt!1018807)))

(declare-fun b!2876235 () Bool)

(declare-fun c!466165 () Bool)

(assert (=> b!2876235 (= c!466165 (is-ElementMatch!8742 (h!39814 (exprs!3202 lt!1018696))))))

(declare-fun e!1820109 () Option!6417)

(declare-fun e!1820102 () Option!6417)

(assert (=> b!2876235 (= e!1820109 e!1820102)))

(declare-fun b!2876236 () Bool)

(declare-fun c!466171 () Bool)

(declare-fun lt!1018808 () Option!6417)

(assert (=> b!2876236 (= c!466171 (is-Some!6416 lt!1018808))))

(declare-fun call!186134 () Option!6417)

(assert (=> b!2876236 (= lt!1018808 call!186134)))

(declare-fun e!1820105 () Option!6417)

(declare-fun e!1820107 () Option!6417)

(assert (=> b!2876236 (= e!1820105 e!1820107)))

(declare-fun bm!186129 () Bool)

(declare-fun c!466168 () Bool)

(assert (=> bm!186129 (= call!186134 (getLanguageWitness!436 (ite c!466168 (regTwo!17997 (h!39814 (exprs!3202 lt!1018696))) (regTwo!17996 (h!39814 (exprs!3202 lt!1018696))))))))

(declare-fun b!2876237 () Bool)

(declare-fun e!1820106 () Option!6417)

(assert (=> b!2876237 (= e!1820106 (Some!6416 Nil!34393))))

(declare-fun b!2876238 () Bool)

(assert (=> b!2876238 (= c!466168 (is-Union!8742 (h!39814 (exprs!3202 lt!1018696))))))

(declare-fun e!1820103 () Option!6417)

(assert (=> b!2876238 (= e!1820106 e!1820103)))

(declare-fun b!2876240 () Bool)

(assert (=> b!2876240 (= e!1820109 None!6416)))

(declare-fun b!2876241 () Bool)

(assert (=> b!2876241 (= e!1820107 None!6416)))

(declare-fun b!2876242 () Bool)

(assert (=> b!2876242 (= e!1820103 e!1820105)))

(declare-fun lt!1018809 () Option!6417)

(declare-fun call!186135 () Option!6417)

(assert (=> b!2876242 (= lt!1018809 call!186135)))

(declare-fun c!466170 () Bool)

(assert (=> b!2876242 (= c!466170 (is-Some!6416 lt!1018809))))

(declare-fun b!2876243 () Bool)

(declare-fun e!1820108 () Option!6417)

(assert (=> b!2876243 (= e!1820108 (Some!6416 Nil!34393))))

(declare-fun b!2876244 () Bool)

(assert (=> b!2876244 (= e!1820107 (Some!6416 (++!8179 (v!34542 lt!1018809) (v!34542 lt!1018808))))))

(declare-fun b!2876245 () Bool)

(assert (=> b!2876245 (= e!1820102 e!1820106)))

(declare-fun c!466164 () Bool)

(assert (=> b!2876245 (= c!466164 (is-Star!8742 (h!39814 (exprs!3202 lt!1018696))))))

(declare-fun b!2876246 () Bool)

(assert (=> b!2876246 (= e!1820105 None!6416)))

(declare-fun d!831427 () Bool)

(declare-fun c!466166 () Bool)

(assert (=> d!831427 (= c!466166 (is-EmptyExpr!8742 (h!39814 (exprs!3202 lt!1018696))))))

(assert (=> d!831427 (= (getLanguageWitness!436 (h!39814 (exprs!3202 lt!1018696))) e!1820108)))

(declare-fun b!2876239 () Bool)

(assert (=> b!2876239 (= e!1820104 call!186134)))

(declare-fun bm!186130 () Bool)

(assert (=> bm!186130 (= call!186135 (getLanguageWitness!436 (ite c!466168 (regOne!17997 (h!39814 (exprs!3202 lt!1018696))) (regOne!17996 (h!39814 (exprs!3202 lt!1018696))))))))

(declare-fun b!2876247 () Bool)

(assert (=> b!2876247 (= e!1820108 e!1820109)))

(declare-fun c!466169 () Bool)

(assert (=> b!2876247 (= c!466169 (is-EmptyLang!8742 (h!39814 (exprs!3202 lt!1018696))))))

(declare-fun b!2876248 () Bool)

(assert (=> b!2876248 (= e!1820103 e!1820104)))

(assert (=> b!2876248 (= lt!1018807 call!186135)))

(declare-fun c!466167 () Bool)

(assert (=> b!2876248 (= c!466167 (is-Some!6416 lt!1018807))))

(declare-fun b!2876249 () Bool)

(assert (=> b!2876249 (= e!1820102 (Some!6416 (Cons!34393 (c!466015 (h!39814 (exprs!3202 lt!1018696))) Nil!34393)))))

(assert (= (and d!831427 c!466166) b!2876243))

(assert (= (and d!831427 (not c!466166)) b!2876247))

(assert (= (and b!2876247 c!466169) b!2876240))

(assert (= (and b!2876247 (not c!466169)) b!2876235))

(assert (= (and b!2876235 c!466165) b!2876249))

(assert (= (and b!2876235 (not c!466165)) b!2876245))

(assert (= (and b!2876245 c!466164) b!2876237))

(assert (= (and b!2876245 (not c!466164)) b!2876238))

(assert (= (and b!2876238 c!466168) b!2876248))

(assert (= (and b!2876238 (not c!466168)) b!2876242))

(assert (= (and b!2876248 c!466167) b!2876234))

(assert (= (and b!2876248 (not c!466167)) b!2876239))

(assert (= (and b!2876242 c!466170) b!2876236))

(assert (= (and b!2876242 (not c!466170)) b!2876246))

(assert (= (and b!2876236 c!466171) b!2876244))

(assert (= (and b!2876236 (not c!466171)) b!2876241))

(assert (= (or b!2876239 b!2876236) bm!186129))

(assert (= (or b!2876248 b!2876242) bm!186130))

(declare-fun m!3293903 () Bool)

(assert (=> bm!186129 m!3293903))

(declare-fun m!3293905 () Bool)

(assert (=> b!2876244 m!3293905))

(declare-fun m!3293907 () Bool)

(assert (=> bm!186130 m!3293907))

(assert (=> b!2876054 d!831427))

(declare-fun d!831437 () Bool)

(assert (=> d!831437 (= (isEmpty!18727 (v!34542 lt!1018702)) (is-Nil!34393 (v!34542 lt!1018702)))))

(assert (=> d!831333 d!831437))

(declare-fun b!2876266 () Bool)

(declare-fun e!1820120 () Option!6417)

(declare-fun lt!1018813 () Option!6417)

(assert (=> b!2876266 (= e!1820120 lt!1018813)))

(declare-fun b!2876267 () Bool)

(declare-fun c!466181 () Bool)

(assert (=> b!2876267 (= c!466181 (is-ElementMatch!8742 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun e!1820125 () Option!6417)

(declare-fun e!1820118 () Option!6417)

(assert (=> b!2876267 (= e!1820125 e!1820118)))

(declare-fun b!2876268 () Bool)

(declare-fun c!466187 () Bool)

(declare-fun lt!1018814 () Option!6417)

(assert (=> b!2876268 (= c!466187 (is-Some!6416 lt!1018814))))

(declare-fun call!186138 () Option!6417)

(assert (=> b!2876268 (= lt!1018814 call!186138)))

(declare-fun e!1820121 () Option!6417)

(declare-fun e!1820123 () Option!6417)

(assert (=> b!2876268 (= e!1820121 e!1820123)))

(declare-fun bm!186133 () Bool)

(declare-fun c!466184 () Bool)

(assert (=> bm!186133 (= call!186138 (getLanguageWitness!436 (ite c!466184 (regTwo!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun b!2876269 () Bool)

(declare-fun e!1820122 () Option!6417)

(assert (=> b!2876269 (= e!1820122 (Some!6416 Nil!34393))))

(declare-fun b!2876270 () Bool)

(assert (=> b!2876270 (= c!466184 (is-Union!8742 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun e!1820119 () Option!6417)

(assert (=> b!2876270 (= e!1820122 e!1820119)))

(declare-fun b!2876272 () Bool)

(assert (=> b!2876272 (= e!1820125 None!6416)))

(declare-fun b!2876273 () Bool)

(assert (=> b!2876273 (= e!1820123 None!6416)))

(declare-fun b!2876274 () Bool)

(assert (=> b!2876274 (= e!1820119 e!1820121)))

(declare-fun lt!1018815 () Option!6417)

(declare-fun call!186139 () Option!6417)

(assert (=> b!2876274 (= lt!1018815 call!186139)))

(declare-fun c!466186 () Bool)

(assert (=> b!2876274 (= c!466186 (is-Some!6416 lt!1018815))))

(declare-fun b!2876275 () Bool)

(declare-fun e!1820124 () Option!6417)

(assert (=> b!2876275 (= e!1820124 (Some!6416 Nil!34393))))

(declare-fun b!2876276 () Bool)

(assert (=> b!2876276 (= e!1820123 (Some!6416 (++!8179 (v!34542 lt!1018815) (v!34542 lt!1018814))))))

(declare-fun b!2876277 () Bool)

(assert (=> b!2876277 (= e!1820118 e!1820122)))

(declare-fun c!466180 () Bool)

(assert (=> b!2876277 (= c!466180 (is-Star!8742 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun b!2876278 () Bool)

(assert (=> b!2876278 (= e!1820121 None!6416)))

(declare-fun d!831439 () Bool)

(declare-fun c!466182 () Bool)

(assert (=> d!831439 (= c!466182 (is-EmptyExpr!8742 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))

(assert (=> d!831439 (= (getLanguageWitness!436 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) e!1820124)))

(declare-fun b!2876271 () Bool)

(assert (=> b!2876271 (= e!1820120 call!186138)))

(declare-fun bm!186134 () Bool)

(assert (=> bm!186134 (= call!186139 (getLanguageWitness!436 (ite c!466184 (regOne!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun b!2876279 () Bool)

(assert (=> b!2876279 (= e!1820124 e!1820125)))

(declare-fun c!466185 () Bool)

(assert (=> b!2876279 (= c!466185 (is-EmptyLang!8742 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun b!2876280 () Bool)

(assert (=> b!2876280 (= e!1820119 e!1820120)))

(assert (=> b!2876280 (= lt!1018813 call!186139)))

(declare-fun c!466183 () Bool)

(assert (=> b!2876280 (= c!466183 (is-Some!6416 lt!1018813))))

(declare-fun b!2876281 () Bool)

(assert (=> b!2876281 (= e!1820118 (Some!6416 (Cons!34393 (c!466015 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) Nil!34393)))))

(assert (= (and d!831439 c!466182) b!2876275))

(assert (= (and d!831439 (not c!466182)) b!2876279))

(assert (= (and b!2876279 c!466185) b!2876272))

(assert (= (and b!2876279 (not c!466185)) b!2876267))

(assert (= (and b!2876267 c!466181) b!2876281))

(assert (= (and b!2876267 (not c!466181)) b!2876277))

(assert (= (and b!2876277 c!466180) b!2876269))

(assert (= (and b!2876277 (not c!466180)) b!2876270))

(assert (= (and b!2876270 c!466184) b!2876280))

(assert (= (and b!2876270 (not c!466184)) b!2876274))

(assert (= (and b!2876280 c!466183) b!2876266))

(assert (= (and b!2876280 (not c!466183)) b!2876271))

(assert (= (and b!2876274 c!466186) b!2876268))

(assert (= (and b!2876274 (not c!466186)) b!2876278))

(assert (= (and b!2876268 c!466187) b!2876276))

(assert (= (and b!2876268 (not c!466187)) b!2876273))

(assert (= (or b!2876271 b!2876268) bm!186133))

(assert (= (or b!2876280 b!2876274) bm!186134))

(declare-fun m!3293915 () Bool)

(assert (=> bm!186133 m!3293915))

(declare-fun m!3293917 () Bool)

(assert (=> b!2876276 m!3293917))

(declare-fun m!3293919 () Bool)

(assert (=> bm!186134 m!3293919))

(assert (=> bm!186102 d!831439))

(declare-fun b!2876322 () Bool)

(declare-fun e!1820155 () Bool)

(declare-fun e!1820161 () Bool)

(assert (=> b!2876322 (= e!1820155 e!1820161)))

(declare-fun res!1192696 () Bool)

(assert (=> b!2876322 (= res!1192696 (not (nullable!2692 (reg!9071 (h!39814 (exprs!3202 c!7184))))))))

(assert (=> b!2876322 (=> (not res!1192696) (not e!1820161))))

(declare-fun b!2876323 () Bool)

(declare-fun e!1820158 () Bool)

(assert (=> b!2876323 (= e!1820155 e!1820158)))

(declare-fun c!466199 () Bool)

(assert (=> b!2876323 (= c!466199 (is-Union!8742 (h!39814 (exprs!3202 c!7184))))))

(declare-fun d!831445 () Bool)

(declare-fun res!1192697 () Bool)

(declare-fun e!1820156 () Bool)

(assert (=> d!831445 (=> res!1192697 e!1820156)))

(assert (=> d!831445 (= res!1192697 (is-ElementMatch!8742 (h!39814 (exprs!3202 c!7184))))))

(assert (=> d!831445 (= (validRegex!3520 (h!39814 (exprs!3202 c!7184))) e!1820156)))

(declare-fun call!186148 () Bool)

(declare-fun bm!186143 () Bool)

(declare-fun c!466200 () Bool)

(assert (=> bm!186143 (= call!186148 (validRegex!3520 (ite c!466200 (reg!9071 (h!39814 (exprs!3202 c!7184))) (ite c!466199 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))))))

(declare-fun b!2876324 () Bool)

(declare-fun e!1820160 () Bool)

(declare-fun call!186150 () Bool)

(assert (=> b!2876324 (= e!1820160 call!186150)))

(declare-fun b!2876325 () Bool)

(declare-fun e!1820157 () Bool)

(declare-fun call!186149 () Bool)

(assert (=> b!2876325 (= e!1820157 call!186149)))

(declare-fun b!2876326 () Bool)

(assert (=> b!2876326 (= e!1820161 call!186148)))

(declare-fun b!2876327 () Bool)

(declare-fun res!1192698 () Bool)

(assert (=> b!2876327 (=> (not res!1192698) (not e!1820157))))

(assert (=> b!2876327 (= res!1192698 call!186150)))

(assert (=> b!2876327 (= e!1820158 e!1820157)))

(declare-fun b!2876328 () Bool)

(declare-fun res!1192699 () Bool)

(declare-fun e!1820159 () Bool)

(assert (=> b!2876328 (=> res!1192699 e!1820159)))

(assert (=> b!2876328 (= res!1192699 (not (is-Concat!14063 (h!39814 (exprs!3202 c!7184)))))))

(assert (=> b!2876328 (= e!1820158 e!1820159)))

(declare-fun b!2876329 () Bool)

(assert (=> b!2876329 (= e!1820156 e!1820155)))

(assert (=> b!2876329 (= c!466200 (is-Star!8742 (h!39814 (exprs!3202 c!7184))))))

(declare-fun bm!186144 () Bool)

(assert (=> bm!186144 (= call!186150 (validRegex!3520 (ite c!466199 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun b!2876330 () Bool)

(assert (=> b!2876330 (= e!1820159 e!1820160)))

(declare-fun res!1192700 () Bool)

(assert (=> b!2876330 (=> (not res!1192700) (not e!1820160))))

(assert (=> b!2876330 (= res!1192700 call!186149)))

(declare-fun bm!186145 () Bool)

(assert (=> bm!186145 (= call!186149 call!186148)))

(assert (= (and d!831445 (not res!1192697)) b!2876329))

(assert (= (and b!2876329 c!466200) b!2876322))

(assert (= (and b!2876329 (not c!466200)) b!2876323))

(assert (= (and b!2876322 res!1192696) b!2876326))

(assert (= (and b!2876323 c!466199) b!2876327))

(assert (= (and b!2876323 (not c!466199)) b!2876328))

(assert (= (and b!2876327 res!1192698) b!2876325))

(assert (= (and b!2876328 (not res!1192699)) b!2876330))

(assert (= (and b!2876330 res!1192700) b!2876324))

(assert (= (or b!2876325 b!2876330) bm!186145))

(assert (= (or b!2876327 b!2876324) bm!186144))

(assert (= (or b!2876326 bm!186145) bm!186143))

(declare-fun m!3293935 () Bool)

(assert (=> b!2876322 m!3293935))

(declare-fun m!3293937 () Bool)

(assert (=> bm!186143 m!3293937))

(declare-fun m!3293939 () Bool)

(assert (=> bm!186144 m!3293939))

(assert (=> d!831321 d!831445))

(declare-fun d!831455 () Bool)

(assert (=> d!831455 (= (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))) (v!34542 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))))

(assert (=> d!831321 d!831455))

(assert (=> d!831321 d!831341))

(declare-fun b!2876331 () Bool)

(declare-fun e!1820162 () Bool)

(assert (=> b!2876331 (= e!1820162 (matchR!3742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))) (tail!4574 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))))))

(declare-fun b!2876332 () Bool)

(declare-fun res!1192701 () Bool)

(declare-fun e!1820164 () Bool)

(assert (=> b!2876332 (=> (not res!1192701) (not e!1820164))))

(assert (=> b!2876332 (= res!1192701 (isEmpty!18727 (tail!4574 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))))))

(declare-fun b!2876333 () Bool)

(assert (=> b!2876333 (= e!1820162 (nullable!2692 (h!39814 (exprs!3202 c!7184))))))

(declare-fun b!2876334 () Bool)

(declare-fun e!1820167 () Bool)

(declare-fun e!1820165 () Bool)

(assert (=> b!2876334 (= e!1820167 e!1820165)))

(declare-fun res!1192703 () Bool)

(assert (=> b!2876334 (=> res!1192703 e!1820165)))

(declare-fun call!186155 () Bool)

(assert (=> b!2876334 (= res!1192703 call!186155)))

(declare-fun b!2876336 () Bool)

(declare-fun e!1820166 () Bool)

(declare-fun lt!1018816 () Bool)

(assert (=> b!2876336 (= e!1820166 (not lt!1018816))))

(declare-fun b!2876337 () Bool)

(declare-fun res!1192705 () Bool)

(assert (=> b!2876337 (=> (not res!1192705) (not e!1820164))))

(assert (=> b!2876337 (= res!1192705 (not call!186155))))

(declare-fun b!2876338 () Bool)

(declare-fun e!1820163 () Bool)

(assert (=> b!2876338 (= e!1820163 e!1820166)))

(declare-fun c!466202 () Bool)

(assert (=> b!2876338 (= c!466202 (is-EmptyLang!8742 (h!39814 (exprs!3202 c!7184))))))

(declare-fun bm!186150 () Bool)

(assert (=> bm!186150 (= call!186155 (isEmpty!18727 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun b!2876339 () Bool)

(declare-fun e!1820168 () Bool)

(assert (=> b!2876339 (= e!1820168 e!1820167)))

(declare-fun res!1192704 () Bool)

(assert (=> b!2876339 (=> (not res!1192704) (not e!1820167))))

(assert (=> b!2876339 (= res!1192704 (not lt!1018816))))

(declare-fun b!2876340 () Bool)

(declare-fun res!1192706 () Bool)

(assert (=> b!2876340 (=> res!1192706 e!1820165)))

(assert (=> b!2876340 (= res!1192706 (not (isEmpty!18727 (tail!4574 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun d!831457 () Bool)

(assert (=> d!831457 e!1820163))

(declare-fun c!466201 () Bool)

(assert (=> d!831457 (= c!466201 (is-EmptyExpr!8742 (h!39814 (exprs!3202 c!7184))))))

(assert (=> d!831457 (= lt!1018816 e!1820162)))

(declare-fun c!466203 () Bool)

(assert (=> d!831457 (= c!466203 (isEmpty!18727 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))))))

(assert (=> d!831457 (validRegex!3520 (h!39814 (exprs!3202 c!7184)))))

(assert (=> d!831457 (= (matchR!3742 (h!39814 (exprs!3202 c!7184)) (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))) lt!1018816)))

(declare-fun b!2876335 () Bool)

(assert (=> b!2876335 (= e!1820164 (= (head!6349 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))) (c!466015 (h!39814 (exprs!3202 c!7184)))))))

(declare-fun b!2876341 () Bool)

(assert (=> b!2876341 (= e!1820165 (not (= (head!6349 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))) (c!466015 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun b!2876342 () Bool)

(declare-fun res!1192707 () Bool)

(assert (=> b!2876342 (=> res!1192707 e!1820168)))

(assert (=> b!2876342 (= res!1192707 e!1820164)))

(declare-fun res!1192708 () Bool)

(assert (=> b!2876342 (=> (not res!1192708) (not e!1820164))))

(assert (=> b!2876342 (= res!1192708 lt!1018816)))

(declare-fun b!2876343 () Bool)

(assert (=> b!2876343 (= e!1820163 (= lt!1018816 call!186155))))

(declare-fun b!2876344 () Bool)

(declare-fun res!1192702 () Bool)

(assert (=> b!2876344 (=> res!1192702 e!1820168)))

(assert (=> b!2876344 (= res!1192702 (not (is-ElementMatch!8742 (h!39814 (exprs!3202 c!7184)))))))

(assert (=> b!2876344 (= e!1820166 e!1820168)))

(assert (= (and d!831457 c!466203) b!2876333))

(assert (= (and d!831457 (not c!466203)) b!2876331))

(assert (= (and d!831457 c!466201) b!2876343))

(assert (= (and d!831457 (not c!466201)) b!2876338))

(assert (= (and b!2876338 c!466202) b!2876336))

(assert (= (and b!2876338 (not c!466202)) b!2876344))

(assert (= (and b!2876344 (not res!1192702)) b!2876342))

(assert (= (and b!2876342 res!1192708) b!2876337))

(assert (= (and b!2876337 res!1192705) b!2876332))

(assert (= (and b!2876332 res!1192701) b!2876335))

(assert (= (and b!2876342 (not res!1192707)) b!2876339))

(assert (= (and b!2876339 res!1192704) b!2876334))

(assert (= (and b!2876334 (not res!1192703)) b!2876340))

(assert (= (and b!2876340 (not res!1192706)) b!2876341))

(assert (= (or b!2876343 b!2876334 b!2876337) bm!186150))

(assert (=> b!2876335 m!3293631))

(declare-fun m!3293941 () Bool)

(assert (=> b!2876335 m!3293941))

(assert (=> bm!186150 m!3293631))

(declare-fun m!3293943 () Bool)

(assert (=> bm!186150 m!3293943))

(assert (=> b!2876341 m!3293631))

(assert (=> b!2876341 m!3293941))

(assert (=> b!2876333 m!3293643))

(assert (=> b!2876340 m!3293631))

(declare-fun m!3293945 () Bool)

(assert (=> b!2876340 m!3293945))

(assert (=> b!2876340 m!3293945))

(declare-fun m!3293947 () Bool)

(assert (=> b!2876340 m!3293947))

(assert (=> b!2876331 m!3293631))

(assert (=> b!2876331 m!3293941))

(assert (=> b!2876331 m!3293941))

(declare-fun m!3293949 () Bool)

(assert (=> b!2876331 m!3293949))

(assert (=> b!2876331 m!3293631))

(assert (=> b!2876331 m!3293945))

(assert (=> b!2876331 m!3293949))

(assert (=> b!2876331 m!3293945))

(declare-fun m!3293951 () Bool)

(assert (=> b!2876331 m!3293951))

(assert (=> b!2876332 m!3293631))

(assert (=> b!2876332 m!3293945))

(assert (=> b!2876332 m!3293945))

(assert (=> b!2876332 m!3293947))

(assert (=> d!831457 m!3293631))

(assert (=> d!831457 m!3293943))

(assert (=> d!831457 m!3293635))

(assert (=> d!831321 d!831457))

(declare-fun d!831459 () Bool)

(assert (=> d!831459 (matchR!3742 (h!39814 (exprs!3202 c!7184)) (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))))

(assert (=> d!831459 true))

(declare-fun _$101!108 () Unit!47985)

(assert (=> d!831459 (= (choose!17004 (h!39814 (exprs!3202 c!7184))) _$101!108)))

(declare-fun bs!522726 () Bool)

(assert (= bs!522726 d!831459))

(assert (=> bs!522726 m!3293577))

(assert (=> bs!522726 m!3293577))

(assert (=> bs!522726 m!3293631))

(assert (=> bs!522726 m!3293631))

(assert (=> bs!522726 m!3293633))

(assert (=> d!831321 d!831459))

(assert (=> b!2875918 d!831393))

(assert (=> d!831335 d!831323))

(assert (=> d!831335 d!831333))

(declare-fun d!831463 () Bool)

(assert (=> d!831463 (= (matchR!3742 (h!39814 (exprs!3202 c!7184)) (v!34542 lt!1018702)) (matchZipper!484 lt!1018699 (v!34542 lt!1018702)))))

(assert (=> d!831463 true))

(declare-fun _$44!1293 () Unit!47985)

(assert (=> d!831463 (= (choose!17005 lt!1018699 (Cons!34395 lt!1018700 Nil!34395) (h!39814 (exprs!3202 c!7184)) (v!34542 lt!1018702)) _$44!1293)))

(declare-fun bs!522742 () Bool)

(assert (= bs!522742 d!831463))

(assert (=> bs!522742 m!3293571))

(assert (=> bs!522742 m!3293581))

(assert (=> d!831335 d!831463))

(assert (=> d!831335 d!831445))

(assert (=> d!831323 d!831437))

(assert (=> d!831323 d!831445))

(declare-fun d!831471 () Bool)

(assert (=> d!831471 (= (isEmpty!18727 (get!10340 lt!1018702)) (is-Nil!34393 (get!10340 lt!1018702)))))

(assert (=> bm!186097 d!831471))

(declare-fun d!831473 () Bool)

(assert (=> d!831473 (= (isEmpty!18730 lt!1018774) (not (is-Some!6416 lt!1018774)))))

(assert (=> d!831349 d!831473))

(declare-fun bs!522743 () Bool)

(declare-fun d!831475 () Bool)

(assert (= bs!522743 (and d!831475 d!831349)))

(declare-fun lambda!107305 () Int)

(assert (=> bs!522743 (not (= lambda!107305 lambda!107282))))

(declare-fun bs!522744 () Bool)

(assert (= bs!522744 (and d!831475 d!831383)))

(assert (=> bs!522744 (= (= lambda!107282 lambda!107270) (= lambda!107305 lambda!107288))))

(declare-fun bs!522745 () Bool)

(assert (= bs!522745 (and d!831475 d!831337)))

(assert (=> bs!522745 (not (= lambda!107305 lambda!107270))))

(declare-fun bs!522746 () Bool)

(assert (= bs!522746 (and d!831475 d!831421)))

(assert (=> bs!522746 (not (= lambda!107305 lambda!107294))))

(declare-fun bs!522747 () Bool)

(assert (= bs!522747 (and d!831475 d!831339)))

(assert (=> bs!522747 (not (= lambda!107305 lambda!107271))))

(declare-fun bs!522748 () Bool)

(assert (= bs!522748 (and d!831475 d!831331)))

(assert (=> bs!522748 (not (= lambda!107305 lambda!107265))))

(assert (=> d!831475 true))

(assert (=> d!831475 (< (dynLambda!14319 order!18137 lambda!107282) (dynLambda!14319 order!18137 lambda!107305))))

(assert (=> d!831475 (= (exists!1172 (exprs!3202 lt!1018696) lambda!107282) (not (forall!7087 (exprs!3202 lt!1018696) lambda!107305)))))

(declare-fun bs!522749 () Bool)

(assert (= bs!522749 d!831475))

(declare-fun m!3293977 () Bool)

(assert (=> bs!522749 m!3293977))

(assert (=> d!831349 d!831475))

(declare-fun d!831479 () Bool)

(assert (=> d!831479 (= (isEmpty!18727 (get!10340 lt!1018697)) (is-Nil!34393 (get!10340 lt!1018697)))))

(assert (=> d!831327 d!831479))

(declare-fun bs!522750 () Bool)

(declare-fun d!831481 () Bool)

(assert (= bs!522750 (and d!831481 d!831375)))

(declare-fun lambda!107306 () Int)

(assert (=> bs!522750 (= lambda!107306 lambda!107285)))

(assert (=> d!831481 (= (nullableZipper!720 (set.insert lt!1018696 (as set.empty (Set Context!5404)))) (exists!1173 (set.insert lt!1018696 (as set.empty (Set Context!5404))) lambda!107306))))

(declare-fun bs!522751 () Bool)

(assert (= bs!522751 d!831481))

(assert (=> bs!522751 m!3293567))

(declare-fun m!3293979 () Bool)

(assert (=> bs!522751 m!3293979))

(assert (=> b!2875932 d!831481))

(assert (=> b!2875915 d!831397))

(assert (=> b!2875915 d!831399))

(assert (=> b!2875909 d!831377))

(assert (=> b!2875909 d!831379))

(assert (=> b!2875916 d!831381))

(assert (=> b!2875910 d!831373))

(declare-fun d!831483 () Bool)

(assert (=> d!831483 (matchZipper!484 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (get!10340 (getLanguageWitness!435 lt!1018696)))))

(assert (=> d!831483 true))

(declare-fun _$31!160 () Unit!47985)

(assert (=> d!831483 (= (choose!17003 lt!1018696) _$31!160)))

(declare-fun bs!522752 () Bool)

(assert (= bs!522752 d!831483))

(assert (=> bs!522752 m!3293567))

(assert (=> bs!522752 m!3293575))

(assert (=> bs!522752 m!3293575))

(assert (=> bs!522752 m!3293623))

(assert (=> bs!522752 m!3293567))

(assert (=> bs!522752 m!3293623))

(assert (=> bs!522752 m!3293627))

(assert (=> d!831319 d!831483))

(assert (=> d!831319 d!831349))

(declare-fun d!831485 () Bool)

(declare-fun c!466210 () Bool)

(assert (=> d!831485 (= c!466210 (isEmpty!18727 (get!10340 (getLanguageWitness!435 lt!1018696))))))

(declare-fun e!1820183 () Bool)

(assert (=> d!831485 (= (matchZipper!484 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (get!10340 (getLanguageWitness!435 lt!1018696))) e!1820183)))

(declare-fun b!2876370 () Bool)

(assert (=> b!2876370 (= e!1820183 (nullableZipper!720 (set.insert lt!1018696 (as set.empty (Set Context!5404)))))))

(declare-fun b!2876371 () Bool)

(assert (=> b!2876371 (= e!1820183 (matchZipper!484 (derivationStepZipper!476 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (head!6349 (get!10340 (getLanguageWitness!435 lt!1018696)))) (tail!4574 (get!10340 (getLanguageWitness!435 lt!1018696)))))))

(assert (= (and d!831485 c!466210) b!2876370))

(assert (= (and d!831485 (not c!466210)) b!2876371))

(assert (=> d!831485 m!3293623))

(declare-fun m!3293981 () Bool)

(assert (=> d!831485 m!3293981))

(assert (=> b!2876370 m!3293567))

(assert (=> b!2876370 m!3293667))

(assert (=> b!2876371 m!3293623))

(declare-fun m!3293983 () Bool)

(assert (=> b!2876371 m!3293983))

(assert (=> b!2876371 m!3293567))

(assert (=> b!2876371 m!3293983))

(declare-fun m!3293985 () Bool)

(assert (=> b!2876371 m!3293985))

(assert (=> b!2876371 m!3293623))

(declare-fun m!3293987 () Bool)

(assert (=> b!2876371 m!3293987))

(assert (=> b!2876371 m!3293985))

(assert (=> b!2876371 m!3293987))

(declare-fun m!3293989 () Bool)

(assert (=> b!2876371 m!3293989))

(assert (=> d!831319 d!831485))

(declare-fun d!831487 () Bool)

(assert (=> d!831487 (= (get!10340 (getLanguageWitness!435 lt!1018696)) (v!34542 (getLanguageWitness!435 lt!1018696)))))

(assert (=> d!831319 d!831487))

(declare-fun bs!522753 () Bool)

(declare-fun d!831489 () Bool)

(assert (= bs!522753 (and d!831489 d!831349)))

(declare-fun lambda!107307 () Int)

(assert (=> bs!522753 (= lambda!107307 lambda!107282)))

(declare-fun bs!522754 () Bool)

(assert (= bs!522754 (and d!831489 d!831383)))

(assert (=> bs!522754 (not (= lambda!107307 lambda!107288))))

(declare-fun bs!522755 () Bool)

(assert (= bs!522755 (and d!831489 d!831337)))

(assert (=> bs!522755 (= lambda!107307 lambda!107270)))

(declare-fun bs!522756 () Bool)

(assert (= bs!522756 (and d!831489 d!831421)))

(assert (=> bs!522756 (= lambda!107307 lambda!107294)))

(declare-fun bs!522757 () Bool)

(assert (= bs!522757 (and d!831489 d!831475)))

(assert (=> bs!522757 (not (= lambda!107307 lambda!107305))))

(declare-fun bs!522758 () Bool)

(assert (= bs!522758 (and d!831489 d!831339)))

(assert (=> bs!522758 (not (= lambda!107307 lambda!107271))))

(declare-fun bs!522759 () Bool)

(assert (= bs!522759 (and d!831489 d!831331)))

(assert (=> bs!522759 (not (= lambda!107307 lambda!107265))))

(assert (=> d!831489 (= (lostCause!834 lt!1018696) (exists!1172 (exprs!3202 lt!1018696) lambda!107307))))

(declare-fun bs!522760 () Bool)

(assert (= bs!522760 d!831489))

(declare-fun m!3293991 () Bool)

(assert (=> bs!522760 m!3293991))

(assert (=> d!831319 d!831489))

(assert (=> bm!186096 d!831437))

(declare-fun d!831491 () Bool)

(declare-fun c!466221 () Bool)

(assert (=> d!831491 (= c!466221 (isEmpty!18727 (tail!4574 (get!10340 lt!1018697))))))

(declare-fun e!1820194 () Bool)

(assert (=> d!831491 (= (matchZipper!484 (derivationStepZipper!476 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (head!6349 (get!10340 lt!1018697))) (tail!4574 (get!10340 lt!1018697))) e!1820194)))

(declare-fun b!2876392 () Bool)

(assert (=> b!2876392 (= e!1820194 (nullableZipper!720 (derivationStepZipper!476 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (head!6349 (get!10340 lt!1018697)))))))

(declare-fun b!2876393 () Bool)

(assert (=> b!2876393 (= e!1820194 (matchZipper!484 (derivationStepZipper!476 (derivationStepZipper!476 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (head!6349 (get!10340 lt!1018697))) (head!6349 (tail!4574 (get!10340 lt!1018697)))) (tail!4574 (tail!4574 (get!10340 lt!1018697)))))))

(assert (= (and d!831491 c!466221) b!2876392))

(assert (= (and d!831491 (not c!466221)) b!2876393))

(assert (=> d!831491 m!3293673))

(declare-fun m!3293993 () Bool)

(assert (=> d!831491 m!3293993))

(assert (=> b!2876392 m!3293671))

(declare-fun m!3293995 () Bool)

(assert (=> b!2876392 m!3293995))

(assert (=> b!2876393 m!3293673))

(declare-fun m!3293997 () Bool)

(assert (=> b!2876393 m!3293997))

(assert (=> b!2876393 m!3293671))

(assert (=> b!2876393 m!3293997))

(declare-fun m!3293999 () Bool)

(assert (=> b!2876393 m!3293999))

(assert (=> b!2876393 m!3293673))

(declare-fun m!3294001 () Bool)

(assert (=> b!2876393 m!3294001))

(assert (=> b!2876393 m!3293999))

(assert (=> b!2876393 m!3294001))

(declare-fun m!3294003 () Bool)

(assert (=> b!2876393 m!3294003))

(assert (=> b!2875933 d!831491))

(declare-fun bs!522761 () Bool)

(declare-fun d!831493 () Bool)

(assert (= bs!522761 (and d!831493 d!831389)))

(declare-fun lambda!107308 () Int)

(assert (=> bs!522761 (= (= (head!6349 (get!10340 lt!1018697)) (head!6349 (v!34542 lt!1018702))) (= lambda!107308 lambda!107291))))

(assert (=> d!831493 true))

(assert (=> d!831493 (= (derivationStepZipper!476 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (head!6349 (get!10340 lt!1018697))) (flatMap!223 (set.insert lt!1018696 (as set.empty (Set Context!5404))) lambda!107308))))

(declare-fun bs!522762 () Bool)

(assert (= bs!522762 d!831493))

(assert (=> bs!522762 m!3293567))

(declare-fun m!3294005 () Bool)

(assert (=> bs!522762 m!3294005))

(assert (=> b!2875933 d!831493))

(declare-fun d!831495 () Bool)

(assert (=> d!831495 (= (head!6349 (get!10340 lt!1018697)) (h!39813 (get!10340 lt!1018697)))))

(assert (=> b!2875933 d!831495))

(declare-fun d!831497 () Bool)

(assert (=> d!831497 (= (tail!4574 (get!10340 lt!1018697)) (t!233560 (get!10340 lt!1018697)))))

(assert (=> b!2875933 d!831497))

(declare-fun b!2876394 () Bool)

(declare-fun e!1820195 () Bool)

(assert (=> b!2876394 (= e!1820195 (matchR!3742 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))) (head!6349 (tail!4574 (get!10340 lt!1018702)))) (tail!4574 (tail!4574 (get!10340 lt!1018702)))))))

(declare-fun b!2876395 () Bool)

(declare-fun res!1192722 () Bool)

(declare-fun e!1820197 () Bool)

(assert (=> b!2876395 (=> (not res!1192722) (not e!1820197))))

(assert (=> b!2876395 (= res!1192722 (isEmpty!18727 (tail!4574 (tail!4574 (get!10340 lt!1018702)))))))

(declare-fun b!2876396 () Bool)

(assert (=> b!2876396 (= e!1820195 (nullable!2692 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))))))

(declare-fun b!2876397 () Bool)

(declare-fun e!1820200 () Bool)

(declare-fun e!1820198 () Bool)

(assert (=> b!2876397 (= e!1820200 e!1820198)))

(declare-fun res!1192724 () Bool)

(assert (=> b!2876397 (=> res!1192724 e!1820198)))

(declare-fun call!186168 () Bool)

(assert (=> b!2876397 (= res!1192724 call!186168)))

(declare-fun b!2876399 () Bool)

(declare-fun e!1820199 () Bool)

(declare-fun lt!1018820 () Bool)

(assert (=> b!2876399 (= e!1820199 (not lt!1018820))))

(declare-fun b!2876400 () Bool)

(declare-fun res!1192726 () Bool)

(assert (=> b!2876400 (=> (not res!1192726) (not e!1820197))))

(assert (=> b!2876400 (= res!1192726 (not call!186168))))

(declare-fun b!2876401 () Bool)

(declare-fun e!1820196 () Bool)

(assert (=> b!2876401 (= e!1820196 e!1820199)))

(declare-fun c!466223 () Bool)

(assert (=> b!2876401 (= c!466223 (is-EmptyLang!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))))))

(declare-fun bm!186163 () Bool)

(assert (=> bm!186163 (= call!186168 (isEmpty!18727 (tail!4574 (get!10340 lt!1018702))))))

(declare-fun b!2876402 () Bool)

(declare-fun e!1820201 () Bool)

(assert (=> b!2876402 (= e!1820201 e!1820200)))

(declare-fun res!1192725 () Bool)

(assert (=> b!2876402 (=> (not res!1192725) (not e!1820200))))

(assert (=> b!2876402 (= res!1192725 (not lt!1018820))))

(declare-fun b!2876403 () Bool)

(declare-fun res!1192727 () Bool)

(assert (=> b!2876403 (=> res!1192727 e!1820198)))

(assert (=> b!2876403 (= res!1192727 (not (isEmpty!18727 (tail!4574 (tail!4574 (get!10340 lt!1018702))))))))

(declare-fun d!831499 () Bool)

(assert (=> d!831499 e!1820196))

(declare-fun c!466222 () Bool)

(assert (=> d!831499 (= c!466222 (is-EmptyExpr!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))))))

(assert (=> d!831499 (= lt!1018820 e!1820195)))

(declare-fun c!466224 () Bool)

(assert (=> d!831499 (= c!466224 (isEmpty!18727 (tail!4574 (get!10340 lt!1018702))))))

(assert (=> d!831499 (validRegex!3520 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))))))

(assert (=> d!831499 (= (matchR!3742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))) (tail!4574 (get!10340 lt!1018702))) lt!1018820)))

(declare-fun b!2876398 () Bool)

(assert (=> b!2876398 (= e!1820197 (= (head!6349 (tail!4574 (get!10340 lt!1018702))) (c!466015 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))))))))

(declare-fun b!2876404 () Bool)

(assert (=> b!2876404 (= e!1820198 (not (= (head!6349 (tail!4574 (get!10340 lt!1018702))) (c!466015 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))))))))

(declare-fun b!2876405 () Bool)

(declare-fun res!1192728 () Bool)

(assert (=> b!2876405 (=> res!1192728 e!1820201)))

(assert (=> b!2876405 (= res!1192728 e!1820197)))

(declare-fun res!1192729 () Bool)

(assert (=> b!2876405 (=> (not res!1192729) (not e!1820197))))

(assert (=> b!2876405 (= res!1192729 lt!1018820)))

(declare-fun b!2876406 () Bool)

(assert (=> b!2876406 (= e!1820196 (= lt!1018820 call!186168))))

(declare-fun b!2876407 () Bool)

(declare-fun res!1192723 () Bool)

(assert (=> b!2876407 (=> res!1192723 e!1820201)))

(assert (=> b!2876407 (= res!1192723 (not (is-ElementMatch!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))))))))

(assert (=> b!2876407 (= e!1820199 e!1820201)))

(assert (= (and d!831499 c!466224) b!2876396))

(assert (= (and d!831499 (not c!466224)) b!2876394))

(assert (= (and d!831499 c!466222) b!2876406))

(assert (= (and d!831499 (not c!466222)) b!2876401))

(assert (= (and b!2876401 c!466223) b!2876399))

(assert (= (and b!2876401 (not c!466223)) b!2876407))

(assert (= (and b!2876407 (not res!1192723)) b!2876405))

(assert (= (and b!2876405 res!1192729) b!2876400))

(assert (= (and b!2876400 res!1192726) b!2876395))

(assert (= (and b!2876395 res!1192722) b!2876398))

(assert (= (and b!2876405 (not res!1192728)) b!2876402))

(assert (= (and b!2876402 res!1192725) b!2876397))

(assert (= (and b!2876397 (not res!1192724)) b!2876403))

(assert (= (and b!2876403 (not res!1192727)) b!2876404))

(assert (= (or b!2876406 b!2876397 b!2876400) bm!186163))

(assert (=> b!2876398 m!3293657))

(declare-fun m!3294007 () Bool)

(assert (=> b!2876398 m!3294007))

(assert (=> bm!186163 m!3293657))

(assert (=> bm!186163 m!3293659))

(assert (=> b!2876404 m!3293657))

(assert (=> b!2876404 m!3294007))

(assert (=> b!2876396 m!3293661))

(declare-fun m!3294009 () Bool)

(assert (=> b!2876396 m!3294009))

(assert (=> b!2876403 m!3293657))

(declare-fun m!3294011 () Bool)

(assert (=> b!2876403 m!3294011))

(assert (=> b!2876403 m!3294011))

(declare-fun m!3294013 () Bool)

(assert (=> b!2876403 m!3294013))

(assert (=> b!2876394 m!3293657))

(assert (=> b!2876394 m!3294007))

(assert (=> b!2876394 m!3293661))

(assert (=> b!2876394 m!3294007))

(declare-fun m!3294015 () Bool)

(assert (=> b!2876394 m!3294015))

(assert (=> b!2876394 m!3293657))

(assert (=> b!2876394 m!3294011))

(assert (=> b!2876394 m!3294015))

(assert (=> b!2876394 m!3294011))

(declare-fun m!3294017 () Bool)

(assert (=> b!2876394 m!3294017))

(assert (=> b!2876395 m!3293657))

(assert (=> b!2876395 m!3294011))

(assert (=> b!2876395 m!3294011))

(assert (=> b!2876395 m!3294013))

(assert (=> d!831499 m!3293657))

(assert (=> d!831499 m!3293659))

(assert (=> d!831499 m!3293661))

(declare-fun m!3294019 () Bool)

(assert (=> d!831499 m!3294019))

(assert (=> b!2875914 d!831499))

(declare-fun bm!186164 () Bool)

(declare-fun call!186172 () Regex!8742)

(declare-fun call!186171 () Regex!8742)

(assert (=> bm!186164 (= call!186172 call!186171)))

(declare-fun b!2876408 () Bool)

(declare-fun e!1820204 () Regex!8742)

(assert (=> b!2876408 (= e!1820204 EmptyLang!8742)))

(declare-fun b!2876409 () Bool)

(declare-fun c!466227 () Bool)

(assert (=> b!2876409 (= c!466227 (is-Union!8742 (h!39814 (exprs!3202 c!7184))))))

(declare-fun e!1820206 () Regex!8742)

(declare-fun e!1820203 () Regex!8742)

(assert (=> b!2876409 (= e!1820206 e!1820203)))

(declare-fun b!2876410 () Bool)

(declare-fun c!466229 () Bool)

(assert (=> b!2876410 (= c!466229 (nullable!2692 (regOne!17996 (h!39814 (exprs!3202 c!7184)))))))

(declare-fun e!1820202 () Regex!8742)

(declare-fun e!1820205 () Regex!8742)

(assert (=> b!2876410 (= e!1820202 e!1820205)))

(declare-fun b!2876411 () Bool)

(assert (=> b!2876411 (= e!1820202 (Concat!14063 call!186172 (h!39814 (exprs!3202 c!7184))))))

(declare-fun call!186170 () Regex!8742)

(declare-fun b!2876412 () Bool)

(declare-fun call!186169 () Regex!8742)

(assert (=> b!2876412 (= e!1820205 (Union!8742 (Concat!14063 call!186169 (regTwo!17996 (h!39814 (exprs!3202 c!7184)))) call!186170))))

(declare-fun b!2876413 () Bool)

(assert (=> b!2876413 (= e!1820205 (Union!8742 (Concat!14063 call!186169 (regTwo!17996 (h!39814 (exprs!3202 c!7184)))) EmptyLang!8742))))

(declare-fun b!2876414 () Bool)

(assert (=> b!2876414 (= e!1820206 (ite (= (head!6349 (get!10340 lt!1018702)) (c!466015 (h!39814 (exprs!3202 c!7184)))) EmptyExpr!8742 EmptyLang!8742))))

(declare-fun b!2876415 () Bool)

(assert (=> b!2876415 (= e!1820203 (Union!8742 call!186171 call!186170))))

(declare-fun bm!186165 () Bool)

(declare-fun c!466225 () Bool)

(assert (=> bm!186165 (= call!186171 (derivativeStep!2325 (ite c!466227 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466225 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (head!6349 (get!10340 lt!1018702))))))

(declare-fun bm!186166 () Bool)

(assert (=> bm!186166 (= call!186170 (derivativeStep!2325 (ite c!466227 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))) (head!6349 (get!10340 lt!1018702))))))

(declare-fun bm!186167 () Bool)

(assert (=> bm!186167 (= call!186169 call!186172)))

(declare-fun d!831501 () Bool)

(declare-fun lt!1018821 () Regex!8742)

(assert (=> d!831501 (validRegex!3520 lt!1018821)))

(assert (=> d!831501 (= lt!1018821 e!1820204)))

(declare-fun c!466228 () Bool)

(assert (=> d!831501 (= c!466228 (or (is-EmptyExpr!8742 (h!39814 (exprs!3202 c!7184))) (is-EmptyLang!8742 (h!39814 (exprs!3202 c!7184)))))))

(assert (=> d!831501 (validRegex!3520 (h!39814 (exprs!3202 c!7184)))))

(assert (=> d!831501 (= (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))) lt!1018821)))

(declare-fun b!2876416 () Bool)

(assert (=> b!2876416 (= e!1820203 e!1820202)))

(assert (=> b!2876416 (= c!466225 (is-Star!8742 (h!39814 (exprs!3202 c!7184))))))

(declare-fun b!2876417 () Bool)

(assert (=> b!2876417 (= e!1820204 e!1820206)))

(declare-fun c!466226 () Bool)

(assert (=> b!2876417 (= c!466226 (is-ElementMatch!8742 (h!39814 (exprs!3202 c!7184))))))

(assert (= (and d!831501 c!466228) b!2876408))

(assert (= (and d!831501 (not c!466228)) b!2876417))

(assert (= (and b!2876417 c!466226) b!2876414))

(assert (= (and b!2876417 (not c!466226)) b!2876409))

(assert (= (and b!2876409 c!466227) b!2876415))

(assert (= (and b!2876409 (not c!466227)) b!2876416))

(assert (= (and b!2876416 c!466225) b!2876411))

(assert (= (and b!2876416 (not c!466225)) b!2876410))

(assert (= (and b!2876410 c!466229) b!2876412))

(assert (= (and b!2876410 (not c!466229)) b!2876413))

(assert (= (or b!2876412 b!2876413) bm!186167))

(assert (= (or b!2876411 bm!186167) bm!186164))

(assert (= (or b!2876415 bm!186164) bm!186165))

(assert (= (or b!2876415 b!2876412) bm!186166))

(assert (=> b!2876410 m!3293859))

(assert (=> bm!186165 m!3293653))

(declare-fun m!3294021 () Bool)

(assert (=> bm!186165 m!3294021))

(assert (=> bm!186166 m!3293653))

(declare-fun m!3294023 () Bool)

(assert (=> bm!186166 m!3294023))

(declare-fun m!3294025 () Bool)

(assert (=> d!831501 m!3294025))

(assert (=> d!831501 m!3293635))

(assert (=> b!2875914 d!831501))

(assert (=> b!2875914 d!831393))

(assert (=> b!2875914 d!831399))

(assert (=> d!831325 d!831471))

(assert (=> d!831325 d!831445))

(declare-fun e!1820214 () Bool)

(assert (=> b!2876060 (= tp!923781 e!1820214)))

(declare-fun b!2876441 () Bool)

(declare-fun tp!923800 () Bool)

(declare-fun tp!923801 () Bool)

(assert (=> b!2876441 (= e!1820214 (and tp!923800 tp!923801))))

(declare-fun b!2876440 () Bool)

(declare-fun tp!923799 () Bool)

(assert (=> b!2876440 (= e!1820214 tp!923799)))

(declare-fun b!2876438 () Bool)

(declare-fun tp_is_empty!15081 () Bool)

(assert (=> b!2876438 (= e!1820214 tp_is_empty!15081)))

(declare-fun b!2876439 () Bool)

(declare-fun tp!923802 () Bool)

(declare-fun tp!923803 () Bool)

(assert (=> b!2876439 (= e!1820214 (and tp!923802 tp!923803))))

(assert (= (and b!2876060 (is-ElementMatch!8742 (h!39814 (exprs!3202 c!7184)))) b!2876438))

(assert (= (and b!2876060 (is-Concat!14063 (h!39814 (exprs!3202 c!7184)))) b!2876439))

(assert (= (and b!2876060 (is-Star!8742 (h!39814 (exprs!3202 c!7184)))) b!2876440))

(assert (= (and b!2876060 (is-Union!8742 (h!39814 (exprs!3202 c!7184)))) b!2876441))

(declare-fun b!2876442 () Bool)

(declare-fun e!1820215 () Bool)

(declare-fun tp!923804 () Bool)

(declare-fun tp!923805 () Bool)

(assert (=> b!2876442 (= e!1820215 (and tp!923804 tp!923805))))

(assert (=> b!2876060 (= tp!923782 e!1820215)))

(assert (= (and b!2876060 (is-Cons!34394 (t!233561 (exprs!3202 c!7184)))) b!2876442))

(declare-fun b_lambda!86151 () Bool)

(assert (= b_lambda!86149 (or d!831331 b_lambda!86151)))

(declare-fun bs!522764 () Bool)

(declare-fun d!831505 () Bool)

(assert (= bs!522764 (and d!831505 d!831331)))

(assert (=> bs!522764 (= (dynLambda!14318 lambda!107265 (h!39814 (exprs!3202 lt!1018700))) (validRegex!3520 (h!39814 (exprs!3202 lt!1018700))))))

(declare-fun m!3294035 () Bool)

(assert (=> bs!522764 m!3294035))

(assert (=> b!2876138 d!831505))

(declare-fun b_lambda!86153 () Bool)

(assert (= b_lambda!86147 (or d!831339 b_lambda!86153)))

(declare-fun bs!522765 () Bool)

(declare-fun d!831507 () Bool)

(assert (= bs!522765 (and d!831507 d!831339)))

(assert (=> bs!522765 (= (dynLambda!14318 lambda!107271 (h!39814 (exprs!3202 c!7184))) (validRegex!3520 (h!39814 (exprs!3202 c!7184))))))

(assert (=> bs!522765 m!3293635))

(assert (=> b!2876134 d!831507))

(push 1)

(assert (not d!831483))

(assert (not b!2876141))

(assert (not b!2876440))

(assert (not d!831421))

(assert (not bm!186129))

(assert (not b!2876181))

(assert (not b!2876392))

(assert (not b!2876333))

(assert (not b!2876170))

(assert (not b!2876176))

(assert (not b!2876154))

(assert (not bm!186165))

(assert (not d!831381))

(assert (not b!2876225))

(assert (not bm!186163))

(assert (not bm!186127))

(assert (not d!831489))

(assert (not b!2876174))

(assert tp_is_empty!15081)

(assert (not b!2876396))

(assert (not bm!186126))

(assert (not b!2876224))

(assert (not bm!186116))

(assert (not d!831375))

(assert (not d!831493))

(assert (not b!2876439))

(assert (not bm!186130))

(assert (not b!2876244))

(assert (not d!831389))

(assert (not d!831463))

(assert (not d!831475))

(assert (not b!2876403))

(assert (not b!2876276))

(assert (not b!2876322))

(assert (not b!2876182))

(assert (not b!2876371))

(assert (not bs!522765))

(assert (not d!831387))

(assert (not d!831425))

(assert (not bm!186133))

(assert (not b!2876231))

(assert (not b!2876139))

(assert (not b!2876214))

(assert (not d!831395))

(assert (not bm!186115))

(assert (not b!2876393))

(assert (not d!831403))

(assert (not bm!186114))

(assert (not b!2876395))

(assert (not b!2876169))

(assert (not b!2876398))

(assert (not b!2876410))

(assert (not bm!186150))

(assert (not d!831459))

(assert (not b!2876140))

(assert (not d!831499))

(assert (not b!2876441))

(assert (not d!831485))

(assert (not d!831383))

(assert (not b!2876404))

(assert (not b!2876173))

(assert (not bm!186144))

(assert (not b!2876135))

(assert (not b!2876370))

(assert (not d!831457))

(assert (not b!2876335))

(assert (not bm!186166))

(assert (not b!2876442))

(assert (not b!2876340))

(assert (not b!2876331))

(assert (not b!2876332))

(assert (not d!831501))

(assert (not b!2876394))

(assert (not b_lambda!86153))

(assert (not bm!186134))

(assert (not bm!186143))

(assert (not b!2876232))

(assert (not b_lambda!86151))

(assert (not d!831401))

(assert (not d!831481))

(assert (not d!831491))

(assert (not b!2876228))

(assert (not bs!522764))

(assert (not b!2876341))

(assert (not b!2876172))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2876556 () Bool)

(declare-fun res!1192762 () Bool)

(declare-fun e!1820273 () Bool)

(assert (=> b!2876556 (=> (not res!1192762) (not e!1820273))))

(declare-fun lt!1018836 () List!34517)

(assert (=> b!2876556 (= res!1192762 (= (size!26325 lt!1018836) (+ (size!26325 (v!34542 lt!1018809)) (size!26325 (v!34542 lt!1018808)))))))

(declare-fun b!2876555 () Bool)

(declare-fun e!1820272 () List!34517)

(assert (=> b!2876555 (= e!1820272 (Cons!34393 (h!39813 (v!34542 lt!1018809)) (++!8179 (t!233560 (v!34542 lt!1018809)) (v!34542 lt!1018808))))))

(declare-fun b!2876557 () Bool)

(assert (=> b!2876557 (= e!1820273 (or (not (= (v!34542 lt!1018808) Nil!34393)) (= lt!1018836 (v!34542 lt!1018809))))))

(declare-fun b!2876554 () Bool)

(assert (=> b!2876554 (= e!1820272 (v!34542 lt!1018808))))

(declare-fun d!831547 () Bool)

(assert (=> d!831547 e!1820273))

(declare-fun res!1192763 () Bool)

(assert (=> d!831547 (=> (not res!1192763) (not e!1820273))))

(assert (=> d!831547 (= res!1192763 (= (content!4706 lt!1018836) (set.union (content!4706 (v!34542 lt!1018809)) (content!4706 (v!34542 lt!1018808)))))))

(assert (=> d!831547 (= lt!1018836 e!1820272)))

(declare-fun c!466267 () Bool)

(assert (=> d!831547 (= c!466267 (is-Nil!34393 (v!34542 lt!1018809)))))

(assert (=> d!831547 (= (++!8179 (v!34542 lt!1018809) (v!34542 lt!1018808)) lt!1018836)))

(assert (= (and d!831547 c!466267) b!2876554))

(assert (= (and d!831547 (not c!466267)) b!2876555))

(assert (= (and d!831547 res!1192763) b!2876556))

(assert (= (and b!2876556 res!1192762) b!2876557))

(declare-fun m!3294131 () Bool)

(assert (=> b!2876556 m!3294131))

(declare-fun m!3294133 () Bool)

(assert (=> b!2876556 m!3294133))

(declare-fun m!3294135 () Bool)

(assert (=> b!2876556 m!3294135))

(declare-fun m!3294137 () Bool)

(assert (=> b!2876555 m!3294137))

(declare-fun m!3294139 () Bool)

(assert (=> d!831547 m!3294139))

(declare-fun m!3294141 () Bool)

(assert (=> d!831547 m!3294141))

(declare-fun m!3294143 () Bool)

(assert (=> d!831547 m!3294143))

(assert (=> b!2876244 d!831547))

(declare-fun d!831549 () Bool)

(assert (=> d!831549 (= (head!6349 (tail!4574 (v!34542 lt!1018702))) (h!39813 (tail!4574 (v!34542 lt!1018702))))))

(assert (=> b!2876176 d!831549))

(declare-fun bs!522774 () Bool)

(declare-fun d!831551 () Bool)

(assert (= bs!522774 (and d!831551 d!831349)))

(declare-fun lambda!107311 () Int)

(assert (=> bs!522774 (not (= lambda!107311 lambda!107282))))

(declare-fun bs!522775 () Bool)

(assert (= bs!522775 (and d!831551 d!831383)))

(assert (=> bs!522775 (= (= lambda!107307 lambda!107270) (= lambda!107311 lambda!107288))))

(declare-fun bs!522776 () Bool)

(assert (= bs!522776 (and d!831551 d!831337)))

(assert (=> bs!522776 (not (= lambda!107311 lambda!107270))))

(declare-fun bs!522777 () Bool)

(assert (= bs!522777 (and d!831551 d!831489)))

(assert (=> bs!522777 (not (= lambda!107311 lambda!107307))))

(declare-fun bs!522778 () Bool)

(assert (= bs!522778 (and d!831551 d!831421)))

(assert (=> bs!522778 (not (= lambda!107311 lambda!107294))))

(declare-fun bs!522779 () Bool)

(assert (= bs!522779 (and d!831551 d!831475)))

(assert (=> bs!522779 (= (= lambda!107307 lambda!107282) (= lambda!107311 lambda!107305))))

(declare-fun bs!522780 () Bool)

(assert (= bs!522780 (and d!831551 d!831339)))

(assert (=> bs!522780 (not (= lambda!107311 lambda!107271))))

(declare-fun bs!522781 () Bool)

(assert (= bs!522781 (and d!831551 d!831331)))

(assert (=> bs!522781 (not (= lambda!107311 lambda!107265))))

(assert (=> d!831551 true))

(assert (=> d!831551 (< (dynLambda!14319 order!18137 lambda!107307) (dynLambda!14319 order!18137 lambda!107311))))

(assert (=> d!831551 (= (exists!1172 (exprs!3202 lt!1018696) lambda!107307) (not (forall!7087 (exprs!3202 lt!1018696) lambda!107311)))))

(declare-fun bs!522782 () Bool)

(assert (= bs!522782 d!831551))

(declare-fun m!3294145 () Bool)

(assert (=> bs!522782 m!3294145))

(assert (=> d!831489 d!831551))

(assert (=> bm!186116 d!831377))

(declare-fun d!831553 () Bool)

(assert (=> d!831553 (= (nullable!2692 (regOne!17996 (h!39814 (exprs!3202 c!7184)))) (nullableFct!820 (regOne!17996 (h!39814 (exprs!3202 c!7184)))))))

(declare-fun bs!522783 () Bool)

(assert (= bs!522783 d!831553))

(declare-fun m!3294147 () Bool)

(assert (=> bs!522783 m!3294147))

(assert (=> b!2876410 d!831553))

(declare-fun d!831555 () Bool)

(assert (=> d!831555 (= (isEmpty!18727 (tail!4574 (get!10340 lt!1018697))) (is-Nil!34393 (tail!4574 (get!10340 lt!1018697))))))

(assert (=> d!831491 d!831555))

(declare-fun b!2876560 () Bool)

(declare-fun res!1192764 () Bool)

(declare-fun e!1820275 () Bool)

(assert (=> b!2876560 (=> (not res!1192764) (not e!1820275))))

(declare-fun lt!1018837 () List!34517)

(assert (=> b!2876560 (= res!1192764 (= (size!26325 lt!1018837) (+ (size!26325 (v!34542 lt!1018792)) (size!26325 (v!34542 lt!1018791)))))))

(declare-fun b!2876559 () Bool)

(declare-fun e!1820274 () List!34517)

(assert (=> b!2876559 (= e!1820274 (Cons!34393 (h!39813 (v!34542 lt!1018792)) (++!8179 (t!233560 (v!34542 lt!1018792)) (v!34542 lt!1018791))))))

(declare-fun b!2876561 () Bool)

(assert (=> b!2876561 (= e!1820275 (or (not (= (v!34542 lt!1018791) Nil!34393)) (= lt!1018837 (v!34542 lt!1018792))))))

(declare-fun b!2876558 () Bool)

(assert (=> b!2876558 (= e!1820274 (v!34542 lt!1018791))))

(declare-fun d!831557 () Bool)

(assert (=> d!831557 e!1820275))

(declare-fun res!1192765 () Bool)

(assert (=> d!831557 (=> (not res!1192765) (not e!1820275))))

(assert (=> d!831557 (= res!1192765 (= (content!4706 lt!1018837) (set.union (content!4706 (v!34542 lt!1018792)) (content!4706 (v!34542 lt!1018791)))))))

(assert (=> d!831557 (= lt!1018837 e!1820274)))

(declare-fun c!466268 () Bool)

(assert (=> d!831557 (= c!466268 (is-Nil!34393 (v!34542 lt!1018792)))))

(assert (=> d!831557 (= (++!8179 (v!34542 lt!1018792) (v!34542 lt!1018791)) lt!1018837)))

(assert (= (and d!831557 c!466268) b!2876558))

(assert (= (and d!831557 (not c!466268)) b!2876559))

(assert (= (and d!831557 res!1192765) b!2876560))

(assert (= (and b!2876560 res!1192764) b!2876561))

(declare-fun m!3294149 () Bool)

(assert (=> b!2876560 m!3294149))

(declare-fun m!3294151 () Bool)

(assert (=> b!2876560 m!3294151))

(declare-fun m!3294153 () Bool)

(assert (=> b!2876560 m!3294153))

(declare-fun m!3294155 () Bool)

(assert (=> b!2876559 m!3294155))

(declare-fun m!3294157 () Bool)

(assert (=> d!831557 m!3294157))

(declare-fun m!3294159 () Bool)

(assert (=> d!831557 m!3294159))

(declare-fun m!3294161 () Bool)

(assert (=> d!831557 m!3294161))

(assert (=> b!2876154 d!831557))

(declare-fun d!831559 () Bool)

(assert (=> d!831559 (= (isEmpty!18727 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))) (is-Nil!34393 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))))))

(assert (=> bm!186150 d!831559))

(declare-fun d!831561 () Bool)

(declare-fun lt!1018840 () Int)

(assert (=> d!831561 (>= lt!1018840 0)))

(declare-fun e!1820278 () Int)

(assert (=> d!831561 (= lt!1018840 e!1820278)))

(declare-fun c!466271 () Bool)

(assert (=> d!831561 (= c!466271 (is-Nil!34393 lt!1018795))))

(assert (=> d!831561 (= (size!26325 lt!1018795) lt!1018840)))

(declare-fun b!2876566 () Bool)

(assert (=> b!2876566 (= e!1820278 0)))

(declare-fun b!2876567 () Bool)

(assert (=> b!2876567 (= e!1820278 (+ 1 (size!26325 (t!233560 lt!1018795))))))

(assert (= (and d!831561 c!466271) b!2876566))

(assert (= (and d!831561 (not c!466271)) b!2876567))

(declare-fun m!3294163 () Bool)

(assert (=> b!2876567 m!3294163))

(assert (=> b!2876170 d!831561))

(declare-fun d!831563 () Bool)

(declare-fun lt!1018841 () Int)

(assert (=> d!831563 (>= lt!1018841 0)))

(declare-fun e!1820279 () Int)

(assert (=> d!831563 (= lt!1018841 e!1820279)))

(declare-fun c!466272 () Bool)

(assert (=> d!831563 (= c!466272 (is-Nil!34393 (v!34542 lt!1018775)))))

(assert (=> d!831563 (= (size!26325 (v!34542 lt!1018775)) lt!1018841)))

(declare-fun b!2876568 () Bool)

(assert (=> b!2876568 (= e!1820279 0)))

(declare-fun b!2876569 () Bool)

(assert (=> b!2876569 (= e!1820279 (+ 1 (size!26325 (t!233560 (v!34542 lt!1018775)))))))

(assert (= (and d!831563 c!466272) b!2876568))

(assert (= (and d!831563 (not c!466272)) b!2876569))

(declare-fun m!3294165 () Bool)

(assert (=> b!2876569 m!3294165))

(assert (=> b!2876170 d!831563))

(declare-fun d!831565 () Bool)

(declare-fun lt!1018842 () Int)

(assert (=> d!831565 (>= lt!1018842 0)))

(declare-fun e!1820280 () Int)

(assert (=> d!831565 (= lt!1018842 e!1820280)))

(declare-fun c!466273 () Bool)

(assert (=> d!831565 (= c!466273 (is-Nil!34393 (v!34542 lt!1018776)))))

(assert (=> d!831565 (= (size!26325 (v!34542 lt!1018776)) lt!1018842)))

(declare-fun b!2876570 () Bool)

(assert (=> b!2876570 (= e!1820280 0)))

(declare-fun b!2876571 () Bool)

(assert (=> b!2876571 (= e!1820280 (+ 1 (size!26325 (t!233560 (v!34542 lt!1018776)))))))

(assert (= (and d!831565 c!466273) b!2876570))

(assert (= (and d!831565 (not c!466273)) b!2876571))

(declare-fun m!3294167 () Bool)

(assert (=> b!2876571 m!3294167))

(assert (=> b!2876170 d!831565))

(declare-fun bs!522784 () Bool)

(declare-fun d!831567 () Bool)

(assert (= bs!522784 (and d!831567 d!831375)))

(declare-fun lambda!107312 () Int)

(assert (=> bs!522784 (= lambda!107312 lambda!107285)))

(declare-fun bs!522785 () Bool)

(assert (= bs!522785 (and d!831567 d!831481)))

(assert (=> bs!522785 (= lambda!107312 lambda!107306)))

(assert (=> d!831567 (= (nullableZipper!720 (derivationStepZipper!476 lt!1018699 (head!6349 (v!34542 lt!1018702)))) (exists!1173 (derivationStepZipper!476 lt!1018699 (head!6349 (v!34542 lt!1018702))) lambda!107312))))

(declare-fun bs!522786 () Bool)

(assert (= bs!522786 d!831567))

(assert (=> bs!522786 m!3293681))

(declare-fun m!3294169 () Bool)

(assert (=> bs!522786 m!3294169))

(assert (=> b!2876140 d!831567))

(declare-fun b!2876572 () Bool)

(declare-fun e!1820281 () Bool)

(assert (=> b!2876572 (= e!1820281 (matchR!3742 (derivativeStep!2325 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))) (head!6349 (tail!4574 (v!34542 lt!1018702)))) (head!6349 (tail!4574 (tail!4574 (v!34542 lt!1018702))))) (tail!4574 (tail!4574 (tail!4574 (v!34542 lt!1018702))))))))

(declare-fun b!2876573 () Bool)

(declare-fun res!1192766 () Bool)

(declare-fun e!1820283 () Bool)

(assert (=> b!2876573 (=> (not res!1192766) (not e!1820283))))

(assert (=> b!2876573 (= res!1192766 (isEmpty!18727 (tail!4574 (tail!4574 (tail!4574 (v!34542 lt!1018702))))))))

(declare-fun b!2876574 () Bool)

(assert (=> b!2876574 (= e!1820281 (nullable!2692 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))) (head!6349 (tail!4574 (v!34542 lt!1018702))))))))

(declare-fun b!2876575 () Bool)

(declare-fun e!1820286 () Bool)

(declare-fun e!1820284 () Bool)

(assert (=> b!2876575 (= e!1820286 e!1820284)))

(declare-fun res!1192768 () Bool)

(assert (=> b!2876575 (=> res!1192768 e!1820284)))

(declare-fun call!186187 () Bool)

(assert (=> b!2876575 (= res!1192768 call!186187)))

(declare-fun b!2876577 () Bool)

(declare-fun e!1820285 () Bool)

(declare-fun lt!1018843 () Bool)

(assert (=> b!2876577 (= e!1820285 (not lt!1018843))))

(declare-fun b!2876578 () Bool)

(declare-fun res!1192770 () Bool)

(assert (=> b!2876578 (=> (not res!1192770) (not e!1820283))))

(assert (=> b!2876578 (= res!1192770 (not call!186187))))

(declare-fun b!2876579 () Bool)

(declare-fun e!1820282 () Bool)

(assert (=> b!2876579 (= e!1820282 e!1820285)))

(declare-fun c!466275 () Bool)

(assert (=> b!2876579 (= c!466275 (is-EmptyLang!8742 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))) (head!6349 (tail!4574 (v!34542 lt!1018702))))))))

(declare-fun bm!186182 () Bool)

(assert (=> bm!186182 (= call!186187 (isEmpty!18727 (tail!4574 (tail!4574 (v!34542 lt!1018702)))))))

(declare-fun b!2876580 () Bool)

(declare-fun e!1820287 () Bool)

(assert (=> b!2876580 (= e!1820287 e!1820286)))

(declare-fun res!1192769 () Bool)

(assert (=> b!2876580 (=> (not res!1192769) (not e!1820286))))

(assert (=> b!2876580 (= res!1192769 (not lt!1018843))))

(declare-fun b!2876581 () Bool)

(declare-fun res!1192771 () Bool)

(assert (=> b!2876581 (=> res!1192771 e!1820284)))

(assert (=> b!2876581 (= res!1192771 (not (isEmpty!18727 (tail!4574 (tail!4574 (tail!4574 (v!34542 lt!1018702)))))))))

(declare-fun d!831569 () Bool)

(assert (=> d!831569 e!1820282))

(declare-fun c!466274 () Bool)

(assert (=> d!831569 (= c!466274 (is-EmptyExpr!8742 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))) (head!6349 (tail!4574 (v!34542 lt!1018702))))))))

(assert (=> d!831569 (= lt!1018843 e!1820281)))

(declare-fun c!466276 () Bool)

(assert (=> d!831569 (= c!466276 (isEmpty!18727 (tail!4574 (tail!4574 (v!34542 lt!1018702)))))))

(assert (=> d!831569 (validRegex!3520 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))) (head!6349 (tail!4574 (v!34542 lt!1018702)))))))

(assert (=> d!831569 (= (matchR!3742 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))) (head!6349 (tail!4574 (v!34542 lt!1018702)))) (tail!4574 (tail!4574 (v!34542 lt!1018702)))) lt!1018843)))

(declare-fun b!2876576 () Bool)

(assert (=> b!2876576 (= e!1820283 (= (head!6349 (tail!4574 (tail!4574 (v!34542 lt!1018702)))) (c!466015 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))) (head!6349 (tail!4574 (v!34542 lt!1018702)))))))))

(declare-fun b!2876582 () Bool)

(assert (=> b!2876582 (= e!1820284 (not (= (head!6349 (tail!4574 (tail!4574 (v!34542 lt!1018702)))) (c!466015 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))) (head!6349 (tail!4574 (v!34542 lt!1018702))))))))))

(declare-fun b!2876583 () Bool)

(declare-fun res!1192772 () Bool)

(assert (=> b!2876583 (=> res!1192772 e!1820287)))

(assert (=> b!2876583 (= res!1192772 e!1820283)))

(declare-fun res!1192773 () Bool)

(assert (=> b!2876583 (=> (not res!1192773) (not e!1820283))))

(assert (=> b!2876583 (= res!1192773 lt!1018843)))

(declare-fun b!2876584 () Bool)

(assert (=> b!2876584 (= e!1820282 (= lt!1018843 call!186187))))

(declare-fun b!2876585 () Bool)

(declare-fun res!1192767 () Bool)

(assert (=> b!2876585 (=> res!1192767 e!1820287)))

(assert (=> b!2876585 (= res!1192767 (not (is-ElementMatch!8742 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))) (head!6349 (tail!4574 (v!34542 lt!1018702)))))))))

(assert (=> b!2876585 (= e!1820285 e!1820287)))

(assert (= (and d!831569 c!466276) b!2876574))

(assert (= (and d!831569 (not c!466276)) b!2876572))

(assert (= (and d!831569 c!466274) b!2876584))

(assert (= (and d!831569 (not c!466274)) b!2876579))

(assert (= (and b!2876579 c!466275) b!2876577))

(assert (= (and b!2876579 (not c!466275)) b!2876585))

(assert (= (and b!2876585 (not res!1192767)) b!2876583))

(assert (= (and b!2876583 res!1192773) b!2876578))

(assert (= (and b!2876578 res!1192770) b!2876573))

(assert (= (and b!2876573 res!1192766) b!2876576))

(assert (= (and b!2876583 (not res!1192772)) b!2876580))

(assert (= (and b!2876580 res!1192769) b!2876575))

(assert (= (and b!2876575 (not res!1192768)) b!2876581))

(assert (= (and b!2876581 (not res!1192771)) b!2876582))

(assert (= (or b!2876584 b!2876575 b!2876578) bm!186182))

(assert (=> b!2876576 m!3293811))

(declare-fun m!3294171 () Bool)

(assert (=> b!2876576 m!3294171))

(assert (=> bm!186182 m!3293811))

(assert (=> bm!186182 m!3293839))

(assert (=> b!2876582 m!3293811))

(assert (=> b!2876582 m!3294171))

(assert (=> b!2876574 m!3293841))

(declare-fun m!3294173 () Bool)

(assert (=> b!2876574 m!3294173))

(assert (=> b!2876581 m!3293811))

(declare-fun m!3294175 () Bool)

(assert (=> b!2876581 m!3294175))

(assert (=> b!2876581 m!3294175))

(declare-fun m!3294177 () Bool)

(assert (=> b!2876581 m!3294177))

(assert (=> b!2876572 m!3293811))

(assert (=> b!2876572 m!3294171))

(assert (=> b!2876572 m!3293841))

(assert (=> b!2876572 m!3294171))

(declare-fun m!3294179 () Bool)

(assert (=> b!2876572 m!3294179))

(assert (=> b!2876572 m!3293811))

(assert (=> b!2876572 m!3294175))

(assert (=> b!2876572 m!3294179))

(assert (=> b!2876572 m!3294175))

(declare-fun m!3294181 () Bool)

(assert (=> b!2876572 m!3294181))

(assert (=> b!2876573 m!3293811))

(assert (=> b!2876573 m!3294175))

(assert (=> b!2876573 m!3294175))

(assert (=> b!2876573 m!3294177))

(assert (=> d!831569 m!3293811))

(assert (=> d!831569 m!3293839))

(assert (=> d!831569 m!3293841))

(declare-fun m!3294183 () Bool)

(assert (=> d!831569 m!3294183))

(assert (=> b!2876172 d!831569))

(declare-fun bm!186183 () Bool)

(declare-fun call!186191 () Regex!8742)

(declare-fun call!186190 () Regex!8742)

(assert (=> bm!186183 (= call!186191 call!186190)))

(declare-fun b!2876586 () Bool)

(declare-fun e!1820290 () Regex!8742)

(assert (=> b!2876586 (= e!1820290 EmptyLang!8742)))

(declare-fun b!2876587 () Bool)

(declare-fun c!466279 () Bool)

(assert (=> b!2876587 (= c!466279 (is-Union!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))))))

(declare-fun e!1820292 () Regex!8742)

(declare-fun e!1820289 () Regex!8742)

(assert (=> b!2876587 (= e!1820292 e!1820289)))

(declare-fun b!2876588 () Bool)

(declare-fun c!466281 () Bool)

(assert (=> b!2876588 (= c!466281 (nullable!2692 (regOne!17996 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))))))))

(declare-fun e!1820288 () Regex!8742)

(declare-fun e!1820291 () Regex!8742)

(assert (=> b!2876588 (= e!1820288 e!1820291)))

(declare-fun b!2876589 () Bool)

(assert (=> b!2876589 (= e!1820288 (Concat!14063 call!186191 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))))))

(declare-fun b!2876590 () Bool)

(declare-fun call!186188 () Regex!8742)

(declare-fun call!186189 () Regex!8742)

(assert (=> b!2876590 (= e!1820291 (Union!8742 (Concat!14063 call!186188 (regTwo!17996 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))))) call!186189))))

(declare-fun b!2876591 () Bool)

(assert (=> b!2876591 (= e!1820291 (Union!8742 (Concat!14063 call!186188 (regTwo!17996 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))))) EmptyLang!8742))))

(declare-fun b!2876592 () Bool)

(assert (=> b!2876592 (= e!1820292 (ite (= (head!6349 (tail!4574 (v!34542 lt!1018702))) (c!466015 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))))) EmptyExpr!8742 EmptyLang!8742))))

(declare-fun b!2876593 () Bool)

(assert (=> b!2876593 (= e!1820289 (Union!8742 call!186190 call!186189))))

(declare-fun c!466277 () Bool)

(declare-fun bm!186184 () Bool)

(assert (=> bm!186184 (= call!186190 (derivativeStep!2325 (ite c!466279 (regOne!17997 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))) (ite c!466277 (reg!9071 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))) (regOne!17996 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))))) (head!6349 (tail!4574 (v!34542 lt!1018702)))))))

(declare-fun bm!186185 () Bool)

(assert (=> bm!186185 (= call!186189 (derivativeStep!2325 (ite c!466279 (regTwo!17997 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))) (regTwo!17996 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))))) (head!6349 (tail!4574 (v!34542 lt!1018702)))))))

(declare-fun bm!186186 () Bool)

(assert (=> bm!186186 (= call!186188 call!186191)))

(declare-fun d!831571 () Bool)

(declare-fun lt!1018844 () Regex!8742)

(assert (=> d!831571 (validRegex!3520 lt!1018844)))

(assert (=> d!831571 (= lt!1018844 e!1820290)))

(declare-fun c!466280 () Bool)

(assert (=> d!831571 (= c!466280 (or (is-EmptyExpr!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))) (is-EmptyLang!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))))))))

(assert (=> d!831571 (validRegex!3520 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))))))

(assert (=> d!831571 (= (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))) (head!6349 (tail!4574 (v!34542 lt!1018702)))) lt!1018844)))

(declare-fun b!2876594 () Bool)

(assert (=> b!2876594 (= e!1820289 e!1820288)))

(assert (=> b!2876594 (= c!466277 (is-Star!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))))))

(declare-fun b!2876595 () Bool)

(assert (=> b!2876595 (= e!1820290 e!1820292)))

(declare-fun c!466278 () Bool)

(assert (=> b!2876595 (= c!466278 (is-ElementMatch!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))))))

(assert (= (and d!831571 c!466280) b!2876586))

(assert (= (and d!831571 (not c!466280)) b!2876595))

(assert (= (and b!2876595 c!466278) b!2876592))

(assert (= (and b!2876595 (not c!466278)) b!2876587))

(assert (= (and b!2876587 c!466279) b!2876593))

(assert (= (and b!2876587 (not c!466279)) b!2876594))

(assert (= (and b!2876594 c!466277) b!2876589))

(assert (= (and b!2876594 (not c!466277)) b!2876588))

(assert (= (and b!2876588 c!466281) b!2876590))

(assert (= (and b!2876588 (not c!466281)) b!2876591))

(assert (= (or b!2876590 b!2876591) bm!186186))

(assert (= (or b!2876589 bm!186186) bm!186183))

(assert (= (or b!2876593 bm!186183) bm!186184))

(assert (= (or b!2876593 b!2876590) bm!186185))

(declare-fun m!3294185 () Bool)

(assert (=> b!2876588 m!3294185))

(assert (=> bm!186184 m!3293807))

(declare-fun m!3294187 () Bool)

(assert (=> bm!186184 m!3294187))

(assert (=> bm!186185 m!3293807))

(declare-fun m!3294189 () Bool)

(assert (=> bm!186185 m!3294189))

(declare-fun m!3294191 () Bool)

(assert (=> d!831571 m!3294191))

(assert (=> d!831571 m!3293649))

(assert (=> d!831571 m!3293845))

(assert (=> b!2876172 d!831571))

(assert (=> b!2876172 d!831549))

(declare-fun d!831573 () Bool)

(assert (=> d!831573 (= (tail!4574 (tail!4574 (v!34542 lt!1018702))) (t!233560 (tail!4574 (v!34542 lt!1018702))))))

(assert (=> b!2876172 d!831573))

(assert (=> d!831483 d!831485))

(assert (=> d!831483 d!831487))

(assert (=> d!831483 d!831349))

(assert (=> d!831401 d!831377))

(declare-fun b!2876596 () Bool)

(declare-fun e!1820293 () Bool)

(declare-fun e!1820299 () Bool)

(assert (=> b!2876596 (= e!1820293 e!1820299)))

(declare-fun res!1192774 () Bool)

(assert (=> b!2876596 (= res!1192774 (not (nullable!2692 (reg!9071 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))))))))

(assert (=> b!2876596 (=> (not res!1192774) (not e!1820299))))

(declare-fun b!2876597 () Bool)

(declare-fun e!1820296 () Bool)

(assert (=> b!2876597 (= e!1820293 e!1820296)))

(declare-fun c!466282 () Bool)

(assert (=> b!2876597 (= c!466282 (is-Union!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))))))

(declare-fun d!831575 () Bool)

(declare-fun res!1192775 () Bool)

(declare-fun e!1820294 () Bool)

(assert (=> d!831575 (=> res!1192775 e!1820294)))

(assert (=> d!831575 (= res!1192775 (is-ElementMatch!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))))))

(assert (=> d!831575 (= (validRegex!3520 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))) e!1820294)))

(declare-fun c!466283 () Bool)

(declare-fun bm!186187 () Bool)

(declare-fun call!186192 () Bool)

(assert (=> bm!186187 (= call!186192 (validRegex!3520 (ite c!466283 (reg!9071 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))) (ite c!466282 (regTwo!17997 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))) (regOne!17996 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))))))))))

(declare-fun b!2876598 () Bool)

(declare-fun e!1820298 () Bool)

(declare-fun call!186194 () Bool)

(assert (=> b!2876598 (= e!1820298 call!186194)))

(declare-fun b!2876599 () Bool)

(declare-fun e!1820295 () Bool)

(declare-fun call!186193 () Bool)

(assert (=> b!2876599 (= e!1820295 call!186193)))

(declare-fun b!2876600 () Bool)

(assert (=> b!2876600 (= e!1820299 call!186192)))

(declare-fun b!2876601 () Bool)

(declare-fun res!1192776 () Bool)

(assert (=> b!2876601 (=> (not res!1192776) (not e!1820295))))

(assert (=> b!2876601 (= res!1192776 call!186194)))

(assert (=> b!2876601 (= e!1820296 e!1820295)))

(declare-fun b!2876602 () Bool)

(declare-fun res!1192777 () Bool)

(declare-fun e!1820297 () Bool)

(assert (=> b!2876602 (=> res!1192777 e!1820297)))

(assert (=> b!2876602 (= res!1192777 (not (is-Concat!14063 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702))))))))

(assert (=> b!2876602 (= e!1820296 e!1820297)))

(declare-fun b!2876603 () Bool)

(assert (=> b!2876603 (= e!1820294 e!1820293)))

(assert (=> b!2876603 (= c!466283 (is-Star!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))))))

(declare-fun bm!186188 () Bool)

(assert (=> bm!186188 (= call!186194 (validRegex!3520 (ite c!466282 (regOne!17997 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))) (regTwo!17996 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))))))))

(declare-fun b!2876604 () Bool)

(assert (=> b!2876604 (= e!1820297 e!1820298)))

(declare-fun res!1192778 () Bool)

(assert (=> b!2876604 (=> (not res!1192778) (not e!1820298))))

(assert (=> b!2876604 (= res!1192778 call!186193)))

(declare-fun bm!186189 () Bool)

(assert (=> bm!186189 (= call!186193 call!186192)))

(assert (= (and d!831575 (not res!1192775)) b!2876603))

(assert (= (and b!2876603 c!466283) b!2876596))

(assert (= (and b!2876603 (not c!466283)) b!2876597))

(assert (= (and b!2876596 res!1192774) b!2876600))

(assert (= (and b!2876597 c!466282) b!2876601))

(assert (= (and b!2876597 (not c!466282)) b!2876602))

(assert (= (and b!2876601 res!1192776) b!2876599))

(assert (= (and b!2876602 (not res!1192777)) b!2876604))

(assert (= (and b!2876604 res!1192778) b!2876598))

(assert (= (or b!2876599 b!2876604) bm!186189))

(assert (= (or b!2876601 b!2876598) bm!186188))

(assert (= (or b!2876600 bm!186189) bm!186187))

(declare-fun m!3294193 () Bool)

(assert (=> b!2876596 m!3294193))

(declare-fun m!3294195 () Bool)

(assert (=> bm!186187 m!3294195))

(declare-fun m!3294197 () Bool)

(assert (=> bm!186188 m!3294197))

(assert (=> d!831401 d!831575))

(declare-fun b!2876605 () Bool)

(declare-fun e!1820302 () Option!6417)

(declare-fun lt!1018845 () Option!6417)

(assert (=> b!2876605 (= e!1820302 lt!1018845)))

(declare-fun c!466285 () Bool)

(declare-fun b!2876606 () Bool)

(assert (=> b!2876606 (= c!466285 (is-ElementMatch!8742 (ite c!466128 (regTwo!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun e!1820307 () Option!6417)

(declare-fun e!1820300 () Option!6417)

(assert (=> b!2876606 (= e!1820307 e!1820300)))

(declare-fun b!2876607 () Bool)

(declare-fun c!466291 () Bool)

(declare-fun lt!1018846 () Option!6417)

(assert (=> b!2876607 (= c!466291 (is-Some!6416 lt!1018846))))

(declare-fun call!186195 () Option!6417)

(assert (=> b!2876607 (= lt!1018846 call!186195)))

(declare-fun e!1820303 () Option!6417)

(declare-fun e!1820305 () Option!6417)

(assert (=> b!2876607 (= e!1820303 e!1820305)))

(declare-fun bm!186190 () Bool)

(declare-fun c!466288 () Bool)

(assert (=> bm!186190 (= call!186195 (getLanguageWitness!436 (ite c!466288 (regTwo!17997 (ite c!466128 (regTwo!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))) (regTwo!17996 (ite c!466128 (regTwo!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))))

(declare-fun b!2876608 () Bool)

(declare-fun e!1820304 () Option!6417)

(assert (=> b!2876608 (= e!1820304 (Some!6416 Nil!34393))))

(declare-fun b!2876609 () Bool)

(assert (=> b!2876609 (= c!466288 (is-Union!8742 (ite c!466128 (regTwo!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun e!1820301 () Option!6417)

(assert (=> b!2876609 (= e!1820304 e!1820301)))

(declare-fun b!2876611 () Bool)

(assert (=> b!2876611 (= e!1820307 None!6416)))

(declare-fun b!2876612 () Bool)

(assert (=> b!2876612 (= e!1820305 None!6416)))

(declare-fun b!2876613 () Bool)

(assert (=> b!2876613 (= e!1820301 e!1820303)))

(declare-fun lt!1018847 () Option!6417)

(declare-fun call!186196 () Option!6417)

(assert (=> b!2876613 (= lt!1018847 call!186196)))

(declare-fun c!466290 () Bool)

(assert (=> b!2876613 (= c!466290 (is-Some!6416 lt!1018847))))

(declare-fun b!2876614 () Bool)

(declare-fun e!1820306 () Option!6417)

(assert (=> b!2876614 (= e!1820306 (Some!6416 Nil!34393))))

(declare-fun b!2876615 () Bool)

(assert (=> b!2876615 (= e!1820305 (Some!6416 (++!8179 (v!34542 lt!1018847) (v!34542 lt!1018846))))))

(declare-fun b!2876616 () Bool)

(assert (=> b!2876616 (= e!1820300 e!1820304)))

(declare-fun c!466284 () Bool)

(assert (=> b!2876616 (= c!466284 (is-Star!8742 (ite c!466128 (regTwo!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun b!2876617 () Bool)

(assert (=> b!2876617 (= e!1820303 None!6416)))

(declare-fun d!831577 () Bool)

(declare-fun c!466286 () Bool)

(assert (=> d!831577 (= c!466286 (is-EmptyExpr!8742 (ite c!466128 (regTwo!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))

(assert (=> d!831577 (= (getLanguageWitness!436 (ite c!466128 (regTwo!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))) e!1820306)))

(declare-fun b!2876610 () Bool)

(assert (=> b!2876610 (= e!1820302 call!186195)))

(declare-fun bm!186191 () Bool)

(assert (=> bm!186191 (= call!186196 (getLanguageWitness!436 (ite c!466288 (regOne!17997 (ite c!466128 (regTwo!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))) (regOne!17996 (ite c!466128 (regTwo!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))))

(declare-fun b!2876618 () Bool)

(assert (=> b!2876618 (= e!1820306 e!1820307)))

(declare-fun c!466289 () Bool)

(assert (=> b!2876618 (= c!466289 (is-EmptyLang!8742 (ite c!466128 (regTwo!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun b!2876619 () Bool)

(assert (=> b!2876619 (= e!1820301 e!1820302)))

(assert (=> b!2876619 (= lt!1018845 call!186196)))

(declare-fun c!466287 () Bool)

(assert (=> b!2876619 (= c!466287 (is-Some!6416 lt!1018845))))

(declare-fun b!2876620 () Bool)

(assert (=> b!2876620 (= e!1820300 (Some!6416 (Cons!34393 (c!466015 (ite c!466128 (regTwo!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))) Nil!34393)))))

(assert (= (and d!831577 c!466286) b!2876614))

(assert (= (and d!831577 (not c!466286)) b!2876618))

(assert (= (and b!2876618 c!466289) b!2876611))

(assert (= (and b!2876618 (not c!466289)) b!2876606))

(assert (= (and b!2876606 c!466285) b!2876620))

(assert (= (and b!2876606 (not c!466285)) b!2876616))

(assert (= (and b!2876616 c!466284) b!2876608))

(assert (= (and b!2876616 (not c!466284)) b!2876609))

(assert (= (and b!2876609 c!466288) b!2876619))

(assert (= (and b!2876609 (not c!466288)) b!2876613))

(assert (= (and b!2876619 c!466287) b!2876605))

(assert (= (and b!2876619 (not c!466287)) b!2876610))

(assert (= (and b!2876613 c!466290) b!2876607))

(assert (= (and b!2876613 (not c!466290)) b!2876617))

(assert (= (and b!2876607 c!466291) b!2876615))

(assert (= (and b!2876607 (not c!466291)) b!2876612))

(assert (= (or b!2876610 b!2876607) bm!186190))

(assert (= (or b!2876619 b!2876613) bm!186191))

(declare-fun m!3294199 () Bool)

(assert (=> bm!186190 m!3294199))

(declare-fun m!3294201 () Bool)

(assert (=> b!2876615 m!3294201))

(declare-fun m!3294203 () Bool)

(assert (=> bm!186191 m!3294203))

(assert (=> bm!186114 d!831577))

(declare-fun b!2876621 () Bool)

(declare-fun e!1820308 () Bool)

(assert (=> b!2876621 (= e!1820308 (matchR!3742 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))) (head!6349 (tail!4574 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))))) (tail!4574 (tail!4574 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun b!2876622 () Bool)

(declare-fun res!1192779 () Bool)

(declare-fun e!1820310 () Bool)

(assert (=> b!2876622 (=> (not res!1192779) (not e!1820310))))

(assert (=> b!2876622 (= res!1192779 (isEmpty!18727 (tail!4574 (tail!4574 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun b!2876623 () Bool)

(assert (=> b!2876623 (= e!1820308 (nullable!2692 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun b!2876624 () Bool)

(declare-fun e!1820313 () Bool)

(declare-fun e!1820311 () Bool)

(assert (=> b!2876624 (= e!1820313 e!1820311)))

(declare-fun res!1192781 () Bool)

(assert (=> b!2876624 (=> res!1192781 e!1820311)))

(declare-fun call!186197 () Bool)

(assert (=> b!2876624 (= res!1192781 call!186197)))

(declare-fun b!2876626 () Bool)

(declare-fun e!1820312 () Bool)

(declare-fun lt!1018848 () Bool)

(assert (=> b!2876626 (= e!1820312 (not lt!1018848))))

(declare-fun b!2876627 () Bool)

(declare-fun res!1192783 () Bool)

(assert (=> b!2876627 (=> (not res!1192783) (not e!1820310))))

(assert (=> b!2876627 (= res!1192783 (not call!186197))))

(declare-fun b!2876628 () Bool)

(declare-fun e!1820309 () Bool)

(assert (=> b!2876628 (= e!1820309 e!1820312)))

(declare-fun c!466293 () Bool)

(assert (=> b!2876628 (= c!466293 (is-EmptyLang!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun bm!186192 () Bool)

(assert (=> bm!186192 (= call!186197 (isEmpty!18727 (tail!4574 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))))))

(declare-fun b!2876629 () Bool)

(declare-fun e!1820314 () Bool)

(assert (=> b!2876629 (= e!1820314 e!1820313)))

(declare-fun res!1192782 () Bool)

(assert (=> b!2876629 (=> (not res!1192782) (not e!1820313))))

(assert (=> b!2876629 (= res!1192782 (not lt!1018848))))

(declare-fun b!2876630 () Bool)

(declare-fun res!1192784 () Bool)

(assert (=> b!2876630 (=> res!1192784 e!1820311)))

(assert (=> b!2876630 (= res!1192784 (not (isEmpty!18727 (tail!4574 (tail!4574 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))))))))

(declare-fun d!831579 () Bool)

(assert (=> d!831579 e!1820309))

(declare-fun c!466292 () Bool)

(assert (=> d!831579 (= c!466292 (is-EmptyExpr!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))))))))

(assert (=> d!831579 (= lt!1018848 e!1820308)))

(declare-fun c!466294 () Bool)

(assert (=> d!831579 (= c!466294 (isEmpty!18727 (tail!4574 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))))))

(assert (=> d!831579 (validRegex!3520 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))))))

(assert (=> d!831579 (= (matchR!3742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))) (tail!4574 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))) lt!1018848)))

(declare-fun b!2876625 () Bool)

(assert (=> b!2876625 (= e!1820310 (= (head!6349 (tail!4574 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))) (c!466015 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))))))))

(declare-fun b!2876631 () Bool)

(assert (=> b!2876631 (= e!1820311 (not (= (head!6349 (tail!4574 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))) (c!466015 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))))))))))

(declare-fun b!2876632 () Bool)

(declare-fun res!1192785 () Bool)

(assert (=> b!2876632 (=> res!1192785 e!1820314)))

(assert (=> b!2876632 (= res!1192785 e!1820310)))

(declare-fun res!1192786 () Bool)

(assert (=> b!2876632 (=> (not res!1192786) (not e!1820310))))

(assert (=> b!2876632 (= res!1192786 lt!1018848)))

(declare-fun b!2876633 () Bool)

(assert (=> b!2876633 (= e!1820309 (= lt!1018848 call!186197))))

(declare-fun b!2876634 () Bool)

(declare-fun res!1192780 () Bool)

(assert (=> b!2876634 (=> res!1192780 e!1820314)))

(assert (=> b!2876634 (= res!1192780 (not (is-ElementMatch!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))))))))

(assert (=> b!2876634 (= e!1820312 e!1820314)))

(assert (= (and d!831579 c!466294) b!2876623))

(assert (= (and d!831579 (not c!466294)) b!2876621))

(assert (= (and d!831579 c!466292) b!2876633))

(assert (= (and d!831579 (not c!466292)) b!2876628))

(assert (= (and b!2876628 c!466293) b!2876626))

(assert (= (and b!2876628 (not c!466293)) b!2876634))

(assert (= (and b!2876634 (not res!1192780)) b!2876632))

(assert (= (and b!2876632 res!1192786) b!2876627))

(assert (= (and b!2876627 res!1192783) b!2876622))

(assert (= (and b!2876622 res!1192779) b!2876625))

(assert (= (and b!2876632 (not res!1192785)) b!2876629))

(assert (= (and b!2876629 res!1192782) b!2876624))

(assert (= (and b!2876624 (not res!1192781)) b!2876630))

(assert (= (and b!2876630 (not res!1192784)) b!2876631))

(assert (= (or b!2876633 b!2876624 b!2876627) bm!186192))

(assert (=> b!2876625 m!3293945))

(declare-fun m!3294205 () Bool)

(assert (=> b!2876625 m!3294205))

(assert (=> bm!186192 m!3293945))

(assert (=> bm!186192 m!3293947))

(assert (=> b!2876631 m!3293945))

(assert (=> b!2876631 m!3294205))

(assert (=> b!2876623 m!3293949))

(declare-fun m!3294207 () Bool)

(assert (=> b!2876623 m!3294207))

(assert (=> b!2876630 m!3293945))

(declare-fun m!3294209 () Bool)

(assert (=> b!2876630 m!3294209))

(assert (=> b!2876630 m!3294209))

(declare-fun m!3294211 () Bool)

(assert (=> b!2876630 m!3294211))

(assert (=> b!2876621 m!3293945))

(assert (=> b!2876621 m!3294205))

(assert (=> b!2876621 m!3293949))

(assert (=> b!2876621 m!3294205))

(declare-fun m!3294213 () Bool)

(assert (=> b!2876621 m!3294213))

(assert (=> b!2876621 m!3293945))

(assert (=> b!2876621 m!3294209))

(assert (=> b!2876621 m!3294213))

(assert (=> b!2876621 m!3294209))

(declare-fun m!3294215 () Bool)

(assert (=> b!2876621 m!3294215))

(assert (=> b!2876622 m!3293945))

(assert (=> b!2876622 m!3294209))

(assert (=> b!2876622 m!3294209))

(assert (=> b!2876622 m!3294211))

(assert (=> d!831579 m!3293945))

(assert (=> d!831579 m!3293947))

(assert (=> d!831579 m!3293949))

(declare-fun m!3294217 () Bool)

(assert (=> d!831579 m!3294217))

(assert (=> b!2876331 d!831579))

(declare-fun bm!186193 () Bool)

(declare-fun call!186201 () Regex!8742)

(declare-fun call!186200 () Regex!8742)

(assert (=> bm!186193 (= call!186201 call!186200)))

(declare-fun b!2876635 () Bool)

(declare-fun e!1820317 () Regex!8742)

(assert (=> b!2876635 (= e!1820317 EmptyLang!8742)))

(declare-fun b!2876636 () Bool)

(declare-fun c!466297 () Bool)

(assert (=> b!2876636 (= c!466297 (is-Union!8742 (h!39814 (exprs!3202 c!7184))))))

(declare-fun e!1820319 () Regex!8742)

(declare-fun e!1820316 () Regex!8742)

(assert (=> b!2876636 (= e!1820319 e!1820316)))

(declare-fun b!2876637 () Bool)

(declare-fun c!466299 () Bool)

(assert (=> b!2876637 (= c!466299 (nullable!2692 (regOne!17996 (h!39814 (exprs!3202 c!7184)))))))

(declare-fun e!1820315 () Regex!8742)

(declare-fun e!1820318 () Regex!8742)

(assert (=> b!2876637 (= e!1820315 e!1820318)))

(declare-fun b!2876638 () Bool)

(assert (=> b!2876638 (= e!1820315 (Concat!14063 call!186201 (h!39814 (exprs!3202 c!7184))))))

(declare-fun call!186198 () Regex!8742)

(declare-fun call!186199 () Regex!8742)

(declare-fun b!2876639 () Bool)

(assert (=> b!2876639 (= e!1820318 (Union!8742 (Concat!14063 call!186198 (regTwo!17996 (h!39814 (exprs!3202 c!7184)))) call!186199))))

(declare-fun b!2876640 () Bool)

(assert (=> b!2876640 (= e!1820318 (Union!8742 (Concat!14063 call!186198 (regTwo!17996 (h!39814 (exprs!3202 c!7184)))) EmptyLang!8742))))

(declare-fun b!2876641 () Bool)

(assert (=> b!2876641 (= e!1820319 (ite (= (head!6349 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))) (c!466015 (h!39814 (exprs!3202 c!7184)))) EmptyExpr!8742 EmptyLang!8742))))

(declare-fun b!2876642 () Bool)

(assert (=> b!2876642 (= e!1820316 (Union!8742 call!186200 call!186199))))

(declare-fun c!466295 () Bool)

(declare-fun bm!186194 () Bool)

(assert (=> bm!186194 (= call!186200 (derivativeStep!2325 (ite c!466297 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466295 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (head!6349 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))))))

(declare-fun bm!186195 () Bool)

(assert (=> bm!186195 (= call!186199 (derivativeStep!2325 (ite c!466297 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))) (head!6349 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))))))

(declare-fun bm!186196 () Bool)

(assert (=> bm!186196 (= call!186198 call!186201)))

(declare-fun d!831581 () Bool)

(declare-fun lt!1018849 () Regex!8742)

(assert (=> d!831581 (validRegex!3520 lt!1018849)))

(assert (=> d!831581 (= lt!1018849 e!1820317)))

(declare-fun c!466298 () Bool)

(assert (=> d!831581 (= c!466298 (or (is-EmptyExpr!8742 (h!39814 (exprs!3202 c!7184))) (is-EmptyLang!8742 (h!39814 (exprs!3202 c!7184)))))))

(assert (=> d!831581 (validRegex!3520 (h!39814 (exprs!3202 c!7184)))))

(assert (=> d!831581 (= (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))) lt!1018849)))

(declare-fun b!2876643 () Bool)

(assert (=> b!2876643 (= e!1820316 e!1820315)))

(assert (=> b!2876643 (= c!466295 (is-Star!8742 (h!39814 (exprs!3202 c!7184))))))

(declare-fun b!2876644 () Bool)

(assert (=> b!2876644 (= e!1820317 e!1820319)))

(declare-fun c!466296 () Bool)

(assert (=> b!2876644 (= c!466296 (is-ElementMatch!8742 (h!39814 (exprs!3202 c!7184))))))

(assert (= (and d!831581 c!466298) b!2876635))

(assert (= (and d!831581 (not c!466298)) b!2876644))

(assert (= (and b!2876644 c!466296) b!2876641))

(assert (= (and b!2876644 (not c!466296)) b!2876636))

(assert (= (and b!2876636 c!466297) b!2876642))

(assert (= (and b!2876636 (not c!466297)) b!2876643))

(assert (= (and b!2876643 c!466295) b!2876638))

(assert (= (and b!2876643 (not c!466295)) b!2876637))

(assert (= (and b!2876637 c!466299) b!2876639))

(assert (= (and b!2876637 (not c!466299)) b!2876640))

(assert (= (or b!2876639 b!2876640) bm!186196))

(assert (= (or b!2876638 bm!186196) bm!186193))

(assert (= (or b!2876642 bm!186193) bm!186194))

(assert (= (or b!2876642 b!2876639) bm!186195))

(assert (=> b!2876637 m!3293859))

(assert (=> bm!186194 m!3293941))

(declare-fun m!3294219 () Bool)

(assert (=> bm!186194 m!3294219))

(assert (=> bm!186195 m!3293941))

(declare-fun m!3294221 () Bool)

(assert (=> bm!186195 m!3294221))

(declare-fun m!3294223 () Bool)

(assert (=> d!831581 m!3294223))

(assert (=> d!831581 m!3293635))

(assert (=> b!2876331 d!831581))

(declare-fun d!831583 () Bool)

(assert (=> d!831583 (= (head!6349 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))) (h!39813 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))))))

(assert (=> b!2876331 d!831583))

(declare-fun d!831585 () Bool)

(assert (=> d!831585 (= (tail!4574 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))) (t!233560 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184))))))))

(assert (=> b!2876331 d!831585))

(assert (=> d!831457 d!831559))

(assert (=> d!831457 d!831445))

(declare-fun d!831587 () Bool)

(assert (=> d!831587 (= (isEmpty!18730 lt!1018803) (not (is-Some!6416 lt!1018803)))))

(assert (=> d!831421 d!831587))

(declare-fun bs!522787 () Bool)

(declare-fun d!831589 () Bool)

(assert (= bs!522787 (and d!831589 d!831349)))

(declare-fun lambda!107313 () Int)

(assert (=> bs!522787 (not (= lambda!107313 lambda!107282))))

(declare-fun bs!522788 () Bool)

(assert (= bs!522788 (and d!831589 d!831383)))

(assert (=> bs!522788 (= (= lambda!107294 lambda!107270) (= lambda!107313 lambda!107288))))

(declare-fun bs!522789 () Bool)

(assert (= bs!522789 (and d!831589 d!831551)))

(assert (=> bs!522789 (= (= lambda!107294 lambda!107307) (= lambda!107313 lambda!107311))))

(declare-fun bs!522790 () Bool)

(assert (= bs!522790 (and d!831589 d!831337)))

(assert (=> bs!522790 (not (= lambda!107313 lambda!107270))))

(declare-fun bs!522791 () Bool)

(assert (= bs!522791 (and d!831589 d!831489)))

(assert (=> bs!522791 (not (= lambda!107313 lambda!107307))))

(declare-fun bs!522792 () Bool)

(assert (= bs!522792 (and d!831589 d!831421)))

(assert (=> bs!522792 (not (= lambda!107313 lambda!107294))))

(declare-fun bs!522793 () Bool)

(assert (= bs!522793 (and d!831589 d!831475)))

(assert (=> bs!522793 (= (= lambda!107294 lambda!107282) (= lambda!107313 lambda!107305))))

(declare-fun bs!522794 () Bool)

(assert (= bs!522794 (and d!831589 d!831339)))

(assert (=> bs!522794 (not (= lambda!107313 lambda!107271))))

(declare-fun bs!522795 () Bool)

(assert (= bs!522795 (and d!831589 d!831331)))

(assert (=> bs!522795 (not (= lambda!107313 lambda!107265))))

(assert (=> d!831589 true))

(assert (=> d!831589 (< (dynLambda!14319 order!18137 lambda!107294) (dynLambda!14319 order!18137 lambda!107313))))

(assert (=> d!831589 (= (exists!1172 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696)))) lambda!107294) (not (forall!7087 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696)))) lambda!107313)))))

(declare-fun bs!522796 () Bool)

(assert (= bs!522796 d!831589))

(declare-fun m!3294225 () Bool)

(assert (=> bs!522796 m!3294225))

(assert (=> d!831421 d!831589))

(assert (=> b!2876335 d!831583))

(declare-fun d!831591 () Bool)

(assert (=> d!831591 (= (isEmpty!18727 (tail!4574 (tail!4574 (get!10340 lt!1018702)))) (is-Nil!34393 (tail!4574 (tail!4574 (get!10340 lt!1018702)))))))

(assert (=> b!2876395 d!831591))

(declare-fun d!831593 () Bool)

(assert (=> d!831593 (= (tail!4574 (tail!4574 (get!10340 lt!1018702))) (t!233560 (tail!4574 (get!10340 lt!1018702))))))

(assert (=> b!2876395 d!831593))

(declare-fun d!831595 () Bool)

(assert (=> d!831595 (= (nullable!2692 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))) (nullableFct!820 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (v!34542 lt!1018702)))))))

(declare-fun bs!522797 () Bool)

(assert (= bs!522797 d!831595))

(assert (=> bs!522797 m!3293649))

(declare-fun m!3294227 () Bool)

(assert (=> bs!522797 m!3294227))

(assert (=> b!2876174 d!831595))

(declare-fun d!831597 () Bool)

(declare-fun c!466302 () Bool)

(assert (=> d!831597 (= c!466302 (is-Nil!34393 lt!1018806))))

(declare-fun e!1820322 () (Set C!17666))

(assert (=> d!831597 (= (content!4706 lt!1018806) e!1820322)))

(declare-fun b!2876649 () Bool)

(assert (=> b!2876649 (= e!1820322 (as set.empty (Set C!17666)))))

(declare-fun b!2876650 () Bool)

(assert (=> b!2876650 (= e!1820322 (set.union (set.insert (h!39813 lt!1018806) (as set.empty (Set C!17666))) (content!4706 (t!233560 lt!1018806))))))

(assert (= (and d!831597 c!466302) b!2876649))

(assert (= (and d!831597 (not c!466302)) b!2876650))

(declare-fun m!3294229 () Bool)

(assert (=> b!2876650 m!3294229))

(declare-fun m!3294231 () Bool)

(assert (=> b!2876650 m!3294231))

(assert (=> d!831425 d!831597))

(declare-fun d!831599 () Bool)

(declare-fun c!466303 () Bool)

(assert (=> d!831599 (= c!466303 (is-Nil!34393 (v!34542 lt!1018760)))))

(declare-fun e!1820323 () (Set C!17666))

(assert (=> d!831599 (= (content!4706 (v!34542 lt!1018760)) e!1820323)))

(declare-fun b!2876651 () Bool)

(assert (=> b!2876651 (= e!1820323 (as set.empty (Set C!17666)))))

(declare-fun b!2876652 () Bool)

(assert (=> b!2876652 (= e!1820323 (set.union (set.insert (h!39813 (v!34542 lt!1018760)) (as set.empty (Set C!17666))) (content!4706 (t!233560 (v!34542 lt!1018760)))))))

(assert (= (and d!831599 c!466303) b!2876651))

(assert (= (and d!831599 (not c!466303)) b!2876652))

(declare-fun m!3294233 () Bool)

(assert (=> b!2876652 m!3294233))

(declare-fun m!3294235 () Bool)

(assert (=> b!2876652 m!3294235))

(assert (=> d!831425 d!831599))

(declare-fun d!831601 () Bool)

(declare-fun c!466304 () Bool)

(assert (=> d!831601 (= c!466304 (is-Nil!34393 (v!34542 lt!1018759)))))

(declare-fun e!1820324 () (Set C!17666))

(assert (=> d!831601 (= (content!4706 (v!34542 lt!1018759)) e!1820324)))

(declare-fun b!2876653 () Bool)

(assert (=> b!2876653 (= e!1820324 (as set.empty (Set C!17666)))))

(declare-fun b!2876654 () Bool)

(assert (=> b!2876654 (= e!1820324 (set.union (set.insert (h!39813 (v!34542 lt!1018759)) (as set.empty (Set C!17666))) (content!4706 (t!233560 (v!34542 lt!1018759)))))))

(assert (= (and d!831601 c!466304) b!2876653))

(assert (= (and d!831601 (not c!466304)) b!2876654))

(declare-fun m!3294237 () Bool)

(assert (=> b!2876654 m!3294237))

(declare-fun m!3294239 () Bool)

(assert (=> b!2876654 m!3294239))

(assert (=> d!831425 d!831601))

(declare-fun b!2876655 () Bool)

(declare-fun e!1820327 () Option!6417)

(declare-fun lt!1018850 () Option!6417)

(assert (=> b!2876655 (= e!1820327 lt!1018850)))

(declare-fun b!2876656 () Bool)

(declare-fun c!466306 () Bool)

(assert (=> b!2876656 (= c!466306 (is-ElementMatch!8742 (ite c!466184 (regOne!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun e!1820332 () Option!6417)

(declare-fun e!1820325 () Option!6417)

(assert (=> b!2876656 (= e!1820332 e!1820325)))

(declare-fun b!2876657 () Bool)

(declare-fun c!466312 () Bool)

(declare-fun lt!1018851 () Option!6417)

(assert (=> b!2876657 (= c!466312 (is-Some!6416 lt!1018851))))

(declare-fun call!186202 () Option!6417)

(assert (=> b!2876657 (= lt!1018851 call!186202)))

(declare-fun e!1820328 () Option!6417)

(declare-fun e!1820330 () Option!6417)

(assert (=> b!2876657 (= e!1820328 e!1820330)))

(declare-fun c!466309 () Bool)

(declare-fun bm!186197 () Bool)

(assert (=> bm!186197 (= call!186202 (getLanguageWitness!436 (ite c!466309 (regTwo!17997 (ite c!466184 (regOne!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))) (regTwo!17996 (ite c!466184 (regOne!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))))))

(declare-fun b!2876658 () Bool)

(declare-fun e!1820329 () Option!6417)

(assert (=> b!2876658 (= e!1820329 (Some!6416 Nil!34393))))

(declare-fun b!2876659 () Bool)

(assert (=> b!2876659 (= c!466309 (is-Union!8742 (ite c!466184 (regOne!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun e!1820326 () Option!6417)

(assert (=> b!2876659 (= e!1820329 e!1820326)))

(declare-fun b!2876661 () Bool)

(assert (=> b!2876661 (= e!1820332 None!6416)))

(declare-fun b!2876662 () Bool)

(assert (=> b!2876662 (= e!1820330 None!6416)))

(declare-fun b!2876663 () Bool)

(assert (=> b!2876663 (= e!1820326 e!1820328)))

(declare-fun lt!1018852 () Option!6417)

(declare-fun call!186203 () Option!6417)

(assert (=> b!2876663 (= lt!1018852 call!186203)))

(declare-fun c!466311 () Bool)

(assert (=> b!2876663 (= c!466311 (is-Some!6416 lt!1018852))))

(declare-fun b!2876664 () Bool)

(declare-fun e!1820331 () Option!6417)

(assert (=> b!2876664 (= e!1820331 (Some!6416 Nil!34393))))

(declare-fun b!2876665 () Bool)

(assert (=> b!2876665 (= e!1820330 (Some!6416 (++!8179 (v!34542 lt!1018852) (v!34542 lt!1018851))))))

(declare-fun b!2876666 () Bool)

(assert (=> b!2876666 (= e!1820325 e!1820329)))

(declare-fun c!466305 () Bool)

(assert (=> b!2876666 (= c!466305 (is-Star!8742 (ite c!466184 (regOne!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun b!2876667 () Bool)

(assert (=> b!2876667 (= e!1820328 None!6416)))

(declare-fun c!466307 () Bool)

(declare-fun d!831603 () Bool)

(assert (=> d!831603 (= c!466307 (is-EmptyExpr!8742 (ite c!466184 (regOne!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))))

(assert (=> d!831603 (= (getLanguageWitness!436 (ite c!466184 (regOne!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))) e!1820331)))

(declare-fun b!2876660 () Bool)

(assert (=> b!2876660 (= e!1820327 call!186202)))

(declare-fun bm!186198 () Bool)

(assert (=> bm!186198 (= call!186203 (getLanguageWitness!436 (ite c!466309 (regOne!17997 (ite c!466184 (regOne!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))) (regOne!17996 (ite c!466184 (regOne!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))))))

(declare-fun b!2876668 () Bool)

(assert (=> b!2876668 (= e!1820331 e!1820332)))

(declare-fun c!466310 () Bool)

(assert (=> b!2876668 (= c!466310 (is-EmptyLang!8742 (ite c!466184 (regOne!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun b!2876669 () Bool)

(assert (=> b!2876669 (= e!1820326 e!1820327)))

(assert (=> b!2876669 (= lt!1018850 call!186203)))

(declare-fun c!466308 () Bool)

(assert (=> b!2876669 (= c!466308 (is-Some!6416 lt!1018850))))

(declare-fun b!2876670 () Bool)

(assert (=> b!2876670 (= e!1820325 (Some!6416 (Cons!34393 (c!466015 (ite c!466184 (regOne!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))) Nil!34393)))))

(assert (= (and d!831603 c!466307) b!2876664))

(assert (= (and d!831603 (not c!466307)) b!2876668))

(assert (= (and b!2876668 c!466310) b!2876661))

(assert (= (and b!2876668 (not c!466310)) b!2876656))

(assert (= (and b!2876656 c!466306) b!2876670))

(assert (= (and b!2876656 (not c!466306)) b!2876666))

(assert (= (and b!2876666 c!466305) b!2876658))

(assert (= (and b!2876666 (not c!466305)) b!2876659))

(assert (= (and b!2876659 c!466309) b!2876669))

(assert (= (and b!2876659 (not c!466309)) b!2876663))

(assert (= (and b!2876669 c!466308) b!2876655))

(assert (= (and b!2876669 (not c!466308)) b!2876660))

(assert (= (and b!2876663 c!466311) b!2876657))

(assert (= (and b!2876663 (not c!466311)) b!2876667))

(assert (= (and b!2876657 c!466312) b!2876665))

(assert (= (and b!2876657 (not c!466312)) b!2876662))

(assert (= (or b!2876660 b!2876657) bm!186197))

(assert (= (or b!2876669 b!2876663) bm!186198))

(declare-fun m!3294241 () Bool)

(assert (=> bm!186197 m!3294241))

(declare-fun m!3294243 () Bool)

(assert (=> b!2876665 m!3294243))

(declare-fun m!3294245 () Bool)

(assert (=> bm!186198 m!3294245))

(assert (=> bm!186134 d!831603))

(assert (=> b!2876333 d!831381))

(declare-fun bm!186199 () Bool)

(declare-fun call!186207 () Regex!8742)

(declare-fun call!186206 () Regex!8742)

(assert (=> bm!186199 (= call!186207 call!186206)))

(declare-fun b!2876671 () Bool)

(declare-fun e!1820335 () Regex!8742)

(assert (=> b!2876671 (= e!1820335 EmptyLang!8742)))

(declare-fun b!2876672 () Bool)

(declare-fun c!466315 () Bool)

(assert (=> b!2876672 (= c!466315 (is-Union!8742 (ite c!466227 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun e!1820337 () Regex!8742)

(declare-fun e!1820334 () Regex!8742)

(assert (=> b!2876672 (= e!1820337 e!1820334)))

(declare-fun b!2876673 () Bool)

(declare-fun c!466317 () Bool)

(assert (=> b!2876673 (= c!466317 (nullable!2692 (regOne!17996 (ite c!466227 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))))))))

(declare-fun e!1820333 () Regex!8742)

(declare-fun e!1820336 () Regex!8742)

(assert (=> b!2876673 (= e!1820333 e!1820336)))

(declare-fun b!2876674 () Bool)

(assert (=> b!2876674 (= e!1820333 (Concat!14063 call!186207 (ite c!466227 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun call!186205 () Regex!8742)

(declare-fun b!2876675 () Bool)

(declare-fun call!186204 () Regex!8742)

(assert (=> b!2876675 (= e!1820336 (Union!8742 (Concat!14063 call!186204 (regTwo!17996 (ite c!466227 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))))) call!186205))))

(declare-fun b!2876676 () Bool)

(assert (=> b!2876676 (= e!1820336 (Union!8742 (Concat!14063 call!186204 (regTwo!17996 (ite c!466227 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))))) EmptyLang!8742))))

(declare-fun b!2876677 () Bool)

(assert (=> b!2876677 (= e!1820337 (ite (= (head!6349 (get!10340 lt!1018702)) (c!466015 (ite c!466227 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))))) EmptyExpr!8742 EmptyLang!8742))))

(declare-fun b!2876678 () Bool)

(assert (=> b!2876678 (= e!1820334 (Union!8742 call!186206 call!186205))))

(declare-fun bm!186200 () Bool)

(declare-fun c!466313 () Bool)

(assert (=> bm!186200 (= call!186206 (derivativeStep!2325 (ite c!466315 (regOne!17997 (ite c!466227 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (ite c!466313 (reg!9071 (ite c!466227 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466227 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))) (head!6349 (get!10340 lt!1018702))))))

(declare-fun bm!186201 () Bool)

(assert (=> bm!186201 (= call!186205 (derivativeStep!2325 (ite c!466315 (regTwo!17997 (ite c!466227 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466227 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))))) (head!6349 (get!10340 lt!1018702))))))

(declare-fun bm!186202 () Bool)

(assert (=> bm!186202 (= call!186204 call!186207)))

(declare-fun d!831605 () Bool)

(declare-fun lt!1018853 () Regex!8742)

(assert (=> d!831605 (validRegex!3520 lt!1018853)))

(assert (=> d!831605 (= lt!1018853 e!1820335)))

(declare-fun c!466316 () Bool)

(assert (=> d!831605 (= c!466316 (or (is-EmptyExpr!8742 (ite c!466227 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (is-EmptyLang!8742 (ite c!466227 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))))))))

(assert (=> d!831605 (validRegex!3520 (ite c!466227 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))))))

(assert (=> d!831605 (= (derivativeStep!2325 (ite c!466227 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))) (head!6349 (get!10340 lt!1018702))) lt!1018853)))

(declare-fun b!2876679 () Bool)

(assert (=> b!2876679 (= e!1820334 e!1820333)))

(assert (=> b!2876679 (= c!466313 (is-Star!8742 (ite c!466227 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun b!2876680 () Bool)

(assert (=> b!2876680 (= e!1820335 e!1820337)))

(declare-fun c!466314 () Bool)

(assert (=> b!2876680 (= c!466314 (is-ElementMatch!8742 (ite c!466227 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))

(assert (= (and d!831605 c!466316) b!2876671))

(assert (= (and d!831605 (not c!466316)) b!2876680))

(assert (= (and b!2876680 c!466314) b!2876677))

(assert (= (and b!2876680 (not c!466314)) b!2876672))

(assert (= (and b!2876672 c!466315) b!2876678))

(assert (= (and b!2876672 (not c!466315)) b!2876679))

(assert (= (and b!2876679 c!466313) b!2876674))

(assert (= (and b!2876679 (not c!466313)) b!2876673))

(assert (= (and b!2876673 c!466317) b!2876675))

(assert (= (and b!2876673 (not c!466317)) b!2876676))

(assert (= (or b!2876675 b!2876676) bm!186202))

(assert (= (or b!2876674 bm!186202) bm!186199))

(assert (= (or b!2876678 bm!186199) bm!186200))

(assert (= (or b!2876678 b!2876675) bm!186201))

(declare-fun m!3294247 () Bool)

(assert (=> b!2876673 m!3294247))

(assert (=> bm!186200 m!3293653))

(declare-fun m!3294249 () Bool)

(assert (=> bm!186200 m!3294249))

(assert (=> bm!186201 m!3293653))

(declare-fun m!3294251 () Bool)

(assert (=> bm!186201 m!3294251))

(declare-fun m!3294253 () Bool)

(assert (=> d!831605 m!3294253))

(declare-fun m!3294255 () Bool)

(assert (=> d!831605 m!3294255))

(assert (=> bm!186166 d!831605))

(declare-fun bm!186203 () Bool)

(declare-fun call!186211 () Regex!8742)

(declare-fun call!186210 () Regex!8742)

(assert (=> bm!186203 (= call!186211 call!186210)))

(declare-fun b!2876681 () Bool)

(declare-fun e!1820340 () Regex!8742)

(assert (=> b!2876681 (= e!1820340 EmptyLang!8742)))

(declare-fun b!2876682 () Bool)

(declare-fun c!466320 () Bool)

(assert (=> b!2876682 (= c!466320 (is-Union!8742 (ite c!466154 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun e!1820342 () Regex!8742)

(declare-fun e!1820339 () Regex!8742)

(assert (=> b!2876682 (= e!1820342 e!1820339)))

(declare-fun b!2876683 () Bool)

(declare-fun c!466322 () Bool)

(assert (=> b!2876683 (= c!466322 (nullable!2692 (regOne!17996 (ite c!466154 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))))))))

(declare-fun e!1820338 () Regex!8742)

(declare-fun e!1820341 () Regex!8742)

(assert (=> b!2876683 (= e!1820338 e!1820341)))

(declare-fun b!2876684 () Bool)

(assert (=> b!2876684 (= e!1820338 (Concat!14063 call!186211 (ite c!466154 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun call!186209 () Regex!8742)

(declare-fun b!2876685 () Bool)

(declare-fun call!186208 () Regex!8742)

(assert (=> b!2876685 (= e!1820341 (Union!8742 (Concat!14063 call!186208 (regTwo!17996 (ite c!466154 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))))) call!186209))))

(declare-fun b!2876686 () Bool)

(assert (=> b!2876686 (= e!1820341 (Union!8742 (Concat!14063 call!186208 (regTwo!17996 (ite c!466154 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))))) EmptyLang!8742))))

(declare-fun b!2876687 () Bool)

(assert (=> b!2876687 (= e!1820342 (ite (= (head!6349 (v!34542 lt!1018702)) (c!466015 (ite c!466154 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))))) EmptyExpr!8742 EmptyLang!8742))))

(declare-fun b!2876688 () Bool)

(assert (=> b!2876688 (= e!1820339 (Union!8742 call!186210 call!186209))))

(declare-fun bm!186204 () Bool)

(declare-fun c!466318 () Bool)

(assert (=> bm!186204 (= call!186210 (derivativeStep!2325 (ite c!466320 (regOne!17997 (ite c!466154 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (ite c!466318 (reg!9071 (ite c!466154 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466154 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))) (head!6349 (v!34542 lt!1018702))))))

(declare-fun bm!186205 () Bool)

(assert (=> bm!186205 (= call!186209 (derivativeStep!2325 (ite c!466320 (regTwo!17997 (ite c!466154 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466154 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))))) (head!6349 (v!34542 lt!1018702))))))

(declare-fun bm!186206 () Bool)

(assert (=> bm!186206 (= call!186208 call!186211)))

(declare-fun d!831607 () Bool)

(declare-fun lt!1018854 () Regex!8742)

(assert (=> d!831607 (validRegex!3520 lt!1018854)))

(assert (=> d!831607 (= lt!1018854 e!1820340)))

(declare-fun c!466321 () Bool)

(assert (=> d!831607 (= c!466321 (or (is-EmptyExpr!8742 (ite c!466154 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (is-EmptyLang!8742 (ite c!466154 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))))))))

(assert (=> d!831607 (validRegex!3520 (ite c!466154 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))))))

(assert (=> d!831607 (= (derivativeStep!2325 (ite c!466154 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))) (head!6349 (v!34542 lt!1018702))) lt!1018854)))

(declare-fun b!2876689 () Bool)

(assert (=> b!2876689 (= e!1820339 e!1820338)))

(assert (=> b!2876689 (= c!466318 (is-Star!8742 (ite c!466154 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun b!2876690 () Bool)

(assert (=> b!2876690 (= e!1820340 e!1820342)))

(declare-fun c!466319 () Bool)

(assert (=> b!2876690 (= c!466319 (is-ElementMatch!8742 (ite c!466154 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))

(assert (= (and d!831607 c!466321) b!2876681))

(assert (= (and d!831607 (not c!466321)) b!2876690))

(assert (= (and b!2876690 c!466319) b!2876687))

(assert (= (and b!2876690 (not c!466319)) b!2876682))

(assert (= (and b!2876682 c!466320) b!2876688))

(assert (= (and b!2876682 (not c!466320)) b!2876689))

(assert (= (and b!2876689 c!466318) b!2876684))

(assert (= (and b!2876689 (not c!466318)) b!2876683))

(assert (= (and b!2876683 c!466322) b!2876685))

(assert (= (and b!2876683 (not c!466322)) b!2876686))

(assert (= (or b!2876685 b!2876686) bm!186206))

(assert (= (or b!2876684 bm!186206) bm!186203))

(assert (= (or b!2876688 bm!186203) bm!186204))

(assert (= (or b!2876688 b!2876685) bm!186205))

(declare-fun m!3294257 () Bool)

(assert (=> b!2876683 m!3294257))

(assert (=> bm!186204 m!3293639))

(declare-fun m!3294259 () Bool)

(assert (=> bm!186204 m!3294259))

(assert (=> bm!186205 m!3293639))

(declare-fun m!3294261 () Bool)

(assert (=> bm!186205 m!3294261))

(declare-fun m!3294263 () Bool)

(assert (=> d!831607 m!3294263))

(declare-fun m!3294265 () Bool)

(assert (=> d!831607 m!3294265))

(assert (=> bm!186127 d!831607))

(declare-fun d!831609 () Bool)

(assert (=> d!831609 (= (nullable!2692 (reg!9071 (h!39814 (exprs!3202 c!7184)))) (nullableFct!820 (reg!9071 (h!39814 (exprs!3202 c!7184)))))))

(declare-fun bs!522798 () Bool)

(assert (= bs!522798 d!831609))

(declare-fun m!3294267 () Bool)

(assert (=> bs!522798 m!3294267))

(assert (=> b!2876322 d!831609))

(declare-fun d!831611 () Bool)

(declare-fun c!466323 () Bool)

(assert (=> d!831611 (= c!466323 (isEmpty!18727 (tail!4574 (get!10340 (getLanguageWitness!435 lt!1018696)))))))

(declare-fun e!1820343 () Bool)

(assert (=> d!831611 (= (matchZipper!484 (derivationStepZipper!476 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (head!6349 (get!10340 (getLanguageWitness!435 lt!1018696)))) (tail!4574 (get!10340 (getLanguageWitness!435 lt!1018696)))) e!1820343)))

(declare-fun b!2876691 () Bool)

(assert (=> b!2876691 (= e!1820343 (nullableZipper!720 (derivationStepZipper!476 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (head!6349 (get!10340 (getLanguageWitness!435 lt!1018696))))))))

(declare-fun b!2876692 () Bool)

(assert (=> b!2876692 (= e!1820343 (matchZipper!484 (derivationStepZipper!476 (derivationStepZipper!476 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (head!6349 (get!10340 (getLanguageWitness!435 lt!1018696)))) (head!6349 (tail!4574 (get!10340 (getLanguageWitness!435 lt!1018696))))) (tail!4574 (tail!4574 (get!10340 (getLanguageWitness!435 lt!1018696))))))))

(assert (= (and d!831611 c!466323) b!2876691))

(assert (= (and d!831611 (not c!466323)) b!2876692))

(assert (=> d!831611 m!3293987))

(declare-fun m!3294269 () Bool)

(assert (=> d!831611 m!3294269))

(assert (=> b!2876691 m!3293985))

(declare-fun m!3294271 () Bool)

(assert (=> b!2876691 m!3294271))

(assert (=> b!2876692 m!3293987))

(declare-fun m!3294273 () Bool)

(assert (=> b!2876692 m!3294273))

(assert (=> b!2876692 m!3293985))

(assert (=> b!2876692 m!3294273))

(declare-fun m!3294275 () Bool)

(assert (=> b!2876692 m!3294275))

(assert (=> b!2876692 m!3293987))

(declare-fun m!3294277 () Bool)

(assert (=> b!2876692 m!3294277))

(assert (=> b!2876692 m!3294275))

(assert (=> b!2876692 m!3294277))

(declare-fun m!3294279 () Bool)

(assert (=> b!2876692 m!3294279))

(assert (=> b!2876371 d!831611))

(declare-fun bs!522799 () Bool)

(declare-fun d!831613 () Bool)

(assert (= bs!522799 (and d!831613 d!831389)))

(declare-fun lambda!107314 () Int)

(assert (=> bs!522799 (= (= (head!6349 (get!10340 (getLanguageWitness!435 lt!1018696))) (head!6349 (v!34542 lt!1018702))) (= lambda!107314 lambda!107291))))

(declare-fun bs!522800 () Bool)

(assert (= bs!522800 (and d!831613 d!831493)))

(assert (=> bs!522800 (= (= (head!6349 (get!10340 (getLanguageWitness!435 lt!1018696))) (head!6349 (get!10340 lt!1018697))) (= lambda!107314 lambda!107308))))

(assert (=> d!831613 true))

(assert (=> d!831613 (= (derivationStepZipper!476 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (head!6349 (get!10340 (getLanguageWitness!435 lt!1018696)))) (flatMap!223 (set.insert lt!1018696 (as set.empty (Set Context!5404))) lambda!107314))))

(declare-fun bs!522801 () Bool)

(assert (= bs!522801 d!831613))

(assert (=> bs!522801 m!3293567))

(declare-fun m!3294281 () Bool)

(assert (=> bs!522801 m!3294281))

(assert (=> b!2876371 d!831613))

(declare-fun d!831615 () Bool)

(assert (=> d!831615 (= (head!6349 (get!10340 (getLanguageWitness!435 lt!1018696))) (h!39813 (get!10340 (getLanguageWitness!435 lt!1018696))))))

(assert (=> b!2876371 d!831615))

(declare-fun d!831617 () Bool)

(assert (=> d!831617 (= (tail!4574 (get!10340 (getLanguageWitness!435 lt!1018696))) (t!233560 (get!10340 (getLanguageWitness!435 lt!1018696))))))

(assert (=> b!2876371 d!831617))

(declare-fun b!2876693 () Bool)

(declare-fun e!1820346 () Option!6417)

(declare-fun lt!1018855 () Option!6417)

(assert (=> b!2876693 (= e!1820346 lt!1018855)))

(declare-fun b!2876694 () Bool)

(declare-fun c!466325 () Bool)

(assert (=> b!2876694 (= c!466325 (is-ElementMatch!8742 (ite c!466168 (regTwo!17997 (h!39814 (exprs!3202 lt!1018696))) (regTwo!17996 (h!39814 (exprs!3202 lt!1018696))))))))

(declare-fun e!1820351 () Option!6417)

(declare-fun e!1820344 () Option!6417)

(assert (=> b!2876694 (= e!1820351 e!1820344)))

(declare-fun b!2876695 () Bool)

(declare-fun c!466331 () Bool)

(declare-fun lt!1018856 () Option!6417)

(assert (=> b!2876695 (= c!466331 (is-Some!6416 lt!1018856))))

(declare-fun call!186212 () Option!6417)

(assert (=> b!2876695 (= lt!1018856 call!186212)))

(declare-fun e!1820347 () Option!6417)

(declare-fun e!1820349 () Option!6417)

(assert (=> b!2876695 (= e!1820347 e!1820349)))

(declare-fun c!466328 () Bool)

(declare-fun bm!186207 () Bool)

(assert (=> bm!186207 (= call!186212 (getLanguageWitness!436 (ite c!466328 (regTwo!17997 (ite c!466168 (regTwo!17997 (h!39814 (exprs!3202 lt!1018696))) (regTwo!17996 (h!39814 (exprs!3202 lt!1018696))))) (regTwo!17996 (ite c!466168 (regTwo!17997 (h!39814 (exprs!3202 lt!1018696))) (regTwo!17996 (h!39814 (exprs!3202 lt!1018696))))))))))

(declare-fun b!2876696 () Bool)

(declare-fun e!1820348 () Option!6417)

(assert (=> b!2876696 (= e!1820348 (Some!6416 Nil!34393))))

(declare-fun b!2876697 () Bool)

(assert (=> b!2876697 (= c!466328 (is-Union!8742 (ite c!466168 (regTwo!17997 (h!39814 (exprs!3202 lt!1018696))) (regTwo!17996 (h!39814 (exprs!3202 lt!1018696))))))))

(declare-fun e!1820345 () Option!6417)

(assert (=> b!2876697 (= e!1820348 e!1820345)))

(declare-fun b!2876699 () Bool)

(assert (=> b!2876699 (= e!1820351 None!6416)))

(declare-fun b!2876700 () Bool)

(assert (=> b!2876700 (= e!1820349 None!6416)))

(declare-fun b!2876701 () Bool)

(assert (=> b!2876701 (= e!1820345 e!1820347)))

(declare-fun lt!1018857 () Option!6417)

(declare-fun call!186213 () Option!6417)

(assert (=> b!2876701 (= lt!1018857 call!186213)))

(declare-fun c!466330 () Bool)

(assert (=> b!2876701 (= c!466330 (is-Some!6416 lt!1018857))))

(declare-fun b!2876702 () Bool)

(declare-fun e!1820350 () Option!6417)

(assert (=> b!2876702 (= e!1820350 (Some!6416 Nil!34393))))

(declare-fun b!2876703 () Bool)

(assert (=> b!2876703 (= e!1820349 (Some!6416 (++!8179 (v!34542 lt!1018857) (v!34542 lt!1018856))))))

(declare-fun b!2876704 () Bool)

(assert (=> b!2876704 (= e!1820344 e!1820348)))

(declare-fun c!466324 () Bool)

(assert (=> b!2876704 (= c!466324 (is-Star!8742 (ite c!466168 (regTwo!17997 (h!39814 (exprs!3202 lt!1018696))) (regTwo!17996 (h!39814 (exprs!3202 lt!1018696))))))))

(declare-fun b!2876705 () Bool)

(assert (=> b!2876705 (= e!1820347 None!6416)))

(declare-fun d!831619 () Bool)

(declare-fun c!466326 () Bool)

(assert (=> d!831619 (= c!466326 (is-EmptyExpr!8742 (ite c!466168 (regTwo!17997 (h!39814 (exprs!3202 lt!1018696))) (regTwo!17996 (h!39814 (exprs!3202 lt!1018696))))))))

(assert (=> d!831619 (= (getLanguageWitness!436 (ite c!466168 (regTwo!17997 (h!39814 (exprs!3202 lt!1018696))) (regTwo!17996 (h!39814 (exprs!3202 lt!1018696))))) e!1820350)))

(declare-fun b!2876698 () Bool)

(assert (=> b!2876698 (= e!1820346 call!186212)))

(declare-fun bm!186208 () Bool)

(assert (=> bm!186208 (= call!186213 (getLanguageWitness!436 (ite c!466328 (regOne!17997 (ite c!466168 (regTwo!17997 (h!39814 (exprs!3202 lt!1018696))) (regTwo!17996 (h!39814 (exprs!3202 lt!1018696))))) (regOne!17996 (ite c!466168 (regTwo!17997 (h!39814 (exprs!3202 lt!1018696))) (regTwo!17996 (h!39814 (exprs!3202 lt!1018696))))))))))

(declare-fun b!2876706 () Bool)

(assert (=> b!2876706 (= e!1820350 e!1820351)))

(declare-fun c!466329 () Bool)

(assert (=> b!2876706 (= c!466329 (is-EmptyLang!8742 (ite c!466168 (regTwo!17997 (h!39814 (exprs!3202 lt!1018696))) (regTwo!17996 (h!39814 (exprs!3202 lt!1018696))))))))

(declare-fun b!2876707 () Bool)

(assert (=> b!2876707 (= e!1820345 e!1820346)))

(assert (=> b!2876707 (= lt!1018855 call!186213)))

(declare-fun c!466327 () Bool)

(assert (=> b!2876707 (= c!466327 (is-Some!6416 lt!1018855))))

(declare-fun b!2876708 () Bool)

(assert (=> b!2876708 (= e!1820344 (Some!6416 (Cons!34393 (c!466015 (ite c!466168 (regTwo!17997 (h!39814 (exprs!3202 lt!1018696))) (regTwo!17996 (h!39814 (exprs!3202 lt!1018696))))) Nil!34393)))))

(assert (= (and d!831619 c!466326) b!2876702))

(assert (= (and d!831619 (not c!466326)) b!2876706))

(assert (= (and b!2876706 c!466329) b!2876699))

(assert (= (and b!2876706 (not c!466329)) b!2876694))

(assert (= (and b!2876694 c!466325) b!2876708))

(assert (= (and b!2876694 (not c!466325)) b!2876704))

(assert (= (and b!2876704 c!466324) b!2876696))

(assert (= (and b!2876704 (not c!466324)) b!2876697))

(assert (= (and b!2876697 c!466328) b!2876707))

(assert (= (and b!2876697 (not c!466328)) b!2876701))

(assert (= (and b!2876707 c!466327) b!2876693))

(assert (= (and b!2876707 (not c!466327)) b!2876698))

(assert (= (and b!2876701 c!466330) b!2876695))

(assert (= (and b!2876701 (not c!466330)) b!2876705))

(assert (= (and b!2876695 c!466331) b!2876703))

(assert (= (and b!2876695 (not c!466331)) b!2876700))

(assert (= (or b!2876698 b!2876695) bm!186207))

(assert (= (or b!2876707 b!2876701) bm!186208))

(declare-fun m!3294283 () Bool)

(assert (=> bm!186207 m!3294283))

(declare-fun m!3294285 () Bool)

(assert (=> b!2876703 m!3294285))

(declare-fun m!3294287 () Bool)

(assert (=> bm!186208 m!3294287))

(assert (=> bm!186129 d!831619))

(declare-fun b!2876709 () Bool)

(declare-fun e!1820352 () Bool)

(declare-fun e!1820358 () Bool)

(assert (=> b!2876709 (= e!1820352 e!1820358)))

(declare-fun res!1192787 () Bool)

(assert (=> b!2876709 (= res!1192787 (not (nullable!2692 (reg!9071 (ite c!466200 (reg!9071 (h!39814 (exprs!3202 c!7184))) (ite c!466199 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))))))))

(assert (=> b!2876709 (=> (not res!1192787) (not e!1820358))))

(declare-fun b!2876710 () Bool)

(declare-fun e!1820355 () Bool)

(assert (=> b!2876710 (= e!1820352 e!1820355)))

(declare-fun c!466332 () Bool)

(assert (=> b!2876710 (= c!466332 (is-Union!8742 (ite c!466200 (reg!9071 (h!39814 (exprs!3202 c!7184))) (ite c!466199 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))))))

(declare-fun d!831621 () Bool)

(declare-fun res!1192788 () Bool)

(declare-fun e!1820353 () Bool)

(assert (=> d!831621 (=> res!1192788 e!1820353)))

(assert (=> d!831621 (= res!1192788 (is-ElementMatch!8742 (ite c!466200 (reg!9071 (h!39814 (exprs!3202 c!7184))) (ite c!466199 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))))))

(assert (=> d!831621 (= (validRegex!3520 (ite c!466200 (reg!9071 (h!39814 (exprs!3202 c!7184))) (ite c!466199 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))) e!1820353)))

(declare-fun bm!186209 () Bool)

(declare-fun call!186214 () Bool)

(declare-fun c!466333 () Bool)

(assert (=> bm!186209 (= call!186214 (validRegex!3520 (ite c!466333 (reg!9071 (ite c!466200 (reg!9071 (h!39814 (exprs!3202 c!7184))) (ite c!466199 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))) (ite c!466332 (regTwo!17997 (ite c!466200 (reg!9071 (h!39814 (exprs!3202 c!7184))) (ite c!466199 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))) (regOne!17996 (ite c!466200 (reg!9071 (h!39814 (exprs!3202 c!7184))) (ite c!466199 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))))

(declare-fun b!2876711 () Bool)

(declare-fun e!1820357 () Bool)

(declare-fun call!186216 () Bool)

(assert (=> b!2876711 (= e!1820357 call!186216)))

(declare-fun b!2876712 () Bool)

(declare-fun e!1820354 () Bool)

(declare-fun call!186215 () Bool)

(assert (=> b!2876712 (= e!1820354 call!186215)))

(declare-fun b!2876713 () Bool)

(assert (=> b!2876713 (= e!1820358 call!186214)))

(declare-fun b!2876714 () Bool)

(declare-fun res!1192789 () Bool)

(assert (=> b!2876714 (=> (not res!1192789) (not e!1820354))))

(assert (=> b!2876714 (= res!1192789 call!186216)))

(assert (=> b!2876714 (= e!1820355 e!1820354)))

(declare-fun b!2876715 () Bool)

(declare-fun res!1192790 () Bool)

(declare-fun e!1820356 () Bool)

(assert (=> b!2876715 (=> res!1192790 e!1820356)))

(assert (=> b!2876715 (= res!1192790 (not (is-Concat!14063 (ite c!466200 (reg!9071 (h!39814 (exprs!3202 c!7184))) (ite c!466199 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))

(assert (=> b!2876715 (= e!1820355 e!1820356)))

(declare-fun b!2876716 () Bool)

(assert (=> b!2876716 (= e!1820353 e!1820352)))

(assert (=> b!2876716 (= c!466333 (is-Star!8742 (ite c!466200 (reg!9071 (h!39814 (exprs!3202 c!7184))) (ite c!466199 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))))))

(declare-fun bm!186210 () Bool)

(assert (=> bm!186210 (= call!186216 (validRegex!3520 (ite c!466332 (regOne!17997 (ite c!466200 (reg!9071 (h!39814 (exprs!3202 c!7184))) (ite c!466199 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))) (regTwo!17996 (ite c!466200 (reg!9071 (h!39814 (exprs!3202 c!7184))) (ite c!466199 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))))))))

(declare-fun b!2876717 () Bool)

(assert (=> b!2876717 (= e!1820356 e!1820357)))

(declare-fun res!1192791 () Bool)

(assert (=> b!2876717 (=> (not res!1192791) (not e!1820357))))

(assert (=> b!2876717 (= res!1192791 call!186215)))

(declare-fun bm!186211 () Bool)

(assert (=> bm!186211 (= call!186215 call!186214)))

(assert (= (and d!831621 (not res!1192788)) b!2876716))

(assert (= (and b!2876716 c!466333) b!2876709))

(assert (= (and b!2876716 (not c!466333)) b!2876710))

(assert (= (and b!2876709 res!1192787) b!2876713))

(assert (= (and b!2876710 c!466332) b!2876714))

(assert (= (and b!2876710 (not c!466332)) b!2876715))

(assert (= (and b!2876714 res!1192789) b!2876712))

(assert (= (and b!2876715 (not res!1192790)) b!2876717))

(assert (= (and b!2876717 res!1192791) b!2876711))

(assert (= (or b!2876712 b!2876717) bm!186211))

(assert (= (or b!2876714 b!2876711) bm!186210))

(assert (= (or b!2876713 bm!186211) bm!186209))

(declare-fun m!3294289 () Bool)

(assert (=> b!2876709 m!3294289))

(declare-fun m!3294291 () Bool)

(assert (=> bm!186209 m!3294291))

(declare-fun m!3294293 () Bool)

(assert (=> bm!186210 m!3294293))

(assert (=> bm!186143 d!831621))

(assert (=> bm!186163 d!831397))

(declare-fun bs!522802 () Bool)

(declare-fun d!831623 () Bool)

(assert (= bs!522802 (and d!831623 d!831375)))

(declare-fun lambda!107315 () Int)

(assert (=> bs!522802 (= lambda!107315 lambda!107285)))

(declare-fun bs!522803 () Bool)

(assert (= bs!522803 (and d!831623 d!831481)))

(assert (=> bs!522803 (= lambda!107315 lambda!107306)))

(declare-fun bs!522804 () Bool)

(assert (= bs!522804 (and d!831623 d!831567)))

(assert (=> bs!522804 (= lambda!107315 lambda!107312)))

(assert (=> d!831623 (= (nullableZipper!720 (derivationStepZipper!476 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (head!6349 (get!10340 lt!1018697)))) (exists!1173 (derivationStepZipper!476 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (head!6349 (get!10340 lt!1018697))) lambda!107315))))

(declare-fun bs!522805 () Bool)

(assert (= bs!522805 d!831623))

(assert (=> bs!522805 m!3293671))

(declare-fun m!3294295 () Bool)

(assert (=> bs!522805 m!3294295))

(assert (=> b!2876392 d!831623))

(declare-fun b!2876718 () Bool)

(declare-fun e!1820361 () Option!6417)

(declare-fun lt!1018858 () Option!6417)

(assert (=> b!2876718 (= e!1820361 lt!1018858)))

(declare-fun b!2876719 () Bool)

(declare-fun c!466335 () Bool)

(assert (=> b!2876719 (= c!466335 (is-ElementMatch!8742 (ite c!466128 (regOne!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun e!1820366 () Option!6417)

(declare-fun e!1820359 () Option!6417)

(assert (=> b!2876719 (= e!1820366 e!1820359)))

(declare-fun b!2876720 () Bool)

(declare-fun c!466341 () Bool)

(declare-fun lt!1018859 () Option!6417)

(assert (=> b!2876720 (= c!466341 (is-Some!6416 lt!1018859))))

(declare-fun call!186217 () Option!6417)

(assert (=> b!2876720 (= lt!1018859 call!186217)))

(declare-fun e!1820362 () Option!6417)

(declare-fun e!1820364 () Option!6417)

(assert (=> b!2876720 (= e!1820362 e!1820364)))

(declare-fun bm!186212 () Bool)

(declare-fun c!466338 () Bool)

(assert (=> bm!186212 (= call!186217 (getLanguageWitness!436 (ite c!466338 (regTwo!17997 (ite c!466128 (regOne!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))) (regTwo!17996 (ite c!466128 (regOne!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))))

(declare-fun b!2876721 () Bool)

(declare-fun e!1820363 () Option!6417)

(assert (=> b!2876721 (= e!1820363 (Some!6416 Nil!34393))))

(declare-fun b!2876722 () Bool)

(assert (=> b!2876722 (= c!466338 (is-Union!8742 (ite c!466128 (regOne!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun e!1820360 () Option!6417)

(assert (=> b!2876722 (= e!1820363 e!1820360)))

(declare-fun b!2876724 () Bool)

(assert (=> b!2876724 (= e!1820366 None!6416)))

(declare-fun b!2876725 () Bool)

(assert (=> b!2876725 (= e!1820364 None!6416)))

(declare-fun b!2876726 () Bool)

(assert (=> b!2876726 (= e!1820360 e!1820362)))

(declare-fun lt!1018860 () Option!6417)

(declare-fun call!186218 () Option!6417)

(assert (=> b!2876726 (= lt!1018860 call!186218)))

(declare-fun c!466340 () Bool)

(assert (=> b!2876726 (= c!466340 (is-Some!6416 lt!1018860))))

(declare-fun b!2876727 () Bool)

(declare-fun e!1820365 () Option!6417)

(assert (=> b!2876727 (= e!1820365 (Some!6416 Nil!34393))))

(declare-fun b!2876728 () Bool)

(assert (=> b!2876728 (= e!1820364 (Some!6416 (++!8179 (v!34542 lt!1018860) (v!34542 lt!1018859))))))

(declare-fun b!2876729 () Bool)

(assert (=> b!2876729 (= e!1820359 e!1820363)))

(declare-fun c!466334 () Bool)

(assert (=> b!2876729 (= c!466334 (is-Star!8742 (ite c!466128 (regOne!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun b!2876730 () Bool)

(assert (=> b!2876730 (= e!1820362 None!6416)))

(declare-fun c!466336 () Bool)

(declare-fun d!831625 () Bool)

(assert (=> d!831625 (= c!466336 (is-EmptyExpr!8742 (ite c!466128 (regOne!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))

(assert (=> d!831625 (= (getLanguageWitness!436 (ite c!466128 (regOne!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))) e!1820365)))

(declare-fun b!2876723 () Bool)

(assert (=> b!2876723 (= e!1820361 call!186217)))

(declare-fun bm!186213 () Bool)

(assert (=> bm!186213 (= call!186218 (getLanguageWitness!436 (ite c!466338 (regOne!17997 (ite c!466128 (regOne!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))) (regOne!17996 (ite c!466128 (regOne!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))))

(declare-fun b!2876731 () Bool)

(assert (=> b!2876731 (= e!1820365 e!1820366)))

(declare-fun c!466339 () Bool)

(assert (=> b!2876731 (= c!466339 (is-EmptyLang!8742 (ite c!466128 (regOne!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun b!2876732 () Bool)

(assert (=> b!2876732 (= e!1820360 e!1820361)))

(assert (=> b!2876732 (= lt!1018858 call!186218)))

(declare-fun c!466337 () Bool)

(assert (=> b!2876732 (= c!466337 (is-Some!6416 lt!1018858))))

(declare-fun b!2876733 () Bool)

(assert (=> b!2876733 (= e!1820359 (Some!6416 (Cons!34393 (c!466015 (ite c!466128 (regOne!17997 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466076 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))) Nil!34393)))))

(assert (= (and d!831625 c!466336) b!2876727))

(assert (= (and d!831625 (not c!466336)) b!2876731))

(assert (= (and b!2876731 c!466339) b!2876724))

(assert (= (and b!2876731 (not c!466339)) b!2876719))

(assert (= (and b!2876719 c!466335) b!2876733))

(assert (= (and b!2876719 (not c!466335)) b!2876729))

(assert (= (and b!2876729 c!466334) b!2876721))

(assert (= (and b!2876729 (not c!466334)) b!2876722))

(assert (= (and b!2876722 c!466338) b!2876732))

(assert (= (and b!2876722 (not c!466338)) b!2876726))

(assert (= (and b!2876732 c!466337) b!2876718))

(assert (= (and b!2876732 (not c!466337)) b!2876723))

(assert (= (and b!2876726 c!466340) b!2876720))

(assert (= (and b!2876726 (not c!466340)) b!2876730))

(assert (= (and b!2876720 c!466341) b!2876728))

(assert (= (and b!2876720 (not c!466341)) b!2876725))

(assert (= (or b!2876723 b!2876720) bm!186212))

(assert (= (or b!2876732 b!2876726) bm!186213))

(declare-fun m!3294297 () Bool)

(assert (=> bm!186212 m!3294297))

(declare-fun m!3294299 () Bool)

(assert (=> b!2876728 m!3294299))

(declare-fun m!3294301 () Bool)

(assert (=> bm!186213 m!3294301))

(assert (=> bm!186115 d!831625))

(assert (=> b!2876182 d!831549))

(assert (=> b!2876341 d!831583))

(declare-fun d!831627 () Bool)

(declare-fun choose!17009 ((Set Context!5404) Int) (Set Context!5404))

(assert (=> d!831627 (= (flatMap!223 (set.insert lt!1018696 (as set.empty (Set Context!5404))) lambda!107308) (choose!17009 (set.insert lt!1018696 (as set.empty (Set Context!5404))) lambda!107308))))

(declare-fun bs!522806 () Bool)

(assert (= bs!522806 d!831627))

(assert (=> bs!522806 m!3293567))

(declare-fun m!3294303 () Bool)

(assert (=> bs!522806 m!3294303))

(assert (=> d!831493 d!831627))

(declare-fun d!831629 () Bool)

(assert (=> d!831629 (= (flatMap!223 lt!1018699 lambda!107291) (choose!17009 lt!1018699 lambda!107291))))

(declare-fun bs!522807 () Bool)

(assert (= bs!522807 d!831629))

(declare-fun m!3294305 () Bool)

(assert (=> bs!522807 m!3294305))

(assert (=> d!831389 d!831629))

(declare-fun b!2876736 () Bool)

(declare-fun res!1192792 () Bool)

(declare-fun e!1820368 () Bool)

(assert (=> b!2876736 (=> (not res!1192792) (not e!1820368))))

(declare-fun lt!1018861 () List!34517)

(assert (=> b!2876736 (= res!1192792 (= (size!26325 lt!1018861) (+ (size!26325 (v!34542 lt!1018804)) (size!26325 (v!34542 lt!1018805)))))))

(declare-fun b!2876735 () Bool)

(declare-fun e!1820367 () List!34517)

(assert (=> b!2876735 (= e!1820367 (Cons!34393 (h!39813 (v!34542 lt!1018804)) (++!8179 (t!233560 (v!34542 lt!1018804)) (v!34542 lt!1018805))))))

(declare-fun b!2876737 () Bool)

(assert (=> b!2876737 (= e!1820368 (or (not (= (v!34542 lt!1018805) Nil!34393)) (= lt!1018861 (v!34542 lt!1018804))))))

(declare-fun b!2876734 () Bool)

(assert (=> b!2876734 (= e!1820367 (v!34542 lt!1018805))))

(declare-fun d!831631 () Bool)

(assert (=> d!831631 e!1820368))

(declare-fun res!1192793 () Bool)

(assert (=> d!831631 (=> (not res!1192793) (not e!1820368))))

(assert (=> d!831631 (= res!1192793 (= (content!4706 lt!1018861) (set.union (content!4706 (v!34542 lt!1018804)) (content!4706 (v!34542 lt!1018805)))))))

(assert (=> d!831631 (= lt!1018861 e!1820367)))

(declare-fun c!466342 () Bool)

(assert (=> d!831631 (= c!466342 (is-Nil!34393 (v!34542 lt!1018804)))))

(assert (=> d!831631 (= (++!8179 (v!34542 lt!1018804) (v!34542 lt!1018805)) lt!1018861)))

(assert (= (and d!831631 c!466342) b!2876734))

(assert (= (and d!831631 (not c!466342)) b!2876735))

(assert (= (and d!831631 res!1192793) b!2876736))

(assert (= (and b!2876736 res!1192792) b!2876737))

(declare-fun m!3294307 () Bool)

(assert (=> b!2876736 m!3294307))

(declare-fun m!3294309 () Bool)

(assert (=> b!2876736 m!3294309))

(declare-fun m!3294311 () Bool)

(assert (=> b!2876736 m!3294311))

(declare-fun m!3294313 () Bool)

(assert (=> b!2876735 m!3294313))

(declare-fun m!3294315 () Bool)

(assert (=> d!831631 m!3294315))

(declare-fun m!3294317 () Bool)

(assert (=> d!831631 m!3294317))

(declare-fun m!3294319 () Bool)

(assert (=> d!831631 m!3294319))

(assert (=> b!2876225 d!831631))

(declare-fun d!831633 () Bool)

(declare-fun lt!1018862 () Int)

(assert (=> d!831633 (>= lt!1018862 0)))

(declare-fun e!1820369 () Int)

(assert (=> d!831633 (= lt!1018862 e!1820369)))

(declare-fun c!466343 () Bool)

(assert (=> d!831633 (= c!466343 (is-Nil!34393 lt!1018806))))

(assert (=> d!831633 (= (size!26325 lt!1018806) lt!1018862)))

(declare-fun b!2876738 () Bool)

(assert (=> b!2876738 (= e!1820369 0)))

(declare-fun b!2876739 () Bool)

(assert (=> b!2876739 (= e!1820369 (+ 1 (size!26325 (t!233560 lt!1018806))))))

(assert (= (and d!831633 c!466343) b!2876738))

(assert (= (and d!831633 (not c!466343)) b!2876739))

(declare-fun m!3294321 () Bool)

(assert (=> b!2876739 m!3294321))

(assert (=> b!2876232 d!831633))

(declare-fun d!831635 () Bool)

(declare-fun lt!1018863 () Int)

(assert (=> d!831635 (>= lt!1018863 0)))

(declare-fun e!1820370 () Int)

(assert (=> d!831635 (= lt!1018863 e!1820370)))

(declare-fun c!466344 () Bool)

(assert (=> d!831635 (= c!466344 (is-Nil!34393 (v!34542 lt!1018760)))))

(assert (=> d!831635 (= (size!26325 (v!34542 lt!1018760)) lt!1018863)))

(declare-fun b!2876740 () Bool)

(assert (=> b!2876740 (= e!1820370 0)))

(declare-fun b!2876741 () Bool)

(assert (=> b!2876741 (= e!1820370 (+ 1 (size!26325 (t!233560 (v!34542 lt!1018760)))))))

(assert (= (and d!831635 c!466344) b!2876740))

(assert (= (and d!831635 (not c!466344)) b!2876741))

(declare-fun m!3294323 () Bool)

(assert (=> b!2876741 m!3294323))

(assert (=> b!2876232 d!831635))

(declare-fun d!831637 () Bool)

(declare-fun lt!1018864 () Int)

(assert (=> d!831637 (>= lt!1018864 0)))

(declare-fun e!1820371 () Int)

(assert (=> d!831637 (= lt!1018864 e!1820371)))

(declare-fun c!466345 () Bool)

(assert (=> d!831637 (= c!466345 (is-Nil!34393 (v!34542 lt!1018759)))))

(assert (=> d!831637 (= (size!26325 (v!34542 lt!1018759)) lt!1018864)))

(declare-fun b!2876742 () Bool)

(assert (=> b!2876742 (= e!1820371 0)))

(declare-fun b!2876743 () Bool)

(assert (=> b!2876743 (= e!1820371 (+ 1 (size!26325 (t!233560 (v!34542 lt!1018759)))))))

(assert (= (and d!831637 c!466345) b!2876742))

(assert (= (and d!831637 (not c!466345)) b!2876743))

(declare-fun m!3294325 () Bool)

(assert (=> b!2876743 m!3294325))

(assert (=> b!2876232 d!831637))

(assert (=> b!2876403 d!831591))

(assert (=> b!2876403 d!831593))

(assert (=> d!831459 d!831457))

(assert (=> d!831459 d!831455))

(assert (=> d!831459 d!831341))

(declare-fun d!831639 () Bool)

(declare-fun res!1192794 () Bool)

(declare-fun e!1820372 () Bool)

(assert (=> d!831639 (=> res!1192794 e!1820372)))

(assert (=> d!831639 (= res!1192794 (is-Nil!34394 (exprs!3202 lt!1018696)))))

(assert (=> d!831639 (= (forall!7087 (exprs!3202 lt!1018696) lambda!107305) e!1820372)))

(declare-fun b!2876744 () Bool)

(declare-fun e!1820373 () Bool)

(assert (=> b!2876744 (= e!1820372 e!1820373)))

(declare-fun res!1192795 () Bool)

(assert (=> b!2876744 (=> (not res!1192795) (not e!1820373))))

(assert (=> b!2876744 (= res!1192795 (dynLambda!14318 lambda!107305 (h!39814 (exprs!3202 lt!1018696))))))

(declare-fun b!2876745 () Bool)

(assert (=> b!2876745 (= e!1820373 (forall!7087 (t!233561 (exprs!3202 lt!1018696)) lambda!107305))))

(assert (= (and d!831639 (not res!1192794)) b!2876744))

(assert (= (and b!2876744 res!1192795) b!2876745))

(declare-fun b_lambda!86163 () Bool)

(assert (=> (not b_lambda!86163) (not b!2876744)))

(declare-fun m!3294327 () Bool)

(assert (=> b!2876744 m!3294327))

(declare-fun m!3294329 () Bool)

(assert (=> b!2876745 m!3294329))

(assert (=> d!831475 d!831639))

(declare-fun d!831641 () Bool)

(assert (=> d!831641 (= (nullable!2692 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))) (nullableFct!820 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))))))

(declare-fun bs!522808 () Bool)

(assert (= bs!522808 d!831641))

(assert (=> bs!522808 m!3293661))

(declare-fun m!3294331 () Bool)

(assert (=> bs!522808 m!3294331))

(assert (=> b!2876396 d!831641))

(declare-fun b!2876746 () Bool)

(declare-fun e!1820374 () Bool)

(declare-fun e!1820380 () Bool)

(assert (=> b!2876746 (= e!1820374 e!1820380)))

(declare-fun res!1192796 () Bool)

(assert (=> b!2876746 (= res!1192796 (not (nullable!2692 (reg!9071 lt!1018802))))))

(assert (=> b!2876746 (=> (not res!1192796) (not e!1820380))))

(declare-fun b!2876747 () Bool)

(declare-fun e!1820377 () Bool)

(assert (=> b!2876747 (= e!1820374 e!1820377)))

(declare-fun c!466346 () Bool)

(assert (=> b!2876747 (= c!466346 (is-Union!8742 lt!1018802))))

(declare-fun d!831643 () Bool)

(declare-fun res!1192797 () Bool)

(declare-fun e!1820375 () Bool)

(assert (=> d!831643 (=> res!1192797 e!1820375)))

(assert (=> d!831643 (= res!1192797 (is-ElementMatch!8742 lt!1018802))))

(assert (=> d!831643 (= (validRegex!3520 lt!1018802) e!1820375)))

(declare-fun c!466347 () Bool)

(declare-fun call!186219 () Bool)

(declare-fun bm!186214 () Bool)

(assert (=> bm!186214 (= call!186219 (validRegex!3520 (ite c!466347 (reg!9071 lt!1018802) (ite c!466346 (regTwo!17997 lt!1018802) (regOne!17996 lt!1018802)))))))

(declare-fun b!2876748 () Bool)

(declare-fun e!1820379 () Bool)

(declare-fun call!186221 () Bool)

(assert (=> b!2876748 (= e!1820379 call!186221)))

(declare-fun b!2876749 () Bool)

(declare-fun e!1820376 () Bool)

(declare-fun call!186220 () Bool)

(assert (=> b!2876749 (= e!1820376 call!186220)))

(declare-fun b!2876750 () Bool)

(assert (=> b!2876750 (= e!1820380 call!186219)))

(declare-fun b!2876751 () Bool)

(declare-fun res!1192798 () Bool)

(assert (=> b!2876751 (=> (not res!1192798) (not e!1820376))))

(assert (=> b!2876751 (= res!1192798 call!186221)))

(assert (=> b!2876751 (= e!1820377 e!1820376)))

(declare-fun b!2876752 () Bool)

(declare-fun res!1192799 () Bool)

(declare-fun e!1820378 () Bool)

(assert (=> b!2876752 (=> res!1192799 e!1820378)))

(assert (=> b!2876752 (= res!1192799 (not (is-Concat!14063 lt!1018802)))))

(assert (=> b!2876752 (= e!1820377 e!1820378)))

(declare-fun b!2876753 () Bool)

(assert (=> b!2876753 (= e!1820375 e!1820374)))

(assert (=> b!2876753 (= c!466347 (is-Star!8742 lt!1018802))))

(declare-fun bm!186215 () Bool)

(assert (=> bm!186215 (= call!186221 (validRegex!3520 (ite c!466346 (regOne!17997 lt!1018802) (regTwo!17996 lt!1018802))))))

(declare-fun b!2876754 () Bool)

(assert (=> b!2876754 (= e!1820378 e!1820379)))

(declare-fun res!1192800 () Bool)

(assert (=> b!2876754 (=> (not res!1192800) (not e!1820379))))

(assert (=> b!2876754 (= res!1192800 call!186220)))

(declare-fun bm!186216 () Bool)

(assert (=> bm!186216 (= call!186220 call!186219)))

(assert (= (and d!831643 (not res!1192797)) b!2876753))

(assert (= (and b!2876753 c!466347) b!2876746))

(assert (= (and b!2876753 (not c!466347)) b!2876747))

(assert (= (and b!2876746 res!1192796) b!2876750))

(assert (= (and b!2876747 c!466346) b!2876751))

(assert (= (and b!2876747 (not c!466346)) b!2876752))

(assert (= (and b!2876751 res!1192798) b!2876749))

(assert (= (and b!2876752 (not res!1192799)) b!2876754))

(assert (= (and b!2876754 res!1192800) b!2876748))

(assert (= (or b!2876749 b!2876754) bm!186216))

(assert (= (or b!2876751 b!2876748) bm!186215))

(assert (= (or b!2876750 bm!186216) bm!186214))

(declare-fun m!3294333 () Bool)

(assert (=> b!2876746 m!3294333))

(declare-fun m!3294335 () Bool)

(assert (=> bm!186214 m!3294335))

(declare-fun m!3294337 () Bool)

(assert (=> bm!186215 m!3294337))

(assert (=> d!831403 d!831643))

(assert (=> d!831403 d!831445))

(declare-fun b!2876755 () Bool)

(declare-fun e!1820381 () Bool)

(declare-fun e!1820387 () Bool)

(assert (=> b!2876755 (= e!1820381 e!1820387)))

(declare-fun res!1192801 () Bool)

(assert (=> b!2876755 (= res!1192801 (not (nullable!2692 (reg!9071 (h!39814 (exprs!3202 lt!1018700))))))))

(assert (=> b!2876755 (=> (not res!1192801) (not e!1820387))))

(declare-fun b!2876756 () Bool)

(declare-fun e!1820384 () Bool)

(assert (=> b!2876756 (= e!1820381 e!1820384)))

(declare-fun c!466348 () Bool)

(assert (=> b!2876756 (= c!466348 (is-Union!8742 (h!39814 (exprs!3202 lt!1018700))))))

(declare-fun d!831645 () Bool)

(declare-fun res!1192802 () Bool)

(declare-fun e!1820382 () Bool)

(assert (=> d!831645 (=> res!1192802 e!1820382)))

(assert (=> d!831645 (= res!1192802 (is-ElementMatch!8742 (h!39814 (exprs!3202 lt!1018700))))))

(assert (=> d!831645 (= (validRegex!3520 (h!39814 (exprs!3202 lt!1018700))) e!1820382)))

(declare-fun c!466349 () Bool)

(declare-fun call!186222 () Bool)

(declare-fun bm!186217 () Bool)

(assert (=> bm!186217 (= call!186222 (validRegex!3520 (ite c!466349 (reg!9071 (h!39814 (exprs!3202 lt!1018700))) (ite c!466348 (regTwo!17997 (h!39814 (exprs!3202 lt!1018700))) (regOne!17996 (h!39814 (exprs!3202 lt!1018700)))))))))

(declare-fun b!2876757 () Bool)

(declare-fun e!1820386 () Bool)

(declare-fun call!186224 () Bool)

(assert (=> b!2876757 (= e!1820386 call!186224)))

(declare-fun b!2876758 () Bool)

(declare-fun e!1820383 () Bool)

(declare-fun call!186223 () Bool)

(assert (=> b!2876758 (= e!1820383 call!186223)))

(declare-fun b!2876759 () Bool)

(assert (=> b!2876759 (= e!1820387 call!186222)))

(declare-fun b!2876760 () Bool)

(declare-fun res!1192803 () Bool)

(assert (=> b!2876760 (=> (not res!1192803) (not e!1820383))))

(assert (=> b!2876760 (= res!1192803 call!186224)))

(assert (=> b!2876760 (= e!1820384 e!1820383)))

(declare-fun b!2876761 () Bool)

(declare-fun res!1192804 () Bool)

(declare-fun e!1820385 () Bool)

(assert (=> b!2876761 (=> res!1192804 e!1820385)))

(assert (=> b!2876761 (= res!1192804 (not (is-Concat!14063 (h!39814 (exprs!3202 lt!1018700)))))))

(assert (=> b!2876761 (= e!1820384 e!1820385)))

(declare-fun b!2876762 () Bool)

(assert (=> b!2876762 (= e!1820382 e!1820381)))

(assert (=> b!2876762 (= c!466349 (is-Star!8742 (h!39814 (exprs!3202 lt!1018700))))))

(declare-fun bm!186218 () Bool)

(assert (=> bm!186218 (= call!186224 (validRegex!3520 (ite c!466348 (regOne!17997 (h!39814 (exprs!3202 lt!1018700))) (regTwo!17996 (h!39814 (exprs!3202 lt!1018700))))))))

(declare-fun b!2876763 () Bool)

(assert (=> b!2876763 (= e!1820385 e!1820386)))

(declare-fun res!1192805 () Bool)

(assert (=> b!2876763 (=> (not res!1192805) (not e!1820386))))

(assert (=> b!2876763 (= res!1192805 call!186223)))

(declare-fun bm!186219 () Bool)

(assert (=> bm!186219 (= call!186223 call!186222)))

(assert (= (and d!831645 (not res!1192802)) b!2876762))

(assert (= (and b!2876762 c!466349) b!2876755))

(assert (= (and b!2876762 (not c!466349)) b!2876756))

(assert (= (and b!2876755 res!1192801) b!2876759))

(assert (= (and b!2876756 c!466348) b!2876760))

(assert (= (and b!2876756 (not c!466348)) b!2876761))

(assert (= (and b!2876760 res!1192803) b!2876758))

(assert (= (and b!2876761 (not res!1192804)) b!2876763))

(assert (= (and b!2876763 res!1192805) b!2876757))

(assert (= (or b!2876758 b!2876763) bm!186219))

(assert (= (or b!2876760 b!2876757) bm!186218))

(assert (= (or b!2876759 bm!186219) bm!186217))

(declare-fun m!3294339 () Bool)

(assert (=> b!2876755 m!3294339))

(declare-fun m!3294341 () Bool)

(assert (=> bm!186217 m!3294341))

(declare-fun m!3294343 () Bool)

(assert (=> bm!186218 m!3294343))

(assert (=> bs!522764 d!831645))

(declare-fun d!831647 () Bool)

(assert (=> d!831647 (= (isEmpty!18727 (get!10340 (getLanguageWitness!435 lt!1018696))) (is-Nil!34393 (get!10340 (getLanguageWitness!435 lt!1018696))))))

(assert (=> d!831485 d!831647))

(declare-fun b!2876764 () Bool)

(declare-fun e!1820390 () Option!6417)

(declare-fun lt!1018865 () Option!6417)

(assert (=> b!2876764 (= e!1820390 lt!1018865)))

(declare-fun b!2876765 () Bool)

(declare-fun c!466351 () Bool)

(assert (=> b!2876765 (= c!466351 (is-ElementMatch!8742 (ite c!466168 (regOne!17997 (h!39814 (exprs!3202 lt!1018696))) (regOne!17996 (h!39814 (exprs!3202 lt!1018696))))))))

(declare-fun e!1820395 () Option!6417)

(declare-fun e!1820388 () Option!6417)

(assert (=> b!2876765 (= e!1820395 e!1820388)))

(declare-fun b!2876766 () Bool)

(declare-fun c!466357 () Bool)

(declare-fun lt!1018866 () Option!6417)

(assert (=> b!2876766 (= c!466357 (is-Some!6416 lt!1018866))))

(declare-fun call!186225 () Option!6417)

(assert (=> b!2876766 (= lt!1018866 call!186225)))

(declare-fun e!1820391 () Option!6417)

(declare-fun e!1820393 () Option!6417)

(assert (=> b!2876766 (= e!1820391 e!1820393)))

(declare-fun c!466354 () Bool)

(declare-fun bm!186220 () Bool)

(assert (=> bm!186220 (= call!186225 (getLanguageWitness!436 (ite c!466354 (regTwo!17997 (ite c!466168 (regOne!17997 (h!39814 (exprs!3202 lt!1018696))) (regOne!17996 (h!39814 (exprs!3202 lt!1018696))))) (regTwo!17996 (ite c!466168 (regOne!17997 (h!39814 (exprs!3202 lt!1018696))) (regOne!17996 (h!39814 (exprs!3202 lt!1018696))))))))))

(declare-fun b!2876767 () Bool)

(declare-fun e!1820392 () Option!6417)

(assert (=> b!2876767 (= e!1820392 (Some!6416 Nil!34393))))

(declare-fun b!2876768 () Bool)

(assert (=> b!2876768 (= c!466354 (is-Union!8742 (ite c!466168 (regOne!17997 (h!39814 (exprs!3202 lt!1018696))) (regOne!17996 (h!39814 (exprs!3202 lt!1018696))))))))

(declare-fun e!1820389 () Option!6417)

(assert (=> b!2876768 (= e!1820392 e!1820389)))

(declare-fun b!2876770 () Bool)

(assert (=> b!2876770 (= e!1820395 None!6416)))

(declare-fun b!2876771 () Bool)

(assert (=> b!2876771 (= e!1820393 None!6416)))

(declare-fun b!2876772 () Bool)

(assert (=> b!2876772 (= e!1820389 e!1820391)))

(declare-fun lt!1018867 () Option!6417)

(declare-fun call!186226 () Option!6417)

(assert (=> b!2876772 (= lt!1018867 call!186226)))

(declare-fun c!466356 () Bool)

(assert (=> b!2876772 (= c!466356 (is-Some!6416 lt!1018867))))

(declare-fun b!2876773 () Bool)

(declare-fun e!1820394 () Option!6417)

(assert (=> b!2876773 (= e!1820394 (Some!6416 Nil!34393))))

(declare-fun b!2876774 () Bool)

(assert (=> b!2876774 (= e!1820393 (Some!6416 (++!8179 (v!34542 lt!1018867) (v!34542 lt!1018866))))))

(declare-fun b!2876775 () Bool)

(assert (=> b!2876775 (= e!1820388 e!1820392)))

(declare-fun c!466350 () Bool)

(assert (=> b!2876775 (= c!466350 (is-Star!8742 (ite c!466168 (regOne!17997 (h!39814 (exprs!3202 lt!1018696))) (regOne!17996 (h!39814 (exprs!3202 lt!1018696))))))))

(declare-fun b!2876776 () Bool)

(assert (=> b!2876776 (= e!1820391 None!6416)))

(declare-fun d!831649 () Bool)

(declare-fun c!466352 () Bool)

(assert (=> d!831649 (= c!466352 (is-EmptyExpr!8742 (ite c!466168 (regOne!17997 (h!39814 (exprs!3202 lt!1018696))) (regOne!17996 (h!39814 (exprs!3202 lt!1018696))))))))

(assert (=> d!831649 (= (getLanguageWitness!436 (ite c!466168 (regOne!17997 (h!39814 (exprs!3202 lt!1018696))) (regOne!17996 (h!39814 (exprs!3202 lt!1018696))))) e!1820394)))

(declare-fun b!2876769 () Bool)

(assert (=> b!2876769 (= e!1820390 call!186225)))

(declare-fun bm!186221 () Bool)

(assert (=> bm!186221 (= call!186226 (getLanguageWitness!436 (ite c!466354 (regOne!17997 (ite c!466168 (regOne!17997 (h!39814 (exprs!3202 lt!1018696))) (regOne!17996 (h!39814 (exprs!3202 lt!1018696))))) (regOne!17996 (ite c!466168 (regOne!17997 (h!39814 (exprs!3202 lt!1018696))) (regOne!17996 (h!39814 (exprs!3202 lt!1018696))))))))))

(declare-fun b!2876777 () Bool)

(assert (=> b!2876777 (= e!1820394 e!1820395)))

(declare-fun c!466355 () Bool)

(assert (=> b!2876777 (= c!466355 (is-EmptyLang!8742 (ite c!466168 (regOne!17997 (h!39814 (exprs!3202 lt!1018696))) (regOne!17996 (h!39814 (exprs!3202 lt!1018696))))))))

(declare-fun b!2876778 () Bool)

(assert (=> b!2876778 (= e!1820389 e!1820390)))

(assert (=> b!2876778 (= lt!1018865 call!186226)))

(declare-fun c!466353 () Bool)

(assert (=> b!2876778 (= c!466353 (is-Some!6416 lt!1018865))))

(declare-fun b!2876779 () Bool)

(assert (=> b!2876779 (= e!1820388 (Some!6416 (Cons!34393 (c!466015 (ite c!466168 (regOne!17997 (h!39814 (exprs!3202 lt!1018696))) (regOne!17996 (h!39814 (exprs!3202 lt!1018696))))) Nil!34393)))))

(assert (= (and d!831649 c!466352) b!2876773))

(assert (= (and d!831649 (not c!466352)) b!2876777))

(assert (= (and b!2876777 c!466355) b!2876770))

(assert (= (and b!2876777 (not c!466355)) b!2876765))

(assert (= (and b!2876765 c!466351) b!2876779))

(assert (= (and b!2876765 (not c!466351)) b!2876775))

(assert (= (and b!2876775 c!466350) b!2876767))

(assert (= (and b!2876775 (not c!466350)) b!2876768))

(assert (= (and b!2876768 c!466354) b!2876778))

(assert (= (and b!2876768 (not c!466354)) b!2876772))

(assert (= (and b!2876778 c!466353) b!2876764))

(assert (= (and b!2876778 (not c!466353)) b!2876769))

(assert (= (and b!2876772 c!466356) b!2876766))

(assert (= (and b!2876772 (not c!466356)) b!2876776))

(assert (= (and b!2876766 c!466357) b!2876774))

(assert (= (and b!2876766 (not c!466357)) b!2876771))

(assert (= (or b!2876769 b!2876766) bm!186220))

(assert (= (or b!2876778 b!2876772) bm!186221))

(declare-fun m!3294345 () Bool)

(assert (=> bm!186220 m!3294345))

(declare-fun m!3294347 () Bool)

(assert (=> b!2876774 m!3294347))

(declare-fun m!3294349 () Bool)

(assert (=> bm!186221 m!3294349))

(assert (=> bm!186130 d!831649))

(declare-fun d!831651 () Bool)

(assert (=> d!831651 (= (head!6349 (tail!4574 (get!10340 lt!1018702))) (h!39813 (tail!4574 (get!10340 lt!1018702))))))

(assert (=> b!2876398 d!831651))

(declare-fun d!831653 () Bool)

(assert (=> d!831653 (= (isEmpty!18727 (tail!4574 (tail!4574 (v!34542 lt!1018702)))) (is-Nil!34393 (tail!4574 (tail!4574 (v!34542 lt!1018702)))))))

(assert (=> b!2876173 d!831653))

(assert (=> b!2876173 d!831573))

(declare-fun d!831655 () Bool)

(assert (=> d!831655 (= (isEmpty!18727 (tail!4574 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))) (is-Nil!34393 (tail!4574 (get!10340 (getLanguageWitness!436 (h!39814 (exprs!3202 c!7184)))))))))

(assert (=> b!2876332 d!831655))

(assert (=> b!2876332 d!831585))

(declare-fun b!2876782 () Bool)

(declare-fun res!1192806 () Bool)

(declare-fun e!1820397 () Bool)

(assert (=> b!2876782 (=> (not res!1192806) (not e!1820397))))

(declare-fun lt!1018868 () List!34517)

(assert (=> b!2876782 (= res!1192806 (= (size!26325 lt!1018868) (+ (size!26325 (t!233560 (v!34542 lt!1018775))) (size!26325 (v!34542 lt!1018776)))))))

(declare-fun b!2876781 () Bool)

(declare-fun e!1820396 () List!34517)

(assert (=> b!2876781 (= e!1820396 (Cons!34393 (h!39813 (t!233560 (v!34542 lt!1018775))) (++!8179 (t!233560 (t!233560 (v!34542 lt!1018775))) (v!34542 lt!1018776))))))

(declare-fun b!2876783 () Bool)

(assert (=> b!2876783 (= e!1820397 (or (not (= (v!34542 lt!1018776) Nil!34393)) (= lt!1018868 (t!233560 (v!34542 lt!1018775)))))))

(declare-fun b!2876780 () Bool)

(assert (=> b!2876780 (= e!1820396 (v!34542 lt!1018776))))

(declare-fun d!831657 () Bool)

(assert (=> d!831657 e!1820397))

(declare-fun res!1192807 () Bool)

(assert (=> d!831657 (=> (not res!1192807) (not e!1820397))))

(assert (=> d!831657 (= res!1192807 (= (content!4706 lt!1018868) (set.union (content!4706 (t!233560 (v!34542 lt!1018775))) (content!4706 (v!34542 lt!1018776)))))))

(assert (=> d!831657 (= lt!1018868 e!1820396)))

(declare-fun c!466358 () Bool)

(assert (=> d!831657 (= c!466358 (is-Nil!34393 (t!233560 (v!34542 lt!1018775))))))

(assert (=> d!831657 (= (++!8179 (t!233560 (v!34542 lt!1018775)) (v!34542 lt!1018776)) lt!1018868)))

(assert (= (and d!831657 c!466358) b!2876780))

(assert (= (and d!831657 (not c!466358)) b!2876781))

(assert (= (and d!831657 res!1192807) b!2876782))

(assert (= (and b!2876782 res!1192806) b!2876783))

(declare-fun m!3294351 () Bool)

(assert (=> b!2876782 m!3294351))

(assert (=> b!2876782 m!3294165))

(assert (=> b!2876782 m!3293827))

(declare-fun m!3294353 () Bool)

(assert (=> b!2876781 m!3294353))

(declare-fun m!3294355 () Bool)

(assert (=> d!831657 m!3294355))

(declare-fun m!3294357 () Bool)

(assert (=> d!831657 m!3294357))

(assert (=> d!831657 m!3293835))

(assert (=> b!2876169 d!831657))

(declare-fun b!2876798 () Bool)

(declare-fun e!1820413 () Bool)

(declare-fun e!1820411 () Bool)

(assert (=> b!2876798 (= e!1820413 e!1820411)))

(declare-fun c!466361 () Bool)

(assert (=> b!2876798 (= c!466361 (is-Union!8742 (h!39814 (exprs!3202 c!7184))))))

(declare-fun b!2876799 () Bool)

(declare-fun e!1820414 () Bool)

(assert (=> b!2876799 (= e!1820411 e!1820414)))

(declare-fun res!1192822 () Bool)

(declare-fun call!186231 () Bool)

(assert (=> b!2876799 (= res!1192822 call!186231)))

(assert (=> b!2876799 (=> res!1192822 e!1820414)))

(declare-fun bm!186226 () Bool)

(assert (=> bm!186226 (= call!186231 (nullable!2692 (ite c!466361 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun b!2876800 () Bool)

(declare-fun e!1820412 () Bool)

(declare-fun e!1820415 () Bool)

(assert (=> b!2876800 (= e!1820412 e!1820415)))

(declare-fun res!1192818 () Bool)

(assert (=> b!2876800 (=> (not res!1192818) (not e!1820415))))

(assert (=> b!2876800 (= res!1192818 (and (not (is-EmptyLang!8742 (h!39814 (exprs!3202 c!7184)))) (not (is-ElementMatch!8742 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun b!2876801 () Bool)

(declare-fun e!1820410 () Bool)

(assert (=> b!2876801 (= e!1820411 e!1820410)))

(declare-fun res!1192821 () Bool)

(assert (=> b!2876801 (= res!1192821 call!186231)))

(assert (=> b!2876801 (=> (not res!1192821) (not e!1820410))))

(declare-fun d!831659 () Bool)

(declare-fun res!1192820 () Bool)

(assert (=> d!831659 (=> res!1192820 e!1820412)))

(assert (=> d!831659 (= res!1192820 (is-EmptyExpr!8742 (h!39814 (exprs!3202 c!7184))))))

(assert (=> d!831659 (= (nullableFct!820 (h!39814 (exprs!3202 c!7184))) e!1820412)))

(declare-fun bm!186227 () Bool)

(declare-fun call!186232 () Bool)

(assert (=> bm!186227 (= call!186232 (nullable!2692 (ite c!466361 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun b!2876802 () Bool)

(assert (=> b!2876802 (= e!1820415 e!1820413)))

(declare-fun res!1192819 () Bool)

(assert (=> b!2876802 (=> res!1192819 e!1820413)))

(assert (=> b!2876802 (= res!1192819 (is-Star!8742 (h!39814 (exprs!3202 c!7184))))))

(declare-fun b!2876803 () Bool)

(assert (=> b!2876803 (= e!1820414 call!186232)))

(declare-fun b!2876804 () Bool)

(assert (=> b!2876804 (= e!1820410 call!186232)))

(assert (= (and d!831659 (not res!1192820)) b!2876800))

(assert (= (and b!2876800 res!1192818) b!2876802))

(assert (= (and b!2876802 (not res!1192819)) b!2876798))

(assert (= (and b!2876798 c!466361) b!2876799))

(assert (= (and b!2876798 (not c!466361)) b!2876801))

(assert (= (and b!2876799 (not res!1192822)) b!2876803))

(assert (= (and b!2876801 res!1192821) b!2876804))

(assert (= (or b!2876799 b!2876801) bm!186226))

(assert (= (or b!2876803 b!2876804) bm!186227))

(declare-fun m!3294359 () Bool)

(assert (=> bm!186226 m!3294359))

(declare-fun m!3294361 () Bool)

(assert (=> bm!186227 m!3294361))

(assert (=> d!831381 d!831659))

(assert (=> d!831499 d!831397))

(declare-fun b!2876805 () Bool)

(declare-fun e!1820416 () Bool)

(declare-fun e!1820422 () Bool)

(assert (=> b!2876805 (= e!1820416 e!1820422)))

(declare-fun res!1192823 () Bool)

(assert (=> b!2876805 (= res!1192823 (not (nullable!2692 (reg!9071 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))))))))

(assert (=> b!2876805 (=> (not res!1192823) (not e!1820422))))

(declare-fun b!2876806 () Bool)

(declare-fun e!1820419 () Bool)

(assert (=> b!2876806 (= e!1820416 e!1820419)))

(declare-fun c!466362 () Bool)

(assert (=> b!2876806 (= c!466362 (is-Union!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))))))

(declare-fun d!831661 () Bool)

(declare-fun res!1192824 () Bool)

(declare-fun e!1820417 () Bool)

(assert (=> d!831661 (=> res!1192824 e!1820417)))

(assert (=> d!831661 (= res!1192824 (is-ElementMatch!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))))))

(assert (=> d!831661 (= (validRegex!3520 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))) e!1820417)))

(declare-fun call!186233 () Bool)

(declare-fun bm!186228 () Bool)

(declare-fun c!466363 () Bool)

(assert (=> bm!186228 (= call!186233 (validRegex!3520 (ite c!466363 (reg!9071 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))) (ite c!466362 (regTwo!17997 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))) (regOne!17996 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))))))))))

(declare-fun b!2876807 () Bool)

(declare-fun e!1820421 () Bool)

(declare-fun call!186235 () Bool)

(assert (=> b!2876807 (= e!1820421 call!186235)))

(declare-fun b!2876808 () Bool)

(declare-fun e!1820418 () Bool)

(declare-fun call!186234 () Bool)

(assert (=> b!2876808 (= e!1820418 call!186234)))

(declare-fun b!2876809 () Bool)

(assert (=> b!2876809 (= e!1820422 call!186233)))

(declare-fun b!2876810 () Bool)

(declare-fun res!1192825 () Bool)

(assert (=> b!2876810 (=> (not res!1192825) (not e!1820418))))

(assert (=> b!2876810 (= res!1192825 call!186235)))

(assert (=> b!2876810 (= e!1820419 e!1820418)))

(declare-fun b!2876811 () Bool)

(declare-fun res!1192826 () Bool)

(declare-fun e!1820420 () Bool)

(assert (=> b!2876811 (=> res!1192826 e!1820420)))

(assert (=> b!2876811 (= res!1192826 (not (is-Concat!14063 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))))))))

(assert (=> b!2876811 (= e!1820419 e!1820420)))

(declare-fun b!2876812 () Bool)

(assert (=> b!2876812 (= e!1820417 e!1820416)))

(assert (=> b!2876812 (= c!466363 (is-Star!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))))))

(declare-fun bm!186229 () Bool)

(assert (=> bm!186229 (= call!186235 (validRegex!3520 (ite c!466362 (regOne!17997 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))) (regTwo!17996 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))))))))

(declare-fun b!2876813 () Bool)

(assert (=> b!2876813 (= e!1820420 e!1820421)))

(declare-fun res!1192827 () Bool)

(assert (=> b!2876813 (=> (not res!1192827) (not e!1820421))))

(assert (=> b!2876813 (= res!1192827 call!186234)))

(declare-fun bm!186230 () Bool)

(assert (=> bm!186230 (= call!186234 call!186233)))

(assert (= (and d!831661 (not res!1192824)) b!2876812))

(assert (= (and b!2876812 c!466363) b!2876805))

(assert (= (and b!2876812 (not c!466363)) b!2876806))

(assert (= (and b!2876805 res!1192823) b!2876809))

(assert (= (and b!2876806 c!466362) b!2876810))

(assert (= (and b!2876806 (not c!466362)) b!2876811))

(assert (= (and b!2876810 res!1192825) b!2876808))

(assert (= (and b!2876811 (not res!1192826)) b!2876813))

(assert (= (and b!2876813 res!1192827) b!2876807))

(assert (= (or b!2876808 b!2876813) bm!186230))

(assert (= (or b!2876810 b!2876807) bm!186229))

(assert (= (or b!2876809 bm!186230) bm!186228))

(declare-fun m!3294363 () Bool)

(assert (=> b!2876805 m!3294363))

(declare-fun m!3294365 () Bool)

(assert (=> bm!186228 m!3294365))

(declare-fun m!3294367 () Bool)

(assert (=> bm!186229 m!3294367))

(assert (=> d!831499 d!831661))

(declare-fun b!2876814 () Bool)

(declare-fun e!1820423 () Bool)

(assert (=> b!2876814 (= e!1820423 (matchR!3742 (derivativeStep!2325 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))) (head!6349 (tail!4574 (get!10340 lt!1018702)))) (head!6349 (tail!4574 (tail!4574 (get!10340 lt!1018702))))) (tail!4574 (tail!4574 (tail!4574 (get!10340 lt!1018702))))))))

(declare-fun b!2876815 () Bool)

(declare-fun res!1192828 () Bool)

(declare-fun e!1820425 () Bool)

(assert (=> b!2876815 (=> (not res!1192828) (not e!1820425))))

(assert (=> b!2876815 (= res!1192828 (isEmpty!18727 (tail!4574 (tail!4574 (tail!4574 (get!10340 lt!1018702))))))))

(declare-fun b!2876816 () Bool)

(assert (=> b!2876816 (= e!1820423 (nullable!2692 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))) (head!6349 (tail!4574 (get!10340 lt!1018702))))))))

(declare-fun b!2876817 () Bool)

(declare-fun e!1820428 () Bool)

(declare-fun e!1820426 () Bool)

(assert (=> b!2876817 (= e!1820428 e!1820426)))

(declare-fun res!1192830 () Bool)

(assert (=> b!2876817 (=> res!1192830 e!1820426)))

(declare-fun call!186236 () Bool)

(assert (=> b!2876817 (= res!1192830 call!186236)))

(declare-fun b!2876819 () Bool)

(declare-fun e!1820427 () Bool)

(declare-fun lt!1018869 () Bool)

(assert (=> b!2876819 (= e!1820427 (not lt!1018869))))

(declare-fun b!2876820 () Bool)

(declare-fun res!1192832 () Bool)

(assert (=> b!2876820 (=> (not res!1192832) (not e!1820425))))

(assert (=> b!2876820 (= res!1192832 (not call!186236))))

(declare-fun b!2876821 () Bool)

(declare-fun e!1820424 () Bool)

(assert (=> b!2876821 (= e!1820424 e!1820427)))

(declare-fun c!466365 () Bool)

(assert (=> b!2876821 (= c!466365 (is-EmptyLang!8742 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))) (head!6349 (tail!4574 (get!10340 lt!1018702))))))))

(declare-fun bm!186231 () Bool)

(assert (=> bm!186231 (= call!186236 (isEmpty!18727 (tail!4574 (tail!4574 (get!10340 lt!1018702)))))))

(declare-fun b!2876822 () Bool)

(declare-fun e!1820429 () Bool)

(assert (=> b!2876822 (= e!1820429 e!1820428)))

(declare-fun res!1192831 () Bool)

(assert (=> b!2876822 (=> (not res!1192831) (not e!1820428))))

(assert (=> b!2876822 (= res!1192831 (not lt!1018869))))

(declare-fun b!2876823 () Bool)

(declare-fun res!1192833 () Bool)

(assert (=> b!2876823 (=> res!1192833 e!1820426)))

(assert (=> b!2876823 (= res!1192833 (not (isEmpty!18727 (tail!4574 (tail!4574 (tail!4574 (get!10340 lt!1018702)))))))))

(declare-fun d!831663 () Bool)

(assert (=> d!831663 e!1820424))

(declare-fun c!466364 () Bool)

(assert (=> d!831663 (= c!466364 (is-EmptyExpr!8742 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))) (head!6349 (tail!4574 (get!10340 lt!1018702))))))))

(assert (=> d!831663 (= lt!1018869 e!1820423)))

(declare-fun c!466366 () Bool)

(assert (=> d!831663 (= c!466366 (isEmpty!18727 (tail!4574 (tail!4574 (get!10340 lt!1018702)))))))

(assert (=> d!831663 (validRegex!3520 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))) (head!6349 (tail!4574 (get!10340 lt!1018702)))))))

(assert (=> d!831663 (= (matchR!3742 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))) (head!6349 (tail!4574 (get!10340 lt!1018702)))) (tail!4574 (tail!4574 (get!10340 lt!1018702)))) lt!1018869)))

(declare-fun b!2876818 () Bool)

(assert (=> b!2876818 (= e!1820425 (= (head!6349 (tail!4574 (tail!4574 (get!10340 lt!1018702)))) (c!466015 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))) (head!6349 (tail!4574 (get!10340 lt!1018702)))))))))

(declare-fun b!2876824 () Bool)

(assert (=> b!2876824 (= e!1820426 (not (= (head!6349 (tail!4574 (tail!4574 (get!10340 lt!1018702)))) (c!466015 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))) (head!6349 (tail!4574 (get!10340 lt!1018702))))))))))

(declare-fun b!2876825 () Bool)

(declare-fun res!1192834 () Bool)

(assert (=> b!2876825 (=> res!1192834 e!1820429)))

(assert (=> b!2876825 (= res!1192834 e!1820425)))

(declare-fun res!1192835 () Bool)

(assert (=> b!2876825 (=> (not res!1192835) (not e!1820425))))

(assert (=> b!2876825 (= res!1192835 lt!1018869)))

(declare-fun b!2876826 () Bool)

(assert (=> b!2876826 (= e!1820424 (= lt!1018869 call!186236))))

(declare-fun b!2876827 () Bool)

(declare-fun res!1192829 () Bool)

(assert (=> b!2876827 (=> res!1192829 e!1820429)))

(assert (=> b!2876827 (= res!1192829 (not (is-ElementMatch!8742 (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))) (head!6349 (tail!4574 (get!10340 lt!1018702)))))))))

(assert (=> b!2876827 (= e!1820427 e!1820429)))

(assert (= (and d!831663 c!466366) b!2876816))

(assert (= (and d!831663 (not c!466366)) b!2876814))

(assert (= (and d!831663 c!466364) b!2876826))

(assert (= (and d!831663 (not c!466364)) b!2876821))

(assert (= (and b!2876821 c!466365) b!2876819))

(assert (= (and b!2876821 (not c!466365)) b!2876827))

(assert (= (and b!2876827 (not res!1192829)) b!2876825))

(assert (= (and b!2876825 res!1192835) b!2876820))

(assert (= (and b!2876820 res!1192832) b!2876815))

(assert (= (and b!2876815 res!1192828) b!2876818))

(assert (= (and b!2876825 (not res!1192834)) b!2876822))

(assert (= (and b!2876822 res!1192831) b!2876817))

(assert (= (and b!2876817 (not res!1192830)) b!2876823))

(assert (= (and b!2876823 (not res!1192833)) b!2876824))

(assert (= (or b!2876826 b!2876817 b!2876820) bm!186231))

(assert (=> b!2876818 m!3294011))

(declare-fun m!3294369 () Bool)

(assert (=> b!2876818 m!3294369))

(assert (=> bm!186231 m!3294011))

(assert (=> bm!186231 m!3294013))

(assert (=> b!2876824 m!3294011))

(assert (=> b!2876824 m!3294369))

(assert (=> b!2876816 m!3294015))

(declare-fun m!3294371 () Bool)

(assert (=> b!2876816 m!3294371))

(assert (=> b!2876823 m!3294011))

(declare-fun m!3294373 () Bool)

(assert (=> b!2876823 m!3294373))

(assert (=> b!2876823 m!3294373))

(declare-fun m!3294375 () Bool)

(assert (=> b!2876823 m!3294375))

(assert (=> b!2876814 m!3294011))

(assert (=> b!2876814 m!3294369))

(assert (=> b!2876814 m!3294015))

(assert (=> b!2876814 m!3294369))

(declare-fun m!3294377 () Bool)

(assert (=> b!2876814 m!3294377))

(assert (=> b!2876814 m!3294011))

(assert (=> b!2876814 m!3294373))

(assert (=> b!2876814 m!3294377))

(assert (=> b!2876814 m!3294373))

(declare-fun m!3294379 () Bool)

(assert (=> b!2876814 m!3294379))

(assert (=> b!2876815 m!3294011))

(assert (=> b!2876815 m!3294373))

(assert (=> b!2876815 m!3294373))

(assert (=> b!2876815 m!3294375))

(assert (=> d!831663 m!3294011))

(assert (=> d!831663 m!3294013))

(assert (=> d!831663 m!3294015))

(declare-fun m!3294381 () Bool)

(assert (=> d!831663 m!3294381))

(assert (=> b!2876394 d!831663))

(declare-fun bm!186232 () Bool)

(declare-fun call!186240 () Regex!8742)

(declare-fun call!186239 () Regex!8742)

(assert (=> bm!186232 (= call!186240 call!186239)))

(declare-fun b!2876828 () Bool)

(declare-fun e!1820432 () Regex!8742)

(assert (=> b!2876828 (= e!1820432 EmptyLang!8742)))

(declare-fun b!2876829 () Bool)

(declare-fun c!466369 () Bool)

(assert (=> b!2876829 (= c!466369 (is-Union!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))))))

(declare-fun e!1820434 () Regex!8742)

(declare-fun e!1820431 () Regex!8742)

(assert (=> b!2876829 (= e!1820434 e!1820431)))

(declare-fun b!2876830 () Bool)

(declare-fun c!466371 () Bool)

(assert (=> b!2876830 (= c!466371 (nullable!2692 (regOne!17996 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))))))))

(declare-fun e!1820430 () Regex!8742)

(declare-fun e!1820433 () Regex!8742)

(assert (=> b!2876830 (= e!1820430 e!1820433)))

(declare-fun b!2876831 () Bool)

(assert (=> b!2876831 (= e!1820430 (Concat!14063 call!186240 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))))))

(declare-fun call!186237 () Regex!8742)

(declare-fun call!186238 () Regex!8742)

(declare-fun b!2876832 () Bool)

(assert (=> b!2876832 (= e!1820433 (Union!8742 (Concat!14063 call!186237 (regTwo!17996 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))))) call!186238))))

(declare-fun b!2876833 () Bool)

(assert (=> b!2876833 (= e!1820433 (Union!8742 (Concat!14063 call!186237 (regTwo!17996 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))))) EmptyLang!8742))))

(declare-fun b!2876834 () Bool)

(assert (=> b!2876834 (= e!1820434 (ite (= (head!6349 (tail!4574 (get!10340 lt!1018702))) (c!466015 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))))) EmptyExpr!8742 EmptyLang!8742))))

(declare-fun b!2876835 () Bool)

(assert (=> b!2876835 (= e!1820431 (Union!8742 call!186239 call!186238))))

(declare-fun c!466367 () Bool)

(declare-fun bm!186233 () Bool)

(assert (=> bm!186233 (= call!186239 (derivativeStep!2325 (ite c!466369 (regOne!17997 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))) (ite c!466367 (reg!9071 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))) (regOne!17996 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))))) (head!6349 (tail!4574 (get!10340 lt!1018702)))))))

(declare-fun bm!186234 () Bool)

(assert (=> bm!186234 (= call!186238 (derivativeStep!2325 (ite c!466369 (regTwo!17997 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))) (regTwo!17996 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))))) (head!6349 (tail!4574 (get!10340 lt!1018702)))))))

(declare-fun bm!186235 () Bool)

(assert (=> bm!186235 (= call!186237 call!186240)))

(declare-fun d!831665 () Bool)

(declare-fun lt!1018870 () Regex!8742)

(assert (=> d!831665 (validRegex!3520 lt!1018870)))

(assert (=> d!831665 (= lt!1018870 e!1820432)))

(declare-fun c!466370 () Bool)

(assert (=> d!831665 (= c!466370 (or (is-EmptyExpr!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))) (is-EmptyLang!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))))))))

(assert (=> d!831665 (validRegex!3520 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))))))

(assert (=> d!831665 (= (derivativeStep!2325 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702))) (head!6349 (tail!4574 (get!10340 lt!1018702)))) lt!1018870)))

(declare-fun b!2876836 () Bool)

(assert (=> b!2876836 (= e!1820431 e!1820430)))

(assert (=> b!2876836 (= c!466367 (is-Star!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))))))

(declare-fun b!2876837 () Bool)

(assert (=> b!2876837 (= e!1820432 e!1820434)))

(declare-fun c!466368 () Bool)

(assert (=> b!2876837 (= c!466368 (is-ElementMatch!8742 (derivativeStep!2325 (h!39814 (exprs!3202 c!7184)) (head!6349 (get!10340 lt!1018702)))))))

(assert (= (and d!831665 c!466370) b!2876828))

(assert (= (and d!831665 (not c!466370)) b!2876837))

(assert (= (and b!2876837 c!466368) b!2876834))

(assert (= (and b!2876837 (not c!466368)) b!2876829))

(assert (= (and b!2876829 c!466369) b!2876835))

(assert (= (and b!2876829 (not c!466369)) b!2876836))

(assert (= (and b!2876836 c!466367) b!2876831))

(assert (= (and b!2876836 (not c!466367)) b!2876830))

(assert (= (and b!2876830 c!466371) b!2876832))

(assert (= (and b!2876830 (not c!466371)) b!2876833))

(assert (= (or b!2876832 b!2876833) bm!186235))

(assert (= (or b!2876831 bm!186235) bm!186232))

(assert (= (or b!2876835 bm!186232) bm!186233))

(assert (= (or b!2876835 b!2876832) bm!186234))

(declare-fun m!3294383 () Bool)

(assert (=> b!2876830 m!3294383))

(assert (=> bm!186233 m!3294007))

(declare-fun m!3294385 () Bool)

(assert (=> bm!186233 m!3294385))

(assert (=> bm!186234 m!3294007))

(declare-fun m!3294387 () Bool)

(assert (=> bm!186234 m!3294387))

(declare-fun m!3294389 () Bool)

(assert (=> d!831665 m!3294389))

(assert (=> d!831665 m!3293661))

(assert (=> d!831665 m!3294019))

(assert (=> b!2876394 d!831665))

(assert (=> b!2876394 d!831651))

(assert (=> b!2876394 d!831593))

(declare-fun b!2876838 () Bool)

(declare-fun e!1820435 () Bool)

(declare-fun e!1820441 () Bool)

(assert (=> b!2876838 (= e!1820435 e!1820441)))

(declare-fun res!1192836 () Bool)

(assert (=> b!2876838 (= res!1192836 (not (nullable!2692 (reg!9071 (ite c!466199 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))))

(assert (=> b!2876838 (=> (not res!1192836) (not e!1820441))))

(declare-fun b!2876839 () Bool)

(declare-fun e!1820438 () Bool)

(assert (=> b!2876839 (= e!1820435 e!1820438)))

(declare-fun c!466372 () Bool)

(assert (=> b!2876839 (= c!466372 (is-Union!8742 (ite c!466199 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun d!831667 () Bool)

(declare-fun res!1192837 () Bool)

(declare-fun e!1820436 () Bool)

(assert (=> d!831667 (=> res!1192837 e!1820436)))

(assert (=> d!831667 (= res!1192837 (is-ElementMatch!8742 (ite c!466199 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))

(assert (=> d!831667 (= (validRegex!3520 (ite c!466199 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) e!1820436)))

(declare-fun bm!186236 () Bool)

(declare-fun call!186241 () Bool)

(declare-fun c!466373 () Bool)

(assert (=> bm!186236 (= call!186241 (validRegex!3520 (ite c!466373 (reg!9071 (ite c!466199 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (ite c!466372 (regTwo!17997 (ite c!466199 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regOne!17996 (ite c!466199 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))))))))))

(declare-fun b!2876840 () Bool)

(declare-fun e!1820440 () Bool)

(declare-fun call!186243 () Bool)

(assert (=> b!2876840 (= e!1820440 call!186243)))

(declare-fun b!2876841 () Bool)

(declare-fun e!1820437 () Bool)

(declare-fun call!186242 () Bool)

(assert (=> b!2876841 (= e!1820437 call!186242)))

(declare-fun b!2876842 () Bool)

(assert (=> b!2876842 (= e!1820441 call!186241)))

(declare-fun b!2876843 () Bool)

(declare-fun res!1192838 () Bool)

(assert (=> b!2876843 (=> (not res!1192838) (not e!1820437))))

(assert (=> b!2876843 (= res!1192838 call!186243)))

(assert (=> b!2876843 (= e!1820438 e!1820437)))

(declare-fun b!2876844 () Bool)

(declare-fun res!1192839 () Bool)

(declare-fun e!1820439 () Bool)

(assert (=> b!2876844 (=> res!1192839 e!1820439)))

(assert (=> b!2876844 (= res!1192839 (not (is-Concat!14063 (ite c!466199 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184)))))))))

(assert (=> b!2876844 (= e!1820438 e!1820439)))

(declare-fun b!2876845 () Bool)

(assert (=> b!2876845 (= e!1820436 e!1820435)))

(assert (=> b!2876845 (= c!466373 (is-Star!8742 (ite c!466199 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))

(declare-fun bm!186237 () Bool)

(assert (=> bm!186237 (= call!186243 (validRegex!3520 (ite c!466372 (regOne!17997 (ite c!466199 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466199 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun b!2876846 () Bool)

(assert (=> b!2876846 (= e!1820439 e!1820440)))

(declare-fun res!1192840 () Bool)

(assert (=> b!2876846 (=> (not res!1192840) (not e!1820440))))

(assert (=> b!2876846 (= res!1192840 call!186242)))

(declare-fun bm!186238 () Bool)

(assert (=> bm!186238 (= call!186242 call!186241)))

(assert (= (and d!831667 (not res!1192837)) b!2876845))

(assert (= (and b!2876845 c!466373) b!2876838))

(assert (= (and b!2876845 (not c!466373)) b!2876839))

(assert (= (and b!2876838 res!1192836) b!2876842))

(assert (= (and b!2876839 c!466372) b!2876843))

(assert (= (and b!2876839 (not c!466372)) b!2876844))

(assert (= (and b!2876843 res!1192838) b!2876841))

(assert (= (and b!2876844 (not res!1192839)) b!2876846))

(assert (= (and b!2876846 res!1192840) b!2876840))

(assert (= (or b!2876841 b!2876846) bm!186238))

(assert (= (or b!2876843 b!2876840) bm!186237))

(assert (= (or b!2876842 bm!186238) bm!186236))

(declare-fun m!3294391 () Bool)

(assert (=> b!2876838 m!3294391))

(declare-fun m!3294393 () Bool)

(assert (=> bm!186236 m!3294393))

(declare-fun m!3294395 () Bool)

(assert (=> bm!186237 m!3294395))

(assert (=> bm!186144 d!831667))

(declare-fun d!831669 () Bool)

(declare-fun c!466374 () Bool)

(assert (=> d!831669 (= c!466374 (is-Nil!34393 lt!1018795))))

(declare-fun e!1820442 () (Set C!17666))

(assert (=> d!831669 (= (content!4706 lt!1018795) e!1820442)))

(declare-fun b!2876847 () Bool)

(assert (=> b!2876847 (= e!1820442 (as set.empty (Set C!17666)))))

(declare-fun b!2876848 () Bool)

(assert (=> b!2876848 (= e!1820442 (set.union (set.insert (h!39813 lt!1018795) (as set.empty (Set C!17666))) (content!4706 (t!233560 lt!1018795))))))

(assert (= (and d!831669 c!466374) b!2876847))

(assert (= (and d!831669 (not c!466374)) b!2876848))

(declare-fun m!3294397 () Bool)

(assert (=> b!2876848 m!3294397))

(declare-fun m!3294399 () Bool)

(assert (=> b!2876848 m!3294399))

(assert (=> d!831395 d!831669))

(declare-fun d!831671 () Bool)

(declare-fun c!466375 () Bool)

(assert (=> d!831671 (= c!466375 (is-Nil!34393 (v!34542 lt!1018775)))))

(declare-fun e!1820443 () (Set C!17666))

(assert (=> d!831671 (= (content!4706 (v!34542 lt!1018775)) e!1820443)))

(declare-fun b!2876849 () Bool)

(assert (=> b!2876849 (= e!1820443 (as set.empty (Set C!17666)))))

(declare-fun b!2876850 () Bool)

(assert (=> b!2876850 (= e!1820443 (set.union (set.insert (h!39813 (v!34542 lt!1018775)) (as set.empty (Set C!17666))) (content!4706 (t!233560 (v!34542 lt!1018775)))))))

(assert (= (and d!831671 c!466375) b!2876849))

(assert (= (and d!831671 (not c!466375)) b!2876850))

(declare-fun m!3294401 () Bool)

(assert (=> b!2876850 m!3294401))

(assert (=> b!2876850 m!3294357))

(assert (=> d!831395 d!831671))

(declare-fun d!831673 () Bool)

(declare-fun c!466376 () Bool)

(assert (=> d!831673 (= c!466376 (is-Nil!34393 (v!34542 lt!1018776)))))

(declare-fun e!1820444 () (Set C!17666))

(assert (=> d!831673 (= (content!4706 (v!34542 lt!1018776)) e!1820444)))

(declare-fun b!2876851 () Bool)

(assert (=> b!2876851 (= e!1820444 (as set.empty (Set C!17666)))))

(declare-fun b!2876852 () Bool)

(assert (=> b!2876852 (= e!1820444 (set.union (set.insert (h!39813 (v!34542 lt!1018776)) (as set.empty (Set C!17666))) (content!4706 (t!233560 (v!34542 lt!1018776)))))))

(assert (= (and d!831673 c!466376) b!2876851))

(assert (= (and d!831673 (not c!466376)) b!2876852))

(declare-fun m!3294403 () Bool)

(assert (=> b!2876852 m!3294403))

(declare-fun m!3294405 () Bool)

(assert (=> b!2876852 m!3294405))

(assert (=> d!831395 d!831673))

(declare-fun d!831675 () Bool)

(declare-fun c!466377 () Bool)

(assert (=> d!831675 (= c!466377 (isEmpty!18727 (tail!4574 (tail!4574 (v!34542 lt!1018702)))))))

(declare-fun e!1820445 () Bool)

(assert (=> d!831675 (= (matchZipper!484 (derivationStepZipper!476 (derivationStepZipper!476 lt!1018699 (head!6349 (v!34542 lt!1018702))) (head!6349 (tail!4574 (v!34542 lt!1018702)))) (tail!4574 (tail!4574 (v!34542 lt!1018702)))) e!1820445)))

(declare-fun b!2876853 () Bool)

(assert (=> b!2876853 (= e!1820445 (nullableZipper!720 (derivationStepZipper!476 (derivationStepZipper!476 lt!1018699 (head!6349 (v!34542 lt!1018702))) (head!6349 (tail!4574 (v!34542 lt!1018702))))))))

(declare-fun b!2876854 () Bool)

(assert (=> b!2876854 (= e!1820445 (matchZipper!484 (derivationStepZipper!476 (derivationStepZipper!476 (derivationStepZipper!476 lt!1018699 (head!6349 (v!34542 lt!1018702))) (head!6349 (tail!4574 (v!34542 lt!1018702)))) (head!6349 (tail!4574 (tail!4574 (v!34542 lt!1018702))))) (tail!4574 (tail!4574 (tail!4574 (v!34542 lt!1018702))))))))

(assert (= (and d!831675 c!466377) b!2876853))

(assert (= (and d!831675 (not c!466377)) b!2876854))

(assert (=> d!831675 m!3293811))

(assert (=> d!831675 m!3293839))

(assert (=> b!2876853 m!3293809))

(declare-fun m!3294407 () Bool)

(assert (=> b!2876853 m!3294407))

(assert (=> b!2876854 m!3293811))

(assert (=> b!2876854 m!3294171))

(assert (=> b!2876854 m!3293809))

(assert (=> b!2876854 m!3294171))

(declare-fun m!3294409 () Bool)

(assert (=> b!2876854 m!3294409))

(assert (=> b!2876854 m!3293811))

(assert (=> b!2876854 m!3294175))

(assert (=> b!2876854 m!3294409))

(assert (=> b!2876854 m!3294175))

(declare-fun m!3294411 () Bool)

(assert (=> b!2876854 m!3294411))

(assert (=> b!2876141 d!831675))

(declare-fun bs!522809 () Bool)

(declare-fun d!831677 () Bool)

(assert (= bs!522809 (and d!831677 d!831389)))

(declare-fun lambda!107316 () Int)

(assert (=> bs!522809 (= (= (head!6349 (tail!4574 (v!34542 lt!1018702))) (head!6349 (v!34542 lt!1018702))) (= lambda!107316 lambda!107291))))

(declare-fun bs!522810 () Bool)

(assert (= bs!522810 (and d!831677 d!831493)))

(assert (=> bs!522810 (= (= (head!6349 (tail!4574 (v!34542 lt!1018702))) (head!6349 (get!10340 lt!1018697))) (= lambda!107316 lambda!107308))))

(declare-fun bs!522811 () Bool)

(assert (= bs!522811 (and d!831677 d!831613)))

(assert (=> bs!522811 (= (= (head!6349 (tail!4574 (v!34542 lt!1018702))) (head!6349 (get!10340 (getLanguageWitness!435 lt!1018696)))) (= lambda!107316 lambda!107314))))

(assert (=> d!831677 true))

(assert (=> d!831677 (= (derivationStepZipper!476 (derivationStepZipper!476 lt!1018699 (head!6349 (v!34542 lt!1018702))) (head!6349 (tail!4574 (v!34542 lt!1018702)))) (flatMap!223 (derivationStepZipper!476 lt!1018699 (head!6349 (v!34542 lt!1018702))) lambda!107316))))

(declare-fun bs!522812 () Bool)

(assert (= bs!522812 d!831677))

(assert (=> bs!522812 m!3293681))

(declare-fun m!3294413 () Bool)

(assert (=> bs!522812 m!3294413))

(assert (=> b!2876141 d!831677))

(assert (=> b!2876141 d!831549))

(assert (=> b!2876141 d!831573))

(declare-fun d!831679 () Bool)

(declare-fun res!1192841 () Bool)

(declare-fun e!1820446 () Bool)

(assert (=> d!831679 (=> res!1192841 e!1820446)))

(assert (=> d!831679 (= res!1192841 (is-Nil!34394 (t!233561 (exprs!3202 c!7184))))))

(assert (=> d!831679 (= (forall!7087 (t!233561 (exprs!3202 c!7184)) lambda!107271) e!1820446)))

(declare-fun b!2876855 () Bool)

(declare-fun e!1820447 () Bool)

(assert (=> b!2876855 (= e!1820446 e!1820447)))

(declare-fun res!1192842 () Bool)

(assert (=> b!2876855 (=> (not res!1192842) (not e!1820447))))

(assert (=> b!2876855 (= res!1192842 (dynLambda!14318 lambda!107271 (h!39814 (t!233561 (exprs!3202 c!7184)))))))

(declare-fun b!2876856 () Bool)

(assert (=> b!2876856 (= e!1820447 (forall!7087 (t!233561 (t!233561 (exprs!3202 c!7184))) lambda!107271))))

(assert (= (and d!831679 (not res!1192841)) b!2876855))

(assert (= (and b!2876855 res!1192842) b!2876856))

(declare-fun b_lambda!86165 () Bool)

(assert (=> (not b_lambda!86165) (not b!2876855)))

(declare-fun m!3294415 () Bool)

(assert (=> b!2876855 m!3294415))

(declare-fun m!3294417 () Bool)

(assert (=> b!2876856 m!3294417))

(assert (=> b!2876135 d!831679))

(declare-fun bm!186239 () Bool)

(declare-fun call!186247 () Regex!8742)

(declare-fun call!186246 () Regex!8742)

(assert (=> bm!186239 (= call!186247 call!186246)))

(declare-fun b!2876857 () Bool)

(declare-fun e!1820450 () Regex!8742)

(assert (=> b!2876857 (= e!1820450 EmptyLang!8742)))

(declare-fun c!466380 () Bool)

(declare-fun b!2876858 () Bool)

(assert (=> b!2876858 (= c!466380 (is-Union!8742 (ite c!466154 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466152 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))))))

(declare-fun e!1820452 () Regex!8742)

(declare-fun e!1820449 () Regex!8742)

(assert (=> b!2876858 (= e!1820452 e!1820449)))

(declare-fun c!466382 () Bool)

(declare-fun b!2876859 () Bool)

(assert (=> b!2876859 (= c!466382 (nullable!2692 (regOne!17996 (ite c!466154 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466152 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun e!1820448 () Regex!8742)

(declare-fun e!1820451 () Regex!8742)

(assert (=> b!2876859 (= e!1820448 e!1820451)))

(declare-fun b!2876860 () Bool)

(assert (=> b!2876860 (= e!1820448 (Concat!14063 call!186247 (ite c!466154 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466152 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))))))

(declare-fun call!186244 () Regex!8742)

(declare-fun b!2876861 () Bool)

(declare-fun call!186245 () Regex!8742)

(assert (=> b!2876861 (= e!1820451 (Union!8742 (Concat!14063 call!186244 (regTwo!17996 (ite c!466154 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466152 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))) call!186245))))

(declare-fun b!2876862 () Bool)

(assert (=> b!2876862 (= e!1820451 (Union!8742 (Concat!14063 call!186244 (regTwo!17996 (ite c!466154 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466152 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))) EmptyLang!8742))))

(declare-fun b!2876863 () Bool)

(assert (=> b!2876863 (= e!1820452 (ite (= (head!6349 (v!34542 lt!1018702)) (c!466015 (ite c!466154 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466152 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))) EmptyExpr!8742 EmptyLang!8742))))

(declare-fun b!2876864 () Bool)

(assert (=> b!2876864 (= e!1820449 (Union!8742 call!186246 call!186245))))

(declare-fun bm!186240 () Bool)

(declare-fun c!466378 () Bool)

(assert (=> bm!186240 (= call!186246 (derivativeStep!2325 (ite c!466380 (regOne!17997 (ite c!466154 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466152 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))) (ite c!466378 (reg!9071 (ite c!466154 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466152 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))) (regOne!17996 (ite c!466154 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466152 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))))) (head!6349 (v!34542 lt!1018702))))))

(declare-fun bm!186241 () Bool)

(assert (=> bm!186241 (= call!186245 (derivativeStep!2325 (ite c!466380 (regTwo!17997 (ite c!466154 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466152 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))) (regTwo!17996 (ite c!466154 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466152 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))) (head!6349 (v!34542 lt!1018702))))))

(declare-fun bm!186242 () Bool)

(assert (=> bm!186242 (= call!186244 call!186247)))

(declare-fun d!831681 () Bool)

(declare-fun lt!1018871 () Regex!8742)

(assert (=> d!831681 (validRegex!3520 lt!1018871)))

(assert (=> d!831681 (= lt!1018871 e!1820450)))

(declare-fun c!466381 () Bool)

(assert (=> d!831681 (= c!466381 (or (is-EmptyExpr!8742 (ite c!466154 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466152 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))) (is-EmptyLang!8742 (ite c!466154 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466152 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))

(assert (=> d!831681 (validRegex!3520 (ite c!466154 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466152 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))

(assert (=> d!831681 (= (derivativeStep!2325 (ite c!466154 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466152 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (head!6349 (v!34542 lt!1018702))) lt!1018871)))

(declare-fun b!2876865 () Bool)

(assert (=> b!2876865 (= e!1820449 e!1820448)))

(assert (=> b!2876865 (= c!466378 (is-Star!8742 (ite c!466154 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466152 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))))))

(declare-fun b!2876866 () Bool)

(assert (=> b!2876866 (= e!1820450 e!1820452)))

(declare-fun c!466379 () Bool)

(assert (=> b!2876866 (= c!466379 (is-ElementMatch!8742 (ite c!466154 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466152 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))))))

(assert (= (and d!831681 c!466381) b!2876857))

(assert (= (and d!831681 (not c!466381)) b!2876866))

(assert (= (and b!2876866 c!466379) b!2876863))

(assert (= (and b!2876866 (not c!466379)) b!2876858))

(assert (= (and b!2876858 c!466380) b!2876864))

(assert (= (and b!2876858 (not c!466380)) b!2876865))

(assert (= (and b!2876865 c!466378) b!2876860))

(assert (= (and b!2876865 (not c!466378)) b!2876859))

(assert (= (and b!2876859 c!466382) b!2876861))

(assert (= (and b!2876859 (not c!466382)) b!2876862))

(assert (= (or b!2876861 b!2876862) bm!186242))

(assert (= (or b!2876860 bm!186242) bm!186239))

(assert (= (or b!2876864 bm!186239) bm!186240))

(assert (= (or b!2876864 b!2876861) bm!186241))

(declare-fun m!3294419 () Bool)

(assert (=> b!2876859 m!3294419))

(assert (=> bm!186240 m!3293639))

(declare-fun m!3294421 () Bool)

(assert (=> bm!186240 m!3294421))

(assert (=> bm!186241 m!3293639))

(declare-fun m!3294423 () Bool)

(assert (=> bm!186241 m!3294423))

(declare-fun m!3294425 () Bool)

(assert (=> d!831681 m!3294425))

(declare-fun m!3294427 () Bool)

(assert (=> d!831681 m!3294427))

(assert (=> bm!186126 d!831681))

(declare-fun bm!186243 () Bool)

(declare-fun call!186251 () Regex!8742)

(declare-fun call!186250 () Regex!8742)

(assert (=> bm!186243 (= call!186251 call!186250)))

(declare-fun b!2876867 () Bool)

(declare-fun e!1820455 () Regex!8742)

(assert (=> b!2876867 (= e!1820455 EmptyLang!8742)))

(declare-fun b!2876868 () Bool)

(declare-fun c!466385 () Bool)

(assert (=> b!2876868 (= c!466385 (is-Union!8742 (ite c!466227 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466225 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))))))

(declare-fun e!1820457 () Regex!8742)

(declare-fun e!1820454 () Regex!8742)

(assert (=> b!2876868 (= e!1820457 e!1820454)))

(declare-fun c!466387 () Bool)

(declare-fun b!2876869 () Bool)

(assert (=> b!2876869 (= c!466387 (nullable!2692 (regOne!17996 (ite c!466227 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466225 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun e!1820453 () Regex!8742)

(declare-fun e!1820456 () Regex!8742)

(assert (=> b!2876869 (= e!1820453 e!1820456)))

(declare-fun b!2876870 () Bool)

(assert (=> b!2876870 (= e!1820453 (Concat!14063 call!186251 (ite c!466227 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466225 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))))))

(declare-fun call!186249 () Regex!8742)

(declare-fun call!186248 () Regex!8742)

(declare-fun b!2876871 () Bool)

(assert (=> b!2876871 (= e!1820456 (Union!8742 (Concat!14063 call!186248 (regTwo!17996 (ite c!466227 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466225 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))) call!186249))))

(declare-fun b!2876872 () Bool)

(assert (=> b!2876872 (= e!1820456 (Union!8742 (Concat!14063 call!186248 (regTwo!17996 (ite c!466227 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466225 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))) EmptyLang!8742))))

(declare-fun b!2876873 () Bool)

(assert (=> b!2876873 (= e!1820457 (ite (= (head!6349 (get!10340 lt!1018702)) (c!466015 (ite c!466227 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466225 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))) EmptyExpr!8742 EmptyLang!8742))))

(declare-fun b!2876874 () Bool)

(assert (=> b!2876874 (= e!1820454 (Union!8742 call!186250 call!186249))))

(declare-fun bm!186244 () Bool)

(declare-fun c!466383 () Bool)

(assert (=> bm!186244 (= call!186250 (derivativeStep!2325 (ite c!466385 (regOne!17997 (ite c!466227 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466225 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))) (ite c!466383 (reg!9071 (ite c!466227 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466225 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))) (regOne!17996 (ite c!466227 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466225 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))))) (head!6349 (get!10340 lt!1018702))))))

(declare-fun bm!186245 () Bool)

(assert (=> bm!186245 (= call!186249 (derivativeStep!2325 (ite c!466385 (regTwo!17997 (ite c!466227 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466225 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))) (regTwo!17996 (ite c!466227 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466225 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))) (head!6349 (get!10340 lt!1018702))))))

(declare-fun bm!186246 () Bool)

(assert (=> bm!186246 (= call!186248 call!186251)))

(declare-fun d!831683 () Bool)

(declare-fun lt!1018872 () Regex!8742)

(assert (=> d!831683 (validRegex!3520 lt!1018872)))

(assert (=> d!831683 (= lt!1018872 e!1820455)))

(declare-fun c!466386 () Bool)

(assert (=> d!831683 (= c!466386 (or (is-EmptyExpr!8742 (ite c!466227 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466225 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))) (is-EmptyLang!8742 (ite c!466227 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466225 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))))

(assert (=> d!831683 (validRegex!3520 (ite c!466227 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466225 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))))))

(assert (=> d!831683 (= (derivativeStep!2325 (ite c!466227 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466225 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184))))) (head!6349 (get!10340 lt!1018702))) lt!1018872)))

(declare-fun b!2876875 () Bool)

(assert (=> b!2876875 (= e!1820454 e!1820453)))

(assert (=> b!2876875 (= c!466383 (is-Star!8742 (ite c!466227 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466225 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))))))

(declare-fun b!2876876 () Bool)

(assert (=> b!2876876 (= e!1820455 e!1820457)))

(declare-fun c!466384 () Bool)

(assert (=> b!2876876 (= c!466384 (is-ElementMatch!8742 (ite c!466227 (regOne!17997 (h!39814 (exprs!3202 c!7184))) (ite c!466225 (reg!9071 (h!39814 (exprs!3202 c!7184))) (regOne!17996 (h!39814 (exprs!3202 c!7184)))))))))

(assert (= (and d!831683 c!466386) b!2876867))

(assert (= (and d!831683 (not c!466386)) b!2876876))

(assert (= (and b!2876876 c!466384) b!2876873))

(assert (= (and b!2876876 (not c!466384)) b!2876868))

(assert (= (and b!2876868 c!466385) b!2876874))

(assert (= (and b!2876868 (not c!466385)) b!2876875))

(assert (= (and b!2876875 c!466383) b!2876870))

(assert (= (and b!2876875 (not c!466383)) b!2876869))

(assert (= (and b!2876869 c!466387) b!2876871))

(assert (= (and b!2876869 (not c!466387)) b!2876872))

(assert (= (or b!2876871 b!2876872) bm!186246))

(assert (= (or b!2876870 bm!186246) bm!186243))

(assert (= (or b!2876874 bm!186243) bm!186244))

(assert (= (or b!2876874 b!2876871) bm!186245))

(declare-fun m!3294429 () Bool)

(assert (=> b!2876869 m!3294429))

(assert (=> bm!186244 m!3293653))

(declare-fun m!3294431 () Bool)

(assert (=> bm!186244 m!3294431))

(assert (=> bm!186245 m!3293653))

(declare-fun m!3294433 () Bool)

(assert (=> bm!186245 m!3294433))

(declare-fun m!3294435 () Bool)

(assert (=> d!831683 m!3294435))

(declare-fun m!3294437 () Bool)

(assert (=> d!831683 m!3294437))

(assert (=> bm!186165 d!831683))

(declare-fun b!2876879 () Bool)

(declare-fun res!1192843 () Bool)

(declare-fun e!1820459 () Bool)

(assert (=> b!2876879 (=> (not res!1192843) (not e!1820459))))

(declare-fun lt!1018873 () List!34517)

(assert (=> b!2876879 (= res!1192843 (= (size!26325 lt!1018873) (+ (size!26325 (v!34542 lt!1018815)) (size!26325 (v!34542 lt!1018814)))))))

(declare-fun b!2876878 () Bool)

(declare-fun e!1820458 () List!34517)

(assert (=> b!2876878 (= e!1820458 (Cons!34393 (h!39813 (v!34542 lt!1018815)) (++!8179 (t!233560 (v!34542 lt!1018815)) (v!34542 lt!1018814))))))

(declare-fun b!2876880 () Bool)

(assert (=> b!2876880 (= e!1820459 (or (not (= (v!34542 lt!1018814) Nil!34393)) (= lt!1018873 (v!34542 lt!1018815))))))

(declare-fun b!2876877 () Bool)

(assert (=> b!2876877 (= e!1820458 (v!34542 lt!1018814))))

(declare-fun d!831685 () Bool)

(assert (=> d!831685 e!1820459))

(declare-fun res!1192844 () Bool)

(assert (=> d!831685 (=> (not res!1192844) (not e!1820459))))

(assert (=> d!831685 (= res!1192844 (= (content!4706 lt!1018873) (set.union (content!4706 (v!34542 lt!1018815)) (content!4706 (v!34542 lt!1018814)))))))

(assert (=> d!831685 (= lt!1018873 e!1820458)))

(declare-fun c!466388 () Bool)

(assert (=> d!831685 (= c!466388 (is-Nil!34393 (v!34542 lt!1018815)))))

(assert (=> d!831685 (= (++!8179 (v!34542 lt!1018815) (v!34542 lt!1018814)) lt!1018873)))

(assert (= (and d!831685 c!466388) b!2876877))

(assert (= (and d!831685 (not c!466388)) b!2876878))

(assert (= (and d!831685 res!1192844) b!2876879))

(assert (= (and b!2876879 res!1192843) b!2876880))

(declare-fun m!3294439 () Bool)

(assert (=> b!2876879 m!3294439))

(declare-fun m!3294441 () Bool)

(assert (=> b!2876879 m!3294441))

(declare-fun m!3294443 () Bool)

(assert (=> b!2876879 m!3294443))

(declare-fun m!3294445 () Bool)

(assert (=> b!2876878 m!3294445))

(declare-fun m!3294447 () Bool)

(assert (=> d!831685 m!3294447))

(declare-fun m!3294449 () Bool)

(assert (=> d!831685 m!3294449))

(declare-fun m!3294451 () Bool)

(assert (=> d!831685 m!3294451))

(assert (=> b!2876276 d!831685))

(assert (=> d!831387 d!831377))

(declare-fun b!2876881 () Bool)

(declare-fun e!1820462 () Option!6417)

(declare-fun lt!1018874 () Option!6417)

(assert (=> b!2876881 (= e!1820462 lt!1018874)))

(declare-fun b!2876882 () Bool)

(declare-fun c!466390 () Bool)

(assert (=> b!2876882 (= c!466390 (is-ElementMatch!8742 (h!39814 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696)))))))))

(declare-fun e!1820467 () Option!6417)

(declare-fun e!1820460 () Option!6417)

(assert (=> b!2876882 (= e!1820467 e!1820460)))

(declare-fun b!2876883 () Bool)

(declare-fun c!466396 () Bool)

(declare-fun lt!1018875 () Option!6417)

(assert (=> b!2876883 (= c!466396 (is-Some!6416 lt!1018875))))

(declare-fun call!186252 () Option!6417)

(assert (=> b!2876883 (= lt!1018875 call!186252)))

(declare-fun e!1820463 () Option!6417)

(declare-fun e!1820465 () Option!6417)

(assert (=> b!2876883 (= e!1820463 e!1820465)))

(declare-fun bm!186247 () Bool)

(declare-fun c!466393 () Bool)

(assert (=> bm!186247 (= call!186252 (getLanguageWitness!436 (ite c!466393 (regTwo!17997 (h!39814 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696)))))) (regTwo!17996 (h!39814 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696)))))))))))

(declare-fun b!2876884 () Bool)

(declare-fun e!1820464 () Option!6417)

(assert (=> b!2876884 (= e!1820464 (Some!6416 Nil!34393))))

(declare-fun b!2876885 () Bool)

(assert (=> b!2876885 (= c!466393 (is-Union!8742 (h!39814 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696)))))))))

(declare-fun e!1820461 () Option!6417)

(assert (=> b!2876885 (= e!1820464 e!1820461)))

(declare-fun b!2876887 () Bool)

(assert (=> b!2876887 (= e!1820467 None!6416)))

(declare-fun b!2876888 () Bool)

(assert (=> b!2876888 (= e!1820465 None!6416)))

(declare-fun b!2876889 () Bool)

(assert (=> b!2876889 (= e!1820461 e!1820463)))

(declare-fun lt!1018876 () Option!6417)

(declare-fun call!186253 () Option!6417)

(assert (=> b!2876889 (= lt!1018876 call!186253)))

(declare-fun c!466395 () Bool)

(assert (=> b!2876889 (= c!466395 (is-Some!6416 lt!1018876))))

(declare-fun b!2876890 () Bool)

(declare-fun e!1820466 () Option!6417)

(assert (=> b!2876890 (= e!1820466 (Some!6416 Nil!34393))))

(declare-fun b!2876891 () Bool)

(assert (=> b!2876891 (= e!1820465 (Some!6416 (++!8179 (v!34542 lt!1018876) (v!34542 lt!1018875))))))

(declare-fun b!2876892 () Bool)

(assert (=> b!2876892 (= e!1820460 e!1820464)))

(declare-fun c!466389 () Bool)

(assert (=> b!2876892 (= c!466389 (is-Star!8742 (h!39814 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696)))))))))

(declare-fun b!2876893 () Bool)

(assert (=> b!2876893 (= e!1820463 None!6416)))

(declare-fun d!831687 () Bool)

(declare-fun c!466391 () Bool)

(assert (=> d!831687 (= c!466391 (is-EmptyExpr!8742 (h!39814 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696)))))))))

(assert (=> d!831687 (= (getLanguageWitness!436 (h!39814 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696)))))) e!1820466)))

(declare-fun b!2876886 () Bool)

(assert (=> b!2876886 (= e!1820462 call!186252)))

(declare-fun bm!186248 () Bool)

(assert (=> bm!186248 (= call!186253 (getLanguageWitness!436 (ite c!466393 (regOne!17997 (h!39814 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696)))))) (regOne!17996 (h!39814 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696)))))))))))

(declare-fun b!2876894 () Bool)

(assert (=> b!2876894 (= e!1820466 e!1820467)))

(declare-fun c!466394 () Bool)

(assert (=> b!2876894 (= c!466394 (is-EmptyLang!8742 (h!39814 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696)))))))))

(declare-fun b!2876895 () Bool)

(assert (=> b!2876895 (= e!1820461 e!1820462)))

(assert (=> b!2876895 (= lt!1018874 call!186253)))

(declare-fun c!466392 () Bool)

(assert (=> b!2876895 (= c!466392 (is-Some!6416 lt!1018874))))

(declare-fun b!2876896 () Bool)

(assert (=> b!2876896 (= e!1820460 (Some!6416 (Cons!34393 (c!466015 (h!39814 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696)))))) Nil!34393)))))

(assert (= (and d!831687 c!466391) b!2876890))

(assert (= (and d!831687 (not c!466391)) b!2876894))

(assert (= (and b!2876894 c!466394) b!2876887))

(assert (= (and b!2876894 (not c!466394)) b!2876882))

(assert (= (and b!2876882 c!466390) b!2876896))

(assert (= (and b!2876882 (not c!466390)) b!2876892))

(assert (= (and b!2876892 c!466389) b!2876884))

(assert (= (and b!2876892 (not c!466389)) b!2876885))

(assert (= (and b!2876885 c!466393) b!2876895))

(assert (= (and b!2876885 (not c!466393)) b!2876889))

(assert (= (and b!2876895 c!466392) b!2876881))

(assert (= (and b!2876895 (not c!466392)) b!2876886))

(assert (= (and b!2876889 c!466395) b!2876883))

(assert (= (and b!2876889 (not c!466395)) b!2876893))

(assert (= (and b!2876883 c!466396) b!2876891))

(assert (= (and b!2876883 (not c!466396)) b!2876888))

(assert (= (or b!2876886 b!2876883) bm!186247))

(assert (= (or b!2876895 b!2876889) bm!186248))

(declare-fun m!3294453 () Bool)

(assert (=> bm!186247 m!3294453))

(declare-fun m!3294455 () Bool)

(assert (=> b!2876891 m!3294455))

(declare-fun m!3294457 () Bool)

(assert (=> bm!186248 m!3294457))

(assert (=> b!2876228 d!831687))

(assert (=> b!2876370 d!831481))

(declare-fun b!2876897 () Bool)

(declare-fun e!1820470 () Option!6417)

(declare-fun lt!1018877 () Option!6417)

(assert (=> b!2876897 (= e!1820470 lt!1018877)))

(declare-fun b!2876898 () Bool)

(declare-fun c!466398 () Bool)

(assert (=> b!2876898 (= c!466398 (is-ElementMatch!8742 (ite c!466184 (regTwo!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun e!1820475 () Option!6417)

(declare-fun e!1820468 () Option!6417)

(assert (=> b!2876898 (= e!1820475 e!1820468)))

(declare-fun b!2876899 () Bool)

(declare-fun c!466404 () Bool)

(declare-fun lt!1018878 () Option!6417)

(assert (=> b!2876899 (= c!466404 (is-Some!6416 lt!1018878))))

(declare-fun call!186254 () Option!6417)

(assert (=> b!2876899 (= lt!1018878 call!186254)))

(declare-fun e!1820471 () Option!6417)

(declare-fun e!1820473 () Option!6417)

(assert (=> b!2876899 (= e!1820471 e!1820473)))

(declare-fun bm!186249 () Bool)

(declare-fun c!466401 () Bool)

(assert (=> bm!186249 (= call!186254 (getLanguageWitness!436 (ite c!466401 (regTwo!17997 (ite c!466184 (regTwo!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))) (regTwo!17996 (ite c!466184 (regTwo!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))))))

(declare-fun b!2876900 () Bool)

(declare-fun e!1820472 () Option!6417)

(assert (=> b!2876900 (= e!1820472 (Some!6416 Nil!34393))))

(declare-fun b!2876901 () Bool)

(assert (=> b!2876901 (= c!466401 (is-Union!8742 (ite c!466184 (regTwo!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun e!1820469 () Option!6417)

(assert (=> b!2876901 (= e!1820472 e!1820469)))

(declare-fun b!2876903 () Bool)

(assert (=> b!2876903 (= e!1820475 None!6416)))

(declare-fun b!2876904 () Bool)

(assert (=> b!2876904 (= e!1820473 None!6416)))

(declare-fun b!2876905 () Bool)

(assert (=> b!2876905 (= e!1820469 e!1820471)))

(declare-fun lt!1018879 () Option!6417)

(declare-fun call!186255 () Option!6417)

(assert (=> b!2876905 (= lt!1018879 call!186255)))

(declare-fun c!466403 () Bool)

(assert (=> b!2876905 (= c!466403 (is-Some!6416 lt!1018879))))

(declare-fun b!2876906 () Bool)

(declare-fun e!1820474 () Option!6417)

(assert (=> b!2876906 (= e!1820474 (Some!6416 Nil!34393))))

(declare-fun b!2876907 () Bool)

(assert (=> b!2876907 (= e!1820473 (Some!6416 (++!8179 (v!34542 lt!1018879) (v!34542 lt!1018878))))))

(declare-fun b!2876908 () Bool)

(assert (=> b!2876908 (= e!1820468 e!1820472)))

(declare-fun c!466397 () Bool)

(assert (=> b!2876908 (= c!466397 (is-Star!8742 (ite c!466184 (regTwo!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun b!2876909 () Bool)

(assert (=> b!2876909 (= e!1820471 None!6416)))

(declare-fun d!831689 () Bool)

(declare-fun c!466399 () Bool)

(assert (=> d!831689 (= c!466399 (is-EmptyExpr!8742 (ite c!466184 (regTwo!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))))

(assert (=> d!831689 (= (getLanguageWitness!436 (ite c!466184 (regTwo!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))) e!1820474)))

(declare-fun b!2876902 () Bool)

(assert (=> b!2876902 (= e!1820470 call!186254)))

(declare-fun bm!186250 () Bool)

(assert (=> bm!186250 (= call!186255 (getLanguageWitness!436 (ite c!466401 (regOne!17997 (ite c!466184 (regTwo!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))) (regOne!17996 (ite c!466184 (regTwo!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))))))

(declare-fun b!2876910 () Bool)

(assert (=> b!2876910 (= e!1820474 e!1820475)))

(declare-fun c!466402 () Bool)

(assert (=> b!2876910 (= c!466402 (is-EmptyLang!8742 (ite c!466184 (regTwo!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))))))

(declare-fun b!2876911 () Bool)

(assert (=> b!2876911 (= e!1820469 e!1820470)))

(assert (=> b!2876911 (= lt!1018877 call!186255)))

(declare-fun c!466400 () Bool)

(assert (=> b!2876911 (= c!466400 (is-Some!6416 lt!1018877))))

(declare-fun b!2876912 () Bool)

(assert (=> b!2876912 (= e!1820468 (Some!6416 (Cons!34393 (c!466015 (ite c!466184 (regTwo!17997 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) (regTwo!17996 (ite c!466076 (regTwo!17997 (h!39814 (exprs!3202 c!7184))) (regTwo!17996 (h!39814 (exprs!3202 c!7184))))))) Nil!34393)))))

(assert (= (and d!831689 c!466399) b!2876906))

(assert (= (and d!831689 (not c!466399)) b!2876910))

(assert (= (and b!2876910 c!466402) b!2876903))

(assert (= (and b!2876910 (not c!466402)) b!2876898))

(assert (= (and b!2876898 c!466398) b!2876912))

(assert (= (and b!2876898 (not c!466398)) b!2876908))

(assert (= (and b!2876908 c!466397) b!2876900))

(assert (= (and b!2876908 (not c!466397)) b!2876901))

(assert (= (and b!2876901 c!466401) b!2876911))

(assert (= (and b!2876901 (not c!466401)) b!2876905))

(assert (= (and b!2876911 c!466400) b!2876897))

(assert (= (and b!2876911 (not c!466400)) b!2876902))

(assert (= (and b!2876905 c!466403) b!2876899))

(assert (= (and b!2876905 (not c!466403)) b!2876909))

(assert (= (and b!2876899 c!466404) b!2876907))

(assert (= (and b!2876899 (not c!466404)) b!2876904))

(assert (= (or b!2876902 b!2876899) bm!186249))

(assert (= (or b!2876911 b!2876905) bm!186250))

(declare-fun m!3294459 () Bool)

(assert (=> bm!186249 m!3294459))

(declare-fun m!3294461 () Bool)

(assert (=> b!2876907 m!3294461))

(declare-fun m!3294463 () Bool)

(assert (=> bm!186250 m!3294463))

(assert (=> bm!186133 d!831689))

(declare-fun d!831691 () Bool)

(declare-fun res!1192845 () Bool)

(declare-fun e!1820476 () Bool)

(assert (=> d!831691 (=> res!1192845 e!1820476)))

(assert (=> d!831691 (= res!1192845 (is-Nil!34394 (t!233561 (exprs!3202 lt!1018700))))))

(assert (=> d!831691 (= (forall!7087 (t!233561 (exprs!3202 lt!1018700)) lambda!107265) e!1820476)))

(declare-fun b!2876913 () Bool)

(declare-fun e!1820477 () Bool)

(assert (=> b!2876913 (= e!1820476 e!1820477)))

(declare-fun res!1192846 () Bool)

(assert (=> b!2876913 (=> (not res!1192846) (not e!1820477))))

(assert (=> b!2876913 (= res!1192846 (dynLambda!14318 lambda!107265 (h!39814 (t!233561 (exprs!3202 lt!1018700)))))))

(declare-fun b!2876914 () Bool)

(assert (=> b!2876914 (= e!1820477 (forall!7087 (t!233561 (t!233561 (exprs!3202 lt!1018700))) lambda!107265))))

(assert (= (and d!831691 (not res!1192845)) b!2876913))

(assert (= (and b!2876913 res!1192846) b!2876914))

(declare-fun b_lambda!86167 () Bool)

(assert (=> (not b_lambda!86167) (not b!2876913)))

(declare-fun m!3294465 () Bool)

(assert (=> b!2876913 m!3294465))

(declare-fun m!3294467 () Bool)

(assert (=> b!2876914 m!3294467))

(assert (=> b!2876139 d!831691))

(declare-fun b!2876915 () Bool)

(declare-fun e!1820478 () Bool)

(declare-fun e!1820484 () Bool)

(assert (=> b!2876915 (= e!1820478 e!1820484)))

(declare-fun res!1192847 () Bool)

(assert (=> b!2876915 (= res!1192847 (not (nullable!2692 (reg!9071 lt!1018821))))))

(assert (=> b!2876915 (=> (not res!1192847) (not e!1820484))))

(declare-fun b!2876916 () Bool)

(declare-fun e!1820481 () Bool)

(assert (=> b!2876916 (= e!1820478 e!1820481)))

(declare-fun c!466405 () Bool)

(assert (=> b!2876916 (= c!466405 (is-Union!8742 lt!1018821))))

(declare-fun d!831693 () Bool)

(declare-fun res!1192848 () Bool)

(declare-fun e!1820479 () Bool)

(assert (=> d!831693 (=> res!1192848 e!1820479)))

(assert (=> d!831693 (= res!1192848 (is-ElementMatch!8742 lt!1018821))))

(assert (=> d!831693 (= (validRegex!3520 lt!1018821) e!1820479)))

(declare-fun bm!186251 () Bool)

(declare-fun call!186256 () Bool)

(declare-fun c!466406 () Bool)

(assert (=> bm!186251 (= call!186256 (validRegex!3520 (ite c!466406 (reg!9071 lt!1018821) (ite c!466405 (regTwo!17997 lt!1018821) (regOne!17996 lt!1018821)))))))

(declare-fun b!2876917 () Bool)

(declare-fun e!1820483 () Bool)

(declare-fun call!186258 () Bool)

(assert (=> b!2876917 (= e!1820483 call!186258)))

(declare-fun b!2876918 () Bool)

(declare-fun e!1820480 () Bool)

(declare-fun call!186257 () Bool)

(assert (=> b!2876918 (= e!1820480 call!186257)))

(declare-fun b!2876919 () Bool)

(assert (=> b!2876919 (= e!1820484 call!186256)))

(declare-fun b!2876920 () Bool)

(declare-fun res!1192849 () Bool)

(assert (=> b!2876920 (=> (not res!1192849) (not e!1820480))))

(assert (=> b!2876920 (= res!1192849 call!186258)))

(assert (=> b!2876920 (= e!1820481 e!1820480)))

(declare-fun b!2876921 () Bool)

(declare-fun res!1192850 () Bool)

(declare-fun e!1820482 () Bool)

(assert (=> b!2876921 (=> res!1192850 e!1820482)))

(assert (=> b!2876921 (= res!1192850 (not (is-Concat!14063 lt!1018821)))))

(assert (=> b!2876921 (= e!1820481 e!1820482)))

(declare-fun b!2876922 () Bool)

(assert (=> b!2876922 (= e!1820479 e!1820478)))

(assert (=> b!2876922 (= c!466406 (is-Star!8742 lt!1018821))))

(declare-fun bm!186252 () Bool)

(assert (=> bm!186252 (= call!186258 (validRegex!3520 (ite c!466405 (regOne!17997 lt!1018821) (regTwo!17996 lt!1018821))))))

(declare-fun b!2876923 () Bool)

(assert (=> b!2876923 (= e!1820482 e!1820483)))

(declare-fun res!1192851 () Bool)

(assert (=> b!2876923 (=> (not res!1192851) (not e!1820483))))

(assert (=> b!2876923 (= res!1192851 call!186257)))

(declare-fun bm!186253 () Bool)

(assert (=> bm!186253 (= call!186257 call!186256)))

(assert (= (and d!831693 (not res!1192848)) b!2876922))

(assert (= (and b!2876922 c!466406) b!2876915))

(assert (= (and b!2876922 (not c!466406)) b!2876916))

(assert (= (and b!2876915 res!1192847) b!2876919))

(assert (= (and b!2876916 c!466405) b!2876920))

(assert (= (and b!2876916 (not c!466405)) b!2876921))

(assert (= (and b!2876920 res!1192849) b!2876918))

(assert (= (and b!2876921 (not res!1192850)) b!2876923))

(assert (= (and b!2876923 res!1192851) b!2876917))

(assert (= (or b!2876918 b!2876923) bm!186253))

(assert (= (or b!2876920 b!2876917) bm!186252))

(assert (= (or b!2876919 bm!186253) bm!186251))

(declare-fun m!3294469 () Bool)

(assert (=> b!2876915 m!3294469))

(declare-fun m!3294471 () Bool)

(assert (=> bm!186251 m!3294471))

(declare-fun m!3294473 () Bool)

(assert (=> bm!186252 m!3294473))

(assert (=> d!831501 d!831693))

(assert (=> d!831501 d!831445))

(assert (=> b!2876181 d!831653))

(assert (=> b!2876181 d!831573))

(declare-fun d!831695 () Bool)

(declare-fun res!1192852 () Bool)

(declare-fun e!1820485 () Bool)

(assert (=> d!831695 (=> res!1192852 e!1820485)))

(assert (=> d!831695 (= res!1192852 (is-Nil!34394 (exprs!3202 c!7184)))))

(assert (=> d!831695 (= (forall!7087 (exprs!3202 c!7184) lambda!107288) e!1820485)))

(declare-fun b!2876924 () Bool)

(declare-fun e!1820486 () Bool)

(assert (=> b!2876924 (= e!1820485 e!1820486)))

(declare-fun res!1192853 () Bool)

(assert (=> b!2876924 (=> (not res!1192853) (not e!1820486))))

(assert (=> b!2876924 (= res!1192853 (dynLambda!14318 lambda!107288 (h!39814 (exprs!3202 c!7184))))))

(declare-fun b!2876925 () Bool)

(assert (=> b!2876925 (= e!1820486 (forall!7087 (t!233561 (exprs!3202 c!7184)) lambda!107288))))

(assert (= (and d!831695 (not res!1192852)) b!2876924))

(assert (= (and b!2876924 res!1192853) b!2876925))

(declare-fun b_lambda!86169 () Bool)

(assert (=> (not b_lambda!86169) (not b!2876924)))

(declare-fun m!3294475 () Bool)

(assert (=> b!2876924 m!3294475))

(declare-fun m!3294477 () Bool)

(assert (=> b!2876925 m!3294477))

(assert (=> d!831383 d!831695))

(assert (=> b!2876214 d!831553))

(assert (=> b!2876340 d!831655))

(assert (=> b!2876340 d!831585))

(declare-fun d!831697 () Bool)

(declare-fun lt!1018882 () Bool)

(declare-fun exists!1176 (List!34519 Int) Bool)

(declare-fun toList!2028 ((Set Context!5404)) List!34519)

(assert (=> d!831697 (= lt!1018882 (exists!1176 (toList!2028 lt!1018699) lambda!107285))))

(declare-fun choose!17012 ((Set Context!5404) Int) Bool)

(assert (=> d!831697 (= lt!1018882 (choose!17012 lt!1018699 lambda!107285))))

(assert (=> d!831697 (= (exists!1173 lt!1018699 lambda!107285) lt!1018882)))

(declare-fun bs!522813 () Bool)

(assert (= bs!522813 d!831697))

(declare-fun m!3294479 () Bool)

(assert (=> bs!522813 m!3294479))

(assert (=> bs!522813 m!3294479))

(declare-fun m!3294481 () Bool)

(assert (=> bs!522813 m!3294481))

(declare-fun m!3294483 () Bool)

(assert (=> bs!522813 m!3294483))

(assert (=> d!831375 d!831697))

(assert (=> b!2876404 d!831651))

(declare-fun d!831699 () Bool)

(declare-fun lt!1018883 () Bool)

(assert (=> d!831699 (= lt!1018883 (exists!1176 (toList!2028 (set.insert lt!1018696 (as set.empty (Set Context!5404)))) lambda!107306))))

(assert (=> d!831699 (= lt!1018883 (choose!17012 (set.insert lt!1018696 (as set.empty (Set Context!5404))) lambda!107306))))

(assert (=> d!831699 (= (exists!1173 (set.insert lt!1018696 (as set.empty (Set Context!5404))) lambda!107306) lt!1018883)))

(declare-fun bs!522814 () Bool)

(assert (= bs!522814 d!831699))

(assert (=> bs!522814 m!3293567))

(declare-fun m!3294485 () Bool)

(assert (=> bs!522814 m!3294485))

(assert (=> bs!522814 m!3294485))

(declare-fun m!3294487 () Bool)

(assert (=> bs!522814 m!3294487))

(assert (=> bs!522814 m!3293567))

(declare-fun m!3294489 () Bool)

(assert (=> bs!522814 m!3294489))

(assert (=> d!831481 d!831699))

(assert (=> bs!522765 d!831445))

(declare-fun bs!522815 () Bool)

(declare-fun d!831701 () Bool)

(assert (= bs!522815 (and d!831701 d!831349)))

(declare-fun lambda!107317 () Int)

(assert (=> bs!522815 (= lambda!107317 lambda!107282)))

(declare-fun bs!522816 () Bool)

(assert (= bs!522816 (and d!831701 d!831383)))

(assert (=> bs!522816 (not (= lambda!107317 lambda!107288))))

(declare-fun bs!522817 () Bool)

(assert (= bs!522817 (and d!831701 d!831551)))

(assert (=> bs!522817 (not (= lambda!107317 lambda!107311))))

(declare-fun bs!522818 () Bool)

(assert (= bs!522818 (and d!831701 d!831337)))

(assert (=> bs!522818 (= lambda!107317 lambda!107270)))

(declare-fun bs!522819 () Bool)

(assert (= bs!522819 (and d!831701 d!831489)))

(assert (=> bs!522819 (= lambda!107317 lambda!107307)))

(declare-fun bs!522820 () Bool)

(assert (= bs!522820 (and d!831701 d!831421)))

(assert (=> bs!522820 (= lambda!107317 lambda!107294)))

(declare-fun bs!522821 () Bool)

(assert (= bs!522821 (and d!831701 d!831475)))

(assert (=> bs!522821 (not (= lambda!107317 lambda!107305))))

(declare-fun bs!522822 () Bool)

(assert (= bs!522822 (and d!831701 d!831339)))

(assert (=> bs!522822 (not (= lambda!107317 lambda!107271))))

(declare-fun bs!522823 () Bool)

(assert (= bs!522823 (and d!831701 d!831589)))

(assert (=> bs!522823 (not (= lambda!107317 lambda!107313))))

(declare-fun bs!522824 () Bool)

(assert (= bs!522824 (and d!831701 d!831331)))

(assert (=> bs!522824 (not (= lambda!107317 lambda!107265))))

(declare-fun b!2876926 () Bool)

(declare-fun c!466407 () Bool)

(declare-fun lt!1018886 () Option!6417)

(assert (=> b!2876926 (= c!466407 (is-Some!6416 lt!1018886))))

(assert (=> b!2876926 (= lt!1018886 (getLanguageWitness!435 (Context!5405 (t!233561 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696)))))))))))))

(declare-fun e!1820488 () Option!6417)

(declare-fun e!1820489 () Option!6417)

(assert (=> b!2876926 (= e!1820488 e!1820489)))

(declare-fun b!2876927 () Bool)

(declare-fun lt!1018885 () Option!6417)

(assert (=> b!2876927 (= e!1820489 (Some!6416 (++!8179 (v!34542 lt!1018885) (v!34542 lt!1018886))))))

(declare-fun b!2876928 () Bool)

(assert (=> b!2876928 (= e!1820489 None!6416)))

(declare-fun b!2876929 () Bool)

(assert (=> b!2876929 (= e!1820488 None!6416)))

(declare-fun b!2876930 () Bool)

(declare-fun e!1820487 () Option!6417)

(assert (=> b!2876930 (= e!1820487 e!1820488)))

(assert (=> b!2876930 (= lt!1018885 (getLanguageWitness!436 (h!39814 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696))))))))))))

(declare-fun c!466409 () Bool)

(assert (=> b!2876930 (= c!466409 (is-Some!6416 lt!1018885))))

(declare-fun lt!1018884 () Option!6417)

(assert (=> d!831701 (= (isEmpty!18730 lt!1018884) (exists!1172 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696))))))) lambda!107317))))

(assert (=> d!831701 (= lt!1018884 e!1820487)))

(declare-fun c!466408 () Bool)

(assert (=> d!831701 (= c!466408 (is-Cons!34394 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696)))))))))))

(assert (=> d!831701 (= (getLanguageWitness!435 (Context!5405 (t!233561 (exprs!3202 (Context!5405 (t!233561 (exprs!3202 lt!1018696))))))) lt!1018884)))

(declare-fun b!2876931 () Bool)

(assert (=> b!2876931 (= e!1820487 (Some!6416 Nil!34393))))

(assert (= (and d!831701 c!466408) b!2876930))

(assert (= (and d!831701 (not c!466408)) b!2876931))

(assert (= (and b!2876930 c!466409) b!2876926))

(assert (= (and b!2876930 (not c!466409)) b!2876929))

(assert (= (and b!2876926 c!466407) b!2876927))

(assert (= (and b!2876926 (not c!466407)) b!2876928))

(declare-fun m!3294491 () Bool)

(assert (=> b!2876926 m!3294491))

(declare-fun m!3294493 () Bool)

(assert (=> b!2876927 m!3294493))

(declare-fun m!3294495 () Bool)

(assert (=> b!2876930 m!3294495))

(declare-fun m!3294497 () Bool)

(assert (=> d!831701 m!3294497))

(declare-fun m!3294499 () Bool)

(assert (=> d!831701 m!3294499))

(assert (=> b!2876224 d!831701))

(declare-fun b!2876934 () Bool)

(declare-fun res!1192854 () Bool)

(declare-fun e!1820491 () Bool)

(assert (=> b!2876934 (=> (not res!1192854) (not e!1820491))))

(declare-fun lt!1018887 () List!34517)

(assert (=> b!2876934 (= res!1192854 (= (size!26325 lt!1018887) (+ (size!26325 (t!233560 (v!34542 lt!1018760))) (size!26325 (v!34542 lt!1018759)))))))

(declare-fun b!2876933 () Bool)

(declare-fun e!1820490 () List!34517)

(assert (=> b!2876933 (= e!1820490 (Cons!34393 (h!39813 (t!233560 (v!34542 lt!1018760))) (++!8179 (t!233560 (t!233560 (v!34542 lt!1018760))) (v!34542 lt!1018759))))))

(declare-fun b!2876935 () Bool)

(assert (=> b!2876935 (= e!1820491 (or (not (= (v!34542 lt!1018759) Nil!34393)) (= lt!1018887 (t!233560 (v!34542 lt!1018760)))))))

(declare-fun b!2876932 () Bool)

(assert (=> b!2876932 (= e!1820490 (v!34542 lt!1018759))))

(declare-fun d!831703 () Bool)

(assert (=> d!831703 e!1820491))

(declare-fun res!1192855 () Bool)

(assert (=> d!831703 (=> (not res!1192855) (not e!1820491))))

(assert (=> d!831703 (= res!1192855 (= (content!4706 lt!1018887) (set.union (content!4706 (t!233560 (v!34542 lt!1018760))) (content!4706 (v!34542 lt!1018759)))))))

(assert (=> d!831703 (= lt!1018887 e!1820490)))

(declare-fun c!466410 () Bool)

(assert (=> d!831703 (= c!466410 (is-Nil!34393 (t!233560 (v!34542 lt!1018760))))))

(assert (=> d!831703 (= (++!8179 (t!233560 (v!34542 lt!1018760)) (v!34542 lt!1018759)) lt!1018887)))

(assert (= (and d!831703 c!466410) b!2876932))

(assert (= (and d!831703 (not c!466410)) b!2876933))

(assert (= (and d!831703 res!1192855) b!2876934))

(assert (= (and b!2876934 res!1192854) b!2876935))

(declare-fun m!3294501 () Bool)

(assert (=> b!2876934 m!3294501))

(assert (=> b!2876934 m!3294323))

(assert (=> b!2876934 m!3293891))

(declare-fun m!3294503 () Bool)

(assert (=> b!2876933 m!3294503))

(declare-fun m!3294505 () Bool)

(assert (=> d!831703 m!3294505))

(assert (=> d!831703 m!3294235))

(assert (=> d!831703 m!3293899))

(assert (=> b!2876231 d!831703))

(assert (=> d!831463 d!831323))

(assert (=> d!831463 d!831333))

(declare-fun d!831705 () Bool)

(declare-fun c!466411 () Bool)

(assert (=> d!831705 (= c!466411 (isEmpty!18727 (tail!4574 (tail!4574 (get!10340 lt!1018697)))))))

(declare-fun e!1820492 () Bool)

(assert (=> d!831705 (= (matchZipper!484 (derivationStepZipper!476 (derivationStepZipper!476 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (head!6349 (get!10340 lt!1018697))) (head!6349 (tail!4574 (get!10340 lt!1018697)))) (tail!4574 (tail!4574 (get!10340 lt!1018697)))) e!1820492)))

(declare-fun b!2876936 () Bool)

(assert (=> b!2876936 (= e!1820492 (nullableZipper!720 (derivationStepZipper!476 (derivationStepZipper!476 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (head!6349 (get!10340 lt!1018697))) (head!6349 (tail!4574 (get!10340 lt!1018697))))))))

(declare-fun b!2876937 () Bool)

(assert (=> b!2876937 (= e!1820492 (matchZipper!484 (derivationStepZipper!476 (derivationStepZipper!476 (derivationStepZipper!476 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (head!6349 (get!10340 lt!1018697))) (head!6349 (tail!4574 (get!10340 lt!1018697)))) (head!6349 (tail!4574 (tail!4574 (get!10340 lt!1018697))))) (tail!4574 (tail!4574 (tail!4574 (get!10340 lt!1018697))))))))

(assert (= (and d!831705 c!466411) b!2876936))

(assert (= (and d!831705 (not c!466411)) b!2876937))

(assert (=> d!831705 m!3294001))

(declare-fun m!3294507 () Bool)

(assert (=> d!831705 m!3294507))

(assert (=> b!2876936 m!3293999))

(declare-fun m!3294509 () Bool)

(assert (=> b!2876936 m!3294509))

(assert (=> b!2876937 m!3294001))

(declare-fun m!3294511 () Bool)

(assert (=> b!2876937 m!3294511))

(assert (=> b!2876937 m!3293999))

(assert (=> b!2876937 m!3294511))

(declare-fun m!3294513 () Bool)

(assert (=> b!2876937 m!3294513))

(assert (=> b!2876937 m!3294001))

(declare-fun m!3294515 () Bool)

(assert (=> b!2876937 m!3294515))

(assert (=> b!2876937 m!3294513))

(assert (=> b!2876937 m!3294515))

(declare-fun m!3294517 () Bool)

(assert (=> b!2876937 m!3294517))

(assert (=> b!2876393 d!831705))

(declare-fun bs!522825 () Bool)

(declare-fun d!831707 () Bool)

(assert (= bs!522825 (and d!831707 d!831389)))

(declare-fun lambda!107318 () Int)

(assert (=> bs!522825 (= (= (head!6349 (tail!4574 (get!10340 lt!1018697))) (head!6349 (v!34542 lt!1018702))) (= lambda!107318 lambda!107291))))

(declare-fun bs!522826 () Bool)

(assert (= bs!522826 (and d!831707 d!831493)))

(assert (=> bs!522826 (= (= (head!6349 (tail!4574 (get!10340 lt!1018697))) (head!6349 (get!10340 lt!1018697))) (= lambda!107318 lambda!107308))))

(declare-fun bs!522827 () Bool)

(assert (= bs!522827 (and d!831707 d!831613)))

(assert (=> bs!522827 (= (= (head!6349 (tail!4574 (get!10340 lt!1018697))) (head!6349 (get!10340 (getLanguageWitness!435 lt!1018696)))) (= lambda!107318 lambda!107314))))

(declare-fun bs!522828 () Bool)

(assert (= bs!522828 (and d!831707 d!831677)))

(assert (=> bs!522828 (= (= (head!6349 (tail!4574 (get!10340 lt!1018697))) (head!6349 (tail!4574 (v!34542 lt!1018702)))) (= lambda!107318 lambda!107316))))

(assert (=> d!831707 true))

(assert (=> d!831707 (= (derivationStepZipper!476 (derivationStepZipper!476 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (head!6349 (get!10340 lt!1018697))) (head!6349 (tail!4574 (get!10340 lt!1018697)))) (flatMap!223 (derivationStepZipper!476 (set.insert lt!1018696 (as set.empty (Set Context!5404))) (head!6349 (get!10340 lt!1018697))) lambda!107318))))

(declare-fun bs!522829 () Bool)

(assert (= bs!522829 d!831707))

(assert (=> bs!522829 m!3293671))

(declare-fun m!3294519 () Bool)

(assert (=> bs!522829 m!3294519))

(assert (=> b!2876393 d!831707))

(declare-fun d!831709 () Bool)

(assert (=> d!831709 (= (head!6349 (tail!4574 (get!10340 lt!1018697))) (h!39813 (tail!4574 (get!10340 lt!1018697))))))

(assert (=> b!2876393 d!831709))

(declare-fun d!831711 () Bool)

(assert (=> d!831711 (= (tail!4574 (tail!4574 (get!10340 lt!1018697))) (t!233560 (tail!4574 (get!10340 lt!1018697))))))

(assert (=> b!2876393 d!831711))

(declare-fun e!1820493 () Bool)

(assert (=> b!2876440 (= tp!923799 e!1820493)))

(declare-fun b!2876941 () Bool)

(declare-fun tp!923824 () Bool)

(declare-fun tp!923825 () Bool)

(assert (=> b!2876941 (= e!1820493 (and tp!923824 tp!923825))))

(declare-fun b!2876940 () Bool)

(declare-fun tp!923823 () Bool)

(assert (=> b!2876940 (= e!1820493 tp!923823)))

(declare-fun b!2876938 () Bool)

(assert (=> b!2876938 (= e!1820493 tp_is_empty!15081)))

(declare-fun b!2876939 () Bool)

(declare-fun tp!923826 () Bool)

(declare-fun tp!923827 () Bool)

(assert (=> b!2876939 (= e!1820493 (and tp!923826 tp!923827))))

(assert (= (and b!2876440 (is-ElementMatch!8742 (reg!9071 (h!39814 (exprs!3202 c!7184))))) b!2876938))

(assert (= (and b!2876440 (is-Concat!14063 (reg!9071 (h!39814 (exprs!3202 c!7184))))) b!2876939))

(assert (= (and b!2876440 (is-Star!8742 (reg!9071 (h!39814 (exprs!3202 c!7184))))) b!2876940))

(assert (= (and b!2876440 (is-Union!8742 (reg!9071 (h!39814 (exprs!3202 c!7184))))) b!2876941))

(declare-fun e!1820494 () Bool)

(assert (=> b!2876439 (= tp!923802 e!1820494)))

(declare-fun b!2876945 () Bool)

(declare-fun tp!923829 () Bool)

(declare-fun tp!923830 () Bool)

(assert (=> b!2876945 (= e!1820494 (and tp!923829 tp!923830))))

(declare-fun b!2876944 () Bool)

(declare-fun tp!923828 () Bool)

(assert (=> b!2876944 (= e!1820494 tp!923828)))

(declare-fun b!2876942 () Bool)

(assert (=> b!2876942 (= e!1820494 tp_is_empty!15081)))

(declare-fun b!2876943 () Bool)

(declare-fun tp!923831 () Bool)

(declare-fun tp!923832 () Bool)

(assert (=> b!2876943 (= e!1820494 (and tp!923831 tp!923832))))

(assert (= (and b!2876439 (is-ElementMatch!8742 (regOne!17996 (h!39814 (exprs!3202 c!7184))))) b!2876942))

(assert (= (and b!2876439 (is-Concat!14063 (regOne!17996 (h!39814 (exprs!3202 c!7184))))) b!2876943))

(assert (= (and b!2876439 (is-Star!8742 (regOne!17996 (h!39814 (exprs!3202 c!7184))))) b!2876944))

(assert (= (and b!2876439 (is-Union!8742 (regOne!17996 (h!39814 (exprs!3202 c!7184))))) b!2876945))

(declare-fun e!1820495 () Bool)

(assert (=> b!2876439 (= tp!923803 e!1820495)))

(declare-fun b!2876949 () Bool)

(declare-fun tp!923834 () Bool)

(declare-fun tp!923835 () Bool)

(assert (=> b!2876949 (= e!1820495 (and tp!923834 tp!923835))))

(declare-fun b!2876948 () Bool)

(declare-fun tp!923833 () Bool)

(assert (=> b!2876948 (= e!1820495 tp!923833)))

(declare-fun b!2876946 () Bool)

(assert (=> b!2876946 (= e!1820495 tp_is_empty!15081)))

(declare-fun b!2876947 () Bool)

(declare-fun tp!923836 () Bool)

(declare-fun tp!923837 () Bool)

(assert (=> b!2876947 (= e!1820495 (and tp!923836 tp!923837))))

(assert (= (and b!2876439 (is-ElementMatch!8742 (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) b!2876946))

(assert (= (and b!2876439 (is-Concat!14063 (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) b!2876947))

(assert (= (and b!2876439 (is-Star!8742 (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) b!2876948))

(assert (= (and b!2876439 (is-Union!8742 (regTwo!17996 (h!39814 (exprs!3202 c!7184))))) b!2876949))

(declare-fun e!1820496 () Bool)

(assert (=> b!2876442 (= tp!923804 e!1820496)))

(declare-fun b!2876953 () Bool)

(declare-fun tp!923839 () Bool)

(declare-fun tp!923840 () Bool)

(assert (=> b!2876953 (= e!1820496 (and tp!923839 tp!923840))))

(declare-fun b!2876952 () Bool)

(declare-fun tp!923838 () Bool)

(assert (=> b!2876952 (= e!1820496 tp!923838)))

(declare-fun b!2876950 () Bool)

(assert (=> b!2876950 (= e!1820496 tp_is_empty!15081)))

(declare-fun b!2876951 () Bool)

(declare-fun tp!923841 () Bool)

(declare-fun tp!923842 () Bool)

(assert (=> b!2876951 (= e!1820496 (and tp!923841 tp!923842))))

(assert (= (and b!2876442 (is-ElementMatch!8742 (h!39814 (t!233561 (exprs!3202 c!7184))))) b!2876950))

(assert (= (and b!2876442 (is-Concat!14063 (h!39814 (t!233561 (exprs!3202 c!7184))))) b!2876951))

(assert (= (and b!2876442 (is-Star!8742 (h!39814 (t!233561 (exprs!3202 c!7184))))) b!2876952))

(assert (= (and b!2876442 (is-Union!8742 (h!39814 (t!233561 (exprs!3202 c!7184))))) b!2876953))

(declare-fun b!2876954 () Bool)

(declare-fun e!1820497 () Bool)

(declare-fun tp!923843 () Bool)

(declare-fun tp!923844 () Bool)

(assert (=> b!2876954 (= e!1820497 (and tp!923843 tp!923844))))

(assert (=> b!2876442 (= tp!923805 e!1820497)))

(assert (= (and b!2876442 (is-Cons!34394 (t!233561 (t!233561 (exprs!3202 c!7184))))) b!2876954))

(declare-fun e!1820498 () Bool)

(assert (=> b!2876441 (= tp!923800 e!1820498)))

(declare-fun b!2876958 () Bool)

(declare-fun tp!923846 () Bool)

(declare-fun tp!923847 () Bool)

(assert (=> b!2876958 (= e!1820498 (and tp!923846 tp!923847))))

(declare-fun b!2876957 () Bool)

(declare-fun tp!923845 () Bool)

(assert (=> b!2876957 (= e!1820498 tp!923845)))

(declare-fun b!2876955 () Bool)

(assert (=> b!2876955 (= e!1820498 tp_is_empty!15081)))

(declare-fun b!2876956 () Bool)

(declare-fun tp!923848 () Bool)

(declare-fun tp!923849 () Bool)

(assert (=> b!2876956 (= e!1820498 (and tp!923848 tp!923849))))

(assert (= (and b!2876441 (is-ElementMatch!8742 (regOne!17997 (h!39814 (exprs!3202 c!7184))))) b!2876955))

(assert (= (and b!2876441 (is-Concat!14063 (regOne!17997 (h!39814 (exprs!3202 c!7184))))) b!2876956))

(assert (= (and b!2876441 (is-Star!8742 (regOne!17997 (h!39814 (exprs!3202 c!7184))))) b!2876957))

(assert (= (and b!2876441 (is-Union!8742 (regOne!17997 (h!39814 (exprs!3202 c!7184))))) b!2876958))

(declare-fun e!1820499 () Bool)

(assert (=> b!2876441 (= tp!923801 e!1820499)))

(declare-fun b!2876962 () Bool)

(declare-fun tp!923851 () Bool)

(declare-fun tp!923852 () Bool)

(assert (=> b!2876962 (= e!1820499 (and tp!923851 tp!923852))))

(declare-fun b!2876961 () Bool)

(declare-fun tp!923850 () Bool)

(assert (=> b!2876961 (= e!1820499 tp!923850)))

(declare-fun b!2876959 () Bool)

(assert (=> b!2876959 (= e!1820499 tp_is_empty!15081)))

(declare-fun b!2876960 () Bool)

(declare-fun tp!923853 () Bool)

(declare-fun tp!923854 () Bool)

(assert (=> b!2876960 (= e!1820499 (and tp!923853 tp!923854))))

(assert (= (and b!2876441 (is-ElementMatch!8742 (regTwo!17997 (h!39814 (exprs!3202 c!7184))))) b!2876959))

(assert (= (and b!2876441 (is-Concat!14063 (regTwo!17997 (h!39814 (exprs!3202 c!7184))))) b!2876960))

(assert (= (and b!2876441 (is-Star!8742 (regTwo!17997 (h!39814 (exprs!3202 c!7184))))) b!2876961))

(assert (= (and b!2876441 (is-Union!8742 (regTwo!17997 (h!39814 (exprs!3202 c!7184))))) b!2876962))

(declare-fun b_lambda!86171 () Bool)

(assert (= b_lambda!86169 (or d!831383 b_lambda!86171)))

(declare-fun bs!522830 () Bool)

(declare-fun d!831713 () Bool)

(assert (= bs!522830 (and d!831713 d!831383)))

(assert (=> bs!522830 (= (dynLambda!14318 lambda!107288 (h!39814 (exprs!3202 c!7184))) (not (dynLambda!14318 lambda!107270 (h!39814 (exprs!3202 c!7184)))))))

(declare-fun b_lambda!86179 () Bool)

(assert (=> (not b_lambda!86179) (not bs!522830)))

(declare-fun m!3294521 () Bool)

(assert (=> bs!522830 m!3294521))

(assert (=> b!2876924 d!831713))

(declare-fun b_lambda!86173 () Bool)

(assert (= b_lambda!86167 (or d!831331 b_lambda!86173)))

(declare-fun bs!522831 () Bool)

(declare-fun d!831715 () Bool)

(assert (= bs!522831 (and d!831715 d!831331)))

(assert (=> bs!522831 (= (dynLambda!14318 lambda!107265 (h!39814 (t!233561 (exprs!3202 lt!1018700)))) (validRegex!3520 (h!39814 (t!233561 (exprs!3202 lt!1018700)))))))

(declare-fun m!3294523 () Bool)

(assert (=> bs!522831 m!3294523))

(assert (=> b!2876913 d!831715))

(declare-fun b_lambda!86175 () Bool)

(assert (= b_lambda!86165 (or d!831339 b_lambda!86175)))

(declare-fun bs!522832 () Bool)

(declare-fun d!831717 () Bool)

(assert (= bs!522832 (and d!831717 d!831339)))

(assert (=> bs!522832 (= (dynLambda!14318 lambda!107271 (h!39814 (t!233561 (exprs!3202 c!7184)))) (validRegex!3520 (h!39814 (t!233561 (exprs!3202 c!7184)))))))

(declare-fun m!3294525 () Bool)

(assert (=> bs!522832 m!3294525))

(assert (=> b!2876855 d!831717))

(declare-fun b_lambda!86177 () Bool)

(assert (= b_lambda!86163 (or d!831475 b_lambda!86177)))

(declare-fun bs!522833 () Bool)

(declare-fun d!831719 () Bool)

(assert (= bs!522833 (and d!831719 d!831475)))

(assert (=> bs!522833 (= (dynLambda!14318 lambda!107305 (h!39814 (exprs!3202 lt!1018696))) (not (dynLambda!14318 lambda!107282 (h!39814 (exprs!3202 lt!1018696)))))))

(declare-fun b_lambda!86181 () Bool)

(assert (=> (not b_lambda!86181) (not bs!522833)))

(declare-fun m!3294527 () Bool)

(assert (=> bs!522833 m!3294527))

(assert (=> b!2876744 d!831719))

(push 1)

(assert (not b!2876573))

(assert (not d!831589))

(assert (not b!2876926))

(assert (not d!831581))

(assert (not bm!186234))

(assert (not b!2876830))

(assert (not b!2876728))

(assert (not d!831551))

(assert (not bm!186249))

(assert (not b!2876692))

(assert (not bm!186214))

(assert (not d!831663))

(assert (not b!2876755))

(assert (not bm!186194))

(assert (not b!2876596))

(assert (not b!2876957))

(assert (not b!2876650))

(assert (not b!2876581))

(assert (not b!2876958))

(assert (not bm!186200))

(assert (not b!2876947))

(assert (not bm!186231))

(assert (not b_lambda!86181))

(assert (not b!2876673))

(assert (not d!831665))

(assert (not bm!186218))

(assert (not d!831627))

(assert (not b!2876936))

(assert (not bm!186212))

(assert (not b!2876940))

(assert (not d!831657))

(assert (not bm!186209))

(assert (not d!831697))

(assert (not d!831571))

(assert (not b_lambda!86177))

(assert (not b!2876939))

(assert (not b!2876960))

(assert (not d!831605))

(assert (not b!2876709))

(assert (not bm!186204))

(assert (not d!831681))

(assert tp_is_empty!15081)

(assert (not d!831629))

(assert (not bm!186241))

(assert (not b!2876683))

(assert (not b!2876850))

(assert (not b!2876953))

(assert (not b!2876556))

(assert (not b!2876943))

(assert (not b!2876948))

(assert (not b!2876569))

(assert (not bm!186207))

(assert (not b!2876805))

(assert (not b!2876559))

(assert (not b!2876956))

(assert (not b!2876933))

(assert (not bm!186184))

(assert (not d!831641))

(assert (not b!2876560))

(assert (not b!2876907))

(assert (not b!2876951))

(assert (not b!2876735))

(assert (not b!2876869))

(assert (not b!2876555))

(assert (not b!2876848))

(assert (not bs!522831))

(assert (not bm!186191))

(assert (not b!2876961))

(assert (not b!2876739))

(assert (not b_lambda!86173))

(assert (not bm!186228))

(assert (not d!831595))

(assert (not bm!186198))

(assert (not b!2876665))

(assert (not d!831609))

(assert (not b!2876930))

(assert (not b!2876703))

(assert (not bm!186215))

(assert (not b!2876945))

(assert (not b!2876743))

(assert (not b!2876567))

(assert (not bs!522832))

(assert (not b!2876879))

(assert (not b!2876582))

(assert (not bm!186244))

(assert (not b!2876631))

(assert (not bm!186227))

(assert (not bm!186240))

(assert (not bm!186220))

(assert (not b!2876691))

(assert (not d!831613))

(assert (not b!2876891))

(assert (not b!2876625))

(assert (not b!2876814))

(assert (not b!2876927))

(assert (not b!2876915))

(assert (not bm!186252))

(assert (not d!831707))

(assert (not b!2876652))

(assert (not b!2876854))

(assert (not bm!186188))

(assert (not d!831631))

(assert (not b!2876818))

(assert (not b!2876962))

(assert (not b!2876745))

(assert (not b!2876574))

(assert (not b!2876781))

(assert (not b!2876576))

(assert (not bm!186197))

(assert (not b!2876852))

(assert (not b_lambda!86171))

(assert (not bm!186248))

(assert (not bm!186205))

(assert (not d!831557))

(assert (not b!2876782))

(assert (not bm!186221))

(assert (not b!2876952))

(assert (not d!831553))

(assert (not b!2876856))

(assert (not b!2876815))

(assert (not bm!186251))

(assert (not b!2876588))

(assert (not b!2876878))

(assert (not b!2876838))

(assert (not b_lambda!86179))

(assert (not b!2876621))

(assert (not d!831547))

(assert (not bm!186182))

(assert (not d!831677))

(assert (not d!831569))

(assert (not bm!186217))

(assert (not bm!186190))

(assert (not b!2876741))

(assert (not bm!186187))

(assert (not b!2876630))

(assert (not b!2876954))

(assert (not b!2876914))

(assert (not b!2876746))

(assert (not b!2876736))

(assert (not bm!186233))

(assert (not b!2876623))

(assert (not bm!186192))

(assert (not bm!186236))

(assert (not b!2876823))

(assert (not d!831685))

(assert (not d!831701))

(assert (not d!831703))

(assert (not d!831579))

(assert (not d!831705))

(assert (not b!2876572))

(assert (not bm!186185))

(assert (not b!2876816))

(assert (not bm!186226))

(assert (not b!2876774))

(assert (not bm!186229))

(assert (not bm!186237))

(assert (not bm!186201))

(assert (not b!2876622))

(assert (not b!2876615))

(assert (not bm!186250))

(assert (not b!2876654))

(assert (not d!831611))

(assert (not b!2876949))

(assert (not d!831623))

(assert (not b_lambda!86153))

(assert (not d!831699))

(assert (not b!2876859))

(assert (not b!2876937))

(assert (not bm!186247))

(assert (not b_lambda!86151))

(assert (not bm!186210))

(assert (not bm!186245))

(assert (not bm!186195))

(assert (not bm!186213))

(assert (not bm!186208))

(assert (not d!831683))

(assert (not d!831607))

(assert (not b!2876934))

(assert (not b!2876824))

(assert (not b!2876944))

(assert (not b!2876941))

(assert (not d!831675))

(assert (not b!2876637))

(assert (not b_lambda!86175))

(assert (not b!2876571))

(assert (not d!831567))

(assert (not b!2876853))

(assert (not b!2876925))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

