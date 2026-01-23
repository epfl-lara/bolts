; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733118 () Bool)

(assert start!733118)

(declare-fun b!7605708 () Bool)

(assert (=> b!7605708 true))

(assert (=> b!7605708 true))

(assert (=> b!7605708 true))

(declare-fun bs!1942659 () Bool)

(declare-fun b!7605711 () Bool)

(assert (= bs!1942659 (and b!7605711 b!7605708)))

(declare-fun lambda!468019 () Int)

(declare-fun lambda!468018 () Int)

(assert (=> bs!1942659 (not (= lambda!468019 lambda!468018))))

(assert (=> b!7605711 true))

(assert (=> b!7605711 true))

(assert (=> b!7605711 true))

(declare-fun b!7605700 () Bool)

(declare-fun e!4524163 () Bool)

(declare-fun e!4524160 () Bool)

(assert (=> b!7605700 (= e!4524163 (not e!4524160))))

(declare-fun res!3045413 () Bool)

(assert (=> b!7605700 (=> res!3045413 e!4524160)))

(declare-fun lt!2654795 () Bool)

(declare-fun lt!2654797 () Bool)

(assert (=> b!7605700 (= res!3045413 (or (not lt!2654795) (not lt!2654797)))))

(declare-datatypes ((C!40698 0))(
  ( (C!40699 (val!30789 Int)) )
))
(declare-datatypes ((Regex!20186 0))(
  ( (ElementMatch!20186 (c!1402687 C!40698)) (Concat!29031 (regOne!40884 Regex!20186) (regTwo!40884 Regex!20186)) (EmptyExpr!20186) (Star!20186 (reg!20515 Regex!20186)) (EmptyLang!20186) (Union!20186 (regOne!40885 Regex!20186) (regTwo!40885 Regex!20186)) )
))
(declare-fun r2!3249 () Regex!20186)

(declare-datatypes ((List!73069 0))(
  ( (Nil!72945) (Cons!72945 (h!79393 C!40698) (t!387804 List!73069)) )
))
(declare-datatypes ((tuple2!69082 0))(
  ( (tuple2!69083 (_1!37844 List!73069) (_2!37844 List!73069)) )
))
(declare-fun lt!2654799 () tuple2!69082)

(declare-fun matchRSpec!4461 (Regex!20186 List!73069) Bool)

(assert (=> b!7605700 (= lt!2654797 (matchRSpec!4461 r2!3249 (_2!37844 lt!2654799)))))

(declare-fun matchR!9749 (Regex!20186 List!73069) Bool)

(assert (=> b!7605700 (= lt!2654797 (matchR!9749 r2!3249 (_2!37844 lt!2654799)))))

(declare-datatypes ((Unit!167252 0))(
  ( (Unit!167253) )
))
(declare-fun lt!2654796 () Unit!167252)

(declare-fun mainMatchTheorem!4455 (Regex!20186 List!73069) Unit!167252)

(assert (=> b!7605700 (= lt!2654796 (mainMatchTheorem!4455 r2!3249 (_2!37844 lt!2654799)))))

(declare-fun r1!3349 () Regex!20186)

(assert (=> b!7605700 (= lt!2654795 (matchRSpec!4461 r1!3349 (_1!37844 lt!2654799)))))

(assert (=> b!7605700 (= lt!2654795 (matchR!9749 r1!3349 (_1!37844 lt!2654799)))))

(declare-fun lt!2654800 () Unit!167252)

(assert (=> b!7605700 (= lt!2654800 (mainMatchTheorem!4455 r1!3349 (_1!37844 lt!2654799)))))

(declare-fun b!7605701 () Bool)

(declare-fun e!4524162 () Bool)

(declare-fun tp_is_empty!50727 () Bool)

(declare-fun tp!2218197 () Bool)

(assert (=> b!7605701 (= e!4524162 (and tp_is_empty!50727 tp!2218197))))

(declare-fun res!3045412 () Bool)

(declare-fun e!4524159 () Bool)

(assert (=> start!733118 (=> (not res!3045412) (not e!4524159))))

(declare-fun validRegex!10614 (Regex!20186) Bool)

(assert (=> start!733118 (= res!3045412 (validRegex!10614 r1!3349))))

(assert (=> start!733118 e!4524159))

(declare-fun e!4524161 () Bool)

(assert (=> start!733118 e!4524161))

(declare-fun e!4524158 () Bool)

(assert (=> start!733118 e!4524158))

(assert (=> start!733118 e!4524162))

(declare-fun b!7605702 () Bool)

(declare-fun tp!2218198 () Bool)

(declare-fun tp!2218194 () Bool)

(assert (=> b!7605702 (= e!4524161 (and tp!2218198 tp!2218194))))

(declare-fun b!7605703 () Bool)

(declare-fun tp!2218193 () Bool)

(assert (=> b!7605703 (= e!4524161 tp!2218193)))

(declare-fun b!7605704 () Bool)

(declare-fun tp!2218196 () Bool)

(declare-fun tp!2218195 () Bool)

(assert (=> b!7605704 (= e!4524158 (and tp!2218196 tp!2218195))))

(declare-fun b!7605705 () Bool)

(declare-fun tp!2218201 () Bool)

(declare-fun tp!2218202 () Bool)

(assert (=> b!7605705 (= e!4524158 (and tp!2218201 tp!2218202))))

(declare-fun b!7605706 () Bool)

(declare-fun res!3045414 () Bool)

(assert (=> b!7605706 (=> (not res!3045414) (not e!4524159))))

(assert (=> b!7605706 (= res!3045414 (validRegex!10614 r2!3249))))

(declare-fun b!7605707 () Bool)

(declare-fun tp!2218200 () Bool)

(assert (=> b!7605707 (= e!4524158 tp!2218200)))

(declare-fun res!3045415 () Bool)

(assert (=> b!7605708 (=> (not res!3045415) (not e!4524159))))

(declare-fun Exists!4414 (Int) Bool)

(assert (=> b!7605708 (= res!3045415 (Exists!4414 lambda!468018))))

(declare-fun b!7605709 () Bool)

(assert (=> b!7605709 (= e!4524159 e!4524163)))

(declare-fun res!3045411 () Bool)

(assert (=> b!7605709 (=> (not res!3045411) (not e!4524163))))

(declare-fun s!10235 () List!73069)

(declare-fun ++!17584 (List!73069 List!73069) List!73069)

(assert (=> b!7605709 (= res!3045411 (= (++!17584 (_1!37844 lt!2654799) (_2!37844 lt!2654799)) s!10235))))

(declare-fun pickWitness!429 (Int) tuple2!69082)

(assert (=> b!7605709 (= lt!2654799 (pickWitness!429 lambda!468018))))

(declare-fun b!7605710 () Bool)

(assert (=> b!7605710 (= e!4524161 tp_is_empty!50727)))

(assert (=> b!7605711 (= e!4524160 (= (Exists!4414 lambda!468018) (Exists!4414 lambda!468019)))))

(declare-fun lt!2654798 () Unit!167252)

(declare-fun ExistsThe!37 (tuple2!69082 Int) Unit!167252)

(assert (=> b!7605711 (= lt!2654798 (ExistsThe!37 lt!2654799 lambda!468019))))

(declare-fun b!7605712 () Bool)

(declare-fun tp!2218199 () Bool)

(declare-fun tp!2218192 () Bool)

(assert (=> b!7605712 (= e!4524161 (and tp!2218199 tp!2218192))))

(declare-fun b!7605713 () Bool)

(assert (=> b!7605713 (= e!4524158 tp_is_empty!50727)))

(assert (= (and start!733118 res!3045412) b!7605706))

(assert (= (and b!7605706 res!3045414) b!7605708))

(assert (= (and b!7605708 res!3045415) b!7605709))

(assert (= (and b!7605709 res!3045411) b!7605700))

(assert (= (and b!7605700 (not res!3045413)) b!7605711))

(assert (= (and start!733118 (is-ElementMatch!20186 r1!3349)) b!7605710))

(assert (= (and start!733118 (is-Concat!29031 r1!3349)) b!7605712))

(assert (= (and start!733118 (is-Star!20186 r1!3349)) b!7605703))

(assert (= (and start!733118 (is-Union!20186 r1!3349)) b!7605702))

(assert (= (and start!733118 (is-ElementMatch!20186 r2!3249)) b!7605713))

(assert (= (and start!733118 (is-Concat!29031 r2!3249)) b!7605705))

(assert (= (and start!733118 (is-Star!20186 r2!3249)) b!7605707))

(assert (= (and start!733118 (is-Union!20186 r2!3249)) b!7605704))

(assert (= (and start!733118 (is-Cons!72945 s!10235)) b!7605701))

(declare-fun m!8146626 () Bool)

(assert (=> b!7605700 m!8146626))

(declare-fun m!8146628 () Bool)

(assert (=> b!7605700 m!8146628))

(declare-fun m!8146630 () Bool)

(assert (=> b!7605700 m!8146630))

(declare-fun m!8146632 () Bool)

(assert (=> b!7605700 m!8146632))

(declare-fun m!8146634 () Bool)

(assert (=> b!7605700 m!8146634))

(declare-fun m!8146636 () Bool)

(assert (=> b!7605700 m!8146636))

(declare-fun m!8146638 () Bool)

(assert (=> b!7605709 m!8146638))

(declare-fun m!8146640 () Bool)

(assert (=> b!7605709 m!8146640))

(declare-fun m!8146642 () Bool)

(assert (=> start!733118 m!8146642))

(declare-fun m!8146644 () Bool)

(assert (=> b!7605711 m!8146644))

(declare-fun m!8146646 () Bool)

(assert (=> b!7605711 m!8146646))

(declare-fun m!8146648 () Bool)

(assert (=> b!7605711 m!8146648))

(assert (=> b!7605708 m!8146644))

(declare-fun m!8146650 () Bool)

(assert (=> b!7605706 m!8146650))

(push 1)

(assert (not b!7605701))

(assert (not b!7605711))

(assert (not b!7605705))

(assert (not start!733118))

(assert (not b!7605709))

(assert (not b!7605700))

(assert (not b!7605707))

(assert (not b!7605706))

(assert (not b!7605703))

(assert (not b!7605708))

(assert (not b!7605712))

(assert (not b!7605702))

(assert tp_is_empty!50727)

(assert (not b!7605704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2321793 () Bool)

(declare-fun choose!58722 (Int) Bool)

(assert (=> d!2321793 (= (Exists!4414 lambda!468018) (choose!58722 lambda!468018))))

(declare-fun bs!1942661 () Bool)

(assert (= bs!1942661 d!2321793))

(declare-fun m!8146678 () Bool)

(assert (=> bs!1942661 m!8146678))

(assert (=> b!7605708 d!2321793))

(declare-fun d!2321795 () Bool)

(declare-fun e!4524197 () Bool)

(assert (=> d!2321795 e!4524197))

(declare-fun res!3045455 () Bool)

(assert (=> d!2321795 (=> (not res!3045455) (not e!4524197))))

(declare-fun lt!2654821 () List!73069)

(declare-fun content!15428 (List!73069) (Set C!40698))

(assert (=> d!2321795 (= res!3045455 (= (content!15428 lt!2654821) (set.union (content!15428 (_1!37844 lt!2654799)) (content!15428 (_2!37844 lt!2654799)))))))

(declare-fun e!4524196 () List!73069)

(assert (=> d!2321795 (= lt!2654821 e!4524196)))

(declare-fun c!1402691 () Bool)

(assert (=> d!2321795 (= c!1402691 (is-Nil!72945 (_1!37844 lt!2654799)))))

(assert (=> d!2321795 (= (++!17584 (_1!37844 lt!2654799) (_2!37844 lt!2654799)) lt!2654821)))

(declare-fun b!7605795 () Bool)

(assert (=> b!7605795 (= e!4524197 (or (not (= (_2!37844 lt!2654799) Nil!72945)) (= lt!2654821 (_1!37844 lt!2654799))))))

(declare-fun b!7605793 () Bool)

(assert (=> b!7605793 (= e!4524196 (Cons!72945 (h!79393 (_1!37844 lt!2654799)) (++!17584 (t!387804 (_1!37844 lt!2654799)) (_2!37844 lt!2654799))))))

(declare-fun b!7605792 () Bool)

(assert (=> b!7605792 (= e!4524196 (_2!37844 lt!2654799))))

(declare-fun b!7605794 () Bool)

(declare-fun res!3045456 () Bool)

(assert (=> b!7605794 (=> (not res!3045456) (not e!4524197))))

(declare-fun size!42521 (List!73069) Int)

(assert (=> b!7605794 (= res!3045456 (= (size!42521 lt!2654821) (+ (size!42521 (_1!37844 lt!2654799)) (size!42521 (_2!37844 lt!2654799)))))))

(assert (= (and d!2321795 c!1402691) b!7605792))

(assert (= (and d!2321795 (not c!1402691)) b!7605793))

(assert (= (and d!2321795 res!3045455) b!7605794))

(assert (= (and b!7605794 res!3045456) b!7605795))

(declare-fun m!8146680 () Bool)

(assert (=> d!2321795 m!8146680))

(declare-fun m!8146682 () Bool)

(assert (=> d!2321795 m!8146682))

(declare-fun m!8146684 () Bool)

(assert (=> d!2321795 m!8146684))

(declare-fun m!8146686 () Bool)

(assert (=> b!7605793 m!8146686))

(declare-fun m!8146688 () Bool)

(assert (=> b!7605794 m!8146688))

(declare-fun m!8146690 () Bool)

(assert (=> b!7605794 m!8146690))

(declare-fun m!8146692 () Bool)

(assert (=> b!7605794 m!8146692))

(assert (=> b!7605709 d!2321795))

(declare-fun d!2321799 () Bool)

(declare-fun lt!2654824 () tuple2!69082)

(declare-fun dynLambda!29909 (Int tuple2!69082) Bool)

(assert (=> d!2321799 (dynLambda!29909 lambda!468018 lt!2654824)))

(declare-fun choose!58723 (Int) tuple2!69082)

(assert (=> d!2321799 (= lt!2654824 (choose!58723 lambda!468018))))

(assert (=> d!2321799 (Exists!4414 lambda!468018)))

(assert (=> d!2321799 (= (pickWitness!429 lambda!468018) lt!2654824)))

(declare-fun b_lambda!288955 () Bool)

(assert (=> (not b_lambda!288955) (not d!2321799)))

(declare-fun bs!1942662 () Bool)

(assert (= bs!1942662 d!2321799))

(declare-fun m!8146694 () Bool)

(assert (=> bs!1942662 m!8146694))

(declare-fun m!8146696 () Bool)

(assert (=> bs!1942662 m!8146696))

(assert (=> bs!1942662 m!8146644))

(assert (=> b!7605709 d!2321799))

(declare-fun b!7605832 () Bool)

(declare-fun e!4524230 () Bool)

(declare-fun e!4524227 () Bool)

(assert (=> b!7605832 (= e!4524230 e!4524227)))

(declare-fun res!3045478 () Bool)

(assert (=> b!7605832 (=> (not res!3045478) (not e!4524227))))

(declare-fun call!698321 () Bool)

(assert (=> b!7605832 (= res!3045478 call!698321)))

(declare-fun b!7605833 () Bool)

(declare-fun e!4524228 () Bool)

(declare-fun call!698323 () Bool)

(assert (=> b!7605833 (= e!4524228 call!698323)))

(declare-fun b!7605834 () Bool)

(declare-fun call!698322 () Bool)

(assert (=> b!7605834 (= e!4524227 call!698322)))

(declare-fun b!7605835 () Bool)

(declare-fun e!4524226 () Bool)

(assert (=> b!7605835 (= e!4524226 e!4524228)))

(declare-fun res!3045481 () Bool)

(declare-fun nullable!8815 (Regex!20186) Bool)

(assert (=> b!7605835 (= res!3045481 (not (nullable!8815 (reg!20515 r1!3349))))))

(assert (=> b!7605835 (=> (not res!3045481) (not e!4524228))))

(declare-fun b!7605836 () Bool)

(declare-fun res!3045477 () Bool)

(declare-fun e!4524231 () Bool)

(assert (=> b!7605836 (=> (not res!3045477) (not e!4524231))))

(assert (=> b!7605836 (= res!3045477 call!698322)))

(declare-fun e!4524232 () Bool)

(assert (=> b!7605836 (= e!4524232 e!4524231)))

(declare-fun b!7605837 () Bool)

(declare-fun e!4524229 () Bool)

(assert (=> b!7605837 (= e!4524229 e!4524226)))

(declare-fun c!1402700 () Bool)

(assert (=> b!7605837 (= c!1402700 (is-Star!20186 r1!3349))))

(declare-fun b!7605838 () Bool)

(declare-fun res!3045479 () Bool)

(assert (=> b!7605838 (=> res!3045479 e!4524230)))

(assert (=> b!7605838 (= res!3045479 (not (is-Concat!29031 r1!3349)))))

(assert (=> b!7605838 (= e!4524232 e!4524230)))

(declare-fun b!7605839 () Bool)

(assert (=> b!7605839 (= e!4524231 call!698321)))

(declare-fun bm!698314 () Bool)

(assert (=> bm!698314 (= call!698322 call!698323)))

(declare-fun bm!698316 () Bool)

(declare-fun c!1402701 () Bool)

(assert (=> bm!698316 (= call!698321 (validRegex!10614 (ite c!1402701 (regTwo!40885 r1!3349) (regOne!40884 r1!3349))))))

(declare-fun b!7605840 () Bool)

(assert (=> b!7605840 (= e!4524226 e!4524232)))

(assert (=> b!7605840 (= c!1402701 (is-Union!20186 r1!3349))))

(declare-fun d!2321801 () Bool)

(declare-fun res!3045480 () Bool)

(assert (=> d!2321801 (=> res!3045480 e!4524229)))

(assert (=> d!2321801 (= res!3045480 (is-ElementMatch!20186 r1!3349))))

(assert (=> d!2321801 (= (validRegex!10614 r1!3349) e!4524229)))

(declare-fun bm!698315 () Bool)

(assert (=> bm!698315 (= call!698323 (validRegex!10614 (ite c!1402700 (reg!20515 r1!3349) (ite c!1402701 (regOne!40885 r1!3349) (regTwo!40884 r1!3349)))))))

(assert (= (and d!2321801 (not res!3045480)) b!7605837))

(assert (= (and b!7605837 c!1402700) b!7605835))

(assert (= (and b!7605837 (not c!1402700)) b!7605840))

(assert (= (and b!7605835 res!3045481) b!7605833))

(assert (= (and b!7605840 c!1402701) b!7605836))

(assert (= (and b!7605840 (not c!1402701)) b!7605838))

(assert (= (and b!7605836 res!3045477) b!7605839))

(assert (= (and b!7605838 (not res!3045479)) b!7605832))

(assert (= (and b!7605832 res!3045478) b!7605834))

(assert (= (or b!7605839 b!7605832) bm!698316))

(assert (= (or b!7605836 b!7605834) bm!698314))

(assert (= (or b!7605833 bm!698314) bm!698315))

(declare-fun m!8146698 () Bool)

(assert (=> b!7605835 m!8146698))

(declare-fun m!8146700 () Bool)

(assert (=> bm!698316 m!8146700))

(declare-fun m!8146702 () Bool)

(assert (=> bm!698315 m!8146702))

(assert (=> start!733118 d!2321801))

(declare-fun b!7605887 () Bool)

(declare-fun e!4524265 () Bool)

(assert (=> b!7605887 (= e!4524265 (nullable!8815 r1!3349))))

(declare-fun b!7605888 () Bool)

(declare-fun e!4524261 () Bool)

(declare-fun e!4524266 () Bool)

(assert (=> b!7605888 (= e!4524261 e!4524266)))

(declare-fun res!3045513 () Bool)

(assert (=> b!7605888 (=> (not res!3045513) (not e!4524266))))

(declare-fun lt!2654827 () Bool)

(assert (=> b!7605888 (= res!3045513 (not lt!2654827))))

(declare-fun d!2321803 () Bool)

(declare-fun e!4524263 () Bool)

(assert (=> d!2321803 e!4524263))

(declare-fun c!1402712 () Bool)

(assert (=> d!2321803 (= c!1402712 (is-EmptyExpr!20186 r1!3349))))

(assert (=> d!2321803 (= lt!2654827 e!4524265)))

(declare-fun c!1402714 () Bool)

(declare-fun isEmpty!41576 (List!73069) Bool)

(assert (=> d!2321803 (= c!1402714 (isEmpty!41576 (_1!37844 lt!2654799)))))

(assert (=> d!2321803 (validRegex!10614 r1!3349)))

(assert (=> d!2321803 (= (matchR!9749 r1!3349 (_1!37844 lt!2654799)) lt!2654827)))

(declare-fun b!7605889 () Bool)

(declare-fun res!3045508 () Bool)

(declare-fun e!4524262 () Bool)

(assert (=> b!7605889 (=> (not res!3045508) (not e!4524262))))

(declare-fun tail!15179 (List!73069) List!73069)

(assert (=> b!7605889 (= res!3045508 (isEmpty!41576 (tail!15179 (_1!37844 lt!2654799))))))

(declare-fun bm!698327 () Bool)

(declare-fun call!698332 () Bool)

(assert (=> bm!698327 (= call!698332 (isEmpty!41576 (_1!37844 lt!2654799)))))

(declare-fun b!7605890 () Bool)

(declare-fun e!4524264 () Bool)

(declare-fun head!15639 (List!73069) C!40698)

(assert (=> b!7605890 (= e!4524264 (not (= (head!15639 (_1!37844 lt!2654799)) (c!1402687 r1!3349))))))

(declare-fun b!7605891 () Bool)

(assert (=> b!7605891 (= e!4524263 (= lt!2654827 call!698332))))

(declare-fun b!7605892 () Bool)

(assert (=> b!7605892 (= e!4524266 e!4524264)))

(declare-fun res!3045511 () Bool)

(assert (=> b!7605892 (=> res!3045511 e!4524264)))

(assert (=> b!7605892 (= res!3045511 call!698332)))

(declare-fun b!7605893 () Bool)

(declare-fun derivativeStep!5839 (Regex!20186 C!40698) Regex!20186)

(assert (=> b!7605893 (= e!4524265 (matchR!9749 (derivativeStep!5839 r1!3349 (head!15639 (_1!37844 lt!2654799))) (tail!15179 (_1!37844 lt!2654799))))))

(declare-fun b!7605894 () Bool)

(declare-fun res!3045515 () Bool)

(assert (=> b!7605894 (=> res!3045515 e!4524264)))

(assert (=> b!7605894 (= res!3045515 (not (isEmpty!41576 (tail!15179 (_1!37844 lt!2654799)))))))

(declare-fun b!7605895 () Bool)

(declare-fun res!3045514 () Bool)

(assert (=> b!7605895 (=> res!3045514 e!4524261)))

(assert (=> b!7605895 (= res!3045514 (not (is-ElementMatch!20186 r1!3349)))))

(declare-fun e!4524267 () Bool)

(assert (=> b!7605895 (= e!4524267 e!4524261)))

(declare-fun b!7605896 () Bool)

(assert (=> b!7605896 (= e!4524267 (not lt!2654827))))

(declare-fun b!7605897 () Bool)

(declare-fun res!3045509 () Bool)

(assert (=> b!7605897 (=> (not res!3045509) (not e!4524262))))

(assert (=> b!7605897 (= res!3045509 (not call!698332))))

(declare-fun b!7605898 () Bool)

(assert (=> b!7605898 (= e!4524263 e!4524267)))

(declare-fun c!1402713 () Bool)

(assert (=> b!7605898 (= c!1402713 (is-EmptyLang!20186 r1!3349))))

(declare-fun b!7605899 () Bool)

(declare-fun res!3045512 () Bool)

(assert (=> b!7605899 (=> res!3045512 e!4524261)))

(assert (=> b!7605899 (= res!3045512 e!4524262)))

(declare-fun res!3045510 () Bool)

(assert (=> b!7605899 (=> (not res!3045510) (not e!4524262))))

(assert (=> b!7605899 (= res!3045510 lt!2654827)))

(declare-fun b!7605900 () Bool)

(assert (=> b!7605900 (= e!4524262 (= (head!15639 (_1!37844 lt!2654799)) (c!1402687 r1!3349)))))

(assert (= (and d!2321803 c!1402714) b!7605887))

(assert (= (and d!2321803 (not c!1402714)) b!7605893))

(assert (= (and d!2321803 c!1402712) b!7605891))

(assert (= (and d!2321803 (not c!1402712)) b!7605898))

(assert (= (and b!7605898 c!1402713) b!7605896))

(assert (= (and b!7605898 (not c!1402713)) b!7605895))

(assert (= (and b!7605895 (not res!3045514)) b!7605899))

(assert (= (and b!7605899 res!3045510) b!7605897))

(assert (= (and b!7605897 res!3045509) b!7605889))

(assert (= (and b!7605889 res!3045508) b!7605900))

(assert (= (and b!7605899 (not res!3045512)) b!7605888))

(assert (= (and b!7605888 res!3045513) b!7605892))

(assert (= (and b!7605892 (not res!3045511)) b!7605894))

(assert (= (and b!7605894 (not res!3045515)) b!7605890))

(assert (= (or b!7605891 b!7605892 b!7605897) bm!698327))

(declare-fun m!8146720 () Bool)

(assert (=> b!7605893 m!8146720))

(assert (=> b!7605893 m!8146720))

(declare-fun m!8146722 () Bool)

(assert (=> b!7605893 m!8146722))

(declare-fun m!8146724 () Bool)

(assert (=> b!7605893 m!8146724))

(assert (=> b!7605893 m!8146722))

(assert (=> b!7605893 m!8146724))

(declare-fun m!8146726 () Bool)

(assert (=> b!7605893 m!8146726))

(declare-fun m!8146728 () Bool)

(assert (=> b!7605887 m!8146728))

(declare-fun m!8146730 () Bool)

(assert (=> d!2321803 m!8146730))

(assert (=> d!2321803 m!8146642))

(assert (=> b!7605894 m!8146724))

(assert (=> b!7605894 m!8146724))

(declare-fun m!8146732 () Bool)

(assert (=> b!7605894 m!8146732))

(assert (=> b!7605900 m!8146720))

(assert (=> b!7605889 m!8146724))

(assert (=> b!7605889 m!8146724))

(assert (=> b!7605889 m!8146732))

(assert (=> b!7605890 m!8146720))

(assert (=> bm!698327 m!8146730))

(assert (=> b!7605700 d!2321803))

(declare-fun b!7605901 () Bool)

(declare-fun e!4524272 () Bool)

(assert (=> b!7605901 (= e!4524272 (nullable!8815 r2!3249))))

(declare-fun b!7605902 () Bool)

(declare-fun e!4524268 () Bool)

(declare-fun e!4524273 () Bool)

(assert (=> b!7605902 (= e!4524268 e!4524273)))

(declare-fun res!3045521 () Bool)

(assert (=> b!7605902 (=> (not res!3045521) (not e!4524273))))

(declare-fun lt!2654828 () Bool)

(assert (=> b!7605902 (= res!3045521 (not lt!2654828))))

(declare-fun d!2321813 () Bool)

(declare-fun e!4524270 () Bool)

(assert (=> d!2321813 e!4524270))

(declare-fun c!1402715 () Bool)

(assert (=> d!2321813 (= c!1402715 (is-EmptyExpr!20186 r2!3249))))

(assert (=> d!2321813 (= lt!2654828 e!4524272)))

(declare-fun c!1402717 () Bool)

(assert (=> d!2321813 (= c!1402717 (isEmpty!41576 (_2!37844 lt!2654799)))))

(assert (=> d!2321813 (validRegex!10614 r2!3249)))

(assert (=> d!2321813 (= (matchR!9749 r2!3249 (_2!37844 lt!2654799)) lt!2654828)))

(declare-fun b!7605903 () Bool)

(declare-fun res!3045516 () Bool)

(declare-fun e!4524269 () Bool)

(assert (=> b!7605903 (=> (not res!3045516) (not e!4524269))))

(assert (=> b!7605903 (= res!3045516 (isEmpty!41576 (tail!15179 (_2!37844 lt!2654799))))))

(declare-fun bm!698328 () Bool)

(declare-fun call!698333 () Bool)

(assert (=> bm!698328 (= call!698333 (isEmpty!41576 (_2!37844 lt!2654799)))))

(declare-fun b!7605904 () Bool)

(declare-fun e!4524271 () Bool)

(assert (=> b!7605904 (= e!4524271 (not (= (head!15639 (_2!37844 lt!2654799)) (c!1402687 r2!3249))))))

(declare-fun b!7605905 () Bool)

(assert (=> b!7605905 (= e!4524270 (= lt!2654828 call!698333))))

(declare-fun b!7605906 () Bool)

(assert (=> b!7605906 (= e!4524273 e!4524271)))

(declare-fun res!3045519 () Bool)

(assert (=> b!7605906 (=> res!3045519 e!4524271)))

(assert (=> b!7605906 (= res!3045519 call!698333)))

(declare-fun b!7605907 () Bool)

(assert (=> b!7605907 (= e!4524272 (matchR!9749 (derivativeStep!5839 r2!3249 (head!15639 (_2!37844 lt!2654799))) (tail!15179 (_2!37844 lt!2654799))))))

(declare-fun b!7605908 () Bool)

(declare-fun res!3045523 () Bool)

(assert (=> b!7605908 (=> res!3045523 e!4524271)))

(assert (=> b!7605908 (= res!3045523 (not (isEmpty!41576 (tail!15179 (_2!37844 lt!2654799)))))))

(declare-fun b!7605909 () Bool)

(declare-fun res!3045522 () Bool)

(assert (=> b!7605909 (=> res!3045522 e!4524268)))

(assert (=> b!7605909 (= res!3045522 (not (is-ElementMatch!20186 r2!3249)))))

(declare-fun e!4524274 () Bool)

(assert (=> b!7605909 (= e!4524274 e!4524268)))

(declare-fun b!7605910 () Bool)

(assert (=> b!7605910 (= e!4524274 (not lt!2654828))))

(declare-fun b!7605911 () Bool)

(declare-fun res!3045517 () Bool)

(assert (=> b!7605911 (=> (not res!3045517) (not e!4524269))))

(assert (=> b!7605911 (= res!3045517 (not call!698333))))

(declare-fun b!7605912 () Bool)

(assert (=> b!7605912 (= e!4524270 e!4524274)))

(declare-fun c!1402716 () Bool)

(assert (=> b!7605912 (= c!1402716 (is-EmptyLang!20186 r2!3249))))

(declare-fun b!7605913 () Bool)

(declare-fun res!3045520 () Bool)

(assert (=> b!7605913 (=> res!3045520 e!4524268)))

(assert (=> b!7605913 (= res!3045520 e!4524269)))

(declare-fun res!3045518 () Bool)

(assert (=> b!7605913 (=> (not res!3045518) (not e!4524269))))

(assert (=> b!7605913 (= res!3045518 lt!2654828)))

(declare-fun b!7605914 () Bool)

(assert (=> b!7605914 (= e!4524269 (= (head!15639 (_2!37844 lt!2654799)) (c!1402687 r2!3249)))))

(assert (= (and d!2321813 c!1402717) b!7605901))

(assert (= (and d!2321813 (not c!1402717)) b!7605907))

(assert (= (and d!2321813 c!1402715) b!7605905))

(assert (= (and d!2321813 (not c!1402715)) b!7605912))

(assert (= (and b!7605912 c!1402716) b!7605910))

(assert (= (and b!7605912 (not c!1402716)) b!7605909))

(assert (= (and b!7605909 (not res!3045522)) b!7605913))

(assert (= (and b!7605913 res!3045518) b!7605911))

(assert (= (and b!7605911 res!3045517) b!7605903))

(assert (= (and b!7605903 res!3045516) b!7605914))

(assert (= (and b!7605913 (not res!3045520)) b!7605902))

(assert (= (and b!7605902 res!3045521) b!7605906))

(assert (= (and b!7605906 (not res!3045519)) b!7605908))

(assert (= (and b!7605908 (not res!3045523)) b!7605904))

(assert (= (or b!7605905 b!7605906 b!7605911) bm!698328))

(declare-fun m!8146734 () Bool)

(assert (=> b!7605907 m!8146734))

(assert (=> b!7605907 m!8146734))

(declare-fun m!8146736 () Bool)

(assert (=> b!7605907 m!8146736))

(declare-fun m!8146738 () Bool)

(assert (=> b!7605907 m!8146738))

(assert (=> b!7605907 m!8146736))

(assert (=> b!7605907 m!8146738))

(declare-fun m!8146740 () Bool)

(assert (=> b!7605907 m!8146740))

(declare-fun m!8146742 () Bool)

(assert (=> b!7605901 m!8146742))

(declare-fun m!8146744 () Bool)

(assert (=> d!2321813 m!8146744))

(assert (=> d!2321813 m!8146650))

(assert (=> b!7605908 m!8146738))

(assert (=> b!7605908 m!8146738))

(declare-fun m!8146746 () Bool)

(assert (=> b!7605908 m!8146746))

(assert (=> b!7605914 m!8146734))

(assert (=> b!7605903 m!8146738))

(assert (=> b!7605903 m!8146738))

(assert (=> b!7605903 m!8146746))

(assert (=> b!7605904 m!8146734))

(assert (=> bm!698328 m!8146744))

(assert (=> b!7605700 d!2321813))

(declare-fun bs!1942666 () Bool)

(declare-fun b!7605967 () Bool)

(assert (= bs!1942666 (and b!7605967 b!7605708)))

(declare-fun lambda!468036 () Int)

(assert (=> bs!1942666 (not (= lambda!468036 lambda!468018))))

(declare-fun bs!1942667 () Bool)

(assert (= bs!1942667 (and b!7605967 b!7605711)))

(assert (=> bs!1942667 (not (= lambda!468036 lambda!468019))))

(assert (=> b!7605967 true))

(assert (=> b!7605967 true))

(declare-fun bs!1942668 () Bool)

(declare-fun b!7605968 () Bool)

(assert (= bs!1942668 (and b!7605968 b!7605708)))

(declare-fun lambda!468037 () Int)

(assert (=> bs!1942668 (not (= lambda!468037 lambda!468018))))

(declare-fun bs!1942669 () Bool)

(assert (= bs!1942669 (and b!7605968 b!7605711)))

(assert (=> bs!1942669 (= (and (= (_1!37844 lt!2654799) s!10235) (= (regOne!40884 r1!3349) r1!3349) (= (regTwo!40884 r1!3349) r2!3249)) (= lambda!468037 lambda!468019))))

(declare-fun bs!1942670 () Bool)

(assert (= bs!1942670 (and b!7605968 b!7605967)))

(assert (=> bs!1942670 (not (= lambda!468037 lambda!468036))))

(assert (=> b!7605968 true))

(assert (=> b!7605968 true))

(declare-fun b!7605959 () Bool)

(declare-fun c!1402732 () Bool)

(assert (=> b!7605959 (= c!1402732 (is-ElementMatch!20186 r1!3349))))

(declare-fun e!4524299 () Bool)

(declare-fun e!4524301 () Bool)

(assert (=> b!7605959 (= e!4524299 e!4524301)))

(declare-fun b!7605960 () Bool)

(assert (=> b!7605960 (= e!4524301 (= (_1!37844 lt!2654799) (Cons!72945 (c!1402687 r1!3349) Nil!72945)))))

(declare-fun bm!698333 () Bool)

(declare-fun call!698339 () Bool)

(assert (=> bm!698333 (= call!698339 (isEmpty!41576 (_1!37844 lt!2654799)))))

(declare-fun b!7605961 () Bool)

(declare-fun e!4524303 () Bool)

(assert (=> b!7605961 (= e!4524303 call!698339)))

(declare-fun b!7605962 () Bool)

(declare-fun e!4524304 () Bool)

(assert (=> b!7605962 (= e!4524304 (matchRSpec!4461 (regTwo!40885 r1!3349) (_1!37844 lt!2654799)))))

(declare-fun c!1402730 () Bool)

(declare-fun call!698338 () Bool)

(declare-fun bm!698334 () Bool)

(assert (=> bm!698334 (= call!698338 (Exists!4414 (ite c!1402730 lambda!468036 lambda!468037)))))

(declare-fun b!7605964 () Bool)

(declare-fun c!1402731 () Bool)

(assert (=> b!7605964 (= c!1402731 (is-Union!20186 r1!3349))))

(declare-fun e!4524302 () Bool)

(assert (=> b!7605964 (= e!4524301 e!4524302)))

(declare-fun b!7605965 () Bool)

(assert (=> b!7605965 (= e!4524303 e!4524299)))

(declare-fun res!3045546 () Bool)

(assert (=> b!7605965 (= res!3045546 (not (is-EmptyLang!20186 r1!3349)))))

(assert (=> b!7605965 (=> (not res!3045546) (not e!4524299))))

(declare-fun b!7605966 () Bool)

(declare-fun res!3045548 () Bool)

(declare-fun e!4524300 () Bool)

(assert (=> b!7605966 (=> res!3045548 e!4524300)))

(assert (=> b!7605966 (= res!3045548 call!698339)))

(declare-fun e!4524305 () Bool)

(assert (=> b!7605966 (= e!4524305 e!4524300)))

(assert (=> b!7605967 (= e!4524300 call!698338)))

(declare-fun d!2321815 () Bool)

(declare-fun c!1402729 () Bool)

(assert (=> d!2321815 (= c!1402729 (is-EmptyExpr!20186 r1!3349))))

(assert (=> d!2321815 (= (matchRSpec!4461 r1!3349 (_1!37844 lt!2654799)) e!4524303)))

(declare-fun b!7605963 () Bool)

(assert (=> b!7605963 (= e!4524302 e!4524305)))

(assert (=> b!7605963 (= c!1402730 (is-Star!20186 r1!3349))))

(assert (=> b!7605968 (= e!4524305 call!698338)))

(declare-fun b!7605969 () Bool)

(assert (=> b!7605969 (= e!4524302 e!4524304)))

(declare-fun res!3045547 () Bool)

(assert (=> b!7605969 (= res!3045547 (matchRSpec!4461 (regOne!40885 r1!3349) (_1!37844 lt!2654799)))))

(assert (=> b!7605969 (=> res!3045547 e!4524304)))

(assert (= (and d!2321815 c!1402729) b!7605961))

(assert (= (and d!2321815 (not c!1402729)) b!7605965))

(assert (= (and b!7605965 res!3045546) b!7605959))

(assert (= (and b!7605959 c!1402732) b!7605960))

(assert (= (and b!7605959 (not c!1402732)) b!7605964))

(assert (= (and b!7605964 c!1402731) b!7605969))

(assert (= (and b!7605964 (not c!1402731)) b!7605963))

(assert (= (and b!7605969 (not res!3045547)) b!7605962))

(assert (= (and b!7605963 c!1402730) b!7605966))

(assert (= (and b!7605963 (not c!1402730)) b!7605968))

(assert (= (and b!7605966 (not res!3045548)) b!7605967))

(assert (= (or b!7605967 b!7605968) bm!698334))

(assert (= (or b!7605961 b!7605966) bm!698333))

(assert (=> bm!698333 m!8146730))

(declare-fun m!8146766 () Bool)

(assert (=> b!7605962 m!8146766))

(declare-fun m!8146768 () Bool)

(assert (=> bm!698334 m!8146768))

(declare-fun m!8146770 () Bool)

(assert (=> b!7605969 m!8146770))

(assert (=> b!7605700 d!2321815))

(declare-fun bs!1942671 () Bool)

(declare-fun b!7605978 () Bool)

(assert (= bs!1942671 (and b!7605978 b!7605708)))

(declare-fun lambda!468038 () Int)

(assert (=> bs!1942671 (not (= lambda!468038 lambda!468018))))

(declare-fun bs!1942672 () Bool)

(assert (= bs!1942672 (and b!7605978 b!7605711)))

(assert (=> bs!1942672 (not (= lambda!468038 lambda!468019))))

(declare-fun bs!1942674 () Bool)

(assert (= bs!1942674 (and b!7605978 b!7605967)))

(assert (=> bs!1942674 (= (and (= (_2!37844 lt!2654799) (_1!37844 lt!2654799)) (= (reg!20515 r2!3249) (reg!20515 r1!3349)) (= r2!3249 r1!3349)) (= lambda!468038 lambda!468036))))

(declare-fun bs!1942675 () Bool)

(assert (= bs!1942675 (and b!7605978 b!7605968)))

(assert (=> bs!1942675 (not (= lambda!468038 lambda!468037))))

(assert (=> b!7605978 true))

(assert (=> b!7605978 true))

(declare-fun bs!1942676 () Bool)

(declare-fun b!7605979 () Bool)

(assert (= bs!1942676 (and b!7605979 b!7605968)))

(declare-fun lambda!468039 () Int)

(assert (=> bs!1942676 (= (and (= (_2!37844 lt!2654799) (_1!37844 lt!2654799)) (= (regOne!40884 r2!3249) (regOne!40884 r1!3349)) (= (regTwo!40884 r2!3249) (regTwo!40884 r1!3349))) (= lambda!468039 lambda!468037))))

(declare-fun bs!1942677 () Bool)

(assert (= bs!1942677 (and b!7605979 b!7605711)))

(assert (=> bs!1942677 (= (and (= (_2!37844 lt!2654799) s!10235) (= (regOne!40884 r2!3249) r1!3349) (= (regTwo!40884 r2!3249) r2!3249)) (= lambda!468039 lambda!468019))))

(declare-fun bs!1942678 () Bool)

(assert (= bs!1942678 (and b!7605979 b!7605967)))

(assert (=> bs!1942678 (not (= lambda!468039 lambda!468036))))

(declare-fun bs!1942679 () Bool)

(assert (= bs!1942679 (and b!7605979 b!7605708)))

(assert (=> bs!1942679 (not (= lambda!468039 lambda!468018))))

(declare-fun bs!1942680 () Bool)

(assert (= bs!1942680 (and b!7605979 b!7605978)))

(assert (=> bs!1942680 (not (= lambda!468039 lambda!468038))))

(assert (=> b!7605979 true))

(assert (=> b!7605979 true))

(declare-fun b!7605970 () Bool)

(declare-fun c!1402736 () Bool)

(assert (=> b!7605970 (= c!1402736 (is-ElementMatch!20186 r2!3249))))

(declare-fun e!4524306 () Bool)

(declare-fun e!4524308 () Bool)

(assert (=> b!7605970 (= e!4524306 e!4524308)))

(declare-fun b!7605971 () Bool)

(assert (=> b!7605971 (= e!4524308 (= (_2!37844 lt!2654799) (Cons!72945 (c!1402687 r2!3249) Nil!72945)))))

(declare-fun bm!698335 () Bool)

(declare-fun call!698341 () Bool)

(assert (=> bm!698335 (= call!698341 (isEmpty!41576 (_2!37844 lt!2654799)))))

(declare-fun b!7605972 () Bool)

(declare-fun e!4524310 () Bool)

(assert (=> b!7605972 (= e!4524310 call!698341)))

(declare-fun b!7605973 () Bool)

(declare-fun e!4524311 () Bool)

(assert (=> b!7605973 (= e!4524311 (matchRSpec!4461 (regTwo!40885 r2!3249) (_2!37844 lt!2654799)))))

(declare-fun c!1402734 () Bool)

(declare-fun bm!698336 () Bool)

(declare-fun call!698340 () Bool)

(assert (=> bm!698336 (= call!698340 (Exists!4414 (ite c!1402734 lambda!468038 lambda!468039)))))

(declare-fun b!7605975 () Bool)

(declare-fun c!1402735 () Bool)

(assert (=> b!7605975 (= c!1402735 (is-Union!20186 r2!3249))))

(declare-fun e!4524309 () Bool)

(assert (=> b!7605975 (= e!4524308 e!4524309)))

(declare-fun b!7605976 () Bool)

(assert (=> b!7605976 (= e!4524310 e!4524306)))

(declare-fun res!3045549 () Bool)

(assert (=> b!7605976 (= res!3045549 (not (is-EmptyLang!20186 r2!3249)))))

(assert (=> b!7605976 (=> (not res!3045549) (not e!4524306))))

(declare-fun b!7605977 () Bool)

(declare-fun res!3045551 () Bool)

(declare-fun e!4524307 () Bool)

(assert (=> b!7605977 (=> res!3045551 e!4524307)))

(assert (=> b!7605977 (= res!3045551 call!698341)))

(declare-fun e!4524312 () Bool)

(assert (=> b!7605977 (= e!4524312 e!4524307)))

(assert (=> b!7605978 (= e!4524307 call!698340)))

(declare-fun d!2321821 () Bool)

(declare-fun c!1402733 () Bool)

(assert (=> d!2321821 (= c!1402733 (is-EmptyExpr!20186 r2!3249))))

(assert (=> d!2321821 (= (matchRSpec!4461 r2!3249 (_2!37844 lt!2654799)) e!4524310)))

(declare-fun b!7605974 () Bool)

(assert (=> b!7605974 (= e!4524309 e!4524312)))

(assert (=> b!7605974 (= c!1402734 (is-Star!20186 r2!3249))))

(assert (=> b!7605979 (= e!4524312 call!698340)))

(declare-fun b!7605980 () Bool)

(assert (=> b!7605980 (= e!4524309 e!4524311)))

(declare-fun res!3045550 () Bool)

(assert (=> b!7605980 (= res!3045550 (matchRSpec!4461 (regOne!40885 r2!3249) (_2!37844 lt!2654799)))))

(assert (=> b!7605980 (=> res!3045550 e!4524311)))

(assert (= (and d!2321821 c!1402733) b!7605972))

(assert (= (and d!2321821 (not c!1402733)) b!7605976))

(assert (= (and b!7605976 res!3045549) b!7605970))

(assert (= (and b!7605970 c!1402736) b!7605971))

(assert (= (and b!7605970 (not c!1402736)) b!7605975))

(assert (= (and b!7605975 c!1402735) b!7605980))

(assert (= (and b!7605975 (not c!1402735)) b!7605974))

(assert (= (and b!7605980 (not res!3045550)) b!7605973))

(assert (= (and b!7605974 c!1402734) b!7605977))

(assert (= (and b!7605974 (not c!1402734)) b!7605979))

(assert (= (and b!7605977 (not res!3045551)) b!7605978))

(assert (= (or b!7605978 b!7605979) bm!698336))

(assert (= (or b!7605972 b!7605977) bm!698335))

(assert (=> bm!698335 m!8146744))

(declare-fun m!8146776 () Bool)

(assert (=> b!7605973 m!8146776))

(declare-fun m!8146778 () Bool)

(assert (=> bm!698336 m!8146778))

(declare-fun m!8146780 () Bool)

(assert (=> b!7605980 m!8146780))

(assert (=> b!7605700 d!2321821))

(declare-fun d!2321825 () Bool)

(assert (=> d!2321825 (= (matchR!9749 r1!3349 (_1!37844 lt!2654799)) (matchRSpec!4461 r1!3349 (_1!37844 lt!2654799)))))

(declare-fun lt!2654840 () Unit!167252)

(declare-fun choose!58724 (Regex!20186 List!73069) Unit!167252)

(assert (=> d!2321825 (= lt!2654840 (choose!58724 r1!3349 (_1!37844 lt!2654799)))))

(assert (=> d!2321825 (validRegex!10614 r1!3349)))

(assert (=> d!2321825 (= (mainMatchTheorem!4455 r1!3349 (_1!37844 lt!2654799)) lt!2654840)))

(declare-fun bs!1942681 () Bool)

(assert (= bs!1942681 d!2321825))

(assert (=> bs!1942681 m!8146636))

(assert (=> bs!1942681 m!8146632))

(declare-fun m!8146782 () Bool)

(assert (=> bs!1942681 m!8146782))

(assert (=> bs!1942681 m!8146642))

(assert (=> b!7605700 d!2321825))

(declare-fun d!2321827 () Bool)

(assert (=> d!2321827 (= (matchR!9749 r2!3249 (_2!37844 lt!2654799)) (matchRSpec!4461 r2!3249 (_2!37844 lt!2654799)))))

(declare-fun lt!2654841 () Unit!167252)

(assert (=> d!2321827 (= lt!2654841 (choose!58724 r2!3249 (_2!37844 lt!2654799)))))

(assert (=> d!2321827 (validRegex!10614 r2!3249)))

(assert (=> d!2321827 (= (mainMatchTheorem!4455 r2!3249 (_2!37844 lt!2654799)) lt!2654841)))

(declare-fun bs!1942682 () Bool)

(assert (= bs!1942682 d!2321827))

(assert (=> bs!1942682 m!8146630))

(assert (=> bs!1942682 m!8146626))

(declare-fun m!8146784 () Bool)

(assert (=> bs!1942682 m!8146784))

(assert (=> bs!1942682 m!8146650))

(assert (=> b!7605700 d!2321827))

(declare-fun b!7605981 () Bool)

(declare-fun e!4524317 () Bool)

(declare-fun e!4524314 () Bool)

(assert (=> b!7605981 (= e!4524317 e!4524314)))

(declare-fun res!3045553 () Bool)

(assert (=> b!7605981 (=> (not res!3045553) (not e!4524314))))

(declare-fun call!698342 () Bool)

(assert (=> b!7605981 (= res!3045553 call!698342)))

(declare-fun b!7605982 () Bool)

(declare-fun e!4524315 () Bool)

(declare-fun call!698344 () Bool)

(assert (=> b!7605982 (= e!4524315 call!698344)))

(declare-fun b!7605983 () Bool)

(declare-fun call!698343 () Bool)

(assert (=> b!7605983 (= e!4524314 call!698343)))

(declare-fun b!7605984 () Bool)

(declare-fun e!4524313 () Bool)

(assert (=> b!7605984 (= e!4524313 e!4524315)))

(declare-fun res!3045556 () Bool)

(assert (=> b!7605984 (= res!3045556 (not (nullable!8815 (reg!20515 r2!3249))))))

(assert (=> b!7605984 (=> (not res!3045556) (not e!4524315))))

(declare-fun b!7605985 () Bool)

(declare-fun res!3045552 () Bool)

(declare-fun e!4524318 () Bool)

(assert (=> b!7605985 (=> (not res!3045552) (not e!4524318))))

(assert (=> b!7605985 (= res!3045552 call!698343)))

(declare-fun e!4524319 () Bool)

(assert (=> b!7605985 (= e!4524319 e!4524318)))

(declare-fun b!7605986 () Bool)

(declare-fun e!4524316 () Bool)

(assert (=> b!7605986 (= e!4524316 e!4524313)))

(declare-fun c!1402737 () Bool)

(assert (=> b!7605986 (= c!1402737 (is-Star!20186 r2!3249))))

(declare-fun b!7605987 () Bool)

(declare-fun res!3045554 () Bool)

(assert (=> b!7605987 (=> res!3045554 e!4524317)))

(assert (=> b!7605987 (= res!3045554 (not (is-Concat!29031 r2!3249)))))

(assert (=> b!7605987 (= e!4524319 e!4524317)))

(declare-fun b!7605988 () Bool)

(assert (=> b!7605988 (= e!4524318 call!698342)))

(declare-fun bm!698337 () Bool)

(assert (=> bm!698337 (= call!698343 call!698344)))

(declare-fun bm!698339 () Bool)

(declare-fun c!1402738 () Bool)

(assert (=> bm!698339 (= call!698342 (validRegex!10614 (ite c!1402738 (regTwo!40885 r2!3249) (regOne!40884 r2!3249))))))

(declare-fun b!7605989 () Bool)

(assert (=> b!7605989 (= e!4524313 e!4524319)))

(assert (=> b!7605989 (= c!1402738 (is-Union!20186 r2!3249))))

(declare-fun d!2321829 () Bool)

(declare-fun res!3045555 () Bool)

(assert (=> d!2321829 (=> res!3045555 e!4524316)))

(assert (=> d!2321829 (= res!3045555 (is-ElementMatch!20186 r2!3249))))

(assert (=> d!2321829 (= (validRegex!10614 r2!3249) e!4524316)))

(declare-fun bm!698338 () Bool)

(assert (=> bm!698338 (= call!698344 (validRegex!10614 (ite c!1402737 (reg!20515 r2!3249) (ite c!1402738 (regOne!40885 r2!3249) (regTwo!40884 r2!3249)))))))

(assert (= (and d!2321829 (not res!3045555)) b!7605986))

(assert (= (and b!7605986 c!1402737) b!7605984))

(assert (= (and b!7605986 (not c!1402737)) b!7605989))

(assert (= (and b!7605984 res!3045556) b!7605982))

(assert (= (and b!7605989 c!1402738) b!7605985))

(assert (= (and b!7605989 (not c!1402738)) b!7605987))

(assert (= (and b!7605985 res!3045552) b!7605988))

(assert (= (and b!7605987 (not res!3045554)) b!7605981))

(assert (= (and b!7605981 res!3045553) b!7605983))

(assert (= (or b!7605988 b!7605981) bm!698339))

(assert (= (or b!7605985 b!7605983) bm!698337))

(assert (= (or b!7605982 bm!698337) bm!698338))

(declare-fun m!8146786 () Bool)

(assert (=> b!7605984 m!8146786))

(declare-fun m!8146788 () Bool)

(assert (=> bm!698339 m!8146788))

(declare-fun m!8146790 () Bool)

(assert (=> bm!698338 m!8146790))

(assert (=> b!7605706 d!2321829))

(assert (=> b!7605711 d!2321793))

(declare-fun d!2321831 () Bool)

(assert (=> d!2321831 (= (Exists!4414 lambda!468019) (choose!58722 lambda!468019))))

(declare-fun bs!1942683 () Bool)

(assert (= bs!1942683 d!2321831))

(declare-fun m!8146792 () Bool)

(assert (=> bs!1942683 m!8146792))

(assert (=> b!7605711 d!2321831))

(declare-fun d!2321833 () Bool)

(assert (=> d!2321833 (Exists!4414 lambda!468019)))

(declare-fun lt!2654847 () Unit!167252)

(declare-fun choose!58725 (tuple2!69082 Int) Unit!167252)

(assert (=> d!2321833 (= lt!2654847 (choose!58725 lt!2654799 lambda!468019))))

(assert (=> d!2321833 (dynLambda!29909 lambda!468019 lt!2654799)))

(assert (=> d!2321833 (= (ExistsThe!37 lt!2654799 lambda!468019) lt!2654847)))

(declare-fun b_lambda!288961 () Bool)

(assert (=> (not b_lambda!288961) (not d!2321833)))

(declare-fun bs!1942685 () Bool)

(assert (= bs!1942685 d!2321833))

(assert (=> bs!1942685 m!8146646))

(declare-fun m!8146796 () Bool)

(assert (=> bs!1942685 m!8146796))

(declare-fun m!8146798 () Bool)

(assert (=> bs!1942685 m!8146798))

(assert (=> b!7605711 d!2321833))

(declare-fun b!7606002 () Bool)

(declare-fun e!4524322 () Bool)

(declare-fun tp!2218246 () Bool)

(assert (=> b!7606002 (= e!4524322 tp!2218246)))

(declare-fun b!7606000 () Bool)

(assert (=> b!7606000 (= e!4524322 tp_is_empty!50727)))

(declare-fun b!7606001 () Bool)

(declare-fun tp!2218247 () Bool)

(declare-fun tp!2218250 () Bool)

(assert (=> b!7606001 (= e!4524322 (and tp!2218247 tp!2218250))))

(assert (=> b!7605712 (= tp!2218199 e!4524322)))

(declare-fun b!7606003 () Bool)

(declare-fun tp!2218248 () Bool)

(declare-fun tp!2218249 () Bool)

(assert (=> b!7606003 (= e!4524322 (and tp!2218248 tp!2218249))))

(assert (= (and b!7605712 (is-ElementMatch!20186 (regOne!40884 r1!3349))) b!7606000))

(assert (= (and b!7605712 (is-Concat!29031 (regOne!40884 r1!3349))) b!7606001))

(assert (= (and b!7605712 (is-Star!20186 (regOne!40884 r1!3349))) b!7606002))

(assert (= (and b!7605712 (is-Union!20186 (regOne!40884 r1!3349))) b!7606003))

(declare-fun b!7606006 () Bool)

(declare-fun e!4524323 () Bool)

(declare-fun tp!2218251 () Bool)

(assert (=> b!7606006 (= e!4524323 tp!2218251)))

(declare-fun b!7606004 () Bool)

(assert (=> b!7606004 (= e!4524323 tp_is_empty!50727)))

(declare-fun b!7606005 () Bool)

(declare-fun tp!2218252 () Bool)

(declare-fun tp!2218255 () Bool)

(assert (=> b!7606005 (= e!4524323 (and tp!2218252 tp!2218255))))

(assert (=> b!7605712 (= tp!2218192 e!4524323)))

(declare-fun b!7606007 () Bool)

(declare-fun tp!2218253 () Bool)

(declare-fun tp!2218254 () Bool)

(assert (=> b!7606007 (= e!4524323 (and tp!2218253 tp!2218254))))

(assert (= (and b!7605712 (is-ElementMatch!20186 (regTwo!40884 r1!3349))) b!7606004))

(assert (= (and b!7605712 (is-Concat!29031 (regTwo!40884 r1!3349))) b!7606005))

(assert (= (and b!7605712 (is-Star!20186 (regTwo!40884 r1!3349))) b!7606006))

(assert (= (and b!7605712 (is-Union!20186 (regTwo!40884 r1!3349))) b!7606007))

(declare-fun b!7606012 () Bool)

(declare-fun e!4524326 () Bool)

(declare-fun tp!2218258 () Bool)

(assert (=> b!7606012 (= e!4524326 (and tp_is_empty!50727 tp!2218258))))

(assert (=> b!7605701 (= tp!2218197 e!4524326)))

(assert (= (and b!7605701 (is-Cons!72945 (t!387804 s!10235))) b!7606012))

(declare-fun b!7606015 () Bool)

(declare-fun e!4524327 () Bool)

(declare-fun tp!2218259 () Bool)

(assert (=> b!7606015 (= e!4524327 tp!2218259)))

(declare-fun b!7606013 () Bool)

(assert (=> b!7606013 (= e!4524327 tp_is_empty!50727)))

(declare-fun b!7606014 () Bool)

(declare-fun tp!2218260 () Bool)

(declare-fun tp!2218263 () Bool)

(assert (=> b!7606014 (= e!4524327 (and tp!2218260 tp!2218263))))

(assert (=> b!7605702 (= tp!2218198 e!4524327)))

(declare-fun b!7606016 () Bool)

(declare-fun tp!2218261 () Bool)

(declare-fun tp!2218262 () Bool)

(assert (=> b!7606016 (= e!4524327 (and tp!2218261 tp!2218262))))

(assert (= (and b!7605702 (is-ElementMatch!20186 (regOne!40885 r1!3349))) b!7606013))

(assert (= (and b!7605702 (is-Concat!29031 (regOne!40885 r1!3349))) b!7606014))

(assert (= (and b!7605702 (is-Star!20186 (regOne!40885 r1!3349))) b!7606015))

(assert (= (and b!7605702 (is-Union!20186 (regOne!40885 r1!3349))) b!7606016))

(declare-fun b!7606019 () Bool)

(declare-fun e!4524328 () Bool)

(declare-fun tp!2218264 () Bool)

(assert (=> b!7606019 (= e!4524328 tp!2218264)))

(declare-fun b!7606017 () Bool)

(assert (=> b!7606017 (= e!4524328 tp_is_empty!50727)))

(declare-fun b!7606018 () Bool)

(declare-fun tp!2218265 () Bool)

(declare-fun tp!2218268 () Bool)

(assert (=> b!7606018 (= e!4524328 (and tp!2218265 tp!2218268))))

(assert (=> b!7605702 (= tp!2218194 e!4524328)))

(declare-fun b!7606020 () Bool)

(declare-fun tp!2218266 () Bool)

(declare-fun tp!2218267 () Bool)

(assert (=> b!7606020 (= e!4524328 (and tp!2218266 tp!2218267))))

(assert (= (and b!7605702 (is-ElementMatch!20186 (regTwo!40885 r1!3349))) b!7606017))

(assert (= (and b!7605702 (is-Concat!29031 (regTwo!40885 r1!3349))) b!7606018))

(assert (= (and b!7605702 (is-Star!20186 (regTwo!40885 r1!3349))) b!7606019))

(assert (= (and b!7605702 (is-Union!20186 (regTwo!40885 r1!3349))) b!7606020))

(declare-fun b!7606023 () Bool)

(declare-fun e!4524329 () Bool)

(declare-fun tp!2218269 () Bool)

(assert (=> b!7606023 (= e!4524329 tp!2218269)))

(declare-fun b!7606021 () Bool)

(assert (=> b!7606021 (= e!4524329 tp_is_empty!50727)))

(declare-fun b!7606022 () Bool)

(declare-fun tp!2218270 () Bool)

(declare-fun tp!2218273 () Bool)

(assert (=> b!7606022 (= e!4524329 (and tp!2218270 tp!2218273))))

(assert (=> b!7605707 (= tp!2218200 e!4524329)))

(declare-fun b!7606024 () Bool)

(declare-fun tp!2218271 () Bool)

(declare-fun tp!2218272 () Bool)

(assert (=> b!7606024 (= e!4524329 (and tp!2218271 tp!2218272))))

(assert (= (and b!7605707 (is-ElementMatch!20186 (reg!20515 r2!3249))) b!7606021))

(assert (= (and b!7605707 (is-Concat!29031 (reg!20515 r2!3249))) b!7606022))

(assert (= (and b!7605707 (is-Star!20186 (reg!20515 r2!3249))) b!7606023))

(assert (= (and b!7605707 (is-Union!20186 (reg!20515 r2!3249))) b!7606024))

(declare-fun b!7606027 () Bool)

(declare-fun e!4524330 () Bool)

(declare-fun tp!2218274 () Bool)

(assert (=> b!7606027 (= e!4524330 tp!2218274)))

(declare-fun b!7606025 () Bool)

(assert (=> b!7606025 (= e!4524330 tp_is_empty!50727)))

(declare-fun b!7606026 () Bool)

(declare-fun tp!2218275 () Bool)

(declare-fun tp!2218278 () Bool)

(assert (=> b!7606026 (= e!4524330 (and tp!2218275 tp!2218278))))

(assert (=> b!7605703 (= tp!2218193 e!4524330)))

(declare-fun b!7606028 () Bool)

(declare-fun tp!2218276 () Bool)

(declare-fun tp!2218277 () Bool)

(assert (=> b!7606028 (= e!4524330 (and tp!2218276 tp!2218277))))

(assert (= (and b!7605703 (is-ElementMatch!20186 (reg!20515 r1!3349))) b!7606025))

(assert (= (and b!7605703 (is-Concat!29031 (reg!20515 r1!3349))) b!7606026))

(assert (= (and b!7605703 (is-Star!20186 (reg!20515 r1!3349))) b!7606027))

(assert (= (and b!7605703 (is-Union!20186 (reg!20515 r1!3349))) b!7606028))

(declare-fun b!7606031 () Bool)

(declare-fun e!4524331 () Bool)

(declare-fun tp!2218279 () Bool)

(assert (=> b!7606031 (= e!4524331 tp!2218279)))

(declare-fun b!7606029 () Bool)

(assert (=> b!7606029 (= e!4524331 tp_is_empty!50727)))

(declare-fun b!7606030 () Bool)

(declare-fun tp!2218280 () Bool)

(declare-fun tp!2218283 () Bool)

(assert (=> b!7606030 (= e!4524331 (and tp!2218280 tp!2218283))))

(assert (=> b!7605704 (= tp!2218196 e!4524331)))

(declare-fun b!7606032 () Bool)

(declare-fun tp!2218281 () Bool)

(declare-fun tp!2218282 () Bool)

(assert (=> b!7606032 (= e!4524331 (and tp!2218281 tp!2218282))))

(assert (= (and b!7605704 (is-ElementMatch!20186 (regOne!40885 r2!3249))) b!7606029))

(assert (= (and b!7605704 (is-Concat!29031 (regOne!40885 r2!3249))) b!7606030))

(assert (= (and b!7605704 (is-Star!20186 (regOne!40885 r2!3249))) b!7606031))

(assert (= (and b!7605704 (is-Union!20186 (regOne!40885 r2!3249))) b!7606032))

(declare-fun b!7606035 () Bool)

(declare-fun e!4524332 () Bool)

(declare-fun tp!2218284 () Bool)

(assert (=> b!7606035 (= e!4524332 tp!2218284)))

(declare-fun b!7606033 () Bool)

(assert (=> b!7606033 (= e!4524332 tp_is_empty!50727)))

(declare-fun b!7606034 () Bool)

(declare-fun tp!2218285 () Bool)

(declare-fun tp!2218288 () Bool)

(assert (=> b!7606034 (= e!4524332 (and tp!2218285 tp!2218288))))

(assert (=> b!7605704 (= tp!2218195 e!4524332)))

(declare-fun b!7606036 () Bool)

(declare-fun tp!2218286 () Bool)

(declare-fun tp!2218287 () Bool)

(assert (=> b!7606036 (= e!4524332 (and tp!2218286 tp!2218287))))

(assert (= (and b!7605704 (is-ElementMatch!20186 (regTwo!40885 r2!3249))) b!7606033))

(assert (= (and b!7605704 (is-Concat!29031 (regTwo!40885 r2!3249))) b!7606034))

(assert (= (and b!7605704 (is-Star!20186 (regTwo!40885 r2!3249))) b!7606035))

(assert (= (and b!7605704 (is-Union!20186 (regTwo!40885 r2!3249))) b!7606036))

(declare-fun b!7606039 () Bool)

(declare-fun e!4524333 () Bool)

(declare-fun tp!2218289 () Bool)

(assert (=> b!7606039 (= e!4524333 tp!2218289)))

(declare-fun b!7606037 () Bool)

(assert (=> b!7606037 (= e!4524333 tp_is_empty!50727)))

(declare-fun b!7606038 () Bool)

(declare-fun tp!2218290 () Bool)

(declare-fun tp!2218293 () Bool)

(assert (=> b!7606038 (= e!4524333 (and tp!2218290 tp!2218293))))

(assert (=> b!7605705 (= tp!2218201 e!4524333)))

(declare-fun b!7606040 () Bool)

(declare-fun tp!2218291 () Bool)

(declare-fun tp!2218292 () Bool)

(assert (=> b!7606040 (= e!4524333 (and tp!2218291 tp!2218292))))

(assert (= (and b!7605705 (is-ElementMatch!20186 (regOne!40884 r2!3249))) b!7606037))

(assert (= (and b!7605705 (is-Concat!29031 (regOne!40884 r2!3249))) b!7606038))

(assert (= (and b!7605705 (is-Star!20186 (regOne!40884 r2!3249))) b!7606039))

(assert (= (and b!7605705 (is-Union!20186 (regOne!40884 r2!3249))) b!7606040))

(declare-fun b!7606043 () Bool)

(declare-fun e!4524334 () Bool)

(declare-fun tp!2218294 () Bool)

(assert (=> b!7606043 (= e!4524334 tp!2218294)))

(declare-fun b!7606041 () Bool)

(assert (=> b!7606041 (= e!4524334 tp_is_empty!50727)))

(declare-fun b!7606042 () Bool)

(declare-fun tp!2218295 () Bool)

(declare-fun tp!2218298 () Bool)

(assert (=> b!7606042 (= e!4524334 (and tp!2218295 tp!2218298))))

(assert (=> b!7605705 (= tp!2218202 e!4524334)))

(declare-fun b!7606044 () Bool)

(declare-fun tp!2218296 () Bool)

(declare-fun tp!2218297 () Bool)

(assert (=> b!7606044 (= e!4524334 (and tp!2218296 tp!2218297))))

(assert (= (and b!7605705 (is-ElementMatch!20186 (regTwo!40884 r2!3249))) b!7606041))

(assert (= (and b!7605705 (is-Concat!29031 (regTwo!40884 r2!3249))) b!7606042))

(assert (= (and b!7605705 (is-Star!20186 (regTwo!40884 r2!3249))) b!7606043))

(assert (= (and b!7605705 (is-Union!20186 (regTwo!40884 r2!3249))) b!7606044))

(declare-fun b_lambda!288963 () Bool)

(assert (= b_lambda!288955 (or b!7605708 b_lambda!288963)))

(declare-fun bs!1942686 () Bool)

(declare-fun d!2321837 () Bool)

(assert (= bs!1942686 (and d!2321837 b!7605708)))

(declare-fun res!3045557 () Bool)

(declare-fun e!4524335 () Bool)

(assert (=> bs!1942686 (=> (not res!3045557) (not e!4524335))))

(assert (=> bs!1942686 (= res!3045557 (= (++!17584 (_1!37844 lt!2654824) (_2!37844 lt!2654824)) s!10235))))

(assert (=> bs!1942686 (= (dynLambda!29909 lambda!468018 lt!2654824) e!4524335)))

(declare-fun b!7606045 () Bool)

(declare-fun res!3045558 () Bool)

(assert (=> b!7606045 (=> (not res!3045558) (not e!4524335))))

(assert (=> b!7606045 (= res!3045558 (matchR!9749 r1!3349 (_1!37844 lt!2654824)))))

(declare-fun b!7606046 () Bool)

(assert (=> b!7606046 (= e!4524335 (matchR!9749 r2!3249 (_2!37844 lt!2654824)))))

(assert (= (and bs!1942686 res!3045557) b!7606045))

(assert (= (and b!7606045 res!3045558) b!7606046))

(declare-fun m!8146800 () Bool)

(assert (=> bs!1942686 m!8146800))

(declare-fun m!8146802 () Bool)

(assert (=> b!7606045 m!8146802))

(declare-fun m!8146804 () Bool)

(assert (=> b!7606046 m!8146804))

(assert (=> d!2321799 d!2321837))

(declare-fun b_lambda!288965 () Bool)

(assert (= b_lambda!288961 (or b!7605711 b_lambda!288965)))

(declare-fun bs!1942687 () Bool)

(declare-fun d!2321839 () Bool)

(assert (= bs!1942687 (and d!2321839 b!7605711)))

(declare-fun res!3045559 () Bool)

(declare-fun e!4524336 () Bool)

(assert (=> bs!1942687 (=> (not res!3045559) (not e!4524336))))

(assert (=> bs!1942687 (= res!3045559 (= (++!17584 (_1!37844 lt!2654799) (_2!37844 lt!2654799)) s!10235))))

(assert (=> bs!1942687 (= (dynLambda!29909 lambda!468019 lt!2654799) e!4524336)))

(declare-fun b!7606047 () Bool)

(declare-fun res!3045560 () Bool)

(assert (=> b!7606047 (=> (not res!3045560) (not e!4524336))))

(assert (=> b!7606047 (= res!3045560 (matchRSpec!4461 r1!3349 (_1!37844 lt!2654799)))))

(declare-fun b!7606048 () Bool)

(assert (=> b!7606048 (= e!4524336 (matchRSpec!4461 r2!3249 (_2!37844 lt!2654799)))))

(assert (= (and bs!1942687 res!3045559) b!7606047))

(assert (= (and b!7606047 res!3045560) b!7606048))

(assert (=> bs!1942687 m!8146638))

(assert (=> b!7606047 m!8146632))

(assert (=> b!7606048 m!8146626))

(assert (=> d!2321833 d!2321839))

(push 1)

(assert (not bm!698327))

(assert (not bm!698316))

(assert (not b!7605962))

(assert (not b!7606007))

(assert (not b!7605907))

(assert (not b!7606047))

(assert (not d!2321813))

(assert (not d!2321833))

(assert (not b!7605914))

(assert (not b!7605908))

(assert (not b!7606042))

(assert (not b_lambda!288963))

(assert (not b!7606043))

(assert (not d!2321825))

(assert (not b!7605835))

(assert (not b!7606045))

(assert (not b!7606003))

(assert (not b!7605893))

(assert (not b!7606012))

(assert (not d!2321799))

(assert (not b!7606002))

(assert (not b!7606024))

(assert (not b!7606027))

(assert (not b!7605794))

(assert (not d!2321793))

(assert (not b!7606006))

(assert (not b!7606020))

(assert (not b!7606022))

(assert (not b!7606028))

(assert (not b!7605890))

(assert (not d!2321795))

(assert (not b!7606001))

(assert (not b_lambda!288965))

(assert (not b!7606026))

(assert (not b!7606014))

(assert (not d!2321803))

(assert (not b!7605889))

(assert (not b!7606030))

(assert (not b!7605900))

(assert (not b!7605984))

(assert (not b!7606044))

(assert (not b!7606019))

(assert (not b!7605969))

(assert (not b!7605903))

(assert (not b!7606031))

(assert (not bm!698335))

(assert (not b!7605980))

(assert (not bm!698334))

(assert (not b!7606018))

(assert (not bs!1942686))

(assert (not b!7605973))

(assert (not b!7605901))

(assert (not b!7606032))

(assert (not b!7605793))

(assert (not bs!1942687))

(assert (not b!7606005))

(assert (not bm!698328))

(assert (not b!7606016))

(assert (not b!7606023))

(assert (not bm!698315))

(assert (not bm!698333))

(assert (not b!7606035))

(assert (not b!7606015))

(assert (not bm!698336))

(assert (not b!7606040))

(assert tp_is_empty!50727)

(assert (not b!7606039))

(assert (not d!2321827))

(assert (not b!7605887))

(assert (not d!2321831))

(assert (not b!7606034))

(assert (not bm!698338))

(assert (not b!7606038))

(assert (not bm!698339))

(assert (not b!7606036))

(assert (not b!7606046))

(assert (not b!7605894))

(assert (not b!7606048))

(assert (not b!7605904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

