; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!696926 () Bool)

(assert start!696926)

(declare-fun b!7147616 () Bool)

(assert (=> b!7147616 true))

(declare-fun e!4295141 () Bool)

(declare-datatypes ((C!36718 0))(
  ( (C!36719 (val!28307 Int)) )
))
(declare-datatypes ((Regex!18222 0))(
  ( (ElementMatch!18222 (c!1332803 C!36718)) (Concat!27067 (regOne!36956 Regex!18222) (regTwo!36956 Regex!18222)) (EmptyExpr!18222) (Star!18222 (reg!18551 Regex!18222)) (EmptyLang!18222) (Union!18222 (regOne!36957 Regex!18222) (regTwo!36957 Regex!18222)) )
))
(declare-datatypes ((List!69522 0))(
  ( (Nil!69398) (Cons!69398 (h!75846 Regex!18222) (t!383539 List!69522)) )
))
(declare-datatypes ((Context!14432 0))(
  ( (Context!14433 (exprs!7716 List!69522)) )
))
(declare-datatypes ((List!69523 0))(
  ( (Nil!69399) (Cons!69399 (h!75847 Context!14432) (t!383540 List!69523)) )
))
(declare-fun zl!333 () List!69523)

(declare-fun lambda!435903 () Int)

(declare-fun exists!4042 (List!69523 Int) Bool)

(assert (=> b!7147616 (= e!4295141 (not (exists!4042 zl!333 lambda!435903)))))

(declare-fun b!7147617 () Bool)

(declare-fun e!4295144 () Bool)

(declare-fun tp!1972555 () Bool)

(assert (=> b!7147617 (= e!4295144 tp!1972555)))

(declare-fun b!7147618 () Bool)

(declare-fun e!4295143 () Bool)

(declare-fun tp!1972557 () Bool)

(assert (=> b!7147618 (= e!4295143 tp!1972557)))

(declare-fun b!7147619 () Bool)

(declare-fun res!2915944 () Bool)

(assert (=> b!7147619 (=> (not res!2915944) (not e!4295141))))

(declare-fun r!7278 () Regex!18222)

(declare-fun generalisedConcat!2398 (List!69522) Regex!18222)

(assert (=> b!7147619 (= res!2915944 (= (generalisedConcat!2398 (exprs!7716 (h!75847 zl!333))) r!7278))))

(declare-fun b!7147620 () Bool)

(declare-fun tp!1972559 () Bool)

(declare-fun tp!1972554 () Bool)

(assert (=> b!7147620 (= e!4295143 (and tp!1972559 tp!1972554))))

(declare-fun tp!1972560 () Bool)

(declare-fun b!7147621 () Bool)

(declare-fun e!4295142 () Bool)

(declare-fun inv!88620 (Context!14432) Bool)

(assert (=> b!7147621 (= e!4295142 (and (inv!88620 (h!75847 zl!333)) e!4295144 tp!1972560))))

(declare-fun b!7147622 () Bool)

(declare-fun tp!1972556 () Bool)

(declare-fun tp!1972558 () Bool)

(assert (=> b!7147622 (= e!4295143 (and tp!1972556 tp!1972558))))

(declare-fun res!2915945 () Bool)

(assert (=> start!696926 (=> (not res!2915945) (not e!4295141))))

(declare-fun contains!20654 (List!69522 Regex!18222) Bool)

(declare-fun unfocusZipperList!2263 (List!69523) List!69522)

(assert (=> start!696926 (= res!2915945 (contains!20654 (unfocusZipperList!2263 zl!333) r!7278))))

(assert (=> start!696926 e!4295141))

(assert (=> start!696926 e!4295142))

(assert (=> start!696926 e!4295143))

(declare-fun b!7147623 () Bool)

(declare-fun res!2915946 () Bool)

(assert (=> b!7147623 (=> (not res!2915946) (not e!4295141))))

(assert (=> b!7147623 (= res!2915946 (is-Cons!69399 zl!333))))

(declare-fun b!7147624 () Bool)

(declare-fun tp_is_empty!46081 () Bool)

(assert (=> b!7147624 (= e!4295143 tp_is_empty!46081)))

(assert (= (and start!696926 res!2915945) b!7147623))

(assert (= (and b!7147623 res!2915946) b!7147619))

(assert (= (and b!7147619 res!2915944) b!7147616))

(assert (= b!7147621 b!7147617))

(assert (= (and start!696926 (is-Cons!69399 zl!333)) b!7147621))

(assert (= (and start!696926 (is-ElementMatch!18222 r!7278)) b!7147624))

(assert (= (and start!696926 (is-Concat!27067 r!7278)) b!7147622))

(assert (= (and start!696926 (is-Star!18222 r!7278)) b!7147618))

(assert (= (and start!696926 (is-Union!18222 r!7278)) b!7147620))

(declare-fun m!7859978 () Bool)

(assert (=> b!7147616 m!7859978))

(declare-fun m!7859980 () Bool)

(assert (=> b!7147619 m!7859980))

(declare-fun m!7859982 () Bool)

(assert (=> b!7147621 m!7859982))

(declare-fun m!7859984 () Bool)

(assert (=> start!696926 m!7859984))

(assert (=> start!696926 m!7859984))

(declare-fun m!7859986 () Bool)

(assert (=> start!696926 m!7859986))

(push 1)

(assert (not b!7147619))

(assert (not b!7147620))

(assert (not b!7147621))

(assert (not b!7147618))

(assert tp_is_empty!46081)

(assert (not b!7147617))

(assert (not start!696926))

(assert (not b!7147616))

(assert (not b!7147622))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2228374 () Bool)

(declare-fun lambda!435909 () Int)

(declare-fun forall!17060 (List!69522 Int) Bool)

(assert (=> d!2228374 (= (inv!88620 (h!75847 zl!333)) (forall!17060 (exprs!7716 (h!75847 zl!333)) lambda!435909))))

(declare-fun bs!1889337 () Bool)

(assert (= bs!1889337 d!2228374))

(declare-fun m!7859998 () Bool)

(assert (=> bs!1889337 m!7859998))

(assert (=> b!7147621 d!2228374))

(declare-fun bs!1889338 () Bool)

(declare-fun d!2228376 () Bool)

(assert (= bs!1889338 (and d!2228376 b!7147616)))

(declare-fun lambda!435912 () Int)

(assert (=> bs!1889338 (not (= lambda!435912 lambda!435903))))

(assert (=> d!2228376 true))

(declare-fun order!28615 () Int)

(declare-fun dynLambda!28266 (Int Int) Int)

(assert (=> d!2228376 (< (dynLambda!28266 order!28615 lambda!435903) (dynLambda!28266 order!28615 lambda!435912))))

(declare-fun forall!17061 (List!69523 Int) Bool)

(assert (=> d!2228376 (= (exists!4042 zl!333 lambda!435903) (not (forall!17061 zl!333 lambda!435912)))))

(declare-fun bs!1889339 () Bool)

(assert (= bs!1889339 d!2228376))

(declare-fun m!7860000 () Bool)

(assert (=> bs!1889339 m!7860000))

(assert (=> b!7147616 d!2228376))

(declare-fun d!2228378 () Bool)

(declare-fun lt!2568983 () Bool)

(declare-fun content!14243 (List!69522) (Set Regex!18222))

(assert (=> d!2228378 (= lt!2568983 (set.member r!7278 (content!14243 (unfocusZipperList!2263 zl!333))))))

(declare-fun e!4295161 () Bool)

(assert (=> d!2228378 (= lt!2568983 e!4295161)))

(declare-fun res!2915960 () Bool)

(assert (=> d!2228378 (=> (not res!2915960) (not e!4295161))))

(assert (=> d!2228378 (= res!2915960 (is-Cons!69398 (unfocusZipperList!2263 zl!333)))))

(assert (=> d!2228378 (= (contains!20654 (unfocusZipperList!2263 zl!333) r!7278) lt!2568983)))

(declare-fun b!7147662 () Bool)

(declare-fun e!4295162 () Bool)

(assert (=> b!7147662 (= e!4295161 e!4295162)))

(declare-fun res!2915961 () Bool)

(assert (=> b!7147662 (=> res!2915961 e!4295162)))

(assert (=> b!7147662 (= res!2915961 (= (h!75846 (unfocusZipperList!2263 zl!333)) r!7278))))

(declare-fun b!7147663 () Bool)

(assert (=> b!7147663 (= e!4295162 (contains!20654 (t!383539 (unfocusZipperList!2263 zl!333)) r!7278))))

(assert (= (and d!2228378 res!2915960) b!7147662))

(assert (= (and b!7147662 (not res!2915961)) b!7147663))

(assert (=> d!2228378 m!7859984))

(declare-fun m!7860002 () Bool)

(assert (=> d!2228378 m!7860002))

(declare-fun m!7860004 () Bool)

(assert (=> d!2228378 m!7860004))

(declare-fun m!7860006 () Bool)

(assert (=> b!7147663 m!7860006))

(assert (=> start!696926 d!2228378))

(declare-fun bs!1889340 () Bool)

(declare-fun d!2228382 () Bool)

(assert (= bs!1889340 (and d!2228382 d!2228374)))

(declare-fun lambda!435915 () Int)

(assert (=> bs!1889340 (= lambda!435915 lambda!435909)))

(declare-fun lt!2568988 () List!69522)

(assert (=> d!2228382 (forall!17060 lt!2568988 lambda!435915)))

(declare-fun e!4295169 () List!69522)

(assert (=> d!2228382 (= lt!2568988 e!4295169)))

(declare-fun c!1332809 () Bool)

(assert (=> d!2228382 (= c!1332809 (is-Cons!69399 zl!333))))

(assert (=> d!2228382 (= (unfocusZipperList!2263 zl!333) lt!2568988)))

(declare-fun b!7147672 () Bool)

(assert (=> b!7147672 (= e!4295169 (Cons!69398 (generalisedConcat!2398 (exprs!7716 (h!75847 zl!333))) (unfocusZipperList!2263 (t!383540 zl!333))))))

(declare-fun b!7147673 () Bool)

(assert (=> b!7147673 (= e!4295169 Nil!69398)))

(assert (= (and d!2228382 c!1332809) b!7147672))

(assert (= (and d!2228382 (not c!1332809)) b!7147673))

(declare-fun m!7860008 () Bool)

(assert (=> d!2228382 m!7860008))

(assert (=> b!7147672 m!7859980))

(declare-fun m!7860010 () Bool)

(assert (=> b!7147672 m!7860010))

(assert (=> start!696926 d!2228382))

(declare-fun bs!1889341 () Bool)

(declare-fun d!2228384 () Bool)

(assert (= bs!1889341 (and d!2228384 d!2228374)))

(declare-fun lambda!435920 () Int)

(assert (=> bs!1889341 (= lambda!435920 lambda!435909)))

(declare-fun bs!1889342 () Bool)

(assert (= bs!1889342 (and d!2228384 d!2228382)))

(assert (=> bs!1889342 (= lambda!435920 lambda!435915)))

(declare-fun b!7147700 () Bool)

(declare-fun e!4295190 () Regex!18222)

(assert (=> b!7147700 (= e!4295190 EmptyExpr!18222)))

(declare-fun b!7147701 () Bool)

(declare-fun e!4295191 () Bool)

(declare-fun isEmpty!40094 (List!69522) Bool)

(assert (=> b!7147701 (= e!4295191 (isEmpty!40094 (t!383539 (exprs!7716 (h!75847 zl!333)))))))

(declare-fun b!7147702 () Bool)

(declare-fun e!4295188 () Regex!18222)

(assert (=> b!7147702 (= e!4295188 (h!75846 (exprs!7716 (h!75847 zl!333))))))

(declare-fun b!7147703 () Bool)

(declare-fun e!4295186 () Bool)

(declare-fun e!4295187 () Bool)

(assert (=> b!7147703 (= e!4295186 e!4295187)))

(declare-fun c!1332821 () Bool)

(declare-fun tail!14005 (List!69522) List!69522)

(assert (=> b!7147703 (= c!1332821 (isEmpty!40094 (tail!14005 (exprs!7716 (h!75847 zl!333)))))))

(declare-fun e!4295189 () Bool)

(assert (=> d!2228384 e!4295189))

(declare-fun res!2915973 () Bool)

(assert (=> d!2228384 (=> (not res!2915973) (not e!4295189))))

(declare-fun lt!2568994 () Regex!18222)

(declare-fun validRegex!9384 (Regex!18222) Bool)

(assert (=> d!2228384 (= res!2915973 (validRegex!9384 lt!2568994))))

(assert (=> d!2228384 (= lt!2568994 e!4295188)))

(declare-fun c!1332822 () Bool)

(assert (=> d!2228384 (= c!1332822 e!4295191)))

(declare-fun res!2915972 () Bool)

(assert (=> d!2228384 (=> (not res!2915972) (not e!4295191))))

(assert (=> d!2228384 (= res!2915972 (is-Cons!69398 (exprs!7716 (h!75847 zl!333))))))

(assert (=> d!2228384 (forall!17060 (exprs!7716 (h!75847 zl!333)) lambda!435920)))

(assert (=> d!2228384 (= (generalisedConcat!2398 (exprs!7716 (h!75847 zl!333))) lt!2568994)))

(declare-fun b!7147704 () Bool)

(declare-fun isConcat!1578 (Regex!18222) Bool)

(assert (=> b!7147704 (= e!4295187 (isConcat!1578 lt!2568994))))

(declare-fun b!7147705 () Bool)

(declare-fun isEmptyExpr!2055 (Regex!18222) Bool)

(assert (=> b!7147705 (= e!4295186 (isEmptyExpr!2055 lt!2568994))))

(declare-fun b!7147706 () Bool)

(assert (=> b!7147706 (= e!4295188 e!4295190)))

(declare-fun c!1332823 () Bool)

(assert (=> b!7147706 (= c!1332823 (is-Cons!69398 (exprs!7716 (h!75847 zl!333))))))

(declare-fun b!7147707 () Bool)

(assert (=> b!7147707 (= e!4295189 e!4295186)))

(declare-fun c!1332820 () Bool)

(assert (=> b!7147707 (= c!1332820 (isEmpty!40094 (exprs!7716 (h!75847 zl!333))))))

(declare-fun b!7147708 () Bool)

(declare-fun head!14535 (List!69522) Regex!18222)

(assert (=> b!7147708 (= e!4295187 (= lt!2568994 (head!14535 (exprs!7716 (h!75847 zl!333)))))))

(declare-fun b!7147709 () Bool)

(assert (=> b!7147709 (= e!4295190 (Concat!27067 (h!75846 (exprs!7716 (h!75847 zl!333))) (generalisedConcat!2398 (t!383539 (exprs!7716 (h!75847 zl!333))))))))

(assert (= (and d!2228384 res!2915972) b!7147701))

(assert (= (and d!2228384 c!1332822) b!7147702))

(assert (= (and d!2228384 (not c!1332822)) b!7147706))

(assert (= (and b!7147706 c!1332823) b!7147709))

(assert (= (and b!7147706 (not c!1332823)) b!7147700))

(assert (= (and d!2228384 res!2915973) b!7147707))

(assert (= (and b!7147707 c!1332820) b!7147705))

(assert (= (and b!7147707 (not c!1332820)) b!7147703))

(assert (= (and b!7147703 c!1332821) b!7147708))

(assert (= (and b!7147703 (not c!1332821)) b!7147704))

(declare-fun m!7860018 () Bool)

(assert (=> b!7147701 m!7860018))

(declare-fun m!7860020 () Bool)

(assert (=> b!7147705 m!7860020))

(declare-fun m!7860022 () Bool)

(assert (=> b!7147709 m!7860022))

(declare-fun m!7860024 () Bool)

(assert (=> b!7147704 m!7860024))

(declare-fun m!7860026 () Bool)

(assert (=> b!7147703 m!7860026))

(assert (=> b!7147703 m!7860026))

(declare-fun m!7860028 () Bool)

(assert (=> b!7147703 m!7860028))

(declare-fun m!7860030 () Bool)

(assert (=> d!2228384 m!7860030))

(declare-fun m!7860032 () Bool)

(assert (=> d!2228384 m!7860032))

(declare-fun m!7860034 () Bool)

(assert (=> b!7147707 m!7860034))

(declare-fun m!7860036 () Bool)

(assert (=> b!7147708 m!7860036))

(assert (=> b!7147619 d!2228384))

(declare-fun b!7147723 () Bool)

(declare-fun e!4295194 () Bool)

(declare-fun tp!1972594 () Bool)

(declare-fun tp!1972595 () Bool)

(assert (=> b!7147723 (= e!4295194 (and tp!1972594 tp!1972595))))

(assert (=> b!7147622 (= tp!1972556 e!4295194)))

(declare-fun b!7147720 () Bool)

(assert (=> b!7147720 (= e!4295194 tp_is_empty!46081)))

(declare-fun b!7147721 () Bool)

(declare-fun tp!1972596 () Bool)

(declare-fun tp!1972593 () Bool)

(assert (=> b!7147721 (= e!4295194 (and tp!1972596 tp!1972593))))

(declare-fun b!7147722 () Bool)

(declare-fun tp!1972592 () Bool)

(assert (=> b!7147722 (= e!4295194 tp!1972592)))

(assert (= (and b!7147622 (is-ElementMatch!18222 (regOne!36956 r!7278))) b!7147720))

(assert (= (and b!7147622 (is-Concat!27067 (regOne!36956 r!7278))) b!7147721))

(assert (= (and b!7147622 (is-Star!18222 (regOne!36956 r!7278))) b!7147722))

(assert (= (and b!7147622 (is-Union!18222 (regOne!36956 r!7278))) b!7147723))

(declare-fun b!7147727 () Bool)

(declare-fun e!4295195 () Bool)

(declare-fun tp!1972599 () Bool)

(declare-fun tp!1972600 () Bool)

(assert (=> b!7147727 (= e!4295195 (and tp!1972599 tp!1972600))))

(assert (=> b!7147622 (= tp!1972558 e!4295195)))

(declare-fun b!7147724 () Bool)

(assert (=> b!7147724 (= e!4295195 tp_is_empty!46081)))

(declare-fun b!7147725 () Bool)

(declare-fun tp!1972601 () Bool)

(declare-fun tp!1972598 () Bool)

(assert (=> b!7147725 (= e!4295195 (and tp!1972601 tp!1972598))))

(declare-fun b!7147726 () Bool)

(declare-fun tp!1972597 () Bool)

(assert (=> b!7147726 (= e!4295195 tp!1972597)))

(assert (= (and b!7147622 (is-ElementMatch!18222 (regTwo!36956 r!7278))) b!7147724))

(assert (= (and b!7147622 (is-Concat!27067 (regTwo!36956 r!7278))) b!7147725))

(assert (= (and b!7147622 (is-Star!18222 (regTwo!36956 r!7278))) b!7147726))

(assert (= (and b!7147622 (is-Union!18222 (regTwo!36956 r!7278))) b!7147727))

(declare-fun b!7147734 () Bool)

(declare-fun e!4295199 () Bool)

(declare-fun tp!1972606 () Bool)

(declare-fun tp!1972607 () Bool)

(assert (=> b!7147734 (= e!4295199 (and tp!1972606 tp!1972607))))

(assert (=> b!7147617 (= tp!1972555 e!4295199)))

(assert (= (and b!7147617 (is-Cons!69398 (exprs!7716 (h!75847 zl!333)))) b!7147734))

(declare-fun b!7147742 () Bool)

(declare-fun e!4295205 () Bool)

(declare-fun tp!1972612 () Bool)

(assert (=> b!7147742 (= e!4295205 tp!1972612)))

(declare-fun tp!1972613 () Bool)

(declare-fun b!7147741 () Bool)

(declare-fun e!4295204 () Bool)

(assert (=> b!7147741 (= e!4295204 (and (inv!88620 (h!75847 (t!383540 zl!333))) e!4295205 tp!1972613))))

(assert (=> b!7147621 (= tp!1972560 e!4295204)))

(assert (= b!7147741 b!7147742))

(assert (= (and b!7147621 (is-Cons!69399 (t!383540 zl!333))) b!7147741))

(declare-fun m!7860042 () Bool)

(assert (=> b!7147741 m!7860042))

(declare-fun b!7147746 () Bool)

(declare-fun e!4295206 () Bool)

(declare-fun tp!1972616 () Bool)

(declare-fun tp!1972617 () Bool)

(assert (=> b!7147746 (= e!4295206 (and tp!1972616 tp!1972617))))

(assert (=> b!7147620 (= tp!1972559 e!4295206)))

(declare-fun b!7147743 () Bool)

(assert (=> b!7147743 (= e!4295206 tp_is_empty!46081)))

(declare-fun b!7147744 () Bool)

(declare-fun tp!1972618 () Bool)

(declare-fun tp!1972615 () Bool)

(assert (=> b!7147744 (= e!4295206 (and tp!1972618 tp!1972615))))

(declare-fun b!7147745 () Bool)

(declare-fun tp!1972614 () Bool)

(assert (=> b!7147745 (= e!4295206 tp!1972614)))

(assert (= (and b!7147620 (is-ElementMatch!18222 (regOne!36957 r!7278))) b!7147743))

(assert (= (and b!7147620 (is-Concat!27067 (regOne!36957 r!7278))) b!7147744))

(assert (= (and b!7147620 (is-Star!18222 (regOne!36957 r!7278))) b!7147745))

(assert (= (and b!7147620 (is-Union!18222 (regOne!36957 r!7278))) b!7147746))

(declare-fun b!7147750 () Bool)

(declare-fun e!4295207 () Bool)

(declare-fun tp!1972621 () Bool)

(declare-fun tp!1972622 () Bool)

(assert (=> b!7147750 (= e!4295207 (and tp!1972621 tp!1972622))))

(assert (=> b!7147620 (= tp!1972554 e!4295207)))

(declare-fun b!7147747 () Bool)

(assert (=> b!7147747 (= e!4295207 tp_is_empty!46081)))

(declare-fun b!7147748 () Bool)

(declare-fun tp!1972623 () Bool)

(declare-fun tp!1972620 () Bool)

(assert (=> b!7147748 (= e!4295207 (and tp!1972623 tp!1972620))))

(declare-fun b!7147749 () Bool)

(declare-fun tp!1972619 () Bool)

(assert (=> b!7147749 (= e!4295207 tp!1972619)))

(assert (= (and b!7147620 (is-ElementMatch!18222 (regTwo!36957 r!7278))) b!7147747))

(assert (= (and b!7147620 (is-Concat!27067 (regTwo!36957 r!7278))) b!7147748))

(assert (= (and b!7147620 (is-Star!18222 (regTwo!36957 r!7278))) b!7147749))

(assert (= (and b!7147620 (is-Union!18222 (regTwo!36957 r!7278))) b!7147750))

(declare-fun b!7147754 () Bool)

(declare-fun e!4295208 () Bool)

(declare-fun tp!1972626 () Bool)

(declare-fun tp!1972627 () Bool)

(assert (=> b!7147754 (= e!4295208 (and tp!1972626 tp!1972627))))

(assert (=> b!7147618 (= tp!1972557 e!4295208)))

(declare-fun b!7147751 () Bool)

(assert (=> b!7147751 (= e!4295208 tp_is_empty!46081)))

(declare-fun b!7147752 () Bool)

(declare-fun tp!1972628 () Bool)

(declare-fun tp!1972625 () Bool)

(assert (=> b!7147752 (= e!4295208 (and tp!1972628 tp!1972625))))

(declare-fun b!7147753 () Bool)

(declare-fun tp!1972624 () Bool)

(assert (=> b!7147753 (= e!4295208 tp!1972624)))

(assert (= (and b!7147618 (is-ElementMatch!18222 (reg!18551 r!7278))) b!7147751))

(assert (= (and b!7147618 (is-Concat!27067 (reg!18551 r!7278))) b!7147752))

(assert (= (and b!7147618 (is-Star!18222 (reg!18551 r!7278))) b!7147753))

(assert (= (and b!7147618 (is-Union!18222 (reg!18551 r!7278))) b!7147754))

(push 1)

(assert (not d!2228378))

(assert (not b!7147725))

(assert (not d!2228384))

(assert (not b!7147707))

(assert (not b!7147703))

(assert (not d!2228374))

(assert (not b!7147754))

(assert (not b!7147749))

(assert (not b!7147723))

(assert (not b!7147745))

(assert (not b!7147672))

(assert (not b!7147721))

(assert (not b!7147705))

(assert (not b!7147722))

(assert (not b!7147741))

(assert (not b!7147708))

(assert (not b!7147701))

(assert (not b!7147753))

(assert (not b!7147734))

(assert (not b!7147663))

(assert (not b!7147746))

(assert (not b!7147726))

(assert (not b!7147752))

(assert (not b!7147744))

(assert (not d!2228376))

(assert (not b!7147750))

(assert tp_is_empty!46081)

(assert (not b!7147727))

(assert (not b!7147748))

(assert (not b!7147709))

(assert (not b!7147742))

(assert (not d!2228382))

(assert (not b!7147704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2228394 () Bool)

(assert (=> d!2228394 (= (isEmptyExpr!2055 lt!2568994) (is-EmptyExpr!18222 lt!2568994))))

(assert (=> b!7147705 d!2228394))

(assert (=> b!7147672 d!2228384))

(declare-fun bs!1889349 () Bool)

(declare-fun d!2228396 () Bool)

(assert (= bs!1889349 (and d!2228396 d!2228374)))

(declare-fun lambda!435931 () Int)

(assert (=> bs!1889349 (= lambda!435931 lambda!435909)))

(declare-fun bs!1889350 () Bool)

(assert (= bs!1889350 (and d!2228396 d!2228382)))

(assert (=> bs!1889350 (= lambda!435931 lambda!435915)))

(declare-fun bs!1889351 () Bool)

(assert (= bs!1889351 (and d!2228396 d!2228384)))

(assert (=> bs!1889351 (= lambda!435931 lambda!435920)))

(declare-fun lt!2568999 () List!69522)

(assert (=> d!2228396 (forall!17060 lt!2568999 lambda!435931)))

(declare-fun e!4295243 () List!69522)

(assert (=> d!2228396 (= lt!2568999 e!4295243)))

(declare-fun c!1332837 () Bool)

(assert (=> d!2228396 (= c!1332837 (is-Cons!69399 (t!383540 zl!333)))))

(assert (=> d!2228396 (= (unfocusZipperList!2263 (t!383540 zl!333)) lt!2568999)))

(declare-fun b!7147830 () Bool)

(assert (=> b!7147830 (= e!4295243 (Cons!69398 (generalisedConcat!2398 (exprs!7716 (h!75847 (t!383540 zl!333)))) (unfocusZipperList!2263 (t!383540 (t!383540 zl!333)))))))

(declare-fun b!7147831 () Bool)

(assert (=> b!7147831 (= e!4295243 Nil!69398)))

(assert (= (and d!2228396 c!1332837) b!7147830))

(assert (= (and d!2228396 (not c!1332837)) b!7147831))

(declare-fun m!7860070 () Bool)

(assert (=> d!2228396 m!7860070))

(declare-fun m!7860072 () Bool)

(assert (=> b!7147830 m!7860072))

(declare-fun m!7860074 () Bool)

(assert (=> b!7147830 m!7860074))

(assert (=> b!7147672 d!2228396))

(declare-fun d!2228398 () Bool)

(assert (=> d!2228398 (= (isEmpty!40094 (tail!14005 (exprs!7716 (h!75847 zl!333)))) (is-Nil!69398 (tail!14005 (exprs!7716 (h!75847 zl!333)))))))

(assert (=> b!7147703 d!2228398))

(declare-fun d!2228400 () Bool)

(assert (=> d!2228400 (= (tail!14005 (exprs!7716 (h!75847 zl!333))) (t!383539 (exprs!7716 (h!75847 zl!333))))))

(assert (=> b!7147703 d!2228400))

(declare-fun bs!1889352 () Bool)

(declare-fun d!2228402 () Bool)

(assert (= bs!1889352 (and d!2228402 d!2228374)))

(declare-fun lambda!435932 () Int)

(assert (=> bs!1889352 (= lambda!435932 lambda!435909)))

(declare-fun bs!1889353 () Bool)

(assert (= bs!1889353 (and d!2228402 d!2228382)))

(assert (=> bs!1889353 (= lambda!435932 lambda!435915)))

(declare-fun bs!1889354 () Bool)

(assert (= bs!1889354 (and d!2228402 d!2228384)))

(assert (=> bs!1889354 (= lambda!435932 lambda!435920)))

(declare-fun bs!1889355 () Bool)

(assert (= bs!1889355 (and d!2228402 d!2228396)))

(assert (=> bs!1889355 (= lambda!435932 lambda!435931)))

(assert (=> d!2228402 (= (inv!88620 (h!75847 (t!383540 zl!333))) (forall!17060 (exprs!7716 (h!75847 (t!383540 zl!333))) lambda!435932))))

(declare-fun bs!1889356 () Bool)

(assert (= bs!1889356 d!2228402))

(declare-fun m!7860076 () Bool)

(assert (=> bs!1889356 m!7860076))

(assert (=> b!7147741 d!2228402))

(declare-fun b!7147850 () Bool)

(declare-fun e!4295262 () Bool)

(declare-fun call!651437 () Bool)

(assert (=> b!7147850 (= e!4295262 call!651437)))

(declare-fun bm!651432 () Bool)

(declare-fun call!651438 () Bool)

(declare-fun call!651439 () Bool)

(assert (=> bm!651432 (= call!651438 call!651439)))

(declare-fun d!2228404 () Bool)

(declare-fun res!2915991 () Bool)

(declare-fun e!4295260 () Bool)

(assert (=> d!2228404 (=> res!2915991 e!4295260)))

(assert (=> d!2228404 (= res!2915991 (is-ElementMatch!18222 lt!2568994))))

(assert (=> d!2228404 (= (validRegex!9384 lt!2568994) e!4295260)))

(declare-fun b!7147851 () Bool)

(declare-fun e!4295263 () Bool)

(declare-fun e!4295258 () Bool)

(assert (=> b!7147851 (= e!4295263 e!4295258)))

(declare-fun res!2915990 () Bool)

(declare-fun nullable!7725 (Regex!18222) Bool)

(assert (=> b!7147851 (= res!2915990 (not (nullable!7725 (reg!18551 lt!2568994))))))

(assert (=> b!7147851 (=> (not res!2915990) (not e!4295258))))

(declare-fun b!7147852 () Bool)

(assert (=> b!7147852 (= e!4295260 e!4295263)))

(declare-fun c!1332842 () Bool)

(assert (=> b!7147852 (= c!1332842 (is-Star!18222 lt!2568994))))

(declare-fun b!7147853 () Bool)

(assert (=> b!7147853 (= e!4295258 call!651439)))

(declare-fun bm!651433 () Bool)

(declare-fun c!1332843 () Bool)

(assert (=> bm!651433 (= call!651437 (validRegex!9384 (ite c!1332843 (regTwo!36957 lt!2568994) (regTwo!36956 lt!2568994))))))

(declare-fun b!7147854 () Bool)

(declare-fun res!2915993 () Bool)

(assert (=> b!7147854 (=> (not res!2915993) (not e!4295262))))

(assert (=> b!7147854 (= res!2915993 call!651438)))

(declare-fun e!4295259 () Bool)

(assert (=> b!7147854 (= e!4295259 e!4295262)))

(declare-fun bm!651434 () Bool)

(assert (=> bm!651434 (= call!651439 (validRegex!9384 (ite c!1332842 (reg!18551 lt!2568994) (ite c!1332843 (regOne!36957 lt!2568994) (regOne!36956 lt!2568994)))))))

(declare-fun b!7147855 () Bool)

(assert (=> b!7147855 (= e!4295263 e!4295259)))

(assert (=> b!7147855 (= c!1332843 (is-Union!18222 lt!2568994))))

(declare-fun b!7147856 () Bool)

(declare-fun e!4295261 () Bool)

(declare-fun e!4295264 () Bool)

(assert (=> b!7147856 (= e!4295261 e!4295264)))

(declare-fun res!2915994 () Bool)

(assert (=> b!7147856 (=> (not res!2915994) (not e!4295264))))

(assert (=> b!7147856 (= res!2915994 call!651438)))

(declare-fun b!7147857 () Bool)

(assert (=> b!7147857 (= e!4295264 call!651437)))

(declare-fun b!7147858 () Bool)

(declare-fun res!2915992 () Bool)

(assert (=> b!7147858 (=> res!2915992 e!4295261)))

(assert (=> b!7147858 (= res!2915992 (not (is-Concat!27067 lt!2568994)))))

(assert (=> b!7147858 (= e!4295259 e!4295261)))

(assert (= (and d!2228404 (not res!2915991)) b!7147852))

(assert (= (and b!7147852 c!1332842) b!7147851))

(assert (= (and b!7147852 (not c!1332842)) b!7147855))

(assert (= (and b!7147851 res!2915990) b!7147853))

(assert (= (and b!7147855 c!1332843) b!7147854))

(assert (= (and b!7147855 (not c!1332843)) b!7147858))

(assert (= (and b!7147854 res!2915993) b!7147850))

(assert (= (and b!7147858 (not res!2915992)) b!7147856))

(assert (= (and b!7147856 res!2915994) b!7147857))

(assert (= (or b!7147850 b!7147857) bm!651433))

(assert (= (or b!7147854 b!7147856) bm!651432))

(assert (= (or b!7147853 bm!651432) bm!651434))

(declare-fun m!7860078 () Bool)

(assert (=> b!7147851 m!7860078))

(declare-fun m!7860080 () Bool)

(assert (=> bm!651433 m!7860080))

(declare-fun m!7860082 () Bool)

(assert (=> bm!651434 m!7860082))

(assert (=> d!2228384 d!2228404))

(declare-fun d!2228406 () Bool)

(declare-fun res!2915999 () Bool)

(declare-fun e!4295269 () Bool)

(assert (=> d!2228406 (=> res!2915999 e!4295269)))

(assert (=> d!2228406 (= res!2915999 (is-Nil!69398 (exprs!7716 (h!75847 zl!333))))))

(assert (=> d!2228406 (= (forall!17060 (exprs!7716 (h!75847 zl!333)) lambda!435920) e!4295269)))

(declare-fun b!7147863 () Bool)

(declare-fun e!4295270 () Bool)

(assert (=> b!7147863 (= e!4295269 e!4295270)))

(declare-fun res!2916000 () Bool)

(assert (=> b!7147863 (=> (not res!2916000) (not e!4295270))))

(declare-fun dynLambda!28268 (Int Regex!18222) Bool)

(assert (=> b!7147863 (= res!2916000 (dynLambda!28268 lambda!435920 (h!75846 (exprs!7716 (h!75847 zl!333)))))))

(declare-fun b!7147864 () Bool)

(assert (=> b!7147864 (= e!4295270 (forall!17060 (t!383539 (exprs!7716 (h!75847 zl!333))) lambda!435920))))

(assert (= (and d!2228406 (not res!2915999)) b!7147863))

(assert (= (and b!7147863 res!2916000) b!7147864))

(declare-fun b_lambda!272821 () Bool)

(assert (=> (not b_lambda!272821) (not b!7147863)))

(declare-fun m!7860084 () Bool)

(assert (=> b!7147863 m!7860084))

(declare-fun m!7860086 () Bool)

(assert (=> b!7147864 m!7860086))

(assert (=> d!2228384 d!2228406))

(declare-fun d!2228408 () Bool)

(declare-fun c!1332846 () Bool)

(assert (=> d!2228408 (= c!1332846 (is-Nil!69398 (unfocusZipperList!2263 zl!333)))))

(declare-fun e!4295273 () (Set Regex!18222))

(assert (=> d!2228408 (= (content!14243 (unfocusZipperList!2263 zl!333)) e!4295273)))

(declare-fun b!7147869 () Bool)

(assert (=> b!7147869 (= e!4295273 (as set.empty (Set Regex!18222)))))

(declare-fun b!7147870 () Bool)

(assert (=> b!7147870 (= e!4295273 (set.union (set.insert (h!75846 (unfocusZipperList!2263 zl!333)) (as set.empty (Set Regex!18222))) (content!14243 (t!383539 (unfocusZipperList!2263 zl!333)))))))

(assert (= (and d!2228408 c!1332846) b!7147869))

(assert (= (and d!2228408 (not c!1332846)) b!7147870))

(declare-fun m!7860088 () Bool)

(assert (=> b!7147870 m!7860088))

(declare-fun m!7860090 () Bool)

(assert (=> b!7147870 m!7860090))

(assert (=> d!2228378 d!2228408))

(declare-fun d!2228410 () Bool)

(assert (=> d!2228410 (= (isConcat!1578 lt!2568994) (is-Concat!27067 lt!2568994))))

(assert (=> b!7147704 d!2228410))

(declare-fun d!2228412 () Bool)

(declare-fun lt!2569000 () Bool)

(assert (=> d!2228412 (= lt!2569000 (set.member r!7278 (content!14243 (t!383539 (unfocusZipperList!2263 zl!333)))))))

(declare-fun e!4295274 () Bool)

(assert (=> d!2228412 (= lt!2569000 e!4295274)))

(declare-fun res!2916001 () Bool)

(assert (=> d!2228412 (=> (not res!2916001) (not e!4295274))))

(assert (=> d!2228412 (= res!2916001 (is-Cons!69398 (t!383539 (unfocusZipperList!2263 zl!333))))))

(assert (=> d!2228412 (= (contains!20654 (t!383539 (unfocusZipperList!2263 zl!333)) r!7278) lt!2569000)))

(declare-fun b!7147871 () Bool)

(declare-fun e!4295275 () Bool)

(assert (=> b!7147871 (= e!4295274 e!4295275)))

(declare-fun res!2916002 () Bool)

(assert (=> b!7147871 (=> res!2916002 e!4295275)))

(assert (=> b!7147871 (= res!2916002 (= (h!75846 (t!383539 (unfocusZipperList!2263 zl!333))) r!7278))))

(declare-fun b!7147872 () Bool)

(assert (=> b!7147872 (= e!4295275 (contains!20654 (t!383539 (t!383539 (unfocusZipperList!2263 zl!333))) r!7278))))

(assert (= (and d!2228412 res!2916001) b!7147871))

(assert (= (and b!7147871 (not res!2916002)) b!7147872))

(assert (=> d!2228412 m!7860090))

(declare-fun m!7860092 () Bool)

(assert (=> d!2228412 m!7860092))

(declare-fun m!7860094 () Bool)

(assert (=> b!7147872 m!7860094))

(assert (=> b!7147663 d!2228412))

(declare-fun d!2228414 () Bool)

(assert (=> d!2228414 (= (isEmpty!40094 (t!383539 (exprs!7716 (h!75847 zl!333)))) (is-Nil!69398 (t!383539 (exprs!7716 (h!75847 zl!333)))))))

(assert (=> b!7147701 d!2228414))

(declare-fun d!2228416 () Bool)

(declare-fun res!2916003 () Bool)

(declare-fun e!4295276 () Bool)

(assert (=> d!2228416 (=> res!2916003 e!4295276)))

(assert (=> d!2228416 (= res!2916003 (is-Nil!69398 (exprs!7716 (h!75847 zl!333))))))

(assert (=> d!2228416 (= (forall!17060 (exprs!7716 (h!75847 zl!333)) lambda!435909) e!4295276)))

(declare-fun b!7147873 () Bool)

(declare-fun e!4295277 () Bool)

(assert (=> b!7147873 (= e!4295276 e!4295277)))

(declare-fun res!2916004 () Bool)

(assert (=> b!7147873 (=> (not res!2916004) (not e!4295277))))

(assert (=> b!7147873 (= res!2916004 (dynLambda!28268 lambda!435909 (h!75846 (exprs!7716 (h!75847 zl!333)))))))

(declare-fun b!7147874 () Bool)

(assert (=> b!7147874 (= e!4295277 (forall!17060 (t!383539 (exprs!7716 (h!75847 zl!333))) lambda!435909))))

(assert (= (and d!2228416 (not res!2916003)) b!7147873))

(assert (= (and b!7147873 res!2916004) b!7147874))

(declare-fun b_lambda!272823 () Bool)

(assert (=> (not b_lambda!272823) (not b!7147873)))

(declare-fun m!7860096 () Bool)

(assert (=> b!7147873 m!7860096))

(declare-fun m!7860098 () Bool)

(assert (=> b!7147874 m!7860098))

(assert (=> d!2228374 d!2228416))

(declare-fun d!2228418 () Bool)

(declare-fun res!2916005 () Bool)

(declare-fun e!4295278 () Bool)

(assert (=> d!2228418 (=> res!2916005 e!4295278)))

(assert (=> d!2228418 (= res!2916005 (is-Nil!69398 lt!2568988))))

(assert (=> d!2228418 (= (forall!17060 lt!2568988 lambda!435915) e!4295278)))

(declare-fun b!7147875 () Bool)

(declare-fun e!4295279 () Bool)

(assert (=> b!7147875 (= e!4295278 e!4295279)))

(declare-fun res!2916006 () Bool)

(assert (=> b!7147875 (=> (not res!2916006) (not e!4295279))))

(assert (=> b!7147875 (= res!2916006 (dynLambda!28268 lambda!435915 (h!75846 lt!2568988)))))

(declare-fun b!7147876 () Bool)

(assert (=> b!7147876 (= e!4295279 (forall!17060 (t!383539 lt!2568988) lambda!435915))))

(assert (= (and d!2228418 (not res!2916005)) b!7147875))

(assert (= (and b!7147875 res!2916006) b!7147876))

(declare-fun b_lambda!272825 () Bool)

(assert (=> (not b_lambda!272825) (not b!7147875)))

(declare-fun m!7860100 () Bool)

(assert (=> b!7147875 m!7860100))

(declare-fun m!7860102 () Bool)

(assert (=> b!7147876 m!7860102))

(assert (=> d!2228382 d!2228418))

(declare-fun bs!1889357 () Bool)

(declare-fun d!2228420 () Bool)

(assert (= bs!1889357 (and d!2228420 d!2228382)))

(declare-fun lambda!435933 () Int)

(assert (=> bs!1889357 (= lambda!435933 lambda!435915)))

(declare-fun bs!1889358 () Bool)

(assert (= bs!1889358 (and d!2228420 d!2228384)))

(assert (=> bs!1889358 (= lambda!435933 lambda!435920)))

(declare-fun bs!1889359 () Bool)

(assert (= bs!1889359 (and d!2228420 d!2228374)))

(assert (=> bs!1889359 (= lambda!435933 lambda!435909)))

(declare-fun bs!1889360 () Bool)

(assert (= bs!1889360 (and d!2228420 d!2228396)))

(assert (=> bs!1889360 (= lambda!435933 lambda!435931)))

(declare-fun bs!1889361 () Bool)

(assert (= bs!1889361 (and d!2228420 d!2228402)))

(assert (=> bs!1889361 (= lambda!435933 lambda!435932)))

(declare-fun b!7147877 () Bool)

(declare-fun e!4295284 () Regex!18222)

(assert (=> b!7147877 (= e!4295284 EmptyExpr!18222)))

(declare-fun b!7147878 () Bool)

(declare-fun e!4295285 () Bool)

(assert (=> b!7147878 (= e!4295285 (isEmpty!40094 (t!383539 (t!383539 (exprs!7716 (h!75847 zl!333))))))))

(declare-fun b!7147879 () Bool)

(declare-fun e!4295282 () Regex!18222)

(assert (=> b!7147879 (= e!4295282 (h!75846 (t!383539 (exprs!7716 (h!75847 zl!333)))))))

(declare-fun b!7147880 () Bool)

(declare-fun e!4295280 () Bool)

(declare-fun e!4295281 () Bool)

(assert (=> b!7147880 (= e!4295280 e!4295281)))

(declare-fun c!1332848 () Bool)

(assert (=> b!7147880 (= c!1332848 (isEmpty!40094 (tail!14005 (t!383539 (exprs!7716 (h!75847 zl!333))))))))

(declare-fun e!4295283 () Bool)

(assert (=> d!2228420 e!4295283))

(declare-fun res!2916008 () Bool)

(assert (=> d!2228420 (=> (not res!2916008) (not e!4295283))))

(declare-fun lt!2569001 () Regex!18222)

(assert (=> d!2228420 (= res!2916008 (validRegex!9384 lt!2569001))))

(assert (=> d!2228420 (= lt!2569001 e!4295282)))

(declare-fun c!1332849 () Bool)

(assert (=> d!2228420 (= c!1332849 e!4295285)))

(declare-fun res!2916007 () Bool)

(assert (=> d!2228420 (=> (not res!2916007) (not e!4295285))))

(assert (=> d!2228420 (= res!2916007 (is-Cons!69398 (t!383539 (exprs!7716 (h!75847 zl!333)))))))

(assert (=> d!2228420 (forall!17060 (t!383539 (exprs!7716 (h!75847 zl!333))) lambda!435933)))

(assert (=> d!2228420 (= (generalisedConcat!2398 (t!383539 (exprs!7716 (h!75847 zl!333)))) lt!2569001)))

(declare-fun b!7147881 () Bool)

(assert (=> b!7147881 (= e!4295281 (isConcat!1578 lt!2569001))))

(declare-fun b!7147882 () Bool)

(assert (=> b!7147882 (= e!4295280 (isEmptyExpr!2055 lt!2569001))))

(declare-fun b!7147883 () Bool)

(assert (=> b!7147883 (= e!4295282 e!4295284)))

(declare-fun c!1332850 () Bool)

(assert (=> b!7147883 (= c!1332850 (is-Cons!69398 (t!383539 (exprs!7716 (h!75847 zl!333)))))))

(declare-fun b!7147884 () Bool)

(assert (=> b!7147884 (= e!4295283 e!4295280)))

(declare-fun c!1332847 () Bool)

(assert (=> b!7147884 (= c!1332847 (isEmpty!40094 (t!383539 (exprs!7716 (h!75847 zl!333)))))))

(declare-fun b!7147885 () Bool)

(assert (=> b!7147885 (= e!4295281 (= lt!2569001 (head!14535 (t!383539 (exprs!7716 (h!75847 zl!333))))))))

(declare-fun b!7147886 () Bool)

(assert (=> b!7147886 (= e!4295284 (Concat!27067 (h!75846 (t!383539 (exprs!7716 (h!75847 zl!333)))) (generalisedConcat!2398 (t!383539 (t!383539 (exprs!7716 (h!75847 zl!333)))))))))

(assert (= (and d!2228420 res!2916007) b!7147878))

(assert (= (and d!2228420 c!1332849) b!7147879))

(assert (= (and d!2228420 (not c!1332849)) b!7147883))

(assert (= (and b!7147883 c!1332850) b!7147886))

(assert (= (and b!7147883 (not c!1332850)) b!7147877))

(assert (= (and d!2228420 res!2916008) b!7147884))

(assert (= (and b!7147884 c!1332847) b!7147882))

(assert (= (and b!7147884 (not c!1332847)) b!7147880))

(assert (= (and b!7147880 c!1332848) b!7147885))

(assert (= (and b!7147880 (not c!1332848)) b!7147881))

(declare-fun m!7860104 () Bool)

(assert (=> b!7147878 m!7860104))

(declare-fun m!7860106 () Bool)

(assert (=> b!7147882 m!7860106))

(declare-fun m!7860108 () Bool)

(assert (=> b!7147886 m!7860108))

(declare-fun m!7860110 () Bool)

(assert (=> b!7147881 m!7860110))

(declare-fun m!7860112 () Bool)

(assert (=> b!7147880 m!7860112))

(assert (=> b!7147880 m!7860112))

(declare-fun m!7860114 () Bool)

(assert (=> b!7147880 m!7860114))

(declare-fun m!7860116 () Bool)

(assert (=> d!2228420 m!7860116))

(declare-fun m!7860118 () Bool)

(assert (=> d!2228420 m!7860118))

(assert (=> b!7147884 m!7860018))

(declare-fun m!7860120 () Bool)

(assert (=> b!7147885 m!7860120))

(assert (=> b!7147709 d!2228420))

(declare-fun d!2228422 () Bool)

(assert (=> d!2228422 (= (isEmpty!40094 (exprs!7716 (h!75847 zl!333))) (is-Nil!69398 (exprs!7716 (h!75847 zl!333))))))

(assert (=> b!7147707 d!2228422))

(declare-fun d!2228424 () Bool)

(assert (=> d!2228424 (= (head!14535 (exprs!7716 (h!75847 zl!333))) (h!75846 (exprs!7716 (h!75847 zl!333))))))

(assert (=> b!7147708 d!2228424))

(declare-fun d!2228426 () Bool)

(declare-fun res!2916013 () Bool)

(declare-fun e!4295290 () Bool)

(assert (=> d!2228426 (=> res!2916013 e!4295290)))

(assert (=> d!2228426 (= res!2916013 (is-Nil!69399 zl!333))))

(assert (=> d!2228426 (= (forall!17061 zl!333 lambda!435912) e!4295290)))

(declare-fun b!7147891 () Bool)

(declare-fun e!4295291 () Bool)

(assert (=> b!7147891 (= e!4295290 e!4295291)))

(declare-fun res!2916014 () Bool)

(assert (=> b!7147891 (=> (not res!2916014) (not e!4295291))))

(declare-fun dynLambda!28269 (Int Context!14432) Bool)

(assert (=> b!7147891 (= res!2916014 (dynLambda!28269 lambda!435912 (h!75847 zl!333)))))

(declare-fun b!7147892 () Bool)

(assert (=> b!7147892 (= e!4295291 (forall!17061 (t!383540 zl!333) lambda!435912))))

(assert (= (and d!2228426 (not res!2916013)) b!7147891))

(assert (= (and b!7147891 res!2916014) b!7147892))

(declare-fun b_lambda!272827 () Bool)

(assert (=> (not b_lambda!272827) (not b!7147891)))

(declare-fun m!7860122 () Bool)

(assert (=> b!7147891 m!7860122))

(declare-fun m!7860124 () Bool)

(assert (=> b!7147892 m!7860124))

(assert (=> d!2228376 d!2228426))

(declare-fun b!7147896 () Bool)

(declare-fun e!4295292 () Bool)

(declare-fun tp!1972678 () Bool)

(declare-fun tp!1972679 () Bool)

(assert (=> b!7147896 (= e!4295292 (and tp!1972678 tp!1972679))))

(assert (=> b!7147734 (= tp!1972606 e!4295292)))

(declare-fun b!7147893 () Bool)

(assert (=> b!7147893 (= e!4295292 tp_is_empty!46081)))

(declare-fun b!7147894 () Bool)

(declare-fun tp!1972680 () Bool)

(declare-fun tp!1972677 () Bool)

(assert (=> b!7147894 (= e!4295292 (and tp!1972680 tp!1972677))))

(declare-fun b!7147895 () Bool)

(declare-fun tp!1972676 () Bool)

(assert (=> b!7147895 (= e!4295292 tp!1972676)))

(assert (= (and b!7147734 (is-ElementMatch!18222 (h!75846 (exprs!7716 (h!75847 zl!333))))) b!7147893))

(assert (= (and b!7147734 (is-Concat!27067 (h!75846 (exprs!7716 (h!75847 zl!333))))) b!7147894))

(assert (= (and b!7147734 (is-Star!18222 (h!75846 (exprs!7716 (h!75847 zl!333))))) b!7147895))

(assert (= (and b!7147734 (is-Union!18222 (h!75846 (exprs!7716 (h!75847 zl!333))))) b!7147896))

(declare-fun b!7147897 () Bool)

(declare-fun e!4295293 () Bool)

(declare-fun tp!1972681 () Bool)

(declare-fun tp!1972682 () Bool)

(assert (=> b!7147897 (= e!4295293 (and tp!1972681 tp!1972682))))

(assert (=> b!7147734 (= tp!1972607 e!4295293)))

(assert (= (and b!7147734 (is-Cons!69398 (t!383539 (exprs!7716 (h!75847 zl!333))))) b!7147897))

(declare-fun b!7147901 () Bool)

(declare-fun e!4295294 () Bool)

(declare-fun tp!1972685 () Bool)

(declare-fun tp!1972686 () Bool)

(assert (=> b!7147901 (= e!4295294 (and tp!1972685 tp!1972686))))

(assert (=> b!7147745 (= tp!1972614 e!4295294)))

(declare-fun b!7147898 () Bool)

(assert (=> b!7147898 (= e!4295294 tp_is_empty!46081)))

(declare-fun b!7147899 () Bool)

(declare-fun tp!1972687 () Bool)

(declare-fun tp!1972684 () Bool)

(assert (=> b!7147899 (= e!4295294 (and tp!1972687 tp!1972684))))

(declare-fun b!7147900 () Bool)

(declare-fun tp!1972683 () Bool)

(assert (=> b!7147900 (= e!4295294 tp!1972683)))

(assert (= (and b!7147745 (is-ElementMatch!18222 (reg!18551 (regOne!36957 r!7278)))) b!7147898))

(assert (= (and b!7147745 (is-Concat!27067 (reg!18551 (regOne!36957 r!7278)))) b!7147899))

(assert (= (and b!7147745 (is-Star!18222 (reg!18551 (regOne!36957 r!7278)))) b!7147900))

(assert (= (and b!7147745 (is-Union!18222 (reg!18551 (regOne!36957 r!7278)))) b!7147901))

(declare-fun b!7147905 () Bool)

(declare-fun e!4295295 () Bool)

(declare-fun tp!1972690 () Bool)

(declare-fun tp!1972691 () Bool)

(assert (=> b!7147905 (= e!4295295 (and tp!1972690 tp!1972691))))

(assert (=> b!7147750 (= tp!1972621 e!4295295)))

(declare-fun b!7147902 () Bool)

(assert (=> b!7147902 (= e!4295295 tp_is_empty!46081)))

(declare-fun b!7147903 () Bool)

(declare-fun tp!1972692 () Bool)

(declare-fun tp!1972689 () Bool)

(assert (=> b!7147903 (= e!4295295 (and tp!1972692 tp!1972689))))

(declare-fun b!7147904 () Bool)

(declare-fun tp!1972688 () Bool)

(assert (=> b!7147904 (= e!4295295 tp!1972688)))

(assert (= (and b!7147750 (is-ElementMatch!18222 (regOne!36957 (regTwo!36957 r!7278)))) b!7147902))

(assert (= (and b!7147750 (is-Concat!27067 (regOne!36957 (regTwo!36957 r!7278)))) b!7147903))

(assert (= (and b!7147750 (is-Star!18222 (regOne!36957 (regTwo!36957 r!7278)))) b!7147904))

(assert (= (and b!7147750 (is-Union!18222 (regOne!36957 (regTwo!36957 r!7278)))) b!7147905))

(declare-fun b!7147909 () Bool)

(declare-fun e!4295296 () Bool)

(declare-fun tp!1972695 () Bool)

(declare-fun tp!1972696 () Bool)

(assert (=> b!7147909 (= e!4295296 (and tp!1972695 tp!1972696))))

(assert (=> b!7147750 (= tp!1972622 e!4295296)))

(declare-fun b!7147906 () Bool)

(assert (=> b!7147906 (= e!4295296 tp_is_empty!46081)))

(declare-fun b!7147907 () Bool)

(declare-fun tp!1972697 () Bool)

(declare-fun tp!1972694 () Bool)

(assert (=> b!7147907 (= e!4295296 (and tp!1972697 tp!1972694))))

(declare-fun b!7147908 () Bool)

(declare-fun tp!1972693 () Bool)

(assert (=> b!7147908 (= e!4295296 tp!1972693)))

(assert (= (and b!7147750 (is-ElementMatch!18222 (regTwo!36957 (regTwo!36957 r!7278)))) b!7147906))

(assert (= (and b!7147750 (is-Concat!27067 (regTwo!36957 (regTwo!36957 r!7278)))) b!7147907))

(assert (= (and b!7147750 (is-Star!18222 (regTwo!36957 (regTwo!36957 r!7278)))) b!7147908))

(assert (= (and b!7147750 (is-Union!18222 (regTwo!36957 (regTwo!36957 r!7278)))) b!7147909))

(declare-fun b!7147913 () Bool)

(declare-fun e!4295297 () Bool)

(declare-fun tp!1972700 () Bool)

(declare-fun tp!1972701 () Bool)

(assert (=> b!7147913 (= e!4295297 (and tp!1972700 tp!1972701))))

(assert (=> b!7147746 (= tp!1972616 e!4295297)))

(declare-fun b!7147910 () Bool)

(assert (=> b!7147910 (= e!4295297 tp_is_empty!46081)))

(declare-fun b!7147911 () Bool)

(declare-fun tp!1972702 () Bool)

(declare-fun tp!1972699 () Bool)

(assert (=> b!7147911 (= e!4295297 (and tp!1972702 tp!1972699))))

(declare-fun b!7147912 () Bool)

(declare-fun tp!1972698 () Bool)

(assert (=> b!7147912 (= e!4295297 tp!1972698)))

(assert (= (and b!7147746 (is-ElementMatch!18222 (regOne!36957 (regOne!36957 r!7278)))) b!7147910))

(assert (= (and b!7147746 (is-Concat!27067 (regOne!36957 (regOne!36957 r!7278)))) b!7147911))

(assert (= (and b!7147746 (is-Star!18222 (regOne!36957 (regOne!36957 r!7278)))) b!7147912))

(assert (= (and b!7147746 (is-Union!18222 (regOne!36957 (regOne!36957 r!7278)))) b!7147913))

(declare-fun b!7147917 () Bool)

(declare-fun e!4295298 () Bool)

(declare-fun tp!1972705 () Bool)

(declare-fun tp!1972706 () Bool)

(assert (=> b!7147917 (= e!4295298 (and tp!1972705 tp!1972706))))

(assert (=> b!7147746 (= tp!1972617 e!4295298)))

(declare-fun b!7147914 () Bool)

(assert (=> b!7147914 (= e!4295298 tp_is_empty!46081)))

(declare-fun b!7147915 () Bool)

(declare-fun tp!1972707 () Bool)

(declare-fun tp!1972704 () Bool)

(assert (=> b!7147915 (= e!4295298 (and tp!1972707 tp!1972704))))

(declare-fun b!7147916 () Bool)

(declare-fun tp!1972703 () Bool)

(assert (=> b!7147916 (= e!4295298 tp!1972703)))

(assert (= (and b!7147746 (is-ElementMatch!18222 (regTwo!36957 (regOne!36957 r!7278)))) b!7147914))

(assert (= (and b!7147746 (is-Concat!27067 (regTwo!36957 (regOne!36957 r!7278)))) b!7147915))

(assert (= (and b!7147746 (is-Star!18222 (regTwo!36957 (regOne!36957 r!7278)))) b!7147916))

(assert (= (and b!7147746 (is-Union!18222 (regTwo!36957 (regOne!36957 r!7278)))) b!7147917))

(declare-fun b!7147919 () Bool)

(declare-fun e!4295300 () Bool)

(declare-fun tp!1972708 () Bool)

(assert (=> b!7147919 (= e!4295300 tp!1972708)))

(declare-fun e!4295299 () Bool)

(declare-fun b!7147918 () Bool)

(declare-fun tp!1972709 () Bool)

(assert (=> b!7147918 (= e!4295299 (and (inv!88620 (h!75847 (t!383540 (t!383540 zl!333)))) e!4295300 tp!1972709))))

(assert (=> b!7147741 (= tp!1972613 e!4295299)))

(assert (= b!7147918 b!7147919))

(assert (= (and b!7147741 (is-Cons!69399 (t!383540 (t!383540 zl!333)))) b!7147918))

(declare-fun m!7860126 () Bool)

(assert (=> b!7147918 m!7860126))

(declare-fun b!7147923 () Bool)

(declare-fun e!4295301 () Bool)

(declare-fun tp!1972712 () Bool)

(declare-fun tp!1972713 () Bool)

(assert (=> b!7147923 (= e!4295301 (and tp!1972712 tp!1972713))))

(assert (=> b!7147722 (= tp!1972592 e!4295301)))

(declare-fun b!7147920 () Bool)

(assert (=> b!7147920 (= e!4295301 tp_is_empty!46081)))

(declare-fun b!7147921 () Bool)

(declare-fun tp!1972714 () Bool)

(declare-fun tp!1972711 () Bool)

(assert (=> b!7147921 (= e!4295301 (and tp!1972714 tp!1972711))))

(declare-fun b!7147922 () Bool)

(declare-fun tp!1972710 () Bool)

(assert (=> b!7147922 (= e!4295301 tp!1972710)))

(assert (= (and b!7147722 (is-ElementMatch!18222 (reg!18551 (regOne!36956 r!7278)))) b!7147920))

(assert (= (and b!7147722 (is-Concat!27067 (reg!18551 (regOne!36956 r!7278)))) b!7147921))

(assert (= (and b!7147722 (is-Star!18222 (reg!18551 (regOne!36956 r!7278)))) b!7147922))

(assert (= (and b!7147722 (is-Union!18222 (reg!18551 (regOne!36956 r!7278)))) b!7147923))

(declare-fun b!7147927 () Bool)

(declare-fun e!4295302 () Bool)

(declare-fun tp!1972717 () Bool)

(declare-fun tp!1972718 () Bool)

(assert (=> b!7147927 (= e!4295302 (and tp!1972717 tp!1972718))))

(assert (=> b!7147753 (= tp!1972624 e!4295302)))

(declare-fun b!7147924 () Bool)

(assert (=> b!7147924 (= e!4295302 tp_is_empty!46081)))

(declare-fun b!7147925 () Bool)

(declare-fun tp!1972719 () Bool)

(declare-fun tp!1972716 () Bool)

(assert (=> b!7147925 (= e!4295302 (and tp!1972719 tp!1972716))))

(declare-fun b!7147926 () Bool)

(declare-fun tp!1972715 () Bool)

(assert (=> b!7147926 (= e!4295302 tp!1972715)))

(assert (= (and b!7147753 (is-ElementMatch!18222 (reg!18551 (reg!18551 r!7278)))) b!7147924))

(assert (= (and b!7147753 (is-Concat!27067 (reg!18551 (reg!18551 r!7278)))) b!7147925))

(assert (= (and b!7147753 (is-Star!18222 (reg!18551 (reg!18551 r!7278)))) b!7147926))

(assert (= (and b!7147753 (is-Union!18222 (reg!18551 (reg!18551 r!7278)))) b!7147927))

(declare-fun b!7147931 () Bool)

(declare-fun e!4295303 () Bool)

(declare-fun tp!1972722 () Bool)

(declare-fun tp!1972723 () Bool)

(assert (=> b!7147931 (= e!4295303 (and tp!1972722 tp!1972723))))

(assert (=> b!7147727 (= tp!1972599 e!4295303)))

(declare-fun b!7147928 () Bool)

(assert (=> b!7147928 (= e!4295303 tp_is_empty!46081)))

(declare-fun b!7147929 () Bool)

(declare-fun tp!1972724 () Bool)

(declare-fun tp!1972721 () Bool)

(assert (=> b!7147929 (= e!4295303 (and tp!1972724 tp!1972721))))

(declare-fun b!7147930 () Bool)

(declare-fun tp!1972720 () Bool)

(assert (=> b!7147930 (= e!4295303 tp!1972720)))

(assert (= (and b!7147727 (is-ElementMatch!18222 (regOne!36957 (regTwo!36956 r!7278)))) b!7147928))

(assert (= (and b!7147727 (is-Concat!27067 (regOne!36957 (regTwo!36956 r!7278)))) b!7147929))

(assert (= (and b!7147727 (is-Star!18222 (regOne!36957 (regTwo!36956 r!7278)))) b!7147930))

(assert (= (and b!7147727 (is-Union!18222 (regOne!36957 (regTwo!36956 r!7278)))) b!7147931))

(declare-fun b!7147935 () Bool)

(declare-fun e!4295304 () Bool)

(declare-fun tp!1972727 () Bool)

(declare-fun tp!1972728 () Bool)

(assert (=> b!7147935 (= e!4295304 (and tp!1972727 tp!1972728))))

(assert (=> b!7147727 (= tp!1972600 e!4295304)))

(declare-fun b!7147932 () Bool)

(assert (=> b!7147932 (= e!4295304 tp_is_empty!46081)))

(declare-fun b!7147933 () Bool)

(declare-fun tp!1972729 () Bool)

(declare-fun tp!1972726 () Bool)

(assert (=> b!7147933 (= e!4295304 (and tp!1972729 tp!1972726))))

(declare-fun b!7147934 () Bool)

(declare-fun tp!1972725 () Bool)

(assert (=> b!7147934 (= e!4295304 tp!1972725)))

(assert (= (and b!7147727 (is-ElementMatch!18222 (regTwo!36957 (regTwo!36956 r!7278)))) b!7147932))

(assert (= (and b!7147727 (is-Concat!27067 (regTwo!36957 (regTwo!36956 r!7278)))) b!7147933))

(assert (= (and b!7147727 (is-Star!18222 (regTwo!36957 (regTwo!36956 r!7278)))) b!7147934))

(assert (= (and b!7147727 (is-Union!18222 (regTwo!36957 (regTwo!36956 r!7278)))) b!7147935))

(declare-fun b!7147939 () Bool)

(declare-fun e!4295305 () Bool)

(declare-fun tp!1972732 () Bool)

(declare-fun tp!1972733 () Bool)

(assert (=> b!7147939 (= e!4295305 (and tp!1972732 tp!1972733))))

(assert (=> b!7147744 (= tp!1972618 e!4295305)))

(declare-fun b!7147936 () Bool)

(assert (=> b!7147936 (= e!4295305 tp_is_empty!46081)))

(declare-fun b!7147937 () Bool)

(declare-fun tp!1972734 () Bool)

(declare-fun tp!1972731 () Bool)

(assert (=> b!7147937 (= e!4295305 (and tp!1972734 tp!1972731))))

(declare-fun b!7147938 () Bool)

(declare-fun tp!1972730 () Bool)

(assert (=> b!7147938 (= e!4295305 tp!1972730)))

(assert (= (and b!7147744 (is-ElementMatch!18222 (regOne!36956 (regOne!36957 r!7278)))) b!7147936))

(assert (= (and b!7147744 (is-Concat!27067 (regOne!36956 (regOne!36957 r!7278)))) b!7147937))

(assert (= (and b!7147744 (is-Star!18222 (regOne!36956 (regOne!36957 r!7278)))) b!7147938))

(assert (= (and b!7147744 (is-Union!18222 (regOne!36956 (regOne!36957 r!7278)))) b!7147939))

(declare-fun b!7147943 () Bool)

(declare-fun e!4295306 () Bool)

(declare-fun tp!1972737 () Bool)

(declare-fun tp!1972738 () Bool)

(assert (=> b!7147943 (= e!4295306 (and tp!1972737 tp!1972738))))

(assert (=> b!7147744 (= tp!1972615 e!4295306)))

(declare-fun b!7147940 () Bool)

(assert (=> b!7147940 (= e!4295306 tp_is_empty!46081)))

(declare-fun b!7147941 () Bool)

(declare-fun tp!1972739 () Bool)

(declare-fun tp!1972736 () Bool)

(assert (=> b!7147941 (= e!4295306 (and tp!1972739 tp!1972736))))

(declare-fun b!7147942 () Bool)

(declare-fun tp!1972735 () Bool)

(assert (=> b!7147942 (= e!4295306 tp!1972735)))

(assert (= (and b!7147744 (is-ElementMatch!18222 (regTwo!36956 (regOne!36957 r!7278)))) b!7147940))

(assert (= (and b!7147744 (is-Concat!27067 (regTwo!36956 (regOne!36957 r!7278)))) b!7147941))

(assert (= (and b!7147744 (is-Star!18222 (regTwo!36956 (regOne!36957 r!7278)))) b!7147942))

(assert (= (and b!7147744 (is-Union!18222 (regTwo!36956 (regOne!36957 r!7278)))) b!7147943))

(declare-fun b!7147947 () Bool)

(declare-fun e!4295307 () Bool)

(declare-fun tp!1972742 () Bool)

(declare-fun tp!1972743 () Bool)

(assert (=> b!7147947 (= e!4295307 (and tp!1972742 tp!1972743))))

(assert (=> b!7147749 (= tp!1972619 e!4295307)))

(declare-fun b!7147944 () Bool)

(assert (=> b!7147944 (= e!4295307 tp_is_empty!46081)))

(declare-fun b!7147945 () Bool)

(declare-fun tp!1972744 () Bool)

(declare-fun tp!1972741 () Bool)

(assert (=> b!7147945 (= e!4295307 (and tp!1972744 tp!1972741))))

(declare-fun b!7147946 () Bool)

(declare-fun tp!1972740 () Bool)

(assert (=> b!7147946 (= e!4295307 tp!1972740)))

(assert (= (and b!7147749 (is-ElementMatch!18222 (reg!18551 (regTwo!36957 r!7278)))) b!7147944))

(assert (= (and b!7147749 (is-Concat!27067 (reg!18551 (regTwo!36957 r!7278)))) b!7147945))

(assert (= (and b!7147749 (is-Star!18222 (reg!18551 (regTwo!36957 r!7278)))) b!7147946))

(assert (= (and b!7147749 (is-Union!18222 (reg!18551 (regTwo!36957 r!7278)))) b!7147947))

(declare-fun b!7147948 () Bool)

(declare-fun e!4295308 () Bool)

(declare-fun tp!1972745 () Bool)

(declare-fun tp!1972746 () Bool)

(assert (=> b!7147948 (= e!4295308 (and tp!1972745 tp!1972746))))

(assert (=> b!7147742 (= tp!1972612 e!4295308)))

(assert (= (and b!7147742 (is-Cons!69398 (exprs!7716 (h!75847 (t!383540 zl!333))))) b!7147948))

(declare-fun b!7147952 () Bool)

(declare-fun e!4295309 () Bool)

(declare-fun tp!1972749 () Bool)

(declare-fun tp!1972750 () Bool)

(assert (=> b!7147952 (= e!4295309 (and tp!1972749 tp!1972750))))

(assert (=> b!7147723 (= tp!1972594 e!4295309)))

(declare-fun b!7147949 () Bool)

(assert (=> b!7147949 (= e!4295309 tp_is_empty!46081)))

(declare-fun b!7147950 () Bool)

(declare-fun tp!1972751 () Bool)

(declare-fun tp!1972748 () Bool)

(assert (=> b!7147950 (= e!4295309 (and tp!1972751 tp!1972748))))

(declare-fun b!7147951 () Bool)

(declare-fun tp!1972747 () Bool)

(assert (=> b!7147951 (= e!4295309 tp!1972747)))

(assert (= (and b!7147723 (is-ElementMatch!18222 (regOne!36957 (regOne!36956 r!7278)))) b!7147949))

(assert (= (and b!7147723 (is-Concat!27067 (regOne!36957 (regOne!36956 r!7278)))) b!7147950))

(assert (= (and b!7147723 (is-Star!18222 (regOne!36957 (regOne!36956 r!7278)))) b!7147951))

(assert (= (and b!7147723 (is-Union!18222 (regOne!36957 (regOne!36956 r!7278)))) b!7147952))

(declare-fun b!7147956 () Bool)

(declare-fun e!4295310 () Bool)

(declare-fun tp!1972754 () Bool)

(declare-fun tp!1972755 () Bool)

(assert (=> b!7147956 (= e!4295310 (and tp!1972754 tp!1972755))))

(assert (=> b!7147723 (= tp!1972595 e!4295310)))

(declare-fun b!7147953 () Bool)

(assert (=> b!7147953 (= e!4295310 tp_is_empty!46081)))

(declare-fun b!7147954 () Bool)

(declare-fun tp!1972756 () Bool)

(declare-fun tp!1972753 () Bool)

(assert (=> b!7147954 (= e!4295310 (and tp!1972756 tp!1972753))))

(declare-fun b!7147955 () Bool)

(declare-fun tp!1972752 () Bool)

(assert (=> b!7147955 (= e!4295310 tp!1972752)))

(assert (= (and b!7147723 (is-ElementMatch!18222 (regTwo!36957 (regOne!36956 r!7278)))) b!7147953))

(assert (= (and b!7147723 (is-Concat!27067 (regTwo!36957 (regOne!36956 r!7278)))) b!7147954))

(assert (= (and b!7147723 (is-Star!18222 (regTwo!36957 (regOne!36956 r!7278)))) b!7147955))

(assert (= (and b!7147723 (is-Union!18222 (regTwo!36957 (regOne!36956 r!7278)))) b!7147956))

(declare-fun b!7147960 () Bool)

(declare-fun e!4295311 () Bool)

(declare-fun tp!1972759 () Bool)

(declare-fun tp!1972760 () Bool)

(assert (=> b!7147960 (= e!4295311 (and tp!1972759 tp!1972760))))

(assert (=> b!7147754 (= tp!1972626 e!4295311)))

(declare-fun b!7147957 () Bool)

(assert (=> b!7147957 (= e!4295311 tp_is_empty!46081)))

(declare-fun b!7147958 () Bool)

(declare-fun tp!1972761 () Bool)

(declare-fun tp!1972758 () Bool)

(assert (=> b!7147958 (= e!4295311 (and tp!1972761 tp!1972758))))

(declare-fun b!7147959 () Bool)

(declare-fun tp!1972757 () Bool)

(assert (=> b!7147959 (= e!4295311 tp!1972757)))

(assert (= (and b!7147754 (is-ElementMatch!18222 (regOne!36957 (reg!18551 r!7278)))) b!7147957))

(assert (= (and b!7147754 (is-Concat!27067 (regOne!36957 (reg!18551 r!7278)))) b!7147958))

(assert (= (and b!7147754 (is-Star!18222 (regOne!36957 (reg!18551 r!7278)))) b!7147959))

(assert (= (and b!7147754 (is-Union!18222 (regOne!36957 (reg!18551 r!7278)))) b!7147960))

(declare-fun b!7147964 () Bool)

(declare-fun e!4295312 () Bool)

(declare-fun tp!1972764 () Bool)

(declare-fun tp!1972765 () Bool)

(assert (=> b!7147964 (= e!4295312 (and tp!1972764 tp!1972765))))

(assert (=> b!7147754 (= tp!1972627 e!4295312)))

(declare-fun b!7147961 () Bool)

(assert (=> b!7147961 (= e!4295312 tp_is_empty!46081)))

(declare-fun b!7147962 () Bool)

(declare-fun tp!1972766 () Bool)

(declare-fun tp!1972763 () Bool)

(assert (=> b!7147962 (= e!4295312 (and tp!1972766 tp!1972763))))

(declare-fun b!7147963 () Bool)

(declare-fun tp!1972762 () Bool)

(assert (=> b!7147963 (= e!4295312 tp!1972762)))

(assert (= (and b!7147754 (is-ElementMatch!18222 (regTwo!36957 (reg!18551 r!7278)))) b!7147961))

(assert (= (and b!7147754 (is-Concat!27067 (regTwo!36957 (reg!18551 r!7278)))) b!7147962))

(assert (= (and b!7147754 (is-Star!18222 (regTwo!36957 (reg!18551 r!7278)))) b!7147963))

(assert (= (and b!7147754 (is-Union!18222 (regTwo!36957 (reg!18551 r!7278)))) b!7147964))

(declare-fun b!7147968 () Bool)

(declare-fun e!4295313 () Bool)

(declare-fun tp!1972769 () Bool)

(declare-fun tp!1972770 () Bool)

(assert (=> b!7147968 (= e!4295313 (and tp!1972769 tp!1972770))))

(assert (=> b!7147721 (= tp!1972596 e!4295313)))

(declare-fun b!7147965 () Bool)

(assert (=> b!7147965 (= e!4295313 tp_is_empty!46081)))

(declare-fun b!7147966 () Bool)

(declare-fun tp!1972771 () Bool)

(declare-fun tp!1972768 () Bool)

(assert (=> b!7147966 (= e!4295313 (and tp!1972771 tp!1972768))))

(declare-fun b!7147967 () Bool)

(declare-fun tp!1972767 () Bool)

(assert (=> b!7147967 (= e!4295313 tp!1972767)))

(assert (= (and b!7147721 (is-ElementMatch!18222 (regOne!36956 (regOne!36956 r!7278)))) b!7147965))

(assert (= (and b!7147721 (is-Concat!27067 (regOne!36956 (regOne!36956 r!7278)))) b!7147966))

(assert (= (and b!7147721 (is-Star!18222 (regOne!36956 (regOne!36956 r!7278)))) b!7147967))

(assert (= (and b!7147721 (is-Union!18222 (regOne!36956 (regOne!36956 r!7278)))) b!7147968))

(declare-fun b!7147972 () Bool)

(declare-fun e!4295314 () Bool)

(declare-fun tp!1972774 () Bool)

(declare-fun tp!1972775 () Bool)

(assert (=> b!7147972 (= e!4295314 (and tp!1972774 tp!1972775))))

(assert (=> b!7147721 (= tp!1972593 e!4295314)))

(declare-fun b!7147969 () Bool)

(assert (=> b!7147969 (= e!4295314 tp_is_empty!46081)))

(declare-fun b!7147970 () Bool)

(declare-fun tp!1972776 () Bool)

(declare-fun tp!1972773 () Bool)

(assert (=> b!7147970 (= e!4295314 (and tp!1972776 tp!1972773))))

(declare-fun b!7147971 () Bool)

(declare-fun tp!1972772 () Bool)

(assert (=> b!7147971 (= e!4295314 tp!1972772)))

(assert (= (and b!7147721 (is-ElementMatch!18222 (regTwo!36956 (regOne!36956 r!7278)))) b!7147969))

(assert (= (and b!7147721 (is-Concat!27067 (regTwo!36956 (regOne!36956 r!7278)))) b!7147970))

(assert (= (and b!7147721 (is-Star!18222 (regTwo!36956 (regOne!36956 r!7278)))) b!7147971))

(assert (= (and b!7147721 (is-Union!18222 (regTwo!36956 (regOne!36956 r!7278)))) b!7147972))

(declare-fun b!7147976 () Bool)

(declare-fun e!4295315 () Bool)

(declare-fun tp!1972779 () Bool)

(declare-fun tp!1972780 () Bool)

(assert (=> b!7147976 (= e!4295315 (and tp!1972779 tp!1972780))))

(assert (=> b!7147752 (= tp!1972628 e!4295315)))

(declare-fun b!7147973 () Bool)

(assert (=> b!7147973 (= e!4295315 tp_is_empty!46081)))

(declare-fun b!7147974 () Bool)

(declare-fun tp!1972781 () Bool)

(declare-fun tp!1972778 () Bool)

(assert (=> b!7147974 (= e!4295315 (and tp!1972781 tp!1972778))))

(declare-fun b!7147975 () Bool)

(declare-fun tp!1972777 () Bool)

(assert (=> b!7147975 (= e!4295315 tp!1972777)))

(assert (= (and b!7147752 (is-ElementMatch!18222 (regOne!36956 (reg!18551 r!7278)))) b!7147973))

(assert (= (and b!7147752 (is-Concat!27067 (regOne!36956 (reg!18551 r!7278)))) b!7147974))

(assert (= (and b!7147752 (is-Star!18222 (regOne!36956 (reg!18551 r!7278)))) b!7147975))

(assert (= (and b!7147752 (is-Union!18222 (regOne!36956 (reg!18551 r!7278)))) b!7147976))

(declare-fun b!7147980 () Bool)

(declare-fun e!4295316 () Bool)

(declare-fun tp!1972784 () Bool)

(declare-fun tp!1972785 () Bool)

(assert (=> b!7147980 (= e!4295316 (and tp!1972784 tp!1972785))))

(assert (=> b!7147752 (= tp!1972625 e!4295316)))

(declare-fun b!7147977 () Bool)

(assert (=> b!7147977 (= e!4295316 tp_is_empty!46081)))

(declare-fun b!7147978 () Bool)

(declare-fun tp!1972786 () Bool)

(declare-fun tp!1972783 () Bool)

(assert (=> b!7147978 (= e!4295316 (and tp!1972786 tp!1972783))))

(declare-fun b!7147979 () Bool)

(declare-fun tp!1972782 () Bool)

(assert (=> b!7147979 (= e!4295316 tp!1972782)))

(assert (= (and b!7147752 (is-ElementMatch!18222 (regTwo!36956 (reg!18551 r!7278)))) b!7147977))

(assert (= (and b!7147752 (is-Concat!27067 (regTwo!36956 (reg!18551 r!7278)))) b!7147978))

(assert (= (and b!7147752 (is-Star!18222 (regTwo!36956 (reg!18551 r!7278)))) b!7147979))

(assert (= (and b!7147752 (is-Union!18222 (regTwo!36956 (reg!18551 r!7278)))) b!7147980))

(declare-fun b!7147984 () Bool)

(declare-fun e!4295317 () Bool)

(declare-fun tp!1972789 () Bool)

(declare-fun tp!1972790 () Bool)

(assert (=> b!7147984 (= e!4295317 (and tp!1972789 tp!1972790))))

(assert (=> b!7147726 (= tp!1972597 e!4295317)))

(declare-fun b!7147981 () Bool)

(assert (=> b!7147981 (= e!4295317 tp_is_empty!46081)))

(declare-fun b!7147982 () Bool)

(declare-fun tp!1972791 () Bool)

(declare-fun tp!1972788 () Bool)

(assert (=> b!7147982 (= e!4295317 (and tp!1972791 tp!1972788))))

(declare-fun b!7147983 () Bool)

(declare-fun tp!1972787 () Bool)

(assert (=> b!7147983 (= e!4295317 tp!1972787)))

(assert (= (and b!7147726 (is-ElementMatch!18222 (reg!18551 (regTwo!36956 r!7278)))) b!7147981))

(assert (= (and b!7147726 (is-Concat!27067 (reg!18551 (regTwo!36956 r!7278)))) b!7147982))

(assert (= (and b!7147726 (is-Star!18222 (reg!18551 (regTwo!36956 r!7278)))) b!7147983))

(assert (= (and b!7147726 (is-Union!18222 (reg!18551 (regTwo!36956 r!7278)))) b!7147984))

(declare-fun b!7147988 () Bool)

(declare-fun e!4295318 () Bool)

(declare-fun tp!1972794 () Bool)

(declare-fun tp!1972795 () Bool)

(assert (=> b!7147988 (= e!4295318 (and tp!1972794 tp!1972795))))

(assert (=> b!7147748 (= tp!1972623 e!4295318)))

(declare-fun b!7147985 () Bool)

(assert (=> b!7147985 (= e!4295318 tp_is_empty!46081)))

(declare-fun b!7147986 () Bool)

(declare-fun tp!1972796 () Bool)

(declare-fun tp!1972793 () Bool)

(assert (=> b!7147986 (= e!4295318 (and tp!1972796 tp!1972793))))

(declare-fun b!7147987 () Bool)

(declare-fun tp!1972792 () Bool)

(assert (=> b!7147987 (= e!4295318 tp!1972792)))

(assert (= (and b!7147748 (is-ElementMatch!18222 (regOne!36956 (regTwo!36957 r!7278)))) b!7147985))

(assert (= (and b!7147748 (is-Concat!27067 (regOne!36956 (regTwo!36957 r!7278)))) b!7147986))

(assert (= (and b!7147748 (is-Star!18222 (regOne!36956 (regTwo!36957 r!7278)))) b!7147987))

(assert (= (and b!7147748 (is-Union!18222 (regOne!36956 (regTwo!36957 r!7278)))) b!7147988))

(declare-fun b!7147992 () Bool)

(declare-fun e!4295319 () Bool)

(declare-fun tp!1972799 () Bool)

(declare-fun tp!1972800 () Bool)

(assert (=> b!7147992 (= e!4295319 (and tp!1972799 tp!1972800))))

(assert (=> b!7147748 (= tp!1972620 e!4295319)))

(declare-fun b!7147989 () Bool)

(assert (=> b!7147989 (= e!4295319 tp_is_empty!46081)))

(declare-fun b!7147990 () Bool)

(declare-fun tp!1972801 () Bool)

(declare-fun tp!1972798 () Bool)

(assert (=> b!7147990 (= e!4295319 (and tp!1972801 tp!1972798))))

(declare-fun b!7147991 () Bool)

(declare-fun tp!1972797 () Bool)

(assert (=> b!7147991 (= e!4295319 tp!1972797)))

(assert (= (and b!7147748 (is-ElementMatch!18222 (regTwo!36956 (regTwo!36957 r!7278)))) b!7147989))

(assert (= (and b!7147748 (is-Concat!27067 (regTwo!36956 (regTwo!36957 r!7278)))) b!7147990))

(assert (= (and b!7147748 (is-Star!18222 (regTwo!36956 (regTwo!36957 r!7278)))) b!7147991))

(assert (= (and b!7147748 (is-Union!18222 (regTwo!36956 (regTwo!36957 r!7278)))) b!7147992))

(declare-fun b!7147996 () Bool)

(declare-fun e!4295320 () Bool)

(declare-fun tp!1972804 () Bool)

(declare-fun tp!1972805 () Bool)

(assert (=> b!7147996 (= e!4295320 (and tp!1972804 tp!1972805))))

(assert (=> b!7147725 (= tp!1972601 e!4295320)))

(declare-fun b!7147993 () Bool)

(assert (=> b!7147993 (= e!4295320 tp_is_empty!46081)))

(declare-fun b!7147994 () Bool)

(declare-fun tp!1972806 () Bool)

(declare-fun tp!1972803 () Bool)

(assert (=> b!7147994 (= e!4295320 (and tp!1972806 tp!1972803))))

(declare-fun b!7147995 () Bool)

(declare-fun tp!1972802 () Bool)

(assert (=> b!7147995 (= e!4295320 tp!1972802)))

(assert (= (and b!7147725 (is-ElementMatch!18222 (regOne!36956 (regTwo!36956 r!7278)))) b!7147993))

(assert (= (and b!7147725 (is-Concat!27067 (regOne!36956 (regTwo!36956 r!7278)))) b!7147994))

(assert (= (and b!7147725 (is-Star!18222 (regOne!36956 (regTwo!36956 r!7278)))) b!7147995))

(assert (= (and b!7147725 (is-Union!18222 (regOne!36956 (regTwo!36956 r!7278)))) b!7147996))

(declare-fun b!7148000 () Bool)

(declare-fun e!4295321 () Bool)

(declare-fun tp!1972809 () Bool)

(declare-fun tp!1972810 () Bool)

(assert (=> b!7148000 (= e!4295321 (and tp!1972809 tp!1972810))))

(assert (=> b!7147725 (= tp!1972598 e!4295321)))

(declare-fun b!7147997 () Bool)

(assert (=> b!7147997 (= e!4295321 tp_is_empty!46081)))

(declare-fun b!7147998 () Bool)

(declare-fun tp!1972811 () Bool)

(declare-fun tp!1972808 () Bool)

(assert (=> b!7147998 (= e!4295321 (and tp!1972811 tp!1972808))))

(declare-fun b!7147999 () Bool)

(declare-fun tp!1972807 () Bool)

(assert (=> b!7147999 (= e!4295321 tp!1972807)))

(assert (= (and b!7147725 (is-ElementMatch!18222 (regTwo!36956 (regTwo!36956 r!7278)))) b!7147997))

(assert (= (and b!7147725 (is-Concat!27067 (regTwo!36956 (regTwo!36956 r!7278)))) b!7147998))

(assert (= (and b!7147725 (is-Star!18222 (regTwo!36956 (regTwo!36956 r!7278)))) b!7147999))

(assert (= (and b!7147725 (is-Union!18222 (regTwo!36956 (regTwo!36956 r!7278)))) b!7148000))

(declare-fun b_lambda!272829 () Bool)

(assert (= b_lambda!272825 (or d!2228382 b_lambda!272829)))

(declare-fun bs!1889362 () Bool)

(declare-fun d!2228428 () Bool)

(assert (= bs!1889362 (and d!2228428 d!2228382)))

(assert (=> bs!1889362 (= (dynLambda!28268 lambda!435915 (h!75846 lt!2568988)) (validRegex!9384 (h!75846 lt!2568988)))))

(declare-fun m!7860128 () Bool)

(assert (=> bs!1889362 m!7860128))

(assert (=> b!7147875 d!2228428))

(declare-fun b_lambda!272831 () Bool)

(assert (= b_lambda!272821 (or d!2228384 b_lambda!272831)))

(declare-fun bs!1889363 () Bool)

(declare-fun d!2228430 () Bool)

(assert (= bs!1889363 (and d!2228430 d!2228384)))

(assert (=> bs!1889363 (= (dynLambda!28268 lambda!435920 (h!75846 (exprs!7716 (h!75847 zl!333)))) (validRegex!9384 (h!75846 (exprs!7716 (h!75847 zl!333)))))))

(declare-fun m!7860130 () Bool)

(assert (=> bs!1889363 m!7860130))

(assert (=> b!7147863 d!2228430))

(declare-fun b_lambda!272833 () Bool)

(assert (= b_lambda!272827 (or d!2228376 b_lambda!272833)))

(declare-fun bs!1889364 () Bool)

(declare-fun d!2228432 () Bool)

(assert (= bs!1889364 (and d!2228432 d!2228376)))

(assert (=> bs!1889364 (= (dynLambda!28269 lambda!435912 (h!75847 zl!333)) (not (dynLambda!28269 lambda!435903 (h!75847 zl!333))))))

(declare-fun b_lambda!272837 () Bool)

(assert (=> (not b_lambda!272837) (not bs!1889364)))

(declare-fun m!7860132 () Bool)

(assert (=> bs!1889364 m!7860132))

(assert (=> b!7147891 d!2228432))

(declare-fun b_lambda!272835 () Bool)

(assert (= b_lambda!272823 (or d!2228374 b_lambda!272835)))

(declare-fun bs!1889365 () Bool)

(declare-fun d!2228434 () Bool)

(assert (= bs!1889365 (and d!2228434 d!2228374)))

(assert (=> bs!1889365 (= (dynLambda!28268 lambda!435909 (h!75846 (exprs!7716 (h!75847 zl!333)))) (validRegex!9384 (h!75846 (exprs!7716 (h!75847 zl!333)))))))

(assert (=> bs!1889365 m!7860130))

(assert (=> b!7147873 d!2228434))

(push 1)

(assert (not b!7147905))

(assert (not b!7147948))

(assert (not b!7147904))

(assert (not b!7147897))

(assert (not b!7147911))

(assert (not b!7147979))

(assert (not b!7147945))

(assert (not b!7147895))

(assert (not b!7147926))

(assert (not b!7147998))

(assert (not b!7147885))

(assert (not b!7147927))

(assert (not b!7147884))

(assert (not d!2228396))

(assert (not b!7147939))

(assert (not b!7147881))

(assert (not b!7147988))

(assert (not b!7147954))

(assert (not b!7147987))

(assert (not b!7148000))

(assert (not b!7147923))

(assert (not b!7147952))

(assert (not b!7147908))

(assert (not bm!651433))

(assert (not b!7147992))

(assert (not b!7147983))

(assert (not b!7147896))

(assert (not b!7147925))

(assert (not b!7147886))

(assert (not b!7147917))

(assert (not b!7147986))

(assert (not b_lambda!272829))

(assert (not b!7147982))

(assert (not b!7147919))

(assert (not b!7147938))

(assert (not b!7147933))

(assert (not b!7147967))

(assert (not b!7147970))

(assert (not b!7147946))

(assert (not b!7147916))

(assert (not b!7147922))

(assert (not b!7147900))

(assert (not b!7147941))

(assert (not b!7147870))

(assert (not b!7147830))

(assert (not bs!1889363))

(assert (not b!7147960))

(assert (not b!7147851))

(assert (not b!7147963))

(assert (not b!7147878))

(assert (not bm!651434))

(assert tp_is_empty!46081)

(assert (not d!2228420))

(assert (not b!7147930))

(assert (not b!7147956))

(assert (not b!7147942))

(assert (not bs!1889362))

(assert (not b!7147894))

(assert (not b!7147984))

(assert (not b!7147950))

(assert (not b!7147959))

(assert (not b!7147912))

(assert (not b!7147909))

(assert (not b!7147921))

(assert (not b!7147876))

(assert (not b!7147964))

(assert (not b!7147996))

(assert (not b!7147931))

(assert (not b!7147966))

(assert (not b!7147947))

(assert (not b_lambda!272833))

(assert (not b!7147958))

(assert (not b!7147901))

(assert (not b!7147913))

(assert (not b_lambda!272831))

(assert (not b!7147971))

(assert (not b!7147978))

(assert (not b!7147955))

(assert (not b!7147951))

(assert (not b!7147968))

(assert (not b_lambda!272837))

(assert (not b!7147991))

(assert (not b!7147972))

(assert (not b!7147872))

(assert (not d!2228402))

(assert (not b!7147934))

(assert (not bs!1889365))

(assert (not b!7147903))

(assert (not b!7147907))

(assert (not b!7147974))

(assert (not b!7147994))

(assert (not b!7147999))

(assert (not b!7147864))

(assert (not b!7147975))

(assert (not b!7147874))

(assert (not b!7147937))

(assert (not d!2228412))

(assert (not b!7147962))

(assert (not b!7147935))

(assert (not b_lambda!272835))

(assert (not b!7147882))

(assert (not b!7147980))

(assert (not b!7147918))

(assert (not b!7147880))

(assert (not b!7147899))

(assert (not b!7147915))

(assert (not b!7147976))

(assert (not b!7147892))

(assert (not b!7147929))

(assert (not b!7147995))

(assert (not b!7147990))

(assert (not b!7147943))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!272857 () Bool)

(assert (= b_lambda!272837 (or b!7147616 b_lambda!272857)))

(declare-fun bs!1889383 () Bool)

(declare-fun d!2228478 () Bool)

(assert (= bs!1889383 (and d!2228478 b!7147616)))

(assert (=> bs!1889383 (= (dynLambda!28269 lambda!435903 (h!75847 zl!333)) (= (generalisedConcat!2398 (exprs!7716 (h!75847 zl!333))) r!7278))))

(assert (=> bs!1889383 m!7859980))

(assert (=> bs!1889364 d!2228478))

(push 1)

(assert (not b!7147905))

(assert (not b!7147948))

(assert (not b!7147904))

(assert (not b!7147897))

(assert (not b!7147911))

(assert (not b!7147979))

(assert (not b!7147945))

(assert (not b!7147895))

(assert (not b!7147926))

(assert (not b!7147998))

(assert (not bs!1889383))

(assert (not b!7147885))

(assert (not b!7147927))

(assert (not b!7147884))

(assert (not d!2228396))

(assert (not b!7147939))

(assert (not b!7147881))

(assert (not b_lambda!272857))

(assert (not b!7147988))

(assert (not b!7147954))

(assert (not b!7147987))

(assert (not b!7148000))

(assert (not b!7147923))

(assert (not b!7147952))

(assert (not b!7147908))

(assert (not bm!651433))

(assert (not b!7147992))

(assert (not b!7147983))

(assert (not b!7147896))

(assert (not b!7147925))

(assert (not b!7147886))

(assert (not b!7147917))

(assert (not b!7147986))

(assert (not b_lambda!272829))

(assert (not b!7147982))

(assert (not b!7147919))

(assert (not b!7147938))

(assert (not b!7147933))

(assert (not b!7147967))

(assert (not b!7147970))

(assert (not b!7147946))

(assert (not b!7147916))

(assert (not b!7147922))

(assert (not b!7147900))

(assert (not b!7147941))

(assert (not b!7147870))

(assert (not b!7147830))

(assert (not bs!1889363))

(assert (not b!7147960))

(assert (not b!7147851))

(assert (not b!7147963))

(assert (not b!7147878))

(assert (not bm!651434))

(assert tp_is_empty!46081)

(assert (not d!2228420))

(assert (not b!7147930))

(assert (not b!7147956))

(assert (not b!7147942))

(assert (not bs!1889362))

(assert (not b!7147894))

(assert (not b!7147984))

(assert (not b!7147950))

(assert (not b!7147959))

(assert (not b!7147912))

(assert (not b!7147909))

(assert (not b!7147921))

(assert (not b!7147876))

(assert (not b!7147964))

(assert (not b!7147996))

(assert (not b!7147931))

(assert (not b!7147966))

(assert (not b!7147947))

(assert (not b_lambda!272833))

(assert (not b!7147958))

(assert (not b!7147901))

(assert (not b!7147913))

(assert (not b_lambda!272831))

(assert (not b!7147971))

(assert (not b!7147978))

(assert (not b!7147955))

(assert (not b!7147951))

(assert (not b!7147968))

(assert (not b!7147991))

(assert (not b!7147972))

(assert (not b!7147872))

(assert (not d!2228402))

(assert (not b!7147934))

(assert (not bs!1889365))

(assert (not b!7147903))

(assert (not b!7147907))

(assert (not b!7147974))

(assert (not b!7147994))

(assert (not b!7147999))

(assert (not b!7147864))

(assert (not b!7147975))

(assert (not b!7147874))

(assert (not b!7147937))

(assert (not d!2228412))

(assert (not b!7147962))

(assert (not b!7147935))

(assert (not b_lambda!272835))

(assert (not b!7147882))

(assert (not b!7147980))

(assert (not b!7147918))

(assert (not b!7147880))

(assert (not b!7147899))

(assert (not b!7147915))

(assert (not b!7147976))

(assert (not b!7147892))

(assert (not b!7147929))

(assert (not b!7147995))

(assert (not b!7147990))

(assert (not b!7147943))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

