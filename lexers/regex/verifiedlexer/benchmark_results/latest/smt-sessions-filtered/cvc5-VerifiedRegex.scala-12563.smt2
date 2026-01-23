; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697074 () Bool)

(assert start!697074)

(declare-fun b!7149310 () Bool)

(declare-fun e!4295897 () Bool)

(declare-fun tp!1973767 () Bool)

(declare-fun tp!1973770 () Bool)

(assert (=> b!7149310 (= e!4295897 (and tp!1973767 tp!1973770))))

(declare-fun b!7149311 () Bool)

(declare-fun e!4295900 () Bool)

(declare-fun tp!1973764 () Bool)

(declare-fun tp!1973769 () Bool)

(assert (=> b!7149311 (= e!4295900 (and tp!1973764 tp!1973769))))

(declare-fun b!7149312 () Bool)

(declare-fun e!4295898 () Bool)

(declare-datatypes ((C!36742 0))(
  ( (C!36743 (val!28319 Int)) )
))
(declare-datatypes ((Regex!18234 0))(
  ( (ElementMatch!18234 (c!1332969 C!36742)) (Concat!27079 (regOne!36980 Regex!18234) (regTwo!36980 Regex!18234)) (EmptyExpr!18234) (Star!18234 (reg!18563 Regex!18234)) (EmptyLang!18234) (Union!18234 (regOne!36981 Regex!18234) (regTwo!36981 Regex!18234)) )
))
(declare-datatypes ((List!69538 0))(
  ( (Nil!69414) (Cons!69414 (h!75862 Regex!18234) (t!383555 List!69538)) )
))
(declare-fun l!9154 () List!69538)

(declare-fun isEmpty!40104 (List!69538) Bool)

(assert (=> b!7149312 (= e!4295898 (not (isEmpty!40104 (t!383555 l!9154))))))

(declare-fun b!7149313 () Bool)

(declare-fun tp!1973766 () Bool)

(declare-fun tp!1973768 () Bool)

(assert (=> b!7149313 (= e!4295900 (and tp!1973766 tp!1973768))))

(declare-fun b!7149314 () Bool)

(declare-fun tp!1973765 () Bool)

(assert (=> b!7149314 (= e!4295900 tp!1973765)))

(declare-fun b!7149315 () Bool)

(declare-fun res!2916344 () Bool)

(declare-fun e!4295899 () Bool)

(assert (=> b!7149315 (=> (not res!2916344) (not e!4295899))))

(declare-fun r!13911 () Regex!18234)

(declare-fun generalisedConcat!2409 (List!69538) Regex!18234)

(assert (=> b!7149315 (= res!2916344 (= r!13911 (generalisedConcat!2409 l!9154)))))

(declare-fun b!7149316 () Bool)

(declare-fun res!2916342 () Bool)

(assert (=> b!7149316 (=> (not res!2916342) (not e!4295899))))

(assert (=> b!7149316 (= res!2916342 e!4295898)))

(declare-fun res!2916346 () Bool)

(assert (=> b!7149316 (=> res!2916346 e!4295898)))

(assert (=> b!7149316 (= res!2916346 (not (is-Cons!69414 l!9154)))))

(declare-fun b!7149317 () Bool)

(declare-fun res!2916345 () Bool)

(assert (=> b!7149317 (=> (not res!2916345) (not e!4295899))))

(assert (=> b!7149317 (= res!2916345 (and (is-Cons!69414 l!9154) (is-Concat!27079 r!13911)))))

(declare-fun res!2916343 () Bool)

(assert (=> start!697074 (=> (not res!2916343) (not e!4295899))))

(declare-fun lambda!436021 () Int)

(declare-fun forall!17074 (List!69538 Int) Bool)

(assert (=> start!697074 (= res!2916343 (forall!17074 l!9154 lambda!436021))))

(assert (=> start!697074 e!4295899))

(assert (=> start!697074 e!4295897))

(assert (=> start!697074 e!4295900))

(declare-fun b!7149318 () Bool)

(assert (=> b!7149318 (= e!4295899 (not (forall!17074 (t!383555 l!9154) lambda!436021)))))

(declare-fun b!7149319 () Bool)

(declare-fun tp_is_empty!46105 () Bool)

(assert (=> b!7149319 (= e!4295900 tp_is_empty!46105)))

(assert (= (and start!697074 res!2916343) b!7149315))

(assert (= (and b!7149315 res!2916344) b!7149316))

(assert (= (and b!7149316 (not res!2916346)) b!7149312))

(assert (= (and b!7149316 res!2916342) b!7149317))

(assert (= (and b!7149317 res!2916345) b!7149318))

(assert (= (and start!697074 (is-Cons!69414 l!9154)) b!7149310))

(assert (= (and start!697074 (is-ElementMatch!18234 r!13911)) b!7149319))

(assert (= (and start!697074 (is-Concat!27079 r!13911)) b!7149313))

(assert (= (and start!697074 (is-Star!18234 r!13911)) b!7149314))

(assert (= (and start!697074 (is-Union!18234 r!13911)) b!7149311))

(declare-fun m!7860544 () Bool)

(assert (=> b!7149312 m!7860544))

(declare-fun m!7860546 () Bool)

(assert (=> b!7149315 m!7860546))

(declare-fun m!7860548 () Bool)

(assert (=> start!697074 m!7860548))

(declare-fun m!7860550 () Bool)

(assert (=> b!7149318 m!7860550))

(push 1)

(assert (not b!7149313))

(assert (not b!7149312))

(assert (not b!7149318))

(assert (not b!7149311))

(assert (not b!7149315))

(assert (not b!7149310))

(assert tp_is_empty!46105)

(assert (not b!7149314))

(assert (not start!697074))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2228614 () Bool)

(declare-fun res!2916366 () Bool)

(declare-fun e!4295917 () Bool)

(assert (=> d!2228614 (=> res!2916366 e!4295917)))

(assert (=> d!2228614 (= res!2916366 (is-Nil!69414 (t!383555 l!9154)))))

(assert (=> d!2228614 (= (forall!17074 (t!383555 l!9154) lambda!436021) e!4295917)))

(declare-fun b!7149354 () Bool)

(declare-fun e!4295918 () Bool)

(assert (=> b!7149354 (= e!4295917 e!4295918)))

(declare-fun res!2916367 () Bool)

(assert (=> b!7149354 (=> (not res!2916367) (not e!4295918))))

(declare-fun dynLambda!28276 (Int Regex!18234) Bool)

(assert (=> b!7149354 (= res!2916367 (dynLambda!28276 lambda!436021 (h!75862 (t!383555 l!9154))))))

(declare-fun b!7149355 () Bool)

(assert (=> b!7149355 (= e!4295918 (forall!17074 (t!383555 (t!383555 l!9154)) lambda!436021))))

(assert (= (and d!2228614 (not res!2916366)) b!7149354))

(assert (= (and b!7149354 res!2916367) b!7149355))

(declare-fun b_lambda!272907 () Bool)

(assert (=> (not b_lambda!272907) (not b!7149354)))

(declare-fun m!7860560 () Bool)

(assert (=> b!7149354 m!7860560))

(declare-fun m!7860562 () Bool)

(assert (=> b!7149355 m!7860562))

(assert (=> b!7149318 d!2228614))

(declare-fun d!2228616 () Bool)

(assert (=> d!2228616 (= (isEmpty!40104 (t!383555 l!9154)) (is-Nil!69414 (t!383555 l!9154)))))

(assert (=> b!7149312 d!2228616))

(declare-fun d!2228618 () Bool)

(declare-fun res!2916368 () Bool)

(declare-fun e!4295919 () Bool)

(assert (=> d!2228618 (=> res!2916368 e!4295919)))

(assert (=> d!2228618 (= res!2916368 (is-Nil!69414 l!9154))))

(assert (=> d!2228618 (= (forall!17074 l!9154 lambda!436021) e!4295919)))

(declare-fun b!7149356 () Bool)

(declare-fun e!4295920 () Bool)

(assert (=> b!7149356 (= e!4295919 e!4295920)))

(declare-fun res!2916369 () Bool)

(assert (=> b!7149356 (=> (not res!2916369) (not e!4295920))))

(assert (=> b!7149356 (= res!2916369 (dynLambda!28276 lambda!436021 (h!75862 l!9154)))))

(declare-fun b!7149357 () Bool)

(assert (=> b!7149357 (= e!4295920 (forall!17074 (t!383555 l!9154) lambda!436021))))

(assert (= (and d!2228618 (not res!2916368)) b!7149356))

(assert (= (and b!7149356 res!2916369) b!7149357))

(declare-fun b_lambda!272909 () Bool)

(assert (=> (not b_lambda!272909) (not b!7149356)))

(declare-fun m!7860564 () Bool)

(assert (=> b!7149356 m!7860564))

(assert (=> b!7149357 m!7860550))

(assert (=> start!697074 d!2228618))

(declare-fun bs!1889434 () Bool)

(declare-fun d!2228620 () Bool)

(assert (= bs!1889434 (and d!2228620 start!697074)))

(declare-fun lambda!436029 () Int)

(assert (=> bs!1889434 (= lambda!436029 lambda!436021)))

(declare-fun b!7149378 () Bool)

(declare-fun e!4295938 () Regex!18234)

(declare-fun e!4295933 () Regex!18234)

(assert (=> b!7149378 (= e!4295938 e!4295933)))

(declare-fun c!1332981 () Bool)

(assert (=> b!7149378 (= c!1332981 (is-Cons!69414 l!9154))))

(declare-fun b!7149379 () Bool)

(assert (=> b!7149379 (= e!4295933 (Concat!27079 (h!75862 l!9154) (generalisedConcat!2409 (t!383555 l!9154))))))

(declare-fun b!7149380 () Bool)

(assert (=> b!7149380 (= e!4295938 (h!75862 l!9154))))

(declare-fun b!7149381 () Bool)

(declare-fun e!4295935 () Bool)

(declare-fun e!4295936 () Bool)

(assert (=> b!7149381 (= e!4295935 e!4295936)))

(declare-fun c!1332979 () Bool)

(declare-fun tail!14011 (List!69538) List!69538)

(assert (=> b!7149381 (= c!1332979 (isEmpty!40104 (tail!14011 l!9154)))))

(declare-fun b!7149382 () Bool)

(declare-fun lt!2569039 () Regex!18234)

(declare-fun isEmptyExpr!2061 (Regex!18234) Bool)

(assert (=> b!7149382 (= e!4295935 (isEmptyExpr!2061 lt!2569039))))

(declare-fun e!4295934 () Bool)

(assert (=> d!2228620 e!4295934))

(declare-fun res!2916375 () Bool)

(assert (=> d!2228620 (=> (not res!2916375) (not e!4295934))))

(declare-fun validRegex!9390 (Regex!18234) Bool)

(assert (=> d!2228620 (= res!2916375 (validRegex!9390 lt!2569039))))

(assert (=> d!2228620 (= lt!2569039 e!4295938)))

(declare-fun c!1332980 () Bool)

(declare-fun e!4295937 () Bool)

(assert (=> d!2228620 (= c!1332980 e!4295937)))

(declare-fun res!2916374 () Bool)

(assert (=> d!2228620 (=> (not res!2916374) (not e!4295937))))

(assert (=> d!2228620 (= res!2916374 (is-Cons!69414 l!9154))))

(assert (=> d!2228620 (forall!17074 l!9154 lambda!436029)))

(assert (=> d!2228620 (= (generalisedConcat!2409 l!9154) lt!2569039)))

(declare-fun b!7149383 () Bool)

(assert (=> b!7149383 (= e!4295937 (isEmpty!40104 (t!383555 l!9154)))))

(declare-fun b!7149384 () Bool)

(assert (=> b!7149384 (= e!4295933 EmptyExpr!18234)))

(declare-fun b!7149385 () Bool)

(declare-fun isConcat!1583 (Regex!18234) Bool)

(assert (=> b!7149385 (= e!4295936 (isConcat!1583 lt!2569039))))

(declare-fun b!7149386 () Bool)

(declare-fun head!14541 (List!69538) Regex!18234)

(assert (=> b!7149386 (= e!4295936 (= lt!2569039 (head!14541 l!9154)))))

(declare-fun b!7149387 () Bool)

(assert (=> b!7149387 (= e!4295934 e!4295935)))

(declare-fun c!1332982 () Bool)

(assert (=> b!7149387 (= c!1332982 (isEmpty!40104 l!9154))))

(assert (= (and d!2228620 res!2916374) b!7149383))

(assert (= (and d!2228620 c!1332980) b!7149380))

(assert (= (and d!2228620 (not c!1332980)) b!7149378))

(assert (= (and b!7149378 c!1332981) b!7149379))

(assert (= (and b!7149378 (not c!1332981)) b!7149384))

(assert (= (and d!2228620 res!2916375) b!7149387))

(assert (= (and b!7149387 c!1332982) b!7149382))

(assert (= (and b!7149387 (not c!1332982)) b!7149381))

(assert (= (and b!7149381 c!1332979) b!7149386))

(assert (= (and b!7149381 (not c!1332979)) b!7149385))

(declare-fun m!7860566 () Bool)

(assert (=> b!7149386 m!7860566))

(declare-fun m!7860568 () Bool)

(assert (=> b!7149382 m!7860568))

(declare-fun m!7860570 () Bool)

(assert (=> b!7149381 m!7860570))

(assert (=> b!7149381 m!7860570))

(declare-fun m!7860572 () Bool)

(assert (=> b!7149381 m!7860572))

(assert (=> b!7149383 m!7860544))

(declare-fun m!7860574 () Bool)

(assert (=> b!7149385 m!7860574))

(declare-fun m!7860576 () Bool)

(assert (=> b!7149387 m!7860576))

(declare-fun m!7860578 () Bool)

(assert (=> d!2228620 m!7860578))

(declare-fun m!7860580 () Bool)

(assert (=> d!2228620 m!7860580))

(declare-fun m!7860582 () Bool)

(assert (=> b!7149379 m!7860582))

(assert (=> b!7149315 d!2228620))

(declare-fun b!7149400 () Bool)

(declare-fun e!4295941 () Bool)

(declare-fun tp!1973803 () Bool)

(assert (=> b!7149400 (= e!4295941 tp!1973803)))

(declare-fun b!7149398 () Bool)

(assert (=> b!7149398 (= e!4295941 tp_is_empty!46105)))

(declare-fun b!7149401 () Bool)

(declare-fun tp!1973806 () Bool)

(declare-fun tp!1973805 () Bool)

(assert (=> b!7149401 (= e!4295941 (and tp!1973806 tp!1973805))))

(assert (=> b!7149313 (= tp!1973766 e!4295941)))

(declare-fun b!7149399 () Bool)

(declare-fun tp!1973802 () Bool)

(declare-fun tp!1973804 () Bool)

(assert (=> b!7149399 (= e!4295941 (and tp!1973802 tp!1973804))))

(assert (= (and b!7149313 (is-ElementMatch!18234 (regOne!36980 r!13911))) b!7149398))

(assert (= (and b!7149313 (is-Concat!27079 (regOne!36980 r!13911))) b!7149399))

(assert (= (and b!7149313 (is-Star!18234 (regOne!36980 r!13911))) b!7149400))

(assert (= (and b!7149313 (is-Union!18234 (regOne!36980 r!13911))) b!7149401))

(declare-fun b!7149404 () Bool)

(declare-fun e!4295942 () Bool)

(declare-fun tp!1973808 () Bool)

(assert (=> b!7149404 (= e!4295942 tp!1973808)))

(declare-fun b!7149402 () Bool)

(assert (=> b!7149402 (= e!4295942 tp_is_empty!46105)))

(declare-fun b!7149405 () Bool)

(declare-fun tp!1973811 () Bool)

(declare-fun tp!1973810 () Bool)

(assert (=> b!7149405 (= e!4295942 (and tp!1973811 tp!1973810))))

(assert (=> b!7149313 (= tp!1973768 e!4295942)))

(declare-fun b!7149403 () Bool)

(declare-fun tp!1973807 () Bool)

(declare-fun tp!1973809 () Bool)

(assert (=> b!7149403 (= e!4295942 (and tp!1973807 tp!1973809))))

(assert (= (and b!7149313 (is-ElementMatch!18234 (regTwo!36980 r!13911))) b!7149402))

(assert (= (and b!7149313 (is-Concat!27079 (regTwo!36980 r!13911))) b!7149403))

(assert (= (and b!7149313 (is-Star!18234 (regTwo!36980 r!13911))) b!7149404))

(assert (= (and b!7149313 (is-Union!18234 (regTwo!36980 r!13911))) b!7149405))

(declare-fun b!7149408 () Bool)

(declare-fun e!4295943 () Bool)

(declare-fun tp!1973813 () Bool)

(assert (=> b!7149408 (= e!4295943 tp!1973813)))

(declare-fun b!7149406 () Bool)

(assert (=> b!7149406 (= e!4295943 tp_is_empty!46105)))

(declare-fun b!7149409 () Bool)

(declare-fun tp!1973816 () Bool)

(declare-fun tp!1973815 () Bool)

(assert (=> b!7149409 (= e!4295943 (and tp!1973816 tp!1973815))))

(assert (=> b!7149311 (= tp!1973764 e!4295943)))

(declare-fun b!7149407 () Bool)

(declare-fun tp!1973812 () Bool)

(declare-fun tp!1973814 () Bool)

(assert (=> b!7149407 (= e!4295943 (and tp!1973812 tp!1973814))))

(assert (= (and b!7149311 (is-ElementMatch!18234 (regOne!36981 r!13911))) b!7149406))

(assert (= (and b!7149311 (is-Concat!27079 (regOne!36981 r!13911))) b!7149407))

(assert (= (and b!7149311 (is-Star!18234 (regOne!36981 r!13911))) b!7149408))

(assert (= (and b!7149311 (is-Union!18234 (regOne!36981 r!13911))) b!7149409))

(declare-fun b!7149412 () Bool)

(declare-fun e!4295944 () Bool)

(declare-fun tp!1973818 () Bool)

(assert (=> b!7149412 (= e!4295944 tp!1973818)))

(declare-fun b!7149410 () Bool)

(assert (=> b!7149410 (= e!4295944 tp_is_empty!46105)))

(declare-fun b!7149413 () Bool)

(declare-fun tp!1973821 () Bool)

(declare-fun tp!1973820 () Bool)

(assert (=> b!7149413 (= e!4295944 (and tp!1973821 tp!1973820))))

(assert (=> b!7149311 (= tp!1973769 e!4295944)))

(declare-fun b!7149411 () Bool)

(declare-fun tp!1973817 () Bool)

(declare-fun tp!1973819 () Bool)

(assert (=> b!7149411 (= e!4295944 (and tp!1973817 tp!1973819))))

(assert (= (and b!7149311 (is-ElementMatch!18234 (regTwo!36981 r!13911))) b!7149410))

(assert (= (and b!7149311 (is-Concat!27079 (regTwo!36981 r!13911))) b!7149411))

(assert (= (and b!7149311 (is-Star!18234 (regTwo!36981 r!13911))) b!7149412))

(assert (= (and b!7149311 (is-Union!18234 (regTwo!36981 r!13911))) b!7149413))

(declare-fun b!7149416 () Bool)

(declare-fun e!4295945 () Bool)

(declare-fun tp!1973823 () Bool)

(assert (=> b!7149416 (= e!4295945 tp!1973823)))

(declare-fun b!7149414 () Bool)

(assert (=> b!7149414 (= e!4295945 tp_is_empty!46105)))

(declare-fun b!7149417 () Bool)

(declare-fun tp!1973826 () Bool)

(declare-fun tp!1973825 () Bool)

(assert (=> b!7149417 (= e!4295945 (and tp!1973826 tp!1973825))))

(assert (=> b!7149310 (= tp!1973767 e!4295945)))

(declare-fun b!7149415 () Bool)

(declare-fun tp!1973822 () Bool)

(declare-fun tp!1973824 () Bool)

(assert (=> b!7149415 (= e!4295945 (and tp!1973822 tp!1973824))))

(assert (= (and b!7149310 (is-ElementMatch!18234 (h!75862 l!9154))) b!7149414))

(assert (= (and b!7149310 (is-Concat!27079 (h!75862 l!9154))) b!7149415))

(assert (= (and b!7149310 (is-Star!18234 (h!75862 l!9154))) b!7149416))

(assert (= (and b!7149310 (is-Union!18234 (h!75862 l!9154))) b!7149417))

(declare-fun b!7149422 () Bool)

(declare-fun e!4295948 () Bool)

(declare-fun tp!1973831 () Bool)

(declare-fun tp!1973832 () Bool)

(assert (=> b!7149422 (= e!4295948 (and tp!1973831 tp!1973832))))

(assert (=> b!7149310 (= tp!1973770 e!4295948)))

(assert (= (and b!7149310 (is-Cons!69414 (t!383555 l!9154))) b!7149422))

(declare-fun b!7149425 () Bool)

(declare-fun e!4295949 () Bool)

(declare-fun tp!1973834 () Bool)

(assert (=> b!7149425 (= e!4295949 tp!1973834)))

(declare-fun b!7149423 () Bool)

(assert (=> b!7149423 (= e!4295949 tp_is_empty!46105)))

(declare-fun b!7149426 () Bool)

(declare-fun tp!1973837 () Bool)

(declare-fun tp!1973836 () Bool)

(assert (=> b!7149426 (= e!4295949 (and tp!1973837 tp!1973836))))

(assert (=> b!7149314 (= tp!1973765 e!4295949)))

(declare-fun b!7149424 () Bool)

(declare-fun tp!1973833 () Bool)

(declare-fun tp!1973835 () Bool)

(assert (=> b!7149424 (= e!4295949 (and tp!1973833 tp!1973835))))

(assert (= (and b!7149314 (is-ElementMatch!18234 (reg!18563 r!13911))) b!7149423))

(assert (= (and b!7149314 (is-Concat!27079 (reg!18563 r!13911))) b!7149424))

(assert (= (and b!7149314 (is-Star!18234 (reg!18563 r!13911))) b!7149425))

(assert (= (and b!7149314 (is-Union!18234 (reg!18563 r!13911))) b!7149426))

(declare-fun b_lambda!272911 () Bool)

(assert (= b_lambda!272907 (or start!697074 b_lambda!272911)))

(declare-fun bs!1889435 () Bool)

(declare-fun d!2228624 () Bool)

(assert (= bs!1889435 (and d!2228624 start!697074)))

(assert (=> bs!1889435 (= (dynLambda!28276 lambda!436021 (h!75862 (t!383555 l!9154))) (validRegex!9390 (h!75862 (t!383555 l!9154))))))

(declare-fun m!7860584 () Bool)

(assert (=> bs!1889435 m!7860584))

(assert (=> b!7149354 d!2228624))

(declare-fun b_lambda!272913 () Bool)

(assert (= b_lambda!272909 (or start!697074 b_lambda!272913)))

(declare-fun bs!1889436 () Bool)

(declare-fun d!2228626 () Bool)

(assert (= bs!1889436 (and d!2228626 start!697074)))

(assert (=> bs!1889436 (= (dynLambda!28276 lambda!436021 (h!75862 l!9154)) (validRegex!9390 (h!75862 l!9154)))))

(declare-fun m!7860586 () Bool)

(assert (=> bs!1889436 m!7860586))

(assert (=> b!7149356 d!2228626))

(push 1)

(assert (not b!7149387))

(assert (not b!7149425))

(assert (not b!7149381))

(assert (not b!7149411))

(assert (not b!7149413))

(assert (not b!7149417))

(assert (not b!7149409))

(assert (not b!7149382))

(assert (not b!7149403))

(assert (not b!7149408))

(assert (not b!7149424))

(assert (not b!7149400))

(assert (not b!7149412))

(assert (not b!7149385))

(assert (not b!7149355))

(assert (not b_lambda!272911))

(assert (not bs!1889436))

(assert (not b_lambda!272913))

(assert (not b!7149404))

(assert (not b!7149399))

(assert (not b!7149401))

(assert (not b!7149415))

(assert (not b!7149386))

(assert (not b!7149405))

(assert (not b!7149379))

(assert (not bs!1889435))

(assert (not b!7149416))

(assert (not b!7149422))

(assert (not b!7149357))

(assert (not b!7149383))

(assert (not d!2228620))

(assert (not b!7149426))

(assert tp_is_empty!46105)

(assert (not b!7149407))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

