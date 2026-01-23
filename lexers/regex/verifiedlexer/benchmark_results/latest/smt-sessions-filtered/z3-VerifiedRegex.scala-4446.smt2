; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!236448 () Bool)

(assert start!236448)

(declare-fun b!2412902 () Bool)

(declare-fun e!1535912 () Bool)

(declare-fun tp_is_empty!11583 () Bool)

(declare-fun tp!767447 () Bool)

(assert (=> b!2412902 (= e!1535912 (and tp_is_empty!11583 tp!767447))))

(declare-fun b!2412903 () Bool)

(declare-fun res!1024788 () Bool)

(declare-fun e!1535908 () Bool)

(assert (=> b!2412903 (=> res!1024788 e!1535908)))

(declare-datatypes ((C!14328 0))(
  ( (C!14329 (val!8406 Int)) )
))
(declare-datatypes ((Regex!7085 0))(
  ( (ElementMatch!7085 (c!384445 C!14328)) (Concat!11721 (regOne!14682 Regex!7085) (regTwo!14682 Regex!7085)) (EmptyExpr!7085) (Star!7085 (reg!7414 Regex!7085)) (EmptyLang!7085) (Union!7085 (regOne!14683 Regex!7085) (regTwo!14683 Regex!7085)) )
))
(declare-datatypes ((List!28408 0))(
  ( (Nil!28310) (Cons!28310 (h!33711 Regex!7085) (t!208385 List!28408)) )
))
(declare-fun l!9164 () List!28408)

(declare-fun isEmpty!16319 (List!28408) Bool)

(assert (=> b!2412903 (= res!1024788 (isEmpty!16319 l!9164))))

(declare-fun b!2412904 () Bool)

(declare-fun e!1535911 () Bool)

(assert (=> b!2412904 (= e!1535911 (not (= l!9164 Nil!28310)))))

(declare-fun res!1024786 () Bool)

(declare-fun e!1535910 () Bool)

(assert (=> start!236448 (=> (not res!1024786) (not e!1535910))))

(declare-fun lambda!90831 () Int)

(declare-fun forall!5719 (List!28408 Int) Bool)

(assert (=> start!236448 (= res!1024786 (forall!5719 l!9164 lambda!90831))))

(assert (=> start!236448 e!1535910))

(declare-fun e!1535907 () Bool)

(assert (=> start!236448 e!1535907))

(declare-fun e!1535909 () Bool)

(assert (=> start!236448 e!1535909))

(assert (=> start!236448 e!1535912))

(declare-fun b!2412905 () Bool)

(declare-fun tp!767441 () Bool)

(assert (=> b!2412905 (= e!1535909 tp!767441)))

(declare-fun b!2412906 () Bool)

(declare-fun tp!767444 () Bool)

(declare-fun tp!767442 () Bool)

(assert (=> b!2412906 (= e!1535909 (and tp!767444 tp!767442))))

(declare-fun b!2412907 () Bool)

(declare-fun res!1024792 () Bool)

(assert (=> b!2412907 (=> res!1024792 e!1535911)))

(declare-fun lt!873866 () List!28408)

(declare-fun generalisedConcat!186 (List!28408) Regex!7085)

(assert (=> b!2412907 (= res!1024792 (not (= (generalisedConcat!186 lt!873866) EmptyExpr!7085)))))

(declare-fun b!2412908 () Bool)

(declare-fun res!1024790 () Bool)

(assert (=> b!2412908 (=> (not res!1024790) (not e!1535910))))

(declare-fun r!13927 () Regex!7085)

(assert (=> b!2412908 (= res!1024790 (= r!13927 (generalisedConcat!186 l!9164)))))

(declare-fun b!2412909 () Bool)

(assert (=> b!2412909 (= e!1535910 (not e!1535908))))

(declare-fun res!1024789 () Bool)

(assert (=> b!2412909 (=> res!1024789 e!1535908)))

(get-info :version)

(assert (=> b!2412909 (= res!1024789 (or ((_ is Concat!11721) r!13927) ((_ is EmptyExpr!7085) r!13927)))))

(declare-datatypes ((List!28409 0))(
  ( (Nil!28311) (Cons!28311 (h!33712 C!14328) (t!208386 List!28409)) )
))
(declare-fun s!9460 () List!28409)

(declare-fun matchR!3202 (Regex!7085 List!28409) Bool)

(declare-fun matchRSpec!934 (Regex!7085 List!28409) Bool)

(assert (=> b!2412909 (= (matchR!3202 r!13927 s!9460) (matchRSpec!934 r!13927 s!9460))))

(declare-datatypes ((Unit!41441 0))(
  ( (Unit!41442) )
))
(declare-fun lt!873865 () Unit!41441)

(declare-fun mainMatchTheorem!934 (Regex!7085 List!28409) Unit!41441)

(assert (=> b!2412909 (= lt!873865 (mainMatchTheorem!934 r!13927 s!9460))))

(declare-fun b!2412910 () Bool)

(declare-fun tp!767445 () Bool)

(declare-fun tp!767440 () Bool)

(assert (=> b!2412910 (= e!1535907 (and tp!767445 tp!767440))))

(declare-fun b!2412911 () Bool)

(declare-fun res!1024791 () Bool)

(assert (=> b!2412911 (=> res!1024791 e!1535911)))

(declare-fun head!5388 (List!28408) Regex!7085)

(assert (=> b!2412911 (= res!1024791 (matchR!3202 (head!5388 l!9164) s!9460))))

(declare-fun b!2412912 () Bool)

(assert (=> b!2412912 (= e!1535909 tp_is_empty!11583)))

(declare-fun b!2412913 () Bool)

(assert (=> b!2412913 (= e!1535908 e!1535911)))

(declare-fun res!1024787 () Bool)

(assert (=> b!2412913 (=> res!1024787 e!1535911)))

(assert (=> b!2412913 (= res!1024787 (not (isEmpty!16319 lt!873866)))))

(declare-fun tail!3660 (List!28408) List!28408)

(assert (=> b!2412913 (= lt!873866 (tail!3660 l!9164))))

(declare-fun b!2412914 () Bool)

(declare-fun tp!767443 () Bool)

(declare-fun tp!767446 () Bool)

(assert (=> b!2412914 (= e!1535909 (and tp!767443 tp!767446))))

(assert (= (and start!236448 res!1024786) b!2412908))

(assert (= (and b!2412908 res!1024790) b!2412909))

(assert (= (and b!2412909 (not res!1024789)) b!2412903))

(assert (= (and b!2412903 (not res!1024788)) b!2412913))

(assert (= (and b!2412913 (not res!1024787)) b!2412907))

(assert (= (and b!2412907 (not res!1024792)) b!2412911))

(assert (= (and b!2412911 (not res!1024791)) b!2412904))

(assert (= (and start!236448 ((_ is Cons!28310) l!9164)) b!2412910))

(assert (= (and start!236448 ((_ is ElementMatch!7085) r!13927)) b!2412912))

(assert (= (and start!236448 ((_ is Concat!11721) r!13927)) b!2412914))

(assert (= (and start!236448 ((_ is Star!7085) r!13927)) b!2412905))

(assert (= (and start!236448 ((_ is Union!7085) r!13927)) b!2412906))

(assert (= (and start!236448 ((_ is Cons!28311) s!9460)) b!2412902))

(declare-fun m!2803329 () Bool)

(assert (=> start!236448 m!2803329))

(declare-fun m!2803331 () Bool)

(assert (=> b!2412903 m!2803331))

(declare-fun m!2803333 () Bool)

(assert (=> b!2412913 m!2803333))

(declare-fun m!2803335 () Bool)

(assert (=> b!2412913 m!2803335))

(declare-fun m!2803337 () Bool)

(assert (=> b!2412911 m!2803337))

(assert (=> b!2412911 m!2803337))

(declare-fun m!2803339 () Bool)

(assert (=> b!2412911 m!2803339))

(declare-fun m!2803341 () Bool)

(assert (=> b!2412908 m!2803341))

(declare-fun m!2803343 () Bool)

(assert (=> b!2412909 m!2803343))

(declare-fun m!2803345 () Bool)

(assert (=> b!2412909 m!2803345))

(declare-fun m!2803347 () Bool)

(assert (=> b!2412909 m!2803347))

(declare-fun m!2803349 () Bool)

(assert (=> b!2412907 m!2803349))

(check-sat (not b!2412907) (not b!2412911) (not start!236448) (not b!2412910) (not b!2412914) (not b!2412905) (not b!2412908) (not b!2412909) (not b!2412913) (not b!2412903) (not b!2412906) tp_is_empty!11583 (not b!2412902))
(check-sat)
(get-model)

(declare-fun bs!463483 () Bool)

(declare-fun d!700869 () Bool)

(assert (= bs!463483 (and d!700869 start!236448)))

(declare-fun lambda!90836 () Int)

(assert (=> bs!463483 (= lambda!90836 lambda!90831)))

(declare-fun b!2412955 () Bool)

(declare-fun e!1535938 () Bool)

(declare-fun e!1535942 () Bool)

(assert (=> b!2412955 (= e!1535938 e!1535942)))

(declare-fun c!384465 () Bool)

(assert (=> b!2412955 (= c!384465 (isEmpty!16319 l!9164))))

(declare-fun b!2412956 () Bool)

(declare-fun e!1535941 () Bool)

(declare-fun lt!873871 () Regex!7085)

(assert (=> b!2412956 (= e!1535941 (= lt!873871 (head!5388 l!9164)))))

(declare-fun b!2412957 () Bool)

(declare-fun e!1535937 () Regex!7085)

(assert (=> b!2412957 (= e!1535937 (Concat!11721 (h!33711 l!9164) (generalisedConcat!186 (t!208385 l!9164))))))

(declare-fun b!2412958 () Bool)

(declare-fun isConcat!145 (Regex!7085) Bool)

(assert (=> b!2412958 (= e!1535941 (isConcat!145 lt!873871))))

(declare-fun b!2412959 () Bool)

(assert (=> b!2412959 (= e!1535937 EmptyExpr!7085)))

(declare-fun b!2412960 () Bool)

(assert (=> b!2412960 (= e!1535942 e!1535941)))

(declare-fun c!384462 () Bool)

(assert (=> b!2412960 (= c!384462 (isEmpty!16319 (tail!3660 l!9164)))))

(declare-fun b!2412961 () Bool)

(declare-fun e!1535940 () Regex!7085)

(assert (=> b!2412961 (= e!1535940 (h!33711 l!9164))))

(declare-fun b!2412962 () Bool)

(declare-fun isEmptyExpr!146 (Regex!7085) Bool)

(assert (=> b!2412962 (= e!1535942 (isEmptyExpr!146 lt!873871))))

(declare-fun b!2412963 () Bool)

(assert (=> b!2412963 (= e!1535940 e!1535937)))

(declare-fun c!384464 () Bool)

(assert (=> b!2412963 (= c!384464 ((_ is Cons!28310) l!9164))))

(assert (=> d!700869 e!1535938))

(declare-fun res!1024802 () Bool)

(assert (=> d!700869 (=> (not res!1024802) (not e!1535938))))

(declare-fun validRegex!2807 (Regex!7085) Bool)

(assert (=> d!700869 (= res!1024802 (validRegex!2807 lt!873871))))

(assert (=> d!700869 (= lt!873871 e!1535940)))

(declare-fun c!384463 () Bool)

(declare-fun e!1535939 () Bool)

(assert (=> d!700869 (= c!384463 e!1535939)))

(declare-fun res!1024801 () Bool)

(assert (=> d!700869 (=> (not res!1024801) (not e!1535939))))

(assert (=> d!700869 (= res!1024801 ((_ is Cons!28310) l!9164))))

(assert (=> d!700869 (forall!5719 l!9164 lambda!90836)))

(assert (=> d!700869 (= (generalisedConcat!186 l!9164) lt!873871)))

(declare-fun b!2412964 () Bool)

(assert (=> b!2412964 (= e!1535939 (isEmpty!16319 (t!208385 l!9164)))))

(assert (= (and d!700869 res!1024801) b!2412964))

(assert (= (and d!700869 c!384463) b!2412961))

(assert (= (and d!700869 (not c!384463)) b!2412963))

(assert (= (and b!2412963 c!384464) b!2412957))

(assert (= (and b!2412963 (not c!384464)) b!2412959))

(assert (= (and d!700869 res!1024802) b!2412955))

(assert (= (and b!2412955 c!384465) b!2412962))

(assert (= (and b!2412955 (not c!384465)) b!2412960))

(assert (= (and b!2412960 c!384462) b!2412956))

(assert (= (and b!2412960 (not c!384462)) b!2412958))

(declare-fun m!2803351 () Bool)

(assert (=> b!2412962 m!2803351))

(declare-fun m!2803353 () Bool)

(assert (=> d!700869 m!2803353))

(declare-fun m!2803355 () Bool)

(assert (=> d!700869 m!2803355))

(assert (=> b!2412955 m!2803331))

(assert (=> b!2412960 m!2803335))

(assert (=> b!2412960 m!2803335))

(declare-fun m!2803357 () Bool)

(assert (=> b!2412960 m!2803357))

(assert (=> b!2412956 m!2803337))

(declare-fun m!2803359 () Bool)

(assert (=> b!2412957 m!2803359))

(declare-fun m!2803361 () Bool)

(assert (=> b!2412958 m!2803361))

(declare-fun m!2803363 () Bool)

(assert (=> b!2412964 m!2803363))

(assert (=> b!2412908 d!700869))

(declare-fun d!700875 () Bool)

(declare-fun res!1024811 () Bool)

(declare-fun e!1535959 () Bool)

(assert (=> d!700875 (=> res!1024811 e!1535959)))

(assert (=> d!700875 (= res!1024811 ((_ is Nil!28310) l!9164))))

(assert (=> d!700875 (= (forall!5719 l!9164 lambda!90831) e!1535959)))

(declare-fun b!2412989 () Bool)

(declare-fun e!1535960 () Bool)

(assert (=> b!2412989 (= e!1535959 e!1535960)))

(declare-fun res!1024812 () Bool)

(assert (=> b!2412989 (=> (not res!1024812) (not e!1535960))))

(declare-fun dynLambda!12188 (Int Regex!7085) Bool)

(assert (=> b!2412989 (= res!1024812 (dynLambda!12188 lambda!90831 (h!33711 l!9164)))))

(declare-fun b!2412990 () Bool)

(assert (=> b!2412990 (= e!1535960 (forall!5719 (t!208385 l!9164) lambda!90831))))

(assert (= (and d!700875 (not res!1024811)) b!2412989))

(assert (= (and b!2412989 res!1024812) b!2412990))

(declare-fun b_lambda!74523 () Bool)

(assert (=> (not b_lambda!74523) (not b!2412989)))

(declare-fun m!2803397 () Bool)

(assert (=> b!2412989 m!2803397))

(declare-fun m!2803399 () Bool)

(assert (=> b!2412990 m!2803399))

(assert (=> start!236448 d!700875))

(declare-fun d!700881 () Bool)

(assert (=> d!700881 (= (isEmpty!16319 l!9164) ((_ is Nil!28310) l!9164))))

(assert (=> b!2412903 d!700881))

(declare-fun b!2413053 () Bool)

(declare-fun e!1535997 () Bool)

(declare-fun e!1536000 () Bool)

(assert (=> b!2413053 (= e!1535997 e!1536000)))

(declare-fun res!1024858 () Bool)

(assert (=> b!2413053 (=> res!1024858 e!1536000)))

(declare-fun call!147359 () Bool)

(assert (=> b!2413053 (= res!1024858 call!147359)))

(declare-fun b!2413054 () Bool)

(declare-fun res!1024852 () Bool)

(declare-fun e!1536001 () Bool)

(assert (=> b!2413054 (=> (not res!1024852) (not e!1536001))))

(declare-fun isEmpty!16320 (List!28409) Bool)

(declare-fun tail!3661 (List!28409) List!28409)

(assert (=> b!2413054 (= res!1024852 (isEmpty!16320 (tail!3661 s!9460)))))

(declare-fun d!700883 () Bool)

(declare-fun e!1535996 () Bool)

(assert (=> d!700883 e!1535996))

(declare-fun c!384487 () Bool)

(assert (=> d!700883 (= c!384487 ((_ is EmptyExpr!7085) r!13927))))

(declare-fun lt!873878 () Bool)

(declare-fun e!1535998 () Bool)

(assert (=> d!700883 (= lt!873878 e!1535998)))

(declare-fun c!384486 () Bool)

(assert (=> d!700883 (= c!384486 (isEmpty!16320 s!9460))))

(assert (=> d!700883 (validRegex!2807 r!13927)))

(assert (=> d!700883 (= (matchR!3202 r!13927 s!9460) lt!873878)))

(declare-fun b!2413055 () Bool)

(declare-fun head!5389 (List!28409) C!14328)

(assert (=> b!2413055 (= e!1536001 (= (head!5389 s!9460) (c!384445 r!13927)))))

(declare-fun b!2413056 () Bool)

(declare-fun res!1024855 () Bool)

(declare-fun e!1535995 () Bool)

(assert (=> b!2413056 (=> res!1024855 e!1535995)))

(assert (=> b!2413056 (= res!1024855 (not ((_ is ElementMatch!7085) r!13927)))))

(declare-fun e!1535999 () Bool)

(assert (=> b!2413056 (= e!1535999 e!1535995)))

(declare-fun b!2413057 () Bool)

(declare-fun res!1024857 () Bool)

(assert (=> b!2413057 (=> res!1024857 e!1536000)))

(assert (=> b!2413057 (= res!1024857 (not (isEmpty!16320 (tail!3661 s!9460))))))

(declare-fun b!2413058 () Bool)

(declare-fun derivativeStep!1783 (Regex!7085 C!14328) Regex!7085)

(assert (=> b!2413058 (= e!1535998 (matchR!3202 (derivativeStep!1783 r!13927 (head!5389 s!9460)) (tail!3661 s!9460)))))

(declare-fun b!2413059 () Bool)

(declare-fun nullable!2126 (Regex!7085) Bool)

(assert (=> b!2413059 (= e!1535998 (nullable!2126 r!13927))))

(declare-fun b!2413060 () Bool)

(declare-fun res!1024856 () Bool)

(assert (=> b!2413060 (=> res!1024856 e!1535995)))

(assert (=> b!2413060 (= res!1024856 e!1536001)))

(declare-fun res!1024851 () Bool)

(assert (=> b!2413060 (=> (not res!1024851) (not e!1536001))))

(assert (=> b!2413060 (= res!1024851 lt!873878)))

(declare-fun b!2413061 () Bool)

(assert (=> b!2413061 (= e!1535996 e!1535999)))

(declare-fun c!384488 () Bool)

(assert (=> b!2413061 (= c!384488 ((_ is EmptyLang!7085) r!13927))))

(declare-fun b!2413062 () Bool)

(assert (=> b!2413062 (= e!1535996 (= lt!873878 call!147359))))

(declare-fun b!2413063 () Bool)

(declare-fun res!1024853 () Bool)

(assert (=> b!2413063 (=> (not res!1024853) (not e!1536001))))

(assert (=> b!2413063 (= res!1024853 (not call!147359))))

(declare-fun b!2413064 () Bool)

(assert (=> b!2413064 (= e!1535999 (not lt!873878))))

(declare-fun bm!147354 () Bool)

(assert (=> bm!147354 (= call!147359 (isEmpty!16320 s!9460))))

(declare-fun b!2413065 () Bool)

(assert (=> b!2413065 (= e!1536000 (not (= (head!5389 s!9460) (c!384445 r!13927))))))

(declare-fun b!2413066 () Bool)

(assert (=> b!2413066 (= e!1535995 e!1535997)))

(declare-fun res!1024854 () Bool)

(assert (=> b!2413066 (=> (not res!1024854) (not e!1535997))))

(assert (=> b!2413066 (= res!1024854 (not lt!873878))))

(assert (= (and d!700883 c!384486) b!2413059))

(assert (= (and d!700883 (not c!384486)) b!2413058))

(assert (= (and d!700883 c!384487) b!2413062))

(assert (= (and d!700883 (not c!384487)) b!2413061))

(assert (= (and b!2413061 c!384488) b!2413064))

(assert (= (and b!2413061 (not c!384488)) b!2413056))

(assert (= (and b!2413056 (not res!1024855)) b!2413060))

(assert (= (and b!2413060 res!1024851) b!2413063))

(assert (= (and b!2413063 res!1024853) b!2413054))

(assert (= (and b!2413054 res!1024852) b!2413055))

(assert (= (and b!2413060 (not res!1024856)) b!2413066))

(assert (= (and b!2413066 res!1024854) b!2413053))

(assert (= (and b!2413053 (not res!1024858)) b!2413057))

(assert (= (and b!2413057 (not res!1024857)) b!2413065))

(assert (= (or b!2413062 b!2413053 b!2413063) bm!147354))

(declare-fun m!2803405 () Bool)

(assert (=> b!2413065 m!2803405))

(assert (=> b!2413055 m!2803405))

(declare-fun m!2803407 () Bool)

(assert (=> b!2413059 m!2803407))

(assert (=> b!2413058 m!2803405))

(assert (=> b!2413058 m!2803405))

(declare-fun m!2803409 () Bool)

(assert (=> b!2413058 m!2803409))

(declare-fun m!2803411 () Bool)

(assert (=> b!2413058 m!2803411))

(assert (=> b!2413058 m!2803409))

(assert (=> b!2413058 m!2803411))

(declare-fun m!2803413 () Bool)

(assert (=> b!2413058 m!2803413))

(assert (=> b!2413054 m!2803411))

(assert (=> b!2413054 m!2803411))

(declare-fun m!2803415 () Bool)

(assert (=> b!2413054 m!2803415))

(assert (=> b!2413057 m!2803411))

(assert (=> b!2413057 m!2803411))

(assert (=> b!2413057 m!2803415))

(declare-fun m!2803417 () Bool)

(assert (=> d!700883 m!2803417))

(declare-fun m!2803419 () Bool)

(assert (=> d!700883 m!2803419))

(assert (=> bm!147354 m!2803417))

(assert (=> b!2412909 d!700883))

(declare-fun b!2413147 () Bool)

(assert (=> b!2413147 true))

(assert (=> b!2413147 true))

(declare-fun bs!463487 () Bool)

(declare-fun b!2413149 () Bool)

(assert (= bs!463487 (and b!2413149 b!2413147)))

(declare-fun lambda!90849 () Int)

(declare-fun lambda!90847 () Int)

(assert (=> bs!463487 (not (= lambda!90849 lambda!90847))))

(assert (=> b!2413149 true))

(assert (=> b!2413149 true))

(declare-fun d!700887 () Bool)

(declare-fun c!384508 () Bool)

(assert (=> d!700887 (= c!384508 ((_ is EmptyExpr!7085) r!13927))))

(declare-fun e!1536050 () Bool)

(assert (=> d!700887 (= (matchRSpec!934 r!13927 s!9460) e!1536050)))

(declare-fun b!2413145 () Bool)

(declare-fun e!1536046 () Bool)

(assert (=> b!2413145 (= e!1536046 (matchRSpec!934 (regTwo!14683 r!13927) s!9460))))

(declare-fun b!2413146 () Bool)

(declare-fun res!1024900 () Bool)

(declare-fun e!1536045 () Bool)

(assert (=> b!2413146 (=> res!1024900 e!1536045)))

(declare-fun call!147370 () Bool)

(assert (=> b!2413146 (= res!1024900 call!147370)))

(declare-fun e!1536051 () Bool)

(assert (=> b!2413146 (= e!1536051 e!1536045)))

(declare-fun call!147369 () Bool)

(assert (=> b!2413147 (= e!1536045 call!147369)))

(declare-fun b!2413148 () Bool)

(declare-fun e!1536049 () Bool)

(assert (=> b!2413148 (= e!1536049 (= s!9460 (Cons!28311 (c!384445 r!13927) Nil!28311)))))

(assert (=> b!2413149 (= e!1536051 call!147369)))

(declare-fun b!2413150 () Bool)

(declare-fun e!1536048 () Bool)

(assert (=> b!2413150 (= e!1536050 e!1536048)))

(declare-fun res!1024901 () Bool)

(assert (=> b!2413150 (= res!1024901 (not ((_ is EmptyLang!7085) r!13927)))))

(assert (=> b!2413150 (=> (not res!1024901) (not e!1536048))))

(declare-fun b!2413151 () Bool)

(declare-fun c!384511 () Bool)

(assert (=> b!2413151 (= c!384511 ((_ is ElementMatch!7085) r!13927))))

(assert (=> b!2413151 (= e!1536048 e!1536049)))

(declare-fun b!2413152 () Bool)

(declare-fun c!384510 () Bool)

(assert (=> b!2413152 (= c!384510 ((_ is Union!7085) r!13927))))

(declare-fun e!1536047 () Bool)

(assert (=> b!2413152 (= e!1536049 e!1536047)))

(declare-fun bm!147364 () Bool)

(declare-fun c!384509 () Bool)

(declare-fun Exists!1133 (Int) Bool)

(assert (=> bm!147364 (= call!147369 (Exists!1133 (ite c!384509 lambda!90847 lambda!90849)))))

(declare-fun b!2413153 () Bool)

(assert (=> b!2413153 (= e!1536047 e!1536051)))

(assert (=> b!2413153 (= c!384509 ((_ is Star!7085) r!13927))))

(declare-fun bm!147365 () Bool)

(assert (=> bm!147365 (= call!147370 (isEmpty!16320 s!9460))))

(declare-fun b!2413154 () Bool)

(assert (=> b!2413154 (= e!1536050 call!147370)))

(declare-fun b!2413155 () Bool)

(assert (=> b!2413155 (= e!1536047 e!1536046)))

(declare-fun res!1024899 () Bool)

(assert (=> b!2413155 (= res!1024899 (matchRSpec!934 (regOne!14683 r!13927) s!9460))))

(assert (=> b!2413155 (=> res!1024899 e!1536046)))

(assert (= (and d!700887 c!384508) b!2413154))

(assert (= (and d!700887 (not c!384508)) b!2413150))

(assert (= (and b!2413150 res!1024901) b!2413151))

(assert (= (and b!2413151 c!384511) b!2413148))

(assert (= (and b!2413151 (not c!384511)) b!2413152))

(assert (= (and b!2413152 c!384510) b!2413155))

(assert (= (and b!2413152 (not c!384510)) b!2413153))

(assert (= (and b!2413155 (not res!1024899)) b!2413145))

(assert (= (and b!2413153 c!384509) b!2413146))

(assert (= (and b!2413153 (not c!384509)) b!2413149))

(assert (= (and b!2413146 (not res!1024900)) b!2413147))

(assert (= (or b!2413147 b!2413149) bm!147364))

(assert (= (or b!2413154 b!2413146) bm!147365))

(declare-fun m!2803437 () Bool)

(assert (=> b!2413145 m!2803437))

(declare-fun m!2803439 () Bool)

(assert (=> bm!147364 m!2803439))

(assert (=> bm!147365 m!2803417))

(declare-fun m!2803441 () Bool)

(assert (=> b!2413155 m!2803441))

(assert (=> b!2412909 d!700887))

(declare-fun d!700891 () Bool)

(assert (=> d!700891 (= (matchR!3202 r!13927 s!9460) (matchRSpec!934 r!13927 s!9460))))

(declare-fun lt!873884 () Unit!41441)

(declare-fun choose!14275 (Regex!7085 List!28409) Unit!41441)

(assert (=> d!700891 (= lt!873884 (choose!14275 r!13927 s!9460))))

(assert (=> d!700891 (validRegex!2807 r!13927)))

(assert (=> d!700891 (= (mainMatchTheorem!934 r!13927 s!9460) lt!873884)))

(declare-fun bs!463489 () Bool)

(assert (= bs!463489 d!700891))

(assert (=> bs!463489 m!2803343))

(assert (=> bs!463489 m!2803345))

(declare-fun m!2803449 () Bool)

(assert (=> bs!463489 m!2803449))

(assert (=> bs!463489 m!2803419))

(assert (=> b!2412909 d!700891))

(declare-fun bs!463490 () Bool)

(declare-fun d!700895 () Bool)

(assert (= bs!463490 (and d!700895 start!236448)))

(declare-fun lambda!90851 () Int)

(assert (=> bs!463490 (= lambda!90851 lambda!90831)))

(declare-fun bs!463491 () Bool)

(assert (= bs!463491 (and d!700895 d!700869)))

(assert (=> bs!463491 (= lambda!90851 lambda!90836)))

(declare-fun b!2413175 () Bool)

(declare-fun e!1536060 () Bool)

(declare-fun e!1536064 () Bool)

(assert (=> b!2413175 (= e!1536060 e!1536064)))

(declare-fun c!384519 () Bool)

(assert (=> b!2413175 (= c!384519 (isEmpty!16319 lt!873866))))

(declare-fun b!2413176 () Bool)

(declare-fun e!1536063 () Bool)

(declare-fun lt!873885 () Regex!7085)

(assert (=> b!2413176 (= e!1536063 (= lt!873885 (head!5388 lt!873866)))))

(declare-fun b!2413177 () Bool)

(declare-fun e!1536059 () Regex!7085)

(assert (=> b!2413177 (= e!1536059 (Concat!11721 (h!33711 lt!873866) (generalisedConcat!186 (t!208385 lt!873866))))))

(declare-fun b!2413178 () Bool)

(assert (=> b!2413178 (= e!1536063 (isConcat!145 lt!873885))))

(declare-fun b!2413179 () Bool)

(assert (=> b!2413179 (= e!1536059 EmptyExpr!7085)))

(declare-fun b!2413180 () Bool)

(assert (=> b!2413180 (= e!1536064 e!1536063)))

(declare-fun c!384516 () Bool)

(assert (=> b!2413180 (= c!384516 (isEmpty!16319 (tail!3660 lt!873866)))))

(declare-fun b!2413181 () Bool)

(declare-fun e!1536062 () Regex!7085)

(assert (=> b!2413181 (= e!1536062 (h!33711 lt!873866))))

(declare-fun b!2413182 () Bool)

(assert (=> b!2413182 (= e!1536064 (isEmptyExpr!146 lt!873885))))

(declare-fun b!2413183 () Bool)

(assert (=> b!2413183 (= e!1536062 e!1536059)))

(declare-fun c!384518 () Bool)

(assert (=> b!2413183 (= c!384518 ((_ is Cons!28310) lt!873866))))

(assert (=> d!700895 e!1536060))

(declare-fun res!1024906 () Bool)

(assert (=> d!700895 (=> (not res!1024906) (not e!1536060))))

(assert (=> d!700895 (= res!1024906 (validRegex!2807 lt!873885))))

(assert (=> d!700895 (= lt!873885 e!1536062)))

(declare-fun c!384517 () Bool)

(declare-fun e!1536061 () Bool)

(assert (=> d!700895 (= c!384517 e!1536061)))

(declare-fun res!1024905 () Bool)

(assert (=> d!700895 (=> (not res!1024905) (not e!1536061))))

(assert (=> d!700895 (= res!1024905 ((_ is Cons!28310) lt!873866))))

(assert (=> d!700895 (forall!5719 lt!873866 lambda!90851)))

(assert (=> d!700895 (= (generalisedConcat!186 lt!873866) lt!873885)))

(declare-fun b!2413184 () Bool)

(assert (=> b!2413184 (= e!1536061 (isEmpty!16319 (t!208385 lt!873866)))))

(assert (= (and d!700895 res!1024905) b!2413184))

(assert (= (and d!700895 c!384517) b!2413181))

(assert (= (and d!700895 (not c!384517)) b!2413183))

(assert (= (and b!2413183 c!384518) b!2413177))

(assert (= (and b!2413183 (not c!384518)) b!2413179))

(assert (= (and d!700895 res!1024906) b!2413175))

(assert (= (and b!2413175 c!384519) b!2413182))

(assert (= (and b!2413175 (not c!384519)) b!2413180))

(assert (= (and b!2413180 c!384516) b!2413176))

(assert (= (and b!2413180 (not c!384516)) b!2413178))

(declare-fun m!2803453 () Bool)

(assert (=> b!2413182 m!2803453))

(declare-fun m!2803455 () Bool)

(assert (=> d!700895 m!2803455))

(declare-fun m!2803457 () Bool)

(assert (=> d!700895 m!2803457))

(assert (=> b!2413175 m!2803333))

(declare-fun m!2803459 () Bool)

(assert (=> b!2413180 m!2803459))

(assert (=> b!2413180 m!2803459))

(declare-fun m!2803461 () Bool)

(assert (=> b!2413180 m!2803461))

(declare-fun m!2803463 () Bool)

(assert (=> b!2413176 m!2803463))

(declare-fun m!2803465 () Bool)

(assert (=> b!2413177 m!2803465))

(declare-fun m!2803467 () Bool)

(assert (=> b!2413178 m!2803467))

(declare-fun m!2803469 () Bool)

(assert (=> b!2413184 m!2803469))

(assert (=> b!2412907 d!700895))

(declare-fun d!700899 () Bool)

(assert (=> d!700899 (= (isEmpty!16319 lt!873866) ((_ is Nil!28310) lt!873866))))

(assert (=> b!2412913 d!700899))

(declare-fun d!700901 () Bool)

(assert (=> d!700901 (= (tail!3660 l!9164) (t!208385 l!9164))))

(assert (=> b!2412913 d!700901))

(declare-fun b!2413199 () Bool)

(declare-fun e!1536074 () Bool)

(declare-fun e!1536077 () Bool)

(assert (=> b!2413199 (= e!1536074 e!1536077)))

(declare-fun res!1024922 () Bool)

(assert (=> b!2413199 (=> res!1024922 e!1536077)))

(declare-fun call!147374 () Bool)

(assert (=> b!2413199 (= res!1024922 call!147374)))

(declare-fun b!2413200 () Bool)

(declare-fun res!1024916 () Bool)

(declare-fun e!1536078 () Bool)

(assert (=> b!2413200 (=> (not res!1024916) (not e!1536078))))

(assert (=> b!2413200 (= res!1024916 (isEmpty!16320 (tail!3661 s!9460)))))

(declare-fun d!700903 () Bool)

(declare-fun e!1536073 () Bool)

(assert (=> d!700903 e!1536073))

(declare-fun c!384524 () Bool)

(assert (=> d!700903 (= c!384524 ((_ is EmptyExpr!7085) (head!5388 l!9164)))))

(declare-fun lt!873888 () Bool)

(declare-fun e!1536075 () Bool)

(assert (=> d!700903 (= lt!873888 e!1536075)))

(declare-fun c!384523 () Bool)

(assert (=> d!700903 (= c!384523 (isEmpty!16320 s!9460))))

(assert (=> d!700903 (validRegex!2807 (head!5388 l!9164))))

(assert (=> d!700903 (= (matchR!3202 (head!5388 l!9164) s!9460) lt!873888)))

(declare-fun b!2413201 () Bool)

(assert (=> b!2413201 (= e!1536078 (= (head!5389 s!9460) (c!384445 (head!5388 l!9164))))))

(declare-fun b!2413202 () Bool)

(declare-fun res!1024919 () Bool)

(declare-fun e!1536072 () Bool)

(assert (=> b!2413202 (=> res!1024919 e!1536072)))

(assert (=> b!2413202 (= res!1024919 (not ((_ is ElementMatch!7085) (head!5388 l!9164))))))

(declare-fun e!1536076 () Bool)

(assert (=> b!2413202 (= e!1536076 e!1536072)))

(declare-fun b!2413203 () Bool)

(declare-fun res!1024921 () Bool)

(assert (=> b!2413203 (=> res!1024921 e!1536077)))

(assert (=> b!2413203 (= res!1024921 (not (isEmpty!16320 (tail!3661 s!9460))))))

(declare-fun b!2413204 () Bool)

(assert (=> b!2413204 (= e!1536075 (matchR!3202 (derivativeStep!1783 (head!5388 l!9164) (head!5389 s!9460)) (tail!3661 s!9460)))))

(declare-fun b!2413205 () Bool)

(assert (=> b!2413205 (= e!1536075 (nullable!2126 (head!5388 l!9164)))))

(declare-fun b!2413206 () Bool)

(declare-fun res!1024920 () Bool)

(assert (=> b!2413206 (=> res!1024920 e!1536072)))

(assert (=> b!2413206 (= res!1024920 e!1536078)))

(declare-fun res!1024915 () Bool)

(assert (=> b!2413206 (=> (not res!1024915) (not e!1536078))))

(assert (=> b!2413206 (= res!1024915 lt!873888)))

(declare-fun b!2413207 () Bool)

(assert (=> b!2413207 (= e!1536073 e!1536076)))

(declare-fun c!384525 () Bool)

(assert (=> b!2413207 (= c!384525 ((_ is EmptyLang!7085) (head!5388 l!9164)))))

(declare-fun b!2413208 () Bool)

(assert (=> b!2413208 (= e!1536073 (= lt!873888 call!147374))))

(declare-fun b!2413209 () Bool)

(declare-fun res!1024917 () Bool)

(assert (=> b!2413209 (=> (not res!1024917) (not e!1536078))))

(assert (=> b!2413209 (= res!1024917 (not call!147374))))

(declare-fun b!2413210 () Bool)

(assert (=> b!2413210 (= e!1536076 (not lt!873888))))

(declare-fun bm!147369 () Bool)

(assert (=> bm!147369 (= call!147374 (isEmpty!16320 s!9460))))

(declare-fun b!2413211 () Bool)

(assert (=> b!2413211 (= e!1536077 (not (= (head!5389 s!9460) (c!384445 (head!5388 l!9164)))))))

(declare-fun b!2413212 () Bool)

(assert (=> b!2413212 (= e!1536072 e!1536074)))

(declare-fun res!1024918 () Bool)

(assert (=> b!2413212 (=> (not res!1024918) (not e!1536074))))

(assert (=> b!2413212 (= res!1024918 (not lt!873888))))

(assert (= (and d!700903 c!384523) b!2413205))

(assert (= (and d!700903 (not c!384523)) b!2413204))

(assert (= (and d!700903 c!384524) b!2413208))

(assert (= (and d!700903 (not c!384524)) b!2413207))

(assert (= (and b!2413207 c!384525) b!2413210))

(assert (= (and b!2413207 (not c!384525)) b!2413202))

(assert (= (and b!2413202 (not res!1024919)) b!2413206))

(assert (= (and b!2413206 res!1024915) b!2413209))

(assert (= (and b!2413209 res!1024917) b!2413200))

(assert (= (and b!2413200 res!1024916) b!2413201))

(assert (= (and b!2413206 (not res!1024920)) b!2413212))

(assert (= (and b!2413212 res!1024918) b!2413199))

(assert (= (and b!2413199 (not res!1024922)) b!2413203))

(assert (= (and b!2413203 (not res!1024921)) b!2413211))

(assert (= (or b!2413208 b!2413199 b!2413209) bm!147369))

(assert (=> b!2413211 m!2803405))

(assert (=> b!2413201 m!2803405))

(assert (=> b!2413205 m!2803337))

(declare-fun m!2803479 () Bool)

(assert (=> b!2413205 m!2803479))

(assert (=> b!2413204 m!2803405))

(assert (=> b!2413204 m!2803337))

(assert (=> b!2413204 m!2803405))

(declare-fun m!2803481 () Bool)

(assert (=> b!2413204 m!2803481))

(assert (=> b!2413204 m!2803411))

(assert (=> b!2413204 m!2803481))

(assert (=> b!2413204 m!2803411))

(declare-fun m!2803483 () Bool)

(assert (=> b!2413204 m!2803483))

(assert (=> b!2413200 m!2803411))

(assert (=> b!2413200 m!2803411))

(assert (=> b!2413200 m!2803415))

(assert (=> b!2413203 m!2803411))

(assert (=> b!2413203 m!2803411))

(assert (=> b!2413203 m!2803415))

(assert (=> d!700903 m!2803417))

(assert (=> d!700903 m!2803337))

(declare-fun m!2803485 () Bool)

(assert (=> d!700903 m!2803485))

(assert (=> bm!147369 m!2803417))

(assert (=> b!2412911 d!700903))

(declare-fun d!700909 () Bool)

(assert (=> d!700909 (= (head!5388 l!9164) (h!33711 l!9164))))

(assert (=> b!2412911 d!700909))

(declare-fun b!2413248 () Bool)

(declare-fun e!1536089 () Bool)

(declare-fun tp!767483 () Bool)

(assert (=> b!2413248 (= e!1536089 tp!767483)))

(assert (=> b!2412910 (= tp!767445 e!1536089)))

(declare-fun b!2413246 () Bool)

(assert (=> b!2413246 (= e!1536089 tp_is_empty!11583)))

(declare-fun b!2413249 () Bool)

(declare-fun tp!767484 () Bool)

(declare-fun tp!767482 () Bool)

(assert (=> b!2413249 (= e!1536089 (and tp!767484 tp!767482))))

(declare-fun b!2413247 () Bool)

(declare-fun tp!767481 () Bool)

(declare-fun tp!767485 () Bool)

(assert (=> b!2413247 (= e!1536089 (and tp!767481 tp!767485))))

(assert (= (and b!2412910 ((_ is ElementMatch!7085) (h!33711 l!9164))) b!2413246))

(assert (= (and b!2412910 ((_ is Concat!11721) (h!33711 l!9164))) b!2413247))

(assert (= (and b!2412910 ((_ is Star!7085) (h!33711 l!9164))) b!2413248))

(assert (= (and b!2412910 ((_ is Union!7085) (h!33711 l!9164))) b!2413249))

(declare-fun b!2413267 () Bool)

(declare-fun e!1536096 () Bool)

(declare-fun tp!767506 () Bool)

(declare-fun tp!767507 () Bool)

(assert (=> b!2413267 (= e!1536096 (and tp!767506 tp!767507))))

(assert (=> b!2412910 (= tp!767440 e!1536096)))

(assert (= (and b!2412910 ((_ is Cons!28310) (t!208385 l!9164))) b!2413267))

(declare-fun b!2413270 () Bool)

(declare-fun e!1536097 () Bool)

(declare-fun tp!767510 () Bool)

(assert (=> b!2413270 (= e!1536097 tp!767510)))

(assert (=> b!2412905 (= tp!767441 e!1536097)))

(declare-fun b!2413268 () Bool)

(assert (=> b!2413268 (= e!1536097 tp_is_empty!11583)))

(declare-fun b!2413271 () Bool)

(declare-fun tp!767511 () Bool)

(declare-fun tp!767509 () Bool)

(assert (=> b!2413271 (= e!1536097 (and tp!767511 tp!767509))))

(declare-fun b!2413269 () Bool)

(declare-fun tp!767508 () Bool)

(declare-fun tp!767512 () Bool)

(assert (=> b!2413269 (= e!1536097 (and tp!767508 tp!767512))))

(assert (= (and b!2412905 ((_ is ElementMatch!7085) (reg!7414 r!13927))) b!2413268))

(assert (= (and b!2412905 ((_ is Concat!11721) (reg!7414 r!13927))) b!2413269))

(assert (= (and b!2412905 ((_ is Star!7085) (reg!7414 r!13927))) b!2413270))

(assert (= (and b!2412905 ((_ is Union!7085) (reg!7414 r!13927))) b!2413271))

(declare-fun b!2413278 () Bool)

(declare-fun e!1536099 () Bool)

(declare-fun tp!767520 () Bool)

(assert (=> b!2413278 (= e!1536099 tp!767520)))

(assert (=> b!2412914 (= tp!767443 e!1536099)))

(declare-fun b!2413276 () Bool)

(assert (=> b!2413276 (= e!1536099 tp_is_empty!11583)))

(declare-fun b!2413279 () Bool)

(declare-fun tp!767521 () Bool)

(declare-fun tp!767519 () Bool)

(assert (=> b!2413279 (= e!1536099 (and tp!767521 tp!767519))))

(declare-fun b!2413277 () Bool)

(declare-fun tp!767518 () Bool)

(declare-fun tp!767522 () Bool)

(assert (=> b!2413277 (= e!1536099 (and tp!767518 tp!767522))))

(assert (= (and b!2412914 ((_ is ElementMatch!7085) (regOne!14682 r!13927))) b!2413276))

(assert (= (and b!2412914 ((_ is Concat!11721) (regOne!14682 r!13927))) b!2413277))

(assert (= (and b!2412914 ((_ is Star!7085) (regOne!14682 r!13927))) b!2413278))

(assert (= (and b!2412914 ((_ is Union!7085) (regOne!14682 r!13927))) b!2413279))

(declare-fun b!2413286 () Bool)

(declare-fun e!1536101 () Bool)

(declare-fun tp!767530 () Bool)

(assert (=> b!2413286 (= e!1536101 tp!767530)))

(assert (=> b!2412914 (= tp!767446 e!1536101)))

(declare-fun b!2413284 () Bool)

(assert (=> b!2413284 (= e!1536101 tp_is_empty!11583)))

(declare-fun b!2413287 () Bool)

(declare-fun tp!767531 () Bool)

(declare-fun tp!767529 () Bool)

(assert (=> b!2413287 (= e!1536101 (and tp!767531 tp!767529))))

(declare-fun b!2413285 () Bool)

(declare-fun tp!767528 () Bool)

(declare-fun tp!767532 () Bool)

(assert (=> b!2413285 (= e!1536101 (and tp!767528 tp!767532))))

(assert (= (and b!2412914 ((_ is ElementMatch!7085) (regTwo!14682 r!13927))) b!2413284))

(assert (= (and b!2412914 ((_ is Concat!11721) (regTwo!14682 r!13927))) b!2413285))

(assert (= (and b!2412914 ((_ is Star!7085) (regTwo!14682 r!13927))) b!2413286))

(assert (= (and b!2412914 ((_ is Union!7085) (regTwo!14682 r!13927))) b!2413287))

(declare-fun b!2413292 () Bool)

(declare-fun e!1536104 () Bool)

(declare-fun tp!767535 () Bool)

(assert (=> b!2413292 (= e!1536104 (and tp_is_empty!11583 tp!767535))))

(assert (=> b!2412902 (= tp!767447 e!1536104)))

(assert (= (and b!2412902 ((_ is Cons!28311) (t!208386 s!9460))) b!2413292))

(declare-fun b!2413295 () Bool)

(declare-fun e!1536105 () Bool)

(declare-fun tp!767538 () Bool)

(assert (=> b!2413295 (= e!1536105 tp!767538)))

(assert (=> b!2412906 (= tp!767444 e!1536105)))

(declare-fun b!2413293 () Bool)

(assert (=> b!2413293 (= e!1536105 tp_is_empty!11583)))

(declare-fun b!2413296 () Bool)

(declare-fun tp!767539 () Bool)

(declare-fun tp!767537 () Bool)

(assert (=> b!2413296 (= e!1536105 (and tp!767539 tp!767537))))

(declare-fun b!2413294 () Bool)

(declare-fun tp!767536 () Bool)

(declare-fun tp!767540 () Bool)

(assert (=> b!2413294 (= e!1536105 (and tp!767536 tp!767540))))

(assert (= (and b!2412906 ((_ is ElementMatch!7085) (regOne!14683 r!13927))) b!2413293))

(assert (= (and b!2412906 ((_ is Concat!11721) (regOne!14683 r!13927))) b!2413294))

(assert (= (and b!2412906 ((_ is Star!7085) (regOne!14683 r!13927))) b!2413295))

(assert (= (and b!2412906 ((_ is Union!7085) (regOne!14683 r!13927))) b!2413296))

(declare-fun b!2413299 () Bool)

(declare-fun e!1536106 () Bool)

(declare-fun tp!767543 () Bool)

(assert (=> b!2413299 (= e!1536106 tp!767543)))

(assert (=> b!2412906 (= tp!767442 e!1536106)))

(declare-fun b!2413297 () Bool)

(assert (=> b!2413297 (= e!1536106 tp_is_empty!11583)))

(declare-fun b!2413300 () Bool)

(declare-fun tp!767544 () Bool)

(declare-fun tp!767542 () Bool)

(assert (=> b!2413300 (= e!1536106 (and tp!767544 tp!767542))))

(declare-fun b!2413298 () Bool)

(declare-fun tp!767541 () Bool)

(declare-fun tp!767545 () Bool)

(assert (=> b!2413298 (= e!1536106 (and tp!767541 tp!767545))))

(assert (= (and b!2412906 ((_ is ElementMatch!7085) (regTwo!14683 r!13927))) b!2413297))

(assert (= (and b!2412906 ((_ is Concat!11721) (regTwo!14683 r!13927))) b!2413298))

(assert (= (and b!2412906 ((_ is Star!7085) (regTwo!14683 r!13927))) b!2413299))

(assert (= (and b!2412906 ((_ is Union!7085) (regTwo!14683 r!13927))) b!2413300))

(declare-fun b_lambda!74529 () Bool)

(assert (= b_lambda!74523 (or start!236448 b_lambda!74529)))

(declare-fun bs!463494 () Bool)

(declare-fun d!700913 () Bool)

(assert (= bs!463494 (and d!700913 start!236448)))

(assert (=> bs!463494 (= (dynLambda!12188 lambda!90831 (h!33711 l!9164)) (validRegex!2807 (h!33711 l!9164)))))

(declare-fun m!2803489 () Bool)

(assert (=> bs!463494 m!2803489))

(assert (=> b!2412989 d!700913))

(check-sat (not b!2413285) (not b!2413178) (not b!2413058) (not d!700895) (not b!2412960) (not b!2412990) (not b!2413055) (not b!2413278) (not b!2413057) (not b!2413249) (not b!2413177) (not b!2413267) (not d!700903) (not b!2413247) (not b!2413201) (not bs!463494) (not b!2412955) (not b!2413145) (not b!2413059) (not b!2413200) (not b!2413180) (not b!2413211) (not b!2412964) (not b!2413292) (not b!2413298) (not b!2412956) (not b!2413054) (not b!2412958) (not b!2413248) (not b!2413204) (not b!2413176) (not b_lambda!74529) (not b!2413184) (not bm!147354) (not b!2413295) (not b!2413065) (not b!2413299) (not b!2413296) (not b!2413203) (not bm!147369) (not b!2413270) (not d!700891) (not bm!147364) (not b!2413182) (not b!2412957) (not b!2413271) (not b!2412962) (not d!700869) (not b!2413300) (not b!2413286) (not b!2413279) (not b!2413175) (not bm!147365) (not b!2413277) (not b!2413269) (not b!2413294) tp_is_empty!11583 (not b!2413205) (not d!700883) (not b!2413155) (not b!2413287))
(check-sat)
