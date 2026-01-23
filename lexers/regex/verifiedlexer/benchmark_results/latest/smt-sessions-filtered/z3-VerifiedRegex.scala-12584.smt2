; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!697554 () Bool)

(assert start!697554)

(declare-fun res!2917994 () Bool)

(declare-fun e!4299044 () Bool)

(assert (=> start!697554 (=> (not res!2917994) (not e!4299044))))

(declare-datatypes ((C!36828 0))(
  ( (C!36829 (val!28362 Int)) )
))
(declare-datatypes ((Regex!18277 0))(
  ( (ElementMatch!18277 (c!1333634 C!36828)) (Concat!27122 (regOne!37066 Regex!18277) (regTwo!37066 Regex!18277)) (EmptyExpr!18277) (Star!18277 (reg!18606 Regex!18277)) (EmptyLang!18277) (Union!18277 (regOne!37067 Regex!18277) (regTwo!37067 Regex!18277)) )
))
(declare-datatypes ((List!69590 0))(
  ( (Nil!69466) (Cons!69466 (h!75914 Regex!18277) (t!383607 List!69590)) )
))
(declare-datatypes ((Context!14458 0))(
  ( (Context!14459 (exprs!7729 List!69590)) )
))
(declare-datatypes ((List!69591 0))(
  ( (Nil!69467) (Cons!69467 (h!75915 Context!14458) (t!383608 List!69591)) )
))
(declare-fun zl!300 () List!69591)

(declare-fun c!7723 () Context!14458)

(declare-fun contains!20669 (List!69591 Context!14458) Bool)

(assert (=> start!697554 (= res!2917994 (contains!20669 zl!300 c!7723))))

(assert (=> start!697554 e!4299044))

(declare-fun e!4299045 () Bool)

(assert (=> start!697554 e!4299045))

(declare-fun e!4299043 () Bool)

(declare-fun inv!88714 (Context!14458) Bool)

(assert (=> start!697554 (and (inv!88714 c!7723) e!4299043)))

(declare-fun b!7156357 () Bool)

(declare-fun res!2917995 () Bool)

(assert (=> b!7156357 (=> (not res!2917995) (not e!4299044))))

(get-info :version)

(assert (=> b!7156357 (= res!2917995 (and ((_ is Cons!69467) zl!300) (not (= (h!75915 zl!300) c!7723))))))

(declare-fun e!4299042 () Bool)

(declare-fun b!7156358 () Bool)

(declare-fun tp!1978905 () Bool)

(assert (=> b!7156358 (= e!4299045 (and (inv!88714 (h!75915 zl!300)) e!4299042 tp!1978905))))

(declare-fun b!7156359 () Bool)

(declare-fun tp!1978907 () Bool)

(assert (=> b!7156359 (= e!4299043 tp!1978907)))

(declare-fun b!7156360 () Bool)

(assert (=> b!7156360 (= e!4299044 (not (contains!20669 (t!383608 zl!300) c!7723)))))

(declare-fun b!7156361 () Bool)

(declare-fun tp!1978906 () Bool)

(assert (=> b!7156361 (= e!4299042 tp!1978906)))

(assert (= (and start!697554 res!2917994) b!7156357))

(assert (= (and b!7156357 res!2917995) b!7156360))

(assert (= b!7156358 b!7156361))

(assert (= (and start!697554 ((_ is Cons!69467) zl!300)) b!7156358))

(assert (= start!697554 b!7156359))

(declare-fun m!7863006 () Bool)

(assert (=> start!697554 m!7863006))

(declare-fun m!7863008 () Bool)

(assert (=> start!697554 m!7863008))

(declare-fun m!7863010 () Bool)

(assert (=> b!7156358 m!7863010))

(declare-fun m!7863012 () Bool)

(assert (=> b!7156360 m!7863012))

(check-sat (not b!7156359) (not b!7156361) (not b!7156360) (not b!7156358) (not start!697554))
(check-sat)
(get-model)

(declare-fun d!2229693 () Bool)

(declare-fun lambda!436444 () Int)

(declare-fun forall!17114 (List!69590 Int) Bool)

(assert (=> d!2229693 (= (inv!88714 (h!75915 zl!300)) (forall!17114 (exprs!7729 (h!75915 zl!300)) lambda!436444))))

(declare-fun bs!1889931 () Bool)

(assert (= bs!1889931 d!2229693))

(declare-fun m!7863018 () Bool)

(assert (=> bs!1889931 m!7863018))

(assert (=> b!7156358 d!2229693))

(declare-fun d!2229697 () Bool)

(declare-fun lt!2569273 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!14251 (List!69591) (InoxSet Context!14458))

(assert (=> d!2229697 (= lt!2569273 (select (content!14251 (t!383608 zl!300)) c!7723))))

(declare-fun e!4299056 () Bool)

(assert (=> d!2229697 (= lt!2569273 e!4299056)))

(declare-fun res!2918007 () Bool)

(assert (=> d!2229697 (=> (not res!2918007) (not e!4299056))))

(assert (=> d!2229697 (= res!2918007 ((_ is Cons!69467) (t!383608 zl!300)))))

(assert (=> d!2229697 (= (contains!20669 (t!383608 zl!300) c!7723) lt!2569273)))

(declare-fun b!7156372 () Bool)

(declare-fun e!4299057 () Bool)

(assert (=> b!7156372 (= e!4299056 e!4299057)))

(declare-fun res!2918006 () Bool)

(assert (=> b!7156372 (=> res!2918006 e!4299057)))

(assert (=> b!7156372 (= res!2918006 (= (h!75915 (t!383608 zl!300)) c!7723))))

(declare-fun b!7156373 () Bool)

(assert (=> b!7156373 (= e!4299057 (contains!20669 (t!383608 (t!383608 zl!300)) c!7723))))

(assert (= (and d!2229697 res!2918007) b!7156372))

(assert (= (and b!7156372 (not res!2918006)) b!7156373))

(declare-fun m!7863020 () Bool)

(assert (=> d!2229697 m!7863020))

(declare-fun m!7863022 () Bool)

(assert (=> d!2229697 m!7863022))

(declare-fun m!7863024 () Bool)

(assert (=> b!7156373 m!7863024))

(assert (=> b!7156360 d!2229697))

(declare-fun d!2229699 () Bool)

(declare-fun lt!2569274 () Bool)

(assert (=> d!2229699 (= lt!2569274 (select (content!14251 zl!300) c!7723))))

(declare-fun e!4299058 () Bool)

(assert (=> d!2229699 (= lt!2569274 e!4299058)))

(declare-fun res!2918009 () Bool)

(assert (=> d!2229699 (=> (not res!2918009) (not e!4299058))))

(assert (=> d!2229699 (= res!2918009 ((_ is Cons!69467) zl!300))))

(assert (=> d!2229699 (= (contains!20669 zl!300 c!7723) lt!2569274)))

(declare-fun b!7156374 () Bool)

(declare-fun e!4299059 () Bool)

(assert (=> b!7156374 (= e!4299058 e!4299059)))

(declare-fun res!2918008 () Bool)

(assert (=> b!7156374 (=> res!2918008 e!4299059)))

(assert (=> b!7156374 (= res!2918008 (= (h!75915 zl!300) c!7723))))

(declare-fun b!7156375 () Bool)

(assert (=> b!7156375 (= e!4299059 (contains!20669 (t!383608 zl!300) c!7723))))

(assert (= (and d!2229699 res!2918009) b!7156374))

(assert (= (and b!7156374 (not res!2918008)) b!7156375))

(declare-fun m!7863026 () Bool)

(assert (=> d!2229699 m!7863026))

(declare-fun m!7863028 () Bool)

(assert (=> d!2229699 m!7863028))

(assert (=> b!7156375 m!7863012))

(assert (=> start!697554 d!2229699))

(declare-fun bs!1889932 () Bool)

(declare-fun d!2229701 () Bool)

(assert (= bs!1889932 (and d!2229701 d!2229693)))

(declare-fun lambda!436446 () Int)

(assert (=> bs!1889932 (= lambda!436446 lambda!436444)))

(assert (=> d!2229701 (= (inv!88714 c!7723) (forall!17114 (exprs!7729 c!7723) lambda!436446))))

(declare-fun bs!1889933 () Bool)

(assert (= bs!1889933 d!2229701))

(declare-fun m!7863030 () Bool)

(assert (=> bs!1889933 m!7863030))

(assert (=> start!697554 d!2229701))

(declare-fun b!7156380 () Bool)

(declare-fun e!4299062 () Bool)

(declare-fun tp!1978912 () Bool)

(declare-fun tp!1978913 () Bool)

(assert (=> b!7156380 (= e!4299062 (and tp!1978912 tp!1978913))))

(assert (=> b!7156359 (= tp!1978907 e!4299062)))

(assert (= (and b!7156359 ((_ is Cons!69466) (exprs!7729 c!7723))) b!7156380))

(declare-fun b!7156388 () Bool)

(declare-fun e!4299068 () Bool)

(declare-fun tp!1978918 () Bool)

(assert (=> b!7156388 (= e!4299068 tp!1978918)))

(declare-fun e!4299067 () Bool)

(declare-fun b!7156387 () Bool)

(declare-fun tp!1978919 () Bool)

(assert (=> b!7156387 (= e!4299067 (and (inv!88714 (h!75915 (t!383608 zl!300))) e!4299068 tp!1978919))))

(assert (=> b!7156358 (= tp!1978905 e!4299067)))

(assert (= b!7156387 b!7156388))

(assert (= (and b!7156358 ((_ is Cons!69467) (t!383608 zl!300))) b!7156387))

(declare-fun m!7863034 () Bool)

(assert (=> b!7156387 m!7863034))

(declare-fun b!7156389 () Bool)

(declare-fun e!4299069 () Bool)

(declare-fun tp!1978920 () Bool)

(declare-fun tp!1978921 () Bool)

(assert (=> b!7156389 (= e!4299069 (and tp!1978920 tp!1978921))))

(assert (=> b!7156361 (= tp!1978906 e!4299069)))

(assert (= (and b!7156361 ((_ is Cons!69466) (exprs!7729 (h!75915 zl!300)))) b!7156389))

(check-sat (not b!7156389) (not d!2229693) (not b!7156380) (not b!7156373) (not b!7156375) (not d!2229701) (not d!2229697) (not b!7156388) (not b!7156387) (not d!2229699))
(check-sat)
