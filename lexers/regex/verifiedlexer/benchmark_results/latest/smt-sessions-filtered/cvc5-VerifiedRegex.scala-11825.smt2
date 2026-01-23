; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!665356 () Bool)

(assert start!665356)

(declare-fun res!2819724 () Bool)

(declare-fun e!4162313 () Bool)

(assert (=> start!665356 (=> (not res!2819724) (not e!4162313))))

(declare-datatypes ((C!34062 0))(
  ( (C!34063 (val!26733 Int)) )
))
(declare-datatypes ((Regex!16896 0))(
  ( (ElementMatch!16896 (c!1284128 C!34062)) (Concat!25741 (regOne!34304 Regex!16896) (regTwo!34304 Regex!16896)) (EmptyExpr!16896) (Star!16896 (reg!17225 Regex!16896)) (EmptyLang!16896) (Union!16896 (regOne!34305 Regex!16896) (regTwo!34305 Regex!16896)) )
))
(declare-fun r1!6342 () Regex!16896)

(declare-fun validRegex!8604 (Regex!16896) Bool)

(assert (=> start!665356 (= res!2819724 (validRegex!8604 r1!6342))))

(assert (=> start!665356 e!4162313))

(declare-fun e!4162315 () Bool)

(assert (=> start!665356 e!4162315))

(declare-fun e!4162312 () Bool)

(assert (=> start!665356 e!4162312))

(declare-fun e!4162311 () Bool)

(assert (=> start!665356 e!4162311))

(declare-fun e!4162314 () Bool)

(assert (=> start!665356 e!4162314))

(declare-fun b!6913920 () Bool)

(declare-fun tp!1903984 () Bool)

(declare-fun tp!1903989 () Bool)

(assert (=> b!6913920 (= e!4162315 (and tp!1903984 tp!1903989))))

(declare-fun b!6913921 () Bool)

(declare-fun tp!1903982 () Bool)

(assert (=> b!6913921 (= e!4162312 tp!1903982)))

(declare-fun b!6913922 () Bool)

(declare-fun tp!1903988 () Bool)

(assert (=> b!6913922 (= e!4162311 tp!1903988)))

(declare-fun b!6913923 () Bool)

(declare-fun tp!1903981 () Bool)

(declare-fun tp!1903979 () Bool)

(assert (=> b!6913923 (= e!4162311 (and tp!1903981 tp!1903979))))

(declare-fun b!6913924 () Bool)

(declare-fun res!2819725 () Bool)

(assert (=> b!6913924 (=> (not res!2819725) (not e!4162313))))

(declare-fun r2!6280 () Regex!16896)

(assert (=> b!6913924 (= res!2819725 (validRegex!8604 r2!6280))))

(declare-fun b!6913925 () Bool)

(declare-fun tp!1903985 () Bool)

(declare-fun tp!1903986 () Bool)

(assert (=> b!6913925 (= e!4162312 (and tp!1903985 tp!1903986))))

(declare-fun b!6913926 () Bool)

(declare-fun tp!1903990 () Bool)

(declare-fun tp!1903978 () Bool)

(assert (=> b!6913926 (= e!4162311 (and tp!1903990 tp!1903978))))

(declare-fun b!6913927 () Bool)

(declare-fun tp!1903983 () Bool)

(assert (=> b!6913927 (= e!4162315 tp!1903983)))

(declare-fun b!6913928 () Bool)

(declare-fun tp_is_empty!43017 () Bool)

(assert (=> b!6913928 (= e!4162312 tp_is_empty!43017)))

(declare-fun b!6913929 () Bool)

(assert (=> b!6913929 (= e!4162311 tp_is_empty!43017)))

(declare-fun b!6913930 () Bool)

(declare-fun tp!1903991 () Bool)

(declare-fun tp!1903980 () Bool)

(assert (=> b!6913930 (= e!4162312 (and tp!1903991 tp!1903980))))

(declare-fun b!6913931 () Bool)

(declare-fun res!2819723 () Bool)

(assert (=> b!6913931 (=> (not res!2819723) (not e!4162313))))

(declare-fun r3!135 () Regex!16896)

(assert (=> b!6913931 (= res!2819723 (validRegex!8604 r3!135))))

(declare-fun b!6913932 () Bool)

(assert (=> b!6913932 (= e!4162315 tp_is_empty!43017)))

(declare-fun b!6913933 () Bool)

(declare-fun tp!1903976 () Bool)

(assert (=> b!6913933 (= e!4162314 (and tp_is_empty!43017 tp!1903976))))

(declare-fun b!6913934 () Bool)

(declare-datatypes ((List!66653 0))(
  ( (Nil!66529) (Cons!66529 (h!72977 C!34062) (t!380396 List!66653)) )
))
(declare-fun s!14361 () List!66653)

(declare-fun ListPrimitiveSize!401 (List!66653) Int)

(assert (=> b!6913934 (= e!4162313 (< (ListPrimitiveSize!401 s!14361) 0))))

(declare-fun b!6913935 () Bool)

(declare-fun tp!1903987 () Bool)

(declare-fun tp!1903977 () Bool)

(assert (=> b!6913935 (= e!4162315 (and tp!1903987 tp!1903977))))

(assert (= (and start!665356 res!2819724) b!6913924))

(assert (= (and b!6913924 res!2819725) b!6913931))

(assert (= (and b!6913931 res!2819723) b!6913934))

(assert (= (and start!665356 (is-ElementMatch!16896 r1!6342)) b!6913932))

(assert (= (and start!665356 (is-Concat!25741 r1!6342)) b!6913935))

(assert (= (and start!665356 (is-Star!16896 r1!6342)) b!6913927))

(assert (= (and start!665356 (is-Union!16896 r1!6342)) b!6913920))

(assert (= (and start!665356 (is-ElementMatch!16896 r2!6280)) b!6913928))

(assert (= (and start!665356 (is-Concat!25741 r2!6280)) b!6913930))

(assert (= (and start!665356 (is-Star!16896 r2!6280)) b!6913921))

(assert (= (and start!665356 (is-Union!16896 r2!6280)) b!6913925))

(assert (= (and start!665356 (is-ElementMatch!16896 r3!135)) b!6913929))

(assert (= (and start!665356 (is-Concat!25741 r3!135)) b!6913923))

(assert (= (and start!665356 (is-Star!16896 r3!135)) b!6913922))

(assert (= (and start!665356 (is-Union!16896 r3!135)) b!6913926))

(assert (= (and start!665356 (is-Cons!66529 s!14361)) b!6913933))

(declare-fun m!7627648 () Bool)

(assert (=> start!665356 m!7627648))

(declare-fun m!7627650 () Bool)

(assert (=> b!6913924 m!7627650))

(declare-fun m!7627652 () Bool)

(assert (=> b!6913931 m!7627652))

(declare-fun m!7627654 () Bool)

(assert (=> b!6913934 m!7627654))

(push 1)

(assert (not b!6913931))

(assert (not b!6913924))

(assert (not b!6913920))

(assert (not b!6913926))

(assert (not b!6913922))

(assert (not b!6913933))

(assert (not b!6913925))

(assert (not b!6913934))

(assert (not b!6913921))

(assert (not start!665356))

(assert (not b!6913927))

(assert (not b!6913935))

(assert (not b!6913923))

(assert tp_is_empty!43017)

(assert (not b!6913930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2163814 () Bool)

(declare-fun res!2819755 () Bool)

(declare-fun e!4162362 () Bool)

(assert (=> d!2163814 (=> res!2819755 e!4162362)))

(assert (=> d!2163814 (= res!2819755 (is-ElementMatch!16896 r3!135))))

(assert (=> d!2163814 (= (validRegex!8604 r3!135) e!4162362)))

(declare-fun c!1284138 () Bool)

(declare-fun call!628562 () Bool)

(declare-fun bm!628557 () Bool)

(declare-fun c!1284139 () Bool)

(assert (=> bm!628557 (= call!628562 (validRegex!8604 (ite c!1284138 (reg!17225 r3!135) (ite c!1284139 (regTwo!34305 r3!135) (regOne!34304 r3!135)))))))

(declare-fun bm!628558 () Bool)

(declare-fun call!628564 () Bool)

(assert (=> bm!628558 (= call!628564 (validRegex!8604 (ite c!1284139 (regOne!34305 r3!135) (regTwo!34304 r3!135))))))

(declare-fun b!6914020 () Bool)

(declare-fun e!4162360 () Bool)

(declare-fun e!4162364 () Bool)

(assert (=> b!6914020 (= e!4162360 e!4162364)))

(declare-fun res!2819756 () Bool)

(assert (=> b!6914020 (=> (not res!2819756) (not e!4162364))))

(declare-fun call!628563 () Bool)

(assert (=> b!6914020 (= res!2819756 call!628563)))

(declare-fun b!6914021 () Bool)

(declare-fun e!4162359 () Bool)

(assert (=> b!6914021 (= e!4162359 call!628562)))

(declare-fun b!6914022 () Bool)

(declare-fun e!4162363 () Bool)

(assert (=> b!6914022 (= e!4162363 e!4162359)))

(declare-fun res!2819757 () Bool)

(declare-fun nullable!6733 (Regex!16896) Bool)

(assert (=> b!6914022 (= res!2819757 (not (nullable!6733 (reg!17225 r3!135))))))

(assert (=> b!6914022 (=> (not res!2819757) (not e!4162359))))

(declare-fun b!6914023 () Bool)

(declare-fun res!2819759 () Bool)

(assert (=> b!6914023 (=> res!2819759 e!4162360)))

(assert (=> b!6914023 (= res!2819759 (not (is-Concat!25741 r3!135)))))

(declare-fun e!4162365 () Bool)

(assert (=> b!6914023 (= e!4162365 e!4162360)))

(declare-fun b!6914024 () Bool)

(declare-fun e!4162361 () Bool)

(assert (=> b!6914024 (= e!4162361 call!628563)))

(declare-fun b!6914025 () Bool)

(assert (=> b!6914025 (= e!4162363 e!4162365)))

(assert (=> b!6914025 (= c!1284139 (is-Union!16896 r3!135))))

(declare-fun b!6914026 () Bool)

(declare-fun res!2819758 () Bool)

(assert (=> b!6914026 (=> (not res!2819758) (not e!4162361))))

(assert (=> b!6914026 (= res!2819758 call!628564)))

(assert (=> b!6914026 (= e!4162365 e!4162361)))

(declare-fun b!6914027 () Bool)

(assert (=> b!6914027 (= e!4162364 call!628564)))

(declare-fun b!6914028 () Bool)

(assert (=> b!6914028 (= e!4162362 e!4162363)))

(assert (=> b!6914028 (= c!1284138 (is-Star!16896 r3!135))))

(declare-fun bm!628559 () Bool)

(assert (=> bm!628559 (= call!628563 call!628562)))

(assert (= (and d!2163814 (not res!2819755)) b!6914028))

(assert (= (and b!6914028 c!1284138) b!6914022))

(assert (= (and b!6914028 (not c!1284138)) b!6914025))

(assert (= (and b!6914022 res!2819757) b!6914021))

(assert (= (and b!6914025 c!1284139) b!6914026))

(assert (= (and b!6914025 (not c!1284139)) b!6914023))

(assert (= (and b!6914026 res!2819758) b!6914024))

(assert (= (and b!6914023 (not res!2819759)) b!6914020))

(assert (= (and b!6914020 res!2819756) b!6914027))

(assert (= (or b!6914026 b!6914027) bm!628558))

(assert (= (or b!6914024 b!6914020) bm!628559))

(assert (= (or b!6914021 bm!628559) bm!628557))

(declare-fun m!7627664 () Bool)

(assert (=> bm!628557 m!7627664))

(declare-fun m!7627666 () Bool)

(assert (=> bm!628558 m!7627666))

(declare-fun m!7627668 () Bool)

(assert (=> b!6914022 m!7627668))

(assert (=> b!6913931 d!2163814))

(declare-fun d!2163816 () Bool)

(declare-fun lt!2469296 () Int)

(assert (=> d!2163816 (>= lt!2469296 0)))

(declare-fun e!4162368 () Int)

(assert (=> d!2163816 (= lt!2469296 e!4162368)))

(declare-fun c!1284142 () Bool)

(assert (=> d!2163816 (= c!1284142 (is-Nil!66529 s!14361))))

(assert (=> d!2163816 (= (ListPrimitiveSize!401 s!14361) lt!2469296)))

(declare-fun b!6914033 () Bool)

(assert (=> b!6914033 (= e!4162368 0)))

(declare-fun b!6914034 () Bool)

(assert (=> b!6914034 (= e!4162368 (+ 1 (ListPrimitiveSize!401 (t!380396 s!14361))))))

(assert (= (and d!2163816 c!1284142) b!6914033))

(assert (= (and d!2163816 (not c!1284142)) b!6914034))

(declare-fun m!7627670 () Bool)

(assert (=> b!6914034 m!7627670))

(assert (=> b!6913934 d!2163816))

(declare-fun d!2163818 () Bool)

(declare-fun res!2819760 () Bool)

(declare-fun e!4162372 () Bool)

(assert (=> d!2163818 (=> res!2819760 e!4162372)))

(assert (=> d!2163818 (= res!2819760 (is-ElementMatch!16896 r2!6280))))

(assert (=> d!2163818 (= (validRegex!8604 r2!6280) e!4162372)))

(declare-fun c!1284144 () Bool)

(declare-fun call!628565 () Bool)

(declare-fun c!1284143 () Bool)

(declare-fun bm!628560 () Bool)

(assert (=> bm!628560 (= call!628565 (validRegex!8604 (ite c!1284143 (reg!17225 r2!6280) (ite c!1284144 (regTwo!34305 r2!6280) (regOne!34304 r2!6280)))))))

(declare-fun bm!628561 () Bool)

(declare-fun call!628567 () Bool)

(assert (=> bm!628561 (= call!628567 (validRegex!8604 (ite c!1284144 (regOne!34305 r2!6280) (regTwo!34304 r2!6280))))))

(declare-fun b!6914035 () Bool)

(declare-fun e!4162370 () Bool)

(declare-fun e!4162374 () Bool)

(assert (=> b!6914035 (= e!4162370 e!4162374)))

(declare-fun res!2819761 () Bool)

(assert (=> b!6914035 (=> (not res!2819761) (not e!4162374))))

(declare-fun call!628566 () Bool)

(assert (=> b!6914035 (= res!2819761 call!628566)))

(declare-fun b!6914036 () Bool)

(declare-fun e!4162369 () Bool)

(assert (=> b!6914036 (= e!4162369 call!628565)))

(declare-fun b!6914037 () Bool)

(declare-fun e!4162373 () Bool)

(assert (=> b!6914037 (= e!4162373 e!4162369)))

(declare-fun res!2819762 () Bool)

(assert (=> b!6914037 (= res!2819762 (not (nullable!6733 (reg!17225 r2!6280))))))

(assert (=> b!6914037 (=> (not res!2819762) (not e!4162369))))

(declare-fun b!6914038 () Bool)

(declare-fun res!2819764 () Bool)

(assert (=> b!6914038 (=> res!2819764 e!4162370)))

(assert (=> b!6914038 (= res!2819764 (not (is-Concat!25741 r2!6280)))))

(declare-fun e!4162375 () Bool)

(assert (=> b!6914038 (= e!4162375 e!4162370)))

(declare-fun b!6914039 () Bool)

(declare-fun e!4162371 () Bool)

(assert (=> b!6914039 (= e!4162371 call!628566)))

(declare-fun b!6914040 () Bool)

(assert (=> b!6914040 (= e!4162373 e!4162375)))

(assert (=> b!6914040 (= c!1284144 (is-Union!16896 r2!6280))))

(declare-fun b!6914041 () Bool)

(declare-fun res!2819763 () Bool)

(assert (=> b!6914041 (=> (not res!2819763) (not e!4162371))))

(assert (=> b!6914041 (= res!2819763 call!628567)))

(assert (=> b!6914041 (= e!4162375 e!4162371)))

(declare-fun b!6914042 () Bool)

(assert (=> b!6914042 (= e!4162374 call!628567)))

(declare-fun b!6914043 () Bool)

(assert (=> b!6914043 (= e!4162372 e!4162373)))

(assert (=> b!6914043 (= c!1284143 (is-Star!16896 r2!6280))))

(declare-fun bm!628562 () Bool)

(assert (=> bm!628562 (= call!628566 call!628565)))

(assert (= (and d!2163818 (not res!2819760)) b!6914043))

(assert (= (and b!6914043 c!1284143) b!6914037))

(assert (= (and b!6914043 (not c!1284143)) b!6914040))

(assert (= (and b!6914037 res!2819762) b!6914036))

(assert (= (and b!6914040 c!1284144) b!6914041))

(assert (= (and b!6914040 (not c!1284144)) b!6914038))

(assert (= (and b!6914041 res!2819763) b!6914039))

(assert (= (and b!6914038 (not res!2819764)) b!6914035))

(assert (= (and b!6914035 res!2819761) b!6914042))

(assert (= (or b!6914041 b!6914042) bm!628561))

(assert (= (or b!6914039 b!6914035) bm!628562))

(assert (= (or b!6914036 bm!628562) bm!628560))

(declare-fun m!7627672 () Bool)

(assert (=> bm!628560 m!7627672))

(declare-fun m!7627674 () Bool)

(assert (=> bm!628561 m!7627674))

(declare-fun m!7627676 () Bool)

(assert (=> b!6914037 m!7627676))

(assert (=> b!6913924 d!2163818))

(declare-fun d!2163820 () Bool)

(declare-fun res!2819765 () Bool)

(declare-fun e!4162379 () Bool)

(assert (=> d!2163820 (=> res!2819765 e!4162379)))

(assert (=> d!2163820 (= res!2819765 (is-ElementMatch!16896 r1!6342))))

(assert (=> d!2163820 (= (validRegex!8604 r1!6342) e!4162379)))

(declare-fun c!1284146 () Bool)

(declare-fun c!1284145 () Bool)

(declare-fun bm!628563 () Bool)

(declare-fun call!628568 () Bool)

(assert (=> bm!628563 (= call!628568 (validRegex!8604 (ite c!1284145 (reg!17225 r1!6342) (ite c!1284146 (regTwo!34305 r1!6342) (regOne!34304 r1!6342)))))))

(declare-fun bm!628564 () Bool)

(declare-fun call!628570 () Bool)

(assert (=> bm!628564 (= call!628570 (validRegex!8604 (ite c!1284146 (regOne!34305 r1!6342) (regTwo!34304 r1!6342))))))

(declare-fun b!6914044 () Bool)

(declare-fun e!4162377 () Bool)

(declare-fun e!4162381 () Bool)

(assert (=> b!6914044 (= e!4162377 e!4162381)))

(declare-fun res!2819766 () Bool)

(assert (=> b!6914044 (=> (not res!2819766) (not e!4162381))))

(declare-fun call!628569 () Bool)

(assert (=> b!6914044 (= res!2819766 call!628569)))

(declare-fun b!6914045 () Bool)

(declare-fun e!4162376 () Bool)

(assert (=> b!6914045 (= e!4162376 call!628568)))

(declare-fun b!6914046 () Bool)

(declare-fun e!4162380 () Bool)

(assert (=> b!6914046 (= e!4162380 e!4162376)))

(declare-fun res!2819767 () Bool)

(assert (=> b!6914046 (= res!2819767 (not (nullable!6733 (reg!17225 r1!6342))))))

(assert (=> b!6914046 (=> (not res!2819767) (not e!4162376))))

(declare-fun b!6914047 () Bool)

(declare-fun res!2819769 () Bool)

(assert (=> b!6914047 (=> res!2819769 e!4162377)))

(assert (=> b!6914047 (= res!2819769 (not (is-Concat!25741 r1!6342)))))

(declare-fun e!4162382 () Bool)

(assert (=> b!6914047 (= e!4162382 e!4162377)))

(declare-fun b!6914048 () Bool)

(declare-fun e!4162378 () Bool)

(assert (=> b!6914048 (= e!4162378 call!628569)))

(declare-fun b!6914049 () Bool)

(assert (=> b!6914049 (= e!4162380 e!4162382)))

(assert (=> b!6914049 (= c!1284146 (is-Union!16896 r1!6342))))

(declare-fun b!6914050 () Bool)

(declare-fun res!2819768 () Bool)

(assert (=> b!6914050 (=> (not res!2819768) (not e!4162378))))

(assert (=> b!6914050 (= res!2819768 call!628570)))

(assert (=> b!6914050 (= e!4162382 e!4162378)))

(declare-fun b!6914051 () Bool)

(assert (=> b!6914051 (= e!4162381 call!628570)))

(declare-fun b!6914052 () Bool)

(assert (=> b!6914052 (= e!4162379 e!4162380)))

(assert (=> b!6914052 (= c!1284145 (is-Star!16896 r1!6342))))

(declare-fun bm!628565 () Bool)

(assert (=> bm!628565 (= call!628569 call!628568)))

(assert (= (and d!2163820 (not res!2819765)) b!6914052))

(assert (= (and b!6914052 c!1284145) b!6914046))

(assert (= (and b!6914052 (not c!1284145)) b!6914049))

(assert (= (and b!6914046 res!2819767) b!6914045))

(assert (= (and b!6914049 c!1284146) b!6914050))

(assert (= (and b!6914049 (not c!1284146)) b!6914047))

(assert (= (and b!6914050 res!2819768) b!6914048))

(assert (= (and b!6914047 (not res!2819769)) b!6914044))

(assert (= (and b!6914044 res!2819766) b!6914051))

(assert (= (or b!6914050 b!6914051) bm!628564))

(assert (= (or b!6914048 b!6914044) bm!628565))

(assert (= (or b!6914045 bm!628565) bm!628563))

(declare-fun m!7627678 () Bool)

(assert (=> bm!628563 m!7627678))

(declare-fun m!7627680 () Bool)

(assert (=> bm!628564 m!7627680))

(declare-fun m!7627682 () Bool)

(assert (=> b!6914046 m!7627682))

(assert (=> start!665356 d!2163820))

(declare-fun b!6914072 () Bool)

(declare-fun e!4162392 () Bool)

(assert (=> b!6914072 (= e!4162392 tp_is_empty!43017)))

(declare-fun b!6914075 () Bool)

(declare-fun tp!1904051 () Bool)

(declare-fun tp!1904054 () Bool)

(assert (=> b!6914075 (= e!4162392 (and tp!1904051 tp!1904054))))

(assert (=> b!6913926 (= tp!1903990 e!4162392)))

(declare-fun b!6914074 () Bool)

(declare-fun tp!1904052 () Bool)

(assert (=> b!6914074 (= e!4162392 tp!1904052)))

(declare-fun b!6914073 () Bool)

(declare-fun tp!1904053 () Bool)

(declare-fun tp!1904050 () Bool)

(assert (=> b!6914073 (= e!4162392 (and tp!1904053 tp!1904050))))

(assert (= (and b!6913926 (is-ElementMatch!16896 (regOne!34305 r3!135))) b!6914072))

(assert (= (and b!6913926 (is-Concat!25741 (regOne!34305 r3!135))) b!6914073))

(assert (= (and b!6913926 (is-Star!16896 (regOne!34305 r3!135))) b!6914074))

(assert (= (and b!6913926 (is-Union!16896 (regOne!34305 r3!135))) b!6914075))

(declare-fun b!6914076 () Bool)

(declare-fun e!4162393 () Bool)

(assert (=> b!6914076 (= e!4162393 tp_is_empty!43017)))

(declare-fun b!6914079 () Bool)

(declare-fun tp!1904056 () Bool)

(declare-fun tp!1904059 () Bool)

(assert (=> b!6914079 (= e!4162393 (and tp!1904056 tp!1904059))))

(assert (=> b!6913926 (= tp!1903978 e!4162393)))

(declare-fun b!6914078 () Bool)

(declare-fun tp!1904057 () Bool)

(assert (=> b!6914078 (= e!4162393 tp!1904057)))

(declare-fun b!6914077 () Bool)

(declare-fun tp!1904058 () Bool)

(declare-fun tp!1904055 () Bool)

(assert (=> b!6914077 (= e!4162393 (and tp!1904058 tp!1904055))))

(assert (= (and b!6913926 (is-ElementMatch!16896 (regTwo!34305 r3!135))) b!6914076))

(assert (= (and b!6913926 (is-Concat!25741 (regTwo!34305 r3!135))) b!6914077))

(assert (= (and b!6913926 (is-Star!16896 (regTwo!34305 r3!135))) b!6914078))

(assert (= (and b!6913926 (is-Union!16896 (regTwo!34305 r3!135))) b!6914079))

(declare-fun b!6914080 () Bool)

(declare-fun e!4162394 () Bool)

(assert (=> b!6914080 (= e!4162394 tp_is_empty!43017)))

(declare-fun b!6914083 () Bool)

(declare-fun tp!1904061 () Bool)

(declare-fun tp!1904064 () Bool)

(assert (=> b!6914083 (= e!4162394 (and tp!1904061 tp!1904064))))

(assert (=> b!6913921 (= tp!1903982 e!4162394)))

(declare-fun b!6914082 () Bool)

(declare-fun tp!1904062 () Bool)

(assert (=> b!6914082 (= e!4162394 tp!1904062)))

(declare-fun b!6914081 () Bool)

(declare-fun tp!1904063 () Bool)

(declare-fun tp!1904060 () Bool)

(assert (=> b!6914081 (= e!4162394 (and tp!1904063 tp!1904060))))

(assert (= (and b!6913921 (is-ElementMatch!16896 (reg!17225 r2!6280))) b!6914080))

(assert (= (and b!6913921 (is-Concat!25741 (reg!17225 r2!6280))) b!6914081))

(assert (= (and b!6913921 (is-Star!16896 (reg!17225 r2!6280))) b!6914082))

(assert (= (and b!6913921 (is-Union!16896 (reg!17225 r2!6280))) b!6914083))

(declare-fun b!6914093 () Bool)

(declare-fun e!4162402 () Bool)

(assert (=> b!6914093 (= e!4162402 tp_is_empty!43017)))

(declare-fun b!6914096 () Bool)

(declare-fun tp!1904066 () Bool)

(declare-fun tp!1904069 () Bool)

(assert (=> b!6914096 (= e!4162402 (and tp!1904066 tp!1904069))))

(assert (=> b!6913927 (= tp!1903983 e!4162402)))

(declare-fun b!6914095 () Bool)

(declare-fun tp!1904067 () Bool)

(assert (=> b!6914095 (= e!4162402 tp!1904067)))

(declare-fun b!6914094 () Bool)

(declare-fun tp!1904068 () Bool)

(declare-fun tp!1904065 () Bool)

(assert (=> b!6914094 (= e!4162402 (and tp!1904068 tp!1904065))))

(assert (= (and b!6913927 (is-ElementMatch!16896 (reg!17225 r1!6342))) b!6914093))

(assert (= (and b!6913927 (is-Concat!25741 (reg!17225 r1!6342))) b!6914094))

(assert (= (and b!6913927 (is-Star!16896 (reg!17225 r1!6342))) b!6914095))

(assert (= (and b!6913927 (is-Union!16896 (reg!17225 r1!6342))) b!6914096))

(declare-fun b!6914097 () Bool)

(declare-fun e!4162403 () Bool)

(assert (=> b!6914097 (= e!4162403 tp_is_empty!43017)))

(declare-fun b!6914100 () Bool)

(declare-fun tp!1904071 () Bool)

(declare-fun tp!1904074 () Bool)

(assert (=> b!6914100 (= e!4162403 (and tp!1904071 tp!1904074))))

(assert (=> b!6913922 (= tp!1903988 e!4162403)))

(declare-fun b!6914099 () Bool)

(declare-fun tp!1904072 () Bool)

(assert (=> b!6914099 (= e!4162403 tp!1904072)))

(declare-fun b!6914098 () Bool)

(declare-fun tp!1904073 () Bool)

(declare-fun tp!1904070 () Bool)

(assert (=> b!6914098 (= e!4162403 (and tp!1904073 tp!1904070))))

(assert (= (and b!6913922 (is-ElementMatch!16896 (reg!17225 r3!135))) b!6914097))

(assert (= (and b!6913922 (is-Concat!25741 (reg!17225 r3!135))) b!6914098))

(assert (= (and b!6913922 (is-Star!16896 (reg!17225 r3!135))) b!6914099))

(assert (= (and b!6913922 (is-Union!16896 (reg!17225 r3!135))) b!6914100))

(declare-fun b!6914105 () Bool)

(declare-fun e!4162406 () Bool)

(declare-fun tp!1904077 () Bool)

(assert (=> b!6914105 (= e!4162406 (and tp_is_empty!43017 tp!1904077))))

(assert (=> b!6913933 (= tp!1903976 e!4162406)))

(assert (= (and b!6913933 (is-Cons!66529 (t!380396 s!14361))) b!6914105))

(declare-fun b!6914106 () Bool)

(declare-fun e!4162407 () Bool)

(assert (=> b!6914106 (= e!4162407 tp_is_empty!43017)))

(declare-fun b!6914109 () Bool)

(declare-fun tp!1904079 () Bool)

(declare-fun tp!1904082 () Bool)

(assert (=> b!6914109 (= e!4162407 (and tp!1904079 tp!1904082))))

(assert (=> b!6913923 (= tp!1903981 e!4162407)))

(declare-fun b!6914108 () Bool)

(declare-fun tp!1904080 () Bool)

(assert (=> b!6914108 (= e!4162407 tp!1904080)))

(declare-fun b!6914107 () Bool)

(declare-fun tp!1904081 () Bool)

(declare-fun tp!1904078 () Bool)

(assert (=> b!6914107 (= e!4162407 (and tp!1904081 tp!1904078))))

(assert (= (and b!6913923 (is-ElementMatch!16896 (regOne!34304 r3!135))) b!6914106))

(assert (= (and b!6913923 (is-Concat!25741 (regOne!34304 r3!135))) b!6914107))

(assert (= (and b!6913923 (is-Star!16896 (regOne!34304 r3!135))) b!6914108))

(assert (= (and b!6913923 (is-Union!16896 (regOne!34304 r3!135))) b!6914109))

(declare-fun b!6914110 () Bool)

(declare-fun e!4162408 () Bool)

(assert (=> b!6914110 (= e!4162408 tp_is_empty!43017)))

(declare-fun b!6914113 () Bool)

(declare-fun tp!1904084 () Bool)

(declare-fun tp!1904087 () Bool)

(assert (=> b!6914113 (= e!4162408 (and tp!1904084 tp!1904087))))

(assert (=> b!6913923 (= tp!1903979 e!4162408)))

(declare-fun b!6914112 () Bool)

(declare-fun tp!1904085 () Bool)

(assert (=> b!6914112 (= e!4162408 tp!1904085)))

(declare-fun b!6914111 () Bool)

(declare-fun tp!1904086 () Bool)

(declare-fun tp!1904083 () Bool)

(assert (=> b!6914111 (= e!4162408 (and tp!1904086 tp!1904083))))

(assert (= (and b!6913923 (is-ElementMatch!16896 (regTwo!34304 r3!135))) b!6914110))

(assert (= (and b!6913923 (is-Concat!25741 (regTwo!34304 r3!135))) b!6914111))

(assert (= (and b!6913923 (is-Star!16896 (regTwo!34304 r3!135))) b!6914112))

(assert (= (and b!6913923 (is-Union!16896 (regTwo!34304 r3!135))) b!6914113))

(declare-fun b!6914114 () Bool)

(declare-fun e!4162409 () Bool)

(assert (=> b!6914114 (= e!4162409 tp_is_empty!43017)))

(declare-fun b!6914117 () Bool)

(declare-fun tp!1904089 () Bool)

(declare-fun tp!1904092 () Bool)

(assert (=> b!6914117 (= e!4162409 (and tp!1904089 tp!1904092))))

(assert (=> b!6913935 (= tp!1903987 e!4162409)))

(declare-fun b!6914116 () Bool)

(declare-fun tp!1904090 () Bool)

(assert (=> b!6914116 (= e!4162409 tp!1904090)))

(declare-fun b!6914115 () Bool)

(declare-fun tp!1904091 () Bool)

(declare-fun tp!1904088 () Bool)

(assert (=> b!6914115 (= e!4162409 (and tp!1904091 tp!1904088))))

(assert (= (and b!6913935 (is-ElementMatch!16896 (regOne!34304 r1!6342))) b!6914114))

(assert (= (and b!6913935 (is-Concat!25741 (regOne!34304 r1!6342))) b!6914115))

(assert (= (and b!6913935 (is-Star!16896 (regOne!34304 r1!6342))) b!6914116))

(assert (= (and b!6913935 (is-Union!16896 (regOne!34304 r1!6342))) b!6914117))

(declare-fun b!6914118 () Bool)

(declare-fun e!4162410 () Bool)

(assert (=> b!6914118 (= e!4162410 tp_is_empty!43017)))

(declare-fun b!6914121 () Bool)

(declare-fun tp!1904094 () Bool)

(declare-fun tp!1904097 () Bool)

(assert (=> b!6914121 (= e!4162410 (and tp!1904094 tp!1904097))))

(assert (=> b!6913935 (= tp!1903977 e!4162410)))

(declare-fun b!6914120 () Bool)

(declare-fun tp!1904095 () Bool)

(assert (=> b!6914120 (= e!4162410 tp!1904095)))

(declare-fun b!6914119 () Bool)

(declare-fun tp!1904096 () Bool)

(declare-fun tp!1904093 () Bool)

(assert (=> b!6914119 (= e!4162410 (and tp!1904096 tp!1904093))))

(assert (= (and b!6913935 (is-ElementMatch!16896 (regTwo!34304 r1!6342))) b!6914118))

(assert (= (and b!6913935 (is-Concat!25741 (regTwo!34304 r1!6342))) b!6914119))

(assert (= (and b!6913935 (is-Star!16896 (regTwo!34304 r1!6342))) b!6914120))

(assert (= (and b!6913935 (is-Union!16896 (regTwo!34304 r1!6342))) b!6914121))

(declare-fun b!6914122 () Bool)

(declare-fun e!4162411 () Bool)

(assert (=> b!6914122 (= e!4162411 tp_is_empty!43017)))

(declare-fun b!6914125 () Bool)

(declare-fun tp!1904099 () Bool)

(declare-fun tp!1904102 () Bool)

(assert (=> b!6914125 (= e!4162411 (and tp!1904099 tp!1904102))))

(assert (=> b!6913930 (= tp!1903991 e!4162411)))

(declare-fun b!6914124 () Bool)

(declare-fun tp!1904100 () Bool)

(assert (=> b!6914124 (= e!4162411 tp!1904100)))

(declare-fun b!6914123 () Bool)

(declare-fun tp!1904101 () Bool)

(declare-fun tp!1904098 () Bool)

(assert (=> b!6914123 (= e!4162411 (and tp!1904101 tp!1904098))))

(assert (= (and b!6913930 (is-ElementMatch!16896 (regOne!34304 r2!6280))) b!6914122))

(assert (= (and b!6913930 (is-Concat!25741 (regOne!34304 r2!6280))) b!6914123))

(assert (= (and b!6913930 (is-Star!16896 (regOne!34304 r2!6280))) b!6914124))

(assert (= (and b!6913930 (is-Union!16896 (regOne!34304 r2!6280))) b!6914125))

(declare-fun b!6914126 () Bool)

(declare-fun e!4162412 () Bool)

(assert (=> b!6914126 (= e!4162412 tp_is_empty!43017)))

(declare-fun b!6914129 () Bool)

(declare-fun tp!1904104 () Bool)

(declare-fun tp!1904107 () Bool)

(assert (=> b!6914129 (= e!4162412 (and tp!1904104 tp!1904107))))

(assert (=> b!6913930 (= tp!1903980 e!4162412)))

(declare-fun b!6914128 () Bool)

(declare-fun tp!1904105 () Bool)

(assert (=> b!6914128 (= e!4162412 tp!1904105)))

(declare-fun b!6914127 () Bool)

(declare-fun tp!1904106 () Bool)

(declare-fun tp!1904103 () Bool)

(assert (=> b!6914127 (= e!4162412 (and tp!1904106 tp!1904103))))

(assert (= (and b!6913930 (is-ElementMatch!16896 (regTwo!34304 r2!6280))) b!6914126))

(assert (= (and b!6913930 (is-Concat!25741 (regTwo!34304 r2!6280))) b!6914127))

(assert (= (and b!6913930 (is-Star!16896 (regTwo!34304 r2!6280))) b!6914128))

(assert (= (and b!6913930 (is-Union!16896 (regTwo!34304 r2!6280))) b!6914129))

(declare-fun b!6914130 () Bool)

(declare-fun e!4162413 () Bool)

(assert (=> b!6914130 (= e!4162413 tp_is_empty!43017)))

(declare-fun b!6914133 () Bool)

(declare-fun tp!1904109 () Bool)

(declare-fun tp!1904112 () Bool)

(assert (=> b!6914133 (= e!4162413 (and tp!1904109 tp!1904112))))

(assert (=> b!6913925 (= tp!1903985 e!4162413)))

(declare-fun b!6914132 () Bool)

(declare-fun tp!1904110 () Bool)

(assert (=> b!6914132 (= e!4162413 tp!1904110)))

(declare-fun b!6914131 () Bool)

(declare-fun tp!1904111 () Bool)

(declare-fun tp!1904108 () Bool)

(assert (=> b!6914131 (= e!4162413 (and tp!1904111 tp!1904108))))

(assert (= (and b!6913925 (is-ElementMatch!16896 (regOne!34305 r2!6280))) b!6914130))

(assert (= (and b!6913925 (is-Concat!25741 (regOne!34305 r2!6280))) b!6914131))

(assert (= (and b!6913925 (is-Star!16896 (regOne!34305 r2!6280))) b!6914132))

(assert (= (and b!6913925 (is-Union!16896 (regOne!34305 r2!6280))) b!6914133))

(declare-fun b!6914134 () Bool)

(declare-fun e!4162414 () Bool)

(assert (=> b!6914134 (= e!4162414 tp_is_empty!43017)))

(declare-fun b!6914137 () Bool)

(declare-fun tp!1904114 () Bool)

(declare-fun tp!1904117 () Bool)

(assert (=> b!6914137 (= e!4162414 (and tp!1904114 tp!1904117))))

(assert (=> b!6913925 (= tp!1903986 e!4162414)))

(declare-fun b!6914136 () Bool)

(declare-fun tp!1904115 () Bool)

(assert (=> b!6914136 (= e!4162414 tp!1904115)))

(declare-fun b!6914135 () Bool)

(declare-fun tp!1904116 () Bool)

(declare-fun tp!1904113 () Bool)

(assert (=> b!6914135 (= e!4162414 (and tp!1904116 tp!1904113))))

(assert (= (and b!6913925 (is-ElementMatch!16896 (regTwo!34305 r2!6280))) b!6914134))

(assert (= (and b!6913925 (is-Concat!25741 (regTwo!34305 r2!6280))) b!6914135))

(assert (= (and b!6913925 (is-Star!16896 (regTwo!34305 r2!6280))) b!6914136))

(assert (= (and b!6913925 (is-Union!16896 (regTwo!34305 r2!6280))) b!6914137))

(declare-fun b!6914138 () Bool)

(declare-fun e!4162415 () Bool)

(assert (=> b!6914138 (= e!4162415 tp_is_empty!43017)))

(declare-fun b!6914141 () Bool)

(declare-fun tp!1904119 () Bool)

(declare-fun tp!1904122 () Bool)

(assert (=> b!6914141 (= e!4162415 (and tp!1904119 tp!1904122))))

(assert (=> b!6913920 (= tp!1903984 e!4162415)))

(declare-fun b!6914140 () Bool)

(declare-fun tp!1904120 () Bool)

(assert (=> b!6914140 (= e!4162415 tp!1904120)))

(declare-fun b!6914139 () Bool)

(declare-fun tp!1904121 () Bool)

(declare-fun tp!1904118 () Bool)

(assert (=> b!6914139 (= e!4162415 (and tp!1904121 tp!1904118))))

(assert (= (and b!6913920 (is-ElementMatch!16896 (regOne!34305 r1!6342))) b!6914138))

(assert (= (and b!6913920 (is-Concat!25741 (regOne!34305 r1!6342))) b!6914139))

(assert (= (and b!6913920 (is-Star!16896 (regOne!34305 r1!6342))) b!6914140))

(assert (= (and b!6913920 (is-Union!16896 (regOne!34305 r1!6342))) b!6914141))

(declare-fun b!6914142 () Bool)

(declare-fun e!4162416 () Bool)

(assert (=> b!6914142 (= e!4162416 tp_is_empty!43017)))

(declare-fun b!6914145 () Bool)

(declare-fun tp!1904124 () Bool)

(declare-fun tp!1904127 () Bool)

(assert (=> b!6914145 (= e!4162416 (and tp!1904124 tp!1904127))))

(assert (=> b!6913920 (= tp!1903989 e!4162416)))

(declare-fun b!6914144 () Bool)

(declare-fun tp!1904125 () Bool)

(assert (=> b!6914144 (= e!4162416 tp!1904125)))

(declare-fun b!6914143 () Bool)

(declare-fun tp!1904126 () Bool)

(declare-fun tp!1904123 () Bool)

(assert (=> b!6914143 (= e!4162416 (and tp!1904126 tp!1904123))))

(assert (= (and b!6913920 (is-ElementMatch!16896 (regTwo!34305 r1!6342))) b!6914142))

(assert (= (and b!6913920 (is-Concat!25741 (regTwo!34305 r1!6342))) b!6914143))

(assert (= (and b!6913920 (is-Star!16896 (regTwo!34305 r1!6342))) b!6914144))

(assert (= (and b!6913920 (is-Union!16896 (regTwo!34305 r1!6342))) b!6914145))

(push 1)

(assert (not bm!628564))

(assert (not b!6914116))

(assert (not b!6914082))

(assert (not b!6914117))

(assert (not b!6914107))

(assert (not b!6914120))

(assert (not b!6914109))

(assert (not b!6914079))

(assert (not bm!628560))

(assert (not b!6914131))

(assert (not bm!628558))

(assert (not b!6914111))

(assert (not b!6914124))

(assert tp_is_empty!43017)

(assert (not b!6914083))

(assert (not b!6914115))

(assert (not b!6914145))

(assert (not b!6914113))

(assert (not b!6914105))

(assert (not bm!628561))

(assert (not b!6914123))

(assert (not b!6914133))

(assert (not b!6914094))

(assert (not b!6914077))

(assert (not b!6914140))

(assert (not b!6914095))

(assert (not b!6914074))

(assert (not b!6914075))

(assert (not b!6914143))

(assert (not b!6914135))

(assert (not b!6914137))

(assert (not b!6914121))

(assert (not b!6914129))

(assert (not b!6914132))

(assert (not b!6914022))

(assert (not b!6914127))

(assert (not b!6914144))

(assert (not b!6914119))

(assert (not b!6914037))

(assert (not b!6914100))

(assert (not b!6914112))

(assert (not b!6914141))

(assert (not b!6914034))

(assert (not b!6914078))

(assert (not b!6914125))

(assert (not b!6914046))

(assert (not b!6914128))

(assert (not b!6914108))

(assert (not b!6914139))

(assert (not b!6914098))

(assert (not b!6914136))

(assert (not bm!628557))

(assert (not b!6914081))

(assert (not b!6914099))

(assert (not b!6914096))

(assert (not b!6914073))

(assert (not bm!628563))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

