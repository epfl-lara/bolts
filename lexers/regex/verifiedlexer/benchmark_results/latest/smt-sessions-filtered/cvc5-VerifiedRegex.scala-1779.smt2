; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!88788 () Bool)

(assert start!88788)

(declare-fun b!1019931 () Bool)

(assert (=> b!1019931 true))

(assert (=> b!1019931 true))

(declare-fun lambda!36202 () Int)

(declare-fun lambda!36201 () Int)

(assert (=> b!1019931 (not (= lambda!36202 lambda!36201))))

(assert (=> b!1019931 true))

(assert (=> b!1019931 true))

(declare-fun b!1019922 () Bool)

(declare-fun e!651446 () Bool)

(declare-fun tp!309997 () Bool)

(declare-fun tp!309998 () Bool)

(assert (=> b!1019922 (= e!651446 (and tp!309997 tp!309998))))

(declare-fun b!1019923 () Bool)

(declare-fun res!458308 () Bool)

(declare-fun e!651444 () Bool)

(assert (=> b!1019923 (=> res!458308 e!651444)))

(declare-datatypes ((C!6202 0))(
  ( (C!6203 (val!3349 Int)) )
))
(declare-datatypes ((Regex!2816 0))(
  ( (ElementMatch!2816 (c!168995 C!6202)) (Concat!4649 (regOne!6144 Regex!2816) (regTwo!6144 Regex!2816)) (EmptyExpr!2816) (Star!2816 (reg!3145 Regex!2816)) (EmptyLang!2816) (Union!2816 (regOne!6145 Regex!2816) (regTwo!6145 Regex!2816)) )
))
(declare-fun r!15766 () Regex!2816)

(declare-fun validRegex!1285 (Regex!2816) Bool)

(assert (=> b!1019923 (= res!458308 (not (validRegex!1285 (regTwo!6144 r!15766))))))

(declare-fun b!1019924 () Bool)

(declare-fun res!458310 () Bool)

(assert (=> b!1019924 (=> res!458310 e!651444)))

(declare-datatypes ((List!10046 0))(
  ( (Nil!10030) (Cons!10030 (h!15431 C!6202) (t!101092 List!10046)) )
))
(declare-datatypes ((tuple2!11414 0))(
  ( (tuple2!11415 (_1!6533 List!10046) (_2!6533 List!10046)) )
))
(declare-datatypes ((Option!2349 0))(
  ( (None!2348) (Some!2348 (v!19765 tuple2!11414)) )
))
(declare-fun lt!354114 () Option!2349)

(declare-fun isEmpty!6379 (Option!2349) Bool)

(assert (=> b!1019924 (= res!458310 (not (isEmpty!6379 lt!354114)))))

(declare-fun lt!354115 () Int)

(declare-fun lt!354112 () Int)

(declare-fun b!1019925 () Bool)

(declare-fun regexDepth!31 (Regex!2816) Int)

(assert (=> b!1019925 (= e!651444 (< (+ lt!354112 lt!354115) (+ (regexDepth!31 r!15766) lt!354115)))))

(declare-fun s!10566 () List!10046)

(declare-fun size!7978 (List!10046) Int)

(assert (=> b!1019925 (= lt!354115 (size!7978 s!10566))))

(assert (=> b!1019925 (= lt!354112 (regexDepth!31 (regTwo!6144 r!15766)))))

(declare-fun b!1019926 () Bool)

(declare-fun tp!309999 () Bool)

(assert (=> b!1019926 (= e!651446 tp!309999)))

(declare-fun b!1019927 () Bool)

(declare-fun e!651445 () Bool)

(declare-fun tp_is_empty!5275 () Bool)

(declare-fun tp!310000 () Bool)

(assert (=> b!1019927 (= e!651445 (and tp_is_empty!5275 tp!310000))))

(declare-fun b!1019928 () Bool)

(declare-fun tp!310001 () Bool)

(declare-fun tp!310002 () Bool)

(assert (=> b!1019928 (= e!651446 (and tp!310001 tp!310002))))

(declare-fun res!458309 () Bool)

(declare-fun e!651447 () Bool)

(assert (=> start!88788 (=> (not res!458309) (not e!651447))))

(assert (=> start!88788 (= res!458309 (validRegex!1285 r!15766))))

(assert (=> start!88788 e!651447))

(assert (=> start!88788 e!651446))

(assert (=> start!88788 e!651445))

(declare-fun b!1019929 () Bool)

(declare-fun e!651448 () Bool)

(assert (=> b!1019929 (= e!651447 (not e!651448))))

(declare-fun res!458307 () Bool)

(assert (=> b!1019929 (=> res!458307 e!651448)))

(declare-fun lt!354110 () Bool)

(assert (=> b!1019929 (= res!458307 (or lt!354110 (not (is-Concat!4649 r!15766)) (not (is-EmptyExpr!2816 (regOne!6144 r!15766)))))))

(declare-fun matchRSpec!615 (Regex!2816 List!10046) Bool)

(assert (=> b!1019929 (= lt!354110 (matchRSpec!615 r!15766 s!10566))))

(declare-fun matchR!1352 (Regex!2816 List!10046) Bool)

(assert (=> b!1019929 (= lt!354110 (matchR!1352 r!15766 s!10566))))

(declare-datatypes ((Unit!15307 0))(
  ( (Unit!15308) )
))
(declare-fun lt!354111 () Unit!15307)

(declare-fun mainMatchTheorem!615 (Regex!2816 List!10046) Unit!15307)

(assert (=> b!1019929 (= lt!354111 (mainMatchTheorem!615 r!15766 s!10566))))

(declare-fun b!1019930 () Bool)

(assert (=> b!1019930 (= e!651446 tp_is_empty!5275)))

(assert (=> b!1019931 (= e!651448 e!651444)))

(declare-fun res!458311 () Bool)

(assert (=> b!1019931 (=> res!458311 e!651444)))

(declare-fun isEmpty!6380 (List!10046) Bool)

(assert (=> b!1019931 (= res!458311 (isEmpty!6380 s!10566))))

(declare-fun Exists!545 (Int) Bool)

(assert (=> b!1019931 (= (Exists!545 lambda!36201) (Exists!545 lambda!36202))))

(declare-fun lt!354113 () Unit!15307)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!247 (Regex!2816 Regex!2816 List!10046) Unit!15307)

(assert (=> b!1019931 (= lt!354113 (lemmaExistCutMatchRandMatchRSpecEquivalent!247 EmptyExpr!2816 (regTwo!6144 r!15766) s!10566))))

(declare-fun isDefined!1991 (Option!2349) Bool)

(assert (=> b!1019931 (= (isDefined!1991 lt!354114) (Exists!545 lambda!36201))))

(declare-fun findConcatSeparation!455 (Regex!2816 Regex!2816 List!10046 List!10046 List!10046) Option!2349)

(assert (=> b!1019931 (= lt!354114 (findConcatSeparation!455 EmptyExpr!2816 (regTwo!6144 r!15766) Nil!10030 s!10566 s!10566))))

(declare-fun lt!354116 () Unit!15307)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!455 (Regex!2816 Regex!2816 List!10046) Unit!15307)

(assert (=> b!1019931 (= lt!354116 (lemmaFindConcatSeparationEquivalentToExists!455 EmptyExpr!2816 (regTwo!6144 r!15766) s!10566))))

(assert (= (and start!88788 res!458309) b!1019929))

(assert (= (and b!1019929 (not res!458307)) b!1019931))

(assert (= (and b!1019931 (not res!458311)) b!1019924))

(assert (= (and b!1019924 (not res!458310)) b!1019923))

(assert (= (and b!1019923 (not res!458308)) b!1019925))

(assert (= (and start!88788 (is-ElementMatch!2816 r!15766)) b!1019930))

(assert (= (and start!88788 (is-Concat!4649 r!15766)) b!1019928))

(assert (= (and start!88788 (is-Star!2816 r!15766)) b!1019926))

(assert (= (and start!88788 (is-Union!2816 r!15766)) b!1019922))

(assert (= (and start!88788 (is-Cons!10030 s!10566)) b!1019927))

(declare-fun m!1199521 () Bool)

(assert (=> start!88788 m!1199521))

(declare-fun m!1199523 () Bool)

(assert (=> b!1019929 m!1199523))

(declare-fun m!1199525 () Bool)

(assert (=> b!1019929 m!1199525))

(declare-fun m!1199527 () Bool)

(assert (=> b!1019929 m!1199527))

(declare-fun m!1199529 () Bool)

(assert (=> b!1019925 m!1199529))

(declare-fun m!1199531 () Bool)

(assert (=> b!1019925 m!1199531))

(declare-fun m!1199533 () Bool)

(assert (=> b!1019925 m!1199533))

(declare-fun m!1199535 () Bool)

(assert (=> b!1019931 m!1199535))

(declare-fun m!1199537 () Bool)

(assert (=> b!1019931 m!1199537))

(assert (=> b!1019931 m!1199535))

(declare-fun m!1199539 () Bool)

(assert (=> b!1019931 m!1199539))

(declare-fun m!1199541 () Bool)

(assert (=> b!1019931 m!1199541))

(declare-fun m!1199543 () Bool)

(assert (=> b!1019931 m!1199543))

(declare-fun m!1199545 () Bool)

(assert (=> b!1019931 m!1199545))

(declare-fun m!1199547 () Bool)

(assert (=> b!1019931 m!1199547))

(declare-fun m!1199549 () Bool)

(assert (=> b!1019924 m!1199549))

(declare-fun m!1199551 () Bool)

(assert (=> b!1019923 m!1199551))

(push 1)

(assert (not b!1019924))

(assert (not b!1019926))

(assert (not b!1019931))

(assert (not b!1019922))

(assert (not b!1019927))

(assert (not b!1019925))

(assert (not b!1019923))

(assert (not b!1019929))

(assert tp_is_empty!5275)

(assert (not start!88788))

(assert (not b!1019928))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1020000 () Bool)

(declare-fun e!651485 () Bool)

(declare-fun call!69752 () Bool)

(assert (=> b!1020000 (= e!651485 call!69752)))

(declare-fun d!294284 () Bool)

(declare-fun res!458351 () Bool)

(declare-fun e!651489 () Bool)

(assert (=> d!294284 (=> res!458351 e!651489)))

(assert (=> d!294284 (= res!458351 (is-ElementMatch!2816 r!15766))))

(assert (=> d!294284 (= (validRegex!1285 r!15766) e!651489)))

(declare-fun bm!69745 () Bool)

(declare-fun call!69751 () Bool)

(declare-fun c!169002 () Bool)

(assert (=> bm!69745 (= call!69751 (validRegex!1285 (ite c!169002 (regTwo!6145 r!15766) (regTwo!6144 r!15766))))))

(declare-fun b!1020001 () Bool)

(declare-fun res!458350 () Bool)

(declare-fun e!651488 () Bool)

(assert (=> b!1020001 (=> res!458350 e!651488)))

(assert (=> b!1020001 (= res!458350 (not (is-Concat!4649 r!15766)))))

(declare-fun e!651486 () Bool)

(assert (=> b!1020001 (= e!651486 e!651488)))

(declare-fun b!1020002 () Bool)

(declare-fun e!651490 () Bool)

(assert (=> b!1020002 (= e!651490 e!651486)))

(assert (=> b!1020002 (= c!169002 (is-Union!2816 r!15766))))

(declare-fun b!1020003 () Bool)

(declare-fun e!651487 () Bool)

(assert (=> b!1020003 (= e!651487 call!69751)))

(declare-fun b!1020004 () Bool)

(declare-fun res!458349 () Bool)

(assert (=> b!1020004 (=> (not res!458349) (not e!651487))))

(declare-fun call!69750 () Bool)

(assert (=> b!1020004 (= res!458349 call!69750)))

(assert (=> b!1020004 (= e!651486 e!651487)))

(declare-fun bm!69746 () Bool)

(assert (=> bm!69746 (= call!69750 call!69752)))

(declare-fun b!1020005 () Bool)

(assert (=> b!1020005 (= e!651489 e!651490)))

(declare-fun c!169001 () Bool)

(assert (=> b!1020005 (= c!169001 (is-Star!2816 r!15766))))

(declare-fun bm!69747 () Bool)

(assert (=> bm!69747 (= call!69752 (validRegex!1285 (ite c!169001 (reg!3145 r!15766) (ite c!169002 (regOne!6145 r!15766) (regOne!6144 r!15766)))))))

(declare-fun b!1020006 () Bool)

(declare-fun e!651484 () Bool)

(assert (=> b!1020006 (= e!651484 call!69751)))

(declare-fun b!1020007 () Bool)

(assert (=> b!1020007 (= e!651490 e!651485)))

(declare-fun res!458353 () Bool)

(declare-fun nullable!921 (Regex!2816) Bool)

(assert (=> b!1020007 (= res!458353 (not (nullable!921 (reg!3145 r!15766))))))

(assert (=> b!1020007 (=> (not res!458353) (not e!651485))))

(declare-fun b!1020008 () Bool)

(assert (=> b!1020008 (= e!651488 e!651484)))

(declare-fun res!458352 () Bool)

(assert (=> b!1020008 (=> (not res!458352) (not e!651484))))

(assert (=> b!1020008 (= res!458352 call!69750)))

(assert (= (and d!294284 (not res!458351)) b!1020005))

(assert (= (and b!1020005 c!169001) b!1020007))

(assert (= (and b!1020005 (not c!169001)) b!1020002))

(assert (= (and b!1020007 res!458353) b!1020000))

(assert (= (and b!1020002 c!169002) b!1020004))

(assert (= (and b!1020002 (not c!169002)) b!1020001))

(assert (= (and b!1020004 res!458349) b!1020003))

(assert (= (and b!1020001 (not res!458350)) b!1020008))

(assert (= (and b!1020008 res!458352) b!1020006))

(assert (= (or b!1020003 b!1020006) bm!69745))

(assert (= (or b!1020004 b!1020008) bm!69746))

(assert (= (or b!1020000 bm!69746) bm!69747))

(declare-fun m!1199585 () Bool)

(assert (=> bm!69745 m!1199585))

(declare-fun m!1199587 () Bool)

(assert (=> bm!69747 m!1199587))

(declare-fun m!1199589 () Bool)

(assert (=> b!1020007 m!1199589))

(assert (=> start!88788 d!294284))

(declare-fun b!1020059 () Bool)

(declare-fun res!458362 () Bool)

(declare-fun e!651521 () Bool)

(assert (=> b!1020059 (=> (not res!458362) (not e!651521))))

(declare-fun lt!354142 () Int)

(declare-fun call!69778 () Int)

(assert (=> b!1020059 (= res!458362 (> lt!354142 call!69778))))

(declare-fun e!651522 () Bool)

(assert (=> b!1020059 (= e!651522 e!651521)))

(declare-fun b!1020060 () Bool)

(declare-fun c!169031 () Bool)

(assert (=> b!1020060 (= c!169031 (is-Star!2816 r!15766))))

(declare-fun e!651524 () Bool)

(assert (=> b!1020060 (= e!651522 e!651524)))

(declare-fun b!1020061 () Bool)

(assert (=> b!1020061 (= e!651524 (= lt!354142 1))))

(declare-fun b!1020062 () Bool)

(declare-fun e!651525 () Bool)

(declare-fun e!651526 () Bool)

(assert (=> b!1020062 (= e!651525 e!651526)))

(declare-fun res!458361 () Bool)

(declare-fun call!69776 () Int)

(assert (=> b!1020062 (= res!458361 (> lt!354142 call!69776))))

(assert (=> b!1020062 (=> (not res!458361) (not e!651526))))

(declare-fun b!1020063 () Bool)

(declare-fun call!69777 () Int)

(assert (=> b!1020063 (= e!651524 (> lt!354142 call!69777))))

(declare-fun b!1020064 () Bool)

(declare-fun e!651519 () Bool)

(assert (=> b!1020064 (= e!651519 e!651525)))

(declare-fun c!169028 () Bool)

(assert (=> b!1020064 (= c!169028 (is-Union!2816 r!15766))))

(declare-fun b!1020065 () Bool)

(assert (=> b!1020065 (= e!651525 e!651522)))

(declare-fun c!169030 () Bool)

(assert (=> b!1020065 (= c!169030 (is-Concat!4649 r!15766))))

(declare-fun b!1020066 () Bool)

(declare-fun e!651520 () Int)

(assert (=> b!1020066 (= e!651520 1)))

(declare-fun bm!69770 () Bool)

(assert (=> bm!69770 (= call!69777 call!69776)))

(declare-fun b!1020067 () Bool)

(declare-fun e!651528 () Int)

(assert (=> b!1020067 (= e!651528 1)))

(declare-fun d!294288 () Bool)

(assert (=> d!294288 e!651519))

(declare-fun res!458360 () Bool)

(assert (=> d!294288 (=> (not res!458360) (not e!651519))))

(assert (=> d!294288 (= res!458360 (> lt!354142 0))))

(assert (=> d!294288 (= lt!354142 e!651520)))

(declare-fun c!169029 () Bool)

(assert (=> d!294288 (= c!169029 (is-ElementMatch!2816 r!15766))))

(assert (=> d!294288 (= (regexDepth!31 r!15766) lt!354142)))

(declare-fun b!1020068 () Bool)

(assert (=> b!1020068 (= e!651526 (> lt!354142 call!69778))))

(declare-fun b!1020069 () Bool)

(declare-fun c!169025 () Bool)

(assert (=> b!1020069 (= c!169025 (is-Union!2816 r!15766))))

(declare-fun e!651527 () Int)

(declare-fun e!651523 () Int)

(assert (=> b!1020069 (= e!651527 e!651523)))

(declare-fun b!1020070 () Bool)

(assert (=> b!1020070 (= e!651523 e!651528)))

(declare-fun c!169027 () Bool)

(assert (=> b!1020070 (= c!169027 (is-Concat!4649 r!15766))))

(declare-fun bm!69771 () Bool)

(assert (=> bm!69771 (= call!69776 (regexDepth!31 (ite c!169028 (regOne!6145 r!15766) (ite c!169030 (regTwo!6144 r!15766) (reg!3145 r!15766)))))))

(declare-fun b!1020071 () Bool)

(declare-fun call!69780 () Int)

(assert (=> b!1020071 (= e!651527 (+ 1 call!69780))))

(declare-fun b!1020072 () Bool)

(declare-fun call!69775 () Int)

(assert (=> b!1020072 (= e!651528 (+ 1 call!69775))))

(declare-fun b!1020073 () Bool)

(assert (=> b!1020073 (= e!651520 e!651527)))

(declare-fun c!169026 () Bool)

(assert (=> b!1020073 (= c!169026 (is-Star!2816 r!15766))))

(declare-fun bm!69772 () Bool)

(assert (=> bm!69772 (= call!69780 (regexDepth!31 (ite c!169026 (reg!3145 r!15766) (ite c!169025 (regTwo!6145 r!15766) (regTwo!6144 r!15766)))))))

(declare-fun bm!69773 () Bool)

(declare-fun call!69781 () Int)

(assert (=> bm!69773 (= call!69781 call!69780)))

(declare-fun bm!69774 () Bool)

(assert (=> bm!69774 (= call!69778 (regexDepth!31 (ite c!169028 (regTwo!6145 r!15766) (regOne!6144 r!15766))))))

(declare-fun bm!69775 () Bool)

(declare-fun call!69779 () Int)

(assert (=> bm!69775 (= call!69779 (regexDepth!31 (ite c!169025 (regOne!6145 r!15766) (regOne!6144 r!15766))))))

(declare-fun b!1020074 () Bool)

(assert (=> b!1020074 (= e!651523 (+ 1 call!69775))))

(declare-fun bm!69776 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!69776 (= call!69775 (maxBigInt!0 call!69779 call!69781))))

(declare-fun b!1020075 () Bool)

(assert (=> b!1020075 (= e!651521 (> lt!354142 call!69777))))

(assert (= (and d!294288 c!169029) b!1020066))

(assert (= (and d!294288 (not c!169029)) b!1020073))

(assert (= (and b!1020073 c!169026) b!1020071))

(assert (= (and b!1020073 (not c!169026)) b!1020069))

(assert (= (and b!1020069 c!169025) b!1020074))

(assert (= (and b!1020069 (not c!169025)) b!1020070))

(assert (= (and b!1020070 c!169027) b!1020072))

(assert (= (and b!1020070 (not c!169027)) b!1020067))

(assert (= (or b!1020074 b!1020072) bm!69773))

(assert (= (or b!1020074 b!1020072) bm!69775))

(assert (= (or b!1020074 b!1020072) bm!69776))

(assert (= (or b!1020071 bm!69773) bm!69772))

(assert (= (and d!294288 res!458360) b!1020064))

(assert (= (and b!1020064 c!169028) b!1020062))

(assert (= (and b!1020064 (not c!169028)) b!1020065))

(assert (= (and b!1020062 res!458361) b!1020068))

(assert (= (and b!1020065 c!169030) b!1020059))

(assert (= (and b!1020065 (not c!169030)) b!1020060))

(assert (= (and b!1020059 res!458362) b!1020075))

(assert (= (and b!1020060 c!169031) b!1020063))

(assert (= (and b!1020060 (not c!169031)) b!1020061))

(assert (= (or b!1020075 b!1020063) bm!69770))

(assert (= (or b!1020068 b!1020059) bm!69774))

(assert (= (or b!1020062 bm!69770) bm!69771))

(declare-fun m!1199591 () Bool)

(assert (=> bm!69776 m!1199591))

(declare-fun m!1199593 () Bool)

(assert (=> bm!69771 m!1199593))

(declare-fun m!1199595 () Bool)

(assert (=> bm!69772 m!1199595))

(declare-fun m!1199597 () Bool)

(assert (=> bm!69774 m!1199597))

(declare-fun m!1199599 () Bool)

(assert (=> bm!69775 m!1199599))

(assert (=> b!1019925 d!294288))

(declare-fun d!294290 () Bool)

(declare-fun lt!354145 () Int)

(assert (=> d!294290 (>= lt!354145 0)))

(declare-fun e!651543 () Int)

(assert (=> d!294290 (= lt!354145 e!651543)))

(declare-fun c!169040 () Bool)

(assert (=> d!294290 (= c!169040 (is-Nil!10030 s!10566))))

(assert (=> d!294290 (= (size!7978 s!10566) lt!354145)))

(declare-fun b!1020098 () Bool)

(assert (=> b!1020098 (= e!651543 0)))

(declare-fun b!1020099 () Bool)

(assert (=> b!1020099 (= e!651543 (+ 1 (size!7978 (t!101092 s!10566))))))

(assert (= (and d!294290 c!169040) b!1020098))

(assert (= (and d!294290 (not c!169040)) b!1020099))

(declare-fun m!1199601 () Bool)

(assert (=> b!1020099 m!1199601))

(assert (=> b!1019925 d!294290))

(declare-fun b!1020100 () Bool)

(declare-fun res!458371 () Bool)

(declare-fun e!651546 () Bool)

(assert (=> b!1020100 (=> (not res!458371) (not e!651546))))

(declare-fun lt!354146 () Int)

(declare-fun call!69789 () Int)

(assert (=> b!1020100 (= res!458371 (> lt!354146 call!69789))))

(declare-fun e!651547 () Bool)

(assert (=> b!1020100 (= e!651547 e!651546)))

(declare-fun b!1020101 () Bool)

(declare-fun c!169047 () Bool)

(assert (=> b!1020101 (= c!169047 (is-Star!2816 (regTwo!6144 r!15766)))))

(declare-fun e!651549 () Bool)

(assert (=> b!1020101 (= e!651547 e!651549)))

(declare-fun b!1020102 () Bool)

(assert (=> b!1020102 (= e!651549 (= lt!354146 1))))

(declare-fun b!1020103 () Bool)

(declare-fun e!651550 () Bool)

(declare-fun e!651551 () Bool)

(assert (=> b!1020103 (= e!651550 e!651551)))

(declare-fun res!458370 () Bool)

(declare-fun call!69787 () Int)

(assert (=> b!1020103 (= res!458370 (> lt!354146 call!69787))))

(assert (=> b!1020103 (=> (not res!458370) (not e!651551))))

(declare-fun b!1020104 () Bool)

(declare-fun call!69788 () Int)

(assert (=> b!1020104 (= e!651549 (> lt!354146 call!69788))))

(declare-fun b!1020105 () Bool)

(declare-fun e!651544 () Bool)

(assert (=> b!1020105 (= e!651544 e!651550)))

(declare-fun c!169044 () Bool)

(assert (=> b!1020105 (= c!169044 (is-Union!2816 (regTwo!6144 r!15766)))))

(declare-fun b!1020106 () Bool)

(assert (=> b!1020106 (= e!651550 e!651547)))

(declare-fun c!169046 () Bool)

(assert (=> b!1020106 (= c!169046 (is-Concat!4649 (regTwo!6144 r!15766)))))

(declare-fun b!1020107 () Bool)

(declare-fun e!651545 () Int)

(assert (=> b!1020107 (= e!651545 1)))

(declare-fun bm!69779 () Bool)

(assert (=> bm!69779 (= call!69788 call!69787)))

(declare-fun b!1020108 () Bool)

(declare-fun e!651553 () Int)

(assert (=> b!1020108 (= e!651553 1)))

(declare-fun d!294292 () Bool)

(assert (=> d!294292 e!651544))

(declare-fun res!458369 () Bool)

(assert (=> d!294292 (=> (not res!458369) (not e!651544))))

(assert (=> d!294292 (= res!458369 (> lt!354146 0))))

(assert (=> d!294292 (= lt!354146 e!651545)))

(declare-fun c!169045 () Bool)

(assert (=> d!294292 (= c!169045 (is-ElementMatch!2816 (regTwo!6144 r!15766)))))

(assert (=> d!294292 (= (regexDepth!31 (regTwo!6144 r!15766)) lt!354146)))

(declare-fun b!1020109 () Bool)

(assert (=> b!1020109 (= e!651551 (> lt!354146 call!69789))))

(declare-fun b!1020110 () Bool)

(declare-fun c!169041 () Bool)

(assert (=> b!1020110 (= c!169041 (is-Union!2816 (regTwo!6144 r!15766)))))

(declare-fun e!651552 () Int)

(declare-fun e!651548 () Int)

(assert (=> b!1020110 (= e!651552 e!651548)))

(declare-fun b!1020111 () Bool)

(assert (=> b!1020111 (= e!651548 e!651553)))

(declare-fun c!169043 () Bool)

(assert (=> b!1020111 (= c!169043 (is-Concat!4649 (regTwo!6144 r!15766)))))

(declare-fun bm!69780 () Bool)

(assert (=> bm!69780 (= call!69787 (regexDepth!31 (ite c!169044 (regOne!6145 (regTwo!6144 r!15766)) (ite c!169046 (regTwo!6144 (regTwo!6144 r!15766)) (reg!3145 (regTwo!6144 r!15766))))))))

(declare-fun b!1020112 () Bool)

(declare-fun call!69791 () Int)

(assert (=> b!1020112 (= e!651552 (+ 1 call!69791))))

(declare-fun b!1020113 () Bool)

(declare-fun call!69786 () Int)

(assert (=> b!1020113 (= e!651553 (+ 1 call!69786))))

(declare-fun b!1020114 () Bool)

(assert (=> b!1020114 (= e!651545 e!651552)))

(declare-fun c!169042 () Bool)

(assert (=> b!1020114 (= c!169042 (is-Star!2816 (regTwo!6144 r!15766)))))

(declare-fun bm!69781 () Bool)

(assert (=> bm!69781 (= call!69791 (regexDepth!31 (ite c!169042 (reg!3145 (regTwo!6144 r!15766)) (ite c!169041 (regTwo!6145 (regTwo!6144 r!15766)) (regTwo!6144 (regTwo!6144 r!15766))))))))

(declare-fun bm!69782 () Bool)

(declare-fun call!69792 () Int)

(assert (=> bm!69782 (= call!69792 call!69791)))

(declare-fun bm!69783 () Bool)

(assert (=> bm!69783 (= call!69789 (regexDepth!31 (ite c!169044 (regTwo!6145 (regTwo!6144 r!15766)) (regOne!6144 (regTwo!6144 r!15766)))))))

(declare-fun bm!69784 () Bool)

(declare-fun call!69790 () Int)

(assert (=> bm!69784 (= call!69790 (regexDepth!31 (ite c!169041 (regOne!6145 (regTwo!6144 r!15766)) (regOne!6144 (regTwo!6144 r!15766)))))))

(declare-fun b!1020115 () Bool)

(assert (=> b!1020115 (= e!651548 (+ 1 call!69786))))

(declare-fun bm!69785 () Bool)

(assert (=> bm!69785 (= call!69786 (maxBigInt!0 call!69790 call!69792))))

(declare-fun b!1020116 () Bool)

(assert (=> b!1020116 (= e!651546 (> lt!354146 call!69788))))

(assert (= (and d!294292 c!169045) b!1020107))

(assert (= (and d!294292 (not c!169045)) b!1020114))

(assert (= (and b!1020114 c!169042) b!1020112))

(assert (= (and b!1020114 (not c!169042)) b!1020110))

(assert (= (and b!1020110 c!169041) b!1020115))

(assert (= (and b!1020110 (not c!169041)) b!1020111))

(assert (= (and b!1020111 c!169043) b!1020113))

(assert (= (and b!1020111 (not c!169043)) b!1020108))

(assert (= (or b!1020115 b!1020113) bm!69782))

(assert (= (or b!1020115 b!1020113) bm!69784))

(assert (= (or b!1020115 b!1020113) bm!69785))

(assert (= (or b!1020112 bm!69782) bm!69781))

(assert (= (and d!294292 res!458369) b!1020105))

(assert (= (and b!1020105 c!169044) b!1020103))

(assert (= (and b!1020105 (not c!169044)) b!1020106))

(assert (= (and b!1020103 res!458370) b!1020109))

(assert (= (and b!1020106 c!169046) b!1020100))

(assert (= (and b!1020106 (not c!169046)) b!1020101))

(assert (= (and b!1020100 res!458371) b!1020116))

(assert (= (and b!1020101 c!169047) b!1020104))

(assert (= (and b!1020101 (not c!169047)) b!1020102))

(assert (= (or b!1020116 b!1020104) bm!69779))

(assert (= (or b!1020109 b!1020100) bm!69783))

(assert (= (or b!1020103 bm!69779) bm!69780))

(declare-fun m!1199603 () Bool)

(assert (=> bm!69785 m!1199603))

(declare-fun m!1199605 () Bool)

(assert (=> bm!69780 m!1199605))

(declare-fun m!1199607 () Bool)

(assert (=> bm!69781 m!1199607))

(declare-fun m!1199609 () Bool)

(assert (=> bm!69783 m!1199609))

(declare-fun m!1199611 () Bool)

(assert (=> bm!69784 m!1199611))

(assert (=> b!1019925 d!294292))

(declare-fun d!294294 () Bool)

(declare-fun choose!6446 (Int) Bool)

(assert (=> d!294294 (= (Exists!545 lambda!36202) (choose!6446 lambda!36202))))

(declare-fun bs!246620 () Bool)

(assert (= bs!246620 d!294294))

(declare-fun m!1199613 () Bool)

(assert (=> bs!246620 m!1199613))

(assert (=> b!1019931 d!294294))

(declare-fun d!294296 () Bool)

(assert (=> d!294296 (= (isDefined!1991 lt!354114) (not (isEmpty!6379 lt!354114)))))

(declare-fun bs!246621 () Bool)

(assert (= bs!246621 d!294296))

(assert (=> bs!246621 m!1199549))

(assert (=> b!1019931 d!294296))

(declare-fun d!294298 () Bool)

(assert (=> d!294298 (= (isEmpty!6380 s!10566) (is-Nil!10030 s!10566))))

(assert (=> b!1019931 d!294298))

(declare-fun b!1020156 () Bool)

(declare-fun e!651576 () Option!2349)

(assert (=> b!1020156 (= e!651576 (Some!2348 (tuple2!11415 Nil!10030 s!10566)))))

(declare-fun d!294300 () Bool)

(declare-fun e!651577 () Bool)

(assert (=> d!294300 e!651577))

(declare-fun res!458387 () Bool)

(assert (=> d!294300 (=> res!458387 e!651577)))

(declare-fun e!651579 () Bool)

(assert (=> d!294300 (= res!458387 e!651579)))

(declare-fun res!458388 () Bool)

(assert (=> d!294300 (=> (not res!458388) (not e!651579))))

(declare-fun lt!354158 () Option!2349)

(assert (=> d!294300 (= res!458388 (isDefined!1991 lt!354158))))

(assert (=> d!294300 (= lt!354158 e!651576)))

(declare-fun c!169061 () Bool)

(declare-fun e!651578 () Bool)

(assert (=> d!294300 (= c!169061 e!651578)))

(declare-fun res!458389 () Bool)

(assert (=> d!294300 (=> (not res!458389) (not e!651578))))

(assert (=> d!294300 (= res!458389 (matchR!1352 EmptyExpr!2816 Nil!10030))))

(assert (=> d!294300 (validRegex!1285 EmptyExpr!2816)))

(assert (=> d!294300 (= (findConcatSeparation!455 EmptyExpr!2816 (regTwo!6144 r!15766) Nil!10030 s!10566 s!10566) lt!354158)))

(declare-fun b!1020157 () Bool)

(declare-fun e!651580 () Option!2349)

(assert (=> b!1020157 (= e!651580 None!2348)))

(declare-fun b!1020158 () Bool)

(assert (=> b!1020158 (= e!651577 (not (isDefined!1991 lt!354158)))))

(declare-fun b!1020159 () Bool)

(declare-fun ++!2737 (List!10046 List!10046) List!10046)

(declare-fun get!3529 (Option!2349) tuple2!11414)

(assert (=> b!1020159 (= e!651579 (= (++!2737 (_1!6533 (get!3529 lt!354158)) (_2!6533 (get!3529 lt!354158))) s!10566))))

(declare-fun b!1020160 () Bool)

(declare-fun res!458386 () Bool)

(assert (=> b!1020160 (=> (not res!458386) (not e!651579))))

(assert (=> b!1020160 (= res!458386 (matchR!1352 (regTwo!6144 r!15766) (_2!6533 (get!3529 lt!354158))))))

(declare-fun b!1020161 () Bool)

(assert (=> b!1020161 (= e!651578 (matchR!1352 (regTwo!6144 r!15766) s!10566))))

(declare-fun b!1020162 () Bool)

(declare-fun res!458385 () Bool)

(assert (=> b!1020162 (=> (not res!458385) (not e!651579))))

(assert (=> b!1020162 (= res!458385 (matchR!1352 EmptyExpr!2816 (_1!6533 (get!3529 lt!354158))))))

(declare-fun b!1020163 () Bool)

(declare-fun lt!354157 () Unit!15307)

(declare-fun lt!354156 () Unit!15307)

(assert (=> b!1020163 (= lt!354157 lt!354156)))

(assert (=> b!1020163 (= (++!2737 (++!2737 Nil!10030 (Cons!10030 (h!15431 s!10566) Nil!10030)) (t!101092 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!337 (List!10046 C!6202 List!10046 List!10046) Unit!15307)

(assert (=> b!1020163 (= lt!354156 (lemmaMoveElementToOtherListKeepsConcatEq!337 Nil!10030 (h!15431 s!10566) (t!101092 s!10566) s!10566))))

(assert (=> b!1020163 (= e!651580 (findConcatSeparation!455 EmptyExpr!2816 (regTwo!6144 r!15766) (++!2737 Nil!10030 (Cons!10030 (h!15431 s!10566) Nil!10030)) (t!101092 s!10566) s!10566))))

(declare-fun b!1020164 () Bool)

(assert (=> b!1020164 (= e!651576 e!651580)))

(declare-fun c!169062 () Bool)

(assert (=> b!1020164 (= c!169062 (is-Nil!10030 s!10566))))

(assert (= (and d!294300 res!458389) b!1020161))

(assert (= (and d!294300 c!169061) b!1020156))

(assert (= (and d!294300 (not c!169061)) b!1020164))

(assert (= (and b!1020164 c!169062) b!1020157))

(assert (= (and b!1020164 (not c!169062)) b!1020163))

(assert (= (and d!294300 res!458388) b!1020162))

(assert (= (and b!1020162 res!458385) b!1020160))

(assert (= (and b!1020160 res!458386) b!1020159))

(assert (= (and d!294300 (not res!458387)) b!1020158))

(declare-fun m!1199625 () Bool)

(assert (=> b!1020160 m!1199625))

(declare-fun m!1199627 () Bool)

(assert (=> b!1020160 m!1199627))

(declare-fun m!1199629 () Bool)

(assert (=> b!1020163 m!1199629))

(assert (=> b!1020163 m!1199629))

(declare-fun m!1199631 () Bool)

(assert (=> b!1020163 m!1199631))

(declare-fun m!1199633 () Bool)

(assert (=> b!1020163 m!1199633))

(assert (=> b!1020163 m!1199629))

(declare-fun m!1199635 () Bool)

(assert (=> b!1020163 m!1199635))

(declare-fun m!1199637 () Bool)

(assert (=> b!1020161 m!1199637))

(assert (=> b!1020159 m!1199625))

(declare-fun m!1199639 () Bool)

(assert (=> b!1020159 m!1199639))

(declare-fun m!1199641 () Bool)

(assert (=> d!294300 m!1199641))

(declare-fun m!1199643 () Bool)

(assert (=> d!294300 m!1199643))

(declare-fun m!1199645 () Bool)

(assert (=> d!294300 m!1199645))

(assert (=> b!1020162 m!1199625))

(declare-fun m!1199647 () Bool)

(assert (=> b!1020162 m!1199647))

(assert (=> b!1020158 m!1199641))

(assert (=> b!1019931 d!294300))

(declare-fun bs!246622 () Bool)

(declare-fun d!294304 () Bool)

(assert (= bs!246622 (and d!294304 b!1019931)))

(declare-fun lambda!36213 () Int)

(assert (=> bs!246622 (= lambda!36213 lambda!36201)))

(assert (=> bs!246622 (not (= lambda!36213 lambda!36202))))

(assert (=> d!294304 true))

(assert (=> d!294304 true))

(assert (=> d!294304 true))

(assert (=> d!294304 (= (isDefined!1991 (findConcatSeparation!455 EmptyExpr!2816 (regTwo!6144 r!15766) Nil!10030 s!10566 s!10566)) (Exists!545 lambda!36213))))

(declare-fun lt!354163 () Unit!15307)

(declare-fun choose!6447 (Regex!2816 Regex!2816 List!10046) Unit!15307)

(assert (=> d!294304 (= lt!354163 (choose!6447 EmptyExpr!2816 (regTwo!6144 r!15766) s!10566))))

(assert (=> d!294304 (validRegex!1285 EmptyExpr!2816)))

(assert (=> d!294304 (= (lemmaFindConcatSeparationEquivalentToExists!455 EmptyExpr!2816 (regTwo!6144 r!15766) s!10566) lt!354163)))

(declare-fun bs!246623 () Bool)

(assert (= bs!246623 d!294304))

(declare-fun m!1199661 () Bool)

(assert (=> bs!246623 m!1199661))

(declare-fun m!1199663 () Bool)

(assert (=> bs!246623 m!1199663))

(assert (=> bs!246623 m!1199545))

(assert (=> bs!246623 m!1199645))

(assert (=> bs!246623 m!1199545))

(declare-fun m!1199665 () Bool)

(assert (=> bs!246623 m!1199665))

(assert (=> b!1019931 d!294304))

(declare-fun bs!246624 () Bool)

(declare-fun d!294310 () Bool)

(assert (= bs!246624 (and d!294310 b!1019931)))

(declare-fun lambda!36218 () Int)

(assert (=> bs!246624 (= lambda!36218 lambda!36201)))

(assert (=> bs!246624 (not (= lambda!36218 lambda!36202))))

(declare-fun bs!246625 () Bool)

(assert (= bs!246625 (and d!294310 d!294304)))

(assert (=> bs!246625 (= lambda!36218 lambda!36213)))

(assert (=> d!294310 true))

(assert (=> d!294310 true))

(assert (=> d!294310 true))

(declare-fun lambda!36219 () Int)

(assert (=> bs!246624 (not (= lambda!36219 lambda!36201))))

(assert (=> bs!246624 (= lambda!36219 lambda!36202)))

(assert (=> bs!246625 (not (= lambda!36219 lambda!36213))))

(declare-fun bs!246626 () Bool)

(assert (= bs!246626 d!294310))

(assert (=> bs!246626 (not (= lambda!36219 lambda!36218))))

(assert (=> d!294310 true))

(assert (=> d!294310 true))

(assert (=> d!294310 true))

(assert (=> d!294310 (= (Exists!545 lambda!36218) (Exists!545 lambda!36219))))

(declare-fun lt!354166 () Unit!15307)

(declare-fun choose!6448 (Regex!2816 Regex!2816 List!10046) Unit!15307)

(assert (=> d!294310 (= lt!354166 (choose!6448 EmptyExpr!2816 (regTwo!6144 r!15766) s!10566))))

(assert (=> d!294310 (validRegex!1285 EmptyExpr!2816)))

(assert (=> d!294310 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!247 EmptyExpr!2816 (regTwo!6144 r!15766) s!10566) lt!354166)))

(declare-fun m!1199679 () Bool)

(assert (=> bs!246626 m!1199679))

(declare-fun m!1199681 () Bool)

(assert (=> bs!246626 m!1199681))

(declare-fun m!1199683 () Bool)

(assert (=> bs!246626 m!1199683))

(assert (=> bs!246626 m!1199645))

(assert (=> b!1019931 d!294310))

(declare-fun d!294316 () Bool)

(assert (=> d!294316 (= (Exists!545 lambda!36201) (choose!6446 lambda!36201))))

(declare-fun bs!246627 () Bool)

(assert (= bs!246627 d!294316))

(declare-fun m!1199685 () Bool)

(assert (=> bs!246627 m!1199685))

(assert (=> b!1019931 d!294316))

(declare-fun b!1020232 () Bool)

(declare-fun e!651627 () Bool)

(declare-fun call!69823 () Bool)

(assert (=> b!1020232 (= e!651627 call!69823)))

(declare-fun d!294318 () Bool)

(declare-fun res!458427 () Bool)

(declare-fun e!651631 () Bool)

(assert (=> d!294318 (=> res!458427 e!651631)))

(assert (=> d!294318 (= res!458427 (is-ElementMatch!2816 (regTwo!6144 r!15766)))))

(assert (=> d!294318 (= (validRegex!1285 (regTwo!6144 r!15766)) e!651631)))

(declare-fun bm!69816 () Bool)

(declare-fun call!69822 () Bool)

(declare-fun c!169080 () Bool)

(assert (=> bm!69816 (= call!69822 (validRegex!1285 (ite c!169080 (regTwo!6145 (regTwo!6144 r!15766)) (regTwo!6144 (regTwo!6144 r!15766)))))))

(declare-fun b!1020233 () Bool)

(declare-fun res!458426 () Bool)

(declare-fun e!651630 () Bool)

(assert (=> b!1020233 (=> res!458426 e!651630)))

(assert (=> b!1020233 (= res!458426 (not (is-Concat!4649 (regTwo!6144 r!15766))))))

(declare-fun e!651628 () Bool)

(assert (=> b!1020233 (= e!651628 e!651630)))

(declare-fun b!1020234 () Bool)

(declare-fun e!651632 () Bool)

(assert (=> b!1020234 (= e!651632 e!651628)))

(assert (=> b!1020234 (= c!169080 (is-Union!2816 (regTwo!6144 r!15766)))))

(declare-fun b!1020235 () Bool)

(declare-fun e!651629 () Bool)

(assert (=> b!1020235 (= e!651629 call!69822)))

(declare-fun b!1020236 () Bool)

(declare-fun res!458425 () Bool)

(assert (=> b!1020236 (=> (not res!458425) (not e!651629))))

(declare-fun call!69821 () Bool)

(assert (=> b!1020236 (= res!458425 call!69821)))

(assert (=> b!1020236 (= e!651628 e!651629)))

(declare-fun bm!69817 () Bool)

(assert (=> bm!69817 (= call!69821 call!69823)))

(declare-fun b!1020237 () Bool)

(assert (=> b!1020237 (= e!651631 e!651632)))

(declare-fun c!169079 () Bool)

(assert (=> b!1020237 (= c!169079 (is-Star!2816 (regTwo!6144 r!15766)))))

(declare-fun bm!69818 () Bool)

(assert (=> bm!69818 (= call!69823 (validRegex!1285 (ite c!169079 (reg!3145 (regTwo!6144 r!15766)) (ite c!169080 (regOne!6145 (regTwo!6144 r!15766)) (regOne!6144 (regTwo!6144 r!15766))))))))

(declare-fun b!1020238 () Bool)

(declare-fun e!651626 () Bool)

(assert (=> b!1020238 (= e!651626 call!69822)))

(declare-fun b!1020239 () Bool)

(assert (=> b!1020239 (= e!651632 e!651627)))

(declare-fun res!458429 () Bool)

(assert (=> b!1020239 (= res!458429 (not (nullable!921 (reg!3145 (regTwo!6144 r!15766)))))))

(assert (=> b!1020239 (=> (not res!458429) (not e!651627))))

(declare-fun b!1020240 () Bool)

(assert (=> b!1020240 (= e!651630 e!651626)))

(declare-fun res!458428 () Bool)

(assert (=> b!1020240 (=> (not res!458428) (not e!651626))))

(assert (=> b!1020240 (= res!458428 call!69821)))

(assert (= (and d!294318 (not res!458427)) b!1020237))

(assert (= (and b!1020237 c!169079) b!1020239))

(assert (= (and b!1020237 (not c!169079)) b!1020234))

(assert (= (and b!1020239 res!458429) b!1020232))

(assert (= (and b!1020234 c!169080) b!1020236))

(assert (= (and b!1020234 (not c!169080)) b!1020233))

(assert (= (and b!1020236 res!458425) b!1020235))

(assert (= (and b!1020233 (not res!458426)) b!1020240))

(assert (= (and b!1020240 res!458428) b!1020238))

(assert (= (or b!1020235 b!1020238) bm!69816))

(assert (= (or b!1020236 b!1020240) bm!69817))

(assert (= (or b!1020232 bm!69817) bm!69818))

(declare-fun m!1199687 () Bool)

(assert (=> bm!69816 m!1199687))

(declare-fun m!1199689 () Bool)

(assert (=> bm!69818 m!1199689))

(declare-fun m!1199691 () Bool)

(assert (=> b!1020239 m!1199691))

(assert (=> b!1019923 d!294318))

(declare-fun d!294320 () Bool)

(assert (=> d!294320 (= (isEmpty!6379 lt!354114) (not (is-Some!2348 lt!354114)))))

(assert (=> b!1019924 d!294320))

(declare-fun bs!246628 () Bool)

(declare-fun b!1020307 () Bool)

(assert (= bs!246628 (and b!1020307 d!294310)))

(declare-fun lambda!36226 () Int)

(assert (=> bs!246628 (not (= lambda!36226 lambda!36219))))

(declare-fun bs!246629 () Bool)

(assert (= bs!246629 (and b!1020307 b!1019931)))

(assert (=> bs!246629 (not (= lambda!36226 lambda!36201))))

(assert (=> bs!246628 (not (= lambda!36226 lambda!36218))))

(declare-fun bs!246630 () Bool)

(assert (= bs!246630 (and b!1020307 d!294304)))

(assert (=> bs!246630 (not (= lambda!36226 lambda!36213))))

(assert (=> bs!246629 (not (= lambda!36226 lambda!36202))))

(assert (=> b!1020307 true))

(assert (=> b!1020307 true))

(declare-fun bs!246631 () Bool)

(declare-fun b!1020301 () Bool)

(assert (= bs!246631 (and b!1020301 d!294310)))

(declare-fun lambda!36227 () Int)

(assert (=> bs!246631 (= (= (regOne!6144 r!15766) EmptyExpr!2816) (= lambda!36227 lambda!36219))))

(declare-fun bs!246632 () Bool)

(assert (= bs!246632 (and b!1020301 b!1019931)))

(assert (=> bs!246632 (not (= lambda!36227 lambda!36201))))

(declare-fun bs!246633 () Bool)

(assert (= bs!246633 (and b!1020301 b!1020307)))

(assert (=> bs!246633 (not (= lambda!36227 lambda!36226))))

(assert (=> bs!246631 (not (= lambda!36227 lambda!36218))))

(declare-fun bs!246634 () Bool)

(assert (= bs!246634 (and b!1020301 d!294304)))

(assert (=> bs!246634 (not (= lambda!36227 lambda!36213))))

(assert (=> bs!246632 (= (= (regOne!6144 r!15766) EmptyExpr!2816) (= lambda!36227 lambda!36202))))

(assert (=> b!1020301 true))

(assert (=> b!1020301 true))

(declare-fun e!651669 () Bool)

(declare-fun call!69828 () Bool)

(assert (=> b!1020301 (= e!651669 call!69828)))

(declare-fun b!1020302 () Bool)

(declare-fun e!651670 () Bool)

(declare-fun e!651668 () Bool)

(assert (=> b!1020302 (= e!651670 e!651668)))

(declare-fun res!458459 () Bool)

(assert (=> b!1020302 (= res!458459 (not (is-EmptyLang!2816 r!15766)))))

(assert (=> b!1020302 (=> (not res!458459) (not e!651668))))

(declare-fun b!1020303 () Bool)

(declare-fun c!169099 () Bool)

(assert (=> b!1020303 (= c!169099 (is-Union!2816 r!15766))))

(declare-fun e!651673 () Bool)

(declare-fun e!651667 () Bool)

(assert (=> b!1020303 (= e!651673 e!651667)))

(declare-fun b!1020304 () Bool)

(declare-fun c!169100 () Bool)

(assert (=> b!1020304 (= c!169100 (is-ElementMatch!2816 r!15766))))

(assert (=> b!1020304 (= e!651668 e!651673)))

(declare-fun b!1020305 () Bool)

(declare-fun res!458458 () Bool)

(declare-fun e!651672 () Bool)

(assert (=> b!1020305 (=> res!458458 e!651672)))

(declare-fun call!69829 () Bool)

(assert (=> b!1020305 (= res!458458 call!69829)))

(assert (=> b!1020305 (= e!651669 e!651672)))

(declare-fun d!294322 () Bool)

(declare-fun c!169097 () Bool)

(assert (=> d!294322 (= c!169097 (is-EmptyExpr!2816 r!15766))))

(assert (=> d!294322 (= (matchRSpec!615 r!15766 s!10566) e!651670)))

(declare-fun bm!69823 () Bool)

(assert (=> bm!69823 (= call!69829 (isEmpty!6380 s!10566))))

(declare-fun b!1020306 () Bool)

(declare-fun e!651671 () Bool)

(assert (=> b!1020306 (= e!651671 (matchRSpec!615 (regTwo!6145 r!15766) s!10566))))

(assert (=> b!1020307 (= e!651672 call!69828)))

(declare-fun b!1020308 () Bool)

(assert (=> b!1020308 (= e!651670 call!69829)))

(declare-fun b!1020309 () Bool)

(assert (=> b!1020309 (= e!651667 e!651669)))

(declare-fun c!169098 () Bool)

(assert (=> b!1020309 (= c!169098 (is-Star!2816 r!15766))))

(declare-fun b!1020310 () Bool)

(assert (=> b!1020310 (= e!651667 e!651671)))

(declare-fun res!458460 () Bool)

(assert (=> b!1020310 (= res!458460 (matchRSpec!615 (regOne!6145 r!15766) s!10566))))

(assert (=> b!1020310 (=> res!458460 e!651671)))

(declare-fun b!1020311 () Bool)

(assert (=> b!1020311 (= e!651673 (= s!10566 (Cons!10030 (c!168995 r!15766) Nil!10030)))))

(declare-fun bm!69824 () Bool)

(assert (=> bm!69824 (= call!69828 (Exists!545 (ite c!169098 lambda!36226 lambda!36227)))))

(assert (= (and d!294322 c!169097) b!1020308))

(assert (= (and d!294322 (not c!169097)) b!1020302))

(assert (= (and b!1020302 res!458459) b!1020304))

(assert (= (and b!1020304 c!169100) b!1020311))

(assert (= (and b!1020304 (not c!169100)) b!1020303))

(assert (= (and b!1020303 c!169099) b!1020310))

(assert (= (and b!1020303 (not c!169099)) b!1020309))

(assert (= (and b!1020310 (not res!458460)) b!1020306))

(assert (= (and b!1020309 c!169098) b!1020305))

(assert (= (and b!1020309 (not c!169098)) b!1020301))

(assert (= (and b!1020305 (not res!458458)) b!1020307))

(assert (= (or b!1020307 b!1020301) bm!69824))

(assert (= (or b!1020308 b!1020305) bm!69823))

(assert (=> bm!69823 m!1199543))

(declare-fun m!1199693 () Bool)

(assert (=> b!1020306 m!1199693))

(declare-fun m!1199695 () Bool)

(assert (=> b!1020310 m!1199695))

(declare-fun m!1199697 () Bool)

(assert (=> bm!69824 m!1199697))

(assert (=> b!1019929 d!294322))

(declare-fun b!1020344 () Bool)

(declare-fun res!458482 () Bool)

(declare-fun e!651692 () Bool)

(assert (=> b!1020344 (=> res!458482 e!651692)))

(declare-fun tail!1440 (List!10046) List!10046)

(assert (=> b!1020344 (= res!458482 (not (isEmpty!6380 (tail!1440 s!10566))))))

(declare-fun b!1020345 () Bool)

(declare-fun res!458485 () Bool)

(declare-fun e!651691 () Bool)

(assert (=> b!1020345 (=> res!458485 e!651691)))

(assert (=> b!1020345 (= res!458485 (not (is-ElementMatch!2816 r!15766)))))

(declare-fun e!651694 () Bool)

(assert (=> b!1020345 (= e!651694 e!651691)))

(declare-fun b!1020346 () Bool)

(declare-fun lt!354169 () Bool)

(assert (=> b!1020346 (= e!651694 (not lt!354169))))

(declare-fun b!1020347 () Bool)

(declare-fun e!651695 () Bool)

(assert (=> b!1020347 (= e!651691 e!651695)))

(declare-fun res!458487 () Bool)

(assert (=> b!1020347 (=> (not res!458487) (not e!651695))))

(assert (=> b!1020347 (= res!458487 (not lt!354169))))

(declare-fun b!1020348 () Bool)

(declare-fun e!651696 () Bool)

(assert (=> b!1020348 (= e!651696 (nullable!921 r!15766))))

(declare-fun b!1020349 () Bool)

(declare-fun res!458486 () Bool)

(assert (=> b!1020349 (=> res!458486 e!651691)))

(declare-fun e!651690 () Bool)

(assert (=> b!1020349 (= res!458486 e!651690)))

(declare-fun res!458483 () Bool)

(assert (=> b!1020349 (=> (not res!458483) (not e!651690))))

(assert (=> b!1020349 (= res!458483 lt!354169)))

(declare-fun b!1020350 () Bool)

(declare-fun head!1878 (List!10046) C!6202)

(assert (=> b!1020350 (= e!651692 (not (= (head!1878 s!10566) (c!168995 r!15766))))))

(declare-fun d!294324 () Bool)

(declare-fun e!651693 () Bool)

(assert (=> d!294324 e!651693))

(declare-fun c!169108 () Bool)

(assert (=> d!294324 (= c!169108 (is-EmptyExpr!2816 r!15766))))

(assert (=> d!294324 (= lt!354169 e!651696)))

(declare-fun c!169109 () Bool)

(assert (=> d!294324 (= c!169109 (isEmpty!6380 s!10566))))

(assert (=> d!294324 (validRegex!1285 r!15766)))

(assert (=> d!294324 (= (matchR!1352 r!15766 s!10566) lt!354169)))

(declare-fun b!1020351 () Bool)

(assert (=> b!1020351 (= e!651690 (= (head!1878 s!10566) (c!168995 r!15766)))))

(declare-fun b!1020352 () Bool)

(assert (=> b!1020352 (= e!651693 e!651694)))

(declare-fun c!169107 () Bool)

(assert (=> b!1020352 (= c!169107 (is-EmptyLang!2816 r!15766))))

(declare-fun b!1020353 () Bool)

(declare-fun call!69836 () Bool)

(assert (=> b!1020353 (= e!651693 (= lt!354169 call!69836))))

(declare-fun b!1020354 () Bool)

(declare-fun derivativeStep!724 (Regex!2816 C!6202) Regex!2816)

(assert (=> b!1020354 (= e!651696 (matchR!1352 (derivativeStep!724 r!15766 (head!1878 s!10566)) (tail!1440 s!10566)))))

(declare-fun bm!69831 () Bool)

(assert (=> bm!69831 (= call!69836 (isEmpty!6380 s!10566))))

(declare-fun b!1020355 () Bool)

(declare-fun res!458484 () Bool)

(assert (=> b!1020355 (=> (not res!458484) (not e!651690))))

(assert (=> b!1020355 (= res!458484 (not call!69836))))

(declare-fun b!1020356 () Bool)

(assert (=> b!1020356 (= e!651695 e!651692)))

(declare-fun res!458481 () Bool)

(assert (=> b!1020356 (=> res!458481 e!651692)))

(assert (=> b!1020356 (= res!458481 call!69836)))

(declare-fun b!1020357 () Bool)

(declare-fun res!458488 () Bool)

(assert (=> b!1020357 (=> (not res!458488) (not e!651690))))

(assert (=> b!1020357 (= res!458488 (isEmpty!6380 (tail!1440 s!10566)))))

(assert (= (and d!294324 c!169109) b!1020348))

(assert (= (and d!294324 (not c!169109)) b!1020354))

(assert (= (and d!294324 c!169108) b!1020353))

(assert (= (and d!294324 (not c!169108)) b!1020352))

(assert (= (and b!1020352 c!169107) b!1020346))

(assert (= (and b!1020352 (not c!169107)) b!1020345))

(assert (= (and b!1020345 (not res!458485)) b!1020349))

(assert (= (and b!1020349 res!458483) b!1020355))

(assert (= (and b!1020355 res!458484) b!1020357))

(assert (= (and b!1020357 res!458488) b!1020351))

(assert (= (and b!1020349 (not res!458486)) b!1020347))

(assert (= (and b!1020347 res!458487) b!1020356))

(assert (= (and b!1020356 (not res!458481)) b!1020344))

(assert (= (and b!1020344 (not res!458482)) b!1020350))

(assert (= (or b!1020353 b!1020355 b!1020356) bm!69831))

(declare-fun m!1199699 () Bool)

(assert (=> b!1020357 m!1199699))

(assert (=> b!1020357 m!1199699))

(declare-fun m!1199701 () Bool)

(assert (=> b!1020357 m!1199701))

(declare-fun m!1199703 () Bool)

(assert (=> b!1020351 m!1199703))

(assert (=> d!294324 m!1199543))

(assert (=> d!294324 m!1199521))

(assert (=> b!1020350 m!1199703))

(assert (=> b!1020354 m!1199703))

(assert (=> b!1020354 m!1199703))

(declare-fun m!1199705 () Bool)

(assert (=> b!1020354 m!1199705))

(assert (=> b!1020354 m!1199699))

(assert (=> b!1020354 m!1199705))

(assert (=> b!1020354 m!1199699))

(declare-fun m!1199707 () Bool)

(assert (=> b!1020354 m!1199707))

(assert (=> bm!69831 m!1199543))

(declare-fun m!1199709 () Bool)

(assert (=> b!1020348 m!1199709))

(assert (=> b!1020344 m!1199699))

(assert (=> b!1020344 m!1199699))

(assert (=> b!1020344 m!1199701))

(assert (=> b!1019929 d!294324))

(declare-fun d!294326 () Bool)

(assert (=> d!294326 (= (matchR!1352 r!15766 s!10566) (matchRSpec!615 r!15766 s!10566))))

(declare-fun lt!354172 () Unit!15307)

(declare-fun choose!6449 (Regex!2816 List!10046) Unit!15307)

(assert (=> d!294326 (= lt!354172 (choose!6449 r!15766 s!10566))))

(assert (=> d!294326 (validRegex!1285 r!15766)))

(assert (=> d!294326 (= (mainMatchTheorem!615 r!15766 s!10566) lt!354172)))

(declare-fun bs!246635 () Bool)

(assert (= bs!246635 d!294326))

(assert (=> bs!246635 m!1199525))

(assert (=> bs!246635 m!1199523))

(declare-fun m!1199711 () Bool)

(assert (=> bs!246635 m!1199711))

(assert (=> bs!246635 m!1199521))

(assert (=> b!1019929 d!294326))

(declare-fun e!651706 () Bool)

(assert (=> b!1019926 (= tp!309999 e!651706)))

(declare-fun b!1020380 () Bool)

(declare-fun tp!310032 () Bool)

(declare-fun tp!310035 () Bool)

(assert (=> b!1020380 (= e!651706 (and tp!310032 tp!310035))))

(declare-fun b!1020381 () Bool)

(declare-fun tp!310031 () Bool)

(assert (=> b!1020381 (= e!651706 tp!310031)))

(declare-fun b!1020379 () Bool)

(assert (=> b!1020379 (= e!651706 tp_is_empty!5275)))

(declare-fun b!1020382 () Bool)

(declare-fun tp!310033 () Bool)

(declare-fun tp!310034 () Bool)

(assert (=> b!1020382 (= e!651706 (and tp!310033 tp!310034))))

(assert (= (and b!1019926 (is-ElementMatch!2816 (reg!3145 r!15766))) b!1020379))

(assert (= (and b!1019926 (is-Concat!4649 (reg!3145 r!15766))) b!1020380))

(assert (= (and b!1019926 (is-Star!2816 (reg!3145 r!15766))) b!1020381))

(assert (= (and b!1019926 (is-Union!2816 (reg!3145 r!15766))) b!1020382))

(declare-fun e!651707 () Bool)

(assert (=> b!1019922 (= tp!309997 e!651707)))

(declare-fun b!1020384 () Bool)

(declare-fun tp!310037 () Bool)

(declare-fun tp!310040 () Bool)

(assert (=> b!1020384 (= e!651707 (and tp!310037 tp!310040))))

(declare-fun b!1020385 () Bool)

(declare-fun tp!310036 () Bool)

(assert (=> b!1020385 (= e!651707 tp!310036)))

(declare-fun b!1020383 () Bool)

(assert (=> b!1020383 (= e!651707 tp_is_empty!5275)))

(declare-fun b!1020386 () Bool)

(declare-fun tp!310038 () Bool)

(declare-fun tp!310039 () Bool)

(assert (=> b!1020386 (= e!651707 (and tp!310038 tp!310039))))

(assert (= (and b!1019922 (is-ElementMatch!2816 (regOne!6145 r!15766))) b!1020383))

(assert (= (and b!1019922 (is-Concat!4649 (regOne!6145 r!15766))) b!1020384))

(assert (= (and b!1019922 (is-Star!2816 (regOne!6145 r!15766))) b!1020385))

(assert (= (and b!1019922 (is-Union!2816 (regOne!6145 r!15766))) b!1020386))

(declare-fun e!651708 () Bool)

(assert (=> b!1019922 (= tp!309998 e!651708)))

(declare-fun b!1020388 () Bool)

(declare-fun tp!310042 () Bool)

(declare-fun tp!310045 () Bool)

(assert (=> b!1020388 (= e!651708 (and tp!310042 tp!310045))))

(declare-fun b!1020389 () Bool)

(declare-fun tp!310041 () Bool)

(assert (=> b!1020389 (= e!651708 tp!310041)))

(declare-fun b!1020387 () Bool)

(assert (=> b!1020387 (= e!651708 tp_is_empty!5275)))

(declare-fun b!1020390 () Bool)

(declare-fun tp!310043 () Bool)

(declare-fun tp!310044 () Bool)

(assert (=> b!1020390 (= e!651708 (and tp!310043 tp!310044))))

(assert (= (and b!1019922 (is-ElementMatch!2816 (regTwo!6145 r!15766))) b!1020387))

(assert (= (and b!1019922 (is-Concat!4649 (regTwo!6145 r!15766))) b!1020388))

(assert (= (and b!1019922 (is-Star!2816 (regTwo!6145 r!15766))) b!1020389))

(assert (= (and b!1019922 (is-Union!2816 (regTwo!6145 r!15766))) b!1020390))

(declare-fun b!1020395 () Bool)

(declare-fun e!651711 () Bool)

(declare-fun tp!310048 () Bool)

(assert (=> b!1020395 (= e!651711 (and tp_is_empty!5275 tp!310048))))

(assert (=> b!1019927 (= tp!310000 e!651711)))

(assert (= (and b!1019927 (is-Cons!10030 (t!101092 s!10566))) b!1020395))

(declare-fun e!651712 () Bool)

(assert (=> b!1019928 (= tp!310001 e!651712)))

(declare-fun b!1020397 () Bool)

(declare-fun tp!310050 () Bool)

(declare-fun tp!310053 () Bool)

(assert (=> b!1020397 (= e!651712 (and tp!310050 tp!310053))))

(declare-fun b!1020398 () Bool)

(declare-fun tp!310049 () Bool)

(assert (=> b!1020398 (= e!651712 tp!310049)))

(declare-fun b!1020396 () Bool)

(assert (=> b!1020396 (= e!651712 tp_is_empty!5275)))

(declare-fun b!1020399 () Bool)

(declare-fun tp!310051 () Bool)

(declare-fun tp!310052 () Bool)

(assert (=> b!1020399 (= e!651712 (and tp!310051 tp!310052))))

(assert (= (and b!1019928 (is-ElementMatch!2816 (regOne!6144 r!15766))) b!1020396))

(assert (= (and b!1019928 (is-Concat!4649 (regOne!6144 r!15766))) b!1020397))

(assert (= (and b!1019928 (is-Star!2816 (regOne!6144 r!15766))) b!1020398))

(assert (= (and b!1019928 (is-Union!2816 (regOne!6144 r!15766))) b!1020399))

(declare-fun e!651713 () Bool)

(assert (=> b!1019928 (= tp!310002 e!651713)))

(declare-fun b!1020401 () Bool)

(declare-fun tp!310055 () Bool)

(declare-fun tp!310058 () Bool)

(assert (=> b!1020401 (= e!651713 (and tp!310055 tp!310058))))

(declare-fun b!1020402 () Bool)

(declare-fun tp!310054 () Bool)

(assert (=> b!1020402 (= e!651713 tp!310054)))

(declare-fun b!1020400 () Bool)

(assert (=> b!1020400 (= e!651713 tp_is_empty!5275)))

(declare-fun b!1020403 () Bool)

(declare-fun tp!310056 () Bool)

(declare-fun tp!310057 () Bool)

(assert (=> b!1020403 (= e!651713 (and tp!310056 tp!310057))))

(assert (= (and b!1019928 (is-ElementMatch!2816 (regTwo!6144 r!15766))) b!1020400))

(assert (= (and b!1019928 (is-Concat!4649 (regTwo!6144 r!15766))) b!1020401))

(assert (= (and b!1019928 (is-Star!2816 (regTwo!6144 r!15766))) b!1020402))

(assert (= (and b!1019928 (is-Union!2816 (regTwo!6144 r!15766))) b!1020403))

(push 1)

(assert (not b!1020160))

(assert (not d!294316))

(assert (not b!1020386))

(assert (not b!1020239))

(assert (not bm!69774))

(assert (not bm!69823))

(assert (not bm!69784))

(assert (not b!1020382))

(assert (not b!1020399))

(assert (not b!1020384))

(assert (not bm!69780))

(assert (not d!294294))

(assert (not b!1020161))

(assert (not bm!69776))

(assert (not b!1020162))

(assert (not b!1020402))

(assert (not b!1020401))

(assert (not b!1020350))

(assert (not b!1020351))

(assert (not b!1020389))

(assert (not b!1020398))

(assert (not b!1020390))

(assert (not b!1020163))

(assert (not b!1020403))

(assert (not b!1020310))

(assert (not bm!69775))

(assert (not b!1020395))

(assert (not bm!69785))

(assert (not b!1020007))

(assert (not bm!69781))

(assert (not d!294324))

(assert (not b!1020348))

(assert (not b!1020158))

(assert (not b!1020159))

(assert (not bm!69772))

(assert (not b!1020354))

(assert (not bm!69783))

(assert (not b!1020357))

(assert (not bm!69747))

(assert (not bm!69771))

(assert (not b!1020397))

(assert (not b!1020344))

(assert (not bm!69818))

(assert (not b!1020388))

(assert (not d!294296))

(assert (not b!1020381))

(assert (not bm!69816))

(assert (not bm!69831))

(assert (not d!294326))

(assert (not bm!69745))

(assert (not b!1020385))

(assert (not b!1020306))

(assert (not d!294304))

(assert tp_is_empty!5275)

(assert (not d!294300))

(assert (not b!1020099))

(assert (not b!1020380))

(assert (not bm!69824))

(assert (not d!294310))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

