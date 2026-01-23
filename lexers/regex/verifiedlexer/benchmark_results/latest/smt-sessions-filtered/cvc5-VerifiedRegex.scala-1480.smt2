; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79156 () Bool)

(assert start!79156)

(declare-fun b!875558 () Bool)

(assert (=> b!875558 true))

(assert (=> b!875558 true))

(declare-fun lambda!26434 () Int)

(declare-fun lambda!26433 () Int)

(assert (=> b!875558 (not (= lambda!26434 lambda!26433))))

(assert (=> b!875558 true))

(assert (=> b!875558 true))

(declare-fun e!575501 () Bool)

(declare-fun e!575504 () Bool)

(assert (=> b!875558 (= e!575501 e!575504)))

(declare-fun res!398119 () Bool)

(assert (=> b!875558 (=> res!398119 e!575504)))

(declare-datatypes ((C!5006 0))(
  ( (C!5007 (val!2751 Int)) )
))
(declare-datatypes ((List!9448 0))(
  ( (Nil!9432) (Cons!9432 (h!14833 C!5006) (t!100494 List!9448)) )
))
(declare-fun s!10566 () List!9448)

(declare-fun isEmpty!5620 (List!9448) Bool)

(assert (=> b!875558 (= res!398119 (isEmpty!5620 s!10566))))

(declare-fun Exists!17 (Int) Bool)

(assert (=> b!875558 (= (Exists!17 lambda!26433) (Exists!17 lambda!26434))))

(declare-datatypes ((Unit!14015 0))(
  ( (Unit!14016) )
))
(declare-fun lt!329680 () Unit!14015)

(declare-datatypes ((Regex!2218 0))(
  ( (ElementMatch!2218 (c!141591 C!5006)) (Concat!4051 (regOne!4948 Regex!2218) (regTwo!4948 Regex!2218)) (EmptyExpr!2218) (Star!2218 (reg!2547 Regex!2218)) (EmptyLang!2218) (Union!2218 (regOne!4949 Regex!2218) (regTwo!4949 Regex!2218)) )
))
(declare-fun r!15766 () Regex!2218)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!13 (Regex!2218 Regex!2218 List!9448) Unit!14015)

(assert (=> b!875558 (= lt!329680 (lemmaExistCutMatchRandMatchRSpecEquivalent!13 EmptyExpr!2218 (regTwo!4948 r!15766) s!10566))))

(declare-datatypes ((tuple2!10534 0))(
  ( (tuple2!10535 (_1!6093 List!9448) (_2!6093 List!9448)) )
))
(declare-datatypes ((Option!1909 0))(
  ( (None!1908) (Some!1908 (v!19325 tuple2!10534)) )
))
(declare-fun lt!329682 () Option!1909)

(declare-fun isDefined!1551 (Option!1909) Bool)

(assert (=> b!875558 (= (isDefined!1551 lt!329682) (Exists!17 lambda!26433))))

(declare-fun findConcatSeparation!15 (Regex!2218 Regex!2218 List!9448 List!9448 List!9448) Option!1909)

(assert (=> b!875558 (= lt!329682 (findConcatSeparation!15 EmptyExpr!2218 (regTwo!4948 r!15766) Nil!9432 s!10566 s!10566))))

(declare-fun lt!329681 () Unit!14015)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!15 (Regex!2218 Regex!2218 List!9448) Unit!14015)

(assert (=> b!875558 (= lt!329681 (lemmaFindConcatSeparationEquivalentToExists!15 EmptyExpr!2218 (regTwo!4948 r!15766) s!10566))))

(declare-fun b!875559 () Bool)

(declare-fun validRegex!687 (Regex!2218) Bool)

(assert (=> b!875559 (= e!575504 (validRegex!687 (regTwo!4948 r!15766)))))

(declare-fun b!875560 () Bool)

(declare-fun res!398117 () Bool)

(assert (=> b!875560 (=> res!398117 e!575504)))

(declare-fun get!2894 (Option!1909) tuple2!10534)

(assert (=> b!875560 (= res!398117 (not (isEmpty!5620 (_1!6093 (get!2894 lt!329682)))))))

(declare-fun b!875561 () Bool)

(declare-fun e!575500 () Bool)

(declare-fun tp!276914 () Bool)

(assert (=> b!875561 (= e!575500 tp!276914)))

(declare-fun b!875562 () Bool)

(declare-fun tp_is_empty!4079 () Bool)

(assert (=> b!875562 (= e!575500 tp_is_empty!4079)))

(declare-fun b!875563 () Bool)

(declare-fun tp!276916 () Bool)

(declare-fun tp!276917 () Bool)

(assert (=> b!875563 (= e!575500 (and tp!276916 tp!276917))))

(declare-fun b!875564 () Bool)

(declare-fun e!575503 () Bool)

(declare-fun tp!276913 () Bool)

(assert (=> b!875564 (= e!575503 (and tp_is_empty!4079 tp!276913))))

(declare-fun b!875565 () Bool)

(declare-fun tp!276918 () Bool)

(declare-fun tp!276915 () Bool)

(assert (=> b!875565 (= e!575500 (and tp!276918 tp!276915))))

(declare-fun res!398120 () Bool)

(declare-fun e!575502 () Bool)

(assert (=> start!79156 (=> (not res!398120) (not e!575502))))

(assert (=> start!79156 (= res!398120 (validRegex!687 r!15766))))

(assert (=> start!79156 e!575502))

(assert (=> start!79156 e!575500))

(assert (=> start!79156 e!575503))

(declare-fun b!875566 () Bool)

(assert (=> b!875566 (= e!575502 (not e!575501))))

(declare-fun res!398118 () Bool)

(assert (=> b!875566 (=> res!398118 e!575501)))

(declare-fun lt!329678 () Bool)

(assert (=> b!875566 (= res!398118 (or (not lt!329678) (not (is-Concat!4051 r!15766)) (not (is-EmptyExpr!2218 (regOne!4948 r!15766)))))))

(declare-fun matchRSpec!19 (Regex!2218 List!9448) Bool)

(assert (=> b!875566 (= lt!329678 (matchRSpec!19 r!15766 s!10566))))

(declare-fun matchR!756 (Regex!2218 List!9448) Bool)

(assert (=> b!875566 (= lt!329678 (matchR!756 r!15766 s!10566))))

(declare-fun lt!329679 () Unit!14015)

(declare-fun mainMatchTheorem!19 (Regex!2218 List!9448) Unit!14015)

(assert (=> b!875566 (= lt!329679 (mainMatchTheorem!19 r!15766 s!10566))))

(assert (= (and start!79156 res!398120) b!875566))

(assert (= (and b!875566 (not res!398118)) b!875558))

(assert (= (and b!875558 (not res!398119)) b!875560))

(assert (= (and b!875560 (not res!398117)) b!875559))

(assert (= (and start!79156 (is-ElementMatch!2218 r!15766)) b!875562))

(assert (= (and start!79156 (is-Concat!4051 r!15766)) b!875565))

(assert (= (and start!79156 (is-Star!2218 r!15766)) b!875561))

(assert (= (and start!79156 (is-Union!2218 r!15766)) b!875563))

(assert (= (and start!79156 (is-Cons!9432 s!10566)) b!875564))

(declare-fun m!1126813 () Bool)

(assert (=> b!875559 m!1126813))

(declare-fun m!1126815 () Bool)

(assert (=> b!875558 m!1126815))

(declare-fun m!1126817 () Bool)

(assert (=> b!875558 m!1126817))

(declare-fun m!1126819 () Bool)

(assert (=> b!875558 m!1126819))

(declare-fun m!1126821 () Bool)

(assert (=> b!875558 m!1126821))

(declare-fun m!1126823 () Bool)

(assert (=> b!875558 m!1126823))

(assert (=> b!875558 m!1126821))

(declare-fun m!1126825 () Bool)

(assert (=> b!875558 m!1126825))

(declare-fun m!1126827 () Bool)

(assert (=> b!875558 m!1126827))

(declare-fun m!1126829 () Bool)

(assert (=> b!875560 m!1126829))

(declare-fun m!1126831 () Bool)

(assert (=> b!875560 m!1126831))

(declare-fun m!1126833 () Bool)

(assert (=> start!79156 m!1126833))

(declare-fun m!1126835 () Bool)

(assert (=> b!875566 m!1126835))

(declare-fun m!1126837 () Bool)

(assert (=> b!875566 m!1126837))

(declare-fun m!1126839 () Bool)

(assert (=> b!875566 m!1126839))

(push 1)

(assert (not b!875564))

(assert (not b!875566))

(assert (not b!875559))

(assert (not b!875561))

(assert (not b!875563))

(assert (not b!875565))

(assert (not b!875560))

(assert tp_is_empty!4079)

(assert (not b!875558))

(assert (not start!79156))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!50903 () Bool)

(declare-fun call!50910 () Bool)

(declare-fun call!50908 () Bool)

(assert (=> bm!50903 (= call!50910 call!50908)))

(declare-fun b!875632 () Bool)

(declare-fun e!575542 () Bool)

(declare-fun e!575541 () Bool)

(assert (=> b!875632 (= e!575542 e!575541)))

(declare-fun c!141597 () Bool)

(assert (=> b!875632 (= c!141597 (is-Union!2218 r!15766))))

(declare-fun b!875633 () Bool)

(declare-fun res!398159 () Bool)

(declare-fun e!575546 () Bool)

(assert (=> b!875633 (=> (not res!398159) (not e!575546))))

(declare-fun call!50909 () Bool)

(assert (=> b!875633 (= res!398159 call!50909)))

(assert (=> b!875633 (= e!575541 e!575546)))

(declare-fun b!875634 () Bool)

(declare-fun e!575540 () Bool)

(assert (=> b!875634 (= e!575542 e!575540)))

(declare-fun res!398155 () Bool)

(declare-fun nullable!556 (Regex!2218) Bool)

(assert (=> b!875634 (= res!398155 (not (nullable!556 (reg!2547 r!15766))))))

(assert (=> b!875634 (=> (not res!398155) (not e!575540))))

(declare-fun b!875635 () Bool)

(declare-fun res!398157 () Bool)

(declare-fun e!575543 () Bool)

(assert (=> b!875635 (=> res!398157 e!575543)))

(assert (=> b!875635 (= res!398157 (not (is-Concat!4051 r!15766)))))

(assert (=> b!875635 (= e!575541 e!575543)))

(declare-fun bm!50904 () Bool)

(declare-fun c!141598 () Bool)

(assert (=> bm!50904 (= call!50908 (validRegex!687 (ite c!141598 (reg!2547 r!15766) (ite c!141597 (regTwo!4949 r!15766) (regTwo!4948 r!15766)))))))

(declare-fun bm!50905 () Bool)

(assert (=> bm!50905 (= call!50909 (validRegex!687 (ite c!141597 (regOne!4949 r!15766) (regOne!4948 r!15766))))))

(declare-fun b!875636 () Bool)

(assert (=> b!875636 (= e!575546 call!50910)))

(declare-fun b!875637 () Bool)

(declare-fun e!575545 () Bool)

(assert (=> b!875637 (= e!575545 call!50910)))

(declare-fun b!875638 () Bool)

(declare-fun e!575544 () Bool)

(assert (=> b!875638 (= e!575544 e!575542)))

(assert (=> b!875638 (= c!141598 (is-Star!2218 r!15766))))

(declare-fun d!275829 () Bool)

(declare-fun res!398158 () Bool)

(assert (=> d!275829 (=> res!398158 e!575544)))

(assert (=> d!275829 (= res!398158 (is-ElementMatch!2218 r!15766))))

(assert (=> d!275829 (= (validRegex!687 r!15766) e!575544)))

(declare-fun b!875639 () Bool)

(assert (=> b!875639 (= e!575543 e!575545)))

(declare-fun res!398156 () Bool)

(assert (=> b!875639 (=> (not res!398156) (not e!575545))))

(assert (=> b!875639 (= res!398156 call!50909)))

(declare-fun b!875640 () Bool)

(assert (=> b!875640 (= e!575540 call!50908)))

(assert (= (and d!275829 (not res!398158)) b!875638))

(assert (= (and b!875638 c!141598) b!875634))

(assert (= (and b!875638 (not c!141598)) b!875632))

(assert (= (and b!875634 res!398155) b!875640))

(assert (= (and b!875632 c!141597) b!875633))

(assert (= (and b!875632 (not c!141597)) b!875635))

(assert (= (and b!875633 res!398159) b!875636))

(assert (= (and b!875635 (not res!398157)) b!875639))

(assert (= (and b!875639 res!398156) b!875637))

(assert (= (or b!875636 b!875637) bm!50903))

(assert (= (or b!875633 b!875639) bm!50905))

(assert (= (or b!875640 bm!50903) bm!50904))

(declare-fun m!1126869 () Bool)

(assert (=> b!875634 m!1126869))

(declare-fun m!1126871 () Bool)

(assert (=> bm!50904 m!1126871))

(declare-fun m!1126873 () Bool)

(assert (=> bm!50905 m!1126873))

(assert (=> start!79156 d!275829))

(declare-fun bs!234058 () Bool)

(declare-fun b!875680 () Bool)

(assert (= bs!234058 (and b!875680 b!875558)))

(declare-fun lambda!26447 () Int)

(assert (=> bs!234058 (not (= lambda!26447 lambda!26433))))

(assert (=> bs!234058 (not (= lambda!26447 lambda!26434))))

(assert (=> b!875680 true))

(assert (=> b!875680 true))

(declare-fun bs!234059 () Bool)

(declare-fun b!875681 () Bool)

(assert (= bs!234059 (and b!875681 b!875558)))

(declare-fun lambda!26448 () Int)

(assert (=> bs!234059 (not (= lambda!26448 lambda!26433))))

(assert (=> bs!234059 (= (= (regOne!4948 r!15766) EmptyExpr!2218) (= lambda!26448 lambda!26434))))

(declare-fun bs!234060 () Bool)

(assert (= bs!234060 (and b!875681 b!875680)))

(assert (=> bs!234060 (not (= lambda!26448 lambda!26447))))

(assert (=> b!875681 true))

(assert (=> b!875681 true))

(declare-fun d!275831 () Bool)

(declare-fun c!141607 () Bool)

(assert (=> d!275831 (= c!141607 (is-EmptyExpr!2218 r!15766))))

(declare-fun e!575570 () Bool)

(assert (=> d!275831 (= (matchRSpec!19 r!15766 s!10566) e!575570)))

(declare-fun b!875673 () Bool)

(declare-fun e!575565 () Bool)

(assert (=> b!875673 (= e!575565 (matchRSpec!19 (regTwo!4949 r!15766) s!10566))))

(declare-fun b!875674 () Bool)

(declare-fun e!575566 () Bool)

(assert (=> b!875674 (= e!575570 e!575566)))

(declare-fun res!398176 () Bool)

(assert (=> b!875674 (= res!398176 (not (is-EmptyLang!2218 r!15766)))))

(assert (=> b!875674 (=> (not res!398176) (not e!575566))))

(declare-fun b!875675 () Bool)

(declare-fun c!141608 () Bool)

(assert (=> b!875675 (= c!141608 (is-Union!2218 r!15766))))

(declare-fun e!575567 () Bool)

(declare-fun e!575568 () Bool)

(assert (=> b!875675 (= e!575567 e!575568)))

(declare-fun b!875676 () Bool)

(declare-fun e!575569 () Bool)

(assert (=> b!875676 (= e!575568 e!575569)))

(declare-fun c!141610 () Bool)

(assert (=> b!875676 (= c!141610 (is-Star!2218 r!15766))))

(declare-fun b!875677 () Bool)

(assert (=> b!875677 (= e!575568 e!575565)))

(declare-fun res!398177 () Bool)

(assert (=> b!875677 (= res!398177 (matchRSpec!19 (regOne!4949 r!15766) s!10566))))

(assert (=> b!875677 (=> res!398177 e!575565)))

(declare-fun bm!50910 () Bool)

(declare-fun call!50915 () Bool)

(assert (=> bm!50910 (= call!50915 (Exists!17 (ite c!141610 lambda!26447 lambda!26448)))))

(declare-fun b!875678 () Bool)

(declare-fun c!141609 () Bool)

(assert (=> b!875678 (= c!141609 (is-ElementMatch!2218 r!15766))))

(assert (=> b!875678 (= e!575566 e!575567)))

(declare-fun b!875679 () Bool)

(declare-fun res!398178 () Bool)

(declare-fun e!575571 () Bool)

(assert (=> b!875679 (=> res!398178 e!575571)))

(declare-fun call!50916 () Bool)

(assert (=> b!875679 (= res!398178 call!50916)))

(assert (=> b!875679 (= e!575569 e!575571)))

(assert (=> b!875680 (= e!575571 call!50915)))

(assert (=> b!875681 (= e!575569 call!50915)))

(declare-fun bm!50911 () Bool)

(assert (=> bm!50911 (= call!50916 (isEmpty!5620 s!10566))))

(declare-fun b!875682 () Bool)

(assert (=> b!875682 (= e!575567 (= s!10566 (Cons!9432 (c!141591 r!15766) Nil!9432)))))

(declare-fun b!875683 () Bool)

(assert (=> b!875683 (= e!575570 call!50916)))

(assert (= (and d!275831 c!141607) b!875683))

(assert (= (and d!275831 (not c!141607)) b!875674))

(assert (= (and b!875674 res!398176) b!875678))

(assert (= (and b!875678 c!141609) b!875682))

(assert (= (and b!875678 (not c!141609)) b!875675))

(assert (= (and b!875675 c!141608) b!875677))

(assert (= (and b!875675 (not c!141608)) b!875676))

(assert (= (and b!875677 (not res!398177)) b!875673))

(assert (= (and b!875676 c!141610) b!875679))

(assert (= (and b!875676 (not c!141610)) b!875681))

(assert (= (and b!875679 (not res!398178)) b!875680))

(assert (= (or b!875680 b!875681) bm!50910))

(assert (= (or b!875683 b!875679) bm!50911))

(declare-fun m!1126875 () Bool)

(assert (=> b!875673 m!1126875))

(declare-fun m!1126877 () Bool)

(assert (=> b!875677 m!1126877))

(declare-fun m!1126879 () Bool)

(assert (=> bm!50910 m!1126879))

(assert (=> bm!50911 m!1126819))

(assert (=> b!875566 d!275831))

(declare-fun b!875739 () Bool)

(declare-fun e!575607 () Bool)

(declare-fun derivativeStep!370 (Regex!2218 C!5006) Regex!2218)

(declare-fun head!1523 (List!9448) C!5006)

(declare-fun tail!1085 (List!9448) List!9448)

(assert (=> b!875739 (= e!575607 (matchR!756 (derivativeStep!370 r!15766 (head!1523 s!10566)) (tail!1085 s!10566)))))

(declare-fun bm!50923 () Bool)

(declare-fun call!50928 () Bool)

(assert (=> bm!50923 (= call!50928 (isEmpty!5620 s!10566))))

(declare-fun b!875740 () Bool)

(assert (=> b!875740 (= e!575607 (nullable!556 r!15766))))

(declare-fun b!875741 () Bool)

(declare-fun e!575610 () Bool)

(declare-fun e!575613 () Bool)

(assert (=> b!875741 (= e!575610 e!575613)))

(declare-fun c!141625 () Bool)

(assert (=> b!875741 (= c!141625 (is-EmptyLang!2218 r!15766))))

(declare-fun b!875742 () Bool)

(declare-fun lt!329700 () Bool)

(assert (=> b!875742 (= e!575610 (= lt!329700 call!50928))))

(declare-fun b!875743 () Bool)

(declare-fun res!398217 () Bool)

(declare-fun e!575612 () Bool)

(assert (=> b!875743 (=> res!398217 e!575612)))

(assert (=> b!875743 (= res!398217 (not (isEmpty!5620 (tail!1085 s!10566))))))

(declare-fun b!875745 () Bool)

(declare-fun res!398214 () Bool)

(declare-fun e!575608 () Bool)

(assert (=> b!875745 (=> res!398214 e!575608)))

(assert (=> b!875745 (= res!398214 (not (is-ElementMatch!2218 r!15766)))))

(assert (=> b!875745 (= e!575613 e!575608)))

(declare-fun b!875746 () Bool)

(declare-fun res!398216 () Bool)

(assert (=> b!875746 (=> res!398216 e!575608)))

(declare-fun e!575609 () Bool)

(assert (=> b!875746 (= res!398216 e!575609)))

(declare-fun res!398215 () Bool)

(assert (=> b!875746 (=> (not res!398215) (not e!575609))))

(assert (=> b!875746 (= res!398215 lt!329700)))

(declare-fun b!875747 () Bool)

(declare-fun res!398210 () Bool)

(assert (=> b!875747 (=> (not res!398210) (not e!575609))))

(assert (=> b!875747 (= res!398210 (isEmpty!5620 (tail!1085 s!10566)))))

(declare-fun b!875748 () Bool)

(assert (=> b!875748 (= e!575612 (not (= (head!1523 s!10566) (c!141591 r!15766))))))

(declare-fun b!875749 () Bool)

(declare-fun e!575611 () Bool)

(assert (=> b!875749 (= e!575611 e!575612)))

(declare-fun res!398211 () Bool)

(assert (=> b!875749 (=> res!398211 e!575612)))

(assert (=> b!875749 (= res!398211 call!50928)))

(declare-fun b!875750 () Bool)

(declare-fun res!398213 () Bool)

(assert (=> b!875750 (=> (not res!398213) (not e!575609))))

(assert (=> b!875750 (= res!398213 (not call!50928))))

(declare-fun d!275835 () Bool)

(assert (=> d!275835 e!575610))

(declare-fun c!141623 () Bool)

(assert (=> d!275835 (= c!141623 (is-EmptyExpr!2218 r!15766))))

(assert (=> d!275835 (= lt!329700 e!575607)))

(declare-fun c!141624 () Bool)

(assert (=> d!275835 (= c!141624 (isEmpty!5620 s!10566))))

(assert (=> d!275835 (validRegex!687 r!15766)))

(assert (=> d!275835 (= (matchR!756 r!15766 s!10566) lt!329700)))

(declare-fun b!875744 () Bool)

(assert (=> b!875744 (= e!575613 (not lt!329700))))

(declare-fun b!875751 () Bool)

(assert (=> b!875751 (= e!575609 (= (head!1523 s!10566) (c!141591 r!15766)))))

(declare-fun b!875752 () Bool)

(assert (=> b!875752 (= e!575608 e!575611)))

(declare-fun res!398212 () Bool)

(assert (=> b!875752 (=> (not res!398212) (not e!575611))))

(assert (=> b!875752 (= res!398212 (not lt!329700))))

(assert (= (and d!275835 c!141624) b!875740))

(assert (= (and d!275835 (not c!141624)) b!875739))

(assert (= (and d!275835 c!141623) b!875742))

(assert (= (and d!275835 (not c!141623)) b!875741))

(assert (= (and b!875741 c!141625) b!875744))

(assert (= (and b!875741 (not c!141625)) b!875745))

(assert (= (and b!875745 (not res!398214)) b!875746))

(assert (= (and b!875746 res!398215) b!875750))

(assert (= (and b!875750 res!398213) b!875747))

(assert (= (and b!875747 res!398210) b!875751))

(assert (= (and b!875746 (not res!398216)) b!875752))

(assert (= (and b!875752 res!398212) b!875749))

(assert (= (and b!875749 (not res!398211)) b!875743))

(assert (= (and b!875743 (not res!398217)) b!875748))

(assert (= (or b!875742 b!875749 b!875750) bm!50923))

(assert (=> d!275835 m!1126819))

(assert (=> d!275835 m!1126833))

(declare-fun m!1126887 () Bool)

(assert (=> b!875748 m!1126887))

(assert (=> bm!50923 m!1126819))

(assert (=> b!875739 m!1126887))

(assert (=> b!875739 m!1126887))

(declare-fun m!1126889 () Bool)

(assert (=> b!875739 m!1126889))

(declare-fun m!1126891 () Bool)

(assert (=> b!875739 m!1126891))

(assert (=> b!875739 m!1126889))

(assert (=> b!875739 m!1126891))

(declare-fun m!1126893 () Bool)

(assert (=> b!875739 m!1126893))

(declare-fun m!1126895 () Bool)

(assert (=> b!875740 m!1126895))

(assert (=> b!875743 m!1126891))

(assert (=> b!875743 m!1126891))

(declare-fun m!1126897 () Bool)

(assert (=> b!875743 m!1126897))

(assert (=> b!875747 m!1126891))

(assert (=> b!875747 m!1126891))

(assert (=> b!875747 m!1126897))

(assert (=> b!875751 m!1126887))

(assert (=> b!875566 d!275835))

(declare-fun d!275841 () Bool)

(assert (=> d!275841 (= (matchR!756 r!15766 s!10566) (matchRSpec!19 r!15766 s!10566))))

(declare-fun lt!329703 () Unit!14015)

(declare-fun choose!5159 (Regex!2218 List!9448) Unit!14015)

(assert (=> d!275841 (= lt!329703 (choose!5159 r!15766 s!10566))))

(assert (=> d!275841 (validRegex!687 r!15766)))

(assert (=> d!275841 (= (mainMatchTheorem!19 r!15766 s!10566) lt!329703)))

(declare-fun bs!234061 () Bool)

(assert (= bs!234061 d!275841))

(assert (=> bs!234061 m!1126837))

(assert (=> bs!234061 m!1126835))

(declare-fun m!1126899 () Bool)

(assert (=> bs!234061 m!1126899))

(assert (=> bs!234061 m!1126833))

(assert (=> b!875566 d!275841))

(declare-fun d!275843 () Bool)

(assert (=> d!275843 (= (isEmpty!5620 (_1!6093 (get!2894 lt!329682))) (is-Nil!9432 (_1!6093 (get!2894 lt!329682))))))

(assert (=> b!875560 d!275843))

(declare-fun d!275845 () Bool)

(assert (=> d!275845 (= (get!2894 lt!329682) (v!19325 lt!329682))))

(assert (=> b!875560 d!275845))

(declare-fun d!275847 () Bool)

(assert (=> d!275847 (= (isEmpty!5620 s!10566) (is-Nil!9432 s!10566))))

(assert (=> b!875558 d!275847))

(declare-fun d!275849 () Bool)

(declare-fun e!575625 () Bool)

(assert (=> d!275849 e!575625))

(declare-fun res!398229 () Bool)

(assert (=> d!275849 (=> res!398229 e!575625)))

(declare-fun e!575626 () Bool)

(assert (=> d!275849 (= res!398229 e!575626)))

(declare-fun res!398232 () Bool)

(assert (=> d!275849 (=> (not res!398232) (not e!575626))))

(declare-fun lt!329711 () Option!1909)

(assert (=> d!275849 (= res!398232 (isDefined!1551 lt!329711))))

(declare-fun e!575628 () Option!1909)

(assert (=> d!275849 (= lt!329711 e!575628)))

(declare-fun c!141630 () Bool)

(declare-fun e!575627 () Bool)

(assert (=> d!275849 (= c!141630 e!575627)))

(declare-fun res!398230 () Bool)

(assert (=> d!275849 (=> (not res!398230) (not e!575627))))

(assert (=> d!275849 (= res!398230 (matchR!756 EmptyExpr!2218 Nil!9432))))

(assert (=> d!275849 (validRegex!687 EmptyExpr!2218)))

(assert (=> d!275849 (= (findConcatSeparation!15 EmptyExpr!2218 (regTwo!4948 r!15766) Nil!9432 s!10566 s!10566) lt!329711)))

(declare-fun b!875771 () Bool)

(declare-fun e!575624 () Option!1909)

(assert (=> b!875771 (= e!575628 e!575624)))

(declare-fun c!141631 () Bool)

(assert (=> b!875771 (= c!141631 (is-Nil!9432 s!10566))))

(declare-fun b!875772 () Bool)

(declare-fun ++!2452 (List!9448 List!9448) List!9448)

(assert (=> b!875772 (= e!575626 (= (++!2452 (_1!6093 (get!2894 lt!329711)) (_2!6093 (get!2894 lt!329711))) s!10566))))

(declare-fun b!875773 () Bool)

(declare-fun res!398231 () Bool)

(assert (=> b!875773 (=> (not res!398231) (not e!575626))))

(assert (=> b!875773 (= res!398231 (matchR!756 (regTwo!4948 r!15766) (_2!6093 (get!2894 lt!329711))))))

(declare-fun b!875774 () Bool)

(assert (=> b!875774 (= e!575624 None!1908)))

(declare-fun b!875775 () Bool)

(declare-fun res!398228 () Bool)

(assert (=> b!875775 (=> (not res!398228) (not e!575626))))

(assert (=> b!875775 (= res!398228 (matchR!756 EmptyExpr!2218 (_1!6093 (get!2894 lt!329711))))))

(declare-fun b!875776 () Bool)

(declare-fun lt!329712 () Unit!14015)

(declare-fun lt!329710 () Unit!14015)

(assert (=> b!875776 (= lt!329712 lt!329710)))

(assert (=> b!875776 (= (++!2452 (++!2452 Nil!9432 (Cons!9432 (h!14833 s!10566) Nil!9432)) (t!100494 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!83 (List!9448 C!5006 List!9448 List!9448) Unit!14015)

(assert (=> b!875776 (= lt!329710 (lemmaMoveElementToOtherListKeepsConcatEq!83 Nil!9432 (h!14833 s!10566) (t!100494 s!10566) s!10566))))

(assert (=> b!875776 (= e!575624 (findConcatSeparation!15 EmptyExpr!2218 (regTwo!4948 r!15766) (++!2452 Nil!9432 (Cons!9432 (h!14833 s!10566) Nil!9432)) (t!100494 s!10566) s!10566))))

(declare-fun b!875777 () Bool)

(assert (=> b!875777 (= e!575628 (Some!1908 (tuple2!10535 Nil!9432 s!10566)))))

(declare-fun b!875778 () Bool)

(assert (=> b!875778 (= e!575627 (matchR!756 (regTwo!4948 r!15766) s!10566))))

(declare-fun b!875779 () Bool)

(assert (=> b!875779 (= e!575625 (not (isDefined!1551 lt!329711)))))

(assert (= (and d!275849 res!398230) b!875778))

(assert (= (and d!275849 c!141630) b!875777))

(assert (= (and d!275849 (not c!141630)) b!875771))

(assert (= (and b!875771 c!141631) b!875774))

(assert (= (and b!875771 (not c!141631)) b!875776))

(assert (= (and d!275849 res!398232) b!875775))

(assert (= (and b!875775 res!398228) b!875773))

(assert (= (and b!875773 res!398231) b!875772))

(assert (= (and d!275849 (not res!398229)) b!875779))

(declare-fun m!1126901 () Bool)

(assert (=> b!875778 m!1126901))

(declare-fun m!1126903 () Bool)

(assert (=> b!875772 m!1126903))

(declare-fun m!1126905 () Bool)

(assert (=> b!875772 m!1126905))

(declare-fun m!1126907 () Bool)

(assert (=> d!275849 m!1126907))

(declare-fun m!1126909 () Bool)

(assert (=> d!275849 m!1126909))

(declare-fun m!1126911 () Bool)

(assert (=> d!275849 m!1126911))

(assert (=> b!875773 m!1126903))

(declare-fun m!1126913 () Bool)

(assert (=> b!875773 m!1126913))

(assert (=> b!875775 m!1126903))

(declare-fun m!1126915 () Bool)

(assert (=> b!875775 m!1126915))

(declare-fun m!1126917 () Bool)

(assert (=> b!875776 m!1126917))

(assert (=> b!875776 m!1126917))

(declare-fun m!1126919 () Bool)

(assert (=> b!875776 m!1126919))

(declare-fun m!1126921 () Bool)

(assert (=> b!875776 m!1126921))

(assert (=> b!875776 m!1126917))

(declare-fun m!1126923 () Bool)

(assert (=> b!875776 m!1126923))

(assert (=> b!875779 m!1126907))

(assert (=> b!875558 d!275849))

(declare-fun bs!234062 () Bool)

(declare-fun d!275851 () Bool)

(assert (= bs!234062 (and d!275851 b!875558)))

(declare-fun lambda!26451 () Int)

(assert (=> bs!234062 (= lambda!26451 lambda!26433)))

(assert (=> bs!234062 (not (= lambda!26451 lambda!26434))))

(declare-fun bs!234063 () Bool)

(assert (= bs!234063 (and d!275851 b!875680)))

(assert (=> bs!234063 (not (= lambda!26451 lambda!26447))))

(declare-fun bs!234064 () Bool)

(assert (= bs!234064 (and d!275851 b!875681)))

(assert (=> bs!234064 (not (= lambda!26451 lambda!26448))))

(assert (=> d!275851 true))

(assert (=> d!275851 true))

(assert (=> d!275851 true))

(assert (=> d!275851 (= (isDefined!1551 (findConcatSeparation!15 EmptyExpr!2218 (regTwo!4948 r!15766) Nil!9432 s!10566 s!10566)) (Exists!17 lambda!26451))))

(declare-fun lt!329721 () Unit!14015)

(declare-fun choose!5160 (Regex!2218 Regex!2218 List!9448) Unit!14015)

(assert (=> d!275851 (= lt!329721 (choose!5160 EmptyExpr!2218 (regTwo!4948 r!15766) s!10566))))

(assert (=> d!275851 (validRegex!687 EmptyExpr!2218)))

(assert (=> d!275851 (= (lemmaFindConcatSeparationEquivalentToExists!15 EmptyExpr!2218 (regTwo!4948 r!15766) s!10566) lt!329721)))

(declare-fun bs!234065 () Bool)

(assert (= bs!234065 d!275851))

(declare-fun m!1126925 () Bool)

(assert (=> bs!234065 m!1126925))

(assert (=> bs!234065 m!1126825))

(assert (=> bs!234065 m!1126911))

(assert (=> bs!234065 m!1126825))

(declare-fun m!1126927 () Bool)

(assert (=> bs!234065 m!1126927))

(declare-fun m!1126929 () Bool)

(assert (=> bs!234065 m!1126929))

(assert (=> b!875558 d!275851))

(declare-fun d!275853 () Bool)

(declare-fun choose!5161 (Int) Bool)

(assert (=> d!275853 (= (Exists!17 lambda!26434) (choose!5161 lambda!26434))))

(declare-fun bs!234066 () Bool)

(assert (= bs!234066 d!275853))

(declare-fun m!1126931 () Bool)

(assert (=> bs!234066 m!1126931))

(assert (=> b!875558 d!275853))

(declare-fun d!275855 () Bool)

(declare-fun isEmpty!5622 (Option!1909) Bool)

(assert (=> d!275855 (= (isDefined!1551 lt!329682) (not (isEmpty!5622 lt!329682)))))

(declare-fun bs!234067 () Bool)

(assert (= bs!234067 d!275855))

(declare-fun m!1126933 () Bool)

(assert (=> bs!234067 m!1126933))

(assert (=> b!875558 d!275855))

(declare-fun d!275857 () Bool)

(assert (=> d!275857 (= (Exists!17 lambda!26433) (choose!5161 lambda!26433))))

(declare-fun bs!234068 () Bool)

(assert (= bs!234068 d!275857))

(declare-fun m!1126935 () Bool)

(assert (=> bs!234068 m!1126935))

(assert (=> b!875558 d!275857))

(declare-fun bs!234070 () Bool)

(declare-fun d!275859 () Bool)

(assert (= bs!234070 (and d!275859 b!875558)))

(declare-fun lambda!26456 () Int)

(assert (=> bs!234070 (not (= lambda!26456 lambda!26434))))

(assert (=> bs!234070 (= lambda!26456 lambda!26433)))

(declare-fun bs!234071 () Bool)

(assert (= bs!234071 (and d!275859 d!275851)))

(assert (=> bs!234071 (= lambda!26456 lambda!26451)))

(declare-fun bs!234072 () Bool)

(assert (= bs!234072 (and d!275859 b!875680)))

(assert (=> bs!234072 (not (= lambda!26456 lambda!26447))))

(declare-fun bs!234073 () Bool)

(assert (= bs!234073 (and d!275859 b!875681)))

(assert (=> bs!234073 (not (= lambda!26456 lambda!26448))))

(assert (=> d!275859 true))

(assert (=> d!275859 true))

(assert (=> d!275859 true))

(declare-fun lambda!26457 () Int)

(assert (=> bs!234070 (= lambda!26457 lambda!26434)))

(assert (=> bs!234070 (not (= lambda!26457 lambda!26433))))

(declare-fun bs!234074 () Bool)

(assert (= bs!234074 d!275859))

(assert (=> bs!234074 (not (= lambda!26457 lambda!26456))))

(assert (=> bs!234071 (not (= lambda!26457 lambda!26451))))

(assert (=> bs!234072 (not (= lambda!26457 lambda!26447))))

(assert (=> bs!234073 (= (= EmptyExpr!2218 (regOne!4948 r!15766)) (= lambda!26457 lambda!26448))))

(assert (=> d!275859 true))

(assert (=> d!275859 true))

(assert (=> d!275859 true))

(assert (=> d!275859 (= (Exists!17 lambda!26456) (Exists!17 lambda!26457))))

(declare-fun lt!329727 () Unit!14015)

(declare-fun choose!5162 (Regex!2218 Regex!2218 List!9448) Unit!14015)

(assert (=> d!275859 (= lt!329727 (choose!5162 EmptyExpr!2218 (regTwo!4948 r!15766) s!10566))))

(assert (=> d!275859 (validRegex!687 EmptyExpr!2218)))

(assert (=> d!275859 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!13 EmptyExpr!2218 (regTwo!4948 r!15766) s!10566) lt!329727)))

(declare-fun m!1126963 () Bool)

(assert (=> bs!234074 m!1126963))

(declare-fun m!1126965 () Bool)

(assert (=> bs!234074 m!1126965))

(declare-fun m!1126967 () Bool)

(assert (=> bs!234074 m!1126967))

(assert (=> bs!234074 m!1126911))

(assert (=> b!875558 d!275859))

(declare-fun bm!50924 () Bool)

(declare-fun call!50931 () Bool)

(declare-fun call!50929 () Bool)

(assert (=> bm!50924 (= call!50931 call!50929)))

(declare-fun b!875819 () Bool)

(declare-fun e!575652 () Bool)

(declare-fun e!575651 () Bool)

(assert (=> b!875819 (= e!575652 e!575651)))

(declare-fun c!141638 () Bool)

(assert (=> b!875819 (= c!141638 (is-Union!2218 (regTwo!4948 r!15766)))))

(declare-fun b!875820 () Bool)

(declare-fun res!398264 () Bool)

(declare-fun e!575656 () Bool)

(assert (=> b!875820 (=> (not res!398264) (not e!575656))))

(declare-fun call!50930 () Bool)

(assert (=> b!875820 (= res!398264 call!50930)))

(assert (=> b!875820 (= e!575651 e!575656)))

(declare-fun b!875821 () Bool)

(declare-fun e!575650 () Bool)

(assert (=> b!875821 (= e!575652 e!575650)))

(declare-fun res!398260 () Bool)

(assert (=> b!875821 (= res!398260 (not (nullable!556 (reg!2547 (regTwo!4948 r!15766)))))))

(assert (=> b!875821 (=> (not res!398260) (not e!575650))))

(declare-fun b!875822 () Bool)

(declare-fun res!398262 () Bool)

(declare-fun e!575653 () Bool)

(assert (=> b!875822 (=> res!398262 e!575653)))

(assert (=> b!875822 (= res!398262 (not (is-Concat!4051 (regTwo!4948 r!15766))))))

(assert (=> b!875822 (= e!575651 e!575653)))

(declare-fun bm!50925 () Bool)

(declare-fun c!141639 () Bool)

(assert (=> bm!50925 (= call!50929 (validRegex!687 (ite c!141639 (reg!2547 (regTwo!4948 r!15766)) (ite c!141638 (regTwo!4949 (regTwo!4948 r!15766)) (regTwo!4948 (regTwo!4948 r!15766))))))))

(declare-fun bm!50926 () Bool)

(assert (=> bm!50926 (= call!50930 (validRegex!687 (ite c!141638 (regOne!4949 (regTwo!4948 r!15766)) (regOne!4948 (regTwo!4948 r!15766)))))))

(declare-fun b!875823 () Bool)

(assert (=> b!875823 (= e!575656 call!50931)))

(declare-fun b!875824 () Bool)

(declare-fun e!575655 () Bool)

(assert (=> b!875824 (= e!575655 call!50931)))

(declare-fun b!875825 () Bool)

(declare-fun e!575654 () Bool)

(assert (=> b!875825 (= e!575654 e!575652)))

(assert (=> b!875825 (= c!141639 (is-Star!2218 (regTwo!4948 r!15766)))))

(declare-fun d!275865 () Bool)

(declare-fun res!398263 () Bool)

(assert (=> d!275865 (=> res!398263 e!575654)))

(assert (=> d!275865 (= res!398263 (is-ElementMatch!2218 (regTwo!4948 r!15766)))))

(assert (=> d!275865 (= (validRegex!687 (regTwo!4948 r!15766)) e!575654)))

(declare-fun b!875826 () Bool)

(assert (=> b!875826 (= e!575653 e!575655)))

(declare-fun res!398261 () Bool)

(assert (=> b!875826 (=> (not res!398261) (not e!575655))))

(assert (=> b!875826 (= res!398261 call!50930)))

(declare-fun b!875827 () Bool)

(assert (=> b!875827 (= e!575650 call!50929)))

(assert (= (and d!275865 (not res!398263)) b!875825))

(assert (= (and b!875825 c!141639) b!875821))

(assert (= (and b!875825 (not c!141639)) b!875819))

(assert (= (and b!875821 res!398260) b!875827))

(assert (= (and b!875819 c!141638) b!875820))

(assert (= (and b!875819 (not c!141638)) b!875822))

(assert (= (and b!875820 res!398264) b!875823))

(assert (= (and b!875822 (not res!398262)) b!875826))

(assert (= (and b!875826 res!398261) b!875824))

(assert (= (or b!875823 b!875824) bm!50924))

(assert (= (or b!875820 b!875826) bm!50926))

(assert (= (or b!875827 bm!50924) bm!50925))

(declare-fun m!1126969 () Bool)

(assert (=> b!875821 m!1126969))

(declare-fun m!1126971 () Bool)

(assert (=> bm!50925 m!1126971))

(declare-fun m!1126973 () Bool)

(assert (=> bm!50926 m!1126973))

(assert (=> b!875559 d!275865))

(declare-fun b!875838 () Bool)

(declare-fun e!575659 () Bool)

(assert (=> b!875838 (= e!575659 tp_is_empty!4079)))

(declare-fun b!875841 () Bool)

(declare-fun tp!276950 () Bool)

(declare-fun tp!276947 () Bool)

(assert (=> b!875841 (= e!575659 (and tp!276950 tp!276947))))

(assert (=> b!875565 (= tp!276918 e!575659)))

(declare-fun b!875839 () Bool)

(declare-fun tp!276951 () Bool)

(declare-fun tp!276948 () Bool)

(assert (=> b!875839 (= e!575659 (and tp!276951 tp!276948))))

(declare-fun b!875840 () Bool)

(declare-fun tp!276949 () Bool)

(assert (=> b!875840 (= e!575659 tp!276949)))

(assert (= (and b!875565 (is-ElementMatch!2218 (regOne!4948 r!15766))) b!875838))

(assert (= (and b!875565 (is-Concat!4051 (regOne!4948 r!15766))) b!875839))

(assert (= (and b!875565 (is-Star!2218 (regOne!4948 r!15766))) b!875840))

(assert (= (and b!875565 (is-Union!2218 (regOne!4948 r!15766))) b!875841))

(declare-fun b!875842 () Bool)

(declare-fun e!575660 () Bool)

(assert (=> b!875842 (= e!575660 tp_is_empty!4079)))

(declare-fun b!875845 () Bool)

(declare-fun tp!276955 () Bool)

(declare-fun tp!276952 () Bool)

(assert (=> b!875845 (= e!575660 (and tp!276955 tp!276952))))

(assert (=> b!875565 (= tp!276915 e!575660)))

(declare-fun b!875843 () Bool)

(declare-fun tp!276956 () Bool)

(declare-fun tp!276953 () Bool)

(assert (=> b!875843 (= e!575660 (and tp!276956 tp!276953))))

(declare-fun b!875844 () Bool)

(declare-fun tp!276954 () Bool)

(assert (=> b!875844 (= e!575660 tp!276954)))

(assert (= (and b!875565 (is-ElementMatch!2218 (regTwo!4948 r!15766))) b!875842))

(assert (= (and b!875565 (is-Concat!4051 (regTwo!4948 r!15766))) b!875843))

(assert (= (and b!875565 (is-Star!2218 (regTwo!4948 r!15766))) b!875844))

(assert (= (and b!875565 (is-Union!2218 (regTwo!4948 r!15766))) b!875845))

(declare-fun b!875846 () Bool)

(declare-fun e!575661 () Bool)

(assert (=> b!875846 (= e!575661 tp_is_empty!4079)))

(declare-fun b!875849 () Bool)

(declare-fun tp!276960 () Bool)

(declare-fun tp!276957 () Bool)

(assert (=> b!875849 (= e!575661 (and tp!276960 tp!276957))))

(assert (=> b!875561 (= tp!276914 e!575661)))

(declare-fun b!875847 () Bool)

(declare-fun tp!276961 () Bool)

(declare-fun tp!276958 () Bool)

(assert (=> b!875847 (= e!575661 (and tp!276961 tp!276958))))

(declare-fun b!875848 () Bool)

(declare-fun tp!276959 () Bool)

(assert (=> b!875848 (= e!575661 tp!276959)))

(assert (= (and b!875561 (is-ElementMatch!2218 (reg!2547 r!15766))) b!875846))

(assert (= (and b!875561 (is-Concat!4051 (reg!2547 r!15766))) b!875847))

(assert (= (and b!875561 (is-Star!2218 (reg!2547 r!15766))) b!875848))

(assert (= (and b!875561 (is-Union!2218 (reg!2547 r!15766))) b!875849))

(declare-fun b!875850 () Bool)

(declare-fun e!575662 () Bool)

(assert (=> b!875850 (= e!575662 tp_is_empty!4079)))

(declare-fun b!875853 () Bool)

(declare-fun tp!276965 () Bool)

(declare-fun tp!276962 () Bool)

(assert (=> b!875853 (= e!575662 (and tp!276965 tp!276962))))

(assert (=> b!875563 (= tp!276916 e!575662)))

(declare-fun b!875851 () Bool)

(declare-fun tp!276966 () Bool)

(declare-fun tp!276963 () Bool)

(assert (=> b!875851 (= e!575662 (and tp!276966 tp!276963))))

(declare-fun b!875852 () Bool)

(declare-fun tp!276964 () Bool)

(assert (=> b!875852 (= e!575662 tp!276964)))

(assert (= (and b!875563 (is-ElementMatch!2218 (regOne!4949 r!15766))) b!875850))

(assert (= (and b!875563 (is-Concat!4051 (regOne!4949 r!15766))) b!875851))

(assert (= (and b!875563 (is-Star!2218 (regOne!4949 r!15766))) b!875852))

(assert (= (and b!875563 (is-Union!2218 (regOne!4949 r!15766))) b!875853))

(declare-fun b!875854 () Bool)

(declare-fun e!575663 () Bool)

(assert (=> b!875854 (= e!575663 tp_is_empty!4079)))

(declare-fun b!875857 () Bool)

(declare-fun tp!276970 () Bool)

(declare-fun tp!276967 () Bool)

(assert (=> b!875857 (= e!575663 (and tp!276970 tp!276967))))

(assert (=> b!875563 (= tp!276917 e!575663)))

(declare-fun b!875855 () Bool)

(declare-fun tp!276971 () Bool)

(declare-fun tp!276968 () Bool)

(assert (=> b!875855 (= e!575663 (and tp!276971 tp!276968))))

(declare-fun b!875856 () Bool)

(declare-fun tp!276969 () Bool)

(assert (=> b!875856 (= e!575663 tp!276969)))

(assert (= (and b!875563 (is-ElementMatch!2218 (regTwo!4949 r!15766))) b!875854))

(assert (= (and b!875563 (is-Concat!4051 (regTwo!4949 r!15766))) b!875855))

(assert (= (and b!875563 (is-Star!2218 (regTwo!4949 r!15766))) b!875856))

(assert (= (and b!875563 (is-Union!2218 (regTwo!4949 r!15766))) b!875857))

(declare-fun b!875862 () Bool)

(declare-fun e!575666 () Bool)

(declare-fun tp!276974 () Bool)

(assert (=> b!875862 (= e!575666 (and tp_is_empty!4079 tp!276974))))

(assert (=> b!875564 (= tp!276913 e!575666)))

(assert (= (and b!875564 (is-Cons!9432 (t!100494 s!10566))) b!875862))

(push 1)

(assert (not bm!50910))

(assert (not b!875743))

(assert (not b!875856))

(assert (not d!275849))

(assert (not b!875778))

(assert (not bm!50905))

(assert (not b!875848))

(assert (not d!275855))

(assert (not b!875849))

(assert (not b!875677))

(assert (not b!875845))

(assert (not bm!50911))

(assert (not b!875847))

(assert tp_is_empty!4079)

(assert (not b!875747))

(assert (not b!875634))

(assert (not b!875751))

(assert (not b!875739))

(assert (not b!875821))

(assert (not b!875840))

(assert (not b!875852))

(assert (not b!875841))

(assert (not b!875773))

(assert (not b!875853))

(assert (not d!275841))

(assert (not bm!50904))

(assert (not d!275859))

(assert (not b!875673))

(assert (not d!275857))

(assert (not b!875748))

(assert (not bm!50925))

(assert (not b!875844))

(assert (not bm!50926))

(assert (not bm!50923))

(assert (not b!875862))

(assert (not b!875740))

(assert (not d!275851))

(assert (not b!875775))

(assert (not b!875857))

(assert (not d!275835))

(assert (not b!875855))

(assert (not b!875779))

(assert (not b!875851))

(assert (not b!875839))

(assert (not d!275853))

(assert (not b!875776))

(assert (not b!875772))

(assert (not b!875843))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

