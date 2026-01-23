; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!704776 () Bool)

(assert start!704776)

(declare-fun b!7246902 () Bool)

(declare-fun e!4345178 () Bool)

(declare-fun tp!2036695 () Bool)

(assert (=> b!7246902 (= e!4345178 tp!2036695)))

(declare-fun b!7246903 () Bool)

(declare-fun e!4345182 () Bool)

(declare-fun tp_is_empty!46703 () Bool)

(declare-fun tp!2036696 () Bool)

(assert (=> b!7246903 (= e!4345182 (and tp_is_empty!46703 tp!2036696))))

(declare-fun b!7246904 () Bool)

(declare-fun e!4345177 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37512 0))(
  ( (C!37513 (val!28704 Int)) )
))
(declare-datatypes ((Regex!18619 0))(
  ( (ElementMatch!18619 (c!1346253 C!37512)) (Concat!27464 (regOne!37750 Regex!18619) (regTwo!37750 Regex!18619)) (EmptyExpr!18619) (Star!18619 (reg!18948 Regex!18619)) (EmptyLang!18619) (Union!18619 (regOne!37751 Regex!18619) (regTwo!37751 Regex!18619)) )
))
(declare-datatypes ((List!70437 0))(
  ( (Nil!70313) (Cons!70313 (h!76761 Regex!18619) (t!384489 List!70437)) )
))
(declare-datatypes ((Context!15118 0))(
  ( (Context!15119 (exprs!8059 List!70437)) )
))
(declare-fun lt!2583103 () (InoxSet Context!15118))

(declare-datatypes ((List!70438 0))(
  ( (Nil!70314) (Cons!70314 (h!76762 C!37512) (t!384490 List!70438)) )
))
(declare-fun s1!1971 () List!70438)

(declare-fun matchZipper!3529 ((InoxSet Context!15118) List!70438) Bool)

(declare-datatypes ((List!70439 0))(
  ( (Nil!70315) (Cons!70315 (h!76763 Context!15118) (t!384491 List!70439)) )
))
(declare-fun content!14552 (List!70439) (InoxSet Context!15118))

(declare-fun toList!11448 ((InoxSet Context!15118)) List!70439)

(assert (=> b!7246904 (= e!4345177 (not (matchZipper!3529 (content!14552 (toList!11448 lt!2583103)) (t!384490 s1!1971))))))

(declare-fun res!2939504 () Bool)

(declare-fun e!4345181 () Bool)

(assert (=> start!704776 (=> (not res!2939504) (not e!4345181))))

(declare-fun lt!2583101 () (InoxSet Context!15118))

(assert (=> start!704776 (= res!2939504 (matchZipper!3529 lt!2583101 s1!1971))))

(declare-fun ct1!232 () Context!15118)

(assert (=> start!704776 (= lt!2583101 (store ((as const (Array Context!15118 Bool)) false) ct1!232 true))))

(assert (=> start!704776 e!4345181))

(declare-fun inv!89557 (Context!15118) Bool)

(assert (=> start!704776 (and (inv!89557 ct1!232) e!4345178)))

(declare-fun e!4345180 () Bool)

(assert (=> start!704776 e!4345180))

(assert (=> start!704776 e!4345182))

(declare-fun ct2!328 () Context!15118)

(declare-fun e!4345176 () Bool)

(assert (=> start!704776 (and (inv!89557 ct2!328) e!4345176)))

(declare-fun b!7246905 () Bool)

(declare-fun e!4345179 () Bool)

(assert (=> b!7246905 (= e!4345179 e!4345177)))

(declare-fun res!2939505 () Bool)

(assert (=> b!7246905 (=> (not res!2939505) (not e!4345177))))

(assert (=> b!7246905 (= res!2939505 (matchZipper!3529 lt!2583103 (t!384490 s1!1971)))))

(declare-fun derivationStepZipper!3397 ((InoxSet Context!15118) C!37512) (InoxSet Context!15118))

(assert (=> b!7246905 (= lt!2583103 (derivationStepZipper!3397 lt!2583101 (h!76762 s1!1971)))))

(declare-fun b!7246906 () Bool)

(declare-fun res!2939507 () Bool)

(assert (=> b!7246906 (=> (not res!2939507) (not e!4345181))))

(declare-fun s2!1849 () List!70438)

(assert (=> b!7246906 (= res!2939507 (matchZipper!3529 (store ((as const (Array Context!15118 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7246907 () Bool)

(assert (=> b!7246907 (= e!4345181 e!4345179)))

(declare-fun res!2939506 () Bool)

(assert (=> b!7246907 (=> (not res!2939506) (not e!4345179))))

(get-info :version)

(assert (=> b!7246907 (= res!2939506 (and (not ((_ is Nil!70313) (exprs!8059 ct1!232))) ((_ is Cons!70314) s1!1971)))))

(declare-fun lt!2583102 () List!70437)

(declare-fun ++!16505 (List!70437 List!70437) List!70437)

(assert (=> b!7246907 (= lt!2583102 (++!16505 (exprs!8059 ct1!232) (exprs!8059 ct2!328)))))

(declare-datatypes ((Unit!163821 0))(
  ( (Unit!163822) )
))
(declare-fun lt!2583100 () Unit!163821)

(declare-fun lambda!443297 () Int)

(declare-fun lemmaConcatPreservesForall!1426 (List!70437 List!70437 Int) Unit!163821)

(assert (=> b!7246907 (= lt!2583100 (lemmaConcatPreservesForall!1426 (exprs!8059 ct1!232) (exprs!8059 ct2!328) lambda!443297))))

(declare-fun b!7246908 () Bool)

(declare-fun tp!2036694 () Bool)

(assert (=> b!7246908 (= e!4345180 (and tp_is_empty!46703 tp!2036694))))

(declare-fun b!7246909 () Bool)

(declare-fun tp!2036693 () Bool)

(assert (=> b!7246909 (= e!4345176 tp!2036693)))

(assert (= (and start!704776 res!2939504) b!7246906))

(assert (= (and b!7246906 res!2939507) b!7246907))

(assert (= (and b!7246907 res!2939506) b!7246905))

(assert (= (and b!7246905 res!2939505) b!7246904))

(assert (= start!704776 b!7246902))

(assert (= (and start!704776 ((_ is Cons!70314) s1!1971)) b!7246908))

(assert (= (and start!704776 ((_ is Cons!70314) s2!1849)) b!7246903))

(assert (= start!704776 b!7246909))

(declare-fun m!7923760 () Bool)

(assert (=> start!704776 m!7923760))

(declare-fun m!7923762 () Bool)

(assert (=> start!704776 m!7923762))

(declare-fun m!7923764 () Bool)

(assert (=> start!704776 m!7923764))

(declare-fun m!7923766 () Bool)

(assert (=> start!704776 m!7923766))

(declare-fun m!7923768 () Bool)

(assert (=> b!7246905 m!7923768))

(declare-fun m!7923770 () Bool)

(assert (=> b!7246905 m!7923770))

(declare-fun m!7923772 () Bool)

(assert (=> b!7246904 m!7923772))

(assert (=> b!7246904 m!7923772))

(declare-fun m!7923774 () Bool)

(assert (=> b!7246904 m!7923774))

(assert (=> b!7246904 m!7923774))

(declare-fun m!7923776 () Bool)

(assert (=> b!7246904 m!7923776))

(declare-fun m!7923778 () Bool)

(assert (=> b!7246907 m!7923778))

(declare-fun m!7923780 () Bool)

(assert (=> b!7246907 m!7923780))

(declare-fun m!7923782 () Bool)

(assert (=> b!7246906 m!7923782))

(assert (=> b!7246906 m!7923782))

(declare-fun m!7923784 () Bool)

(assert (=> b!7246906 m!7923784))

(check-sat (not b!7246908) tp_is_empty!46703 (not b!7246904) (not b!7246906) (not b!7246905) (not b!7246907) (not b!7246909) (not start!704776) (not b!7246903) (not b!7246902))
(check-sat)
(get-model)

(declare-fun d!2251976 () Bool)

(declare-fun c!1346256 () Bool)

(declare-fun isEmpty!40496 (List!70438) Bool)

(assert (=> d!2251976 (= c!1346256 (isEmpty!40496 s1!1971))))

(declare-fun e!4345185 () Bool)

(assert (=> d!2251976 (= (matchZipper!3529 lt!2583101 s1!1971) e!4345185)))

(declare-fun b!7246914 () Bool)

(declare-fun nullableZipper!2891 ((InoxSet Context!15118)) Bool)

(assert (=> b!7246914 (= e!4345185 (nullableZipper!2891 lt!2583101))))

(declare-fun b!7246915 () Bool)

(declare-fun head!14879 (List!70438) C!37512)

(declare-fun tail!14281 (List!70438) List!70438)

(assert (=> b!7246915 (= e!4345185 (matchZipper!3529 (derivationStepZipper!3397 lt!2583101 (head!14879 s1!1971)) (tail!14281 s1!1971)))))

(assert (= (and d!2251976 c!1346256) b!7246914))

(assert (= (and d!2251976 (not c!1346256)) b!7246915))

(declare-fun m!7923786 () Bool)

(assert (=> d!2251976 m!7923786))

(declare-fun m!7923788 () Bool)

(assert (=> b!7246914 m!7923788))

(declare-fun m!7923790 () Bool)

(assert (=> b!7246915 m!7923790))

(assert (=> b!7246915 m!7923790))

(declare-fun m!7923792 () Bool)

(assert (=> b!7246915 m!7923792))

(declare-fun m!7923794 () Bool)

(assert (=> b!7246915 m!7923794))

(assert (=> b!7246915 m!7923792))

(assert (=> b!7246915 m!7923794))

(declare-fun m!7923796 () Bool)

(assert (=> b!7246915 m!7923796))

(assert (=> start!704776 d!2251976))

(declare-fun bs!1905334 () Bool)

(declare-fun d!2251978 () Bool)

(assert (= bs!1905334 (and d!2251978 b!7246907)))

(declare-fun lambda!443300 () Int)

(assert (=> bs!1905334 (= lambda!443300 lambda!443297)))

(declare-fun forall!17451 (List!70437 Int) Bool)

(assert (=> d!2251978 (= (inv!89557 ct1!232) (forall!17451 (exprs!8059 ct1!232) lambda!443300))))

(declare-fun bs!1905335 () Bool)

(assert (= bs!1905335 d!2251978))

(declare-fun m!7923798 () Bool)

(assert (=> bs!1905335 m!7923798))

(assert (=> start!704776 d!2251978))

(declare-fun bs!1905336 () Bool)

(declare-fun d!2251980 () Bool)

(assert (= bs!1905336 (and d!2251980 b!7246907)))

(declare-fun lambda!443301 () Int)

(assert (=> bs!1905336 (= lambda!443301 lambda!443297)))

(declare-fun bs!1905337 () Bool)

(assert (= bs!1905337 (and d!2251980 d!2251978)))

(assert (=> bs!1905337 (= lambda!443301 lambda!443300)))

(assert (=> d!2251980 (= (inv!89557 ct2!328) (forall!17451 (exprs!8059 ct2!328) lambda!443301))))

(declare-fun bs!1905338 () Bool)

(assert (= bs!1905338 d!2251980))

(declare-fun m!7923800 () Bool)

(assert (=> bs!1905338 m!7923800))

(assert (=> start!704776 d!2251980))

(declare-fun b!7246932 () Bool)

(declare-fun res!2939512 () Bool)

(declare-fun e!4345194 () Bool)

(assert (=> b!7246932 (=> (not res!2939512) (not e!4345194))))

(declare-fun lt!2583106 () List!70437)

(declare-fun size!41676 (List!70437) Int)

(assert (=> b!7246932 (= res!2939512 (= (size!41676 lt!2583106) (+ (size!41676 (exprs!8059 ct1!232)) (size!41676 (exprs!8059 ct2!328)))))))

(declare-fun b!7246933 () Bool)

(assert (=> b!7246933 (= e!4345194 (or (not (= (exprs!8059 ct2!328) Nil!70313)) (= lt!2583106 (exprs!8059 ct1!232))))))

(declare-fun b!7246930 () Bool)

(declare-fun e!4345193 () List!70437)

(assert (=> b!7246930 (= e!4345193 (exprs!8059 ct2!328))))

(declare-fun b!7246931 () Bool)

(assert (=> b!7246931 (= e!4345193 (Cons!70313 (h!76761 (exprs!8059 ct1!232)) (++!16505 (t!384489 (exprs!8059 ct1!232)) (exprs!8059 ct2!328))))))

(declare-fun d!2251982 () Bool)

(assert (=> d!2251982 e!4345194))

(declare-fun res!2939513 () Bool)

(assert (=> d!2251982 (=> (not res!2939513) (not e!4345194))))

(declare-fun content!14553 (List!70437) (InoxSet Regex!18619))

(assert (=> d!2251982 (= res!2939513 (= (content!14553 lt!2583106) ((_ map or) (content!14553 (exprs!8059 ct1!232)) (content!14553 (exprs!8059 ct2!328)))))))

(assert (=> d!2251982 (= lt!2583106 e!4345193)))

(declare-fun c!1346262 () Bool)

(assert (=> d!2251982 (= c!1346262 ((_ is Nil!70313) (exprs!8059 ct1!232)))))

(assert (=> d!2251982 (= (++!16505 (exprs!8059 ct1!232) (exprs!8059 ct2!328)) lt!2583106)))

(assert (= (and d!2251982 c!1346262) b!7246930))

(assert (= (and d!2251982 (not c!1346262)) b!7246931))

(assert (= (and d!2251982 res!2939513) b!7246932))

(assert (= (and b!7246932 res!2939512) b!7246933))

(declare-fun m!7923814 () Bool)

(assert (=> b!7246932 m!7923814))

(declare-fun m!7923816 () Bool)

(assert (=> b!7246932 m!7923816))

(declare-fun m!7923818 () Bool)

(assert (=> b!7246932 m!7923818))

(declare-fun m!7923820 () Bool)

(assert (=> b!7246931 m!7923820))

(declare-fun m!7923822 () Bool)

(assert (=> d!2251982 m!7923822))

(declare-fun m!7923824 () Bool)

(assert (=> d!2251982 m!7923824))

(declare-fun m!7923826 () Bool)

(assert (=> d!2251982 m!7923826))

(assert (=> b!7246907 d!2251982))

(declare-fun d!2251988 () Bool)

(assert (=> d!2251988 (forall!17451 (++!16505 (exprs!8059 ct1!232) (exprs!8059 ct2!328)) lambda!443297)))

(declare-fun lt!2583109 () Unit!163821)

(declare-fun choose!55911 (List!70437 List!70437 Int) Unit!163821)

(assert (=> d!2251988 (= lt!2583109 (choose!55911 (exprs!8059 ct1!232) (exprs!8059 ct2!328) lambda!443297))))

(assert (=> d!2251988 (forall!17451 (exprs!8059 ct1!232) lambda!443297)))

(assert (=> d!2251988 (= (lemmaConcatPreservesForall!1426 (exprs!8059 ct1!232) (exprs!8059 ct2!328) lambda!443297) lt!2583109)))

(declare-fun bs!1905340 () Bool)

(assert (= bs!1905340 d!2251988))

(assert (=> bs!1905340 m!7923778))

(assert (=> bs!1905340 m!7923778))

(declare-fun m!7923852 () Bool)

(assert (=> bs!1905340 m!7923852))

(declare-fun m!7923854 () Bool)

(assert (=> bs!1905340 m!7923854))

(declare-fun m!7923858 () Bool)

(assert (=> bs!1905340 m!7923858))

(assert (=> b!7246907 d!2251988))

(declare-fun d!2251996 () Bool)

(declare-fun c!1346267 () Bool)

(assert (=> d!2251996 (= c!1346267 (isEmpty!40496 s2!1849))))

(declare-fun e!4345197 () Bool)

(assert (=> d!2251996 (= (matchZipper!3529 (store ((as const (Array Context!15118 Bool)) false) ct2!328 true) s2!1849) e!4345197)))

(declare-fun b!7246940 () Bool)

(assert (=> b!7246940 (= e!4345197 (nullableZipper!2891 (store ((as const (Array Context!15118 Bool)) false) ct2!328 true)))))

(declare-fun b!7246941 () Bool)

(assert (=> b!7246941 (= e!4345197 (matchZipper!3529 (derivationStepZipper!3397 (store ((as const (Array Context!15118 Bool)) false) ct2!328 true) (head!14879 s2!1849)) (tail!14281 s2!1849)))))

(assert (= (and d!2251996 c!1346267) b!7246940))

(assert (= (and d!2251996 (not c!1346267)) b!7246941))

(declare-fun m!7923860 () Bool)

(assert (=> d!2251996 m!7923860))

(assert (=> b!7246940 m!7923782))

(declare-fun m!7923862 () Bool)

(assert (=> b!7246940 m!7923862))

(declare-fun m!7923864 () Bool)

(assert (=> b!7246941 m!7923864))

(assert (=> b!7246941 m!7923782))

(assert (=> b!7246941 m!7923864))

(declare-fun m!7923866 () Bool)

(assert (=> b!7246941 m!7923866))

(declare-fun m!7923868 () Bool)

(assert (=> b!7246941 m!7923868))

(assert (=> b!7246941 m!7923866))

(assert (=> b!7246941 m!7923868))

(declare-fun m!7923870 () Bool)

(assert (=> b!7246941 m!7923870))

(assert (=> b!7246906 d!2251996))

(declare-fun d!2251998 () Bool)

(declare-fun c!1346268 () Bool)

(assert (=> d!2251998 (= c!1346268 (isEmpty!40496 (t!384490 s1!1971)))))

(declare-fun e!4345198 () Bool)

(assert (=> d!2251998 (= (matchZipper!3529 lt!2583103 (t!384490 s1!1971)) e!4345198)))

(declare-fun b!7246942 () Bool)

(assert (=> b!7246942 (= e!4345198 (nullableZipper!2891 lt!2583103))))

(declare-fun b!7246943 () Bool)

(assert (=> b!7246943 (= e!4345198 (matchZipper!3529 (derivationStepZipper!3397 lt!2583103 (head!14879 (t!384490 s1!1971))) (tail!14281 (t!384490 s1!1971))))))

(assert (= (and d!2251998 c!1346268) b!7246942))

(assert (= (and d!2251998 (not c!1346268)) b!7246943))

(declare-fun m!7923872 () Bool)

(assert (=> d!2251998 m!7923872))

(declare-fun m!7923874 () Bool)

(assert (=> b!7246942 m!7923874))

(declare-fun m!7923876 () Bool)

(assert (=> b!7246943 m!7923876))

(assert (=> b!7246943 m!7923876))

(declare-fun m!7923878 () Bool)

(assert (=> b!7246943 m!7923878))

(declare-fun m!7923880 () Bool)

(assert (=> b!7246943 m!7923880))

(assert (=> b!7246943 m!7923878))

(assert (=> b!7246943 m!7923880))

(declare-fun m!7923882 () Bool)

(assert (=> b!7246943 m!7923882))

(assert (=> b!7246905 d!2251998))

(declare-fun d!2252000 () Bool)

(assert (=> d!2252000 true))

(declare-fun lambda!443311 () Int)

(declare-fun flatMap!2787 ((InoxSet Context!15118) Int) (InoxSet Context!15118))

(assert (=> d!2252000 (= (derivationStepZipper!3397 lt!2583101 (h!76762 s1!1971)) (flatMap!2787 lt!2583101 lambda!443311))))

(declare-fun bs!1905346 () Bool)

(assert (= bs!1905346 d!2252000))

(declare-fun m!7923888 () Bool)

(assert (=> bs!1905346 m!7923888))

(assert (=> b!7246905 d!2252000))

(declare-fun d!2252006 () Bool)

(declare-fun c!1346271 () Bool)

(assert (=> d!2252006 (= c!1346271 (isEmpty!40496 (t!384490 s1!1971)))))

(declare-fun e!4345199 () Bool)

(assert (=> d!2252006 (= (matchZipper!3529 (content!14552 (toList!11448 lt!2583103)) (t!384490 s1!1971)) e!4345199)))

(declare-fun b!7246946 () Bool)

(assert (=> b!7246946 (= e!4345199 (nullableZipper!2891 (content!14552 (toList!11448 lt!2583103))))))

(declare-fun b!7246947 () Bool)

(assert (=> b!7246947 (= e!4345199 (matchZipper!3529 (derivationStepZipper!3397 (content!14552 (toList!11448 lt!2583103)) (head!14879 (t!384490 s1!1971))) (tail!14281 (t!384490 s1!1971))))))

(assert (= (and d!2252006 c!1346271) b!7246946))

(assert (= (and d!2252006 (not c!1346271)) b!7246947))

(assert (=> d!2252006 m!7923872))

(assert (=> b!7246946 m!7923774))

(declare-fun m!7923890 () Bool)

(assert (=> b!7246946 m!7923890))

(assert (=> b!7246947 m!7923876))

(assert (=> b!7246947 m!7923774))

(assert (=> b!7246947 m!7923876))

(declare-fun m!7923892 () Bool)

(assert (=> b!7246947 m!7923892))

(assert (=> b!7246947 m!7923880))

(assert (=> b!7246947 m!7923892))

(assert (=> b!7246947 m!7923880))

(declare-fun m!7923894 () Bool)

(assert (=> b!7246947 m!7923894))

(assert (=> b!7246904 d!2252006))

(declare-fun d!2252008 () Bool)

(declare-fun c!1346276 () Bool)

(assert (=> d!2252008 (= c!1346276 ((_ is Nil!70315) (toList!11448 lt!2583103)))))

(declare-fun e!4345206 () (InoxSet Context!15118))

(assert (=> d!2252008 (= (content!14552 (toList!11448 lt!2583103)) e!4345206)))

(declare-fun b!7246960 () Bool)

(assert (=> b!7246960 (= e!4345206 ((as const (Array Context!15118 Bool)) false))))

(declare-fun b!7246961 () Bool)

(assert (=> b!7246961 (= e!4345206 ((_ map or) (store ((as const (Array Context!15118 Bool)) false) (h!76763 (toList!11448 lt!2583103)) true) (content!14552 (t!384491 (toList!11448 lt!2583103)))))))

(assert (= (and d!2252008 c!1346276) b!7246960))

(assert (= (and d!2252008 (not c!1346276)) b!7246961))

(declare-fun m!7923896 () Bool)

(assert (=> b!7246961 m!7923896))

(declare-fun m!7923898 () Bool)

(assert (=> b!7246961 m!7923898))

(assert (=> b!7246904 d!2252008))

(declare-fun d!2252010 () Bool)

(declare-fun e!4345211 () Bool)

(assert (=> d!2252010 e!4345211))

(declare-fun res!2939522 () Bool)

(assert (=> d!2252010 (=> (not res!2939522) (not e!4345211))))

(declare-fun lt!2583115 () List!70439)

(declare-fun noDuplicate!2970 (List!70439) Bool)

(assert (=> d!2252010 (= res!2939522 (noDuplicate!2970 lt!2583115))))

(declare-fun choose!55912 ((InoxSet Context!15118)) List!70439)

(assert (=> d!2252010 (= lt!2583115 (choose!55912 lt!2583103))))

(assert (=> d!2252010 (= (toList!11448 lt!2583103) lt!2583115)))

(declare-fun b!7246968 () Bool)

(assert (=> b!7246968 (= e!4345211 (= (content!14552 lt!2583115) lt!2583103))))

(assert (= (and d!2252010 res!2939522) b!7246968))

(declare-fun m!7923914 () Bool)

(assert (=> d!2252010 m!7923914))

(declare-fun m!7923916 () Bool)

(assert (=> d!2252010 m!7923916))

(declare-fun m!7923918 () Bool)

(assert (=> b!7246968 m!7923918))

(assert (=> b!7246904 d!2252010))

(declare-fun b!7246973 () Bool)

(declare-fun e!4345214 () Bool)

(declare-fun tp!2036701 () Bool)

(declare-fun tp!2036702 () Bool)

(assert (=> b!7246973 (= e!4345214 (and tp!2036701 tp!2036702))))

(assert (=> b!7246909 (= tp!2036693 e!4345214)))

(assert (= (and b!7246909 ((_ is Cons!70313) (exprs!8059 ct2!328))) b!7246973))

(declare-fun b!7246978 () Bool)

(declare-fun e!4345217 () Bool)

(declare-fun tp!2036705 () Bool)

(assert (=> b!7246978 (= e!4345217 (and tp_is_empty!46703 tp!2036705))))

(assert (=> b!7246908 (= tp!2036694 e!4345217)))

(assert (= (and b!7246908 ((_ is Cons!70314) (t!384490 s1!1971))) b!7246978))

(declare-fun b!7246979 () Bool)

(declare-fun e!4345218 () Bool)

(declare-fun tp!2036706 () Bool)

(assert (=> b!7246979 (= e!4345218 (and tp_is_empty!46703 tp!2036706))))

(assert (=> b!7246903 (= tp!2036696 e!4345218)))

(assert (= (and b!7246903 ((_ is Cons!70314) (t!384490 s2!1849))) b!7246979))

(declare-fun b!7246980 () Bool)

(declare-fun e!4345219 () Bool)

(declare-fun tp!2036707 () Bool)

(declare-fun tp!2036708 () Bool)

(assert (=> b!7246980 (= e!4345219 (and tp!2036707 tp!2036708))))

(assert (=> b!7246902 (= tp!2036695 e!4345219)))

(assert (= (and b!7246902 ((_ is Cons!70313) (exprs!8059 ct1!232))) b!7246980))

(check-sat (not b!7246980) tp_is_empty!46703 (not b!7246968) (not d!2252006) (not b!7246932) (not d!2251982) (not d!2251978) (not d!2252000) (not d!2251996) (not d!2251988) (not d!2252010) (not b!7246940) (not b!7246946) (not d!2251980) (not b!7246931) (not b!7246947) (not d!2251976) (not b!7246915) (not b!7246941) (not b!7246943) (not d!2251998) (not b!7246914) (not b!7246973) (not b!7246978) (not b!7246979) (not b!7246961) (not b!7246942))
(check-sat)
