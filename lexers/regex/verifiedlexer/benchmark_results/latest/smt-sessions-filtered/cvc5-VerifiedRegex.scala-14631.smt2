; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756630 () Bool)

(assert start!756630)

(declare-fun b!8032616 () Bool)

(declare-fun e!4732053 () Bool)

(declare-fun tp!2404355 () Bool)

(declare-fun tp!2404357 () Bool)

(assert (=> b!8032616 (= e!4732053 (and tp!2404355 tp!2404357))))

(declare-fun res!3176461 () Bool)

(declare-fun e!4732052 () Bool)

(assert (=> start!756630 (=> (not res!3176461) (not e!4732052))))

(declare-datatypes ((C!43766 0))(
  ( (C!43767 (val!32659 Int)) )
))
(declare-datatypes ((Regex!21714 0))(
  ( (ElementMatch!21714 (c!1473571 C!43766)) (Concat!30717 (regOne!43940 Regex!21714) (regTwo!43940 Regex!21714)) (EmptyExpr!21714) (Star!21714 (reg!22043 Regex!21714)) (EmptyLang!21714) (Union!21714 (regOne!43941 Regex!21714) (regTwo!43941 Regex!21714)) )
))
(declare-fun r!13107 () Regex!21714)

(declare-fun validRegex!12010 (Regex!21714) Bool)

(assert (=> start!756630 (= res!3176461 (validRegex!12010 r!13107))))

(assert (=> start!756630 e!4732052))

(assert (=> start!756630 e!4732053))

(declare-fun tp_is_empty!54423 () Bool)

(assert (=> start!756630 tp_is_empty!54423))

(declare-fun b!8032617 () Bool)

(assert (=> b!8032617 (= e!4732052 (not (validRegex!12010 (regTwo!43941 r!13107))))))

(declare-fun lt!2721983 () Regex!21714)

(declare-fun a!2390 () C!43766)

(declare-fun derivativeStep!6655 (Regex!21714 C!43766) Regex!21714)

(assert (=> b!8032617 (= lt!2721983 (derivativeStep!6655 (regOne!43941 r!13107) a!2390))))

(declare-fun b!8032618 () Bool)

(assert (=> b!8032618 (= e!4732053 tp_is_empty!54423)))

(declare-fun b!8032619 () Bool)

(declare-fun tp!2404356 () Bool)

(declare-fun tp!2404358 () Bool)

(assert (=> b!8032619 (= e!4732053 (and tp!2404356 tp!2404358))))

(declare-fun b!8032620 () Bool)

(declare-fun res!3176460 () Bool)

(assert (=> b!8032620 (=> (not res!3176460) (not e!4732052))))

(assert (=> b!8032620 (= res!3176460 (and (not (is-EmptyExpr!21714 r!13107)) (not (is-EmptyLang!21714 r!13107)) (not (is-ElementMatch!21714 r!13107)) (is-Union!21714 r!13107)))))

(declare-fun b!8032621 () Bool)

(declare-fun tp!2404354 () Bool)

(assert (=> b!8032621 (= e!4732053 tp!2404354)))

(assert (= (and start!756630 res!3176461) b!8032620))

(assert (= (and b!8032620 res!3176460) b!8032617))

(assert (= (and start!756630 (is-ElementMatch!21714 r!13107)) b!8032618))

(assert (= (and start!756630 (is-Concat!30717 r!13107)) b!8032619))

(assert (= (and start!756630 (is-Star!21714 r!13107)) b!8032621))

(assert (= (and start!756630 (is-Union!21714 r!13107)) b!8032616))

(declare-fun m!8392538 () Bool)

(assert (=> start!756630 m!8392538))

(declare-fun m!8392540 () Bool)

(assert (=> b!8032617 m!8392540))

(declare-fun m!8392542 () Bool)

(assert (=> b!8032617 m!8392542))

(push 1)

(assert (not b!8032619))

(assert (not b!8032621))

(assert (not b!8032616))

(assert (not b!8032617))

(assert (not start!756630))

(assert tp_is_empty!54423)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!8032658 () Bool)

(declare-fun res!3176480 () Bool)

(declare-fun e!4732080 () Bool)

(assert (=> b!8032658 (=> res!3176480 e!4732080)))

(assert (=> b!8032658 (= res!3176480 (not (is-Concat!30717 r!13107)))))

(declare-fun e!4732074 () Bool)

(assert (=> b!8032658 (= e!4732074 e!4732080)))

(declare-fun bm!745156 () Bool)

(declare-fun call!745161 () Bool)

(declare-fun c!1473577 () Bool)

(assert (=> bm!745156 (= call!745161 (validRegex!12010 (ite c!1473577 (regTwo!43941 r!13107) (regTwo!43940 r!13107))))))

(declare-fun b!8032659 () Bool)

(declare-fun e!4732077 () Bool)

(assert (=> b!8032659 (= e!4732077 call!745161)))

(declare-fun c!1473578 () Bool)

(declare-fun call!745163 () Bool)

(declare-fun bm!745157 () Bool)

(assert (=> bm!745157 (= call!745163 (validRegex!12010 (ite c!1473578 (reg!22043 r!13107) (ite c!1473577 (regOne!43941 r!13107) (regOne!43940 r!13107)))))))

(declare-fun b!8032660 () Bool)

(declare-fun e!4732078 () Bool)

(assert (=> b!8032660 (= e!4732078 call!745161)))

(declare-fun b!8032662 () Bool)

(declare-fun e!4732076 () Bool)

(declare-fun e!4732079 () Bool)

(assert (=> b!8032662 (= e!4732076 e!4732079)))

(declare-fun res!3176481 () Bool)

(declare-fun nullable!9747 (Regex!21714) Bool)

(assert (=> b!8032662 (= res!3176481 (not (nullable!9747 (reg!22043 r!13107))))))

(assert (=> b!8032662 (=> (not res!3176481) (not e!4732079))))

(declare-fun b!8032663 () Bool)

(assert (=> b!8032663 (= e!4732076 e!4732074)))

(assert (=> b!8032663 (= c!1473577 (is-Union!21714 r!13107))))

(declare-fun b!8032664 () Bool)

(declare-fun res!3176478 () Bool)

(assert (=> b!8032664 (=> (not res!3176478) (not e!4732078))))

(declare-fun call!745162 () Bool)

(assert (=> b!8032664 (= res!3176478 call!745162)))

(assert (=> b!8032664 (= e!4732074 e!4732078)))

(declare-fun b!8032665 () Bool)

(assert (=> b!8032665 (= e!4732080 e!4732077)))

(declare-fun res!3176482 () Bool)

(assert (=> b!8032665 (=> (not res!3176482) (not e!4732077))))

(assert (=> b!8032665 (= res!3176482 call!745162)))

(declare-fun bm!745158 () Bool)

(assert (=> bm!745158 (= call!745162 call!745163)))

(declare-fun b!8032666 () Bool)

(declare-fun e!4732075 () Bool)

(assert (=> b!8032666 (= e!4732075 e!4732076)))

(assert (=> b!8032666 (= c!1473578 (is-Star!21714 r!13107))))

(declare-fun b!8032661 () Bool)

(assert (=> b!8032661 (= e!4732079 call!745163)))

(declare-fun d!2394774 () Bool)

(declare-fun res!3176479 () Bool)

(assert (=> d!2394774 (=> res!3176479 e!4732075)))

(assert (=> d!2394774 (= res!3176479 (is-ElementMatch!21714 r!13107))))

(assert (=> d!2394774 (= (validRegex!12010 r!13107) e!4732075)))

(assert (= (and d!2394774 (not res!3176479)) b!8032666))

(assert (= (and b!8032666 c!1473578) b!8032662))

(assert (= (and b!8032666 (not c!1473578)) b!8032663))

(assert (= (and b!8032662 res!3176481) b!8032661))

(assert (= (and b!8032663 c!1473577) b!8032664))

(assert (= (and b!8032663 (not c!1473577)) b!8032658))

(assert (= (and b!8032664 res!3176478) b!8032660))

(assert (= (and b!8032658 (not res!3176480)) b!8032665))

(assert (= (and b!8032665 res!3176482) b!8032659))

(assert (= (or b!8032660 b!8032659) bm!745156))

(assert (= (or b!8032664 b!8032665) bm!745158))

(assert (= (or b!8032661 bm!745158) bm!745157))

(declare-fun m!8392550 () Bool)

(assert (=> bm!745156 m!8392550))

(declare-fun m!8392552 () Bool)

(assert (=> bm!745157 m!8392552))

(declare-fun m!8392554 () Bool)

(assert (=> b!8032662 m!8392554))

(assert (=> start!756630 d!2394774))

(declare-fun b!8032673 () Bool)

(declare-fun res!3176487 () Bool)

(declare-fun e!4732091 () Bool)

(assert (=> b!8032673 (=> res!3176487 e!4732091)))

(assert (=> b!8032673 (= res!3176487 (not (is-Concat!30717 (regTwo!43941 r!13107))))))

(declare-fun e!4732085 () Bool)

(assert (=> b!8032673 (= e!4732085 e!4732091)))

(declare-fun bm!745159 () Bool)

(declare-fun call!745164 () Bool)

(declare-fun c!1473581 () Bool)

(assert (=> bm!745159 (= call!745164 (validRegex!12010 (ite c!1473581 (regTwo!43941 (regTwo!43941 r!13107)) (regTwo!43940 (regTwo!43941 r!13107)))))))

(declare-fun b!8032674 () Bool)

(declare-fun e!4732088 () Bool)

(assert (=> b!8032674 (= e!4732088 call!745164)))

(declare-fun bm!745160 () Bool)

(declare-fun c!1473582 () Bool)

(declare-fun call!745166 () Bool)

(assert (=> bm!745160 (= call!745166 (validRegex!12010 (ite c!1473582 (reg!22043 (regTwo!43941 r!13107)) (ite c!1473581 (regOne!43941 (regTwo!43941 r!13107)) (regOne!43940 (regTwo!43941 r!13107))))))))

(declare-fun b!8032675 () Bool)

(declare-fun e!4732089 () Bool)

(assert (=> b!8032675 (= e!4732089 call!745164)))

(declare-fun b!8032677 () Bool)

(declare-fun e!4732087 () Bool)

(declare-fun e!4732090 () Bool)

(assert (=> b!8032677 (= e!4732087 e!4732090)))

(declare-fun res!3176488 () Bool)

(assert (=> b!8032677 (= res!3176488 (not (nullable!9747 (reg!22043 (regTwo!43941 r!13107)))))))

(assert (=> b!8032677 (=> (not res!3176488) (not e!4732090))))

(declare-fun b!8032678 () Bool)

(assert (=> b!8032678 (= e!4732087 e!4732085)))

(assert (=> b!8032678 (= c!1473581 (is-Union!21714 (regTwo!43941 r!13107)))))

(declare-fun b!8032679 () Bool)

(declare-fun res!3176485 () Bool)

(assert (=> b!8032679 (=> (not res!3176485) (not e!4732089))))

(declare-fun call!745165 () Bool)

(assert (=> b!8032679 (= res!3176485 call!745165)))

(assert (=> b!8032679 (= e!4732085 e!4732089)))

(declare-fun b!8032680 () Bool)

(assert (=> b!8032680 (= e!4732091 e!4732088)))

(declare-fun res!3176489 () Bool)

(assert (=> b!8032680 (=> (not res!3176489) (not e!4732088))))

(assert (=> b!8032680 (= res!3176489 call!745165)))

(declare-fun bm!745161 () Bool)

(assert (=> bm!745161 (= call!745165 call!745166)))

(declare-fun b!8032681 () Bool)

(declare-fun e!4732086 () Bool)

(assert (=> b!8032681 (= e!4732086 e!4732087)))

(assert (=> b!8032681 (= c!1473582 (is-Star!21714 (regTwo!43941 r!13107)))))

(declare-fun b!8032676 () Bool)

(assert (=> b!8032676 (= e!4732090 call!745166)))

(declare-fun d!2394778 () Bool)

(declare-fun res!3176486 () Bool)

(assert (=> d!2394778 (=> res!3176486 e!4732086)))

(assert (=> d!2394778 (= res!3176486 (is-ElementMatch!21714 (regTwo!43941 r!13107)))))

(assert (=> d!2394778 (= (validRegex!12010 (regTwo!43941 r!13107)) e!4732086)))

(assert (= (and d!2394778 (not res!3176486)) b!8032681))

(assert (= (and b!8032681 c!1473582) b!8032677))

(assert (= (and b!8032681 (not c!1473582)) b!8032678))

(assert (= (and b!8032677 res!3176488) b!8032676))

(assert (= (and b!8032678 c!1473581) b!8032679))

(assert (= (and b!8032678 (not c!1473581)) b!8032673))

(assert (= (and b!8032679 res!3176485) b!8032675))

(assert (= (and b!8032673 (not res!3176487)) b!8032680))

(assert (= (and b!8032680 res!3176489) b!8032674))

(assert (= (or b!8032675 b!8032674) bm!745159))

(assert (= (or b!8032679 b!8032680) bm!745161))

(assert (= (or b!8032676 bm!745161) bm!745160))

(declare-fun m!8392556 () Bool)

(assert (=> bm!745159 m!8392556))

(declare-fun m!8392558 () Bool)

(assert (=> bm!745160 m!8392558))

(declare-fun m!8392560 () Bool)

(assert (=> b!8032677 m!8392560))

(assert (=> b!8032617 d!2394778))

(declare-fun bm!745182 () Bool)

(declare-fun call!745190 () Regex!21714)

(declare-fun call!745187 () Regex!21714)

(assert (=> bm!745182 (= call!745190 call!745187)))

(declare-fun call!745189 () Regex!21714)

(declare-fun e!4732129 () Regex!21714)

(declare-fun b!8032732 () Bool)

(assert (=> b!8032732 (= e!4732129 (Union!21714 (Concat!30717 call!745189 (regTwo!43940 (regOne!43941 r!13107))) call!745190))))

(declare-fun d!2394780 () Bool)

(declare-fun lt!2721989 () Regex!21714)

(assert (=> d!2394780 (validRegex!12010 lt!2721989)))

(declare-fun e!4732130 () Regex!21714)

(assert (=> d!2394780 (= lt!2721989 e!4732130)))

(declare-fun c!1473601 () Bool)

(assert (=> d!2394780 (= c!1473601 (or (is-EmptyExpr!21714 (regOne!43941 r!13107)) (is-EmptyLang!21714 (regOne!43941 r!13107))))))

(assert (=> d!2394780 (validRegex!12010 (regOne!43941 r!13107))))

(assert (=> d!2394780 (= (derivativeStep!6655 (regOne!43941 r!13107) a!2390) lt!2721989)))

(declare-fun b!8032733 () Bool)

(assert (=> b!8032733 (= e!4732129 (Union!21714 (Concat!30717 call!745190 (regTwo!43940 (regOne!43941 r!13107))) EmptyLang!21714))))

(declare-fun b!8032734 () Bool)

(declare-fun e!4732128 () Regex!21714)

(assert (=> b!8032734 (= e!4732128 (Concat!30717 call!745189 (regOne!43941 r!13107)))))

(declare-fun b!8032735 () Bool)

(declare-fun c!1473602 () Bool)

(assert (=> b!8032735 (= c!1473602 (nullable!9747 (regOne!43940 (regOne!43941 r!13107))))))

(assert (=> b!8032735 (= e!4732128 e!4732129)))

(declare-fun c!1473600 () Bool)

(declare-fun bm!745183 () Bool)

(assert (=> bm!745183 (= call!745187 (derivativeStep!6655 (ite c!1473600 (regOne!43941 (regOne!43941 r!13107)) (ite c!1473602 (regTwo!43940 (regOne!43941 r!13107)) (regOne!43940 (regOne!43941 r!13107)))) a!2390))))

(declare-fun b!8032736 () Bool)

(assert (=> b!8032736 (= c!1473600 (is-Union!21714 (regOne!43941 r!13107)))))

(declare-fun e!4732127 () Regex!21714)

(declare-fun e!4732126 () Regex!21714)

(assert (=> b!8032736 (= e!4732127 e!4732126)))

(declare-fun b!8032737 () Bool)

(declare-fun call!745188 () Regex!21714)

(assert (=> b!8032737 (= e!4732126 (Union!21714 call!745187 call!745188))))

(declare-fun bm!745184 () Bool)

(assert (=> bm!745184 (= call!745189 call!745188)))

(declare-fun b!8032738 () Bool)

(assert (=> b!8032738 (= e!4732126 e!4732128)))

(declare-fun c!1473599 () Bool)

(assert (=> b!8032738 (= c!1473599 (is-Star!21714 (regOne!43941 r!13107)))))

(declare-fun b!8032739 () Bool)

(assert (=> b!8032739 (= e!4732127 (ite (= a!2390 (c!1473571 (regOne!43941 r!13107))) EmptyExpr!21714 EmptyLang!21714))))

(declare-fun bm!745185 () Bool)

(assert (=> bm!745185 (= call!745188 (derivativeStep!6655 (ite c!1473600 (regTwo!43941 (regOne!43941 r!13107)) (ite c!1473599 (reg!22043 (regOne!43941 r!13107)) (regOne!43940 (regOne!43941 r!13107)))) a!2390))))

(declare-fun b!8032740 () Bool)

(assert (=> b!8032740 (= e!4732130 EmptyLang!21714)))

(declare-fun b!8032741 () Bool)

(assert (=> b!8032741 (= e!4732130 e!4732127)))

(declare-fun c!1473603 () Bool)

(assert (=> b!8032741 (= c!1473603 (is-ElementMatch!21714 (regOne!43941 r!13107)))))

(assert (= (and d!2394780 c!1473601) b!8032740))

(assert (= (and d!2394780 (not c!1473601)) b!8032741))

(assert (= (and b!8032741 c!1473603) b!8032739))

(assert (= (and b!8032741 (not c!1473603)) b!8032736))

(assert (= (and b!8032736 c!1473600) b!8032737))

(assert (= (and b!8032736 (not c!1473600)) b!8032738))

(assert (= (and b!8032738 c!1473599) b!8032734))

(assert (= (and b!8032738 (not c!1473599)) b!8032735))

(assert (= (and b!8032735 c!1473602) b!8032732))

(assert (= (and b!8032735 (not c!1473602)) b!8032733))

(assert (= (or b!8032732 b!8032733) bm!745182))

(assert (= (or b!8032734 b!8032732) bm!745184))

(assert (= (or b!8032737 bm!745184) bm!745185))

(assert (= (or b!8032737 bm!745182) bm!745183))

(declare-fun m!8392574 () Bool)

(assert (=> d!2394780 m!8392574))

(declare-fun m!8392576 () Bool)

(assert (=> d!2394780 m!8392576))

(declare-fun m!8392578 () Bool)

(assert (=> b!8032735 m!8392578))

(declare-fun m!8392580 () Bool)

(assert (=> bm!745183 m!8392580))

(declare-fun m!8392582 () Bool)

(assert (=> bm!745185 m!8392582))

(assert (=> b!8032617 d!2394780))

(declare-fun b!8032754 () Bool)

(declare-fun e!4732133 () Bool)

(declare-fun tp!2404388 () Bool)

(assert (=> b!8032754 (= e!4732133 tp!2404388)))

(assert (=> b!8032619 (= tp!2404356 e!4732133)))

(declare-fun b!8032752 () Bool)

(assert (=> b!8032752 (= e!4732133 tp_is_empty!54423)))

(declare-fun b!8032755 () Bool)

(declare-fun tp!2404386 () Bool)

(declare-fun tp!2404384 () Bool)

(assert (=> b!8032755 (= e!4732133 (and tp!2404386 tp!2404384))))

(declare-fun b!8032753 () Bool)

(declare-fun tp!2404385 () Bool)

(declare-fun tp!2404387 () Bool)

(assert (=> b!8032753 (= e!4732133 (and tp!2404385 tp!2404387))))

(assert (= (and b!8032619 (is-ElementMatch!21714 (regOne!43940 r!13107))) b!8032752))

(assert (= (and b!8032619 (is-Concat!30717 (regOne!43940 r!13107))) b!8032753))

(assert (= (and b!8032619 (is-Star!21714 (regOne!43940 r!13107))) b!8032754))

(assert (= (and b!8032619 (is-Union!21714 (regOne!43940 r!13107))) b!8032755))

(declare-fun b!8032758 () Bool)

(declare-fun e!4732134 () Bool)

(declare-fun tp!2404393 () Bool)

(assert (=> b!8032758 (= e!4732134 tp!2404393)))

(assert (=> b!8032619 (= tp!2404358 e!4732134)))

(declare-fun b!8032756 () Bool)

(assert (=> b!8032756 (= e!4732134 tp_is_empty!54423)))

(declare-fun b!8032759 () Bool)

(declare-fun tp!2404391 () Bool)

(declare-fun tp!2404389 () Bool)

(assert (=> b!8032759 (= e!4732134 (and tp!2404391 tp!2404389))))

(declare-fun b!8032757 () Bool)

(declare-fun tp!2404390 () Bool)

(declare-fun tp!2404392 () Bool)

(assert (=> b!8032757 (= e!4732134 (and tp!2404390 tp!2404392))))

(assert (= (and b!8032619 (is-ElementMatch!21714 (regTwo!43940 r!13107))) b!8032756))

(assert (= (and b!8032619 (is-Concat!30717 (regTwo!43940 r!13107))) b!8032757))

(assert (= (and b!8032619 (is-Star!21714 (regTwo!43940 r!13107))) b!8032758))

(assert (= (and b!8032619 (is-Union!21714 (regTwo!43940 r!13107))) b!8032759))

(declare-fun b!8032762 () Bool)

(declare-fun e!4732135 () Bool)

(declare-fun tp!2404398 () Bool)

(assert (=> b!8032762 (= e!4732135 tp!2404398)))

(assert (=> b!8032621 (= tp!2404354 e!4732135)))

(declare-fun b!8032760 () Bool)

(assert (=> b!8032760 (= e!4732135 tp_is_empty!54423)))

(declare-fun b!8032763 () Bool)

(declare-fun tp!2404396 () Bool)

(declare-fun tp!2404394 () Bool)

(assert (=> b!8032763 (= e!4732135 (and tp!2404396 tp!2404394))))

(declare-fun b!8032761 () Bool)

(declare-fun tp!2404395 () Bool)

(declare-fun tp!2404397 () Bool)

(assert (=> b!8032761 (= e!4732135 (and tp!2404395 tp!2404397))))

(assert (= (and b!8032621 (is-ElementMatch!21714 (reg!22043 r!13107))) b!8032760))

(assert (= (and b!8032621 (is-Concat!30717 (reg!22043 r!13107))) b!8032761))

(assert (= (and b!8032621 (is-Star!21714 (reg!22043 r!13107))) b!8032762))

(assert (= (and b!8032621 (is-Union!21714 (reg!22043 r!13107))) b!8032763))

(declare-fun b!8032766 () Bool)

(declare-fun e!4732136 () Bool)

(declare-fun tp!2404403 () Bool)

(assert (=> b!8032766 (= e!4732136 tp!2404403)))

(assert (=> b!8032616 (= tp!2404355 e!4732136)))

(declare-fun b!8032764 () Bool)

(assert (=> b!8032764 (= e!4732136 tp_is_empty!54423)))

(declare-fun b!8032767 () Bool)

(declare-fun tp!2404401 () Bool)

(declare-fun tp!2404399 () Bool)

(assert (=> b!8032767 (= e!4732136 (and tp!2404401 tp!2404399))))

(declare-fun b!8032765 () Bool)

(declare-fun tp!2404400 () Bool)

(declare-fun tp!2404402 () Bool)

(assert (=> b!8032765 (= e!4732136 (and tp!2404400 tp!2404402))))

(assert (= (and b!8032616 (is-ElementMatch!21714 (regOne!43941 r!13107))) b!8032764))

(assert (= (and b!8032616 (is-Concat!30717 (regOne!43941 r!13107))) b!8032765))

(assert (= (and b!8032616 (is-Star!21714 (regOne!43941 r!13107))) b!8032766))

(assert (= (and b!8032616 (is-Union!21714 (regOne!43941 r!13107))) b!8032767))

(declare-fun b!8032770 () Bool)

(declare-fun e!4732137 () Bool)

(declare-fun tp!2404408 () Bool)

(assert (=> b!8032770 (= e!4732137 tp!2404408)))

(assert (=> b!8032616 (= tp!2404357 e!4732137)))

(declare-fun b!8032768 () Bool)

(assert (=> b!8032768 (= e!4732137 tp_is_empty!54423)))

(declare-fun b!8032771 () Bool)

(declare-fun tp!2404406 () Bool)

(declare-fun tp!2404404 () Bool)

(assert (=> b!8032771 (= e!4732137 (and tp!2404406 tp!2404404))))

(declare-fun b!8032769 () Bool)

(declare-fun tp!2404405 () Bool)

(declare-fun tp!2404407 () Bool)

(assert (=> b!8032769 (= e!4732137 (and tp!2404405 tp!2404407))))

(assert (= (and b!8032616 (is-ElementMatch!21714 (regTwo!43941 r!13107))) b!8032768))

(assert (= (and b!8032616 (is-Concat!30717 (regTwo!43941 r!13107))) b!8032769))

(assert (= (and b!8032616 (is-Star!21714 (regTwo!43941 r!13107))) b!8032770))

(assert (= (and b!8032616 (is-Union!21714 (regTwo!43941 r!13107))) b!8032771))

(push 1)

(assert (not b!8032771))

(assert (not b!8032758))

(assert (not b!8032677))

(assert (not bm!745159))

(assert (not bm!745156))

(assert (not b!8032770))

(assert (not b!8032759))

(assert (not b!8032765))

(assert (not b!8032767))

(assert (not b!8032753))

(assert (not b!8032769))

(assert (not b!8032754))

(assert (not b!8032761))

(assert (not b!8032762))

(assert (not b!8032735))

(assert (not b!8032755))

(assert (not b!8032757))

(assert (not d!2394780))

(assert (not b!8032763))

(assert (not bm!745160))

(assert (not b!8032766))

(assert (not b!8032662))

(assert (not bm!745185))

(assert (not bm!745157))

(assert tp_is_empty!54423)

(assert (not bm!745183))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

