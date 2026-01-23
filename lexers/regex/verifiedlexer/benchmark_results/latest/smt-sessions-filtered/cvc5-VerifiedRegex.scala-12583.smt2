; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697532 () Bool)

(assert start!697532)

(declare-fun tp!1978851 () Bool)

(declare-fun e!4298959 () Bool)

(declare-datatypes ((C!36822 0))(
  ( (C!36823 (val!28359 Int)) )
))
(declare-datatypes ((Regex!18274 0))(
  ( (ElementMatch!18274 (c!1333625 C!36822)) (Concat!27119 (regOne!37060 Regex!18274) (regTwo!37060 Regex!18274)) (EmptyExpr!18274) (Star!18274 (reg!18603 Regex!18274)) (EmptyLang!18274) (Union!18274 (regOne!37061 Regex!18274) (regTwo!37061 Regex!18274)) )
))
(declare-datatypes ((List!69584 0))(
  ( (Nil!69460) (Cons!69460 (h!75908 Regex!18274) (t!383601 List!69584)) )
))
(declare-datatypes ((Context!14452 0))(
  ( (Context!14453 (exprs!7726 List!69584)) )
))
(declare-datatypes ((List!69585 0))(
  ( (Nil!69461) (Cons!69461 (h!75909 Context!14452) (t!383602 List!69585)) )
))
(declare-fun zl!300 () List!69585)

(declare-fun e!4298958 () Bool)

(declare-fun b!7156248 () Bool)

(declare-fun inv!88708 (Context!14452) Bool)

(assert (=> b!7156248 (= e!4298959 (and (inv!88708 (h!75909 zl!300)) e!4298958 tp!1978851))))

(declare-fun b!7156250 () Bool)

(declare-fun e!4298957 () Bool)

(declare-fun c!7723 () Context!14452)

(declare-fun lambda!436424 () Int)

(declare-fun forall!17112 (List!69584 Int) Bool)

(assert (=> b!7156250 (= e!4298957 (not (forall!17112 (exprs!7726 c!7723) lambda!436424)))))

(declare-fun lt!2569252 () List!69584)

(declare-fun unfocusZipperList!2271 (List!69585) List!69584)

(assert (=> b!7156250 (= lt!2569252 (unfocusZipperList!2271 zl!300))))

(declare-fun b!7156249 () Bool)

(declare-fun e!4298956 () Bool)

(declare-fun tp!1978852 () Bool)

(assert (=> b!7156249 (= e!4298956 tp!1978852)))

(declare-fun res!2917952 () Bool)

(assert (=> start!697532 (=> (not res!2917952) (not e!4298957))))

(declare-fun contains!20666 (List!69585 Context!14452) Bool)

(assert (=> start!697532 (= res!2917952 (contains!20666 zl!300 c!7723))))

(assert (=> start!697532 e!4298957))

(assert (=> start!697532 e!4298959))

(assert (=> start!697532 (and (inv!88708 c!7723) e!4298956)))

(declare-fun b!7156251 () Bool)

(declare-fun res!2917953 () Bool)

(assert (=> b!7156251 (=> (not res!2917953) (not e!4298957))))

(assert (=> b!7156251 (= res!2917953 (not (is-Cons!69461 zl!300)))))

(declare-fun b!7156252 () Bool)

(declare-fun tp!1978850 () Bool)

(assert (=> b!7156252 (= e!4298958 tp!1978850)))

(assert (= (and start!697532 res!2917952) b!7156251))

(assert (= (and b!7156251 res!2917953) b!7156250))

(assert (= b!7156248 b!7156252))

(assert (= (and start!697532 (is-Cons!69461 zl!300)) b!7156248))

(assert (= start!697532 b!7156249))

(declare-fun m!7862930 () Bool)

(assert (=> b!7156248 m!7862930))

(declare-fun m!7862932 () Bool)

(assert (=> b!7156250 m!7862932))

(declare-fun m!7862934 () Bool)

(assert (=> b!7156250 m!7862934))

(declare-fun m!7862936 () Bool)

(assert (=> start!697532 m!7862936))

(declare-fun m!7862938 () Bool)

(assert (=> start!697532 m!7862938))

(push 1)

(assert (not b!7156248))

(assert (not b!7156249))

(assert (not b!7156250))

(assert (not start!697532))

(assert (not b!7156252))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2229666 () Bool)

(declare-fun res!2917964 () Bool)

(declare-fun e!4298976 () Bool)

(assert (=> d!2229666 (=> res!2917964 e!4298976)))

(assert (=> d!2229666 (= res!2917964 (is-Nil!69460 (exprs!7726 c!7723)))))

(assert (=> d!2229666 (= (forall!17112 (exprs!7726 c!7723) lambda!436424) e!4298976)))

(declare-fun b!7156272 () Bool)

(declare-fun e!4298977 () Bool)

(assert (=> b!7156272 (= e!4298976 e!4298977)))

(declare-fun res!2917965 () Bool)

(assert (=> b!7156272 (=> (not res!2917965) (not e!4298977))))

(declare-fun dynLambda!28309 (Int Regex!18274) Bool)

(assert (=> b!7156272 (= res!2917965 (dynLambda!28309 lambda!436424 (h!75908 (exprs!7726 c!7723))))))

(declare-fun b!7156273 () Bool)

(assert (=> b!7156273 (= e!4298977 (forall!17112 (t!383601 (exprs!7726 c!7723)) lambda!436424))))

(assert (= (and d!2229666 (not res!2917964)) b!7156272))

(assert (= (and b!7156272 res!2917965) b!7156273))

(declare-fun b_lambda!273347 () Bool)

(assert (=> (not b_lambda!273347) (not b!7156272)))

(declare-fun m!7862950 () Bool)

(assert (=> b!7156272 m!7862950))

(declare-fun m!7862952 () Bool)

(assert (=> b!7156273 m!7862952))

(assert (=> b!7156250 d!2229666))

(declare-fun bs!1889911 () Bool)

(declare-fun d!2229668 () Bool)

(assert (= bs!1889911 (and d!2229668 b!7156250)))

(declare-fun lambda!436430 () Int)

(assert (=> bs!1889911 (= lambda!436430 lambda!436424)))

(declare-fun lt!2569258 () List!69584)

(assert (=> d!2229668 (forall!17112 lt!2569258 lambda!436430)))

(declare-fun e!4298980 () List!69584)

(assert (=> d!2229668 (= lt!2569258 e!4298980)))

(declare-fun c!1333629 () Bool)

(assert (=> d!2229668 (= c!1333629 (is-Cons!69461 zl!300))))

(assert (=> d!2229668 (= (unfocusZipperList!2271 zl!300) lt!2569258)))

(declare-fun b!7156278 () Bool)

(declare-fun generalisedConcat!2426 (List!69584) Regex!18274)

(assert (=> b!7156278 (= e!4298980 (Cons!69460 (generalisedConcat!2426 (exprs!7726 (h!75909 zl!300))) (unfocusZipperList!2271 (t!383602 zl!300))))))

(declare-fun b!7156279 () Bool)

(assert (=> b!7156279 (= e!4298980 Nil!69460)))

(assert (= (and d!2229668 c!1333629) b!7156278))

(assert (= (and d!2229668 (not c!1333629)) b!7156279))

(declare-fun m!7862954 () Bool)

(assert (=> d!2229668 m!7862954))

(declare-fun m!7862956 () Bool)

(assert (=> b!7156278 m!7862956))

(declare-fun m!7862958 () Bool)

(assert (=> b!7156278 m!7862958))

(assert (=> b!7156250 d!2229668))

(declare-fun d!2229672 () Bool)

(declare-fun lt!2569261 () Bool)

(declare-fun content!14249 (List!69585) (Set Context!14452))

(assert (=> d!2229672 (= lt!2569261 (set.member c!7723 (content!14249 zl!300)))))

(declare-fun e!4298985 () Bool)

(assert (=> d!2229672 (= lt!2569261 e!4298985)))

(declare-fun res!2917971 () Bool)

(assert (=> d!2229672 (=> (not res!2917971) (not e!4298985))))

(assert (=> d!2229672 (= res!2917971 (is-Cons!69461 zl!300))))

(assert (=> d!2229672 (= (contains!20666 zl!300 c!7723) lt!2569261)))

(declare-fun b!7156284 () Bool)

(declare-fun e!4298986 () Bool)

(assert (=> b!7156284 (= e!4298985 e!4298986)))

(declare-fun res!2917970 () Bool)

(assert (=> b!7156284 (=> res!2917970 e!4298986)))

(assert (=> b!7156284 (= res!2917970 (= (h!75909 zl!300) c!7723))))

(declare-fun b!7156285 () Bool)

(assert (=> b!7156285 (= e!4298986 (contains!20666 (t!383602 zl!300) c!7723))))

(assert (= (and d!2229672 res!2917971) b!7156284))

(assert (= (and b!7156284 (not res!2917970)) b!7156285))

(declare-fun m!7862960 () Bool)

(assert (=> d!2229672 m!7862960))

(declare-fun m!7862962 () Bool)

(assert (=> d!2229672 m!7862962))

(declare-fun m!7862964 () Bool)

(assert (=> b!7156285 m!7862964))

(assert (=> start!697532 d!2229672))

(declare-fun bs!1889913 () Bool)

(declare-fun d!2229674 () Bool)

(assert (= bs!1889913 (and d!2229674 b!7156250)))

(declare-fun lambda!436436 () Int)

(assert (=> bs!1889913 (= lambda!436436 lambda!436424)))

(declare-fun bs!1889915 () Bool)

(assert (= bs!1889915 (and d!2229674 d!2229668)))

(assert (=> bs!1889915 (= lambda!436436 lambda!436430)))

(assert (=> d!2229674 (= (inv!88708 c!7723) (forall!17112 (exprs!7726 c!7723) lambda!436436))))

(declare-fun bs!1889916 () Bool)

(assert (= bs!1889916 d!2229674))

(declare-fun m!7862968 () Bool)

(assert (=> bs!1889916 m!7862968))

(assert (=> start!697532 d!2229674))

(declare-fun bs!1889917 () Bool)

(declare-fun d!2229678 () Bool)

(assert (= bs!1889917 (and d!2229678 b!7156250)))

(declare-fun lambda!436437 () Int)

(assert (=> bs!1889917 (= lambda!436437 lambda!436424)))

(declare-fun bs!1889918 () Bool)

(assert (= bs!1889918 (and d!2229678 d!2229668)))

(assert (=> bs!1889918 (= lambda!436437 lambda!436430)))

(declare-fun bs!1889919 () Bool)

(assert (= bs!1889919 (and d!2229678 d!2229674)))

(assert (=> bs!1889919 (= lambda!436437 lambda!436436)))

(assert (=> d!2229678 (= (inv!88708 (h!75909 zl!300)) (forall!17112 (exprs!7726 (h!75909 zl!300)) lambda!436437))))

(declare-fun bs!1889920 () Bool)

(assert (= bs!1889920 d!2229678))

(declare-fun m!7862970 () Bool)

(assert (=> bs!1889920 m!7862970))

(assert (=> b!7156248 d!2229678))

(declare-fun b!7156290 () Bool)

(declare-fun e!4298989 () Bool)

(declare-fun tp!1978866 () Bool)

(declare-fun tp!1978867 () Bool)

(assert (=> b!7156290 (= e!4298989 (and tp!1978866 tp!1978867))))

(assert (=> b!7156252 (= tp!1978850 e!4298989)))

(assert (= (and b!7156252 (is-Cons!69460 (exprs!7726 (h!75909 zl!300)))) b!7156290))

(declare-fun b!7156291 () Bool)

(declare-fun e!4298990 () Bool)

(declare-fun tp!1978868 () Bool)

(declare-fun tp!1978869 () Bool)

(assert (=> b!7156291 (= e!4298990 (and tp!1978868 tp!1978869))))

(assert (=> b!7156249 (= tp!1978852 e!4298990)))

(assert (= (and b!7156249 (is-Cons!69460 (exprs!7726 c!7723))) b!7156291))

(declare-fun b!7156299 () Bool)

(declare-fun e!4298996 () Bool)

(declare-fun tp!1978874 () Bool)

(assert (=> b!7156299 (= e!4298996 tp!1978874)))

(declare-fun e!4298995 () Bool)

(declare-fun tp!1978875 () Bool)

(declare-fun b!7156298 () Bool)

(assert (=> b!7156298 (= e!4298995 (and (inv!88708 (h!75909 (t!383602 zl!300))) e!4298996 tp!1978875))))

(assert (=> b!7156248 (= tp!1978851 e!4298995)))

(assert (= b!7156298 b!7156299))

(assert (= (and b!7156248 (is-Cons!69461 (t!383602 zl!300))) b!7156298))

(declare-fun m!7862972 () Bool)

(assert (=> b!7156298 m!7862972))

(declare-fun b_lambda!273349 () Bool)

(assert (= b_lambda!273347 (or b!7156250 b_lambda!273349)))

(declare-fun bs!1889921 () Bool)

(declare-fun d!2229680 () Bool)

(assert (= bs!1889921 (and d!2229680 b!7156250)))

(declare-fun validRegex!9416 (Regex!18274) Bool)

(assert (=> bs!1889921 (= (dynLambda!28309 lambda!436424 (h!75908 (exprs!7726 c!7723))) (validRegex!9416 (h!75908 (exprs!7726 c!7723))))))

(declare-fun m!7862974 () Bool)

(assert (=> bs!1889921 m!7862974))

(assert (=> b!7156272 d!2229680))

(push 1)

(assert (not b_lambda!273349))

(assert (not b!7156291))

(assert (not b!7156273))

(assert (not d!2229668))

(assert (not bs!1889921))

(assert (not d!2229674))

(assert (not b!7156278))

(assert (not b!7156285))

(assert (not b!7156299))

(assert (not b!7156290))

(assert (not d!2229678))

(assert (not d!2229672))

(assert (not b!7156298))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

