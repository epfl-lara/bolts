; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!704660 () Bool)

(assert start!704660)

(declare-fun b!7246221 () Bool)

(declare-fun e!4344666 () Bool)

(declare-fun tp!2036381 () Bool)

(assert (=> b!7246221 (= e!4344666 tp!2036381)))

(declare-fun res!2939253 () Bool)

(declare-fun e!4344669 () Bool)

(assert (=> start!704660 (=> (not res!2939253) (not e!4344669))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37476 0))(
  ( (C!37477 (val!28686 Int)) )
))
(declare-datatypes ((Regex!18601 0))(
  ( (ElementMatch!18601 (c!1346171 C!37476)) (Concat!27446 (regOne!37714 Regex!18601) (regTwo!37714 Regex!18601)) (EmptyExpr!18601) (Star!18601 (reg!18930 Regex!18601)) (EmptyLang!18601) (Union!18601 (regOne!37715 Regex!18601) (regTwo!37715 Regex!18601)) )
))
(declare-datatypes ((List!70398 0))(
  ( (Nil!70274) (Cons!70274 (h!76722 Regex!18601) (t!384450 List!70398)) )
))
(declare-datatypes ((Context!15082 0))(
  ( (Context!15083 (exprs!8041 List!70398)) )
))
(declare-fun lt!2582781 () (InoxSet Context!15082))

(declare-datatypes ((List!70399 0))(
  ( (Nil!70275) (Cons!70275 (h!76723 C!37476) (t!384451 List!70399)) )
))
(declare-fun s1!1971 () List!70399)

(declare-fun matchZipper!3511 ((InoxSet Context!15082) List!70399) Bool)

(assert (=> start!704660 (= res!2939253 (matchZipper!3511 lt!2582781 s1!1971))))

(declare-fun ct1!232 () Context!15082)

(assert (=> start!704660 (= lt!2582781 (store ((as const (Array Context!15082 Bool)) false) ct1!232 true))))

(assert (=> start!704660 e!4344669))

(declare-fun inv!89512 (Context!15082) Bool)

(assert (=> start!704660 (and (inv!89512 ct1!232) e!4344666)))

(declare-fun e!4344665 () Bool)

(assert (=> start!704660 e!4344665))

(declare-fun e!4344668 () Bool)

(assert (=> start!704660 e!4344668))

(declare-fun ct2!328 () Context!15082)

(declare-fun e!4344667 () Bool)

(assert (=> start!704660 (and (inv!89512 ct2!328) e!4344667)))

(declare-fun b!7246222 () Bool)

(declare-fun tp!2036384 () Bool)

(assert (=> b!7246222 (= e!4344667 tp!2036384)))

(declare-fun b!7246223 () Bool)

(declare-fun tp_is_empty!46667 () Bool)

(declare-fun tp!2036382 () Bool)

(assert (=> b!7246223 (= e!4344665 (and tp_is_empty!46667 tp!2036382))))

(declare-fun b!7246224 () Bool)

(declare-fun e!4344670 () Bool)

(assert (=> b!7246224 (= e!4344669 e!4344670)))

(declare-fun res!2939252 () Bool)

(assert (=> b!7246224 (=> (not res!2939252) (not e!4344670))))

(get-info :version)

(assert (=> b!7246224 (= res!2939252 (and (not ((_ is Nil!70274) (exprs!8041 ct1!232))) (not ((_ is Cons!70275) s1!1971))))))

(declare-fun lt!2582783 () List!70398)

(declare-fun ++!16481 (List!70398 List!70398) List!70398)

(assert (=> b!7246224 (= lt!2582783 (++!16481 (exprs!8041 ct1!232) (exprs!8041 ct2!328)))))

(declare-fun lambda!443156 () Int)

(declare-datatypes ((Unit!163789 0))(
  ( (Unit!163790) )
))
(declare-fun lt!2582782 () Unit!163789)

(declare-fun lemmaConcatPreservesForall!1410 (List!70398 List!70398 Int) Unit!163789)

(assert (=> b!7246224 (= lt!2582782 (lemmaConcatPreservesForall!1410 (exprs!8041 ct1!232) (exprs!8041 ct2!328) lambda!443156))))

(declare-fun b!7246225 () Bool)

(declare-fun nullableContext!221 (Context!15082) Bool)

(assert (=> b!7246225 (= e!4344670 (not (nullableContext!221 ct1!232)))))

(declare-fun b!7246226 () Bool)

(declare-fun tp!2036383 () Bool)

(assert (=> b!7246226 (= e!4344668 (and tp_is_empty!46667 tp!2036383))))

(declare-fun b!7246227 () Bool)

(declare-fun res!2939251 () Bool)

(assert (=> b!7246227 (=> (not res!2939251) (not e!4344670))))

(declare-fun lambda!443157 () Int)

(declare-fun getWitness!2157 ((InoxSet Context!15082) Int) Context!15082)

(assert (=> b!7246227 (= res!2939251 (= ct1!232 (getWitness!2157 lt!2582781 lambda!443157)))))

(declare-fun b!7246228 () Bool)

(declare-fun res!2939254 () Bool)

(assert (=> b!7246228 (=> (not res!2939254) (not e!4344669))))

(declare-fun s2!1849 () List!70399)

(assert (=> b!7246228 (= res!2939254 (matchZipper!3511 (store ((as const (Array Context!15082 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7246229 () Bool)

(declare-fun res!2939255 () Bool)

(assert (=> b!7246229 (=> (not res!2939255) (not e!4344670))))

(declare-fun nullableZipper!2884 ((InoxSet Context!15082)) Bool)

(assert (=> b!7246229 (= res!2939255 (nullableZipper!2884 lt!2582781))))

(assert (= (and start!704660 res!2939253) b!7246228))

(assert (= (and b!7246228 res!2939254) b!7246224))

(assert (= (and b!7246224 res!2939252) b!7246229))

(assert (= (and b!7246229 res!2939255) b!7246227))

(assert (= (and b!7246227 res!2939251) b!7246225))

(assert (= start!704660 b!7246221))

(assert (= (and start!704660 ((_ is Cons!70275) s1!1971)) b!7246223))

(assert (= (and start!704660 ((_ is Cons!70275) s2!1849)) b!7246226))

(assert (= start!704660 b!7246222))

(declare-fun m!7922972 () Bool)

(assert (=> b!7246229 m!7922972))

(declare-fun m!7922974 () Bool)

(assert (=> b!7246228 m!7922974))

(assert (=> b!7246228 m!7922974))

(declare-fun m!7922976 () Bool)

(assert (=> b!7246228 m!7922976))

(declare-fun m!7922978 () Bool)

(assert (=> b!7246225 m!7922978))

(declare-fun m!7922980 () Bool)

(assert (=> b!7246227 m!7922980))

(declare-fun m!7922982 () Bool)

(assert (=> start!704660 m!7922982))

(declare-fun m!7922984 () Bool)

(assert (=> start!704660 m!7922984))

(declare-fun m!7922986 () Bool)

(assert (=> start!704660 m!7922986))

(declare-fun m!7922988 () Bool)

(assert (=> start!704660 m!7922988))

(declare-fun m!7922990 () Bool)

(assert (=> b!7246224 m!7922990))

(declare-fun m!7922992 () Bool)

(assert (=> b!7246224 m!7922992))

(check-sat (not b!7246224) (not b!7246229) (not b!7246226) (not b!7246225) (not b!7246221) (not b!7246227) (not start!704660) (not b!7246222) (not b!7246228) tp_is_empty!46667 (not b!7246223))
(check-sat)
(get-model)

(declare-fun d!2251839 () Bool)

(declare-fun c!1346174 () Bool)

(declare-fun isEmpty!40480 (List!70399) Bool)

(assert (=> d!2251839 (= c!1346174 (isEmpty!40480 s1!1971))))

(declare-fun e!4344673 () Bool)

(assert (=> d!2251839 (= (matchZipper!3511 lt!2582781 s1!1971) e!4344673)))

(declare-fun b!7246234 () Bool)

(assert (=> b!7246234 (= e!4344673 (nullableZipper!2884 lt!2582781))))

(declare-fun b!7246235 () Bool)

(declare-fun derivationStepZipper!3388 ((InoxSet Context!15082) C!37476) (InoxSet Context!15082))

(declare-fun head!14871 (List!70399) C!37476)

(declare-fun tail!14273 (List!70399) List!70399)

(assert (=> b!7246235 (= e!4344673 (matchZipper!3511 (derivationStepZipper!3388 lt!2582781 (head!14871 s1!1971)) (tail!14273 s1!1971)))))

(assert (= (and d!2251839 c!1346174) b!7246234))

(assert (= (and d!2251839 (not c!1346174)) b!7246235))

(declare-fun m!7922994 () Bool)

(assert (=> d!2251839 m!7922994))

(assert (=> b!7246234 m!7922972))

(declare-fun m!7922996 () Bool)

(assert (=> b!7246235 m!7922996))

(assert (=> b!7246235 m!7922996))

(declare-fun m!7922998 () Bool)

(assert (=> b!7246235 m!7922998))

(declare-fun m!7923000 () Bool)

(assert (=> b!7246235 m!7923000))

(assert (=> b!7246235 m!7922998))

(assert (=> b!7246235 m!7923000))

(declare-fun m!7923002 () Bool)

(assert (=> b!7246235 m!7923002))

(assert (=> start!704660 d!2251839))

(declare-fun bs!1905242 () Bool)

(declare-fun d!2251841 () Bool)

(assert (= bs!1905242 (and d!2251841 b!7246224)))

(declare-fun lambda!443160 () Int)

(assert (=> bs!1905242 (= lambda!443160 lambda!443156)))

(declare-fun forall!17443 (List!70398 Int) Bool)

(assert (=> d!2251841 (= (inv!89512 ct1!232) (forall!17443 (exprs!8041 ct1!232) lambda!443160))))

(declare-fun bs!1905243 () Bool)

(assert (= bs!1905243 d!2251841))

(declare-fun m!7923004 () Bool)

(assert (=> bs!1905243 m!7923004))

(assert (=> start!704660 d!2251841))

(declare-fun bs!1905244 () Bool)

(declare-fun d!2251845 () Bool)

(assert (= bs!1905244 (and d!2251845 b!7246224)))

(declare-fun lambda!443161 () Int)

(assert (=> bs!1905244 (= lambda!443161 lambda!443156)))

(declare-fun bs!1905245 () Bool)

(assert (= bs!1905245 (and d!2251845 d!2251841)))

(assert (=> bs!1905245 (= lambda!443161 lambda!443160)))

(assert (=> d!2251845 (= (inv!89512 ct2!328) (forall!17443 (exprs!8041 ct2!328) lambda!443161))))

(declare-fun bs!1905246 () Bool)

(assert (= bs!1905246 d!2251845))

(declare-fun m!7923006 () Bool)

(assert (=> bs!1905246 m!7923006))

(assert (=> start!704660 d!2251845))

(declare-fun d!2251847 () Bool)

(declare-fun e!4344679 () Bool)

(assert (=> d!2251847 e!4344679))

(declare-fun res!2939258 () Bool)

(assert (=> d!2251847 (=> (not res!2939258) (not e!4344679))))

(declare-fun lt!2582786 () Context!15082)

(declare-fun dynLambda!28693 (Int Context!15082) Bool)

(assert (=> d!2251847 (= res!2939258 (dynLambda!28693 lambda!443157 lt!2582786))))

(declare-datatypes ((List!70400 0))(
  ( (Nil!70276) (Cons!70276 (h!76724 Context!15082) (t!384452 List!70400)) )
))
(declare-fun getWitness!2158 (List!70400 Int) Context!15082)

(declare-fun toList!11445 ((InoxSet Context!15082)) List!70400)

(assert (=> d!2251847 (= lt!2582786 (getWitness!2158 (toList!11445 lt!2582781) lambda!443157))))

(declare-fun exists!4316 ((InoxSet Context!15082) Int) Bool)

(assert (=> d!2251847 (exists!4316 lt!2582781 lambda!443157)))

(assert (=> d!2251847 (= (getWitness!2157 lt!2582781 lambda!443157) lt!2582786)))

(declare-fun b!7246244 () Bool)

(assert (=> b!7246244 (= e!4344679 (select lt!2582781 lt!2582786))))

(assert (= (and d!2251847 res!2939258) b!7246244))

(declare-fun b_lambda!278133 () Bool)

(assert (=> (not b_lambda!278133) (not d!2251847)))

(declare-fun m!7923020 () Bool)

(assert (=> d!2251847 m!7923020))

(declare-fun m!7923022 () Bool)

(assert (=> d!2251847 m!7923022))

(assert (=> d!2251847 m!7923022))

(declare-fun m!7923024 () Bool)

(assert (=> d!2251847 m!7923024))

(declare-fun m!7923026 () Bool)

(assert (=> d!2251847 m!7923026))

(declare-fun m!7923028 () Bool)

(assert (=> b!7246244 m!7923028))

(assert (=> b!7246227 d!2251847))

(declare-fun bs!1905247 () Bool)

(declare-fun d!2251851 () Bool)

(assert (= bs!1905247 (and d!2251851 b!7246227)))

(declare-fun lambda!443164 () Int)

(assert (=> bs!1905247 (= lambda!443164 lambda!443157)))

(assert (=> d!2251851 (= (nullableZipper!2884 lt!2582781) (exists!4316 lt!2582781 lambda!443164))))

(declare-fun bs!1905248 () Bool)

(assert (= bs!1905248 d!2251851))

(declare-fun m!7923030 () Bool)

(assert (=> bs!1905248 m!7923030))

(assert (=> b!7246229 d!2251851))

(declare-fun d!2251853 () Bool)

(declare-fun c!1346180 () Bool)

(assert (=> d!2251853 (= c!1346180 (isEmpty!40480 s2!1849))))

(declare-fun e!4344680 () Bool)

(assert (=> d!2251853 (= (matchZipper!3511 (store ((as const (Array Context!15082 Bool)) false) ct2!328 true) s2!1849) e!4344680)))

(declare-fun b!7246245 () Bool)

(assert (=> b!7246245 (= e!4344680 (nullableZipper!2884 (store ((as const (Array Context!15082 Bool)) false) ct2!328 true)))))

(declare-fun b!7246246 () Bool)

(assert (=> b!7246246 (= e!4344680 (matchZipper!3511 (derivationStepZipper!3388 (store ((as const (Array Context!15082 Bool)) false) ct2!328 true) (head!14871 s2!1849)) (tail!14273 s2!1849)))))

(assert (= (and d!2251853 c!1346180) b!7246245))

(assert (= (and d!2251853 (not c!1346180)) b!7246246))

(declare-fun m!7923032 () Bool)

(assert (=> d!2251853 m!7923032))

(assert (=> b!7246245 m!7922974))

(declare-fun m!7923034 () Bool)

(assert (=> b!7246245 m!7923034))

(declare-fun m!7923036 () Bool)

(assert (=> b!7246246 m!7923036))

(assert (=> b!7246246 m!7922974))

(assert (=> b!7246246 m!7923036))

(declare-fun m!7923038 () Bool)

(assert (=> b!7246246 m!7923038))

(declare-fun m!7923040 () Bool)

(assert (=> b!7246246 m!7923040))

(assert (=> b!7246246 m!7923038))

(assert (=> b!7246246 m!7923040))

(declare-fun m!7923042 () Bool)

(assert (=> b!7246246 m!7923042))

(assert (=> b!7246228 d!2251853))

(declare-fun bs!1905249 () Bool)

(declare-fun d!2251855 () Bool)

(assert (= bs!1905249 (and d!2251855 b!7246224)))

(declare-fun lambda!443167 () Int)

(assert (=> bs!1905249 (not (= lambda!443167 lambda!443156))))

(declare-fun bs!1905250 () Bool)

(assert (= bs!1905250 (and d!2251855 d!2251841)))

(assert (=> bs!1905250 (not (= lambda!443167 lambda!443160))))

(declare-fun bs!1905251 () Bool)

(assert (= bs!1905251 (and d!2251855 d!2251845)))

(assert (=> bs!1905251 (not (= lambda!443167 lambda!443161))))

(assert (=> d!2251855 (= (nullableContext!221 ct1!232) (forall!17443 (exprs!8041 ct1!232) lambda!443167))))

(declare-fun bs!1905252 () Bool)

(assert (= bs!1905252 d!2251855))

(declare-fun m!7923054 () Bool)

(assert (=> bs!1905252 m!7923054))

(assert (=> b!7246225 d!2251855))

(declare-fun b!7246272 () Bool)

(declare-fun res!2939272 () Bool)

(declare-fun e!4344695 () Bool)

(assert (=> b!7246272 (=> (not res!2939272) (not e!4344695))))

(declare-fun lt!2582795 () List!70398)

(declare-fun size!41669 (List!70398) Int)

(assert (=> b!7246272 (= res!2939272 (= (size!41669 lt!2582795) (+ (size!41669 (exprs!8041 ct1!232)) (size!41669 (exprs!8041 ct2!328)))))))

(declare-fun b!7246271 () Bool)

(declare-fun e!4344694 () List!70398)

(assert (=> b!7246271 (= e!4344694 (Cons!70274 (h!76722 (exprs!8041 ct1!232)) (++!16481 (t!384450 (exprs!8041 ct1!232)) (exprs!8041 ct2!328))))))

(declare-fun b!7246273 () Bool)

(assert (=> b!7246273 (= e!4344695 (or (not (= (exprs!8041 ct2!328) Nil!70274)) (= lt!2582795 (exprs!8041 ct1!232))))))

(declare-fun d!2251859 () Bool)

(assert (=> d!2251859 e!4344695))

(declare-fun res!2939273 () Bool)

(assert (=> d!2251859 (=> (not res!2939273) (not e!4344695))))

(declare-fun content!14546 (List!70398) (InoxSet Regex!18601))

(assert (=> d!2251859 (= res!2939273 (= (content!14546 lt!2582795) ((_ map or) (content!14546 (exprs!8041 ct1!232)) (content!14546 (exprs!8041 ct2!328)))))))

(assert (=> d!2251859 (= lt!2582795 e!4344694)))

(declare-fun c!1346187 () Bool)

(assert (=> d!2251859 (= c!1346187 ((_ is Nil!70274) (exprs!8041 ct1!232)))))

(assert (=> d!2251859 (= (++!16481 (exprs!8041 ct1!232) (exprs!8041 ct2!328)) lt!2582795)))

(declare-fun b!7246270 () Bool)

(assert (=> b!7246270 (= e!4344694 (exprs!8041 ct2!328))))

(assert (= (and d!2251859 c!1346187) b!7246270))

(assert (= (and d!2251859 (not c!1346187)) b!7246271))

(assert (= (and d!2251859 res!2939273) b!7246272))

(assert (= (and b!7246272 res!2939272) b!7246273))

(declare-fun m!7923070 () Bool)

(assert (=> b!7246272 m!7923070))

(declare-fun m!7923072 () Bool)

(assert (=> b!7246272 m!7923072))

(declare-fun m!7923074 () Bool)

(assert (=> b!7246272 m!7923074))

(declare-fun m!7923076 () Bool)

(assert (=> b!7246271 m!7923076))

(declare-fun m!7923078 () Bool)

(assert (=> d!2251859 m!7923078))

(declare-fun m!7923080 () Bool)

(assert (=> d!2251859 m!7923080))

(declare-fun m!7923082 () Bool)

(assert (=> d!2251859 m!7923082))

(assert (=> b!7246224 d!2251859))

(declare-fun d!2251863 () Bool)

(assert (=> d!2251863 (forall!17443 (++!16481 (exprs!8041 ct1!232) (exprs!8041 ct2!328)) lambda!443156)))

(declare-fun lt!2582801 () Unit!163789)

(declare-fun choose!55905 (List!70398 List!70398 Int) Unit!163789)

(assert (=> d!2251863 (= lt!2582801 (choose!55905 (exprs!8041 ct1!232) (exprs!8041 ct2!328) lambda!443156))))

(assert (=> d!2251863 (forall!17443 (exprs!8041 ct1!232) lambda!443156)))

(assert (=> d!2251863 (= (lemmaConcatPreservesForall!1410 (exprs!8041 ct1!232) (exprs!8041 ct2!328) lambda!443156) lt!2582801)))

(declare-fun bs!1905254 () Bool)

(assert (= bs!1905254 d!2251863))

(assert (=> bs!1905254 m!7922990))

(assert (=> bs!1905254 m!7922990))

(declare-fun m!7923090 () Bool)

(assert (=> bs!1905254 m!7923090))

(declare-fun m!7923092 () Bool)

(assert (=> bs!1905254 m!7923092))

(declare-fun m!7923094 () Bool)

(assert (=> bs!1905254 m!7923094))

(assert (=> b!7246224 d!2251863))

(declare-fun b!7246278 () Bool)

(declare-fun e!4344698 () Bool)

(declare-fun tp!2036389 () Bool)

(declare-fun tp!2036390 () Bool)

(assert (=> b!7246278 (= e!4344698 (and tp!2036389 tp!2036390))))

(assert (=> b!7246221 (= tp!2036381 e!4344698)))

(assert (= (and b!7246221 ((_ is Cons!70274) (exprs!8041 ct1!232))) b!7246278))

(declare-fun b!7246283 () Bool)

(declare-fun e!4344701 () Bool)

(declare-fun tp!2036393 () Bool)

(assert (=> b!7246283 (= e!4344701 (and tp_is_empty!46667 tp!2036393))))

(assert (=> b!7246226 (= tp!2036383 e!4344701)))

(assert (= (and b!7246226 ((_ is Cons!70275) (t!384451 s2!1849))) b!7246283))

(declare-fun b!7246284 () Bool)

(declare-fun e!4344702 () Bool)

(declare-fun tp!2036394 () Bool)

(declare-fun tp!2036395 () Bool)

(assert (=> b!7246284 (= e!4344702 (and tp!2036394 tp!2036395))))

(assert (=> b!7246222 (= tp!2036384 e!4344702)))

(assert (= (and b!7246222 ((_ is Cons!70274) (exprs!8041 ct2!328))) b!7246284))

(declare-fun b!7246285 () Bool)

(declare-fun e!4344703 () Bool)

(declare-fun tp!2036396 () Bool)

(assert (=> b!7246285 (= e!4344703 (and tp_is_empty!46667 tp!2036396))))

(assert (=> b!7246223 (= tp!2036382 e!4344703)))

(assert (= (and b!7246223 ((_ is Cons!70275) (t!384451 s1!1971))) b!7246285))

(declare-fun b_lambda!278137 () Bool)

(assert (= b_lambda!278133 (or b!7246227 b_lambda!278137)))

(declare-fun bs!1905255 () Bool)

(declare-fun d!2251867 () Bool)

(assert (= bs!1905255 (and d!2251867 b!7246227)))

(assert (=> bs!1905255 (= (dynLambda!28693 lambda!443157 lt!2582786) (nullableContext!221 lt!2582786))))

(declare-fun m!7923096 () Bool)

(assert (=> bs!1905255 m!7923096))

(assert (=> d!2251847 d!2251867))

(check-sat (not d!2251863) (not d!2251845) tp_is_empty!46667 (not d!2251859) (not d!2251841) (not bs!1905255) (not b!7246246) (not b!7246245) (not b!7246272) (not b!7246283) (not b!7246285) (not b!7246235) (not b!7246278) (not d!2251839) (not d!2251851) (not d!2251855) (not b!7246234) (not d!2251847) (not b_lambda!278137) (not b!7246271) (not b!7246284) (not d!2251853))
(check-sat)
