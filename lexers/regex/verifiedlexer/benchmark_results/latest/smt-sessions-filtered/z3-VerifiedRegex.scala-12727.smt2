; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!703738 () Bool)

(assert start!703738)

(declare-fun b!7241837 () Bool)

(declare-fun res!2937755 () Bool)

(declare-fun e!4341870 () Bool)

(assert (=> b!7241837 (=> (not res!2937755) (not e!4341870))))

(declare-datatypes ((C!37400 0))(
  ( (C!37401 (val!28648 Int)) )
))
(declare-datatypes ((Regex!18563 0))(
  ( (ElementMatch!18563 (c!1344909 C!37400)) (Concat!27408 (regOne!37638 Regex!18563) (regTwo!37638 Regex!18563)) (EmptyExpr!18563) (Star!18563 (reg!18892 Regex!18563)) (EmptyLang!18563) (Union!18563 (regOne!37639 Regex!18563) (regTwo!37639 Regex!18563)) )
))
(declare-datatypes ((List!70293 0))(
  ( (Nil!70169) (Cons!70169 (h!76617 Regex!18563) (t!384344 List!70293)) )
))
(declare-datatypes ((Context!15006 0))(
  ( (Context!15007 (exprs!8003 List!70293)) )
))
(declare-fun ct1!232 () Context!15006)

(declare-fun nullableContext!218 (Context!15006) Bool)

(assert (=> b!7241837 (= res!2937755 (nullableContext!218 ct1!232))))

(declare-fun b!7241838 () Bool)

(declare-fun e!4341873 () Bool)

(assert (=> b!7241838 (= e!4341870 (not e!4341873))))

(declare-fun res!2937756 () Bool)

(assert (=> b!7241838 (=> res!2937756 e!4341873)))

(declare-fun lambda!442113 () Int)

(declare-fun forall!17404 (List!70293 Int) Bool)

(assert (=> b!7241838 (= res!2937756 (not (forall!17404 (exprs!8003 ct1!232) lambda!442113)))))

(declare-fun lt!2580298 () List!70293)

(declare-datatypes ((List!70294 0))(
  ( (Nil!70170) (Cons!70170 (h!76618 C!37400) (t!384345 List!70294)) )
))
(declare-fun s2!1849 () List!70294)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!3473 ((InoxSet Context!15006) List!70294) Bool)

(assert (=> b!7241838 (matchZipper!3473 (store ((as const (Array Context!15006 Bool)) false) (Context!15007 lt!2580298) true) s2!1849)))

(declare-datatypes ((Unit!163712 0))(
  ( (Unit!163713) )
))
(declare-fun lt!2580295 () Unit!163712)

(declare-fun ct2!328 () Context!15006)

(declare-fun lemmaConcatPreservesForall!1372 (List!70293 List!70293 Int) Unit!163712)

(assert (=> b!7241838 (= lt!2580295 (lemmaConcatPreservesForall!1372 (exprs!8003 ct1!232) (exprs!8003 ct2!328) lambda!442113))))

(declare-fun lt!2580296 () Unit!163712)

(declare-fun lemmaPrependingNullableCtxStillMatches!4 (Context!15006 Context!15006 List!70294) Unit!163712)

(assert (=> b!7241838 (= lt!2580296 (lemmaPrependingNullableCtxStillMatches!4 ct1!232 ct2!328 s2!1849))))

(declare-fun res!2937753 () Bool)

(declare-fun e!4341875 () Bool)

(assert (=> start!703738 (=> (not res!2937753) (not e!4341875))))

(declare-fun lt!2580297 () (InoxSet Context!15006))

(declare-fun s1!1971 () List!70294)

(assert (=> start!703738 (= res!2937753 (matchZipper!3473 lt!2580297 s1!1971))))

(assert (=> start!703738 (= lt!2580297 (store ((as const (Array Context!15006 Bool)) false) ct1!232 true))))

(assert (=> start!703738 e!4341875))

(declare-fun e!4341874 () Bool)

(declare-fun inv!89417 (Context!15006) Bool)

(assert (=> start!703738 (and (inv!89417 ct1!232) e!4341874)))

(declare-fun e!4341871 () Bool)

(assert (=> start!703738 e!4341871))

(declare-fun e!4341869 () Bool)

(assert (=> start!703738 e!4341869))

(declare-fun e!4341872 () Bool)

(assert (=> start!703738 (and (inv!89417 ct2!328) e!4341872)))

(declare-fun b!7241839 () Bool)

(declare-fun tp_is_empty!46591 () Bool)

(declare-fun tp!2035415 () Bool)

(assert (=> b!7241839 (= e!4341869 (and tp_is_empty!46591 tp!2035415))))

(declare-fun b!7241840 () Bool)

(assert (=> b!7241840 (= e!4341875 e!4341870)))

(declare-fun res!2937751 () Bool)

(assert (=> b!7241840 (=> (not res!2937751) (not e!4341870))))

(get-info :version)

(assert (=> b!7241840 (= res!2937751 (and (not ((_ is Nil!70169) (exprs!8003 ct1!232))) (not ((_ is Cons!70170) s1!1971))))))

(declare-fun ++!16419 (List!70293 List!70293) List!70293)

(assert (=> b!7241840 (= lt!2580298 (++!16419 (exprs!8003 ct1!232) (exprs!8003 ct2!328)))))

(declare-fun lt!2580294 () Unit!163712)

(assert (=> b!7241840 (= lt!2580294 (lemmaConcatPreservesForall!1372 (exprs!8003 ct1!232) (exprs!8003 ct2!328) lambda!442113))))

(declare-fun b!7241841 () Bool)

(assert (=> b!7241841 (= e!4341873 (forall!17404 (exprs!8003 ct2!328) lambda!442113))))

(declare-fun b!7241842 () Bool)

(declare-fun tp!2035414 () Bool)

(assert (=> b!7241842 (= e!4341874 tp!2035414)))

(declare-fun b!7241843 () Bool)

(declare-fun res!2937752 () Bool)

(assert (=> b!7241843 (=> (not res!2937752) (not e!4341870))))

(declare-fun nullableZipper!2857 ((InoxSet Context!15006)) Bool)

(assert (=> b!7241843 (= res!2937752 (nullableZipper!2857 lt!2580297))))

(declare-fun b!7241844 () Bool)

(declare-fun tp!2035413 () Bool)

(assert (=> b!7241844 (= e!4341872 tp!2035413)))

(declare-fun b!7241845 () Bool)

(declare-fun res!2937754 () Bool)

(assert (=> b!7241845 (=> (not res!2937754) (not e!4341875))))

(assert (=> b!7241845 (= res!2937754 (matchZipper!3473 (store ((as const (Array Context!15006 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7241846 () Bool)

(declare-fun tp!2035416 () Bool)

(assert (=> b!7241846 (= e!4341871 (and tp_is_empty!46591 tp!2035416))))

(declare-fun b!7241847 () Bool)

(declare-fun res!2937750 () Bool)

(assert (=> b!7241847 (=> (not res!2937750) (not e!4341870))))

(declare-fun lambda!442114 () Int)

(declare-fun getWitness!2115 ((InoxSet Context!15006) Int) Context!15006)

(assert (=> b!7241847 (= res!2937750 (= ct1!232 (getWitness!2115 lt!2580297 lambda!442114)))))

(assert (= (and start!703738 res!2937753) b!7241845))

(assert (= (and b!7241845 res!2937754) b!7241840))

(assert (= (and b!7241840 res!2937751) b!7241843))

(assert (= (and b!7241843 res!2937752) b!7241847))

(assert (= (and b!7241847 res!2937750) b!7241837))

(assert (= (and b!7241837 res!2937755) b!7241838))

(assert (= (and b!7241838 (not res!2937756)) b!7241841))

(assert (= start!703738 b!7241842))

(assert (= (and start!703738 ((_ is Cons!70170) s1!1971)) b!7241846))

(assert (= (and start!703738 ((_ is Cons!70170) s2!1849)) b!7241839))

(assert (= start!703738 b!7241844))

(declare-fun m!7916456 () Bool)

(assert (=> b!7241838 m!7916456))

(declare-fun m!7916458 () Bool)

(assert (=> b!7241838 m!7916458))

(declare-fun m!7916460 () Bool)

(assert (=> b!7241838 m!7916460))

(declare-fun m!7916462 () Bool)

(assert (=> b!7241838 m!7916462))

(assert (=> b!7241838 m!7916458))

(declare-fun m!7916464 () Bool)

(assert (=> b!7241838 m!7916464))

(declare-fun m!7916466 () Bool)

(assert (=> start!703738 m!7916466))

(declare-fun m!7916468 () Bool)

(assert (=> start!703738 m!7916468))

(declare-fun m!7916470 () Bool)

(assert (=> start!703738 m!7916470))

(declare-fun m!7916472 () Bool)

(assert (=> start!703738 m!7916472))

(declare-fun m!7916474 () Bool)

(assert (=> b!7241841 m!7916474))

(declare-fun m!7916476 () Bool)

(assert (=> b!7241845 m!7916476))

(assert (=> b!7241845 m!7916476))

(declare-fun m!7916478 () Bool)

(assert (=> b!7241845 m!7916478))

(declare-fun m!7916480 () Bool)

(assert (=> b!7241843 m!7916480))

(declare-fun m!7916482 () Bool)

(assert (=> b!7241837 m!7916482))

(declare-fun m!7916484 () Bool)

(assert (=> b!7241840 m!7916484))

(assert (=> b!7241840 m!7916456))

(declare-fun m!7916486 () Bool)

(assert (=> b!7241847 m!7916486))

(check-sat (not b!7241837) (not b!7241840) tp_is_empty!46591 (not b!7241842) (not b!7241847) (not b!7241838) (not b!7241844) (not b!7241845) (not b!7241841) (not b!7241846) (not start!703738) (not b!7241839) (not b!7241843))
(check-sat)
(get-model)

(declare-fun b!7241858 () Bool)

(declare-fun res!2937761 () Bool)

(declare-fun e!4341880 () Bool)

(assert (=> b!7241858 (=> (not res!2937761) (not e!4341880))))

(declare-fun lt!2580301 () List!70293)

(declare-fun size!41631 (List!70293) Int)

(assert (=> b!7241858 (= res!2937761 (= (size!41631 lt!2580301) (+ (size!41631 (exprs!8003 ct1!232)) (size!41631 (exprs!8003 ct2!328)))))))

(declare-fun b!7241856 () Bool)

(declare-fun e!4341881 () List!70293)

(assert (=> b!7241856 (= e!4341881 (exprs!8003 ct2!328))))

(declare-fun b!7241857 () Bool)

(assert (=> b!7241857 (= e!4341881 (Cons!70169 (h!76617 (exprs!8003 ct1!232)) (++!16419 (t!384344 (exprs!8003 ct1!232)) (exprs!8003 ct2!328))))))

(declare-fun b!7241859 () Bool)

(assert (=> b!7241859 (= e!4341880 (or (not (= (exprs!8003 ct2!328) Nil!70169)) (= lt!2580301 (exprs!8003 ct1!232))))))

(declare-fun d!2250014 () Bool)

(assert (=> d!2250014 e!4341880))

(declare-fun res!2937762 () Bool)

(assert (=> d!2250014 (=> (not res!2937762) (not e!4341880))))

(declare-fun content!14495 (List!70293) (InoxSet Regex!18563))

(assert (=> d!2250014 (= res!2937762 (= (content!14495 lt!2580301) ((_ map or) (content!14495 (exprs!8003 ct1!232)) (content!14495 (exprs!8003 ct2!328)))))))

(assert (=> d!2250014 (= lt!2580301 e!4341881)))

(declare-fun c!1344912 () Bool)

(assert (=> d!2250014 (= c!1344912 ((_ is Nil!70169) (exprs!8003 ct1!232)))))

(assert (=> d!2250014 (= (++!16419 (exprs!8003 ct1!232) (exprs!8003 ct2!328)) lt!2580301)))

(assert (= (and d!2250014 c!1344912) b!7241856))

(assert (= (and d!2250014 (not c!1344912)) b!7241857))

(assert (= (and d!2250014 res!2937762) b!7241858))

(assert (= (and b!7241858 res!2937761) b!7241859))

(declare-fun m!7916488 () Bool)

(assert (=> b!7241858 m!7916488))

(declare-fun m!7916490 () Bool)

(assert (=> b!7241858 m!7916490))

(declare-fun m!7916492 () Bool)

(assert (=> b!7241858 m!7916492))

(declare-fun m!7916494 () Bool)

(assert (=> b!7241857 m!7916494))

(declare-fun m!7916496 () Bool)

(assert (=> d!2250014 m!7916496))

(declare-fun m!7916498 () Bool)

(assert (=> d!2250014 m!7916498))

(declare-fun m!7916500 () Bool)

(assert (=> d!2250014 m!7916500))

(assert (=> b!7241840 d!2250014))

(declare-fun d!2250018 () Bool)

(assert (=> d!2250018 (forall!17404 (++!16419 (exprs!8003 ct1!232) (exprs!8003 ct2!328)) lambda!442113)))

(declare-fun lt!2580304 () Unit!163712)

(declare-fun choose!55793 (List!70293 List!70293 Int) Unit!163712)

(assert (=> d!2250018 (= lt!2580304 (choose!55793 (exprs!8003 ct1!232) (exprs!8003 ct2!328) lambda!442113))))

(assert (=> d!2250018 (forall!17404 (exprs!8003 ct1!232) lambda!442113)))

(assert (=> d!2250018 (= (lemmaConcatPreservesForall!1372 (exprs!8003 ct1!232) (exprs!8003 ct2!328) lambda!442113) lt!2580304)))

(declare-fun bs!1904298 () Bool)

(assert (= bs!1904298 d!2250018))

(assert (=> bs!1904298 m!7916484))

(assert (=> bs!1904298 m!7916484))

(declare-fun m!7916502 () Bool)

(assert (=> bs!1904298 m!7916502))

(declare-fun m!7916504 () Bool)

(assert (=> bs!1904298 m!7916504))

(assert (=> bs!1904298 m!7916462))

(assert (=> b!7241840 d!2250018))

(declare-fun d!2250020 () Bool)

(declare-fun c!1344919 () Bool)

(declare-fun isEmpty!40432 (List!70294) Bool)

(assert (=> d!2250020 (= c!1344919 (isEmpty!40432 s2!1849))))

(declare-fun e!4341887 () Bool)

(assert (=> d!2250020 (= (matchZipper!3473 (store ((as const (Array Context!15006 Bool)) false) ct2!328 true) s2!1849) e!4341887)))

(declare-fun b!7241870 () Bool)

(assert (=> b!7241870 (= e!4341887 (nullableZipper!2857 (store ((as const (Array Context!15006 Bool)) false) ct2!328 true)))))

(declare-fun b!7241871 () Bool)

(declare-fun derivationStepZipper!3353 ((InoxSet Context!15006) C!37400) (InoxSet Context!15006))

(declare-fun head!14844 (List!70294) C!37400)

(declare-fun tail!14227 (List!70294) List!70294)

(assert (=> b!7241871 (= e!4341887 (matchZipper!3473 (derivationStepZipper!3353 (store ((as const (Array Context!15006 Bool)) false) ct2!328 true) (head!14844 s2!1849)) (tail!14227 s2!1849)))))

(assert (= (and d!2250020 c!1344919) b!7241870))

(assert (= (and d!2250020 (not c!1344919)) b!7241871))

(declare-fun m!7916520 () Bool)

(assert (=> d!2250020 m!7916520))

(assert (=> b!7241870 m!7916476))

(declare-fun m!7916522 () Bool)

(assert (=> b!7241870 m!7916522))

(declare-fun m!7916524 () Bool)

(assert (=> b!7241871 m!7916524))

(assert (=> b!7241871 m!7916476))

(assert (=> b!7241871 m!7916524))

(declare-fun m!7916526 () Bool)

(assert (=> b!7241871 m!7916526))

(declare-fun m!7916528 () Bool)

(assert (=> b!7241871 m!7916528))

(assert (=> b!7241871 m!7916526))

(assert (=> b!7241871 m!7916528))

(declare-fun m!7916530 () Bool)

(assert (=> b!7241871 m!7916530))

(assert (=> b!7241845 d!2250020))

(declare-fun d!2250026 () Bool)

(declare-fun res!2937773 () Bool)

(declare-fun e!4341898 () Bool)

(assert (=> d!2250026 (=> res!2937773 e!4341898)))

(assert (=> d!2250026 (= res!2937773 ((_ is Nil!70169) (exprs!8003 ct2!328)))))

(assert (=> d!2250026 (= (forall!17404 (exprs!8003 ct2!328) lambda!442113) e!4341898)))

(declare-fun b!7241882 () Bool)

(declare-fun e!4341899 () Bool)

(assert (=> b!7241882 (= e!4341898 e!4341899)))

(declare-fun res!2937774 () Bool)

(assert (=> b!7241882 (=> (not res!2937774) (not e!4341899))))

(declare-fun dynLambda!28646 (Int Regex!18563) Bool)

(assert (=> b!7241882 (= res!2937774 (dynLambda!28646 lambda!442113 (h!76617 (exprs!8003 ct2!328))))))

(declare-fun b!7241883 () Bool)

(assert (=> b!7241883 (= e!4341899 (forall!17404 (t!384344 (exprs!8003 ct2!328)) lambda!442113))))

(assert (= (and d!2250026 (not res!2937773)) b!7241882))

(assert (= (and b!7241882 res!2937774) b!7241883))

(declare-fun b_lambda!277849 () Bool)

(assert (=> (not b_lambda!277849) (not b!7241882)))

(declare-fun m!7916536 () Bool)

(assert (=> b!7241882 m!7916536))

(declare-fun m!7916540 () Bool)

(assert (=> b!7241883 m!7916540))

(assert (=> b!7241841 d!2250026))

(declare-fun d!2250030 () Bool)

(declare-fun c!1344921 () Bool)

(assert (=> d!2250030 (= c!1344921 (isEmpty!40432 s1!1971))))

(declare-fun e!4341901 () Bool)

(assert (=> d!2250030 (= (matchZipper!3473 lt!2580297 s1!1971) e!4341901)))

(declare-fun b!7241886 () Bool)

(assert (=> b!7241886 (= e!4341901 (nullableZipper!2857 lt!2580297))))

(declare-fun b!7241887 () Bool)

(assert (=> b!7241887 (= e!4341901 (matchZipper!3473 (derivationStepZipper!3353 lt!2580297 (head!14844 s1!1971)) (tail!14227 s1!1971)))))

(assert (= (and d!2250030 c!1344921) b!7241886))

(assert (= (and d!2250030 (not c!1344921)) b!7241887))

(declare-fun m!7916546 () Bool)

(assert (=> d!2250030 m!7916546))

(assert (=> b!7241886 m!7916480))

(declare-fun m!7916548 () Bool)

(assert (=> b!7241887 m!7916548))

(assert (=> b!7241887 m!7916548))

(declare-fun m!7916550 () Bool)

(assert (=> b!7241887 m!7916550))

(declare-fun m!7916552 () Bool)

(assert (=> b!7241887 m!7916552))

(assert (=> b!7241887 m!7916550))

(assert (=> b!7241887 m!7916552))

(declare-fun m!7916554 () Bool)

(assert (=> b!7241887 m!7916554))

(assert (=> start!703738 d!2250030))

(declare-fun bs!1904301 () Bool)

(declare-fun d!2250034 () Bool)

(assert (= bs!1904301 (and d!2250034 b!7241840)))

(declare-fun lambda!442120 () Int)

(assert (=> bs!1904301 (= lambda!442120 lambda!442113)))

(assert (=> d!2250034 (= (inv!89417 ct1!232) (forall!17404 (exprs!8003 ct1!232) lambda!442120))))

(declare-fun bs!1904302 () Bool)

(assert (= bs!1904302 d!2250034))

(declare-fun m!7916556 () Bool)

(assert (=> bs!1904302 m!7916556))

(assert (=> start!703738 d!2250034))

(declare-fun bs!1904303 () Bool)

(declare-fun d!2250036 () Bool)

(assert (= bs!1904303 (and d!2250036 b!7241840)))

(declare-fun lambda!442121 () Int)

(assert (=> bs!1904303 (= lambda!442121 lambda!442113)))

(declare-fun bs!1904304 () Bool)

(assert (= bs!1904304 (and d!2250036 d!2250034)))

(assert (=> bs!1904304 (= lambda!442121 lambda!442120)))

(assert (=> d!2250036 (= (inv!89417 ct2!328) (forall!17404 (exprs!8003 ct2!328) lambda!442121))))

(declare-fun bs!1904306 () Bool)

(assert (= bs!1904306 d!2250036))

(declare-fun m!7916558 () Bool)

(assert (=> bs!1904306 m!7916558))

(assert (=> start!703738 d!2250036))

(declare-fun d!2250038 () Bool)

(declare-fun e!4341904 () Bool)

(assert (=> d!2250038 e!4341904))

(declare-fun res!2937777 () Bool)

(assert (=> d!2250038 (=> (not res!2937777) (not e!4341904))))

(declare-fun lt!2580310 () Context!15006)

(declare-fun dynLambda!28647 (Int Context!15006) Bool)

(assert (=> d!2250038 (= res!2937777 (dynLambda!28647 lambda!442114 lt!2580310))))

(declare-datatypes ((List!70295 0))(
  ( (Nil!70171) (Cons!70171 (h!76619 Context!15006) (t!384346 List!70295)) )
))
(declare-fun getWitness!2116 (List!70295 Int) Context!15006)

(declare-fun toList!11416 ((InoxSet Context!15006)) List!70295)

(assert (=> d!2250038 (= lt!2580310 (getWitness!2116 (toList!11416 lt!2580297) lambda!442114))))

(declare-fun exists!4260 ((InoxSet Context!15006) Int) Bool)

(assert (=> d!2250038 (exists!4260 lt!2580297 lambda!442114)))

(assert (=> d!2250038 (= (getWitness!2115 lt!2580297 lambda!442114) lt!2580310)))

(declare-fun b!7241890 () Bool)

(assert (=> b!7241890 (= e!4341904 (select lt!2580297 lt!2580310))))

(assert (= (and d!2250038 res!2937777) b!7241890))

(declare-fun b_lambda!277851 () Bool)

(assert (=> (not b_lambda!277851) (not d!2250038)))

(declare-fun m!7916564 () Bool)

(assert (=> d!2250038 m!7916564))

(declare-fun m!7916566 () Bool)

(assert (=> d!2250038 m!7916566))

(assert (=> d!2250038 m!7916566))

(declare-fun m!7916568 () Bool)

(assert (=> d!2250038 m!7916568))

(declare-fun m!7916570 () Bool)

(assert (=> d!2250038 m!7916570))

(declare-fun m!7916572 () Bool)

(assert (=> b!7241890 m!7916572))

(assert (=> b!7241847 d!2250038))

(declare-fun bs!1904307 () Bool)

(declare-fun d!2250042 () Bool)

(assert (= bs!1904307 (and d!2250042 b!7241840)))

(declare-fun lambda!442124 () Int)

(assert (=> bs!1904307 (not (= lambda!442124 lambda!442113))))

(declare-fun bs!1904308 () Bool)

(assert (= bs!1904308 (and d!2250042 d!2250034)))

(assert (=> bs!1904308 (not (= lambda!442124 lambda!442120))))

(declare-fun bs!1904309 () Bool)

(assert (= bs!1904309 (and d!2250042 d!2250036)))

(assert (=> bs!1904309 (not (= lambda!442124 lambda!442121))))

(assert (=> d!2250042 (= (nullableContext!218 ct1!232) (forall!17404 (exprs!8003 ct1!232) lambda!442124))))

(declare-fun bs!1904310 () Bool)

(assert (= bs!1904310 d!2250042))

(declare-fun m!7916574 () Bool)

(assert (=> bs!1904310 m!7916574))

(assert (=> b!7241837 d!2250042))

(declare-fun d!2250044 () Bool)

(declare-fun res!2937778 () Bool)

(declare-fun e!4341905 () Bool)

(assert (=> d!2250044 (=> res!2937778 e!4341905)))

(assert (=> d!2250044 (= res!2937778 ((_ is Nil!70169) (exprs!8003 ct1!232)))))

(assert (=> d!2250044 (= (forall!17404 (exprs!8003 ct1!232) lambda!442113) e!4341905)))

(declare-fun b!7241891 () Bool)

(declare-fun e!4341906 () Bool)

(assert (=> b!7241891 (= e!4341905 e!4341906)))

(declare-fun res!2937779 () Bool)

(assert (=> b!7241891 (=> (not res!2937779) (not e!4341906))))

(assert (=> b!7241891 (= res!2937779 (dynLambda!28646 lambda!442113 (h!76617 (exprs!8003 ct1!232))))))

(declare-fun b!7241892 () Bool)

(assert (=> b!7241892 (= e!4341906 (forall!17404 (t!384344 (exprs!8003 ct1!232)) lambda!442113))))

(assert (= (and d!2250044 (not res!2937778)) b!7241891))

(assert (= (and b!7241891 res!2937779) b!7241892))

(declare-fun b_lambda!277853 () Bool)

(assert (=> (not b_lambda!277853) (not b!7241891)))

(declare-fun m!7916576 () Bool)

(assert (=> b!7241891 m!7916576))

(declare-fun m!7916578 () Bool)

(assert (=> b!7241892 m!7916578))

(assert (=> b!7241838 d!2250044))

(declare-fun d!2250046 () Bool)

(declare-fun c!1344923 () Bool)

(assert (=> d!2250046 (= c!1344923 (isEmpty!40432 s2!1849))))

(declare-fun e!4341907 () Bool)

(assert (=> d!2250046 (= (matchZipper!3473 (store ((as const (Array Context!15006 Bool)) false) (Context!15007 lt!2580298) true) s2!1849) e!4341907)))

(declare-fun b!7241893 () Bool)

(assert (=> b!7241893 (= e!4341907 (nullableZipper!2857 (store ((as const (Array Context!15006 Bool)) false) (Context!15007 lt!2580298) true)))))

(declare-fun b!7241894 () Bool)

(assert (=> b!7241894 (= e!4341907 (matchZipper!3473 (derivationStepZipper!3353 (store ((as const (Array Context!15006 Bool)) false) (Context!15007 lt!2580298) true) (head!14844 s2!1849)) (tail!14227 s2!1849)))))

(assert (= (and d!2250046 c!1344923) b!7241893))

(assert (= (and d!2250046 (not c!1344923)) b!7241894))

(assert (=> d!2250046 m!7916520))

(assert (=> b!7241893 m!7916458))

(declare-fun m!7916580 () Bool)

(assert (=> b!7241893 m!7916580))

(assert (=> b!7241894 m!7916524))

(assert (=> b!7241894 m!7916458))

(assert (=> b!7241894 m!7916524))

(declare-fun m!7916582 () Bool)

(assert (=> b!7241894 m!7916582))

(assert (=> b!7241894 m!7916528))

(assert (=> b!7241894 m!7916582))

(assert (=> b!7241894 m!7916528))

(declare-fun m!7916584 () Bool)

(assert (=> b!7241894 m!7916584))

(assert (=> b!7241838 d!2250046))

(assert (=> b!7241838 d!2250018))

(declare-fun bs!1904323 () Bool)

(declare-fun d!2250048 () Bool)

(assert (= bs!1904323 (and d!2250048 b!7241840)))

(declare-fun lambda!442134 () Int)

(assert (=> bs!1904323 (= lambda!442134 lambda!442113)))

(declare-fun bs!1904324 () Bool)

(assert (= bs!1904324 (and d!2250048 d!2250034)))

(assert (=> bs!1904324 (= lambda!442134 lambda!442120)))

(declare-fun bs!1904325 () Bool)

(assert (= bs!1904325 (and d!2250048 d!2250036)))

(assert (=> bs!1904325 (= lambda!442134 lambda!442121)))

(declare-fun bs!1904326 () Bool)

(assert (= bs!1904326 (and d!2250048 d!2250042)))

(assert (=> bs!1904326 (not (= lambda!442134 lambda!442124))))

(assert (=> d!2250048 (matchZipper!3473 (store ((as const (Array Context!15006 Bool)) false) (Context!15007 (++!16419 (exprs!8003 ct1!232) (exprs!8003 ct2!328))) true) s2!1849)))

(declare-fun lt!2580324 () Unit!163712)

(assert (=> d!2250048 (= lt!2580324 (lemmaConcatPreservesForall!1372 (exprs!8003 ct1!232) (exprs!8003 ct2!328) lambda!442134))))

(declare-fun lt!2580323 () Unit!163712)

(declare-fun choose!55796 (Context!15006 Context!15006 List!70294) Unit!163712)

(assert (=> d!2250048 (= lt!2580323 (choose!55796 ct1!232 ct2!328 s2!1849))))

(assert (=> d!2250048 (matchZipper!3473 (store ((as const (Array Context!15006 Bool)) false) ct2!328 true) s2!1849)))

(assert (=> d!2250048 (= (lemmaPrependingNullableCtxStillMatches!4 ct1!232 ct2!328 s2!1849) lt!2580323)))

(declare-fun bs!1904327 () Bool)

(assert (= bs!1904327 d!2250048))

(declare-fun m!7916608 () Bool)

(assert (=> bs!1904327 m!7916608))

(assert (=> bs!1904327 m!7916476))

(assert (=> bs!1904327 m!7916478))

(assert (=> bs!1904327 m!7916476))

(declare-fun m!7916610 () Bool)

(assert (=> bs!1904327 m!7916610))

(declare-fun m!7916612 () Bool)

(assert (=> bs!1904327 m!7916612))

(assert (=> bs!1904327 m!7916610))

(declare-fun m!7916614 () Bool)

(assert (=> bs!1904327 m!7916614))

(assert (=> bs!1904327 m!7916484))

(assert (=> b!7241838 d!2250048))

(declare-fun bs!1904328 () Bool)

(declare-fun d!2250058 () Bool)

(assert (= bs!1904328 (and d!2250058 b!7241847)))

(declare-fun lambda!442139 () Int)

(assert (=> bs!1904328 (= lambda!442139 lambda!442114)))

(assert (=> d!2250058 (= (nullableZipper!2857 lt!2580297) (exists!4260 lt!2580297 lambda!442139))))

(declare-fun bs!1904329 () Bool)

(assert (= bs!1904329 d!2250058))

(declare-fun m!7916626 () Bool)

(assert (=> bs!1904329 m!7916626))

(assert (=> b!7241843 d!2250058))

(declare-fun b!7241906 () Bool)

(declare-fun e!4341916 () Bool)

(declare-fun tp!2035419 () Bool)

(assert (=> b!7241906 (= e!4341916 (and tp_is_empty!46591 tp!2035419))))

(assert (=> b!7241839 (= tp!2035415 e!4341916)))

(assert (= (and b!7241839 ((_ is Cons!70170) (t!384345 s2!1849))) b!7241906))

(declare-fun b!7241907 () Bool)

(declare-fun e!4341917 () Bool)

(declare-fun tp!2035420 () Bool)

(assert (=> b!7241907 (= e!4341917 (and tp_is_empty!46591 tp!2035420))))

(assert (=> b!7241846 (= tp!2035416 e!4341917)))

(assert (= (and b!7241846 ((_ is Cons!70170) (t!384345 s1!1971))) b!7241907))

(declare-fun b!7241912 () Bool)

(declare-fun e!4341920 () Bool)

(declare-fun tp!2035425 () Bool)

(declare-fun tp!2035426 () Bool)

(assert (=> b!7241912 (= e!4341920 (and tp!2035425 tp!2035426))))

(assert (=> b!7241842 (= tp!2035414 e!4341920)))

(assert (= (and b!7241842 ((_ is Cons!70169) (exprs!8003 ct1!232))) b!7241912))

(declare-fun b!7241913 () Bool)

(declare-fun e!4341921 () Bool)

(declare-fun tp!2035427 () Bool)

(declare-fun tp!2035428 () Bool)

(assert (=> b!7241913 (= e!4341921 (and tp!2035427 tp!2035428))))

(assert (=> b!7241844 (= tp!2035413 e!4341921)))

(assert (= (and b!7241844 ((_ is Cons!70169) (exprs!8003 ct2!328))) b!7241913))

(declare-fun b_lambda!277859 () Bool)

(assert (= b_lambda!277849 (or b!7241840 b_lambda!277859)))

(declare-fun bs!1904332 () Bool)

(declare-fun d!2250066 () Bool)

(assert (= bs!1904332 (and d!2250066 b!7241840)))

(declare-fun validRegex!9534 (Regex!18563) Bool)

(assert (=> bs!1904332 (= (dynLambda!28646 lambda!442113 (h!76617 (exprs!8003 ct2!328))) (validRegex!9534 (h!76617 (exprs!8003 ct2!328))))))

(declare-fun m!7916634 () Bool)

(assert (=> bs!1904332 m!7916634))

(assert (=> b!7241882 d!2250066))

(declare-fun b_lambda!277861 () Bool)

(assert (= b_lambda!277851 (or b!7241847 b_lambda!277861)))

(declare-fun bs!1904333 () Bool)

(declare-fun d!2250068 () Bool)

(assert (= bs!1904333 (and d!2250068 b!7241847)))

(assert (=> bs!1904333 (= (dynLambda!28647 lambda!442114 lt!2580310) (nullableContext!218 lt!2580310))))

(declare-fun m!7916636 () Bool)

(assert (=> bs!1904333 m!7916636))

(assert (=> d!2250038 d!2250068))

(declare-fun b_lambda!277863 () Bool)

(assert (= b_lambda!277853 (or b!7241840 b_lambda!277863)))

(declare-fun bs!1904334 () Bool)

(declare-fun d!2250070 () Bool)

(assert (= bs!1904334 (and d!2250070 b!7241840)))

(assert (=> bs!1904334 (= (dynLambda!28646 lambda!442113 (h!76617 (exprs!8003 ct1!232))) (validRegex!9534 (h!76617 (exprs!8003 ct1!232))))))

(declare-fun m!7916638 () Bool)

(assert (=> bs!1904334 m!7916638))

(assert (=> b!7241891 d!2250070))

(check-sat (not bs!1904334) (not b!7241857) (not d!2250036) (not d!2250014) tp_is_empty!46591 (not d!2250030) (not bs!1904333) (not d!2250018) (not b!7241858) (not d!2250038) (not b!7241912) (not b!7241893) (not d!2250048) (not b!7241870) (not d!2250058) (not b!7241913) (not b!7241892) (not d!2250046) (not b_lambda!277863) (not b!7241894) (not b!7241906) (not d!2250020) (not d!2250034) (not d!2250042) (not b!7241887) (not bs!1904332) (not b_lambda!277859) (not b!7241907) (not b!7241871) (not b_lambda!277861) (not b!7241886) (not b!7241883))
(check-sat)
