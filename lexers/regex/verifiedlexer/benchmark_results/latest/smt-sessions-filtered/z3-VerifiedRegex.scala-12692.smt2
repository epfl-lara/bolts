; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!701488 () Bool)

(assert start!701488)

(declare-fun b!7231021 () Bool)

(assert (=> b!7231021 true))

(declare-fun b!7231018 () Bool)

(declare-fun e!4334884 () Bool)

(declare-fun e!4334886 () Bool)

(assert (=> b!7231018 (= e!4334884 e!4334886)))

(declare-fun res!2933823 () Bool)

(assert (=> b!7231018 (=> (not res!2933823) (not e!4334886))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37260 0))(
  ( (C!37261 (val!28578 Int)) )
))
(declare-datatypes ((Regex!18493 0))(
  ( (ElementMatch!18493 (c!1341507 C!37260)) (Concat!27338 (regOne!37498 Regex!18493) (regTwo!37498 Regex!18493)) (EmptyExpr!18493) (Star!18493 (reg!18822 Regex!18493)) (EmptyLang!18493) (Union!18493 (regOne!37499 Regex!18493) (regTwo!37499 Regex!18493)) )
))
(declare-datatypes ((List!70087 0))(
  ( (Nil!69963) (Cons!69963 (h!76411 Regex!18493) (t!384136 List!70087)) )
))
(declare-datatypes ((Context!14866 0))(
  ( (Context!14867 (exprs!7933 List!70087)) )
))
(declare-fun lt!2573329 () (InoxSet Context!14866))

(declare-datatypes ((List!70088 0))(
  ( (Nil!69964) (Cons!69964 (h!76412 C!37260) (t!384137 List!70088)) )
))
(declare-fun s1!1971 () List!70088)

(declare-fun matchZipper!3403 ((InoxSet Context!14866) List!70088) Bool)

(assert (=> b!7231018 (= res!2933823 (matchZipper!3403 lt!2573329 (t!384137 s1!1971)))))

(declare-fun lt!2573332 () (InoxSet Context!14866))

(declare-fun derivationStepZipper!3285 ((InoxSet Context!14866) C!37260) (InoxSet Context!14866))

(assert (=> b!7231018 (= lt!2573329 (derivationStepZipper!3285 lt!2573332 (h!76412 s1!1971)))))

(declare-fun b!7231019 () Bool)

(declare-fun e!4334888 () Bool)

(declare-fun e!4334880 () Bool)

(assert (=> b!7231019 (= e!4334888 e!4334880)))

(declare-fun res!2933821 () Bool)

(assert (=> b!7231019 (=> res!2933821 e!4334880)))

(declare-fun ct1!232 () Context!14866)

(declare-fun isEmpty!40320 (List!70087) Bool)

(assert (=> b!7231019 (= res!2933821 (isEmpty!40320 (exprs!7933 ct1!232)))))

(declare-fun lt!2573333 () (InoxSet Context!14866))

(declare-fun derivationStepZipperUp!2367 (Context!14866 C!37260) (InoxSet Context!14866))

(assert (=> b!7231019 (= lt!2573333 (derivationStepZipperUp!2367 ct1!232 (h!76412 s1!1971)))))

(declare-fun lt!2573327 () Context!14866)

(declare-fun lambda!439288 () Int)

(declare-datatypes ((Unit!163521 0))(
  ( (Unit!163522) )
))
(declare-fun lt!2573328 () Unit!163521)

(declare-fun ct2!328 () Context!14866)

(declare-fun lemmaConcatPreservesForall!1302 (List!70087 List!70087 Int) Unit!163521)

(assert (=> b!7231019 (= lt!2573328 (lemmaConcatPreservesForall!1302 (exprs!7933 lt!2573327) (exprs!7933 ct2!328) lambda!439288))))

(declare-fun s2!1849 () List!70088)

(declare-fun ++!16286 (List!70087 List!70087) List!70087)

(declare-fun ++!16287 (List!70088 List!70088) List!70088)

(assert (=> b!7231019 (matchZipper!3403 (store ((as const (Array Context!14866 Bool)) false) (Context!14867 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328))) true) (++!16287 (t!384137 s1!1971) s2!1849))))

(declare-fun lt!2573331 () Unit!163521)

(assert (=> b!7231019 (= lt!2573331 (lemmaConcatPreservesForall!1302 (exprs!7933 lt!2573327) (exprs!7933 ct2!328) lambda!439288))))

(declare-fun lt!2573330 () Unit!163521)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!284 (Context!14866 Context!14866 List!70088 List!70088) Unit!163521)

(assert (=> b!7231019 (= lt!2573330 (lemmaConcatenateContextMatchesConcatOfStrings!284 lt!2573327 ct2!328 (t!384137 s1!1971) s2!1849))))

(declare-fun lambda!439289 () Int)

(declare-fun getWitness!2005 ((InoxSet Context!14866) Int) Context!14866)

(assert (=> b!7231019 (= lt!2573327 (getWitness!2005 lt!2573329 lambda!439289))))

(declare-fun b!7231020 () Bool)

(declare-fun e!4334881 () Bool)

(declare-fun tp!2033823 () Bool)

(assert (=> b!7231020 (= e!4334881 tp!2033823)))

(assert (=> b!7231021 (= e!4334886 (not e!4334888))))

(declare-fun res!2933822 () Bool)

(assert (=> b!7231021 (=> res!2933822 e!4334888)))

(declare-fun exists!4129 ((InoxSet Context!14866) Int) Bool)

(assert (=> b!7231021 (= res!2933822 (not (exists!4129 lt!2573329 lambda!439289)))))

(declare-datatypes ((List!70089 0))(
  ( (Nil!69965) (Cons!69965 (h!76413 Context!14866) (t!384138 List!70089)) )
))
(declare-fun lt!2573325 () List!70089)

(declare-fun exists!4130 (List!70089 Int) Bool)

(assert (=> b!7231021 (exists!4130 lt!2573325 lambda!439289)))

(declare-fun lt!2573335 () Unit!163521)

(declare-fun lemmaZipperMatchesExistsMatchingContext!636 (List!70089 List!70088) Unit!163521)

(assert (=> b!7231021 (= lt!2573335 (lemmaZipperMatchesExistsMatchingContext!636 lt!2573325 (t!384137 s1!1971)))))

(declare-fun toList!11350 ((InoxSet Context!14866)) List!70089)

(assert (=> b!7231021 (= lt!2573325 (toList!11350 lt!2573329))))

(declare-fun b!7231022 () Bool)

(declare-fun e!4334882 () Bool)

(declare-fun tp!2033821 () Bool)

(assert (=> b!7231022 (= e!4334882 tp!2033821)))

(declare-fun res!2933824 () Bool)

(declare-fun e!4334883 () Bool)

(assert (=> start!701488 (=> (not res!2933824) (not e!4334883))))

(assert (=> start!701488 (= res!2933824 (matchZipper!3403 lt!2573332 s1!1971))))

(assert (=> start!701488 (= lt!2573332 (store ((as const (Array Context!14866 Bool)) false) ct1!232 true))))

(assert (=> start!701488 e!4334883))

(declare-fun inv!89242 (Context!14866) Bool)

(assert (=> start!701488 (and (inv!89242 ct1!232) e!4334881)))

(declare-fun e!4334885 () Bool)

(assert (=> start!701488 e!4334885))

(declare-fun e!4334887 () Bool)

(assert (=> start!701488 e!4334887))

(assert (=> start!701488 (and (inv!89242 ct2!328) e!4334882)))

(declare-fun b!7231023 () Bool)

(declare-fun res!2933826 () Bool)

(assert (=> b!7231023 (=> (not res!2933826) (not e!4334883))))

(assert (=> b!7231023 (= res!2933826 (matchZipper!3403 (store ((as const (Array Context!14866 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7231024 () Bool)

(declare-fun tp_is_empty!46451 () Bool)

(declare-fun tp!2033824 () Bool)

(assert (=> b!7231024 (= e!4334885 (and tp_is_empty!46451 tp!2033824))))

(declare-fun b!7231025 () Bool)

(assert (=> b!7231025 (= e!4334883 e!4334884)))

(declare-fun res!2933825 () Bool)

(assert (=> b!7231025 (=> (not res!2933825) (not e!4334884))))

(get-info :version)

(assert (=> b!7231025 (= res!2933825 (and (not ((_ is Nil!69963) (exprs!7933 ct1!232))) ((_ is Cons!69964) s1!1971)))))

(declare-fun lt!2573326 () List!70087)

(assert (=> b!7231025 (= lt!2573326 (++!16286 (exprs!7933 ct1!232) (exprs!7933 ct2!328)))))

(declare-fun lt!2573334 () Unit!163521)

(assert (=> b!7231025 (= lt!2573334 (lemmaConcatPreservesForall!1302 (exprs!7933 ct1!232) (exprs!7933 ct2!328) lambda!439288))))

(declare-fun b!7231026 () Bool)

(declare-fun tp!2033822 () Bool)

(assert (=> b!7231026 (= e!4334887 (and tp_is_empty!46451 tp!2033822))))

(declare-fun b!7231027 () Bool)

(declare-fun validRegex!9508 (Regex!18493) Bool)

(assert (=> b!7231027 (= e!4334880 (validRegex!9508 (h!76411 (exprs!7933 ct1!232))))))

(assert (= (and start!701488 res!2933824) b!7231023))

(assert (= (and b!7231023 res!2933826) b!7231025))

(assert (= (and b!7231025 res!2933825) b!7231018))

(assert (= (and b!7231018 res!2933823) b!7231021))

(assert (= (and b!7231021 (not res!2933822)) b!7231019))

(assert (= (and b!7231019 (not res!2933821)) b!7231027))

(assert (= start!701488 b!7231020))

(assert (= (and start!701488 ((_ is Cons!69964) s1!1971)) b!7231024))

(assert (= (and start!701488 ((_ is Cons!69964) s2!1849)) b!7231026))

(assert (= start!701488 b!7231022))

(declare-fun m!7899696 () Bool)

(assert (=> b!7231023 m!7899696))

(assert (=> b!7231023 m!7899696))

(declare-fun m!7899698 () Bool)

(assert (=> b!7231023 m!7899698))

(declare-fun m!7899700 () Bool)

(assert (=> b!7231027 m!7899700))

(declare-fun m!7899702 () Bool)

(assert (=> b!7231019 m!7899702))

(declare-fun m!7899704 () Bool)

(assert (=> b!7231019 m!7899704))

(declare-fun m!7899706 () Bool)

(assert (=> b!7231019 m!7899706))

(declare-fun m!7899708 () Bool)

(assert (=> b!7231019 m!7899708))

(declare-fun m!7899710 () Bool)

(assert (=> b!7231019 m!7899710))

(assert (=> b!7231019 m!7899710))

(declare-fun m!7899712 () Bool)

(assert (=> b!7231019 m!7899712))

(declare-fun m!7899714 () Bool)

(assert (=> b!7231019 m!7899714))

(assert (=> b!7231019 m!7899704))

(assert (=> b!7231019 m!7899702))

(declare-fun m!7899716 () Bool)

(assert (=> b!7231019 m!7899716))

(declare-fun m!7899718 () Bool)

(assert (=> b!7231019 m!7899718))

(declare-fun m!7899720 () Bool)

(assert (=> b!7231021 m!7899720))

(declare-fun m!7899722 () Bool)

(assert (=> b!7231021 m!7899722))

(declare-fun m!7899724 () Bool)

(assert (=> b!7231021 m!7899724))

(declare-fun m!7899726 () Bool)

(assert (=> b!7231021 m!7899726))

(declare-fun m!7899728 () Bool)

(assert (=> start!701488 m!7899728))

(declare-fun m!7899730 () Bool)

(assert (=> start!701488 m!7899730))

(declare-fun m!7899732 () Bool)

(assert (=> start!701488 m!7899732))

(declare-fun m!7899734 () Bool)

(assert (=> start!701488 m!7899734))

(declare-fun m!7899736 () Bool)

(assert (=> b!7231025 m!7899736))

(declare-fun m!7899738 () Bool)

(assert (=> b!7231025 m!7899738))

(declare-fun m!7899740 () Bool)

(assert (=> b!7231018 m!7899740))

(declare-fun m!7899742 () Bool)

(assert (=> b!7231018 m!7899742))

(check-sat (not start!701488) (not b!7231024) (not b!7231022) (not b!7231021) (not b!7231026) tp_is_empty!46451 (not b!7231025) (not b!7231023) (not b!7231027) (not b!7231020) (not b!7231018) (not b!7231019))
(check-sat)
(get-model)

(declare-fun b!7231052 () Bool)

(declare-fun e!4334900 () List!70087)

(assert (=> b!7231052 (= e!4334900 (exprs!7933 ct2!328))))

(declare-fun b!7231053 () Bool)

(assert (=> b!7231053 (= e!4334900 (Cons!69963 (h!76411 (exprs!7933 lt!2573327)) (++!16286 (t!384136 (exprs!7933 lt!2573327)) (exprs!7933 ct2!328))))))

(declare-fun b!7231054 () Bool)

(declare-fun res!2933838 () Bool)

(declare-fun e!4334899 () Bool)

(assert (=> b!7231054 (=> (not res!2933838) (not e!4334899))))

(declare-fun lt!2573347 () List!70087)

(declare-fun size!41546 (List!70087) Int)

(assert (=> b!7231054 (= res!2933838 (= (size!41546 lt!2573347) (+ (size!41546 (exprs!7933 lt!2573327)) (size!41546 (exprs!7933 ct2!328)))))))

(declare-fun b!7231055 () Bool)

(assert (=> b!7231055 (= e!4334899 (or (not (= (exprs!7933 ct2!328) Nil!69963)) (= lt!2573347 (exprs!7933 lt!2573327))))))

(declare-fun d!2245605 () Bool)

(assert (=> d!2245605 e!4334899))

(declare-fun res!2933837 () Bool)

(assert (=> d!2245605 (=> (not res!2933837) (not e!4334899))))

(declare-fun content!14372 (List!70087) (InoxSet Regex!18493))

(assert (=> d!2245605 (= res!2933837 (= (content!14372 lt!2573347) ((_ map or) (content!14372 (exprs!7933 lt!2573327)) (content!14372 (exprs!7933 ct2!328)))))))

(assert (=> d!2245605 (= lt!2573347 e!4334900)))

(declare-fun c!1341513 () Bool)

(assert (=> d!2245605 (= c!1341513 ((_ is Nil!69963) (exprs!7933 lt!2573327)))))

(assert (=> d!2245605 (= (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328)) lt!2573347)))

(assert (= (and d!2245605 c!1341513) b!7231052))

(assert (= (and d!2245605 (not c!1341513)) b!7231053))

(assert (= (and d!2245605 res!2933837) b!7231054))

(assert (= (and b!7231054 res!2933838) b!7231055))

(declare-fun m!7899770 () Bool)

(assert (=> b!7231053 m!7899770))

(declare-fun m!7899772 () Bool)

(assert (=> b!7231054 m!7899772))

(declare-fun m!7899774 () Bool)

(assert (=> b!7231054 m!7899774))

(declare-fun m!7899776 () Bool)

(assert (=> b!7231054 m!7899776))

(declare-fun m!7899778 () Bool)

(assert (=> d!2245605 m!7899778))

(declare-fun m!7899780 () Bool)

(assert (=> d!2245605 m!7899780))

(declare-fun m!7899782 () Bool)

(assert (=> d!2245605 m!7899782))

(assert (=> b!7231019 d!2245605))

(declare-fun d!2245615 () Bool)

(assert (=> d!2245615 (= (isEmpty!40320 (exprs!7933 ct1!232)) ((_ is Nil!69963) (exprs!7933 ct1!232)))))

(assert (=> b!7231019 d!2245615))

(declare-fun b!7231087 () Bool)

(declare-fun e!4334926 () (InoxSet Context!14866))

(declare-fun e!4334924 () (InoxSet Context!14866))

(assert (=> b!7231087 (= e!4334926 e!4334924)))

(declare-fun c!1341525 () Bool)

(assert (=> b!7231087 (= c!1341525 ((_ is Cons!69963) (exprs!7933 ct1!232)))))

(declare-fun bm!658122 () Bool)

(declare-fun call!658127 () (InoxSet Context!14866))

(declare-fun derivationStepZipperDown!2537 (Regex!18493 Context!14866 C!37260) (InoxSet Context!14866))

(assert (=> bm!658122 (= call!658127 (derivationStepZipperDown!2537 (h!76411 (exprs!7933 ct1!232)) (Context!14867 (t!384136 (exprs!7933 ct1!232))) (h!76412 s1!1971)))))

(declare-fun b!7231088 () Bool)

(assert (=> b!7231088 (= e!4334926 ((_ map or) call!658127 (derivationStepZipperUp!2367 (Context!14867 (t!384136 (exprs!7933 ct1!232))) (h!76412 s1!1971))))))

(declare-fun b!7231089 () Bool)

(assert (=> b!7231089 (= e!4334924 ((as const (Array Context!14866 Bool)) false))))

(declare-fun b!7231090 () Bool)

(declare-fun e!4334925 () Bool)

(declare-fun nullable!7810 (Regex!18493) Bool)

(assert (=> b!7231090 (= e!4334925 (nullable!7810 (h!76411 (exprs!7933 ct1!232))))))

(declare-fun b!7231091 () Bool)

(assert (=> b!7231091 (= e!4334924 call!658127)))

(declare-fun d!2245617 () Bool)

(declare-fun c!1341524 () Bool)

(assert (=> d!2245617 (= c!1341524 e!4334925)))

(declare-fun res!2933854 () Bool)

(assert (=> d!2245617 (=> (not res!2933854) (not e!4334925))))

(assert (=> d!2245617 (= res!2933854 ((_ is Cons!69963) (exprs!7933 ct1!232)))))

(assert (=> d!2245617 (= (derivationStepZipperUp!2367 ct1!232 (h!76412 s1!1971)) e!4334926)))

(assert (= (and d!2245617 res!2933854) b!7231090))

(assert (= (and d!2245617 c!1341524) b!7231088))

(assert (= (and d!2245617 (not c!1341524)) b!7231087))

(assert (= (and b!7231087 c!1341525) b!7231091))

(assert (= (and b!7231087 (not c!1341525)) b!7231089))

(assert (= (or b!7231088 b!7231091) bm!658122))

(declare-fun m!7899798 () Bool)

(assert (=> bm!658122 m!7899798))

(declare-fun m!7899800 () Bool)

(assert (=> b!7231088 m!7899800))

(declare-fun m!7899802 () Bool)

(assert (=> b!7231090 m!7899802))

(assert (=> b!7231019 d!2245617))

(declare-fun d!2245623 () Bool)

(declare-fun e!4334940 () Bool)

(assert (=> d!2245623 e!4334940))

(declare-fun res!2933862 () Bool)

(assert (=> d!2245623 (=> (not res!2933862) (not e!4334940))))

(declare-fun lt!2573356 () Context!14866)

(declare-fun dynLambda!28510 (Int Context!14866) Bool)

(assert (=> d!2245623 (= res!2933862 (dynLambda!28510 lambda!439289 lt!2573356))))

(declare-fun getWitness!2007 (List!70089 Int) Context!14866)

(assert (=> d!2245623 (= lt!2573356 (getWitness!2007 (toList!11350 lt!2573329) lambda!439289))))

(assert (=> d!2245623 (exists!4129 lt!2573329 lambda!439289)))

(assert (=> d!2245623 (= (getWitness!2005 lt!2573329 lambda!439289) lt!2573356)))

(declare-fun b!7231111 () Bool)

(assert (=> b!7231111 (= e!4334940 (select lt!2573329 lt!2573356))))

(assert (= (and d!2245623 res!2933862) b!7231111))

(declare-fun b_lambda!277059 () Bool)

(assert (=> (not b_lambda!277059) (not d!2245623)))

(declare-fun m!7899834 () Bool)

(assert (=> d!2245623 m!7899834))

(assert (=> d!2245623 m!7899726))

(assert (=> d!2245623 m!7899726))

(declare-fun m!7899836 () Bool)

(assert (=> d!2245623 m!7899836))

(assert (=> d!2245623 m!7899720))

(declare-fun m!7899838 () Bool)

(assert (=> b!7231111 m!7899838))

(assert (=> b!7231019 d!2245623))

(declare-fun d!2245631 () Bool)

(declare-fun c!1341536 () Bool)

(declare-fun isEmpty!40322 (List!70088) Bool)

(assert (=> d!2245631 (= c!1341536 (isEmpty!40322 (++!16287 (t!384137 s1!1971) s2!1849)))))

(declare-fun e!4334949 () Bool)

(assert (=> d!2245631 (= (matchZipper!3403 (store ((as const (Array Context!14866 Bool)) false) (Context!14867 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328))) true) (++!16287 (t!384137 s1!1971) s2!1849)) e!4334949)))

(declare-fun b!7231125 () Bool)

(declare-fun nullableZipper!2807 ((InoxSet Context!14866)) Bool)

(assert (=> b!7231125 (= e!4334949 (nullableZipper!2807 (store ((as const (Array Context!14866 Bool)) false) (Context!14867 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328))) true)))))

(declare-fun b!7231126 () Bool)

(declare-fun head!14793 (List!70088) C!37260)

(declare-fun tail!14108 (List!70088) List!70088)

(assert (=> b!7231126 (= e!4334949 (matchZipper!3403 (derivationStepZipper!3285 (store ((as const (Array Context!14866 Bool)) false) (Context!14867 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328))) true) (head!14793 (++!16287 (t!384137 s1!1971) s2!1849))) (tail!14108 (++!16287 (t!384137 s1!1971) s2!1849))))))

(assert (= (and d!2245631 c!1341536) b!7231125))

(assert (= (and d!2245631 (not c!1341536)) b!7231126))

(assert (=> d!2245631 m!7899704))

(declare-fun m!7899878 () Bool)

(assert (=> d!2245631 m!7899878))

(assert (=> b!7231125 m!7899702))

(declare-fun m!7899880 () Bool)

(assert (=> b!7231125 m!7899880))

(assert (=> b!7231126 m!7899704))

(declare-fun m!7899882 () Bool)

(assert (=> b!7231126 m!7899882))

(assert (=> b!7231126 m!7899702))

(assert (=> b!7231126 m!7899882))

(declare-fun m!7899884 () Bool)

(assert (=> b!7231126 m!7899884))

(assert (=> b!7231126 m!7899704))

(declare-fun m!7899886 () Bool)

(assert (=> b!7231126 m!7899886))

(assert (=> b!7231126 m!7899884))

(assert (=> b!7231126 m!7899886))

(declare-fun m!7899888 () Bool)

(assert (=> b!7231126 m!7899888))

(assert (=> b!7231019 d!2245631))

(declare-fun bs!1902504 () Bool)

(declare-fun d!2245647 () Bool)

(assert (= bs!1902504 (and d!2245647 b!7231025)))

(declare-fun lambda!439302 () Int)

(assert (=> bs!1902504 (= lambda!439302 lambda!439288)))

(assert (=> d!2245647 (matchZipper!3403 (store ((as const (Array Context!14866 Bool)) false) (Context!14867 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328))) true) (++!16287 (t!384137 s1!1971) s2!1849))))

(declare-fun lt!2573370 () Unit!163521)

(assert (=> d!2245647 (= lt!2573370 (lemmaConcatPreservesForall!1302 (exprs!7933 lt!2573327) (exprs!7933 ct2!328) lambda!439302))))

(declare-fun lt!2573369 () Unit!163521)

(declare-fun choose!55508 (Context!14866 Context!14866 List!70088 List!70088) Unit!163521)

(assert (=> d!2245647 (= lt!2573369 (choose!55508 lt!2573327 ct2!328 (t!384137 s1!1971) s2!1849))))

(assert (=> d!2245647 (matchZipper!3403 (store ((as const (Array Context!14866 Bool)) false) lt!2573327 true) (t!384137 s1!1971))))

(assert (=> d!2245647 (= (lemmaConcatenateContextMatchesConcatOfStrings!284 lt!2573327 ct2!328 (t!384137 s1!1971) s2!1849) lt!2573369)))

(declare-fun bs!1902505 () Bool)

(assert (= bs!1902505 d!2245647))

(declare-fun m!7899910 () Bool)

(assert (=> bs!1902505 m!7899910))

(assert (=> bs!1902505 m!7899702))

(assert (=> bs!1902505 m!7899702))

(assert (=> bs!1902505 m!7899704))

(assert (=> bs!1902505 m!7899706))

(assert (=> bs!1902505 m!7899704))

(declare-fun m!7899912 () Bool)

(assert (=> bs!1902505 m!7899912))

(declare-fun m!7899914 () Bool)

(assert (=> bs!1902505 m!7899914))

(assert (=> bs!1902505 m!7899716))

(assert (=> bs!1902505 m!7899912))

(declare-fun m!7899916 () Bool)

(assert (=> bs!1902505 m!7899916))

(assert (=> b!7231019 d!2245647))

(declare-fun d!2245653 () Bool)

(declare-fun e!4334979 () Bool)

(assert (=> d!2245653 e!4334979))

(declare-fun res!2933881 () Bool)

(assert (=> d!2245653 (=> (not res!2933881) (not e!4334979))))

(declare-fun lt!2573379 () List!70088)

(declare-fun content!14373 (List!70088) (InoxSet C!37260))

(assert (=> d!2245653 (= res!2933881 (= (content!14373 lt!2573379) ((_ map or) (content!14373 (t!384137 s1!1971)) (content!14373 s2!1849))))))

(declare-fun e!4334978 () List!70088)

(assert (=> d!2245653 (= lt!2573379 e!4334978)))

(declare-fun c!1341551 () Bool)

(assert (=> d!2245653 (= c!1341551 ((_ is Nil!69964) (t!384137 s1!1971)))))

(assert (=> d!2245653 (= (++!16287 (t!384137 s1!1971) s2!1849) lt!2573379)))

(declare-fun b!7231178 () Bool)

(assert (=> b!7231178 (= e!4334978 s2!1849)))

(declare-fun b!7231180 () Bool)

(declare-fun res!2933882 () Bool)

(assert (=> b!7231180 (=> (not res!2933882) (not e!4334979))))

(declare-fun size!41548 (List!70088) Int)

(assert (=> b!7231180 (= res!2933882 (= (size!41548 lt!2573379) (+ (size!41548 (t!384137 s1!1971)) (size!41548 s2!1849))))))

(declare-fun b!7231181 () Bool)

(assert (=> b!7231181 (= e!4334979 (or (not (= s2!1849 Nil!69964)) (= lt!2573379 (t!384137 s1!1971))))))

(declare-fun b!7231179 () Bool)

(assert (=> b!7231179 (= e!4334978 (Cons!69964 (h!76412 (t!384137 s1!1971)) (++!16287 (t!384137 (t!384137 s1!1971)) s2!1849)))))

(assert (= (and d!2245653 c!1341551) b!7231178))

(assert (= (and d!2245653 (not c!1341551)) b!7231179))

(assert (= (and d!2245653 res!2933881) b!7231180))

(assert (= (and b!7231180 res!2933882) b!7231181))

(declare-fun m!7899944 () Bool)

(assert (=> d!2245653 m!7899944))

(declare-fun m!7899946 () Bool)

(assert (=> d!2245653 m!7899946))

(declare-fun m!7899948 () Bool)

(assert (=> d!2245653 m!7899948))

(declare-fun m!7899950 () Bool)

(assert (=> b!7231180 m!7899950))

(declare-fun m!7899952 () Bool)

(assert (=> b!7231180 m!7899952))

(declare-fun m!7899954 () Bool)

(assert (=> b!7231180 m!7899954))

(declare-fun m!7899956 () Bool)

(assert (=> b!7231179 m!7899956))

(assert (=> b!7231019 d!2245653))

(declare-fun d!2245661 () Bool)

(declare-fun forall!17315 (List!70087 Int) Bool)

(assert (=> d!2245661 (forall!17315 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328)) lambda!439288)))

(declare-fun lt!2573382 () Unit!163521)

(declare-fun choose!55509 (List!70087 List!70087 Int) Unit!163521)

(assert (=> d!2245661 (= lt!2573382 (choose!55509 (exprs!7933 lt!2573327) (exprs!7933 ct2!328) lambda!439288))))

(assert (=> d!2245661 (forall!17315 (exprs!7933 lt!2573327) lambda!439288)))

(assert (=> d!2245661 (= (lemmaConcatPreservesForall!1302 (exprs!7933 lt!2573327) (exprs!7933 ct2!328) lambda!439288) lt!2573382)))

(declare-fun bs!1902512 () Bool)

(assert (= bs!1902512 d!2245661))

(assert (=> bs!1902512 m!7899716))

(assert (=> bs!1902512 m!7899716))

(declare-fun m!7899958 () Bool)

(assert (=> bs!1902512 m!7899958))

(declare-fun m!7899960 () Bool)

(assert (=> bs!1902512 m!7899960))

(declare-fun m!7899962 () Bool)

(assert (=> bs!1902512 m!7899962))

(assert (=> b!7231019 d!2245661))

(declare-fun d!2245663 () Bool)

(declare-fun c!1341552 () Bool)

(assert (=> d!2245663 (= c!1341552 (isEmpty!40322 (t!384137 s1!1971)))))

(declare-fun e!4334980 () Bool)

(assert (=> d!2245663 (= (matchZipper!3403 lt!2573329 (t!384137 s1!1971)) e!4334980)))

(declare-fun b!7231182 () Bool)

(assert (=> b!7231182 (= e!4334980 (nullableZipper!2807 lt!2573329))))

(declare-fun b!7231183 () Bool)

(assert (=> b!7231183 (= e!4334980 (matchZipper!3403 (derivationStepZipper!3285 lt!2573329 (head!14793 (t!384137 s1!1971))) (tail!14108 (t!384137 s1!1971))))))

(assert (= (and d!2245663 c!1341552) b!7231182))

(assert (= (and d!2245663 (not c!1341552)) b!7231183))

(declare-fun m!7899964 () Bool)

(assert (=> d!2245663 m!7899964))

(declare-fun m!7899966 () Bool)

(assert (=> b!7231182 m!7899966))

(declare-fun m!7899968 () Bool)

(assert (=> b!7231183 m!7899968))

(assert (=> b!7231183 m!7899968))

(declare-fun m!7899970 () Bool)

(assert (=> b!7231183 m!7899970))

(declare-fun m!7899972 () Bool)

(assert (=> b!7231183 m!7899972))

(assert (=> b!7231183 m!7899970))

(assert (=> b!7231183 m!7899972))

(declare-fun m!7899974 () Bool)

(assert (=> b!7231183 m!7899974))

(assert (=> b!7231018 d!2245663))

(declare-fun d!2245665 () Bool)

(assert (=> d!2245665 true))

(declare-fun lambda!439311 () Int)

(declare-fun flatMap!2701 ((InoxSet Context!14866) Int) (InoxSet Context!14866))

(assert (=> d!2245665 (= (derivationStepZipper!3285 lt!2573332 (h!76412 s1!1971)) (flatMap!2701 lt!2573332 lambda!439311))))

(declare-fun bs!1902513 () Bool)

(assert (= bs!1902513 d!2245665))

(declare-fun m!7899976 () Bool)

(assert (=> bs!1902513 m!7899976))

(assert (=> b!7231018 d!2245665))

(declare-fun d!2245667 () Bool)

(declare-fun c!1341555 () Bool)

(assert (=> d!2245667 (= c!1341555 (isEmpty!40322 s2!1849))))

(declare-fun e!4334981 () Bool)

(assert (=> d!2245667 (= (matchZipper!3403 (store ((as const (Array Context!14866 Bool)) false) ct2!328 true) s2!1849) e!4334981)))

(declare-fun b!7231186 () Bool)

(assert (=> b!7231186 (= e!4334981 (nullableZipper!2807 (store ((as const (Array Context!14866 Bool)) false) ct2!328 true)))))

(declare-fun b!7231187 () Bool)

(assert (=> b!7231187 (= e!4334981 (matchZipper!3403 (derivationStepZipper!3285 (store ((as const (Array Context!14866 Bool)) false) ct2!328 true) (head!14793 s2!1849)) (tail!14108 s2!1849)))))

(assert (= (and d!2245667 c!1341555) b!7231186))

(assert (= (and d!2245667 (not c!1341555)) b!7231187))

(declare-fun m!7899978 () Bool)

(assert (=> d!2245667 m!7899978))

(assert (=> b!7231186 m!7899696))

(declare-fun m!7899980 () Bool)

(assert (=> b!7231186 m!7899980))

(declare-fun m!7899982 () Bool)

(assert (=> b!7231187 m!7899982))

(assert (=> b!7231187 m!7899696))

(assert (=> b!7231187 m!7899982))

(declare-fun m!7899984 () Bool)

(assert (=> b!7231187 m!7899984))

(declare-fun m!7899986 () Bool)

(assert (=> b!7231187 m!7899986))

(assert (=> b!7231187 m!7899984))

(assert (=> b!7231187 m!7899986))

(declare-fun m!7899988 () Bool)

(assert (=> b!7231187 m!7899988))

(assert (=> b!7231023 d!2245667))

(declare-fun d!2245669 () Bool)

(declare-fun lt!2573385 () Bool)

(assert (=> d!2245669 (= lt!2573385 (exists!4130 (toList!11350 lt!2573329) lambda!439289))))

(declare-fun choose!55510 ((InoxSet Context!14866) Int) Bool)

(assert (=> d!2245669 (= lt!2573385 (choose!55510 lt!2573329 lambda!439289))))

(assert (=> d!2245669 (= (exists!4129 lt!2573329 lambda!439289) lt!2573385)))

(declare-fun bs!1902514 () Bool)

(assert (= bs!1902514 d!2245669))

(assert (=> bs!1902514 m!7899726))

(assert (=> bs!1902514 m!7899726))

(declare-fun m!7899990 () Bool)

(assert (=> bs!1902514 m!7899990))

(declare-fun m!7899992 () Bool)

(assert (=> bs!1902514 m!7899992))

(assert (=> b!7231021 d!2245669))

(declare-fun bs!1902515 () Bool)

(declare-fun d!2245671 () Bool)

(assert (= bs!1902515 (and d!2245671 b!7231021)))

(declare-fun lambda!439314 () Int)

(assert (=> bs!1902515 (not (= lambda!439314 lambda!439289))))

(assert (=> d!2245671 true))

(declare-fun order!28813 () Int)

(declare-fun dynLambda!28511 (Int Int) Int)

(assert (=> d!2245671 (< (dynLambda!28511 order!28813 lambda!439289) (dynLambda!28511 order!28813 lambda!439314))))

(declare-fun forall!17316 (List!70089 Int) Bool)

(assert (=> d!2245671 (= (exists!4130 lt!2573325 lambda!439289) (not (forall!17316 lt!2573325 lambda!439314)))))

(declare-fun bs!1902516 () Bool)

(assert (= bs!1902516 d!2245671))

(declare-fun m!7899994 () Bool)

(assert (=> bs!1902516 m!7899994))

(assert (=> b!7231021 d!2245671))

(declare-fun bs!1902517 () Bool)

(declare-fun d!2245673 () Bool)

(assert (= bs!1902517 (and d!2245673 b!7231021)))

(declare-fun lambda!439317 () Int)

(assert (=> bs!1902517 (= lambda!439317 lambda!439289)))

(declare-fun bs!1902518 () Bool)

(assert (= bs!1902518 (and d!2245673 d!2245671)))

(assert (=> bs!1902518 (not (= lambda!439317 lambda!439314))))

(assert (=> d!2245673 true))

(assert (=> d!2245673 (exists!4130 lt!2573325 lambda!439317)))

(declare-fun lt!2573388 () Unit!163521)

(declare-fun choose!55511 (List!70089 List!70088) Unit!163521)

(assert (=> d!2245673 (= lt!2573388 (choose!55511 lt!2573325 (t!384137 s1!1971)))))

(declare-fun content!14374 (List!70089) (InoxSet Context!14866))

(assert (=> d!2245673 (matchZipper!3403 (content!14374 lt!2573325) (t!384137 s1!1971))))

(assert (=> d!2245673 (= (lemmaZipperMatchesExistsMatchingContext!636 lt!2573325 (t!384137 s1!1971)) lt!2573388)))

(declare-fun bs!1902519 () Bool)

(assert (= bs!1902519 d!2245673))

(declare-fun m!7899996 () Bool)

(assert (=> bs!1902519 m!7899996))

(declare-fun m!7899998 () Bool)

(assert (=> bs!1902519 m!7899998))

(declare-fun m!7900000 () Bool)

(assert (=> bs!1902519 m!7900000))

(assert (=> bs!1902519 m!7900000))

(declare-fun m!7900002 () Bool)

(assert (=> bs!1902519 m!7900002))

(assert (=> b!7231021 d!2245673))

(declare-fun d!2245675 () Bool)

(declare-fun e!4334984 () Bool)

(assert (=> d!2245675 e!4334984))

(declare-fun res!2933885 () Bool)

(assert (=> d!2245675 (=> (not res!2933885) (not e!4334984))))

(declare-fun lt!2573391 () List!70089)

(declare-fun noDuplicate!2919 (List!70089) Bool)

(assert (=> d!2245675 (= res!2933885 (noDuplicate!2919 lt!2573391))))

(declare-fun choose!55512 ((InoxSet Context!14866)) List!70089)

(assert (=> d!2245675 (= lt!2573391 (choose!55512 lt!2573329))))

(assert (=> d!2245675 (= (toList!11350 lt!2573329) lt!2573391)))

(declare-fun b!7231192 () Bool)

(assert (=> b!7231192 (= e!4334984 (= (content!14374 lt!2573391) lt!2573329))))

(assert (= (and d!2245675 res!2933885) b!7231192))

(declare-fun m!7900004 () Bool)

(assert (=> d!2245675 m!7900004))

(declare-fun m!7900006 () Bool)

(assert (=> d!2245675 m!7900006))

(declare-fun m!7900008 () Bool)

(assert (=> b!7231192 m!7900008))

(assert (=> b!7231021 d!2245675))

(declare-fun d!2245677 () Bool)

(declare-fun c!1341558 () Bool)

(assert (=> d!2245677 (= c!1341558 (isEmpty!40322 s1!1971))))

(declare-fun e!4334985 () Bool)

(assert (=> d!2245677 (= (matchZipper!3403 lt!2573332 s1!1971) e!4334985)))

(declare-fun b!7231193 () Bool)

(assert (=> b!7231193 (= e!4334985 (nullableZipper!2807 lt!2573332))))

(declare-fun b!7231194 () Bool)

(assert (=> b!7231194 (= e!4334985 (matchZipper!3403 (derivationStepZipper!3285 lt!2573332 (head!14793 s1!1971)) (tail!14108 s1!1971)))))

(assert (= (and d!2245677 c!1341558) b!7231193))

(assert (= (and d!2245677 (not c!1341558)) b!7231194))

(declare-fun m!7900010 () Bool)

(assert (=> d!2245677 m!7900010))

(declare-fun m!7900012 () Bool)

(assert (=> b!7231193 m!7900012))

(declare-fun m!7900014 () Bool)

(assert (=> b!7231194 m!7900014))

(assert (=> b!7231194 m!7900014))

(declare-fun m!7900016 () Bool)

(assert (=> b!7231194 m!7900016))

(declare-fun m!7900018 () Bool)

(assert (=> b!7231194 m!7900018))

(assert (=> b!7231194 m!7900016))

(assert (=> b!7231194 m!7900018))

(declare-fun m!7900020 () Bool)

(assert (=> b!7231194 m!7900020))

(assert (=> start!701488 d!2245677))

(declare-fun bs!1902520 () Bool)

(declare-fun d!2245679 () Bool)

(assert (= bs!1902520 (and d!2245679 b!7231025)))

(declare-fun lambda!439320 () Int)

(assert (=> bs!1902520 (= lambda!439320 lambda!439288)))

(declare-fun bs!1902521 () Bool)

(assert (= bs!1902521 (and d!2245679 d!2245647)))

(assert (=> bs!1902521 (= lambda!439320 lambda!439302)))

(assert (=> d!2245679 (= (inv!89242 ct1!232) (forall!17315 (exprs!7933 ct1!232) lambda!439320))))

(declare-fun bs!1902522 () Bool)

(assert (= bs!1902522 d!2245679))

(declare-fun m!7900022 () Bool)

(assert (=> bs!1902522 m!7900022))

(assert (=> start!701488 d!2245679))

(declare-fun bs!1902523 () Bool)

(declare-fun d!2245681 () Bool)

(assert (= bs!1902523 (and d!2245681 b!7231025)))

(declare-fun lambda!439321 () Int)

(assert (=> bs!1902523 (= lambda!439321 lambda!439288)))

(declare-fun bs!1902524 () Bool)

(assert (= bs!1902524 (and d!2245681 d!2245647)))

(assert (=> bs!1902524 (= lambda!439321 lambda!439302)))

(declare-fun bs!1902525 () Bool)

(assert (= bs!1902525 (and d!2245681 d!2245679)))

(assert (=> bs!1902525 (= lambda!439321 lambda!439320)))

(assert (=> d!2245681 (= (inv!89242 ct2!328) (forall!17315 (exprs!7933 ct2!328) lambda!439321))))

(declare-fun bs!1902526 () Bool)

(assert (= bs!1902526 d!2245681))

(declare-fun m!7900024 () Bool)

(assert (=> bs!1902526 m!7900024))

(assert (=> start!701488 d!2245681))

(declare-fun b!7231213 () Bool)

(declare-fun e!4335004 () Bool)

(declare-fun e!4335005 () Bool)

(assert (=> b!7231213 (= e!4335004 e!4335005)))

(declare-fun c!1341563 () Bool)

(assert (=> b!7231213 (= c!1341563 ((_ is Union!18493) (h!76411 (exprs!7933 ct1!232))))))

(declare-fun b!7231214 () Bool)

(declare-fun res!2933897 () Bool)

(declare-fun e!4335006 () Bool)

(assert (=> b!7231214 (=> res!2933897 e!4335006)))

(assert (=> b!7231214 (= res!2933897 (not ((_ is Concat!27338) (h!76411 (exprs!7933 ct1!232)))))))

(assert (=> b!7231214 (= e!4335005 e!4335006)))

(declare-fun b!7231215 () Bool)

(declare-fun e!4335002 () Bool)

(assert (=> b!7231215 (= e!4335002 e!4335004)))

(declare-fun c!1341564 () Bool)

(assert (=> b!7231215 (= c!1341564 ((_ is Star!18493) (h!76411 (exprs!7933 ct1!232))))))

(declare-fun bm!658135 () Bool)

(declare-fun call!658142 () Bool)

(assert (=> bm!658135 (= call!658142 (validRegex!9508 (ite c!1341563 (regTwo!37499 (h!76411 (exprs!7933 ct1!232))) (regTwo!37498 (h!76411 (exprs!7933 ct1!232))))))))

(declare-fun b!7231216 () Bool)

(declare-fun res!2933898 () Bool)

(declare-fun e!4335001 () Bool)

(assert (=> b!7231216 (=> (not res!2933898) (not e!4335001))))

(declare-fun call!658140 () Bool)

(assert (=> b!7231216 (= res!2933898 call!658140)))

(assert (=> b!7231216 (= e!4335005 e!4335001)))

(declare-fun bm!658136 () Bool)

(declare-fun call!658141 () Bool)

(assert (=> bm!658136 (= call!658140 call!658141)))

(declare-fun bm!658137 () Bool)

(assert (=> bm!658137 (= call!658141 (validRegex!9508 (ite c!1341564 (reg!18822 (h!76411 (exprs!7933 ct1!232))) (ite c!1341563 (regOne!37499 (h!76411 (exprs!7933 ct1!232))) (regOne!37498 (h!76411 (exprs!7933 ct1!232)))))))))

(declare-fun b!7231217 () Bool)

(assert (=> b!7231217 (= e!4335001 call!658142)))

(declare-fun b!7231218 () Bool)

(declare-fun e!4335000 () Bool)

(assert (=> b!7231218 (= e!4335004 e!4335000)))

(declare-fun res!2933896 () Bool)

(assert (=> b!7231218 (= res!2933896 (not (nullable!7810 (reg!18822 (h!76411 (exprs!7933 ct1!232))))))))

(assert (=> b!7231218 (=> (not res!2933896) (not e!4335000))))

(declare-fun b!7231220 () Bool)

(declare-fun e!4335003 () Bool)

(assert (=> b!7231220 (= e!4335003 call!658142)))

(declare-fun b!7231221 () Bool)

(assert (=> b!7231221 (= e!4335000 call!658141)))

(declare-fun b!7231219 () Bool)

(assert (=> b!7231219 (= e!4335006 e!4335003)))

(declare-fun res!2933899 () Bool)

(assert (=> b!7231219 (=> (not res!2933899) (not e!4335003))))

(assert (=> b!7231219 (= res!2933899 call!658140)))

(declare-fun d!2245683 () Bool)

(declare-fun res!2933900 () Bool)

(assert (=> d!2245683 (=> res!2933900 e!4335002)))

(assert (=> d!2245683 (= res!2933900 ((_ is ElementMatch!18493) (h!76411 (exprs!7933 ct1!232))))))

(assert (=> d!2245683 (= (validRegex!9508 (h!76411 (exprs!7933 ct1!232))) e!4335002)))

(assert (= (and d!2245683 (not res!2933900)) b!7231215))

(assert (= (and b!7231215 c!1341564) b!7231218))

(assert (= (and b!7231215 (not c!1341564)) b!7231213))

(assert (= (and b!7231218 res!2933896) b!7231221))

(assert (= (and b!7231213 c!1341563) b!7231216))

(assert (= (and b!7231213 (not c!1341563)) b!7231214))

(assert (= (and b!7231216 res!2933898) b!7231217))

(assert (= (and b!7231214 (not res!2933897)) b!7231219))

(assert (= (and b!7231219 res!2933899) b!7231220))

(assert (= (or b!7231216 b!7231219) bm!658136))

(assert (= (or b!7231217 b!7231220) bm!658135))

(assert (= (or b!7231221 bm!658136) bm!658137))

(declare-fun m!7900026 () Bool)

(assert (=> bm!658135 m!7900026))

(declare-fun m!7900028 () Bool)

(assert (=> bm!658137 m!7900028))

(declare-fun m!7900030 () Bool)

(assert (=> b!7231218 m!7900030))

(assert (=> b!7231027 d!2245683))

(declare-fun b!7231222 () Bool)

(declare-fun e!4335008 () List!70087)

(assert (=> b!7231222 (= e!4335008 (exprs!7933 ct2!328))))

(declare-fun b!7231223 () Bool)

(assert (=> b!7231223 (= e!4335008 (Cons!69963 (h!76411 (exprs!7933 ct1!232)) (++!16286 (t!384136 (exprs!7933 ct1!232)) (exprs!7933 ct2!328))))))

(declare-fun b!7231224 () Bool)

(declare-fun res!2933902 () Bool)

(declare-fun e!4335007 () Bool)

(assert (=> b!7231224 (=> (not res!2933902) (not e!4335007))))

(declare-fun lt!2573392 () List!70087)

(assert (=> b!7231224 (= res!2933902 (= (size!41546 lt!2573392) (+ (size!41546 (exprs!7933 ct1!232)) (size!41546 (exprs!7933 ct2!328)))))))

(declare-fun b!7231225 () Bool)

(assert (=> b!7231225 (= e!4335007 (or (not (= (exprs!7933 ct2!328) Nil!69963)) (= lt!2573392 (exprs!7933 ct1!232))))))

(declare-fun d!2245685 () Bool)

(assert (=> d!2245685 e!4335007))

(declare-fun res!2933901 () Bool)

(assert (=> d!2245685 (=> (not res!2933901) (not e!4335007))))

(assert (=> d!2245685 (= res!2933901 (= (content!14372 lt!2573392) ((_ map or) (content!14372 (exprs!7933 ct1!232)) (content!14372 (exprs!7933 ct2!328)))))))

(assert (=> d!2245685 (= lt!2573392 e!4335008)))

(declare-fun c!1341565 () Bool)

(assert (=> d!2245685 (= c!1341565 ((_ is Nil!69963) (exprs!7933 ct1!232)))))

(assert (=> d!2245685 (= (++!16286 (exprs!7933 ct1!232) (exprs!7933 ct2!328)) lt!2573392)))

(assert (= (and d!2245685 c!1341565) b!7231222))

(assert (= (and d!2245685 (not c!1341565)) b!7231223))

(assert (= (and d!2245685 res!2933901) b!7231224))

(assert (= (and b!7231224 res!2933902) b!7231225))

(declare-fun m!7900032 () Bool)

(assert (=> b!7231223 m!7900032))

(declare-fun m!7900034 () Bool)

(assert (=> b!7231224 m!7900034))

(declare-fun m!7900036 () Bool)

(assert (=> b!7231224 m!7900036))

(assert (=> b!7231224 m!7899776))

(declare-fun m!7900038 () Bool)

(assert (=> d!2245685 m!7900038))

(declare-fun m!7900040 () Bool)

(assert (=> d!2245685 m!7900040))

(assert (=> d!2245685 m!7899782))

(assert (=> b!7231025 d!2245685))

(declare-fun d!2245687 () Bool)

(assert (=> d!2245687 (forall!17315 (++!16286 (exprs!7933 ct1!232) (exprs!7933 ct2!328)) lambda!439288)))

(declare-fun lt!2573393 () Unit!163521)

(assert (=> d!2245687 (= lt!2573393 (choose!55509 (exprs!7933 ct1!232) (exprs!7933 ct2!328) lambda!439288))))

(assert (=> d!2245687 (forall!17315 (exprs!7933 ct1!232) lambda!439288)))

(assert (=> d!2245687 (= (lemmaConcatPreservesForall!1302 (exprs!7933 ct1!232) (exprs!7933 ct2!328) lambda!439288) lt!2573393)))

(declare-fun bs!1902527 () Bool)

(assert (= bs!1902527 d!2245687))

(assert (=> bs!1902527 m!7899736))

(assert (=> bs!1902527 m!7899736))

(declare-fun m!7900042 () Bool)

(assert (=> bs!1902527 m!7900042))

(declare-fun m!7900044 () Bool)

(assert (=> bs!1902527 m!7900044))

(declare-fun m!7900046 () Bool)

(assert (=> bs!1902527 m!7900046))

(assert (=> b!7231025 d!2245687))

(declare-fun b!7231230 () Bool)

(declare-fun e!4335011 () Bool)

(declare-fun tp!2033839 () Bool)

(assert (=> b!7231230 (= e!4335011 (and tp_is_empty!46451 tp!2033839))))

(assert (=> b!7231024 (= tp!2033824 e!4335011)))

(assert (= (and b!7231024 ((_ is Cons!69964) (t!384137 s1!1971))) b!7231230))

(declare-fun b!7231235 () Bool)

(declare-fun e!4335014 () Bool)

(declare-fun tp!2033844 () Bool)

(declare-fun tp!2033845 () Bool)

(assert (=> b!7231235 (= e!4335014 (and tp!2033844 tp!2033845))))

(assert (=> b!7231022 (= tp!2033821 e!4335014)))

(assert (= (and b!7231022 ((_ is Cons!69963) (exprs!7933 ct2!328))) b!7231235))

(declare-fun b!7231236 () Bool)

(declare-fun e!4335015 () Bool)

(declare-fun tp!2033846 () Bool)

(declare-fun tp!2033847 () Bool)

(assert (=> b!7231236 (= e!4335015 (and tp!2033846 tp!2033847))))

(assert (=> b!7231020 (= tp!2033823 e!4335015)))

(assert (= (and b!7231020 ((_ is Cons!69963) (exprs!7933 ct1!232))) b!7231236))

(declare-fun b!7231237 () Bool)

(declare-fun e!4335016 () Bool)

(declare-fun tp!2033848 () Bool)

(assert (=> b!7231237 (= e!4335016 (and tp_is_empty!46451 tp!2033848))))

(assert (=> b!7231026 (= tp!2033822 e!4335016)))

(assert (= (and b!7231026 ((_ is Cons!69964) (t!384137 s2!1849))) b!7231237))

(declare-fun b_lambda!277065 () Bool)

(assert (= b_lambda!277059 (or b!7231021 b_lambda!277065)))

(declare-fun bs!1902528 () Bool)

(declare-fun d!2245689 () Bool)

(assert (= bs!1902528 (and d!2245689 b!7231021)))

(assert (=> bs!1902528 (= (dynLambda!28510 lambda!439289 lt!2573356) (matchZipper!3403 (store ((as const (Array Context!14866 Bool)) false) lt!2573356 true) (t!384137 s1!1971)))))

(declare-fun m!7900048 () Bool)

(assert (=> bs!1902528 m!7900048))

(assert (=> bs!1902528 m!7900048))

(declare-fun m!7900050 () Bool)

(assert (=> bs!1902528 m!7900050))

(assert (=> d!2245623 d!2245689))

(check-sat (not b!7231187) (not b!7231054) (not d!2245677) (not b!7231193) (not b!7231192) (not d!2245679) (not b!7231186) (not b!7231180) (not d!2245667) (not d!2245605) tp_is_empty!46451 (not d!2245665) (not d!2245673) (not bm!658135) (not d!2245663) (not b!7231179) (not b!7231223) (not d!2245661) (not b!7231088) (not d!2245687) (not d!2245685) (not b!7231183) (not d!2245671) (not b!7231053) (not d!2245631) (not b!7231230) (not b!7231090) (not d!2245653) (not d!2245681) (not bm!658122) (not b!7231237) (not bm!658137) (not d!2245675) (not b!7231218) (not b!7231182) (not b!7231236) (not d!2245623) (not d!2245647) (not bs!1902528) (not b!7231126) (not b!7231224) (not b!7231235) (not b_lambda!277065) (not d!2245669) (not b!7231194) (not b!7231125))
(check-sat)
(get-model)

(declare-fun d!2245819 () Bool)

(declare-fun res!2933970 () Bool)

(declare-fun e!4335141 () Bool)

(assert (=> d!2245819 (=> res!2933970 e!4335141)))

(assert (=> d!2245819 (= res!2933970 ((_ is Nil!69965) lt!2573391))))

(assert (=> d!2245819 (= (noDuplicate!2919 lt!2573391) e!4335141)))

(declare-fun b!7231425 () Bool)

(declare-fun e!4335142 () Bool)

(assert (=> b!7231425 (= e!4335141 e!4335142)))

(declare-fun res!2933971 () Bool)

(assert (=> b!7231425 (=> (not res!2933971) (not e!4335142))))

(declare-fun contains!20736 (List!70089 Context!14866) Bool)

(assert (=> b!7231425 (= res!2933971 (not (contains!20736 (t!384138 lt!2573391) (h!76413 lt!2573391))))))

(declare-fun b!7231426 () Bool)

(assert (=> b!7231426 (= e!4335142 (noDuplicate!2919 (t!384138 lt!2573391)))))

(assert (= (and d!2245819 (not res!2933970)) b!7231425))

(assert (= (and b!7231425 res!2933971) b!7231426))

(declare-fun m!7900300 () Bool)

(assert (=> b!7231425 m!7900300))

(declare-fun m!7900302 () Bool)

(assert (=> b!7231426 m!7900302))

(assert (=> d!2245675 d!2245819))

(declare-fun d!2245835 () Bool)

(declare-fun e!4335161 () Bool)

(assert (=> d!2245835 e!4335161))

(declare-fun res!2933976 () Bool)

(assert (=> d!2245835 (=> (not res!2933976) (not e!4335161))))

(declare-fun res!2933977 () List!70089)

(assert (=> d!2245835 (= res!2933976 (noDuplicate!2919 res!2933977))))

(declare-fun e!4335160 () Bool)

(assert (=> d!2245835 e!4335160))

(assert (=> d!2245835 (= (choose!55512 lt!2573329) res!2933977)))

(declare-fun b!7231463 () Bool)

(declare-fun e!4335159 () Bool)

(declare-fun tp!2033882 () Bool)

(assert (=> b!7231463 (= e!4335159 tp!2033882)))

(declare-fun b!7231462 () Bool)

(declare-fun tp!2033881 () Bool)

(assert (=> b!7231462 (= e!4335160 (and (inv!89242 (h!76413 res!2933977)) e!4335159 tp!2033881))))

(declare-fun b!7231464 () Bool)

(assert (=> b!7231464 (= e!4335161 (= (content!14374 res!2933977) lt!2573329))))

(assert (= b!7231462 b!7231463))

(assert (= (and d!2245835 ((_ is Cons!69965) res!2933977)) b!7231462))

(assert (= (and d!2245835 res!2933976) b!7231464))

(declare-fun m!7900308 () Bool)

(assert (=> d!2245835 m!7900308))

(declare-fun m!7900310 () Bool)

(assert (=> b!7231462 m!7900310))

(declare-fun m!7900312 () Bool)

(assert (=> b!7231464 m!7900312))

(assert (=> d!2245675 d!2245835))

(declare-fun d!2245843 () Bool)

(declare-fun c!1341635 () Bool)

(assert (=> d!2245843 (= c!1341635 (isEmpty!40322 (tail!14108 (++!16287 (t!384137 s1!1971) s2!1849))))))

(declare-fun e!4335165 () Bool)

(assert (=> d!2245843 (= (matchZipper!3403 (derivationStepZipper!3285 (store ((as const (Array Context!14866 Bool)) false) (Context!14867 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328))) true) (head!14793 (++!16287 (t!384137 s1!1971) s2!1849))) (tail!14108 (++!16287 (t!384137 s1!1971) s2!1849))) e!4335165)))

(declare-fun b!7231468 () Bool)

(assert (=> b!7231468 (= e!4335165 (nullableZipper!2807 (derivationStepZipper!3285 (store ((as const (Array Context!14866 Bool)) false) (Context!14867 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328))) true) (head!14793 (++!16287 (t!384137 s1!1971) s2!1849)))))))

(declare-fun b!7231469 () Bool)

(assert (=> b!7231469 (= e!4335165 (matchZipper!3403 (derivationStepZipper!3285 (derivationStepZipper!3285 (store ((as const (Array Context!14866 Bool)) false) (Context!14867 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328))) true) (head!14793 (++!16287 (t!384137 s1!1971) s2!1849))) (head!14793 (tail!14108 (++!16287 (t!384137 s1!1971) s2!1849)))) (tail!14108 (tail!14108 (++!16287 (t!384137 s1!1971) s2!1849)))))))

(assert (= (and d!2245843 c!1341635) b!7231468))

(assert (= (and d!2245843 (not c!1341635)) b!7231469))

(assert (=> d!2245843 m!7899886))

(declare-fun m!7900330 () Bool)

(assert (=> d!2245843 m!7900330))

(assert (=> b!7231468 m!7899884))

(declare-fun m!7900334 () Bool)

(assert (=> b!7231468 m!7900334))

(assert (=> b!7231469 m!7899886))

(declare-fun m!7900336 () Bool)

(assert (=> b!7231469 m!7900336))

(assert (=> b!7231469 m!7899884))

(assert (=> b!7231469 m!7900336))

(declare-fun m!7900338 () Bool)

(assert (=> b!7231469 m!7900338))

(assert (=> b!7231469 m!7899886))

(declare-fun m!7900340 () Bool)

(assert (=> b!7231469 m!7900340))

(assert (=> b!7231469 m!7900338))

(assert (=> b!7231469 m!7900340))

(declare-fun m!7900342 () Bool)

(assert (=> b!7231469 m!7900342))

(assert (=> b!7231126 d!2245843))

(declare-fun bs!1902613 () Bool)

(declare-fun d!2245861 () Bool)

(assert (= bs!1902613 (and d!2245861 d!2245665)))

(declare-fun lambda!439340 () Int)

(assert (=> bs!1902613 (= (= (head!14793 (++!16287 (t!384137 s1!1971) s2!1849)) (h!76412 s1!1971)) (= lambda!439340 lambda!439311))))

(assert (=> d!2245861 true))

(assert (=> d!2245861 (= (derivationStepZipper!3285 (store ((as const (Array Context!14866 Bool)) false) (Context!14867 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328))) true) (head!14793 (++!16287 (t!384137 s1!1971) s2!1849))) (flatMap!2701 (store ((as const (Array Context!14866 Bool)) false) (Context!14867 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328))) true) lambda!439340))))

(declare-fun bs!1902614 () Bool)

(assert (= bs!1902614 d!2245861))

(assert (=> bs!1902614 m!7899702))

(declare-fun m!7900344 () Bool)

(assert (=> bs!1902614 m!7900344))

(assert (=> b!7231126 d!2245861))

(declare-fun d!2245863 () Bool)

(assert (=> d!2245863 (= (head!14793 (++!16287 (t!384137 s1!1971) s2!1849)) (h!76412 (++!16287 (t!384137 s1!1971) s2!1849)))))

(assert (=> b!7231126 d!2245863))

(declare-fun d!2245865 () Bool)

(assert (=> d!2245865 (= (tail!14108 (++!16287 (t!384137 s1!1971) s2!1849)) (t!384137 (++!16287 (t!384137 s1!1971) s2!1849)))))

(assert (=> b!7231126 d!2245865))

(declare-fun d!2245867 () Bool)

(declare-fun res!2933982 () Bool)

(declare-fun e!4335170 () Bool)

(assert (=> d!2245867 (=> res!2933982 e!4335170)))

(assert (=> d!2245867 (= res!2933982 ((_ is Nil!69963) (++!16286 (exprs!7933 ct1!232) (exprs!7933 ct2!328))))))

(assert (=> d!2245867 (= (forall!17315 (++!16286 (exprs!7933 ct1!232) (exprs!7933 ct2!328)) lambda!439288) e!4335170)))

(declare-fun b!7231474 () Bool)

(declare-fun e!4335171 () Bool)

(assert (=> b!7231474 (= e!4335170 e!4335171)))

(declare-fun res!2933983 () Bool)

(assert (=> b!7231474 (=> (not res!2933983) (not e!4335171))))

(declare-fun dynLambda!28513 (Int Regex!18493) Bool)

(assert (=> b!7231474 (= res!2933983 (dynLambda!28513 lambda!439288 (h!76411 (++!16286 (exprs!7933 ct1!232) (exprs!7933 ct2!328)))))))

(declare-fun b!7231475 () Bool)

(assert (=> b!7231475 (= e!4335171 (forall!17315 (t!384136 (++!16286 (exprs!7933 ct1!232) (exprs!7933 ct2!328))) lambda!439288))))

(assert (= (and d!2245867 (not res!2933982)) b!7231474))

(assert (= (and b!7231474 res!2933983) b!7231475))

(declare-fun b_lambda!277105 () Bool)

(assert (=> (not b_lambda!277105) (not b!7231474)))

(declare-fun m!7900346 () Bool)

(assert (=> b!7231474 m!7900346))

(declare-fun m!7900348 () Bool)

(assert (=> b!7231475 m!7900348))

(assert (=> d!2245687 d!2245867))

(assert (=> d!2245687 d!2245685))

(declare-fun d!2245869 () Bool)

(assert (=> d!2245869 (forall!17315 (++!16286 (exprs!7933 ct1!232) (exprs!7933 ct2!328)) lambda!439288)))

(assert (=> d!2245869 true))

(declare-fun _$78!723 () Unit!163521)

(assert (=> d!2245869 (= (choose!55509 (exprs!7933 ct1!232) (exprs!7933 ct2!328) lambda!439288) _$78!723)))

(declare-fun bs!1902615 () Bool)

(assert (= bs!1902615 d!2245869))

(assert (=> bs!1902615 m!7899736))

(assert (=> bs!1902615 m!7899736))

(assert (=> bs!1902615 m!7900042))

(assert (=> d!2245687 d!2245869))

(declare-fun d!2245871 () Bool)

(declare-fun res!2933984 () Bool)

(declare-fun e!4335172 () Bool)

(assert (=> d!2245871 (=> res!2933984 e!4335172)))

(assert (=> d!2245871 (= res!2933984 ((_ is Nil!69963) (exprs!7933 ct1!232)))))

(assert (=> d!2245871 (= (forall!17315 (exprs!7933 ct1!232) lambda!439288) e!4335172)))

(declare-fun b!7231476 () Bool)

(declare-fun e!4335173 () Bool)

(assert (=> b!7231476 (= e!4335172 e!4335173)))

(declare-fun res!2933985 () Bool)

(assert (=> b!7231476 (=> (not res!2933985) (not e!4335173))))

(assert (=> b!7231476 (= res!2933985 (dynLambda!28513 lambda!439288 (h!76411 (exprs!7933 ct1!232))))))

(declare-fun b!7231477 () Bool)

(assert (=> b!7231477 (= e!4335173 (forall!17315 (t!384136 (exprs!7933 ct1!232)) lambda!439288))))

(assert (= (and d!2245871 (not res!2933984)) b!7231476))

(assert (= (and b!7231476 res!2933985) b!7231477))

(declare-fun b_lambda!277107 () Bool)

(assert (=> (not b_lambda!277107) (not b!7231476)))

(declare-fun m!7900350 () Bool)

(assert (=> b!7231476 m!7900350))

(declare-fun m!7900352 () Bool)

(assert (=> b!7231477 m!7900352))

(assert (=> d!2245687 d!2245871))

(declare-fun d!2245873 () Bool)

(declare-fun c!1341636 () Bool)

(assert (=> d!2245873 (= c!1341636 (isEmpty!40322 (tail!14108 s2!1849)))))

(declare-fun e!4335174 () Bool)

(assert (=> d!2245873 (= (matchZipper!3403 (derivationStepZipper!3285 (store ((as const (Array Context!14866 Bool)) false) ct2!328 true) (head!14793 s2!1849)) (tail!14108 s2!1849)) e!4335174)))

(declare-fun b!7231478 () Bool)

(assert (=> b!7231478 (= e!4335174 (nullableZipper!2807 (derivationStepZipper!3285 (store ((as const (Array Context!14866 Bool)) false) ct2!328 true) (head!14793 s2!1849))))))

(declare-fun b!7231479 () Bool)

(assert (=> b!7231479 (= e!4335174 (matchZipper!3403 (derivationStepZipper!3285 (derivationStepZipper!3285 (store ((as const (Array Context!14866 Bool)) false) ct2!328 true) (head!14793 s2!1849)) (head!14793 (tail!14108 s2!1849))) (tail!14108 (tail!14108 s2!1849))))))

(assert (= (and d!2245873 c!1341636) b!7231478))

(assert (= (and d!2245873 (not c!1341636)) b!7231479))

(assert (=> d!2245873 m!7899986))

(declare-fun m!7900354 () Bool)

(assert (=> d!2245873 m!7900354))

(assert (=> b!7231478 m!7899984))

(declare-fun m!7900356 () Bool)

(assert (=> b!7231478 m!7900356))

(assert (=> b!7231479 m!7899986))

(declare-fun m!7900358 () Bool)

(assert (=> b!7231479 m!7900358))

(assert (=> b!7231479 m!7899984))

(assert (=> b!7231479 m!7900358))

(declare-fun m!7900360 () Bool)

(assert (=> b!7231479 m!7900360))

(assert (=> b!7231479 m!7899986))

(declare-fun m!7900362 () Bool)

(assert (=> b!7231479 m!7900362))

(assert (=> b!7231479 m!7900360))

(assert (=> b!7231479 m!7900362))

(declare-fun m!7900364 () Bool)

(assert (=> b!7231479 m!7900364))

(assert (=> b!7231187 d!2245873))

(declare-fun bs!1902616 () Bool)

(declare-fun d!2245875 () Bool)

(assert (= bs!1902616 (and d!2245875 d!2245665)))

(declare-fun lambda!439341 () Int)

(assert (=> bs!1902616 (= (= (head!14793 s2!1849) (h!76412 s1!1971)) (= lambda!439341 lambda!439311))))

(declare-fun bs!1902617 () Bool)

(assert (= bs!1902617 (and d!2245875 d!2245861)))

(assert (=> bs!1902617 (= (= (head!14793 s2!1849) (head!14793 (++!16287 (t!384137 s1!1971) s2!1849))) (= lambda!439341 lambda!439340))))

(assert (=> d!2245875 true))

(assert (=> d!2245875 (= (derivationStepZipper!3285 (store ((as const (Array Context!14866 Bool)) false) ct2!328 true) (head!14793 s2!1849)) (flatMap!2701 (store ((as const (Array Context!14866 Bool)) false) ct2!328 true) lambda!439341))))

(declare-fun bs!1902618 () Bool)

(assert (= bs!1902618 d!2245875))

(assert (=> bs!1902618 m!7899696))

(declare-fun m!7900366 () Bool)

(assert (=> bs!1902618 m!7900366))

(assert (=> b!7231187 d!2245875))

(declare-fun d!2245877 () Bool)

(assert (=> d!2245877 (= (head!14793 s2!1849) (h!76412 s2!1849))))

(assert (=> b!7231187 d!2245877))

(declare-fun d!2245879 () Bool)

(assert (=> d!2245879 (= (tail!14108 s2!1849) (t!384137 s2!1849))))

(assert (=> b!7231187 d!2245879))

(declare-fun d!2245881 () Bool)

(declare-fun c!1341639 () Bool)

(assert (=> d!2245881 (= c!1341639 ((_ is Nil!69963) lt!2573347))))

(declare-fun e!4335177 () (InoxSet Regex!18493))

(assert (=> d!2245881 (= (content!14372 lt!2573347) e!4335177)))

(declare-fun b!7231484 () Bool)

(assert (=> b!7231484 (= e!4335177 ((as const (Array Regex!18493 Bool)) false))))

(declare-fun b!7231485 () Bool)

(assert (=> b!7231485 (= e!4335177 ((_ map or) (store ((as const (Array Regex!18493 Bool)) false) (h!76411 lt!2573347) true) (content!14372 (t!384136 lt!2573347))))))

(assert (= (and d!2245881 c!1341639) b!7231484))

(assert (= (and d!2245881 (not c!1341639)) b!7231485))

(declare-fun m!7900368 () Bool)

(assert (=> b!7231485 m!7900368))

(declare-fun m!7900370 () Bool)

(assert (=> b!7231485 m!7900370))

(assert (=> d!2245605 d!2245881))

(declare-fun d!2245883 () Bool)

(declare-fun c!1341640 () Bool)

(assert (=> d!2245883 (= c!1341640 ((_ is Nil!69963) (exprs!7933 lt!2573327)))))

(declare-fun e!4335178 () (InoxSet Regex!18493))

(assert (=> d!2245883 (= (content!14372 (exprs!7933 lt!2573327)) e!4335178)))

(declare-fun b!7231486 () Bool)

(assert (=> b!7231486 (= e!4335178 ((as const (Array Regex!18493 Bool)) false))))

(declare-fun b!7231487 () Bool)

(assert (=> b!7231487 (= e!4335178 ((_ map or) (store ((as const (Array Regex!18493 Bool)) false) (h!76411 (exprs!7933 lt!2573327)) true) (content!14372 (t!384136 (exprs!7933 lt!2573327)))))))

(assert (= (and d!2245883 c!1341640) b!7231486))

(assert (= (and d!2245883 (not c!1341640)) b!7231487))

(declare-fun m!7900372 () Bool)

(assert (=> b!7231487 m!7900372))

(declare-fun m!7900374 () Bool)

(assert (=> b!7231487 m!7900374))

(assert (=> d!2245605 d!2245883))

(declare-fun d!2245885 () Bool)

(declare-fun c!1341641 () Bool)

(assert (=> d!2245885 (= c!1341641 ((_ is Nil!69963) (exprs!7933 ct2!328)))))

(declare-fun e!4335179 () (InoxSet Regex!18493))

(assert (=> d!2245885 (= (content!14372 (exprs!7933 ct2!328)) e!4335179)))

(declare-fun b!7231488 () Bool)

(assert (=> b!7231488 (= e!4335179 ((as const (Array Regex!18493 Bool)) false))))

(declare-fun b!7231489 () Bool)

(assert (=> b!7231489 (= e!4335179 ((_ map or) (store ((as const (Array Regex!18493 Bool)) false) (h!76411 (exprs!7933 ct2!328)) true) (content!14372 (t!384136 (exprs!7933 ct2!328)))))))

(assert (= (and d!2245885 c!1341641) b!7231488))

(assert (= (and d!2245885 (not c!1341641)) b!7231489))

(declare-fun m!7900376 () Bool)

(assert (=> b!7231489 m!7900376))

(declare-fun m!7900378 () Bool)

(assert (=> b!7231489 m!7900378))

(assert (=> d!2245605 d!2245885))

(declare-fun d!2245887 () Bool)

(declare-fun lt!2573421 () Int)

(assert (=> d!2245887 (>= lt!2573421 0)))

(declare-fun e!4335182 () Int)

(assert (=> d!2245887 (= lt!2573421 e!4335182)))

(declare-fun c!1341644 () Bool)

(assert (=> d!2245887 (= c!1341644 ((_ is Nil!69964) lt!2573379))))

(assert (=> d!2245887 (= (size!41548 lt!2573379) lt!2573421)))

(declare-fun b!7231494 () Bool)

(assert (=> b!7231494 (= e!4335182 0)))

(declare-fun b!7231495 () Bool)

(assert (=> b!7231495 (= e!4335182 (+ 1 (size!41548 (t!384137 lt!2573379))))))

(assert (= (and d!2245887 c!1341644) b!7231494))

(assert (= (and d!2245887 (not c!1341644)) b!7231495))

(declare-fun m!7900380 () Bool)

(assert (=> b!7231495 m!7900380))

(assert (=> b!7231180 d!2245887))

(declare-fun d!2245889 () Bool)

(declare-fun lt!2573422 () Int)

(assert (=> d!2245889 (>= lt!2573422 0)))

(declare-fun e!4335183 () Int)

(assert (=> d!2245889 (= lt!2573422 e!4335183)))

(declare-fun c!1341645 () Bool)

(assert (=> d!2245889 (= c!1341645 ((_ is Nil!69964) (t!384137 s1!1971)))))

(assert (=> d!2245889 (= (size!41548 (t!384137 s1!1971)) lt!2573422)))

(declare-fun b!7231496 () Bool)

(assert (=> b!7231496 (= e!4335183 0)))

(declare-fun b!7231497 () Bool)

(assert (=> b!7231497 (= e!4335183 (+ 1 (size!41548 (t!384137 (t!384137 s1!1971)))))))

(assert (= (and d!2245889 c!1341645) b!7231496))

(assert (= (and d!2245889 (not c!1341645)) b!7231497))

(declare-fun m!7900382 () Bool)

(assert (=> b!7231497 m!7900382))

(assert (=> b!7231180 d!2245889))

(declare-fun d!2245891 () Bool)

(declare-fun lt!2573423 () Int)

(assert (=> d!2245891 (>= lt!2573423 0)))

(declare-fun e!4335184 () Int)

(assert (=> d!2245891 (= lt!2573423 e!4335184)))

(declare-fun c!1341646 () Bool)

(assert (=> d!2245891 (= c!1341646 ((_ is Nil!69964) s2!1849))))

(assert (=> d!2245891 (= (size!41548 s2!1849) lt!2573423)))

(declare-fun b!7231498 () Bool)

(assert (=> b!7231498 (= e!4335184 0)))

(declare-fun b!7231499 () Bool)

(assert (=> b!7231499 (= e!4335184 (+ 1 (size!41548 (t!384137 s2!1849))))))

(assert (= (and d!2245891 c!1341646) b!7231498))

(assert (= (and d!2245891 (not c!1341646)) b!7231499))

(declare-fun m!7900384 () Bool)

(assert (=> b!7231499 m!7900384))

(assert (=> b!7231180 d!2245891))

(declare-fun d!2245893 () Bool)

(declare-fun c!1341649 () Bool)

(assert (=> d!2245893 (= c!1341649 ((_ is Nil!69965) lt!2573391))))

(declare-fun e!4335187 () (InoxSet Context!14866))

(assert (=> d!2245893 (= (content!14374 lt!2573391) e!4335187)))

(declare-fun b!7231504 () Bool)

(assert (=> b!7231504 (= e!4335187 ((as const (Array Context!14866 Bool)) false))))

(declare-fun b!7231505 () Bool)

(assert (=> b!7231505 (= e!4335187 ((_ map or) (store ((as const (Array Context!14866 Bool)) false) (h!76413 lt!2573391) true) (content!14374 (t!384138 lt!2573391))))))

(assert (= (and d!2245893 c!1341649) b!7231504))

(assert (= (and d!2245893 (not c!1341649)) b!7231505))

(declare-fun m!7900386 () Bool)

(assert (=> b!7231505 m!7900386))

(declare-fun m!7900388 () Bool)

(assert (=> b!7231505 m!7900388))

(assert (=> b!7231192 d!2245893))

(declare-fun d!2245895 () Bool)

(declare-fun res!2933986 () Bool)

(declare-fun e!4335188 () Bool)

(assert (=> d!2245895 (=> res!2933986 e!4335188)))

(assert (=> d!2245895 (= res!2933986 ((_ is Nil!69963) (exprs!7933 ct2!328)))))

(assert (=> d!2245895 (= (forall!17315 (exprs!7933 ct2!328) lambda!439321) e!4335188)))

(declare-fun b!7231506 () Bool)

(declare-fun e!4335189 () Bool)

(assert (=> b!7231506 (= e!4335188 e!4335189)))

(declare-fun res!2933987 () Bool)

(assert (=> b!7231506 (=> (not res!2933987) (not e!4335189))))

(assert (=> b!7231506 (= res!2933987 (dynLambda!28513 lambda!439321 (h!76411 (exprs!7933 ct2!328))))))

(declare-fun b!7231507 () Bool)

(assert (=> b!7231507 (= e!4335189 (forall!17315 (t!384136 (exprs!7933 ct2!328)) lambda!439321))))

(assert (= (and d!2245895 (not res!2933986)) b!7231506))

(assert (= (and b!7231506 res!2933987) b!7231507))

(declare-fun b_lambda!277109 () Bool)

(assert (=> (not b_lambda!277109) (not b!7231506)))

(declare-fun m!7900390 () Bool)

(assert (=> b!7231506 m!7900390))

(declare-fun m!7900392 () Bool)

(assert (=> b!7231507 m!7900392))

(assert (=> d!2245681 d!2245895))

(declare-fun d!2245897 () Bool)

(declare-fun c!1341650 () Bool)

(assert (=> d!2245897 (= c!1341650 ((_ is Nil!69963) lt!2573392))))

(declare-fun e!4335190 () (InoxSet Regex!18493))

(assert (=> d!2245897 (= (content!14372 lt!2573392) e!4335190)))

(declare-fun b!7231508 () Bool)

(assert (=> b!7231508 (= e!4335190 ((as const (Array Regex!18493 Bool)) false))))

(declare-fun b!7231509 () Bool)

(assert (=> b!7231509 (= e!4335190 ((_ map or) (store ((as const (Array Regex!18493 Bool)) false) (h!76411 lt!2573392) true) (content!14372 (t!384136 lt!2573392))))))

(assert (= (and d!2245897 c!1341650) b!7231508))

(assert (= (and d!2245897 (not c!1341650)) b!7231509))

(declare-fun m!7900394 () Bool)

(assert (=> b!7231509 m!7900394))

(declare-fun m!7900396 () Bool)

(assert (=> b!7231509 m!7900396))

(assert (=> d!2245685 d!2245897))

(declare-fun d!2245899 () Bool)

(declare-fun c!1341651 () Bool)

(assert (=> d!2245899 (= c!1341651 ((_ is Nil!69963) (exprs!7933 ct1!232)))))

(declare-fun e!4335191 () (InoxSet Regex!18493))

(assert (=> d!2245899 (= (content!14372 (exprs!7933 ct1!232)) e!4335191)))

(declare-fun b!7231510 () Bool)

(assert (=> b!7231510 (= e!4335191 ((as const (Array Regex!18493 Bool)) false))))

(declare-fun b!7231511 () Bool)

(assert (=> b!7231511 (= e!4335191 ((_ map or) (store ((as const (Array Regex!18493 Bool)) false) (h!76411 (exprs!7933 ct1!232)) true) (content!14372 (t!384136 (exprs!7933 ct1!232)))))))

(assert (= (and d!2245899 c!1341651) b!7231510))

(assert (= (and d!2245899 (not c!1341651)) b!7231511))

(declare-fun m!7900398 () Bool)

(assert (=> b!7231511 m!7900398))

(declare-fun m!7900400 () Bool)

(assert (=> b!7231511 m!7900400))

(assert (=> d!2245685 d!2245899))

(assert (=> d!2245685 d!2245885))

(declare-fun bs!1902619 () Bool)

(declare-fun d!2245901 () Bool)

(assert (= bs!1902619 (and d!2245901 b!7231021)))

(declare-fun lambda!439344 () Int)

(assert (=> bs!1902619 (not (= lambda!439344 lambda!439289))))

(declare-fun bs!1902620 () Bool)

(assert (= bs!1902620 (and d!2245901 d!2245671)))

(assert (=> bs!1902620 (not (= lambda!439344 lambda!439314))))

(declare-fun bs!1902621 () Bool)

(assert (= bs!1902621 (and d!2245901 d!2245673)))

(assert (=> bs!1902621 (not (= lambda!439344 lambda!439317))))

(assert (=> d!2245901 (= (nullableZipper!2807 (store ((as const (Array Context!14866 Bool)) false) ct2!328 true)) (exists!4129 (store ((as const (Array Context!14866 Bool)) false) ct2!328 true) lambda!439344))))

(declare-fun bs!1902622 () Bool)

(assert (= bs!1902622 d!2245901))

(assert (=> bs!1902622 m!7899696))

(declare-fun m!7900402 () Bool)

(assert (=> bs!1902622 m!7900402))

(assert (=> b!7231186 d!2245901))

(declare-fun bs!1902623 () Bool)

(declare-fun d!2245903 () Bool)

(assert (= bs!1902623 (and d!2245903 b!7231021)))

(declare-fun lambda!439345 () Int)

(assert (=> bs!1902623 (not (= lambda!439345 lambda!439289))))

(declare-fun bs!1902624 () Bool)

(assert (= bs!1902624 (and d!2245903 d!2245671)))

(assert (=> bs!1902624 (not (= lambda!439345 lambda!439314))))

(declare-fun bs!1902625 () Bool)

(assert (= bs!1902625 (and d!2245903 d!2245673)))

(assert (=> bs!1902625 (not (= lambda!439345 lambda!439317))))

(declare-fun bs!1902626 () Bool)

(assert (= bs!1902626 (and d!2245903 d!2245901)))

(assert (=> bs!1902626 (= lambda!439345 lambda!439344)))

(assert (=> d!2245903 (= (nullableZipper!2807 (store ((as const (Array Context!14866 Bool)) false) (Context!14867 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328))) true)) (exists!4129 (store ((as const (Array Context!14866 Bool)) false) (Context!14867 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328))) true) lambda!439345))))

(declare-fun bs!1902627 () Bool)

(assert (= bs!1902627 d!2245903))

(assert (=> bs!1902627 m!7899702))

(declare-fun m!7900404 () Bool)

(assert (=> bs!1902627 m!7900404))

(assert (=> b!7231125 d!2245903))

(declare-fun d!2245905 () Bool)

(declare-fun e!4335193 () Bool)

(assert (=> d!2245905 e!4335193))

(declare-fun res!2933988 () Bool)

(assert (=> d!2245905 (=> (not res!2933988) (not e!4335193))))

(declare-fun lt!2573424 () List!70088)

(assert (=> d!2245905 (= res!2933988 (= (content!14373 lt!2573424) ((_ map or) (content!14373 (t!384137 (t!384137 s1!1971))) (content!14373 s2!1849))))))

(declare-fun e!4335192 () List!70088)

(assert (=> d!2245905 (= lt!2573424 e!4335192)))

(declare-fun c!1341654 () Bool)

(assert (=> d!2245905 (= c!1341654 ((_ is Nil!69964) (t!384137 (t!384137 s1!1971))))))

(assert (=> d!2245905 (= (++!16287 (t!384137 (t!384137 s1!1971)) s2!1849) lt!2573424)))

(declare-fun b!7231512 () Bool)

(assert (=> b!7231512 (= e!4335192 s2!1849)))

(declare-fun b!7231514 () Bool)

(declare-fun res!2933989 () Bool)

(assert (=> b!7231514 (=> (not res!2933989) (not e!4335193))))

(assert (=> b!7231514 (= res!2933989 (= (size!41548 lt!2573424) (+ (size!41548 (t!384137 (t!384137 s1!1971))) (size!41548 s2!1849))))))

(declare-fun b!7231515 () Bool)

(assert (=> b!7231515 (= e!4335193 (or (not (= s2!1849 Nil!69964)) (= lt!2573424 (t!384137 (t!384137 s1!1971)))))))

(declare-fun b!7231513 () Bool)

(assert (=> b!7231513 (= e!4335192 (Cons!69964 (h!76412 (t!384137 (t!384137 s1!1971))) (++!16287 (t!384137 (t!384137 (t!384137 s1!1971))) s2!1849)))))

(assert (= (and d!2245905 c!1341654) b!7231512))

(assert (= (and d!2245905 (not c!1341654)) b!7231513))

(assert (= (and d!2245905 res!2933988) b!7231514))

(assert (= (and b!7231514 res!2933989) b!7231515))

(declare-fun m!7900406 () Bool)

(assert (=> d!2245905 m!7900406))

(declare-fun m!7900408 () Bool)

(assert (=> d!2245905 m!7900408))

(assert (=> d!2245905 m!7899948))

(declare-fun m!7900410 () Bool)

(assert (=> b!7231514 m!7900410))

(assert (=> b!7231514 m!7900382))

(assert (=> b!7231514 m!7899954))

(declare-fun m!7900412 () Bool)

(assert (=> b!7231513 m!7900412))

(assert (=> b!7231179 d!2245905))

(declare-fun d!2245907 () Bool)

(declare-fun res!2933990 () Bool)

(declare-fun e!4335194 () Bool)

(assert (=> d!2245907 (=> res!2933990 e!4335194)))

(assert (=> d!2245907 (= res!2933990 ((_ is Nil!69963) (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328))))))

(assert (=> d!2245907 (= (forall!17315 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328)) lambda!439288) e!4335194)))

(declare-fun b!7231516 () Bool)

(declare-fun e!4335195 () Bool)

(assert (=> b!7231516 (= e!4335194 e!4335195)))

(declare-fun res!2933991 () Bool)

(assert (=> b!7231516 (=> (not res!2933991) (not e!4335195))))

(assert (=> b!7231516 (= res!2933991 (dynLambda!28513 lambda!439288 (h!76411 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328)))))))

(declare-fun b!7231517 () Bool)

(assert (=> b!7231517 (= e!4335195 (forall!17315 (t!384136 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328))) lambda!439288))))

(assert (= (and d!2245907 (not res!2933990)) b!7231516))

(assert (= (and b!7231516 res!2933991) b!7231517))

(declare-fun b_lambda!277111 () Bool)

(assert (=> (not b_lambda!277111) (not b!7231516)))

(declare-fun m!7900414 () Bool)

(assert (=> b!7231516 m!7900414))

(declare-fun m!7900416 () Bool)

(assert (=> b!7231517 m!7900416))

(assert (=> d!2245661 d!2245907))

(assert (=> d!2245661 d!2245605))

(declare-fun d!2245909 () Bool)

(assert (=> d!2245909 (forall!17315 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328)) lambda!439288)))

(assert (=> d!2245909 true))

(declare-fun _$78!724 () Unit!163521)

(assert (=> d!2245909 (= (choose!55509 (exprs!7933 lt!2573327) (exprs!7933 ct2!328) lambda!439288) _$78!724)))

(declare-fun bs!1902628 () Bool)

(assert (= bs!1902628 d!2245909))

(assert (=> bs!1902628 m!7899716))

(assert (=> bs!1902628 m!7899716))

(assert (=> bs!1902628 m!7899958))

(assert (=> d!2245661 d!2245909))

(declare-fun d!2245911 () Bool)

(declare-fun res!2933992 () Bool)

(declare-fun e!4335196 () Bool)

(assert (=> d!2245911 (=> res!2933992 e!4335196)))

(assert (=> d!2245911 (= res!2933992 ((_ is Nil!69963) (exprs!7933 lt!2573327)))))

(assert (=> d!2245911 (= (forall!17315 (exprs!7933 lt!2573327) lambda!439288) e!4335196)))

(declare-fun b!7231518 () Bool)

(declare-fun e!4335197 () Bool)

(assert (=> b!7231518 (= e!4335196 e!4335197)))

(declare-fun res!2933993 () Bool)

(assert (=> b!7231518 (=> (not res!2933993) (not e!4335197))))

(assert (=> b!7231518 (= res!2933993 (dynLambda!28513 lambda!439288 (h!76411 (exprs!7933 lt!2573327))))))

(declare-fun b!7231519 () Bool)

(assert (=> b!7231519 (= e!4335197 (forall!17315 (t!384136 (exprs!7933 lt!2573327)) lambda!439288))))

(assert (= (and d!2245911 (not res!2933992)) b!7231518))

(assert (= (and b!7231518 res!2933993) b!7231519))

(declare-fun b_lambda!277113 () Bool)

(assert (=> (not b_lambda!277113) (not b!7231518)))

(declare-fun m!7900418 () Bool)

(assert (=> b!7231518 m!7900418))

(declare-fun m!7900420 () Bool)

(assert (=> b!7231519 m!7900420))

(assert (=> d!2245661 d!2245911))

(declare-fun d!2245913 () Bool)

(declare-fun c!1341655 () Bool)

(assert (=> d!2245913 (= c!1341655 (isEmpty!40322 (tail!14108 (t!384137 s1!1971))))))

(declare-fun e!4335198 () Bool)

(assert (=> d!2245913 (= (matchZipper!3403 (derivationStepZipper!3285 lt!2573329 (head!14793 (t!384137 s1!1971))) (tail!14108 (t!384137 s1!1971))) e!4335198)))

(declare-fun b!7231520 () Bool)

(assert (=> b!7231520 (= e!4335198 (nullableZipper!2807 (derivationStepZipper!3285 lt!2573329 (head!14793 (t!384137 s1!1971)))))))

(declare-fun b!7231521 () Bool)

(assert (=> b!7231521 (= e!4335198 (matchZipper!3403 (derivationStepZipper!3285 (derivationStepZipper!3285 lt!2573329 (head!14793 (t!384137 s1!1971))) (head!14793 (tail!14108 (t!384137 s1!1971)))) (tail!14108 (tail!14108 (t!384137 s1!1971)))))))

(assert (= (and d!2245913 c!1341655) b!7231520))

(assert (= (and d!2245913 (not c!1341655)) b!7231521))

(assert (=> d!2245913 m!7899972))

(declare-fun m!7900422 () Bool)

(assert (=> d!2245913 m!7900422))

(assert (=> b!7231520 m!7899970))

(declare-fun m!7900424 () Bool)

(assert (=> b!7231520 m!7900424))

(assert (=> b!7231521 m!7899972))

(declare-fun m!7900426 () Bool)

(assert (=> b!7231521 m!7900426))

(assert (=> b!7231521 m!7899970))

(assert (=> b!7231521 m!7900426))

(declare-fun m!7900428 () Bool)

(assert (=> b!7231521 m!7900428))

(assert (=> b!7231521 m!7899972))

(declare-fun m!7900430 () Bool)

(assert (=> b!7231521 m!7900430))

(assert (=> b!7231521 m!7900428))

(assert (=> b!7231521 m!7900430))

(declare-fun m!7900432 () Bool)

(assert (=> b!7231521 m!7900432))

(assert (=> b!7231183 d!2245913))

(declare-fun bs!1902629 () Bool)

(declare-fun d!2245915 () Bool)

(assert (= bs!1902629 (and d!2245915 d!2245665)))

(declare-fun lambda!439346 () Int)

(assert (=> bs!1902629 (= (= (head!14793 (t!384137 s1!1971)) (h!76412 s1!1971)) (= lambda!439346 lambda!439311))))

(declare-fun bs!1902630 () Bool)

(assert (= bs!1902630 (and d!2245915 d!2245861)))

(assert (=> bs!1902630 (= (= (head!14793 (t!384137 s1!1971)) (head!14793 (++!16287 (t!384137 s1!1971) s2!1849))) (= lambda!439346 lambda!439340))))

(declare-fun bs!1902631 () Bool)

(assert (= bs!1902631 (and d!2245915 d!2245875)))

(assert (=> bs!1902631 (= (= (head!14793 (t!384137 s1!1971)) (head!14793 s2!1849)) (= lambda!439346 lambda!439341))))

(assert (=> d!2245915 true))

(assert (=> d!2245915 (= (derivationStepZipper!3285 lt!2573329 (head!14793 (t!384137 s1!1971))) (flatMap!2701 lt!2573329 lambda!439346))))

(declare-fun bs!1902632 () Bool)

(assert (= bs!1902632 d!2245915))

(declare-fun m!7900434 () Bool)

(assert (=> bs!1902632 m!7900434))

(assert (=> b!7231183 d!2245915))

(declare-fun d!2245917 () Bool)

(assert (=> d!2245917 (= (head!14793 (t!384137 s1!1971)) (h!76412 (t!384137 s1!1971)))))

(assert (=> b!7231183 d!2245917))

(declare-fun d!2245919 () Bool)

(assert (=> d!2245919 (= (tail!14108 (t!384137 s1!1971)) (t!384137 (t!384137 s1!1971)))))

(assert (=> b!7231183 d!2245919))

(declare-fun d!2245921 () Bool)

(declare-fun nullableFct!3061 (Regex!18493) Bool)

(assert (=> d!2245921 (= (nullable!7810 (h!76411 (exprs!7933 ct1!232))) (nullableFct!3061 (h!76411 (exprs!7933 ct1!232))))))

(declare-fun bs!1902633 () Bool)

(assert (= bs!1902633 d!2245921))

(declare-fun m!7900436 () Bool)

(assert (=> bs!1902633 m!7900436))

(assert (=> b!7231090 d!2245921))

(declare-fun d!2245923 () Bool)

(assert (=> d!2245923 (= (isEmpty!40322 s2!1849) ((_ is Nil!69964) s2!1849))))

(assert (=> d!2245667 d!2245923))

(declare-fun bs!1902634 () Bool)

(declare-fun d!2245925 () Bool)

(assert (= bs!1902634 (and d!2245925 d!2245673)))

(declare-fun lambda!439347 () Int)

(assert (=> bs!1902634 (not (= lambda!439347 lambda!439317))))

(declare-fun bs!1902635 () Bool)

(assert (= bs!1902635 (and d!2245925 d!2245671)))

(assert (=> bs!1902635 (= (= lambda!439317 lambda!439289) (= lambda!439347 lambda!439314))))

(declare-fun bs!1902636 () Bool)

(assert (= bs!1902636 (and d!2245925 d!2245901)))

(assert (=> bs!1902636 (not (= lambda!439347 lambda!439344))))

(declare-fun bs!1902637 () Bool)

(assert (= bs!1902637 (and d!2245925 b!7231021)))

(assert (=> bs!1902637 (not (= lambda!439347 lambda!439289))))

(declare-fun bs!1902638 () Bool)

(assert (= bs!1902638 (and d!2245925 d!2245903)))

(assert (=> bs!1902638 (not (= lambda!439347 lambda!439345))))

(assert (=> d!2245925 true))

(assert (=> d!2245925 (< (dynLambda!28511 order!28813 lambda!439317) (dynLambda!28511 order!28813 lambda!439347))))

(assert (=> d!2245925 (= (exists!4130 lt!2573325 lambda!439317) (not (forall!17316 lt!2573325 lambda!439347)))))

(declare-fun bs!1902639 () Bool)

(assert (= bs!1902639 d!2245925))

(declare-fun m!7900438 () Bool)

(assert (=> bs!1902639 m!7900438))

(assert (=> d!2245673 d!2245925))

(declare-fun bs!1902640 () Bool)

(declare-fun d!2245927 () Bool)

(assert (= bs!1902640 (and d!2245927 d!2245925)))

(declare-fun lambda!439350 () Int)

(assert (=> bs!1902640 (not (= lambda!439350 lambda!439347))))

(declare-fun bs!1902641 () Bool)

(assert (= bs!1902641 (and d!2245927 d!2245673)))

(assert (=> bs!1902641 (= lambda!439350 lambda!439317)))

(declare-fun bs!1902642 () Bool)

(assert (= bs!1902642 (and d!2245927 d!2245671)))

(assert (=> bs!1902642 (not (= lambda!439350 lambda!439314))))

(declare-fun bs!1902643 () Bool)

(assert (= bs!1902643 (and d!2245927 d!2245901)))

(assert (=> bs!1902643 (not (= lambda!439350 lambda!439344))))

(declare-fun bs!1902644 () Bool)

(assert (= bs!1902644 (and d!2245927 b!7231021)))

(assert (=> bs!1902644 (= lambda!439350 lambda!439289)))

(declare-fun bs!1902645 () Bool)

(assert (= bs!1902645 (and d!2245927 d!2245903)))

(assert (=> bs!1902645 (not (= lambda!439350 lambda!439345))))

(assert (=> d!2245927 true))

(assert (=> d!2245927 (exists!4130 lt!2573325 lambda!439350)))

(assert (=> d!2245927 true))

(declare-fun _$60!1198 () Unit!163521)

(assert (=> d!2245927 (= (choose!55511 lt!2573325 (t!384137 s1!1971)) _$60!1198)))

(declare-fun bs!1902646 () Bool)

(assert (= bs!1902646 d!2245927))

(declare-fun m!7900440 () Bool)

(assert (=> bs!1902646 m!7900440))

(assert (=> d!2245673 d!2245927))

(declare-fun d!2245929 () Bool)

(declare-fun c!1341658 () Bool)

(assert (=> d!2245929 (= c!1341658 (isEmpty!40322 (t!384137 s1!1971)))))

(declare-fun e!4335199 () Bool)

(assert (=> d!2245929 (= (matchZipper!3403 (content!14374 lt!2573325) (t!384137 s1!1971)) e!4335199)))

(declare-fun b!7231522 () Bool)

(assert (=> b!7231522 (= e!4335199 (nullableZipper!2807 (content!14374 lt!2573325)))))

(declare-fun b!7231523 () Bool)

(assert (=> b!7231523 (= e!4335199 (matchZipper!3403 (derivationStepZipper!3285 (content!14374 lt!2573325) (head!14793 (t!384137 s1!1971))) (tail!14108 (t!384137 s1!1971))))))

(assert (= (and d!2245929 c!1341658) b!7231522))

(assert (= (and d!2245929 (not c!1341658)) b!7231523))

(assert (=> d!2245929 m!7899964))

(assert (=> b!7231522 m!7900000))

(declare-fun m!7900442 () Bool)

(assert (=> b!7231522 m!7900442))

(assert (=> b!7231523 m!7899968))

(assert (=> b!7231523 m!7900000))

(assert (=> b!7231523 m!7899968))

(declare-fun m!7900444 () Bool)

(assert (=> b!7231523 m!7900444))

(assert (=> b!7231523 m!7899972))

(assert (=> b!7231523 m!7900444))

(assert (=> b!7231523 m!7899972))

(declare-fun m!7900446 () Bool)

(assert (=> b!7231523 m!7900446))

(assert (=> d!2245673 d!2245929))

(declare-fun d!2245931 () Bool)

(declare-fun c!1341659 () Bool)

(assert (=> d!2245931 (= c!1341659 ((_ is Nil!69965) lt!2573325))))

(declare-fun e!4335200 () (InoxSet Context!14866))

(assert (=> d!2245931 (= (content!14374 lt!2573325) e!4335200)))

(declare-fun b!7231524 () Bool)

(assert (=> b!7231524 (= e!4335200 ((as const (Array Context!14866 Bool)) false))))

(declare-fun b!7231525 () Bool)

(assert (=> b!7231525 (= e!4335200 ((_ map or) (store ((as const (Array Context!14866 Bool)) false) (h!76413 lt!2573325) true) (content!14374 (t!384138 lt!2573325))))))

(assert (= (and d!2245931 c!1341659) b!7231524))

(assert (= (and d!2245931 (not c!1341659)) b!7231525))

(declare-fun m!7900448 () Bool)

(assert (=> b!7231525 m!7900448))

(declare-fun m!7900450 () Bool)

(assert (=> b!7231525 m!7900450))

(assert (=> d!2245673 d!2245931))

(declare-fun bs!1902647 () Bool)

(declare-fun d!2245933 () Bool)

(assert (= bs!1902647 (and d!2245933 d!2245925)))

(declare-fun lambda!439351 () Int)

(assert (=> bs!1902647 (not (= lambda!439351 lambda!439347))))

(declare-fun bs!1902648 () Bool)

(assert (= bs!1902648 (and d!2245933 d!2245927)))

(assert (=> bs!1902648 (not (= lambda!439351 lambda!439350))))

(declare-fun bs!1902649 () Bool)

(assert (= bs!1902649 (and d!2245933 d!2245673)))

(assert (=> bs!1902649 (not (= lambda!439351 lambda!439317))))

(declare-fun bs!1902650 () Bool)

(assert (= bs!1902650 (and d!2245933 d!2245671)))

(assert (=> bs!1902650 (not (= lambda!439351 lambda!439314))))

(declare-fun bs!1902651 () Bool)

(assert (= bs!1902651 (and d!2245933 d!2245901)))

(assert (=> bs!1902651 (= lambda!439351 lambda!439344)))

(declare-fun bs!1902652 () Bool)

(assert (= bs!1902652 (and d!2245933 b!7231021)))

(assert (=> bs!1902652 (not (= lambda!439351 lambda!439289))))

(declare-fun bs!1902653 () Bool)

(assert (= bs!1902653 (and d!2245933 d!2245903)))

(assert (=> bs!1902653 (= lambda!439351 lambda!439345)))

(assert (=> d!2245933 (= (nullableZipper!2807 lt!2573329) (exists!4129 lt!2573329 lambda!439351))))

(declare-fun bs!1902654 () Bool)

(assert (= bs!1902654 d!2245933))

(declare-fun m!7900452 () Bool)

(assert (=> bs!1902654 m!7900452))

(assert (=> b!7231182 d!2245933))

(declare-fun d!2245935 () Bool)

(assert (=> d!2245935 (= (isEmpty!40322 (++!16287 (t!384137 s1!1971) s2!1849)) ((_ is Nil!69964) (++!16287 (t!384137 s1!1971) s2!1849)))))

(assert (=> d!2245631 d!2245935))

(declare-fun d!2245937 () Bool)

(assert (=> d!2245937 (= (isEmpty!40322 (t!384137 s1!1971)) ((_ is Nil!69964) (t!384137 s1!1971)))))

(assert (=> d!2245663 d!2245937))

(declare-fun bs!1902655 () Bool)

(declare-fun d!2245939 () Bool)

(assert (= bs!1902655 (and d!2245939 d!2245925)))

(declare-fun lambda!439352 () Int)

(assert (=> bs!1902655 (= (= lambda!439289 lambda!439317) (= lambda!439352 lambda!439347))))

(declare-fun bs!1902656 () Bool)

(assert (= bs!1902656 (and d!2245939 d!2245927)))

(assert (=> bs!1902656 (not (= lambda!439352 lambda!439350))))

(declare-fun bs!1902657 () Bool)

(assert (= bs!1902657 (and d!2245939 d!2245671)))

(assert (=> bs!1902657 (= lambda!439352 lambda!439314)))

(declare-fun bs!1902658 () Bool)

(assert (= bs!1902658 (and d!2245939 d!2245901)))

(assert (=> bs!1902658 (not (= lambda!439352 lambda!439344))))

(declare-fun bs!1902659 () Bool)

(assert (= bs!1902659 (and d!2245939 b!7231021)))

(assert (=> bs!1902659 (not (= lambda!439352 lambda!439289))))

(declare-fun bs!1902660 () Bool)

(assert (= bs!1902660 (and d!2245939 d!2245903)))

(assert (=> bs!1902660 (not (= lambda!439352 lambda!439345))))

(declare-fun bs!1902661 () Bool)

(assert (= bs!1902661 (and d!2245939 d!2245933)))

(assert (=> bs!1902661 (not (= lambda!439352 lambda!439351))))

(declare-fun bs!1902662 () Bool)

(assert (= bs!1902662 (and d!2245939 d!2245673)))

(assert (=> bs!1902662 (not (= lambda!439352 lambda!439317))))

(assert (=> d!2245939 true))

(assert (=> d!2245939 (< (dynLambda!28511 order!28813 lambda!439289) (dynLambda!28511 order!28813 lambda!439352))))

(assert (=> d!2245939 (= (exists!4130 (toList!11350 lt!2573329) lambda!439289) (not (forall!17316 (toList!11350 lt!2573329) lambda!439352)))))

(declare-fun bs!1902663 () Bool)

(assert (= bs!1902663 d!2245939))

(assert (=> bs!1902663 m!7899726))

(declare-fun m!7900454 () Bool)

(assert (=> bs!1902663 m!7900454))

(assert (=> d!2245669 d!2245939))

(assert (=> d!2245669 d!2245675))

(declare-fun d!2245941 () Bool)

(declare-fun res!2933996 () Bool)

(assert (=> d!2245941 (= res!2933996 (exists!4130 (toList!11350 lt!2573329) lambda!439289))))

(assert (=> d!2245941 true))

(assert (=> d!2245941 (= (choose!55510 lt!2573329 lambda!439289) res!2933996)))

(declare-fun bs!1902664 () Bool)

(assert (= bs!1902664 d!2245941))

(assert (=> bs!1902664 m!7899726))

(assert (=> bs!1902664 m!7899726))

(assert (=> bs!1902664 m!7899990))

(assert (=> d!2245669 d!2245941))

(declare-fun b!7231526 () Bool)

(declare-fun e!4335203 () (InoxSet Context!14866))

(declare-fun e!4335201 () (InoxSet Context!14866))

(assert (=> b!7231526 (= e!4335203 e!4335201)))

(declare-fun c!1341661 () Bool)

(assert (=> b!7231526 (= c!1341661 ((_ is Cons!69963) (exprs!7933 (Context!14867 (t!384136 (exprs!7933 ct1!232))))))))

(declare-fun bm!658163 () Bool)

(declare-fun call!658168 () (InoxSet Context!14866))

(assert (=> bm!658163 (= call!658168 (derivationStepZipperDown!2537 (h!76411 (exprs!7933 (Context!14867 (t!384136 (exprs!7933 ct1!232))))) (Context!14867 (t!384136 (exprs!7933 (Context!14867 (t!384136 (exprs!7933 ct1!232)))))) (h!76412 s1!1971)))))

(declare-fun b!7231527 () Bool)

(assert (=> b!7231527 (= e!4335203 ((_ map or) call!658168 (derivationStepZipperUp!2367 (Context!14867 (t!384136 (exprs!7933 (Context!14867 (t!384136 (exprs!7933 ct1!232)))))) (h!76412 s1!1971))))))

(declare-fun b!7231528 () Bool)

(assert (=> b!7231528 (= e!4335201 ((as const (Array Context!14866 Bool)) false))))

(declare-fun b!7231529 () Bool)

(declare-fun e!4335202 () Bool)

(assert (=> b!7231529 (= e!4335202 (nullable!7810 (h!76411 (exprs!7933 (Context!14867 (t!384136 (exprs!7933 ct1!232)))))))))

(declare-fun b!7231530 () Bool)

(assert (=> b!7231530 (= e!4335201 call!658168)))

(declare-fun d!2245943 () Bool)

(declare-fun c!1341660 () Bool)

(assert (=> d!2245943 (= c!1341660 e!4335202)))

(declare-fun res!2933997 () Bool)

(assert (=> d!2245943 (=> (not res!2933997) (not e!4335202))))

(assert (=> d!2245943 (= res!2933997 ((_ is Cons!69963) (exprs!7933 (Context!14867 (t!384136 (exprs!7933 ct1!232))))))))

(assert (=> d!2245943 (= (derivationStepZipperUp!2367 (Context!14867 (t!384136 (exprs!7933 ct1!232))) (h!76412 s1!1971)) e!4335203)))

(assert (= (and d!2245943 res!2933997) b!7231529))

(assert (= (and d!2245943 c!1341660) b!7231527))

(assert (= (and d!2245943 (not c!1341660)) b!7231526))

(assert (= (and b!7231526 c!1341661) b!7231530))

(assert (= (and b!7231526 (not c!1341661)) b!7231528))

(assert (= (or b!7231527 b!7231530) bm!658163))

(declare-fun m!7900456 () Bool)

(assert (=> bm!658163 m!7900456))

(declare-fun m!7900458 () Bool)

(assert (=> b!7231527 m!7900458))

(declare-fun m!7900460 () Bool)

(assert (=> b!7231529 m!7900460))

(assert (=> b!7231088 d!2245943))

(declare-fun call!658181 () List!70087)

(declare-fun c!1341676 () Bool)

(declare-fun c!1341672 () Bool)

(declare-fun bm!658176 () Bool)

(declare-fun $colon$colon!2857 (List!70087 Regex!18493) List!70087)

(assert (=> bm!658176 (= call!658181 ($colon$colon!2857 (exprs!7933 (Context!14867 (t!384136 (exprs!7933 ct1!232)))) (ite (or c!1341676 c!1341672) (regTwo!37498 (h!76411 (exprs!7933 ct1!232))) (h!76411 (exprs!7933 ct1!232)))))))

(declare-fun bm!658177 () Bool)

(declare-fun call!658186 () (InoxSet Context!14866))

(declare-fun call!658184 () (InoxSet Context!14866))

(assert (=> bm!658177 (= call!658186 call!658184)))

(declare-fun b!7231553 () Bool)

(declare-fun e!4335218 () (InoxSet Context!14866))

(declare-fun call!658182 () (InoxSet Context!14866))

(declare-fun call!658183 () (InoxSet Context!14866))

(assert (=> b!7231553 (= e!4335218 ((_ map or) call!658182 call!658183))))

(declare-fun bm!658178 () Bool)

(declare-fun call!658185 () List!70087)

(assert (=> bm!658178 (= call!658185 call!658181)))

(declare-fun b!7231554 () Bool)

(declare-fun e!4335219 () (InoxSet Context!14866))

(assert (=> b!7231554 (= e!4335219 (store ((as const (Array Context!14866 Bool)) false) (Context!14867 (t!384136 (exprs!7933 ct1!232))) true))))

(declare-fun d!2245945 () Bool)

(declare-fun c!1341673 () Bool)

(assert (=> d!2245945 (= c!1341673 (and ((_ is ElementMatch!18493) (h!76411 (exprs!7933 ct1!232))) (= (c!1341507 (h!76411 (exprs!7933 ct1!232))) (h!76412 s1!1971))))))

(assert (=> d!2245945 (= (derivationStepZipperDown!2537 (h!76411 (exprs!7933 ct1!232)) (Context!14867 (t!384136 (exprs!7933 ct1!232))) (h!76412 s1!1971)) e!4335219)))

(declare-fun b!7231555 () Bool)

(declare-fun e!4335217 () Bool)

(assert (=> b!7231555 (= c!1341676 e!4335217)))

(declare-fun res!2934000 () Bool)

(assert (=> b!7231555 (=> (not res!2934000) (not e!4335217))))

(assert (=> b!7231555 (= res!2934000 ((_ is Concat!27338) (h!76411 (exprs!7933 ct1!232))))))

(declare-fun e!4335221 () (InoxSet Context!14866))

(assert (=> b!7231555 (= e!4335218 e!4335221)))

(declare-fun c!1341674 () Bool)

(declare-fun bm!658179 () Bool)

(assert (=> bm!658179 (= call!658183 (derivationStepZipperDown!2537 (ite c!1341674 (regTwo!37499 (h!76411 (exprs!7933 ct1!232))) (regOne!37498 (h!76411 (exprs!7933 ct1!232)))) (ite c!1341674 (Context!14867 (t!384136 (exprs!7933 ct1!232))) (Context!14867 call!658181)) (h!76412 s1!1971)))))

(declare-fun bm!658180 () Bool)

(assert (=> bm!658180 (= call!658184 call!658182)))

(declare-fun b!7231556 () Bool)

(assert (=> b!7231556 (= e!4335221 ((_ map or) call!658183 call!658184))))

(declare-fun b!7231557 () Bool)

(declare-fun e!4335220 () (InoxSet Context!14866))

(assert (=> b!7231557 (= e!4335220 call!658186)))

(declare-fun b!7231558 () Bool)

(assert (=> b!7231558 (= e!4335217 (nullable!7810 (regOne!37498 (h!76411 (exprs!7933 ct1!232)))))))

(declare-fun b!7231559 () Bool)

(declare-fun e!4335216 () (InoxSet Context!14866))

(assert (=> b!7231559 (= e!4335216 ((as const (Array Context!14866 Bool)) false))))

(declare-fun b!7231560 () Bool)

(assert (=> b!7231560 (= e!4335219 e!4335218)))

(assert (=> b!7231560 (= c!1341674 ((_ is Union!18493) (h!76411 (exprs!7933 ct1!232))))))

(declare-fun b!7231561 () Bool)

(assert (=> b!7231561 (= e!4335216 call!658186)))

(declare-fun bm!658181 () Bool)

(assert (=> bm!658181 (= call!658182 (derivationStepZipperDown!2537 (ite c!1341674 (regOne!37499 (h!76411 (exprs!7933 ct1!232))) (ite c!1341676 (regTwo!37498 (h!76411 (exprs!7933 ct1!232))) (ite c!1341672 (regOne!37498 (h!76411 (exprs!7933 ct1!232))) (reg!18822 (h!76411 (exprs!7933 ct1!232)))))) (ite (or c!1341674 c!1341676) (Context!14867 (t!384136 (exprs!7933 ct1!232))) (Context!14867 call!658185)) (h!76412 s1!1971)))))

(declare-fun b!7231562 () Bool)

(declare-fun c!1341675 () Bool)

(assert (=> b!7231562 (= c!1341675 ((_ is Star!18493) (h!76411 (exprs!7933 ct1!232))))))

(assert (=> b!7231562 (= e!4335220 e!4335216)))

(declare-fun b!7231563 () Bool)

(assert (=> b!7231563 (= e!4335221 e!4335220)))

(assert (=> b!7231563 (= c!1341672 ((_ is Concat!27338) (h!76411 (exprs!7933 ct1!232))))))

(assert (= (and d!2245945 c!1341673) b!7231554))

(assert (= (and d!2245945 (not c!1341673)) b!7231560))

(assert (= (and b!7231560 c!1341674) b!7231553))

(assert (= (and b!7231560 (not c!1341674)) b!7231555))

(assert (= (and b!7231555 res!2934000) b!7231558))

(assert (= (and b!7231555 c!1341676) b!7231556))

(assert (= (and b!7231555 (not c!1341676)) b!7231563))

(assert (= (and b!7231563 c!1341672) b!7231557))

(assert (= (and b!7231563 (not c!1341672)) b!7231562))

(assert (= (and b!7231562 c!1341675) b!7231561))

(assert (= (and b!7231562 (not c!1341675)) b!7231559))

(assert (= (or b!7231557 b!7231561) bm!658178))

(assert (= (or b!7231557 b!7231561) bm!658177))

(assert (= (or b!7231556 bm!658178) bm!658176))

(assert (= (or b!7231556 bm!658177) bm!658180))

(assert (= (or b!7231553 b!7231556) bm!658179))

(assert (= (or b!7231553 bm!658180) bm!658181))

(declare-fun m!7900462 () Bool)

(assert (=> b!7231554 m!7900462))

(declare-fun m!7900464 () Bool)

(assert (=> bm!658181 m!7900464))

(declare-fun m!7900466 () Bool)

(assert (=> b!7231558 m!7900466))

(declare-fun m!7900468 () Bool)

(assert (=> bm!658176 m!7900468))

(declare-fun m!7900470 () Bool)

(assert (=> bm!658179 m!7900470))

(assert (=> bm!658122 d!2245945))

(declare-fun d!2245947 () Bool)

(declare-fun c!1341677 () Bool)

(assert (=> d!2245947 (= c!1341677 (isEmpty!40322 (t!384137 s1!1971)))))

(declare-fun e!4335222 () Bool)

(assert (=> d!2245947 (= (matchZipper!3403 (store ((as const (Array Context!14866 Bool)) false) lt!2573327 true) (t!384137 s1!1971)) e!4335222)))

(declare-fun b!7231564 () Bool)

(assert (=> b!7231564 (= e!4335222 (nullableZipper!2807 (store ((as const (Array Context!14866 Bool)) false) lt!2573327 true)))))

(declare-fun b!7231565 () Bool)

(assert (=> b!7231565 (= e!4335222 (matchZipper!3403 (derivationStepZipper!3285 (store ((as const (Array Context!14866 Bool)) false) lt!2573327 true) (head!14793 (t!384137 s1!1971))) (tail!14108 (t!384137 s1!1971))))))

(assert (= (and d!2245947 c!1341677) b!7231564))

(assert (= (and d!2245947 (not c!1341677)) b!7231565))

(assert (=> d!2245947 m!7899964))

(assert (=> b!7231564 m!7899912))

(declare-fun m!7900472 () Bool)

(assert (=> b!7231564 m!7900472))

(assert (=> b!7231565 m!7899968))

(assert (=> b!7231565 m!7899912))

(assert (=> b!7231565 m!7899968))

(declare-fun m!7900474 () Bool)

(assert (=> b!7231565 m!7900474))

(assert (=> b!7231565 m!7899972))

(assert (=> b!7231565 m!7900474))

(assert (=> b!7231565 m!7899972))

(declare-fun m!7900476 () Bool)

(assert (=> b!7231565 m!7900476))

(assert (=> d!2245647 d!2245947))

(assert (=> d!2245647 d!2245605))

(declare-fun bs!1902665 () Bool)

(declare-fun d!2245949 () Bool)

(assert (= bs!1902665 (and d!2245949 b!7231025)))

(declare-fun lambda!439355 () Int)

(assert (=> bs!1902665 (= lambda!439355 lambda!439288)))

(declare-fun bs!1902666 () Bool)

(assert (= bs!1902666 (and d!2245949 d!2245647)))

(assert (=> bs!1902666 (= lambda!439355 lambda!439302)))

(declare-fun bs!1902667 () Bool)

(assert (= bs!1902667 (and d!2245949 d!2245679)))

(assert (=> bs!1902667 (= lambda!439355 lambda!439320)))

(declare-fun bs!1902668 () Bool)

(assert (= bs!1902668 (and d!2245949 d!2245681)))

(assert (=> bs!1902668 (= lambda!439355 lambda!439321)))

(assert (=> d!2245949 (matchZipper!3403 (store ((as const (Array Context!14866 Bool)) false) (Context!14867 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328))) true) (++!16287 (t!384137 s1!1971) s2!1849))))

(declare-fun lt!2573427 () Unit!163521)

(assert (=> d!2245949 (= lt!2573427 (lemmaConcatPreservesForall!1302 (exprs!7933 lt!2573327) (exprs!7933 ct2!328) lambda!439355))))

(assert (=> d!2245949 true))

(declare-fun _$56!482 () Unit!163521)

(assert (=> d!2245949 (= (choose!55508 lt!2573327 ct2!328 (t!384137 s1!1971) s2!1849) _$56!482)))

(declare-fun bs!1902669 () Bool)

(assert (= bs!1902669 d!2245949))

(assert (=> bs!1902669 m!7899716))

(declare-fun m!7900478 () Bool)

(assert (=> bs!1902669 m!7900478))

(assert (=> bs!1902669 m!7899702))

(assert (=> bs!1902669 m!7899704))

(assert (=> bs!1902669 m!7899702))

(assert (=> bs!1902669 m!7899704))

(assert (=> bs!1902669 m!7899706))

(assert (=> d!2245647 d!2245949))

(assert (=> d!2245647 d!2245631))

(declare-fun d!2245951 () Bool)

(assert (=> d!2245951 (forall!17315 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328)) lambda!439302)))

(declare-fun lt!2573428 () Unit!163521)

(assert (=> d!2245951 (= lt!2573428 (choose!55509 (exprs!7933 lt!2573327) (exprs!7933 ct2!328) lambda!439302))))

(assert (=> d!2245951 (forall!17315 (exprs!7933 lt!2573327) lambda!439302)))

(assert (=> d!2245951 (= (lemmaConcatPreservesForall!1302 (exprs!7933 lt!2573327) (exprs!7933 ct2!328) lambda!439302) lt!2573428)))

(declare-fun bs!1902670 () Bool)

(assert (= bs!1902670 d!2245951))

(assert (=> bs!1902670 m!7899716))

(assert (=> bs!1902670 m!7899716))

(declare-fun m!7900480 () Bool)

(assert (=> bs!1902670 m!7900480))

(declare-fun m!7900482 () Bool)

(assert (=> bs!1902670 m!7900482))

(declare-fun m!7900484 () Bool)

(assert (=> bs!1902670 m!7900484))

(assert (=> d!2245647 d!2245951))

(assert (=> d!2245647 d!2245653))

(declare-fun b!7231566 () Bool)

(declare-fun e!4335224 () List!70087)

(assert (=> b!7231566 (= e!4335224 (exprs!7933 ct2!328))))

(declare-fun b!7231567 () Bool)

(assert (=> b!7231567 (= e!4335224 (Cons!69963 (h!76411 (t!384136 (exprs!7933 lt!2573327))) (++!16286 (t!384136 (t!384136 (exprs!7933 lt!2573327))) (exprs!7933 ct2!328))))))

(declare-fun b!7231568 () Bool)

(declare-fun res!2934002 () Bool)

(declare-fun e!4335223 () Bool)

(assert (=> b!7231568 (=> (not res!2934002) (not e!4335223))))

(declare-fun lt!2573429 () List!70087)

(assert (=> b!7231568 (= res!2934002 (= (size!41546 lt!2573429) (+ (size!41546 (t!384136 (exprs!7933 lt!2573327))) (size!41546 (exprs!7933 ct2!328)))))))

(declare-fun b!7231569 () Bool)

(assert (=> b!7231569 (= e!4335223 (or (not (= (exprs!7933 ct2!328) Nil!69963)) (= lt!2573429 (t!384136 (exprs!7933 lt!2573327)))))))

(declare-fun d!2245953 () Bool)

(assert (=> d!2245953 e!4335223))

(declare-fun res!2934001 () Bool)

(assert (=> d!2245953 (=> (not res!2934001) (not e!4335223))))

(assert (=> d!2245953 (= res!2934001 (= (content!14372 lt!2573429) ((_ map or) (content!14372 (t!384136 (exprs!7933 lt!2573327))) (content!14372 (exprs!7933 ct2!328)))))))

(assert (=> d!2245953 (= lt!2573429 e!4335224)))

(declare-fun c!1341678 () Bool)

(assert (=> d!2245953 (= c!1341678 ((_ is Nil!69963) (t!384136 (exprs!7933 lt!2573327))))))

(assert (=> d!2245953 (= (++!16286 (t!384136 (exprs!7933 lt!2573327)) (exprs!7933 ct2!328)) lt!2573429)))

(assert (= (and d!2245953 c!1341678) b!7231566))

(assert (= (and d!2245953 (not c!1341678)) b!7231567))

(assert (= (and d!2245953 res!2934001) b!7231568))

(assert (= (and b!7231568 res!2934002) b!7231569))

(declare-fun m!7900486 () Bool)

(assert (=> b!7231567 m!7900486))

(declare-fun m!7900488 () Bool)

(assert (=> b!7231568 m!7900488))

(declare-fun m!7900490 () Bool)

(assert (=> b!7231568 m!7900490))

(assert (=> b!7231568 m!7899776))

(declare-fun m!7900492 () Bool)

(assert (=> d!2245953 m!7900492))

(assert (=> d!2245953 m!7900374))

(assert (=> d!2245953 m!7899782))

(assert (=> b!7231053 d!2245953))

(declare-fun d!2245955 () Bool)

(declare-fun lt!2573432 () Int)

(assert (=> d!2245955 (>= lt!2573432 0)))

(declare-fun e!4335227 () Int)

(assert (=> d!2245955 (= lt!2573432 e!4335227)))

(declare-fun c!1341681 () Bool)

(assert (=> d!2245955 (= c!1341681 ((_ is Nil!69963) lt!2573347))))

(assert (=> d!2245955 (= (size!41546 lt!2573347) lt!2573432)))

(declare-fun b!7231574 () Bool)

(assert (=> b!7231574 (= e!4335227 0)))

(declare-fun b!7231575 () Bool)

(assert (=> b!7231575 (= e!4335227 (+ 1 (size!41546 (t!384136 lt!2573347))))))

(assert (= (and d!2245955 c!1341681) b!7231574))

(assert (= (and d!2245955 (not c!1341681)) b!7231575))

(declare-fun m!7900494 () Bool)

(assert (=> b!7231575 m!7900494))

(assert (=> b!7231054 d!2245955))

(declare-fun d!2245957 () Bool)

(declare-fun lt!2573433 () Int)

(assert (=> d!2245957 (>= lt!2573433 0)))

(declare-fun e!4335228 () Int)

(assert (=> d!2245957 (= lt!2573433 e!4335228)))

(declare-fun c!1341682 () Bool)

(assert (=> d!2245957 (= c!1341682 ((_ is Nil!69963) (exprs!7933 lt!2573327)))))

(assert (=> d!2245957 (= (size!41546 (exprs!7933 lt!2573327)) lt!2573433)))

(declare-fun b!7231576 () Bool)

(assert (=> b!7231576 (= e!4335228 0)))

(declare-fun b!7231577 () Bool)

(assert (=> b!7231577 (= e!4335228 (+ 1 (size!41546 (t!384136 (exprs!7933 lt!2573327)))))))

(assert (= (and d!2245957 c!1341682) b!7231576))

(assert (= (and d!2245957 (not c!1341682)) b!7231577))

(assert (=> b!7231577 m!7900490))

(assert (=> b!7231054 d!2245957))

(declare-fun d!2245959 () Bool)

(declare-fun lt!2573434 () Int)

(assert (=> d!2245959 (>= lt!2573434 0)))

(declare-fun e!4335229 () Int)

(assert (=> d!2245959 (= lt!2573434 e!4335229)))

(declare-fun c!1341683 () Bool)

(assert (=> d!2245959 (= c!1341683 ((_ is Nil!69963) (exprs!7933 ct2!328)))))

(assert (=> d!2245959 (= (size!41546 (exprs!7933 ct2!328)) lt!2573434)))

(declare-fun b!7231578 () Bool)

(assert (=> b!7231578 (= e!4335229 0)))

(declare-fun b!7231579 () Bool)

(assert (=> b!7231579 (= e!4335229 (+ 1 (size!41546 (t!384136 (exprs!7933 ct2!328)))))))

(assert (= (and d!2245959 c!1341683) b!7231578))

(assert (= (and d!2245959 (not c!1341683)) b!7231579))

(declare-fun m!7900496 () Bool)

(assert (=> b!7231579 m!7900496))

(assert (=> b!7231054 d!2245959))

(declare-fun d!2245961 () Bool)

(declare-fun c!1341684 () Bool)

(assert (=> d!2245961 (= c!1341684 (isEmpty!40322 (tail!14108 s1!1971)))))

(declare-fun e!4335230 () Bool)

(assert (=> d!2245961 (= (matchZipper!3403 (derivationStepZipper!3285 lt!2573332 (head!14793 s1!1971)) (tail!14108 s1!1971)) e!4335230)))

(declare-fun b!7231580 () Bool)

(assert (=> b!7231580 (= e!4335230 (nullableZipper!2807 (derivationStepZipper!3285 lt!2573332 (head!14793 s1!1971))))))

(declare-fun b!7231581 () Bool)

(assert (=> b!7231581 (= e!4335230 (matchZipper!3403 (derivationStepZipper!3285 (derivationStepZipper!3285 lt!2573332 (head!14793 s1!1971)) (head!14793 (tail!14108 s1!1971))) (tail!14108 (tail!14108 s1!1971))))))

(assert (= (and d!2245961 c!1341684) b!7231580))

(assert (= (and d!2245961 (not c!1341684)) b!7231581))

(assert (=> d!2245961 m!7900018))

(declare-fun m!7900498 () Bool)

(assert (=> d!2245961 m!7900498))

(assert (=> b!7231580 m!7900016))

(declare-fun m!7900500 () Bool)

(assert (=> b!7231580 m!7900500))

(assert (=> b!7231581 m!7900018))

(declare-fun m!7900502 () Bool)

(assert (=> b!7231581 m!7900502))

(assert (=> b!7231581 m!7900016))

(assert (=> b!7231581 m!7900502))

(declare-fun m!7900504 () Bool)

(assert (=> b!7231581 m!7900504))

(assert (=> b!7231581 m!7900018))

(declare-fun m!7900506 () Bool)

(assert (=> b!7231581 m!7900506))

(assert (=> b!7231581 m!7900504))

(assert (=> b!7231581 m!7900506))

(declare-fun m!7900508 () Bool)

(assert (=> b!7231581 m!7900508))

(assert (=> b!7231194 d!2245961))

(declare-fun bs!1902671 () Bool)

(declare-fun d!2245963 () Bool)

(assert (= bs!1902671 (and d!2245963 d!2245665)))

(declare-fun lambda!439356 () Int)

(assert (=> bs!1902671 (= (= (head!14793 s1!1971) (h!76412 s1!1971)) (= lambda!439356 lambda!439311))))

(declare-fun bs!1902672 () Bool)

(assert (= bs!1902672 (and d!2245963 d!2245861)))

(assert (=> bs!1902672 (= (= (head!14793 s1!1971) (head!14793 (++!16287 (t!384137 s1!1971) s2!1849))) (= lambda!439356 lambda!439340))))

(declare-fun bs!1902673 () Bool)

(assert (= bs!1902673 (and d!2245963 d!2245875)))

(assert (=> bs!1902673 (= (= (head!14793 s1!1971) (head!14793 s2!1849)) (= lambda!439356 lambda!439341))))

(declare-fun bs!1902674 () Bool)

(assert (= bs!1902674 (and d!2245963 d!2245915)))

(assert (=> bs!1902674 (= (= (head!14793 s1!1971) (head!14793 (t!384137 s1!1971))) (= lambda!439356 lambda!439346))))

(assert (=> d!2245963 true))

(assert (=> d!2245963 (= (derivationStepZipper!3285 lt!2573332 (head!14793 s1!1971)) (flatMap!2701 lt!2573332 lambda!439356))))

(declare-fun bs!1902675 () Bool)

(assert (= bs!1902675 d!2245963))

(declare-fun m!7900510 () Bool)

(assert (=> bs!1902675 m!7900510))

(assert (=> b!7231194 d!2245963))

(declare-fun d!2245965 () Bool)

(assert (=> d!2245965 (= (head!14793 s1!1971) (h!76412 s1!1971))))

(assert (=> b!7231194 d!2245965))

(declare-fun d!2245967 () Bool)

(assert (=> d!2245967 (= (tail!14108 s1!1971) (t!384137 s1!1971))))

(assert (=> b!7231194 d!2245967))

(declare-fun d!2245969 () Bool)

(declare-fun choose!55514 ((InoxSet Context!14866) Int) (InoxSet Context!14866))

(assert (=> d!2245969 (= (flatMap!2701 lt!2573332 lambda!439311) (choose!55514 lt!2573332 lambda!439311))))

(declare-fun bs!1902676 () Bool)

(assert (= bs!1902676 d!2245969))

(declare-fun m!7900512 () Bool)

(assert (=> bs!1902676 m!7900512))

(assert (=> d!2245665 d!2245969))

(declare-fun d!2245971 () Bool)

(declare-fun res!2934007 () Bool)

(declare-fun e!4335235 () Bool)

(assert (=> d!2245971 (=> res!2934007 e!4335235)))

(assert (=> d!2245971 (= res!2934007 ((_ is Nil!69965) lt!2573325))))

(assert (=> d!2245971 (= (forall!17316 lt!2573325 lambda!439314) e!4335235)))

(declare-fun b!7231586 () Bool)

(declare-fun e!4335236 () Bool)

(assert (=> b!7231586 (= e!4335235 e!4335236)))

(declare-fun res!2934008 () Bool)

(assert (=> b!7231586 (=> (not res!2934008) (not e!4335236))))

(assert (=> b!7231586 (= res!2934008 (dynLambda!28510 lambda!439314 (h!76413 lt!2573325)))))

(declare-fun b!7231587 () Bool)

(assert (=> b!7231587 (= e!4335236 (forall!17316 (t!384138 lt!2573325) lambda!439314))))

(assert (= (and d!2245971 (not res!2934007)) b!7231586))

(assert (= (and b!7231586 res!2934008) b!7231587))

(declare-fun b_lambda!277115 () Bool)

(assert (=> (not b_lambda!277115) (not b!7231586)))

(declare-fun m!7900514 () Bool)

(assert (=> b!7231586 m!7900514))

(declare-fun m!7900516 () Bool)

(assert (=> b!7231587 m!7900516))

(assert (=> d!2245671 d!2245971))

(declare-fun bs!1902677 () Bool)

(declare-fun d!2245973 () Bool)

(assert (= bs!1902677 (and d!2245973 d!2245925)))

(declare-fun lambda!439357 () Int)

(assert (=> bs!1902677 (not (= lambda!439357 lambda!439347))))

(declare-fun bs!1902678 () Bool)

(assert (= bs!1902678 (and d!2245973 d!2245927)))

(assert (=> bs!1902678 (not (= lambda!439357 lambda!439350))))

(declare-fun bs!1902679 () Bool)

(assert (= bs!1902679 (and d!2245973 d!2245671)))

(assert (=> bs!1902679 (not (= lambda!439357 lambda!439314))))

(declare-fun bs!1902680 () Bool)

(assert (= bs!1902680 (and d!2245973 d!2245901)))

(assert (=> bs!1902680 (= lambda!439357 lambda!439344)))

(declare-fun bs!1902681 () Bool)

(assert (= bs!1902681 (and d!2245973 b!7231021)))

(assert (=> bs!1902681 (not (= lambda!439357 lambda!439289))))

(declare-fun bs!1902682 () Bool)

(assert (= bs!1902682 (and d!2245973 d!2245903)))

(assert (=> bs!1902682 (= lambda!439357 lambda!439345)))

(declare-fun bs!1902683 () Bool)

(assert (= bs!1902683 (and d!2245973 d!2245939)))

(assert (=> bs!1902683 (not (= lambda!439357 lambda!439352))))

(declare-fun bs!1902684 () Bool)

(assert (= bs!1902684 (and d!2245973 d!2245933)))

(assert (=> bs!1902684 (= lambda!439357 lambda!439351)))

(declare-fun bs!1902685 () Bool)

(assert (= bs!1902685 (and d!2245973 d!2245673)))

(assert (=> bs!1902685 (not (= lambda!439357 lambda!439317))))

(assert (=> d!2245973 (= (nullableZipper!2807 lt!2573332) (exists!4129 lt!2573332 lambda!439357))))

(declare-fun bs!1902686 () Bool)

(assert (= bs!1902686 d!2245973))

(declare-fun m!7900518 () Bool)

(assert (=> bs!1902686 m!7900518))

(assert (=> b!7231193 d!2245973))

(declare-fun d!2245975 () Bool)

(assert (=> d!2245975 (= (nullable!7810 (reg!18822 (h!76411 (exprs!7933 ct1!232)))) (nullableFct!3061 (reg!18822 (h!76411 (exprs!7933 ct1!232)))))))

(declare-fun bs!1902687 () Bool)

(assert (= bs!1902687 d!2245975))

(declare-fun m!7900520 () Bool)

(assert (=> bs!1902687 m!7900520))

(assert (=> b!7231218 d!2245975))

(declare-fun d!2245977 () Bool)

(declare-fun c!1341685 () Bool)

(assert (=> d!2245977 (= c!1341685 (isEmpty!40322 (t!384137 s1!1971)))))

(declare-fun e!4335237 () Bool)

(assert (=> d!2245977 (= (matchZipper!3403 (store ((as const (Array Context!14866 Bool)) false) lt!2573356 true) (t!384137 s1!1971)) e!4335237)))

(declare-fun b!7231588 () Bool)

(assert (=> b!7231588 (= e!4335237 (nullableZipper!2807 (store ((as const (Array Context!14866 Bool)) false) lt!2573356 true)))))

(declare-fun b!7231589 () Bool)

(assert (=> b!7231589 (= e!4335237 (matchZipper!3403 (derivationStepZipper!3285 (store ((as const (Array Context!14866 Bool)) false) lt!2573356 true) (head!14793 (t!384137 s1!1971))) (tail!14108 (t!384137 s1!1971))))))

(assert (= (and d!2245977 c!1341685) b!7231588))

(assert (= (and d!2245977 (not c!1341685)) b!7231589))

(assert (=> d!2245977 m!7899964))

(assert (=> b!7231588 m!7900048))

(declare-fun m!7900522 () Bool)

(assert (=> b!7231588 m!7900522))

(assert (=> b!7231589 m!7899968))

(assert (=> b!7231589 m!7900048))

(assert (=> b!7231589 m!7899968))

(declare-fun m!7900524 () Bool)

(assert (=> b!7231589 m!7900524))

(assert (=> b!7231589 m!7899972))

(assert (=> b!7231589 m!7900524))

(assert (=> b!7231589 m!7899972))

(declare-fun m!7900526 () Bool)

(assert (=> b!7231589 m!7900526))

(assert (=> bs!1902528 d!2245977))

(declare-fun d!2245979 () Bool)

(declare-fun lt!2573435 () Int)

(assert (=> d!2245979 (>= lt!2573435 0)))

(declare-fun e!4335238 () Int)

(assert (=> d!2245979 (= lt!2573435 e!4335238)))

(declare-fun c!1341686 () Bool)

(assert (=> d!2245979 (= c!1341686 ((_ is Nil!69963) lt!2573392))))

(assert (=> d!2245979 (= (size!41546 lt!2573392) lt!2573435)))

(declare-fun b!7231590 () Bool)

(assert (=> b!7231590 (= e!4335238 0)))

(declare-fun b!7231591 () Bool)

(assert (=> b!7231591 (= e!4335238 (+ 1 (size!41546 (t!384136 lt!2573392))))))

(assert (= (and d!2245979 c!1341686) b!7231590))

(assert (= (and d!2245979 (not c!1341686)) b!7231591))

(declare-fun m!7900528 () Bool)

(assert (=> b!7231591 m!7900528))

(assert (=> b!7231224 d!2245979))

(declare-fun d!2245981 () Bool)

(declare-fun lt!2573436 () Int)

(assert (=> d!2245981 (>= lt!2573436 0)))

(declare-fun e!4335239 () Int)

(assert (=> d!2245981 (= lt!2573436 e!4335239)))

(declare-fun c!1341687 () Bool)

(assert (=> d!2245981 (= c!1341687 ((_ is Nil!69963) (exprs!7933 ct1!232)))))

(assert (=> d!2245981 (= (size!41546 (exprs!7933 ct1!232)) lt!2573436)))

(declare-fun b!7231592 () Bool)

(assert (=> b!7231592 (= e!4335239 0)))

(declare-fun b!7231593 () Bool)

(assert (=> b!7231593 (= e!4335239 (+ 1 (size!41546 (t!384136 (exprs!7933 ct1!232)))))))

(assert (= (and d!2245981 c!1341687) b!7231592))

(assert (= (and d!2245981 (not c!1341687)) b!7231593))

(declare-fun m!7900530 () Bool)

(assert (=> b!7231593 m!7900530))

(assert (=> b!7231224 d!2245981))

(assert (=> b!7231224 d!2245959))

(declare-fun d!2245983 () Bool)

(assert (=> d!2245983 (= (isEmpty!40322 s1!1971) ((_ is Nil!69964) s1!1971))))

(assert (=> d!2245677 d!2245983))

(declare-fun d!2245985 () Bool)

(declare-fun c!1341690 () Bool)

(assert (=> d!2245985 (= c!1341690 ((_ is Nil!69964) lt!2573379))))

(declare-fun e!4335242 () (InoxSet C!37260))

(assert (=> d!2245985 (= (content!14373 lt!2573379) e!4335242)))

(declare-fun b!7231598 () Bool)

(assert (=> b!7231598 (= e!4335242 ((as const (Array C!37260 Bool)) false))))

(declare-fun b!7231599 () Bool)

(assert (=> b!7231599 (= e!4335242 ((_ map or) (store ((as const (Array C!37260 Bool)) false) (h!76412 lt!2573379) true) (content!14373 (t!384137 lt!2573379))))))

(assert (= (and d!2245985 c!1341690) b!7231598))

(assert (= (and d!2245985 (not c!1341690)) b!7231599))

(declare-fun m!7900532 () Bool)

(assert (=> b!7231599 m!7900532))

(declare-fun m!7900534 () Bool)

(assert (=> b!7231599 m!7900534))

(assert (=> d!2245653 d!2245985))

(declare-fun d!2245987 () Bool)

(declare-fun c!1341691 () Bool)

(assert (=> d!2245987 (= c!1341691 ((_ is Nil!69964) (t!384137 s1!1971)))))

(declare-fun e!4335243 () (InoxSet C!37260))

(assert (=> d!2245987 (= (content!14373 (t!384137 s1!1971)) e!4335243)))

(declare-fun b!7231600 () Bool)

(assert (=> b!7231600 (= e!4335243 ((as const (Array C!37260 Bool)) false))))

(declare-fun b!7231601 () Bool)

(assert (=> b!7231601 (= e!4335243 ((_ map or) (store ((as const (Array C!37260 Bool)) false) (h!76412 (t!384137 s1!1971)) true) (content!14373 (t!384137 (t!384137 s1!1971)))))))

(assert (= (and d!2245987 c!1341691) b!7231600))

(assert (= (and d!2245987 (not c!1341691)) b!7231601))

(declare-fun m!7900536 () Bool)

(assert (=> b!7231601 m!7900536))

(assert (=> b!7231601 m!7900408))

(assert (=> d!2245653 d!2245987))

(declare-fun d!2245989 () Bool)

(declare-fun c!1341692 () Bool)

(assert (=> d!2245989 (= c!1341692 ((_ is Nil!69964) s2!1849))))

(declare-fun e!4335244 () (InoxSet C!37260))

(assert (=> d!2245989 (= (content!14373 s2!1849) e!4335244)))

(declare-fun b!7231602 () Bool)

(assert (=> b!7231602 (= e!4335244 ((as const (Array C!37260 Bool)) false))))

(declare-fun b!7231603 () Bool)

(assert (=> b!7231603 (= e!4335244 ((_ map or) (store ((as const (Array C!37260 Bool)) false) (h!76412 s2!1849) true) (content!14373 (t!384137 s2!1849))))))

(assert (= (and d!2245989 c!1341692) b!7231602))

(assert (= (and d!2245989 (not c!1341692)) b!7231603))

(declare-fun m!7900538 () Bool)

(assert (=> b!7231603 m!7900538))

(declare-fun m!7900540 () Bool)

(assert (=> b!7231603 m!7900540))

(assert (=> d!2245653 d!2245989))

(declare-fun b!7231604 () Bool)

(declare-fun e!4335246 () List!70087)

(assert (=> b!7231604 (= e!4335246 (exprs!7933 ct2!328))))

(declare-fun b!7231605 () Bool)

(assert (=> b!7231605 (= e!4335246 (Cons!69963 (h!76411 (t!384136 (exprs!7933 ct1!232))) (++!16286 (t!384136 (t!384136 (exprs!7933 ct1!232))) (exprs!7933 ct2!328))))))

(declare-fun b!7231606 () Bool)

(declare-fun res!2934010 () Bool)

(declare-fun e!4335245 () Bool)

(assert (=> b!7231606 (=> (not res!2934010) (not e!4335245))))

(declare-fun lt!2573437 () List!70087)

(assert (=> b!7231606 (= res!2934010 (= (size!41546 lt!2573437) (+ (size!41546 (t!384136 (exprs!7933 ct1!232))) (size!41546 (exprs!7933 ct2!328)))))))

(declare-fun b!7231607 () Bool)

(assert (=> b!7231607 (= e!4335245 (or (not (= (exprs!7933 ct2!328) Nil!69963)) (= lt!2573437 (t!384136 (exprs!7933 ct1!232)))))))

(declare-fun d!2245991 () Bool)

(assert (=> d!2245991 e!4335245))

(declare-fun res!2934009 () Bool)

(assert (=> d!2245991 (=> (not res!2934009) (not e!4335245))))

(assert (=> d!2245991 (= res!2934009 (= (content!14372 lt!2573437) ((_ map or) (content!14372 (t!384136 (exprs!7933 ct1!232))) (content!14372 (exprs!7933 ct2!328)))))))

(assert (=> d!2245991 (= lt!2573437 e!4335246)))

(declare-fun c!1341693 () Bool)

(assert (=> d!2245991 (= c!1341693 ((_ is Nil!69963) (t!384136 (exprs!7933 ct1!232))))))

(assert (=> d!2245991 (= (++!16286 (t!384136 (exprs!7933 ct1!232)) (exprs!7933 ct2!328)) lt!2573437)))

(assert (= (and d!2245991 c!1341693) b!7231604))

(assert (= (and d!2245991 (not c!1341693)) b!7231605))

(assert (= (and d!2245991 res!2934009) b!7231606))

(assert (= (and b!7231606 res!2934010) b!7231607))

(declare-fun m!7900542 () Bool)

(assert (=> b!7231605 m!7900542))

(declare-fun m!7900544 () Bool)

(assert (=> b!7231606 m!7900544))

(assert (=> b!7231606 m!7900530))

(assert (=> b!7231606 m!7899776))

(declare-fun m!7900546 () Bool)

(assert (=> d!2245991 m!7900546))

(assert (=> d!2245991 m!7900400))

(assert (=> d!2245991 m!7899782))

(assert (=> b!7231223 d!2245991))

(declare-fun b!7231608 () Bool)

(declare-fun e!4335251 () Bool)

(declare-fun e!4335252 () Bool)

(assert (=> b!7231608 (= e!4335251 e!4335252)))

(declare-fun c!1341694 () Bool)

(assert (=> b!7231608 (= c!1341694 ((_ is Union!18493) (ite c!1341564 (reg!18822 (h!76411 (exprs!7933 ct1!232))) (ite c!1341563 (regOne!37499 (h!76411 (exprs!7933 ct1!232))) (regOne!37498 (h!76411 (exprs!7933 ct1!232)))))))))

(declare-fun b!7231609 () Bool)

(declare-fun res!2934012 () Bool)

(declare-fun e!4335253 () Bool)

(assert (=> b!7231609 (=> res!2934012 e!4335253)))

(assert (=> b!7231609 (= res!2934012 (not ((_ is Concat!27338) (ite c!1341564 (reg!18822 (h!76411 (exprs!7933 ct1!232))) (ite c!1341563 (regOne!37499 (h!76411 (exprs!7933 ct1!232))) (regOne!37498 (h!76411 (exprs!7933 ct1!232))))))))))

(assert (=> b!7231609 (= e!4335252 e!4335253)))

(declare-fun b!7231610 () Bool)

(declare-fun e!4335249 () Bool)

(assert (=> b!7231610 (= e!4335249 e!4335251)))

(declare-fun c!1341695 () Bool)

(assert (=> b!7231610 (= c!1341695 ((_ is Star!18493) (ite c!1341564 (reg!18822 (h!76411 (exprs!7933 ct1!232))) (ite c!1341563 (regOne!37499 (h!76411 (exprs!7933 ct1!232))) (regOne!37498 (h!76411 (exprs!7933 ct1!232)))))))))

(declare-fun call!658189 () Bool)

(declare-fun bm!658182 () Bool)

(assert (=> bm!658182 (= call!658189 (validRegex!9508 (ite c!1341694 (regTwo!37499 (ite c!1341564 (reg!18822 (h!76411 (exprs!7933 ct1!232))) (ite c!1341563 (regOne!37499 (h!76411 (exprs!7933 ct1!232))) (regOne!37498 (h!76411 (exprs!7933 ct1!232)))))) (regTwo!37498 (ite c!1341564 (reg!18822 (h!76411 (exprs!7933 ct1!232))) (ite c!1341563 (regOne!37499 (h!76411 (exprs!7933 ct1!232))) (regOne!37498 (h!76411 (exprs!7933 ct1!232)))))))))))

(declare-fun b!7231611 () Bool)

(declare-fun res!2934013 () Bool)

(declare-fun e!4335248 () Bool)

(assert (=> b!7231611 (=> (not res!2934013) (not e!4335248))))

(declare-fun call!658187 () Bool)

(assert (=> b!7231611 (= res!2934013 call!658187)))

(assert (=> b!7231611 (= e!4335252 e!4335248)))

(declare-fun bm!658183 () Bool)

(declare-fun call!658188 () Bool)

(assert (=> bm!658183 (= call!658187 call!658188)))

(declare-fun bm!658184 () Bool)

(assert (=> bm!658184 (= call!658188 (validRegex!9508 (ite c!1341695 (reg!18822 (ite c!1341564 (reg!18822 (h!76411 (exprs!7933 ct1!232))) (ite c!1341563 (regOne!37499 (h!76411 (exprs!7933 ct1!232))) (regOne!37498 (h!76411 (exprs!7933 ct1!232)))))) (ite c!1341694 (regOne!37499 (ite c!1341564 (reg!18822 (h!76411 (exprs!7933 ct1!232))) (ite c!1341563 (regOne!37499 (h!76411 (exprs!7933 ct1!232))) (regOne!37498 (h!76411 (exprs!7933 ct1!232)))))) (regOne!37498 (ite c!1341564 (reg!18822 (h!76411 (exprs!7933 ct1!232))) (ite c!1341563 (regOne!37499 (h!76411 (exprs!7933 ct1!232))) (regOne!37498 (h!76411 (exprs!7933 ct1!232))))))))))))

(declare-fun b!7231612 () Bool)

(assert (=> b!7231612 (= e!4335248 call!658189)))

(declare-fun b!7231613 () Bool)

(declare-fun e!4335247 () Bool)

(assert (=> b!7231613 (= e!4335251 e!4335247)))

(declare-fun res!2934011 () Bool)

(assert (=> b!7231613 (= res!2934011 (not (nullable!7810 (reg!18822 (ite c!1341564 (reg!18822 (h!76411 (exprs!7933 ct1!232))) (ite c!1341563 (regOne!37499 (h!76411 (exprs!7933 ct1!232))) (regOne!37498 (h!76411 (exprs!7933 ct1!232)))))))))))

(assert (=> b!7231613 (=> (not res!2934011) (not e!4335247))))

(declare-fun b!7231615 () Bool)

(declare-fun e!4335250 () Bool)

(assert (=> b!7231615 (= e!4335250 call!658189)))

(declare-fun b!7231616 () Bool)

(assert (=> b!7231616 (= e!4335247 call!658188)))

(declare-fun b!7231614 () Bool)

(assert (=> b!7231614 (= e!4335253 e!4335250)))

(declare-fun res!2934014 () Bool)

(assert (=> b!7231614 (=> (not res!2934014) (not e!4335250))))

(assert (=> b!7231614 (= res!2934014 call!658187)))

(declare-fun d!2245993 () Bool)

(declare-fun res!2934015 () Bool)

(assert (=> d!2245993 (=> res!2934015 e!4335249)))

(assert (=> d!2245993 (= res!2934015 ((_ is ElementMatch!18493) (ite c!1341564 (reg!18822 (h!76411 (exprs!7933 ct1!232))) (ite c!1341563 (regOne!37499 (h!76411 (exprs!7933 ct1!232))) (regOne!37498 (h!76411 (exprs!7933 ct1!232)))))))))

(assert (=> d!2245993 (= (validRegex!9508 (ite c!1341564 (reg!18822 (h!76411 (exprs!7933 ct1!232))) (ite c!1341563 (regOne!37499 (h!76411 (exprs!7933 ct1!232))) (regOne!37498 (h!76411 (exprs!7933 ct1!232)))))) e!4335249)))

(assert (= (and d!2245993 (not res!2934015)) b!7231610))

(assert (= (and b!7231610 c!1341695) b!7231613))

(assert (= (and b!7231610 (not c!1341695)) b!7231608))

(assert (= (and b!7231613 res!2934011) b!7231616))

(assert (= (and b!7231608 c!1341694) b!7231611))

(assert (= (and b!7231608 (not c!1341694)) b!7231609))

(assert (= (and b!7231611 res!2934013) b!7231612))

(assert (= (and b!7231609 (not res!2934012)) b!7231614))

(assert (= (and b!7231614 res!2934014) b!7231615))

(assert (= (or b!7231611 b!7231614) bm!658183))

(assert (= (or b!7231612 b!7231615) bm!658182))

(assert (= (or b!7231616 bm!658183) bm!658184))

(declare-fun m!7900548 () Bool)

(assert (=> bm!658182 m!7900548))

(declare-fun m!7900550 () Bool)

(assert (=> bm!658184 m!7900550))

(declare-fun m!7900552 () Bool)

(assert (=> b!7231613 m!7900552))

(assert (=> bm!658137 d!2245993))

(declare-fun d!2245995 () Bool)

(declare-fun res!2934016 () Bool)

(declare-fun e!4335254 () Bool)

(assert (=> d!2245995 (=> res!2934016 e!4335254)))

(assert (=> d!2245995 (= res!2934016 ((_ is Nil!69963) (exprs!7933 ct1!232)))))

(assert (=> d!2245995 (= (forall!17315 (exprs!7933 ct1!232) lambda!439320) e!4335254)))

(declare-fun b!7231617 () Bool)

(declare-fun e!4335255 () Bool)

(assert (=> b!7231617 (= e!4335254 e!4335255)))

(declare-fun res!2934017 () Bool)

(assert (=> b!7231617 (=> (not res!2934017) (not e!4335255))))

(assert (=> b!7231617 (= res!2934017 (dynLambda!28513 lambda!439320 (h!76411 (exprs!7933 ct1!232))))))

(declare-fun b!7231618 () Bool)

(assert (=> b!7231618 (= e!4335255 (forall!17315 (t!384136 (exprs!7933 ct1!232)) lambda!439320))))

(assert (= (and d!2245995 (not res!2934016)) b!7231617))

(assert (= (and b!7231617 res!2934017) b!7231618))

(declare-fun b_lambda!277117 () Bool)

(assert (=> (not b_lambda!277117) (not b!7231617)))

(declare-fun m!7900554 () Bool)

(assert (=> b!7231617 m!7900554))

(declare-fun m!7900556 () Bool)

(assert (=> b!7231618 m!7900556))

(assert (=> d!2245679 d!2245995))

(declare-fun b!7231631 () Bool)

(declare-fun e!4335265 () Context!14866)

(declare-fun e!4335264 () Context!14866)

(assert (=> b!7231631 (= e!4335265 e!4335264)))

(declare-fun c!1341701 () Bool)

(assert (=> b!7231631 (= c!1341701 ((_ is Cons!69965) (toList!11350 lt!2573329)))))

(declare-fun b!7231632 () Bool)

(declare-fun e!4335267 () Bool)

(declare-fun lt!2573442 () Context!14866)

(assert (=> b!7231632 (= e!4335267 (contains!20736 (toList!11350 lt!2573329) lt!2573442))))

(declare-fun b!7231633 () Bool)

(declare-fun e!4335266 () Bool)

(assert (=> b!7231633 (= e!4335266 (dynLambda!28510 lambda!439289 (h!76413 (toList!11350 lt!2573329))))))

(declare-fun b!7231634 () Bool)

(declare-fun lt!2573443 () Unit!163521)

(declare-fun Unit!163524 () Unit!163521)

(assert (=> b!7231634 (= lt!2573443 Unit!163524)))

(assert (=> b!7231634 false))

(declare-fun head!14795 (List!70089) Context!14866)

(assert (=> b!7231634 (= e!4335264 (head!14795 (toList!11350 lt!2573329)))))

(declare-fun d!2245997 () Bool)

(assert (=> d!2245997 e!4335267))

(declare-fun res!2934023 () Bool)

(assert (=> d!2245997 (=> (not res!2934023) (not e!4335267))))

(assert (=> d!2245997 (= res!2934023 (dynLambda!28510 lambda!439289 lt!2573442))))

(assert (=> d!2245997 (= lt!2573442 e!4335265)))

(declare-fun c!1341700 () Bool)

(assert (=> d!2245997 (= c!1341700 e!4335266)))

(declare-fun res!2934022 () Bool)

(assert (=> d!2245997 (=> (not res!2934022) (not e!4335266))))

(assert (=> d!2245997 (= res!2934022 ((_ is Cons!69965) (toList!11350 lt!2573329)))))

(assert (=> d!2245997 (exists!4130 (toList!11350 lt!2573329) lambda!439289)))

(assert (=> d!2245997 (= (getWitness!2007 (toList!11350 lt!2573329) lambda!439289) lt!2573442)))

(declare-fun b!7231635 () Bool)

(assert (=> b!7231635 (= e!4335264 (getWitness!2007 (t!384138 (toList!11350 lt!2573329)) lambda!439289))))

(declare-fun b!7231636 () Bool)

(assert (=> b!7231636 (= e!4335265 (h!76413 (toList!11350 lt!2573329)))))

(assert (= (and d!2245997 res!2934022) b!7231633))

(assert (= (and d!2245997 c!1341700) b!7231636))

(assert (= (and d!2245997 (not c!1341700)) b!7231631))

(assert (= (and b!7231631 c!1341701) b!7231635))

(assert (= (and b!7231631 (not c!1341701)) b!7231634))

(assert (= (and d!2245997 res!2934023) b!7231632))

(declare-fun b_lambda!277119 () Bool)

(assert (=> (not b_lambda!277119) (not b!7231633)))

(declare-fun b_lambda!277121 () Bool)

(assert (=> (not b_lambda!277121) (not d!2245997)))

(declare-fun m!7900558 () Bool)

(assert (=> b!7231635 m!7900558))

(declare-fun m!7900560 () Bool)

(assert (=> d!2245997 m!7900560))

(assert (=> d!2245997 m!7899726))

(assert (=> d!2245997 m!7899990))

(assert (=> b!7231632 m!7899726))

(declare-fun m!7900562 () Bool)

(assert (=> b!7231632 m!7900562))

(assert (=> b!7231634 m!7899726))

(declare-fun m!7900564 () Bool)

(assert (=> b!7231634 m!7900564))

(declare-fun m!7900566 () Bool)

(assert (=> b!7231633 m!7900566))

(assert (=> d!2245623 d!2245997))

(assert (=> d!2245623 d!2245675))

(assert (=> d!2245623 d!2245669))

(declare-fun b!7231637 () Bool)

(declare-fun e!4335272 () Bool)

(declare-fun e!4335273 () Bool)

(assert (=> b!7231637 (= e!4335272 e!4335273)))

(declare-fun c!1341702 () Bool)

(assert (=> b!7231637 (= c!1341702 ((_ is Union!18493) (ite c!1341563 (regTwo!37499 (h!76411 (exprs!7933 ct1!232))) (regTwo!37498 (h!76411 (exprs!7933 ct1!232))))))))

(declare-fun b!7231638 () Bool)

(declare-fun res!2934025 () Bool)

(declare-fun e!4335274 () Bool)

(assert (=> b!7231638 (=> res!2934025 e!4335274)))

(assert (=> b!7231638 (= res!2934025 (not ((_ is Concat!27338) (ite c!1341563 (regTwo!37499 (h!76411 (exprs!7933 ct1!232))) (regTwo!37498 (h!76411 (exprs!7933 ct1!232)))))))))

(assert (=> b!7231638 (= e!4335273 e!4335274)))

(declare-fun b!7231639 () Bool)

(declare-fun e!4335270 () Bool)

(assert (=> b!7231639 (= e!4335270 e!4335272)))

(declare-fun c!1341703 () Bool)

(assert (=> b!7231639 (= c!1341703 ((_ is Star!18493) (ite c!1341563 (regTwo!37499 (h!76411 (exprs!7933 ct1!232))) (regTwo!37498 (h!76411 (exprs!7933 ct1!232))))))))

(declare-fun bm!658185 () Bool)

(declare-fun call!658192 () Bool)

(assert (=> bm!658185 (= call!658192 (validRegex!9508 (ite c!1341702 (regTwo!37499 (ite c!1341563 (regTwo!37499 (h!76411 (exprs!7933 ct1!232))) (regTwo!37498 (h!76411 (exprs!7933 ct1!232))))) (regTwo!37498 (ite c!1341563 (regTwo!37499 (h!76411 (exprs!7933 ct1!232))) (regTwo!37498 (h!76411 (exprs!7933 ct1!232))))))))))

(declare-fun b!7231640 () Bool)

(declare-fun res!2934026 () Bool)

(declare-fun e!4335269 () Bool)

(assert (=> b!7231640 (=> (not res!2934026) (not e!4335269))))

(declare-fun call!658190 () Bool)

(assert (=> b!7231640 (= res!2934026 call!658190)))

(assert (=> b!7231640 (= e!4335273 e!4335269)))

(declare-fun bm!658186 () Bool)

(declare-fun call!658191 () Bool)

(assert (=> bm!658186 (= call!658190 call!658191)))

(declare-fun bm!658187 () Bool)

(assert (=> bm!658187 (= call!658191 (validRegex!9508 (ite c!1341703 (reg!18822 (ite c!1341563 (regTwo!37499 (h!76411 (exprs!7933 ct1!232))) (regTwo!37498 (h!76411 (exprs!7933 ct1!232))))) (ite c!1341702 (regOne!37499 (ite c!1341563 (regTwo!37499 (h!76411 (exprs!7933 ct1!232))) (regTwo!37498 (h!76411 (exprs!7933 ct1!232))))) (regOne!37498 (ite c!1341563 (regTwo!37499 (h!76411 (exprs!7933 ct1!232))) (regTwo!37498 (h!76411 (exprs!7933 ct1!232)))))))))))

(declare-fun b!7231641 () Bool)

(assert (=> b!7231641 (= e!4335269 call!658192)))

(declare-fun b!7231642 () Bool)

(declare-fun e!4335268 () Bool)

(assert (=> b!7231642 (= e!4335272 e!4335268)))

(declare-fun res!2934024 () Bool)

(assert (=> b!7231642 (= res!2934024 (not (nullable!7810 (reg!18822 (ite c!1341563 (regTwo!37499 (h!76411 (exprs!7933 ct1!232))) (regTwo!37498 (h!76411 (exprs!7933 ct1!232))))))))))

(assert (=> b!7231642 (=> (not res!2934024) (not e!4335268))))

(declare-fun b!7231644 () Bool)

(declare-fun e!4335271 () Bool)

(assert (=> b!7231644 (= e!4335271 call!658192)))

(declare-fun b!7231645 () Bool)

(assert (=> b!7231645 (= e!4335268 call!658191)))

(declare-fun b!7231643 () Bool)

(assert (=> b!7231643 (= e!4335274 e!4335271)))

(declare-fun res!2934027 () Bool)

(assert (=> b!7231643 (=> (not res!2934027) (not e!4335271))))

(assert (=> b!7231643 (= res!2934027 call!658190)))

(declare-fun d!2245999 () Bool)

(declare-fun res!2934028 () Bool)

(assert (=> d!2245999 (=> res!2934028 e!4335270)))

(assert (=> d!2245999 (= res!2934028 ((_ is ElementMatch!18493) (ite c!1341563 (regTwo!37499 (h!76411 (exprs!7933 ct1!232))) (regTwo!37498 (h!76411 (exprs!7933 ct1!232))))))))

(assert (=> d!2245999 (= (validRegex!9508 (ite c!1341563 (regTwo!37499 (h!76411 (exprs!7933 ct1!232))) (regTwo!37498 (h!76411 (exprs!7933 ct1!232))))) e!4335270)))

(assert (= (and d!2245999 (not res!2934028)) b!7231639))

(assert (= (and b!7231639 c!1341703) b!7231642))

(assert (= (and b!7231639 (not c!1341703)) b!7231637))

(assert (= (and b!7231642 res!2934024) b!7231645))

(assert (= (and b!7231637 c!1341702) b!7231640))

(assert (= (and b!7231637 (not c!1341702)) b!7231638))

(assert (= (and b!7231640 res!2934026) b!7231641))

(assert (= (and b!7231638 (not res!2934025)) b!7231643))

(assert (= (and b!7231643 res!2934027) b!7231644))

(assert (= (or b!7231640 b!7231643) bm!658186))

(assert (= (or b!7231641 b!7231644) bm!658185))

(assert (= (or b!7231645 bm!658186) bm!658187))

(declare-fun m!7900568 () Bool)

(assert (=> bm!658185 m!7900568))

(declare-fun m!7900570 () Bool)

(assert (=> bm!658187 m!7900570))

(declare-fun m!7900572 () Bool)

(assert (=> b!7231642 m!7900572))

(assert (=> bm!658135 d!2245999))

(declare-fun b!7231659 () Bool)

(declare-fun e!4335277 () Bool)

(declare-fun tp!2033901 () Bool)

(declare-fun tp!2033899 () Bool)

(assert (=> b!7231659 (= e!4335277 (and tp!2033901 tp!2033899))))

(declare-fun b!7231657 () Bool)

(declare-fun tp!2033898 () Bool)

(declare-fun tp!2033900 () Bool)

(assert (=> b!7231657 (= e!4335277 (and tp!2033898 tp!2033900))))

(declare-fun b!7231658 () Bool)

(declare-fun tp!2033897 () Bool)

(assert (=> b!7231658 (= e!4335277 tp!2033897)))

(declare-fun b!7231656 () Bool)

(assert (=> b!7231656 (= e!4335277 tp_is_empty!46451)))

(assert (=> b!7231235 (= tp!2033844 e!4335277)))

(assert (= (and b!7231235 ((_ is ElementMatch!18493) (h!76411 (exprs!7933 ct2!328)))) b!7231656))

(assert (= (and b!7231235 ((_ is Concat!27338) (h!76411 (exprs!7933 ct2!328)))) b!7231657))

(assert (= (and b!7231235 ((_ is Star!18493) (h!76411 (exprs!7933 ct2!328)))) b!7231658))

(assert (= (and b!7231235 ((_ is Union!18493) (h!76411 (exprs!7933 ct2!328)))) b!7231659))

(declare-fun b!7231660 () Bool)

(declare-fun e!4335278 () Bool)

(declare-fun tp!2033902 () Bool)

(declare-fun tp!2033903 () Bool)

(assert (=> b!7231660 (= e!4335278 (and tp!2033902 tp!2033903))))

(assert (=> b!7231235 (= tp!2033845 e!4335278)))

(assert (= (and b!7231235 ((_ is Cons!69963) (t!384136 (exprs!7933 ct2!328)))) b!7231660))

(declare-fun b!7231661 () Bool)

(declare-fun e!4335279 () Bool)

(declare-fun tp!2033904 () Bool)

(assert (=> b!7231661 (= e!4335279 (and tp_is_empty!46451 tp!2033904))))

(assert (=> b!7231230 (= tp!2033839 e!4335279)))

(assert (= (and b!7231230 ((_ is Cons!69964) (t!384137 (t!384137 s1!1971)))) b!7231661))

(declare-fun b!7231665 () Bool)

(declare-fun e!4335280 () Bool)

(declare-fun tp!2033909 () Bool)

(declare-fun tp!2033907 () Bool)

(assert (=> b!7231665 (= e!4335280 (and tp!2033909 tp!2033907))))

(declare-fun b!7231663 () Bool)

(declare-fun tp!2033906 () Bool)

(declare-fun tp!2033908 () Bool)

(assert (=> b!7231663 (= e!4335280 (and tp!2033906 tp!2033908))))

(declare-fun b!7231664 () Bool)

(declare-fun tp!2033905 () Bool)

(assert (=> b!7231664 (= e!4335280 tp!2033905)))

(declare-fun b!7231662 () Bool)

(assert (=> b!7231662 (= e!4335280 tp_is_empty!46451)))

(assert (=> b!7231236 (= tp!2033846 e!4335280)))

(assert (= (and b!7231236 ((_ is ElementMatch!18493) (h!76411 (exprs!7933 ct1!232)))) b!7231662))

(assert (= (and b!7231236 ((_ is Concat!27338) (h!76411 (exprs!7933 ct1!232)))) b!7231663))

(assert (= (and b!7231236 ((_ is Star!18493) (h!76411 (exprs!7933 ct1!232)))) b!7231664))

(assert (= (and b!7231236 ((_ is Union!18493) (h!76411 (exprs!7933 ct1!232)))) b!7231665))

(declare-fun b!7231666 () Bool)

(declare-fun e!4335281 () Bool)

(declare-fun tp!2033910 () Bool)

(declare-fun tp!2033911 () Bool)

(assert (=> b!7231666 (= e!4335281 (and tp!2033910 tp!2033911))))

(assert (=> b!7231236 (= tp!2033847 e!4335281)))

(assert (= (and b!7231236 ((_ is Cons!69963) (t!384136 (exprs!7933 ct1!232)))) b!7231666))

(declare-fun b!7231667 () Bool)

(declare-fun e!4335282 () Bool)

(declare-fun tp!2033912 () Bool)

(assert (=> b!7231667 (= e!4335282 (and tp_is_empty!46451 tp!2033912))))

(assert (=> b!7231237 (= tp!2033848 e!4335282)))

(assert (= (and b!7231237 ((_ is Cons!69964) (t!384137 (t!384137 s2!1849)))) b!7231667))

(declare-fun b_lambda!277123 () Bool)

(assert (= b_lambda!277111 (or b!7231025 b_lambda!277123)))

(declare-fun bs!1902688 () Bool)

(declare-fun d!2246001 () Bool)

(assert (= bs!1902688 (and d!2246001 b!7231025)))

(assert (=> bs!1902688 (= (dynLambda!28513 lambda!439288 (h!76411 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328)))) (validRegex!9508 (h!76411 (++!16286 (exprs!7933 lt!2573327) (exprs!7933 ct2!328)))))))

(declare-fun m!7900574 () Bool)

(assert (=> bs!1902688 m!7900574))

(assert (=> b!7231516 d!2246001))

(declare-fun b_lambda!277125 () Bool)

(assert (= b_lambda!277109 (or d!2245681 b_lambda!277125)))

(declare-fun bs!1902689 () Bool)

(declare-fun d!2246003 () Bool)

(assert (= bs!1902689 (and d!2246003 d!2245681)))

(assert (=> bs!1902689 (= (dynLambda!28513 lambda!439321 (h!76411 (exprs!7933 ct2!328))) (validRegex!9508 (h!76411 (exprs!7933 ct2!328))))))

(declare-fun m!7900576 () Bool)

(assert (=> bs!1902689 m!7900576))

(assert (=> b!7231506 d!2246003))

(declare-fun b_lambda!277127 () Bool)

(assert (= b_lambda!277121 (or b!7231021 b_lambda!277127)))

(declare-fun bs!1902690 () Bool)

(declare-fun d!2246005 () Bool)

(assert (= bs!1902690 (and d!2246005 b!7231021)))

(assert (=> bs!1902690 (= (dynLambda!28510 lambda!439289 lt!2573442) (matchZipper!3403 (store ((as const (Array Context!14866 Bool)) false) lt!2573442 true) (t!384137 s1!1971)))))

(declare-fun m!7900578 () Bool)

(assert (=> bs!1902690 m!7900578))

(assert (=> bs!1902690 m!7900578))

(declare-fun m!7900580 () Bool)

(assert (=> bs!1902690 m!7900580))

(assert (=> d!2245997 d!2246005))

(declare-fun b_lambda!277129 () Bool)

(assert (= b_lambda!277113 (or b!7231025 b_lambda!277129)))

(declare-fun bs!1902691 () Bool)

(declare-fun d!2246007 () Bool)

(assert (= bs!1902691 (and d!2246007 b!7231025)))

(assert (=> bs!1902691 (= (dynLambda!28513 lambda!439288 (h!76411 (exprs!7933 lt!2573327))) (validRegex!9508 (h!76411 (exprs!7933 lt!2573327))))))

(declare-fun m!7900582 () Bool)

(assert (=> bs!1902691 m!7900582))

(assert (=> b!7231518 d!2246007))

(declare-fun b_lambda!277131 () Bool)

(assert (= b_lambda!277105 (or b!7231025 b_lambda!277131)))

(declare-fun bs!1902692 () Bool)

(declare-fun d!2246009 () Bool)

(assert (= bs!1902692 (and d!2246009 b!7231025)))

(assert (=> bs!1902692 (= (dynLambda!28513 lambda!439288 (h!76411 (++!16286 (exprs!7933 ct1!232) (exprs!7933 ct2!328)))) (validRegex!9508 (h!76411 (++!16286 (exprs!7933 ct1!232) (exprs!7933 ct2!328)))))))

(declare-fun m!7900584 () Bool)

(assert (=> bs!1902692 m!7900584))

(assert (=> b!7231474 d!2246009))

(declare-fun b_lambda!277133 () Bool)

(assert (= b_lambda!277119 (or b!7231021 b_lambda!277133)))

(declare-fun bs!1902693 () Bool)

(declare-fun d!2246011 () Bool)

(assert (= bs!1902693 (and d!2246011 b!7231021)))

(assert (=> bs!1902693 (= (dynLambda!28510 lambda!439289 (h!76413 (toList!11350 lt!2573329))) (matchZipper!3403 (store ((as const (Array Context!14866 Bool)) false) (h!76413 (toList!11350 lt!2573329)) true) (t!384137 s1!1971)))))

(declare-fun m!7900586 () Bool)

(assert (=> bs!1902693 m!7900586))

(assert (=> bs!1902693 m!7900586))

(declare-fun m!7900588 () Bool)

(assert (=> bs!1902693 m!7900588))

(assert (=> b!7231633 d!2246011))

(declare-fun b_lambda!277135 () Bool)

(assert (= b_lambda!277115 (or d!2245671 b_lambda!277135)))

(declare-fun bs!1902694 () Bool)

(declare-fun d!2246013 () Bool)

(assert (= bs!1902694 (and d!2246013 d!2245671)))

(assert (=> bs!1902694 (= (dynLambda!28510 lambda!439314 (h!76413 lt!2573325)) (not (dynLambda!28510 lambda!439289 (h!76413 lt!2573325))))))

(declare-fun b_lambda!277141 () Bool)

(assert (=> (not b_lambda!277141) (not bs!1902694)))

(declare-fun m!7900590 () Bool)

(assert (=> bs!1902694 m!7900590))

(assert (=> b!7231586 d!2246013))

(declare-fun b_lambda!277137 () Bool)

(assert (= b_lambda!277107 (or b!7231025 b_lambda!277137)))

(declare-fun bs!1902695 () Bool)

(declare-fun d!2246015 () Bool)

(assert (= bs!1902695 (and d!2246015 b!7231025)))

(assert (=> bs!1902695 (= (dynLambda!28513 lambda!439288 (h!76411 (exprs!7933 ct1!232))) (validRegex!9508 (h!76411 (exprs!7933 ct1!232))))))

(assert (=> bs!1902695 m!7899700))

(assert (=> b!7231476 d!2246015))

(declare-fun b_lambda!277139 () Bool)

(assert (= b_lambda!277117 (or d!2245679 b_lambda!277139)))

(declare-fun bs!1902696 () Bool)

(declare-fun d!2246017 () Bool)

(assert (= bs!1902696 (and d!2246017 d!2245679)))

(assert (=> bs!1902696 (= (dynLambda!28513 lambda!439320 (h!76411 (exprs!7933 ct1!232))) (validRegex!9508 (h!76411 (exprs!7933 ct1!232))))))

(assert (=> bs!1902696 m!7899700))

(assert (=> b!7231617 d!2246017))

(check-sat (not b!7231521) (not b!7231513) (not d!2245903) (not b!7231603) tp_is_empty!46451 (not b!7231426) (not b_lambda!277141) (not b!7231505) (not b!7231632) (not d!2245925) (not b!7231514) (not b!7231464) (not d!2245949) (not b!7231522) (not b!7231425) (not d!2245953) (not bs!1902689) (not b!7231601) (not bm!658185) (not b!7231511) (not d!2245927) (not b!7231462) (not b!7231580) (not d!2245875) (not b!7231634) (not d!2245843) (not d!2245913) (not b!7231523) (not bm!658176) (not bm!658181) (not b!7231666) (not bs!1902692) (not d!2245869) (not bs!1902693) (not d!2245835) (not b!7231507) (not b!7231497) (not b_lambda!277133) (not d!2245947) (not d!2245939) (not b!7231667) (not b!7231479) (not d!2245861) (not d!2245901) (not b!7231591) (not b!7231527) (not b!7231581) (not b!7231565) (not b!7231567) (not d!2245929) (not b!7231606) (not d!2245915) (not b!7231475) (not d!2245991) (not b!7231599) (not bm!658184) (not d!2245873) (not d!2245977) (not d!2245963) (not d!2245969) (not d!2245951) (not b!7231661) (not bs!1902688) (not b!7231485) (not d!2245961) (not b!7231593) (not b!7231463) (not bm!658179) (not b!7231618) (not d!2245933) (not b!7231468) (not d!2245905) (not bs!1902696) (not b!7231588) (not b!7231657) (not b!7231663) (not b!7231660) (not b!7231665) (not b!7231577) (not b_lambda!277127) (not d!2245921) (not b!7231642) (not b!7231575) (not b_lambda!277135) (not b!7231664) (not bm!658163) (not b_lambda!277125) (not b!7231499) (not d!2245975) (not b!7231469) (not b!7231520) (not b!7231568) (not b!7231487) (not b!7231613) (not bs!1902690) (not b!7231579) (not d!2245973) (not b!7231517) (not bm!658187) (not b!7231564) (not b!7231478) (not b_lambda!277139) (not b!7231659) (not b!7231495) (not b!7231529) (not b!7231605) (not bs!1902691) (not bs!1902695) (not b_lambda!277123) (not b_lambda!277129) (not d!2245909) (not b_lambda!277137) (not b!7231558) (not d!2245941) (not b!7231587) (not b!7231589) (not b!7231477) (not b_lambda!277065) (not b!7231525) (not bm!658182) (not b!7231658) (not b_lambda!277131) (not d!2245997) (not b!7231509) (not b!7231489) (not b!7231519) (not b!7231635))
(check-sat)
