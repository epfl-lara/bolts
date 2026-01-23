; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690518 () Bool)

(assert start!690518)

(declare-fun b!7093807 () Bool)

(declare-fun e!4264315 () Bool)

(declare-fun tp!1948992 () Bool)

(assert (=> b!7093807 (= e!4264315 tp!1948992)))

(declare-fun b!7093808 () Bool)

(declare-fun e!4264317 () Bool)

(declare-fun e!4264320 () Bool)

(assert (=> b!7093808 (= e!4264317 e!4264320)))

(declare-fun res!2896922 () Bool)

(assert (=> b!7093808 (=> (not res!2896922) (not e!4264320))))

(declare-datatypes ((C!35898 0))(
  ( (C!35899 (val!27655 Int)) )
))
(declare-datatypes ((Regex!17814 0))(
  ( (ElementMatch!17814 (c!1323887 C!35898)) (Concat!26659 (regOne!36140 Regex!17814) (regTwo!36140 Regex!17814)) (EmptyExpr!17814) (Star!17814 (reg!18143 Regex!17814)) (EmptyLang!17814) (Union!17814 (regOne!36141 Regex!17814) (regTwo!36141 Regex!17814)) )
))
(declare-datatypes ((List!68777 0))(
  ( (Nil!68653) (Cons!68653 (h!75101 Regex!17814) (t!382572 List!68777)) )
))
(declare-datatypes ((Context!13620 0))(
  ( (Context!13621 (exprs!7310 List!68777)) )
))
(declare-fun c!9994 () Context!13620)

(declare-fun lambda!430240 () Int)

(declare-fun forall!16742 (List!68777 Int) Bool)

(assert (=> b!7093808 (= res!2896922 (forall!16742 (exprs!7310 c!9994) lambda!430240))))

(declare-fun b!7093809 () Bool)

(declare-fun e!4264319 () Bool)

(declare-fun tp!1948997 () Bool)

(assert (=> b!7093809 (= e!4264319 tp!1948997)))

(declare-fun b!7093810 () Bool)

(declare-fun res!2896918 () Bool)

(assert (=> b!7093810 (=> (not res!2896918) (not e!4264317))))

(declare-fun r!11554 () Regex!17814)

(declare-fun a!1901 () C!35898)

(assert (=> b!7093810 (= res!2896918 (and (or (not (is-ElementMatch!17814 r!11554)) (not (= (c!1323887 r!11554) a!1901))) (not (is-Union!17814 r!11554))))))

(declare-fun b!7093811 () Bool)

(declare-fun res!2896919 () Bool)

(assert (=> b!7093811 (=> (not res!2896919) (not e!4264317))))

(assert (=> b!7093811 (= res!2896919 (is-Concat!26659 r!11554))))

(declare-fun b!7093812 () Bool)

(declare-fun tp_is_empty!44861 () Bool)

(assert (=> b!7093812 (= e!4264319 tp_is_empty!44861)))

(declare-fun b!7093813 () Bool)

(declare-fun e!4264316 () Bool)

(declare-fun nullable!7454 (Regex!17814) Bool)

(assert (=> b!7093813 (= e!4264316 (not (nullable!7454 (regOne!36140 r!11554))))))

(declare-fun b!7093814 () Bool)

(declare-fun res!2896920 () Bool)

(assert (=> b!7093814 (=> (not res!2896920) (not e!4264317))))

(assert (=> b!7093814 (= res!2896920 e!4264316)))

(declare-fun res!2896921 () Bool)

(assert (=> b!7093814 (=> res!2896921 e!4264316)))

(assert (=> b!7093814 (= res!2896921 (not (is-Concat!26659 r!11554)))))

(declare-fun res!2896917 () Bool)

(assert (=> start!690518 (=> (not res!2896917) (not e!4264317))))

(declare-fun validRegex!9089 (Regex!17814) Bool)

(assert (=> start!690518 (= res!2896917 (validRegex!9089 r!11554))))

(assert (=> start!690518 e!4264317))

(assert (=> start!690518 e!4264319))

(assert (=> start!690518 tp_is_empty!44861))

(declare-fun e!4264318 () Bool)

(declare-fun inv!87401 (Context!13620) Bool)

(assert (=> start!690518 (and (inv!87401 c!9994) e!4264318)))

(declare-fun auxCtx!45 () Context!13620)

(assert (=> start!690518 (and (inv!87401 auxCtx!45) e!4264315)))

(declare-fun b!7093815 () Bool)

(declare-fun tp!1948996 () Bool)

(declare-fun tp!1948991 () Bool)

(assert (=> b!7093815 (= e!4264319 (and tp!1948996 tp!1948991))))

(declare-fun b!7093816 () Bool)

(assert (=> b!7093816 (= e!4264320 (not (forall!16742 (exprs!7310 auxCtx!45) lambda!430240)))))

(declare-fun b!7093817 () Bool)

(declare-fun tp!1948994 () Bool)

(assert (=> b!7093817 (= e!4264318 tp!1948994)))

(declare-fun b!7093818 () Bool)

(declare-fun tp!1948993 () Bool)

(declare-fun tp!1948995 () Bool)

(assert (=> b!7093818 (= e!4264319 (and tp!1948993 tp!1948995))))

(assert (= (and start!690518 res!2896917) b!7093810))

(assert (= (and b!7093810 res!2896918) b!7093814))

(assert (= (and b!7093814 (not res!2896921)) b!7093813))

(assert (= (and b!7093814 res!2896920) b!7093811))

(assert (= (and b!7093811 res!2896919) b!7093808))

(assert (= (and b!7093808 res!2896922) b!7093816))

(assert (= (and start!690518 (is-ElementMatch!17814 r!11554)) b!7093812))

(assert (= (and start!690518 (is-Concat!26659 r!11554)) b!7093815))

(assert (= (and start!690518 (is-Star!17814 r!11554)) b!7093809))

(assert (= (and start!690518 (is-Union!17814 r!11554)) b!7093818))

(assert (= start!690518 b!7093817))

(assert (= start!690518 b!7093807))

(declare-fun m!7822328 () Bool)

(assert (=> b!7093808 m!7822328))

(declare-fun m!7822330 () Bool)

(assert (=> b!7093813 m!7822330))

(declare-fun m!7822332 () Bool)

(assert (=> start!690518 m!7822332))

(declare-fun m!7822334 () Bool)

(assert (=> start!690518 m!7822334))

(declare-fun m!7822336 () Bool)

(assert (=> start!690518 m!7822336))

(declare-fun m!7822338 () Bool)

(assert (=> b!7093816 m!7822338))

(push 1)

(assert (not start!690518))

(assert (not b!7093807))

(assert (not b!7093818))

(assert (not b!7093808))

(assert (not b!7093816))

(assert (not b!7093815))

(assert (not b!7093809))

(assert (not b!7093817))

(assert tp_is_empty!44861)

(assert (not b!7093813))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2217457 () Bool)

(declare-fun nullableFct!2861 (Regex!17814) Bool)

(assert (=> d!2217457 (= (nullable!7454 (regOne!36140 r!11554)) (nullableFct!2861 (regOne!36140 r!11554)))))

(declare-fun bs!1883761 () Bool)

(assert (= bs!1883761 d!2217457))

(declare-fun m!7822352 () Bool)

(assert (=> bs!1883761 m!7822352))

(assert (=> b!7093813 d!2217457))

(declare-fun d!2217459 () Bool)

(declare-fun res!2896945 () Bool)

(declare-fun e!4264343 () Bool)

(assert (=> d!2217459 (=> res!2896945 e!4264343)))

(assert (=> d!2217459 (= res!2896945 (is-Nil!68653 (exprs!7310 c!9994)))))

(assert (=> d!2217459 (= (forall!16742 (exprs!7310 c!9994) lambda!430240) e!4264343)))

(declare-fun b!7093859 () Bool)

(declare-fun e!4264344 () Bool)

(assert (=> b!7093859 (= e!4264343 e!4264344)))

(declare-fun res!2896946 () Bool)

(assert (=> b!7093859 (=> (not res!2896946) (not e!4264344))))

(declare-fun dynLambda!28010 (Int Regex!17814) Bool)

(assert (=> b!7093859 (= res!2896946 (dynLambda!28010 lambda!430240 (h!75101 (exprs!7310 c!9994))))))

(declare-fun b!7093860 () Bool)

(assert (=> b!7093860 (= e!4264344 (forall!16742 (t!382572 (exprs!7310 c!9994)) lambda!430240))))

(assert (= (and d!2217459 (not res!2896945)) b!7093859))

(assert (= (and b!7093859 res!2896946) b!7093860))

(declare-fun b_lambda!271081 () Bool)

(assert (=> (not b_lambda!271081) (not b!7093859)))

(declare-fun m!7822354 () Bool)

(assert (=> b!7093859 m!7822354))

(declare-fun m!7822356 () Bool)

(assert (=> b!7093860 m!7822356))

(assert (=> b!7093808 d!2217459))

(declare-fun b!7093879 () Bool)

(declare-fun res!2896958 () Bool)

(declare-fun e!4264361 () Bool)

(assert (=> b!7093879 (=> (not res!2896958) (not e!4264361))))

(declare-fun call!645420 () Bool)

(assert (=> b!7093879 (= res!2896958 call!645420)))

(declare-fun e!4264365 () Bool)

(assert (=> b!7093879 (= e!4264365 e!4264361)))

(declare-fun b!7093880 () Bool)

(declare-fun e!4264359 () Bool)

(assert (=> b!7093880 (= e!4264359 e!4264365)))

(declare-fun c!1323893 () Bool)

(assert (=> b!7093880 (= c!1323893 (is-Union!17814 r!11554))))

(declare-fun bm!645416 () Bool)

(declare-fun call!645422 () Bool)

(assert (=> bm!645416 (= call!645420 call!645422)))

(declare-fun b!7093881 () Bool)

(declare-fun e!4264360 () Bool)

(assert (=> b!7093881 (= e!4264360 e!4264359)))

(declare-fun c!1323894 () Bool)

(assert (=> b!7093881 (= c!1323894 (is-Star!17814 r!11554))))

(declare-fun b!7093882 () Bool)

(declare-fun e!4264363 () Bool)

(declare-fun e!4264364 () Bool)

(assert (=> b!7093882 (= e!4264363 e!4264364)))

(declare-fun res!2896960 () Bool)

(assert (=> b!7093882 (=> (not res!2896960) (not e!4264364))))

(declare-fun call!645421 () Bool)

(assert (=> b!7093882 (= res!2896960 call!645421)))

(declare-fun b!7093883 () Bool)

(declare-fun res!2896957 () Bool)

(assert (=> b!7093883 (=> res!2896957 e!4264363)))

(assert (=> b!7093883 (= res!2896957 (not (is-Concat!26659 r!11554)))))

(assert (=> b!7093883 (= e!4264365 e!4264363)))

(declare-fun bm!645417 () Bool)

(assert (=> bm!645417 (= call!645422 (validRegex!9089 (ite c!1323894 (reg!18143 r!11554) (ite c!1323893 (regOne!36141 r!11554) (regTwo!36140 r!11554)))))))

(declare-fun b!7093884 () Bool)

(declare-fun e!4264362 () Bool)

(assert (=> b!7093884 (= e!4264359 e!4264362)))

(declare-fun res!2896961 () Bool)

(assert (=> b!7093884 (= res!2896961 (not (nullable!7454 (reg!18143 r!11554))))))

(assert (=> b!7093884 (=> (not res!2896961) (not e!4264362))))

(declare-fun b!7093885 () Bool)

(assert (=> b!7093885 (= e!4264364 call!645420)))

(declare-fun bm!645415 () Bool)

(assert (=> bm!645415 (= call!645421 (validRegex!9089 (ite c!1323893 (regTwo!36141 r!11554) (regOne!36140 r!11554))))))

(declare-fun d!2217461 () Bool)

(declare-fun res!2896959 () Bool)

(assert (=> d!2217461 (=> res!2896959 e!4264360)))

(assert (=> d!2217461 (= res!2896959 (is-ElementMatch!17814 r!11554))))

(assert (=> d!2217461 (= (validRegex!9089 r!11554) e!4264360)))

(declare-fun b!7093886 () Bool)

(assert (=> b!7093886 (= e!4264361 call!645421)))

(declare-fun b!7093887 () Bool)

(assert (=> b!7093887 (= e!4264362 call!645422)))

(assert (= (and d!2217461 (not res!2896959)) b!7093881))

(assert (= (and b!7093881 c!1323894) b!7093884))

(assert (= (and b!7093881 (not c!1323894)) b!7093880))

(assert (= (and b!7093884 res!2896961) b!7093887))

(assert (= (and b!7093880 c!1323893) b!7093879))

(assert (= (and b!7093880 (not c!1323893)) b!7093883))

(assert (= (and b!7093879 res!2896958) b!7093886))

(assert (= (and b!7093883 (not res!2896957)) b!7093882))

(assert (= (and b!7093882 res!2896960) b!7093885))

(assert (= (or b!7093879 b!7093885) bm!645416))

(assert (= (or b!7093886 b!7093882) bm!645415))

(assert (= (or b!7093887 bm!645416) bm!645417))

(declare-fun m!7822358 () Bool)

(assert (=> bm!645417 m!7822358))

(declare-fun m!7822360 () Bool)

(assert (=> b!7093884 m!7822360))

(declare-fun m!7822362 () Bool)

(assert (=> bm!645415 m!7822362))

(assert (=> start!690518 d!2217461))

(declare-fun bs!1883762 () Bool)

(declare-fun d!2217463 () Bool)

(assert (= bs!1883762 (and d!2217463 b!7093808)))

(declare-fun lambda!430246 () Int)

(assert (=> bs!1883762 (= lambda!430246 lambda!430240)))

(assert (=> d!2217463 (= (inv!87401 c!9994) (forall!16742 (exprs!7310 c!9994) lambda!430246))))

(declare-fun bs!1883763 () Bool)

(assert (= bs!1883763 d!2217463))

(declare-fun m!7822364 () Bool)

(assert (=> bs!1883763 m!7822364))

(assert (=> start!690518 d!2217463))

(declare-fun bs!1883764 () Bool)

(declare-fun d!2217465 () Bool)

(assert (= bs!1883764 (and d!2217465 b!7093808)))

(declare-fun lambda!430247 () Int)

(assert (=> bs!1883764 (= lambda!430247 lambda!430240)))

(declare-fun bs!1883765 () Bool)

(assert (= bs!1883765 (and d!2217465 d!2217463)))

(assert (=> bs!1883765 (= lambda!430247 lambda!430246)))

(assert (=> d!2217465 (= (inv!87401 auxCtx!45) (forall!16742 (exprs!7310 auxCtx!45) lambda!430247))))

(declare-fun bs!1883766 () Bool)

(assert (= bs!1883766 d!2217465))

(declare-fun m!7822366 () Bool)

(assert (=> bs!1883766 m!7822366))

(assert (=> start!690518 d!2217465))

(declare-fun d!2217469 () Bool)

(declare-fun res!2896962 () Bool)

(declare-fun e!4264366 () Bool)

(assert (=> d!2217469 (=> res!2896962 e!4264366)))

(assert (=> d!2217469 (= res!2896962 (is-Nil!68653 (exprs!7310 auxCtx!45)))))

(assert (=> d!2217469 (= (forall!16742 (exprs!7310 auxCtx!45) lambda!430240) e!4264366)))

(declare-fun b!7093888 () Bool)

(declare-fun e!4264367 () Bool)

(assert (=> b!7093888 (= e!4264366 e!4264367)))

(declare-fun res!2896963 () Bool)

(assert (=> b!7093888 (=> (not res!2896963) (not e!4264367))))

(assert (=> b!7093888 (= res!2896963 (dynLambda!28010 lambda!430240 (h!75101 (exprs!7310 auxCtx!45))))))

(declare-fun b!7093889 () Bool)

(assert (=> b!7093889 (= e!4264367 (forall!16742 (t!382572 (exprs!7310 auxCtx!45)) lambda!430240))))

(assert (= (and d!2217469 (not res!2896962)) b!7093888))

(assert (= (and b!7093888 res!2896963) b!7093889))

(declare-fun b_lambda!271083 () Bool)

(assert (=> (not b_lambda!271083) (not b!7093888)))

(declare-fun m!7822368 () Bool)

(assert (=> b!7093888 m!7822368))

(declare-fun m!7822370 () Bool)

(assert (=> b!7093889 m!7822370))

(assert (=> b!7093816 d!2217469))

(declare-fun b!7093894 () Bool)

(declare-fun e!4264370 () Bool)

(declare-fun tp!1949023 () Bool)

(declare-fun tp!1949024 () Bool)

(assert (=> b!7093894 (= e!4264370 (and tp!1949023 tp!1949024))))

(assert (=> b!7093807 (= tp!1948992 e!4264370)))

(assert (= (and b!7093807 (is-Cons!68653 (exprs!7310 auxCtx!45))) b!7093894))

(declare-fun b!7093906 () Bool)

(declare-fun e!4264373 () Bool)

(declare-fun tp!1949035 () Bool)

(declare-fun tp!1949038 () Bool)

(assert (=> b!7093906 (= e!4264373 (and tp!1949035 tp!1949038))))

(assert (=> b!7093818 (= tp!1948993 e!4264373)))

(declare-fun b!7093907 () Bool)

(declare-fun tp!1949036 () Bool)

(assert (=> b!7093907 (= e!4264373 tp!1949036)))

(declare-fun b!7093908 () Bool)

(declare-fun tp!1949039 () Bool)

(declare-fun tp!1949037 () Bool)

(assert (=> b!7093908 (= e!4264373 (and tp!1949039 tp!1949037))))

(declare-fun b!7093905 () Bool)

(assert (=> b!7093905 (= e!4264373 tp_is_empty!44861)))

(assert (= (and b!7093818 (is-ElementMatch!17814 (regOne!36141 r!11554))) b!7093905))

(assert (= (and b!7093818 (is-Concat!26659 (regOne!36141 r!11554))) b!7093906))

(assert (= (and b!7093818 (is-Star!17814 (regOne!36141 r!11554))) b!7093907))

(assert (= (and b!7093818 (is-Union!17814 (regOne!36141 r!11554))) b!7093908))

(declare-fun b!7093910 () Bool)

(declare-fun e!4264374 () Bool)

(declare-fun tp!1949040 () Bool)

(declare-fun tp!1949043 () Bool)

(assert (=> b!7093910 (= e!4264374 (and tp!1949040 tp!1949043))))

(assert (=> b!7093818 (= tp!1948995 e!4264374)))

(declare-fun b!7093911 () Bool)

(declare-fun tp!1949041 () Bool)

(assert (=> b!7093911 (= e!4264374 tp!1949041)))

(declare-fun b!7093912 () Bool)

(declare-fun tp!1949044 () Bool)

(declare-fun tp!1949042 () Bool)

(assert (=> b!7093912 (= e!4264374 (and tp!1949044 tp!1949042))))

(declare-fun b!7093909 () Bool)

(assert (=> b!7093909 (= e!4264374 tp_is_empty!44861)))

(assert (= (and b!7093818 (is-ElementMatch!17814 (regTwo!36141 r!11554))) b!7093909))

(assert (= (and b!7093818 (is-Concat!26659 (regTwo!36141 r!11554))) b!7093910))

(assert (= (and b!7093818 (is-Star!17814 (regTwo!36141 r!11554))) b!7093911))

(assert (= (and b!7093818 (is-Union!17814 (regTwo!36141 r!11554))) b!7093912))

(declare-fun b!7093913 () Bool)

(declare-fun e!4264375 () Bool)

(declare-fun tp!1949045 () Bool)

(declare-fun tp!1949046 () Bool)

(assert (=> b!7093913 (= e!4264375 (and tp!1949045 tp!1949046))))

(assert (=> b!7093817 (= tp!1948994 e!4264375)))

(assert (= (and b!7093817 (is-Cons!68653 (exprs!7310 c!9994))) b!7093913))

(declare-fun b!7093915 () Bool)

(declare-fun e!4264376 () Bool)

(declare-fun tp!1949047 () Bool)

(declare-fun tp!1949050 () Bool)

(assert (=> b!7093915 (= e!4264376 (and tp!1949047 tp!1949050))))

(assert (=> b!7093815 (= tp!1948996 e!4264376)))

(declare-fun b!7093916 () Bool)

(declare-fun tp!1949048 () Bool)

(assert (=> b!7093916 (= e!4264376 tp!1949048)))

(declare-fun b!7093917 () Bool)

(declare-fun tp!1949051 () Bool)

(declare-fun tp!1949049 () Bool)

(assert (=> b!7093917 (= e!4264376 (and tp!1949051 tp!1949049))))

(declare-fun b!7093914 () Bool)

(assert (=> b!7093914 (= e!4264376 tp_is_empty!44861)))

(assert (= (and b!7093815 (is-ElementMatch!17814 (regOne!36140 r!11554))) b!7093914))

(assert (= (and b!7093815 (is-Concat!26659 (regOne!36140 r!11554))) b!7093915))

(assert (= (and b!7093815 (is-Star!17814 (regOne!36140 r!11554))) b!7093916))

(assert (= (and b!7093815 (is-Union!17814 (regOne!36140 r!11554))) b!7093917))

(declare-fun b!7093919 () Bool)

(declare-fun e!4264377 () Bool)

(declare-fun tp!1949052 () Bool)

(declare-fun tp!1949055 () Bool)

(assert (=> b!7093919 (= e!4264377 (and tp!1949052 tp!1949055))))

(assert (=> b!7093815 (= tp!1948991 e!4264377)))

(declare-fun b!7093920 () Bool)

(declare-fun tp!1949053 () Bool)

(assert (=> b!7093920 (= e!4264377 tp!1949053)))

(declare-fun b!7093921 () Bool)

(declare-fun tp!1949056 () Bool)

(declare-fun tp!1949054 () Bool)

(assert (=> b!7093921 (= e!4264377 (and tp!1949056 tp!1949054))))

(declare-fun b!7093918 () Bool)

(assert (=> b!7093918 (= e!4264377 tp_is_empty!44861)))

(assert (= (and b!7093815 (is-ElementMatch!17814 (regTwo!36140 r!11554))) b!7093918))

(assert (= (and b!7093815 (is-Concat!26659 (regTwo!36140 r!11554))) b!7093919))

(assert (= (and b!7093815 (is-Star!17814 (regTwo!36140 r!11554))) b!7093920))

(assert (= (and b!7093815 (is-Union!17814 (regTwo!36140 r!11554))) b!7093921))

(declare-fun b!7093923 () Bool)

(declare-fun e!4264378 () Bool)

(declare-fun tp!1949057 () Bool)

(declare-fun tp!1949060 () Bool)

(assert (=> b!7093923 (= e!4264378 (and tp!1949057 tp!1949060))))

(assert (=> b!7093809 (= tp!1948997 e!4264378)))

(declare-fun b!7093924 () Bool)

(declare-fun tp!1949058 () Bool)

(assert (=> b!7093924 (= e!4264378 tp!1949058)))

(declare-fun b!7093925 () Bool)

(declare-fun tp!1949061 () Bool)

(declare-fun tp!1949059 () Bool)

(assert (=> b!7093925 (= e!4264378 (and tp!1949061 tp!1949059))))

(declare-fun b!7093922 () Bool)

(assert (=> b!7093922 (= e!4264378 tp_is_empty!44861)))

(assert (= (and b!7093809 (is-ElementMatch!17814 (reg!18143 r!11554))) b!7093922))

(assert (= (and b!7093809 (is-Concat!26659 (reg!18143 r!11554))) b!7093923))

(assert (= (and b!7093809 (is-Star!17814 (reg!18143 r!11554))) b!7093924))

(assert (= (and b!7093809 (is-Union!17814 (reg!18143 r!11554))) b!7093925))

(declare-fun b_lambda!271085 () Bool)

(assert (= b_lambda!271083 (or b!7093808 b_lambda!271085)))

(declare-fun bs!1883767 () Bool)

(declare-fun d!2217471 () Bool)

(assert (= bs!1883767 (and d!2217471 b!7093808)))

(assert (=> bs!1883767 (= (dynLambda!28010 lambda!430240 (h!75101 (exprs!7310 auxCtx!45))) (validRegex!9089 (h!75101 (exprs!7310 auxCtx!45))))))

(declare-fun m!7822372 () Bool)

(assert (=> bs!1883767 m!7822372))

(assert (=> b!7093888 d!2217471))

(declare-fun b_lambda!271087 () Bool)

(assert (= b_lambda!271081 (or b!7093808 b_lambda!271087)))

(declare-fun bs!1883768 () Bool)

(declare-fun d!2217473 () Bool)

(assert (= bs!1883768 (and d!2217473 b!7093808)))

(assert (=> bs!1883768 (= (dynLambda!28010 lambda!430240 (h!75101 (exprs!7310 c!9994))) (validRegex!9089 (h!75101 (exprs!7310 c!9994))))))

(declare-fun m!7822374 () Bool)

(assert (=> bs!1883768 m!7822374))

(assert (=> b!7093859 d!2217473))

(push 1)

(assert (not d!2217463))

(assert (not bs!1883767))

(assert (not b!7093911))

(assert (not b!7093921))

(assert (not b!7093924))

(assert (not b!7093917))

(assert (not bm!645415))

(assert (not b!7093884))

(assert (not b!7093907))

(assert (not b!7093860))

(assert (not b!7093908))

(assert (not bm!645417))

(assert (not b!7093910))

(assert (not b!7093906))

(assert (not b!7093925))

(assert (not b!7093923))

(assert (not b!7093920))

(assert (not b_lambda!271087))

(assert (not bs!1883768))

(assert tp_is_empty!44861)

(assert (not b!7093913))

(assert (not b!7093894))

(assert (not b!7093915))

(assert (not b!7093889))

(assert (not b!7093912))

(assert (not b_lambda!271085))

(assert (not d!2217457))

(assert (not b!7093919))

(assert (not d!2217465))

(assert (not b!7093916))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

