; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!701852 () Bool)

(assert start!701852)

(declare-fun b!7232643 () Bool)

(assert (=> b!7232643 true))

(declare-fun b!7232633 () Bool)

(declare-fun e!4335915 () Bool)

(declare-fun e!4335917 () Bool)

(assert (=> b!7232633 (= e!4335915 e!4335917)))

(declare-fun res!2934377 () Bool)

(assert (=> b!7232633 (=> (not res!2934377) (not e!4335917))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37276 0))(
  ( (C!37277 (val!28586 Int)) )
))
(declare-datatypes ((Regex!18501 0))(
  ( (ElementMatch!18501 (c!1341991 C!37276)) (Concat!27346 (regOne!37514 Regex!18501) (regTwo!37514 Regex!18501)) (EmptyExpr!18501) (Star!18501 (reg!18830 Regex!18501)) (EmptyLang!18501) (Union!18501 (regOne!37515 Regex!18501) (regTwo!37515 Regex!18501)) )
))
(declare-datatypes ((List!70111 0))(
  ( (Nil!69987) (Cons!69987 (h!76435 Regex!18501) (t!384160 List!70111)) )
))
(declare-datatypes ((Context!14882 0))(
  ( (Context!14883 (exprs!7941 List!70111)) )
))
(declare-fun lt!2573927 () (InoxSet Context!14882))

(declare-datatypes ((List!70112 0))(
  ( (Nil!69988) (Cons!69988 (h!76436 C!37276) (t!384161 List!70112)) )
))
(declare-fun s1!1971 () List!70112)

(declare-fun matchZipper!3411 ((InoxSet Context!14882) List!70112) Bool)

(assert (=> b!7232633 (= res!2934377 (matchZipper!3411 lt!2573927 (t!384161 s1!1971)))))

(declare-fun lt!2573920 () (InoxSet Context!14882))

(declare-fun derivationStepZipper!3293 ((InoxSet Context!14882) C!37276) (InoxSet Context!14882))

(assert (=> b!7232633 (= lt!2573927 (derivationStepZipper!3293 lt!2573920 (h!76436 s1!1971)))))

(declare-fun b!7232634 () Bool)

(declare-fun e!4335922 () Bool)

(assert (=> b!7232634 (= e!4335922 e!4335915)))

(declare-fun res!2934376 () Bool)

(assert (=> b!7232634 (=> (not res!2934376) (not e!4335915))))

(declare-fun ct1!232 () Context!14882)

(get-info :version)

(assert (=> b!7232634 (= res!2934376 (and (not ((_ is Nil!69987) (exprs!7941 ct1!232))) ((_ is Cons!69988) s1!1971)))))

(declare-fun lt!2573916 () List!70111)

(declare-fun ct2!328 () Context!14882)

(declare-fun ++!16302 (List!70111 List!70111) List!70111)

(assert (=> b!7232634 (= lt!2573916 (++!16302 (exprs!7941 ct1!232) (exprs!7941 ct2!328)))))

(declare-datatypes ((Unit!163539 0))(
  ( (Unit!163540) )
))
(declare-fun lt!2573925 () Unit!163539)

(declare-fun lambda!439588 () Int)

(declare-fun lemmaConcatPreservesForall!1310 (List!70111 List!70111 Int) Unit!163539)

(assert (=> b!7232634 (= lt!2573925 (lemmaConcatPreservesForall!1310 (exprs!7941 ct1!232) (exprs!7941 ct2!328) lambda!439588))))

(declare-fun b!7232635 () Bool)

(declare-fun e!4335916 () Bool)

(declare-fun e!4335914 () Bool)

(assert (=> b!7232635 (= e!4335916 e!4335914)))

(declare-fun res!2934380 () Bool)

(assert (=> b!7232635 (=> res!2934380 e!4335914)))

(declare-fun forall!17328 (List!70111 Int) Bool)

(assert (=> b!7232635 (= res!2934380 (not (forall!17328 (exprs!7941 ct1!232) lambda!439588)))))

(declare-fun lt!2573917 () (InoxSet Context!14882))

(declare-fun derivationStepZipperUp!2375 (Context!14882 C!37276) (InoxSet Context!14882))

(assert (=> b!7232635 (= lt!2573917 (derivationStepZipperUp!2375 (Context!14883 lt!2573916) (h!76436 s1!1971)))))

(declare-fun lt!2573922 () Unit!163539)

(assert (=> b!7232635 (= lt!2573922 (lemmaConcatPreservesForall!1310 (exprs!7941 ct1!232) (exprs!7941 ct2!328) lambda!439588))))

(declare-fun lt!2573923 () (InoxSet Context!14882))

(declare-fun derivationStepZipperDown!2545 (Regex!18501 Context!14882 C!37276) (InoxSet Context!14882))

(declare-fun tail!14122 (List!70111) List!70111)

(assert (=> b!7232635 (= lt!2573923 (derivationStepZipperDown!2545 (h!76435 (exprs!7941 ct1!232)) (Context!14883 (tail!14122 (exprs!7941 ct1!232))) (h!76436 s1!1971)))))

(declare-fun b!7232636 () Bool)

(assert (=> b!7232636 (= e!4335914 (forall!17328 (exprs!7941 ct2!328) lambda!439588))))

(declare-fun b!7232637 () Bool)

(declare-fun e!4335920 () Bool)

(assert (=> b!7232637 (= e!4335920 e!4335916)))

(declare-fun res!2934382 () Bool)

(assert (=> b!7232637 (=> res!2934382 e!4335916)))

(declare-fun isEmpty!40336 (List!70111) Bool)

(assert (=> b!7232637 (= res!2934382 (isEmpty!40336 (exprs!7941 ct1!232)))))

(declare-fun lt!2573928 () (InoxSet Context!14882))

(assert (=> b!7232637 (= lt!2573928 (derivationStepZipperUp!2375 ct1!232 (h!76436 s1!1971)))))

(declare-fun lt!2573919 () Context!14882)

(declare-fun lt!2573926 () Unit!163539)

(assert (=> b!7232637 (= lt!2573926 (lemmaConcatPreservesForall!1310 (exprs!7941 lt!2573919) (exprs!7941 ct2!328) lambda!439588))))

(declare-fun s2!1849 () List!70112)

(declare-fun ++!16303 (List!70112 List!70112) List!70112)

(assert (=> b!7232637 (matchZipper!3411 (store ((as const (Array Context!14882 Bool)) false) (Context!14883 (++!16302 (exprs!7941 lt!2573919) (exprs!7941 ct2!328))) true) (++!16303 (t!384161 s1!1971) s2!1849))))

(declare-fun lt!2573929 () Unit!163539)

(assert (=> b!7232637 (= lt!2573929 (lemmaConcatPreservesForall!1310 (exprs!7941 lt!2573919) (exprs!7941 ct2!328) lambda!439588))))

(declare-fun lt!2573918 () Unit!163539)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!292 (Context!14882 Context!14882 List!70112 List!70112) Unit!163539)

(assert (=> b!7232637 (= lt!2573918 (lemmaConcatenateContextMatchesConcatOfStrings!292 lt!2573919 ct2!328 (t!384161 s1!1971) s2!1849))))

(declare-fun lambda!439589 () Int)

(declare-fun getWitness!2020 ((InoxSet Context!14882) Int) Context!14882)

(assert (=> b!7232637 (= lt!2573919 (getWitness!2020 lt!2573927 lambda!439589))))

(declare-fun res!2934379 () Bool)

(assert (=> start!701852 (=> (not res!2934379) (not e!4335922))))

(assert (=> start!701852 (= res!2934379 (matchZipper!3411 lt!2573920 s1!1971))))

(assert (=> start!701852 (= lt!2573920 (store ((as const (Array Context!14882 Bool)) false) ct1!232 true))))

(assert (=> start!701852 e!4335922))

(declare-fun e!4335913 () Bool)

(declare-fun inv!89262 (Context!14882) Bool)

(assert (=> start!701852 (and (inv!89262 ct1!232) e!4335913)))

(declare-fun e!4335919 () Bool)

(assert (=> start!701852 e!4335919))

(declare-fun e!4335921 () Bool)

(assert (=> start!701852 e!4335921))

(declare-fun e!4335918 () Bool)

(assert (=> start!701852 (and (inv!89262 ct2!328) e!4335918)))

(declare-fun b!7232638 () Bool)

(declare-fun tp!2034080 () Bool)

(assert (=> b!7232638 (= e!4335918 tp!2034080)))

(declare-fun b!7232639 () Bool)

(declare-fun tp_is_empty!46467 () Bool)

(declare-fun tp!2034078 () Bool)

(assert (=> b!7232639 (= e!4335919 (and tp_is_empty!46467 tp!2034078))))

(declare-fun b!7232640 () Bool)

(declare-fun tp!2034079 () Bool)

(assert (=> b!7232640 (= e!4335921 (and tp_is_empty!46467 tp!2034079))))

(declare-fun b!7232641 () Bool)

(declare-fun tp!2034077 () Bool)

(assert (=> b!7232641 (= e!4335913 tp!2034077)))

(declare-fun b!7232642 () Bool)

(declare-fun res!2934381 () Bool)

(assert (=> b!7232642 (=> (not res!2934381) (not e!4335922))))

(assert (=> b!7232642 (= res!2934381 (matchZipper!3411 (store ((as const (Array Context!14882 Bool)) false) ct2!328 true) s2!1849))))

(assert (=> b!7232643 (= e!4335917 (not e!4335920))))

(declare-fun res!2934378 () Bool)

(assert (=> b!7232643 (=> res!2934378 e!4335920)))

(declare-fun exists!4145 ((InoxSet Context!14882) Int) Bool)

(assert (=> b!7232643 (= res!2934378 (not (exists!4145 lt!2573927 lambda!439589)))))

(declare-datatypes ((List!70113 0))(
  ( (Nil!69989) (Cons!69989 (h!76437 Context!14882) (t!384162 List!70113)) )
))
(declare-fun lt!2573924 () List!70113)

(declare-fun exists!4146 (List!70113 Int) Bool)

(assert (=> b!7232643 (exists!4146 lt!2573924 lambda!439589)))

(declare-fun lt!2573921 () Unit!163539)

(declare-fun lemmaZipperMatchesExistsMatchingContext!644 (List!70113 List!70112) Unit!163539)

(assert (=> b!7232643 (= lt!2573921 (lemmaZipperMatchesExistsMatchingContext!644 lt!2573924 (t!384161 s1!1971)))))

(declare-fun toList!11358 ((InoxSet Context!14882)) List!70113)

(assert (=> b!7232643 (= lt!2573924 (toList!11358 lt!2573927))))

(assert (= (and start!701852 res!2934379) b!7232642))

(assert (= (and b!7232642 res!2934381) b!7232634))

(assert (= (and b!7232634 res!2934376) b!7232633))

(assert (= (and b!7232633 res!2934377) b!7232643))

(assert (= (and b!7232643 (not res!2934378)) b!7232637))

(assert (= (and b!7232637 (not res!2934382)) b!7232635))

(assert (= (and b!7232635 (not res!2934380)) b!7232636))

(assert (= start!701852 b!7232641))

(assert (= (and start!701852 ((_ is Cons!69988) s1!1971)) b!7232639))

(assert (= (and start!701852 ((_ is Cons!69988) s2!1849)) b!7232640))

(assert (= start!701852 b!7232638))

(declare-fun m!7901964 () Bool)

(assert (=> b!7232634 m!7901964))

(declare-fun m!7901966 () Bool)

(assert (=> b!7232634 m!7901966))

(declare-fun m!7901968 () Bool)

(assert (=> b!7232633 m!7901968))

(declare-fun m!7901970 () Bool)

(assert (=> b!7232633 m!7901970))

(declare-fun m!7901972 () Bool)

(assert (=> start!701852 m!7901972))

(declare-fun m!7901974 () Bool)

(assert (=> start!701852 m!7901974))

(declare-fun m!7901976 () Bool)

(assert (=> start!701852 m!7901976))

(declare-fun m!7901978 () Bool)

(assert (=> start!701852 m!7901978))

(declare-fun m!7901980 () Bool)

(assert (=> b!7232635 m!7901980))

(declare-fun m!7901982 () Bool)

(assert (=> b!7232635 m!7901982))

(declare-fun m!7901984 () Bool)

(assert (=> b!7232635 m!7901984))

(declare-fun m!7901986 () Bool)

(assert (=> b!7232635 m!7901986))

(assert (=> b!7232635 m!7901966))

(declare-fun m!7901988 () Bool)

(assert (=> b!7232642 m!7901988))

(assert (=> b!7232642 m!7901988))

(declare-fun m!7901990 () Bool)

(assert (=> b!7232642 m!7901990))

(declare-fun m!7901992 () Bool)

(assert (=> b!7232636 m!7901992))

(declare-fun m!7901994 () Bool)

(assert (=> b!7232637 m!7901994))

(declare-fun m!7901996 () Bool)

(assert (=> b!7232637 m!7901996))

(declare-fun m!7901998 () Bool)

(assert (=> b!7232637 m!7901998))

(declare-fun m!7902000 () Bool)

(assert (=> b!7232637 m!7902000))

(declare-fun m!7902002 () Bool)

(assert (=> b!7232637 m!7902002))

(declare-fun m!7902004 () Bool)

(assert (=> b!7232637 m!7902004))

(assert (=> b!7232637 m!7902000))

(declare-fun m!7902006 () Bool)

(assert (=> b!7232637 m!7902006))

(declare-fun m!7902008 () Bool)

(assert (=> b!7232637 m!7902008))

(assert (=> b!7232637 m!7901994))

(assert (=> b!7232637 m!7902002))

(declare-fun m!7902010 () Bool)

(assert (=> b!7232637 m!7902010))

(declare-fun m!7902012 () Bool)

(assert (=> b!7232643 m!7902012))

(declare-fun m!7902014 () Bool)

(assert (=> b!7232643 m!7902014))

(declare-fun m!7902016 () Bool)

(assert (=> b!7232643 m!7902016))

(declare-fun m!7902018 () Bool)

(assert (=> b!7232643 m!7902018))

(check-sat (not b!7232635) (not b!7232641) (not b!7232643) (not b!7232636) (not b!7232639) (not b!7232640) (not b!7232638) (not b!7232634) (not start!701852) tp_is_empty!46467 (not b!7232637) (not b!7232633) (not b!7232642))
(check-sat)
(get-model)

(declare-fun d!2246337 () Bool)

(declare-fun e!4335932 () Bool)

(assert (=> d!2246337 e!4335932))

(declare-fun res!2934389 () Bool)

(assert (=> d!2246337 (=> (not res!2934389) (not e!4335932))))

(declare-fun lt!2573932 () Context!14882)

(declare-fun dynLambda!28527 (Int Context!14882) Bool)

(assert (=> d!2246337 (= res!2934389 (dynLambda!28527 lambda!439589 lt!2573932))))

(declare-fun getWitness!2021 (List!70113 Int) Context!14882)

(assert (=> d!2246337 (= lt!2573932 (getWitness!2021 (toList!11358 lt!2573927) lambda!439589))))

(assert (=> d!2246337 (exists!4145 lt!2573927 lambda!439589)))

(assert (=> d!2246337 (= (getWitness!2020 lt!2573927 lambda!439589) lt!2573932)))

(declare-fun b!7232658 () Bool)

(assert (=> b!7232658 (= e!4335932 (select lt!2573927 lt!2573932))))

(assert (= (and d!2246337 res!2934389) b!7232658))

(declare-fun b_lambda!277199 () Bool)

(assert (=> (not b_lambda!277199) (not d!2246337)))

(declare-fun m!7902032 () Bool)

(assert (=> d!2246337 m!7902032))

(assert (=> d!2246337 m!7902018))

(assert (=> d!2246337 m!7902018))

(declare-fun m!7902034 () Bool)

(assert (=> d!2246337 m!7902034))

(assert (=> d!2246337 m!7902012))

(declare-fun m!7902036 () Bool)

(assert (=> b!7232658 m!7902036))

(assert (=> b!7232637 d!2246337))

(declare-fun b!7232673 () Bool)

(declare-fun e!4335941 () List!70112)

(assert (=> b!7232673 (= e!4335941 s2!1849)))

(declare-fun b!7232675 () Bool)

(declare-fun res!2934397 () Bool)

(declare-fun e!4335940 () Bool)

(assert (=> b!7232675 (=> (not res!2934397) (not e!4335940))))

(declare-fun lt!2573935 () List!70112)

(declare-fun size!41560 (List!70112) Int)

(assert (=> b!7232675 (= res!2934397 (= (size!41560 lt!2573935) (+ (size!41560 (t!384161 s1!1971)) (size!41560 s2!1849))))))

(declare-fun d!2246341 () Bool)

(assert (=> d!2246341 e!4335940))

(declare-fun res!2934396 () Bool)

(assert (=> d!2246341 (=> (not res!2934396) (not e!4335940))))

(declare-fun content!14390 (List!70112) (InoxSet C!37276))

(assert (=> d!2246341 (= res!2934396 (= (content!14390 lt!2573935) ((_ map or) (content!14390 (t!384161 s1!1971)) (content!14390 s2!1849))))))

(assert (=> d!2246341 (= lt!2573935 e!4335941)))

(declare-fun c!1342000 () Bool)

(assert (=> d!2246341 (= c!1342000 ((_ is Nil!69988) (t!384161 s1!1971)))))

(assert (=> d!2246341 (= (++!16303 (t!384161 s1!1971) s2!1849) lt!2573935)))

(declare-fun b!7232674 () Bool)

(assert (=> b!7232674 (= e!4335941 (Cons!69988 (h!76436 (t!384161 s1!1971)) (++!16303 (t!384161 (t!384161 s1!1971)) s2!1849)))))

(declare-fun b!7232676 () Bool)

(assert (=> b!7232676 (= e!4335940 (or (not (= s2!1849 Nil!69988)) (= lt!2573935 (t!384161 s1!1971))))))

(assert (= (and d!2246341 c!1342000) b!7232673))

(assert (= (and d!2246341 (not c!1342000)) b!7232674))

(assert (= (and d!2246341 res!2934396) b!7232675))

(assert (= (and b!7232675 res!2934397) b!7232676))

(declare-fun m!7902056 () Bool)

(assert (=> b!7232675 m!7902056))

(declare-fun m!7902058 () Bool)

(assert (=> b!7232675 m!7902058))

(declare-fun m!7902060 () Bool)

(assert (=> b!7232675 m!7902060))

(declare-fun m!7902062 () Bool)

(assert (=> d!2246341 m!7902062))

(declare-fun m!7902064 () Bool)

(assert (=> d!2246341 m!7902064))

(declare-fun m!7902066 () Bool)

(assert (=> d!2246341 m!7902066))

(declare-fun m!7902068 () Bool)

(assert (=> b!7232674 m!7902068))

(assert (=> b!7232637 d!2246341))

(declare-fun d!2246349 () Bool)

(declare-fun c!1342009 () Bool)

(declare-fun e!4335956 () Bool)

(assert (=> d!2246349 (= c!1342009 e!4335956)))

(declare-fun res!2934406 () Bool)

(assert (=> d!2246349 (=> (not res!2934406) (not e!4335956))))

(assert (=> d!2246349 (= res!2934406 ((_ is Cons!69987) (exprs!7941 ct1!232)))))

(declare-fun e!4335954 () (InoxSet Context!14882))

(assert (=> d!2246349 (= (derivationStepZipperUp!2375 ct1!232 (h!76436 s1!1971)) e!4335954)))

(declare-fun b!7232699 () Bool)

(declare-fun e!4335955 () (InoxSet Context!14882))

(assert (=> b!7232699 (= e!4335954 e!4335955)))

(declare-fun c!1342008 () Bool)

(assert (=> b!7232699 (= c!1342008 ((_ is Cons!69987) (exprs!7941 ct1!232)))))

(declare-fun bm!658318 () Bool)

(declare-fun call!658323 () (InoxSet Context!14882))

(assert (=> bm!658318 (= call!658323 (derivationStepZipperDown!2545 (h!76435 (exprs!7941 ct1!232)) (Context!14883 (t!384160 (exprs!7941 ct1!232))) (h!76436 s1!1971)))))

(declare-fun b!7232700 () Bool)

(assert (=> b!7232700 (= e!4335955 call!658323)))

(declare-fun b!7232701 () Bool)

(assert (=> b!7232701 (= e!4335955 ((as const (Array Context!14882 Bool)) false))))

(declare-fun b!7232702 () Bool)

(declare-fun nullable!7817 (Regex!18501) Bool)

(assert (=> b!7232702 (= e!4335956 (nullable!7817 (h!76435 (exprs!7941 ct1!232))))))

(declare-fun b!7232703 () Bool)

(assert (=> b!7232703 (= e!4335954 ((_ map or) call!658323 (derivationStepZipperUp!2375 (Context!14883 (t!384160 (exprs!7941 ct1!232))) (h!76436 s1!1971))))))

(assert (= (and d!2246349 res!2934406) b!7232702))

(assert (= (and d!2246349 c!1342009) b!7232703))

(assert (= (and d!2246349 (not c!1342009)) b!7232699))

(assert (= (and b!7232699 c!1342008) b!7232700))

(assert (= (and b!7232699 (not c!1342008)) b!7232701))

(assert (= (or b!7232703 b!7232700) bm!658318))

(declare-fun m!7902088 () Bool)

(assert (=> bm!658318 m!7902088))

(declare-fun m!7902090 () Bool)

(assert (=> b!7232702 m!7902090))

(declare-fun m!7902092 () Bool)

(assert (=> b!7232703 m!7902092))

(assert (=> b!7232637 d!2246349))

(declare-fun d!2246355 () Bool)

(declare-fun c!1342016 () Bool)

(declare-fun isEmpty!40338 (List!70112) Bool)

(assert (=> d!2246355 (= c!1342016 (isEmpty!40338 (++!16303 (t!384161 s1!1971) s2!1849)))))

(declare-fun e!4335967 () Bool)

(assert (=> d!2246355 (= (matchZipper!3411 (store ((as const (Array Context!14882 Bool)) false) (Context!14883 (++!16302 (exprs!7941 lt!2573919) (exprs!7941 ct2!328))) true) (++!16303 (t!384161 s1!1971) s2!1849)) e!4335967)))

(declare-fun b!7232720 () Bool)

(declare-fun nullableZipper!2815 ((InoxSet Context!14882)) Bool)

(assert (=> b!7232720 (= e!4335967 (nullableZipper!2815 (store ((as const (Array Context!14882 Bool)) false) (Context!14883 (++!16302 (exprs!7941 lt!2573919) (exprs!7941 ct2!328))) true)))))

(declare-fun b!7232721 () Bool)

(declare-fun head!14803 (List!70112) C!37276)

(declare-fun tail!14124 (List!70112) List!70112)

(assert (=> b!7232721 (= e!4335967 (matchZipper!3411 (derivationStepZipper!3293 (store ((as const (Array Context!14882 Bool)) false) (Context!14883 (++!16302 (exprs!7941 lt!2573919) (exprs!7941 ct2!328))) true) (head!14803 (++!16303 (t!384161 s1!1971) s2!1849))) (tail!14124 (++!16303 (t!384161 s1!1971) s2!1849))))))

(assert (= (and d!2246355 c!1342016) b!7232720))

(assert (= (and d!2246355 (not c!1342016)) b!7232721))

(assert (=> d!2246355 m!7902002))

(declare-fun m!7902098 () Bool)

(assert (=> d!2246355 m!7902098))

(assert (=> b!7232720 m!7901994))

(declare-fun m!7902100 () Bool)

(assert (=> b!7232720 m!7902100))

(assert (=> b!7232721 m!7902002))

(declare-fun m!7902102 () Bool)

(assert (=> b!7232721 m!7902102))

(assert (=> b!7232721 m!7901994))

(assert (=> b!7232721 m!7902102))

(declare-fun m!7902104 () Bool)

(assert (=> b!7232721 m!7902104))

(assert (=> b!7232721 m!7902002))

(declare-fun m!7902106 () Bool)

(assert (=> b!7232721 m!7902106))

(assert (=> b!7232721 m!7902104))

(assert (=> b!7232721 m!7902106))

(declare-fun m!7902108 () Bool)

(assert (=> b!7232721 m!7902108))

(assert (=> b!7232637 d!2246355))

(declare-fun d!2246361 () Bool)

(assert (=> d!2246361 (forall!17328 (++!16302 (exprs!7941 lt!2573919) (exprs!7941 ct2!328)) lambda!439588)))

(declare-fun lt!2573944 () Unit!163539)

(declare-fun choose!55539 (List!70111 List!70111 Int) Unit!163539)

(assert (=> d!2246361 (= lt!2573944 (choose!55539 (exprs!7941 lt!2573919) (exprs!7941 ct2!328) lambda!439588))))

(assert (=> d!2246361 (forall!17328 (exprs!7941 lt!2573919) lambda!439588)))

(assert (=> d!2246361 (= (lemmaConcatPreservesForall!1310 (exprs!7941 lt!2573919) (exprs!7941 ct2!328) lambda!439588) lt!2573944)))

(declare-fun bs!1902829 () Bool)

(assert (= bs!1902829 d!2246361))

(assert (=> bs!1902829 m!7902006))

(assert (=> bs!1902829 m!7902006))

(declare-fun m!7902116 () Bool)

(assert (=> bs!1902829 m!7902116))

(declare-fun m!7902118 () Bool)

(assert (=> bs!1902829 m!7902118))

(declare-fun m!7902120 () Bool)

(assert (=> bs!1902829 m!7902120))

(assert (=> b!7232637 d!2246361))

(declare-fun d!2246365 () Bool)

(declare-fun e!4335988 () Bool)

(assert (=> d!2246365 e!4335988))

(declare-fun res!2934418 () Bool)

(assert (=> d!2246365 (=> (not res!2934418) (not e!4335988))))

(declare-fun lt!2573947 () List!70111)

(declare-fun content!14392 (List!70111) (InoxSet Regex!18501))

(assert (=> d!2246365 (= res!2934418 (= (content!14392 lt!2573947) ((_ map or) (content!14392 (exprs!7941 lt!2573919)) (content!14392 (exprs!7941 ct2!328)))))))

(declare-fun e!4335987 () List!70111)

(assert (=> d!2246365 (= lt!2573947 e!4335987)))

(declare-fun c!1342031 () Bool)

(assert (=> d!2246365 (= c!1342031 ((_ is Nil!69987) (exprs!7941 lt!2573919)))))

(assert (=> d!2246365 (= (++!16302 (exprs!7941 lt!2573919) (exprs!7941 ct2!328)) lt!2573947)))

(declare-fun b!7232759 () Bool)

(declare-fun res!2934419 () Bool)

(assert (=> b!7232759 (=> (not res!2934419) (not e!4335988))))

(declare-fun size!41562 (List!70111) Int)

(assert (=> b!7232759 (= res!2934419 (= (size!41562 lt!2573947) (+ (size!41562 (exprs!7941 lt!2573919)) (size!41562 (exprs!7941 ct2!328)))))))

(declare-fun b!7232757 () Bool)

(assert (=> b!7232757 (= e!4335987 (exprs!7941 ct2!328))))

(declare-fun b!7232758 () Bool)

(assert (=> b!7232758 (= e!4335987 (Cons!69987 (h!76435 (exprs!7941 lt!2573919)) (++!16302 (t!384160 (exprs!7941 lt!2573919)) (exprs!7941 ct2!328))))))

(declare-fun b!7232760 () Bool)

(assert (=> b!7232760 (= e!4335988 (or (not (= (exprs!7941 ct2!328) Nil!69987)) (= lt!2573947 (exprs!7941 lt!2573919))))))

(assert (= (and d!2246365 c!1342031) b!7232757))

(assert (= (and d!2246365 (not c!1342031)) b!7232758))

(assert (= (and d!2246365 res!2934418) b!7232759))

(assert (= (and b!7232759 res!2934419) b!7232760))

(declare-fun m!7902122 () Bool)

(assert (=> d!2246365 m!7902122))

(declare-fun m!7902124 () Bool)

(assert (=> d!2246365 m!7902124))

(declare-fun m!7902126 () Bool)

(assert (=> d!2246365 m!7902126))

(declare-fun m!7902128 () Bool)

(assert (=> b!7232759 m!7902128))

(declare-fun m!7902130 () Bool)

(assert (=> b!7232759 m!7902130))

(declare-fun m!7902132 () Bool)

(assert (=> b!7232759 m!7902132))

(declare-fun m!7902134 () Bool)

(assert (=> b!7232758 m!7902134))

(assert (=> b!7232637 d!2246365))

(declare-fun d!2246367 () Bool)

(assert (=> d!2246367 (= (isEmpty!40336 (exprs!7941 ct1!232)) ((_ is Nil!69987) (exprs!7941 ct1!232)))))

(assert (=> b!7232637 d!2246367))

(declare-fun bs!1902830 () Bool)

(declare-fun d!2246369 () Bool)

(assert (= bs!1902830 (and d!2246369 b!7232634)))

(declare-fun lambda!439597 () Int)

(assert (=> bs!1902830 (= lambda!439597 lambda!439588)))

(assert (=> d!2246369 (matchZipper!3411 (store ((as const (Array Context!14882 Bool)) false) (Context!14883 (++!16302 (exprs!7941 lt!2573919) (exprs!7941 ct2!328))) true) (++!16303 (t!384161 s1!1971) s2!1849))))

(declare-fun lt!2573953 () Unit!163539)

(assert (=> d!2246369 (= lt!2573953 (lemmaConcatPreservesForall!1310 (exprs!7941 lt!2573919) (exprs!7941 ct2!328) lambda!439597))))

(declare-fun lt!2573952 () Unit!163539)

(declare-fun choose!55540 (Context!14882 Context!14882 List!70112 List!70112) Unit!163539)

(assert (=> d!2246369 (= lt!2573952 (choose!55540 lt!2573919 ct2!328 (t!384161 s1!1971) s2!1849))))

(assert (=> d!2246369 (matchZipper!3411 (store ((as const (Array Context!14882 Bool)) false) lt!2573919 true) (t!384161 s1!1971))))

(assert (=> d!2246369 (= (lemmaConcatenateContextMatchesConcatOfStrings!292 lt!2573919 ct2!328 (t!384161 s1!1971) s2!1849) lt!2573952)))

(declare-fun bs!1902831 () Bool)

(assert (= bs!1902831 d!2246369))

(assert (=> bs!1902831 m!7902002))

(declare-fun m!7902158 () Bool)

(assert (=> bs!1902831 m!7902158))

(declare-fun m!7902160 () Bool)

(assert (=> bs!1902831 m!7902160))

(assert (=> bs!1902831 m!7902158))

(declare-fun m!7902162 () Bool)

(assert (=> bs!1902831 m!7902162))

(assert (=> bs!1902831 m!7901994))

(assert (=> bs!1902831 m!7902002))

(assert (=> bs!1902831 m!7902010))

(assert (=> bs!1902831 m!7901994))

(assert (=> bs!1902831 m!7902006))

(declare-fun m!7902166 () Bool)

(assert (=> bs!1902831 m!7902166))

(assert (=> b!7232637 d!2246369))

(declare-fun d!2246377 () Bool)

(declare-fun c!1342038 () Bool)

(assert (=> d!2246377 (= c!1342038 (isEmpty!40338 s2!1849))))

(declare-fun e!4335996 () Bool)

(assert (=> d!2246377 (= (matchZipper!3411 (store ((as const (Array Context!14882 Bool)) false) ct2!328 true) s2!1849) e!4335996)))

(declare-fun b!7232774 () Bool)

(assert (=> b!7232774 (= e!4335996 (nullableZipper!2815 (store ((as const (Array Context!14882 Bool)) false) ct2!328 true)))))

(declare-fun b!7232775 () Bool)

(assert (=> b!7232775 (= e!4335996 (matchZipper!3411 (derivationStepZipper!3293 (store ((as const (Array Context!14882 Bool)) false) ct2!328 true) (head!14803 s2!1849)) (tail!14124 s2!1849)))))

(assert (= (and d!2246377 c!1342038) b!7232774))

(assert (= (and d!2246377 (not c!1342038)) b!7232775))

(declare-fun m!7902170 () Bool)

(assert (=> d!2246377 m!7902170))

(assert (=> b!7232774 m!7901988))

(declare-fun m!7902172 () Bool)

(assert (=> b!7232774 m!7902172))

(declare-fun m!7902174 () Bool)

(assert (=> b!7232775 m!7902174))

(assert (=> b!7232775 m!7901988))

(assert (=> b!7232775 m!7902174))

(declare-fun m!7902176 () Bool)

(assert (=> b!7232775 m!7902176))

(declare-fun m!7902178 () Bool)

(assert (=> b!7232775 m!7902178))

(assert (=> b!7232775 m!7902176))

(assert (=> b!7232775 m!7902178))

(declare-fun m!7902180 () Bool)

(assert (=> b!7232775 m!7902180))

(assert (=> b!7232642 d!2246377))

(declare-fun d!2246381 () Bool)

(declare-fun res!2934425 () Bool)

(declare-fun e!4336001 () Bool)

(assert (=> d!2246381 (=> res!2934425 e!4336001)))

(assert (=> d!2246381 (= res!2934425 ((_ is Nil!69987) (exprs!7941 ct2!328)))))

(assert (=> d!2246381 (= (forall!17328 (exprs!7941 ct2!328) lambda!439588) e!4336001)))

(declare-fun b!7232780 () Bool)

(declare-fun e!4336002 () Bool)

(assert (=> b!7232780 (= e!4336001 e!4336002)))

(declare-fun res!2934426 () Bool)

(assert (=> b!7232780 (=> (not res!2934426) (not e!4336002))))

(declare-fun dynLambda!28529 (Int Regex!18501) Bool)

(assert (=> b!7232780 (= res!2934426 (dynLambda!28529 lambda!439588 (h!76435 (exprs!7941 ct2!328))))))

(declare-fun b!7232781 () Bool)

(assert (=> b!7232781 (= e!4336002 (forall!17328 (t!384160 (exprs!7941 ct2!328)) lambda!439588))))

(assert (= (and d!2246381 (not res!2934425)) b!7232780))

(assert (= (and b!7232780 res!2934426) b!7232781))

(declare-fun b_lambda!277205 () Bool)

(assert (=> (not b_lambda!277205) (not b!7232780)))

(declare-fun m!7902186 () Bool)

(assert (=> b!7232780 m!7902186))

(declare-fun m!7902188 () Bool)

(assert (=> b!7232781 m!7902188))

(assert (=> b!7232636 d!2246381))

(declare-fun d!2246385 () Bool)

(declare-fun c!1342039 () Bool)

(assert (=> d!2246385 (= c!1342039 (isEmpty!40338 (t!384161 s1!1971)))))

(declare-fun e!4336003 () Bool)

(assert (=> d!2246385 (= (matchZipper!3411 lt!2573927 (t!384161 s1!1971)) e!4336003)))

(declare-fun b!7232782 () Bool)

(assert (=> b!7232782 (= e!4336003 (nullableZipper!2815 lt!2573927))))

(declare-fun b!7232783 () Bool)

(assert (=> b!7232783 (= e!4336003 (matchZipper!3411 (derivationStepZipper!3293 lt!2573927 (head!14803 (t!384161 s1!1971))) (tail!14124 (t!384161 s1!1971))))))

(assert (= (and d!2246385 c!1342039) b!7232782))

(assert (= (and d!2246385 (not c!1342039)) b!7232783))

(declare-fun m!7902190 () Bool)

(assert (=> d!2246385 m!7902190))

(declare-fun m!7902192 () Bool)

(assert (=> b!7232782 m!7902192))

(declare-fun m!7902194 () Bool)

(assert (=> b!7232783 m!7902194))

(assert (=> b!7232783 m!7902194))

(declare-fun m!7902196 () Bool)

(assert (=> b!7232783 m!7902196))

(declare-fun m!7902198 () Bool)

(assert (=> b!7232783 m!7902198))

(assert (=> b!7232783 m!7902196))

(assert (=> b!7232783 m!7902198))

(declare-fun m!7902200 () Bool)

(assert (=> b!7232783 m!7902200))

(assert (=> b!7232633 d!2246385))

(declare-fun d!2246387 () Bool)

(assert (=> d!2246387 true))

(declare-fun lambda!439605 () Int)

(declare-fun flatMap!2707 ((InoxSet Context!14882) Int) (InoxSet Context!14882))

(assert (=> d!2246387 (= (derivationStepZipper!3293 lt!2573920 (h!76436 s1!1971)) (flatMap!2707 lt!2573920 lambda!439605))))

(declare-fun bs!1902840 () Bool)

(assert (= bs!1902840 d!2246387))

(declare-fun m!7902204 () Bool)

(assert (=> bs!1902840 m!7902204))

(assert (=> b!7232633 d!2246387))

(declare-fun d!2246391 () Bool)

(declare-fun c!1342042 () Bool)

(assert (=> d!2246391 (= c!1342042 (isEmpty!40338 s1!1971))))

(declare-fun e!4336004 () Bool)

(assert (=> d!2246391 (= (matchZipper!3411 lt!2573920 s1!1971) e!4336004)))

(declare-fun b!7232788 () Bool)

(assert (=> b!7232788 (= e!4336004 (nullableZipper!2815 lt!2573920))))

(declare-fun b!7232789 () Bool)

(assert (=> b!7232789 (= e!4336004 (matchZipper!3411 (derivationStepZipper!3293 lt!2573920 (head!14803 s1!1971)) (tail!14124 s1!1971)))))

(assert (= (and d!2246391 c!1342042) b!7232788))

(assert (= (and d!2246391 (not c!1342042)) b!7232789))

(declare-fun m!7902206 () Bool)

(assert (=> d!2246391 m!7902206))

(declare-fun m!7902208 () Bool)

(assert (=> b!7232788 m!7902208))

(declare-fun m!7902210 () Bool)

(assert (=> b!7232789 m!7902210))

(assert (=> b!7232789 m!7902210))

(declare-fun m!7902212 () Bool)

(assert (=> b!7232789 m!7902212))

(declare-fun m!7902214 () Bool)

(assert (=> b!7232789 m!7902214))

(assert (=> b!7232789 m!7902212))

(assert (=> b!7232789 m!7902214))

(declare-fun m!7902216 () Bool)

(assert (=> b!7232789 m!7902216))

(assert (=> start!701852 d!2246391))

(declare-fun bs!1902841 () Bool)

(declare-fun d!2246393 () Bool)

(assert (= bs!1902841 (and d!2246393 b!7232634)))

(declare-fun lambda!439608 () Int)

(assert (=> bs!1902841 (= lambda!439608 lambda!439588)))

(declare-fun bs!1902842 () Bool)

(assert (= bs!1902842 (and d!2246393 d!2246369)))

(assert (=> bs!1902842 (= lambda!439608 lambda!439597)))

(assert (=> d!2246393 (= (inv!89262 ct1!232) (forall!17328 (exprs!7941 ct1!232) lambda!439608))))

(declare-fun bs!1902843 () Bool)

(assert (= bs!1902843 d!2246393))

(declare-fun m!7902218 () Bool)

(assert (=> bs!1902843 m!7902218))

(assert (=> start!701852 d!2246393))

(declare-fun bs!1902844 () Bool)

(declare-fun d!2246395 () Bool)

(assert (= bs!1902844 (and d!2246395 b!7232634)))

(declare-fun lambda!439609 () Int)

(assert (=> bs!1902844 (= lambda!439609 lambda!439588)))

(declare-fun bs!1902845 () Bool)

(assert (= bs!1902845 (and d!2246395 d!2246369)))

(assert (=> bs!1902845 (= lambda!439609 lambda!439597)))

(declare-fun bs!1902846 () Bool)

(assert (= bs!1902846 (and d!2246395 d!2246393)))

(assert (=> bs!1902846 (= lambda!439609 lambda!439608)))

(assert (=> d!2246395 (= (inv!89262 ct2!328) (forall!17328 (exprs!7941 ct2!328) lambda!439609))))

(declare-fun bs!1902847 () Bool)

(assert (= bs!1902847 d!2246395))

(declare-fun m!7902220 () Bool)

(assert (=> bs!1902847 m!7902220))

(assert (=> start!701852 d!2246395))

(declare-fun d!2246397 () Bool)

(declare-fun lt!2573962 () Bool)

(assert (=> d!2246397 (= lt!2573962 (exists!4146 (toList!11358 lt!2573927) lambda!439589))))

(declare-fun choose!55543 ((InoxSet Context!14882) Int) Bool)

(assert (=> d!2246397 (= lt!2573962 (choose!55543 lt!2573927 lambda!439589))))

(assert (=> d!2246397 (= (exists!4145 lt!2573927 lambda!439589) lt!2573962)))

(declare-fun bs!1902851 () Bool)

(assert (= bs!1902851 d!2246397))

(assert (=> bs!1902851 m!7902018))

(assert (=> bs!1902851 m!7902018))

(declare-fun m!7902228 () Bool)

(assert (=> bs!1902851 m!7902228))

(declare-fun m!7902232 () Bool)

(assert (=> bs!1902851 m!7902232))

(assert (=> b!7232643 d!2246397))

(declare-fun bs!1902852 () Bool)

(declare-fun d!2246401 () Bool)

(assert (= bs!1902852 (and d!2246401 b!7232643)))

(declare-fun lambda!439615 () Int)

(assert (=> bs!1902852 (not (= lambda!439615 lambda!439589))))

(assert (=> d!2246401 true))

(declare-fun order!28829 () Int)

(declare-fun dynLambda!28531 (Int Int) Int)

(assert (=> d!2246401 (< (dynLambda!28531 order!28829 lambda!439589) (dynLambda!28531 order!28829 lambda!439615))))

(declare-fun forall!17330 (List!70113 Int) Bool)

(assert (=> d!2246401 (= (exists!4146 lt!2573924 lambda!439589) (not (forall!17330 lt!2573924 lambda!439615)))))

(declare-fun bs!1902853 () Bool)

(assert (= bs!1902853 d!2246401))

(declare-fun m!7902234 () Bool)

(assert (=> bs!1902853 m!7902234))

(assert (=> b!7232643 d!2246401))

(declare-fun bs!1902854 () Bool)

(declare-fun d!2246403 () Bool)

(assert (= bs!1902854 (and d!2246403 b!7232643)))

(declare-fun lambda!439618 () Int)

(assert (=> bs!1902854 (= lambda!439618 lambda!439589)))

(declare-fun bs!1902855 () Bool)

(assert (= bs!1902855 (and d!2246403 d!2246401)))

(assert (=> bs!1902855 (not (= lambda!439618 lambda!439615))))

(assert (=> d!2246403 true))

(assert (=> d!2246403 (exists!4146 lt!2573924 lambda!439618)))

(declare-fun lt!2573968 () Unit!163539)

(declare-fun choose!55545 (List!70113 List!70112) Unit!163539)

(assert (=> d!2246403 (= lt!2573968 (choose!55545 lt!2573924 (t!384161 s1!1971)))))

(declare-fun content!14394 (List!70113) (InoxSet Context!14882))

(assert (=> d!2246403 (matchZipper!3411 (content!14394 lt!2573924) (t!384161 s1!1971))))

(assert (=> d!2246403 (= (lemmaZipperMatchesExistsMatchingContext!644 lt!2573924 (t!384161 s1!1971)) lt!2573968)))

(declare-fun bs!1902856 () Bool)

(assert (= bs!1902856 d!2246403))

(declare-fun m!7902242 () Bool)

(assert (=> bs!1902856 m!7902242))

(declare-fun m!7902244 () Bool)

(assert (=> bs!1902856 m!7902244))

(declare-fun m!7902246 () Bool)

(assert (=> bs!1902856 m!7902246))

(assert (=> bs!1902856 m!7902246))

(declare-fun m!7902248 () Bool)

(assert (=> bs!1902856 m!7902248))

(assert (=> b!7232643 d!2246403))

(declare-fun d!2246409 () Bool)

(declare-fun e!4336010 () Bool)

(assert (=> d!2246409 e!4336010))

(declare-fun res!2934432 () Bool)

(assert (=> d!2246409 (=> (not res!2934432) (not e!4336010))))

(declare-fun lt!2573975 () List!70113)

(declare-fun noDuplicate!2925 (List!70113) Bool)

(assert (=> d!2246409 (= res!2934432 (noDuplicate!2925 lt!2573975))))

(declare-fun choose!55547 ((InoxSet Context!14882)) List!70113)

(assert (=> d!2246409 (= lt!2573975 (choose!55547 lt!2573927))))

(assert (=> d!2246409 (= (toList!11358 lt!2573927) lt!2573975)))

(declare-fun b!7232797 () Bool)

(assert (=> b!7232797 (= e!4336010 (= (content!14394 lt!2573975) lt!2573927))))

(assert (= (and d!2246409 res!2934432) b!7232797))

(declare-fun m!7902250 () Bool)

(assert (=> d!2246409 m!7902250))

(declare-fun m!7902252 () Bool)

(assert (=> d!2246409 m!7902252))

(declare-fun m!7902254 () Bool)

(assert (=> b!7232797 m!7902254))

(assert (=> b!7232643 d!2246409))

(declare-fun d!2246411 () Bool)

(declare-fun e!4336012 () Bool)

(assert (=> d!2246411 e!4336012))

(declare-fun res!2934433 () Bool)

(assert (=> d!2246411 (=> (not res!2934433) (not e!4336012))))

(declare-fun lt!2573978 () List!70111)

(assert (=> d!2246411 (= res!2934433 (= (content!14392 lt!2573978) ((_ map or) (content!14392 (exprs!7941 ct1!232)) (content!14392 (exprs!7941 ct2!328)))))))

(declare-fun e!4336011 () List!70111)

(assert (=> d!2246411 (= lt!2573978 e!4336011)))

(declare-fun c!1342047 () Bool)

(assert (=> d!2246411 (= c!1342047 ((_ is Nil!69987) (exprs!7941 ct1!232)))))

(assert (=> d!2246411 (= (++!16302 (exprs!7941 ct1!232) (exprs!7941 ct2!328)) lt!2573978)))

(declare-fun b!7232800 () Bool)

(declare-fun res!2934434 () Bool)

(assert (=> b!7232800 (=> (not res!2934434) (not e!4336012))))

(assert (=> b!7232800 (= res!2934434 (= (size!41562 lt!2573978) (+ (size!41562 (exprs!7941 ct1!232)) (size!41562 (exprs!7941 ct2!328)))))))

(declare-fun b!7232798 () Bool)

(assert (=> b!7232798 (= e!4336011 (exprs!7941 ct2!328))))

(declare-fun b!7232799 () Bool)

(assert (=> b!7232799 (= e!4336011 (Cons!69987 (h!76435 (exprs!7941 ct1!232)) (++!16302 (t!384160 (exprs!7941 ct1!232)) (exprs!7941 ct2!328))))))

(declare-fun b!7232801 () Bool)

(assert (=> b!7232801 (= e!4336012 (or (not (= (exprs!7941 ct2!328) Nil!69987)) (= lt!2573978 (exprs!7941 ct1!232))))))

(assert (= (and d!2246411 c!1342047) b!7232798))

(assert (= (and d!2246411 (not c!1342047)) b!7232799))

(assert (= (and d!2246411 res!2934433) b!7232800))

(assert (= (and b!7232800 res!2934434) b!7232801))

(declare-fun m!7902256 () Bool)

(assert (=> d!2246411 m!7902256))

(declare-fun m!7902258 () Bool)

(assert (=> d!2246411 m!7902258))

(assert (=> d!2246411 m!7902126))

(declare-fun m!7902260 () Bool)

(assert (=> b!7232800 m!7902260))

(declare-fun m!7902262 () Bool)

(assert (=> b!7232800 m!7902262))

(assert (=> b!7232800 m!7902132))

(declare-fun m!7902264 () Bool)

(assert (=> b!7232799 m!7902264))

(assert (=> b!7232634 d!2246411))

(declare-fun d!2246413 () Bool)

(assert (=> d!2246413 (forall!17328 (++!16302 (exprs!7941 ct1!232) (exprs!7941 ct2!328)) lambda!439588)))

(declare-fun lt!2573979 () Unit!163539)

(assert (=> d!2246413 (= lt!2573979 (choose!55539 (exprs!7941 ct1!232) (exprs!7941 ct2!328) lambda!439588))))

(assert (=> d!2246413 (forall!17328 (exprs!7941 ct1!232) lambda!439588)))

(assert (=> d!2246413 (= (lemmaConcatPreservesForall!1310 (exprs!7941 ct1!232) (exprs!7941 ct2!328) lambda!439588) lt!2573979)))

(declare-fun bs!1902861 () Bool)

(assert (= bs!1902861 d!2246413))

(assert (=> bs!1902861 m!7901964))

(assert (=> bs!1902861 m!7901964))

(declare-fun m!7902268 () Bool)

(assert (=> bs!1902861 m!7902268))

(declare-fun m!7902272 () Bool)

(assert (=> bs!1902861 m!7902272))

(assert (=> bs!1902861 m!7901982))

(assert (=> b!7232634 d!2246413))

(declare-fun d!2246415 () Bool)

(assert (=> d!2246415 (= (tail!14122 (exprs!7941 ct1!232)) (t!384160 (exprs!7941 ct1!232)))))

(assert (=> b!7232635 d!2246415))

(assert (=> b!7232635 d!2246413))

(declare-fun d!2246419 () Bool)

(declare-fun c!1342050 () Bool)

(declare-fun e!4336017 () Bool)

(assert (=> d!2246419 (= c!1342050 e!4336017)))

(declare-fun res!2934437 () Bool)

(assert (=> d!2246419 (=> (not res!2934437) (not e!4336017))))

(assert (=> d!2246419 (= res!2934437 ((_ is Cons!69987) (exprs!7941 (Context!14883 lt!2573916))))))

(declare-fun e!4336015 () (InoxSet Context!14882))

(assert (=> d!2246419 (= (derivationStepZipperUp!2375 (Context!14883 lt!2573916) (h!76436 s1!1971)) e!4336015)))

(declare-fun b!7232806 () Bool)

(declare-fun e!4336016 () (InoxSet Context!14882))

(assert (=> b!7232806 (= e!4336015 e!4336016)))

(declare-fun c!1342049 () Bool)

(assert (=> b!7232806 (= c!1342049 ((_ is Cons!69987) (exprs!7941 (Context!14883 lt!2573916))))))

(declare-fun bm!658340 () Bool)

(declare-fun call!658345 () (InoxSet Context!14882))

(assert (=> bm!658340 (= call!658345 (derivationStepZipperDown!2545 (h!76435 (exprs!7941 (Context!14883 lt!2573916))) (Context!14883 (t!384160 (exprs!7941 (Context!14883 lt!2573916)))) (h!76436 s1!1971)))))

(declare-fun b!7232807 () Bool)

(assert (=> b!7232807 (= e!4336016 call!658345)))

(declare-fun b!7232808 () Bool)

(assert (=> b!7232808 (= e!4336016 ((as const (Array Context!14882 Bool)) false))))

(declare-fun b!7232809 () Bool)

(assert (=> b!7232809 (= e!4336017 (nullable!7817 (h!76435 (exprs!7941 (Context!14883 lt!2573916)))))))

(declare-fun b!7232810 () Bool)

(assert (=> b!7232810 (= e!4336015 ((_ map or) call!658345 (derivationStepZipperUp!2375 (Context!14883 (t!384160 (exprs!7941 (Context!14883 lt!2573916)))) (h!76436 s1!1971))))))

(assert (= (and d!2246419 res!2934437) b!7232809))

(assert (= (and d!2246419 c!1342050) b!7232810))

(assert (= (and d!2246419 (not c!1342050)) b!7232806))

(assert (= (and b!7232806 c!1342049) b!7232807))

(assert (= (and b!7232806 (not c!1342049)) b!7232808))

(assert (= (or b!7232810 b!7232807) bm!658340))

(declare-fun m!7902288 () Bool)

(assert (=> bm!658340 m!7902288))

(declare-fun m!7902290 () Bool)

(assert (=> b!7232809 m!7902290))

(declare-fun m!7902292 () Bool)

(assert (=> b!7232810 m!7902292))

(assert (=> b!7232635 d!2246419))

(declare-fun d!2246423 () Bool)

(declare-fun res!2934438 () Bool)

(declare-fun e!4336019 () Bool)

(assert (=> d!2246423 (=> res!2934438 e!4336019)))

(assert (=> d!2246423 (= res!2934438 ((_ is Nil!69987) (exprs!7941 ct1!232)))))

(assert (=> d!2246423 (= (forall!17328 (exprs!7941 ct1!232) lambda!439588) e!4336019)))

(declare-fun b!7232813 () Bool)

(declare-fun e!4336020 () Bool)

(assert (=> b!7232813 (= e!4336019 e!4336020)))

(declare-fun res!2934439 () Bool)

(assert (=> b!7232813 (=> (not res!2934439) (not e!4336020))))

(assert (=> b!7232813 (= res!2934439 (dynLambda!28529 lambda!439588 (h!76435 (exprs!7941 ct1!232))))))

(declare-fun b!7232814 () Bool)

(assert (=> b!7232814 (= e!4336020 (forall!17328 (t!384160 (exprs!7941 ct1!232)) lambda!439588))))

(assert (= (and d!2246423 (not res!2934438)) b!7232813))

(assert (= (and b!7232813 res!2934439) b!7232814))

(declare-fun b_lambda!277207 () Bool)

(assert (=> (not b_lambda!277207) (not b!7232813)))

(declare-fun m!7902306 () Bool)

(assert (=> b!7232813 m!7902306))

(declare-fun m!7902308 () Bool)

(assert (=> b!7232814 m!7902308))

(assert (=> b!7232635 d!2246423))

(declare-fun c!1342071 () Bool)

(declare-fun c!1342067 () Bool)

(declare-fun call!658362 () (InoxSet Context!14882))

(declare-fun bm!658354 () Bool)

(declare-fun call!658360 () List!70111)

(declare-fun c!1342068 () Bool)

(assert (=> bm!658354 (= call!658362 (derivationStepZipperDown!2545 (ite c!1342067 (regOne!37515 (h!76435 (exprs!7941 ct1!232))) (ite c!1342071 (regTwo!37514 (h!76435 (exprs!7941 ct1!232))) (ite c!1342068 (regOne!37514 (h!76435 (exprs!7941 ct1!232))) (reg!18830 (h!76435 (exprs!7941 ct1!232)))))) (ite (or c!1342067 c!1342071) (Context!14883 (tail!14122 (exprs!7941 ct1!232))) (Context!14883 call!658360)) (h!76436 s1!1971)))))

(declare-fun b!7232869 () Bool)

(declare-fun e!4336056 () (InoxSet Context!14882))

(assert (=> b!7232869 (= e!4336056 (store ((as const (Array Context!14882 Bool)) false) (Context!14883 (tail!14122 (exprs!7941 ct1!232))) true))))

(declare-fun b!7232870 () Bool)

(declare-fun e!4336054 () (InoxSet Context!14882))

(assert (=> b!7232870 (= e!4336054 ((as const (Array Context!14882 Bool)) false))))

(declare-fun b!7232871 () Bool)

(declare-fun e!4336053 () (InoxSet Context!14882))

(declare-fun e!4336055 () (InoxSet Context!14882))

(assert (=> b!7232871 (= e!4336053 e!4336055)))

(assert (=> b!7232871 (= c!1342068 ((_ is Concat!27346) (h!76435 (exprs!7941 ct1!232))))))

(declare-fun b!7232873 () Bool)

(declare-fun e!4336057 () Bool)

(assert (=> b!7232873 (= c!1342071 e!4336057)))

(declare-fun res!2934452 () Bool)

(assert (=> b!7232873 (=> (not res!2934452) (not e!4336057))))

(assert (=> b!7232873 (= res!2934452 ((_ is Concat!27346) (h!76435 (exprs!7941 ct1!232))))))

(declare-fun e!4336058 () (InoxSet Context!14882))

(assert (=> b!7232873 (= e!4336058 e!4336053)))

(declare-fun call!658359 () List!70111)

(declare-fun call!658361 () (InoxSet Context!14882))

(declare-fun bm!658355 () Bool)

(assert (=> bm!658355 (= call!658361 (derivationStepZipperDown!2545 (ite c!1342067 (regTwo!37515 (h!76435 (exprs!7941 ct1!232))) (regOne!37514 (h!76435 (exprs!7941 ct1!232)))) (ite c!1342067 (Context!14883 (tail!14122 (exprs!7941 ct1!232))) (Context!14883 call!658359)) (h!76436 s1!1971)))))

(declare-fun bm!658356 () Bool)

(assert (=> bm!658356 (= call!658360 call!658359)))

(declare-fun b!7232874 () Bool)

(assert (=> b!7232874 (= e!4336058 ((_ map or) call!658362 call!658361))))

(declare-fun b!7232875 () Bool)

(declare-fun call!658364 () (InoxSet Context!14882))

(assert (=> b!7232875 (= e!4336053 ((_ map or) call!658361 call!658364))))

(declare-fun b!7232876 () Bool)

(assert (=> b!7232876 (= e!4336057 (nullable!7817 (regOne!37514 (h!76435 (exprs!7941 ct1!232)))))))

(declare-fun b!7232877 () Bool)

(declare-fun call!658363 () (InoxSet Context!14882))

(assert (=> b!7232877 (= e!4336054 call!658363)))

(declare-fun bm!658357 () Bool)

(assert (=> bm!658357 (= call!658363 call!658364)))

(declare-fun b!7232872 () Bool)

(assert (=> b!7232872 (= e!4336056 e!4336058)))

(assert (=> b!7232872 (= c!1342067 ((_ is Union!18501) (h!76435 (exprs!7941 ct1!232))))))

(declare-fun d!2246427 () Bool)

(declare-fun c!1342070 () Bool)

(assert (=> d!2246427 (= c!1342070 (and ((_ is ElementMatch!18501) (h!76435 (exprs!7941 ct1!232))) (= (c!1341991 (h!76435 (exprs!7941 ct1!232))) (h!76436 s1!1971))))))

(assert (=> d!2246427 (= (derivationStepZipperDown!2545 (h!76435 (exprs!7941 ct1!232)) (Context!14883 (tail!14122 (exprs!7941 ct1!232))) (h!76436 s1!1971)) e!4336056)))

(declare-fun b!7232878 () Bool)

(assert (=> b!7232878 (= e!4336055 call!658363)))

(declare-fun bm!658358 () Bool)

(declare-fun $colon$colon!2862 (List!70111 Regex!18501) List!70111)

(assert (=> bm!658358 (= call!658359 ($colon$colon!2862 (exprs!7941 (Context!14883 (tail!14122 (exprs!7941 ct1!232)))) (ite (or c!1342071 c!1342068) (regTwo!37514 (h!76435 (exprs!7941 ct1!232))) (h!76435 (exprs!7941 ct1!232)))))))

(declare-fun bm!658359 () Bool)

(assert (=> bm!658359 (= call!658364 call!658362)))

(declare-fun b!7232879 () Bool)

(declare-fun c!1342069 () Bool)

(assert (=> b!7232879 (= c!1342069 ((_ is Star!18501) (h!76435 (exprs!7941 ct1!232))))))

(assert (=> b!7232879 (= e!4336055 e!4336054)))

(assert (= (and d!2246427 c!1342070) b!7232869))

(assert (= (and d!2246427 (not c!1342070)) b!7232872))

(assert (= (and b!7232872 c!1342067) b!7232874))

(assert (= (and b!7232872 (not c!1342067)) b!7232873))

(assert (= (and b!7232873 res!2934452) b!7232876))

(assert (= (and b!7232873 c!1342071) b!7232875))

(assert (= (and b!7232873 (not c!1342071)) b!7232871))

(assert (= (and b!7232871 c!1342068) b!7232878))

(assert (= (and b!7232871 (not c!1342068)) b!7232879))

(assert (= (and b!7232879 c!1342069) b!7232877))

(assert (= (and b!7232879 (not c!1342069)) b!7232870))

(assert (= (or b!7232878 b!7232877) bm!658356))

(assert (= (or b!7232878 b!7232877) bm!658357))

(assert (= (or b!7232875 bm!658356) bm!658358))

(assert (= (or b!7232875 bm!658357) bm!658359))

(assert (= (or b!7232874 b!7232875) bm!658355))

(assert (= (or b!7232874 bm!658359) bm!658354))

(declare-fun m!7902350 () Bool)

(assert (=> bm!658355 m!7902350))

(declare-fun m!7902352 () Bool)

(assert (=> b!7232876 m!7902352))

(declare-fun m!7902354 () Bool)

(assert (=> bm!658354 m!7902354))

(declare-fun m!7902356 () Bool)

(assert (=> bm!658358 m!7902356))

(declare-fun m!7902358 () Bool)

(assert (=> b!7232869 m!7902358))

(assert (=> b!7232635 d!2246427))

(declare-fun b!7232884 () Bool)

(declare-fun e!4336061 () Bool)

(declare-fun tp!2034097 () Bool)

(declare-fun tp!2034098 () Bool)

(assert (=> b!7232884 (= e!4336061 (and tp!2034097 tp!2034098))))

(assert (=> b!7232638 (= tp!2034080 e!4336061)))

(assert (= (and b!7232638 ((_ is Cons!69987) (exprs!7941 ct2!328))) b!7232884))

(declare-fun b!7232889 () Bool)

(declare-fun e!4336064 () Bool)

(declare-fun tp!2034101 () Bool)

(assert (=> b!7232889 (= e!4336064 (and tp_is_empty!46467 tp!2034101))))

(assert (=> b!7232639 (= tp!2034078 e!4336064)))

(assert (= (and b!7232639 ((_ is Cons!69988) (t!384161 s1!1971))) b!7232889))

(declare-fun b!7232890 () Bool)

(declare-fun e!4336065 () Bool)

(declare-fun tp!2034102 () Bool)

(declare-fun tp!2034103 () Bool)

(assert (=> b!7232890 (= e!4336065 (and tp!2034102 tp!2034103))))

(assert (=> b!7232641 (= tp!2034077 e!4336065)))

(assert (= (and b!7232641 ((_ is Cons!69987) (exprs!7941 ct1!232))) b!7232890))

(declare-fun b!7232891 () Bool)

(declare-fun e!4336066 () Bool)

(declare-fun tp!2034104 () Bool)

(assert (=> b!7232891 (= e!4336066 (and tp_is_empty!46467 tp!2034104))))

(assert (=> b!7232640 (= tp!2034079 e!4336066)))

(assert (= (and b!7232640 ((_ is Cons!69988) (t!384161 s2!1849))) b!7232891))

(declare-fun b_lambda!277217 () Bool)

(assert (= b_lambda!277207 (or b!7232634 b_lambda!277217)))

(declare-fun bs!1902866 () Bool)

(declare-fun d!2246441 () Bool)

(assert (= bs!1902866 (and d!2246441 b!7232634)))

(declare-fun validRegex!9513 (Regex!18501) Bool)

(assert (=> bs!1902866 (= (dynLambda!28529 lambda!439588 (h!76435 (exprs!7941 ct1!232))) (validRegex!9513 (h!76435 (exprs!7941 ct1!232))))))

(declare-fun m!7902360 () Bool)

(assert (=> bs!1902866 m!7902360))

(assert (=> b!7232813 d!2246441))

(declare-fun b_lambda!277219 () Bool)

(assert (= b_lambda!277205 (or b!7232634 b_lambda!277219)))

(declare-fun bs!1902867 () Bool)

(declare-fun d!2246443 () Bool)

(assert (= bs!1902867 (and d!2246443 b!7232634)))

(assert (=> bs!1902867 (= (dynLambda!28529 lambda!439588 (h!76435 (exprs!7941 ct2!328))) (validRegex!9513 (h!76435 (exprs!7941 ct2!328))))))

(declare-fun m!7902362 () Bool)

(assert (=> bs!1902867 m!7902362))

(assert (=> b!7232780 d!2246443))

(declare-fun b_lambda!277221 () Bool)

(assert (= b_lambda!277199 (or b!7232643 b_lambda!277221)))

(declare-fun bs!1902868 () Bool)

(declare-fun d!2246445 () Bool)

(assert (= bs!1902868 (and d!2246445 b!7232643)))

(assert (=> bs!1902868 (= (dynLambda!28527 lambda!439589 lt!2573932) (matchZipper!3411 (store ((as const (Array Context!14882 Bool)) false) lt!2573932 true) (t!384161 s1!1971)))))

(declare-fun m!7902364 () Bool)

(assert (=> bs!1902868 m!7902364))

(assert (=> bs!1902868 m!7902364))

(declare-fun m!7902366 () Bool)

(assert (=> bs!1902868 m!7902366))

(assert (=> d!2246337 d!2246445))

(check-sat (not b!7232889) (not d!2246397) (not d!2246403) (not b!7232720) (not d!2246413) (not b!7232703) (not b!7232674) (not b!7232797) (not d!2246401) (not b!7232814) (not bm!658354) (not bm!658318) (not b!7232783) (not d!2246395) (not d!2246369) (not b!7232789) (not b!7232675) tp_is_empty!46467 (not b!7232810) (not b!7232800) (not bs!1902867) (not d!2246409) (not b!7232884) (not b!7232890) (not d!2246385) (not d!2246341) (not bm!658358) (not bs!1902866) (not d!2246387) (not d!2246365) (not b!7232809) (not d!2246411) (not bs!1902868) (not b!7232774) (not bm!658340) (not b_lambda!277219) (not d!2246361) (not b!7232788) (not d!2246355) (not b!7232721) (not d!2246391) (not b!7232702) (not b_lambda!277221) (not b!7232775) (not bm!658355) (not b!7232799) (not b_lambda!277217) (not d!2246377) (not b!7232759) (not d!2246393) (not b!7232782) (not d!2246337) (not b!7232781) (not b!7232758) (not b!7232876) (not b!7232891))
(check-sat)
