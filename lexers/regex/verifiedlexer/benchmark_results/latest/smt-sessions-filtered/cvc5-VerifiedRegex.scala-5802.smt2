; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!286218 () Bool)

(assert start!286218)

(declare-fun b!2951199 () Bool)

(assert (=> b!2951199 true))

(assert (=> b!2951199 true))

(assert (=> b!2951199 true))

(declare-fun lambda!109766 () Int)

(declare-fun lambda!109765 () Int)

(assert (=> b!2951199 (not (= lambda!109766 lambda!109765))))

(assert (=> b!2951199 true))

(assert (=> b!2951199 true))

(assert (=> b!2951199 true))

(declare-fun b!2951194 () Bool)

(declare-fun e!1858688 () Bool)

(declare-fun tp!943287 () Bool)

(declare-fun tp!943284 () Bool)

(assert (=> b!2951194 (= e!1858688 (and tp!943287 tp!943284))))

(declare-fun b!2951195 () Bool)

(declare-fun res!1217677 () Bool)

(declare-fun e!1858690 () Bool)

(assert (=> b!2951195 (=> res!1217677 e!1858690)))

(declare-datatypes ((C!18494 0))(
  ( (C!18495 (val!11283 Int)) )
))
(declare-datatypes ((Regex!9154 0))(
  ( (ElementMatch!9154 (c!483130 C!18494)) (Concat!14475 (regOne!18820 Regex!9154) (regTwo!18820 Regex!9154)) (EmptyExpr!9154) (Star!9154 (reg!9483 Regex!9154)) (EmptyLang!9154) (Union!9154 (regOne!18821 Regex!9154) (regTwo!18821 Regex!9154)) )
))
(declare-fun lt!1032092 () Regex!9154)

(declare-fun isEmptyLang!276 (Regex!9154) Bool)

(assert (=> b!2951195 (= res!1217677 (isEmptyLang!276 lt!1032092))))

(declare-fun b!2951196 () Bool)

(declare-fun res!1217679 () Bool)

(assert (=> b!2951196 (=> res!1217679 e!1858690)))

(declare-fun isEmptyExpr!357 (Regex!9154) Bool)

(assert (=> b!2951196 (= res!1217679 (isEmptyExpr!357 lt!1032092))))

(declare-fun b!2951197 () Bool)

(declare-fun e!1858687 () Bool)

(declare-fun tp_is_empty!15871 () Bool)

(declare-fun tp!943285 () Bool)

(assert (=> b!2951197 (= e!1858687 (and tp_is_empty!15871 tp!943285))))

(declare-fun b!2951198 () Bool)

(declare-fun res!1217676 () Bool)

(assert (=> b!2951198 (=> res!1217676 e!1858690)))

(declare-fun lt!1032094 () Regex!9154)

(assert (=> b!2951198 (= res!1217676 (isEmptyExpr!357 lt!1032094))))

(declare-fun e!1858686 () Bool)

(declare-fun r!17423 () Regex!9154)

(declare-fun validRegex!3887 (Regex!9154) Bool)

(assert (=> b!2951199 (= e!1858686 (validRegex!3887 (regOne!18820 r!17423)))))

(declare-fun Exists!1486 (Int) Bool)

(assert (=> b!2951199 (= (Exists!1486 lambda!109765) (Exists!1486 lambda!109766))))

(declare-datatypes ((Unit!48687 0))(
  ( (Unit!48688) )
))
(declare-fun lt!1032090 () Unit!48687)

(declare-datatypes ((List!35019 0))(
  ( (Nil!34895) (Cons!34895 (h!40315 C!18494) (t!234084 List!35019)) )
))
(declare-fun s!11993 () List!35019)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!507 (Regex!9154 Regex!9154 List!35019) Unit!48687)

(assert (=> b!2951199 (= lt!1032090 (lemmaExistCutMatchRandMatchRSpecEquivalent!507 lt!1032094 lt!1032092 s!11993))))

(declare-datatypes ((tuple2!33826 0))(
  ( (tuple2!33827 (_1!20045 List!35019) (_2!20045 List!35019)) )
))
(declare-datatypes ((Option!6645 0))(
  ( (None!6644) (Some!6644 (v!34778 tuple2!33826)) )
))
(declare-fun isDefined!5196 (Option!6645) Bool)

(declare-fun findConcatSeparation!1039 (Regex!9154 Regex!9154 List!35019 List!35019 List!35019) Option!6645)

(assert (=> b!2951199 (= (isDefined!5196 (findConcatSeparation!1039 lt!1032094 lt!1032092 Nil!34895 s!11993 s!11993)) (Exists!1486 lambda!109765))))

(declare-fun lt!1032097 () Unit!48687)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!817 (Regex!9154 Regex!9154 List!35019) Unit!48687)

(assert (=> b!2951199 (= lt!1032097 (lemmaFindConcatSeparationEquivalentToExists!817 lt!1032094 lt!1032092 s!11993))))

(declare-fun lt!1032096 () Regex!9154)

(declare-fun matchRSpec!1291 (Regex!9154 List!35019) Bool)

(assert (=> b!2951199 (matchRSpec!1291 lt!1032096 s!11993)))

(declare-fun lt!1032091 () Unit!48687)

(declare-fun mainMatchTheorem!1291 (Regex!9154 List!35019) Unit!48687)

(assert (=> b!2951199 (= lt!1032091 (mainMatchTheorem!1291 lt!1032096 s!11993))))

(declare-fun b!2951200 () Bool)

(assert (=> b!2951200 (= e!1858688 tp_is_empty!15871)))

(declare-fun b!2951201 () Bool)

(declare-fun e!1858689 () Bool)

(declare-fun e!1858691 () Bool)

(assert (=> b!2951201 (= e!1858689 (not e!1858691))))

(declare-fun res!1217682 () Bool)

(assert (=> b!2951201 (=> res!1217682 e!1858691)))

(declare-fun lt!1032095 () Bool)

(assert (=> b!2951201 (= res!1217682 (or lt!1032095 (not (is-Concat!14475 r!17423))))))

(assert (=> b!2951201 (= lt!1032095 (matchRSpec!1291 r!17423 s!11993))))

(declare-fun matchR!4036 (Regex!9154 List!35019) Bool)

(assert (=> b!2951201 (= lt!1032095 (matchR!4036 r!17423 s!11993))))

(declare-fun lt!1032093 () Unit!48687)

(assert (=> b!2951201 (= lt!1032093 (mainMatchTheorem!1291 r!17423 s!11993))))

(declare-fun b!2951202 () Bool)

(assert (=> b!2951202 (= e!1858690 e!1858686)))

(declare-fun res!1217681 () Bool)

(assert (=> b!2951202 (=> res!1217681 e!1858686)))

(assert (=> b!2951202 (= res!1217681 (not (matchR!4036 lt!1032096 s!11993)))))

(assert (=> b!2951202 (= lt!1032096 (Concat!14475 lt!1032094 lt!1032092))))

(declare-fun b!2951203 () Bool)

(assert (=> b!2951203 (= e!1858691 e!1858690)))

(declare-fun res!1217675 () Bool)

(assert (=> b!2951203 (=> res!1217675 e!1858690)))

(assert (=> b!2951203 (= res!1217675 (isEmptyLang!276 lt!1032094))))

(declare-fun simplify!159 (Regex!9154) Regex!9154)

(assert (=> b!2951203 (= lt!1032092 (simplify!159 (regTwo!18820 r!17423)))))

(assert (=> b!2951203 (= lt!1032094 (simplify!159 (regOne!18820 r!17423)))))

(declare-fun b!2951204 () Bool)

(declare-fun tp!943283 () Bool)

(assert (=> b!2951204 (= e!1858688 tp!943283)))

(declare-fun res!1217678 () Bool)

(assert (=> start!286218 (=> (not res!1217678) (not e!1858689))))

(assert (=> start!286218 (= res!1217678 (validRegex!3887 r!17423))))

(assert (=> start!286218 e!1858689))

(assert (=> start!286218 e!1858688))

(assert (=> start!286218 e!1858687))

(declare-fun b!2951205 () Bool)

(declare-fun res!1217680 () Bool)

(assert (=> b!2951205 (=> res!1217680 e!1858691)))

(declare-fun isEmpty!19159 (List!35019) Bool)

(assert (=> b!2951205 (= res!1217680 (isEmpty!19159 s!11993))))

(declare-fun b!2951206 () Bool)

(declare-fun tp!943282 () Bool)

(declare-fun tp!943286 () Bool)

(assert (=> b!2951206 (= e!1858688 (and tp!943282 tp!943286))))

(assert (= (and start!286218 res!1217678) b!2951201))

(assert (= (and b!2951201 (not res!1217682)) b!2951205))

(assert (= (and b!2951205 (not res!1217680)) b!2951203))

(assert (= (and b!2951203 (not res!1217675)) b!2951195))

(assert (= (and b!2951195 (not res!1217677)) b!2951198))

(assert (= (and b!2951198 (not res!1217676)) b!2951196))

(assert (= (and b!2951196 (not res!1217679)) b!2951202))

(assert (= (and b!2951202 (not res!1217681)) b!2951199))

(assert (= (and start!286218 (is-ElementMatch!9154 r!17423)) b!2951200))

(assert (= (and start!286218 (is-Concat!14475 r!17423)) b!2951194))

(assert (= (and start!286218 (is-Star!9154 r!17423)) b!2951204))

(assert (= (and start!286218 (is-Union!9154 r!17423)) b!2951206))

(assert (= (and start!286218 (is-Cons!34895 s!11993)) b!2951197))

(declare-fun m!3329785 () Bool)

(assert (=> b!2951205 m!3329785))

(declare-fun m!3329787 () Bool)

(assert (=> b!2951195 m!3329787))

(declare-fun m!3329789 () Bool)

(assert (=> b!2951198 m!3329789))

(declare-fun m!3329791 () Bool)

(assert (=> b!2951201 m!3329791))

(declare-fun m!3329793 () Bool)

(assert (=> b!2951201 m!3329793))

(declare-fun m!3329795 () Bool)

(assert (=> b!2951201 m!3329795))

(declare-fun m!3329797 () Bool)

(assert (=> b!2951196 m!3329797))

(declare-fun m!3329799 () Bool)

(assert (=> b!2951202 m!3329799))

(declare-fun m!3329801 () Bool)

(assert (=> b!2951203 m!3329801))

(declare-fun m!3329803 () Bool)

(assert (=> b!2951203 m!3329803))

(declare-fun m!3329805 () Bool)

(assert (=> b!2951203 m!3329805))

(declare-fun m!3329807 () Bool)

(assert (=> start!286218 m!3329807))

(declare-fun m!3329809 () Bool)

(assert (=> b!2951199 m!3329809))

(declare-fun m!3329811 () Bool)

(assert (=> b!2951199 m!3329811))

(declare-fun m!3329813 () Bool)

(assert (=> b!2951199 m!3329813))

(declare-fun m!3329815 () Bool)

(assert (=> b!2951199 m!3329815))

(declare-fun m!3329817 () Bool)

(assert (=> b!2951199 m!3329817))

(declare-fun m!3329819 () Bool)

(assert (=> b!2951199 m!3329819))

(declare-fun m!3329821 () Bool)

(assert (=> b!2951199 m!3329821))

(assert (=> b!2951199 m!3329809))

(assert (=> b!2951199 m!3329813))

(declare-fun m!3329823 () Bool)

(assert (=> b!2951199 m!3329823))

(declare-fun m!3329825 () Bool)

(assert (=> b!2951199 m!3329825))

(push 1)

(assert (not b!2951203))

(assert (not b!2951201))

(assert (not b!2951194))

(assert (not b!2951204))

(assert (not start!286218))

(assert (not b!2951202))

(assert (not b!2951206))

(assert (not b!2951198))

(assert (not b!2951199))

(assert (not b!2951205))

(assert tp_is_empty!15871)

(assert (not b!2951195))

(assert (not b!2951197))

(assert (not b!2951196))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!841041 () Bool)

(assert (=> d!841041 (= (isEmptyExpr!357 lt!1032094) (is-EmptyExpr!9154 lt!1032094))))

(assert (=> b!2951198 d!841041))

(declare-fun d!841043 () Bool)

(assert (=> d!841043 (= (isEmptyLang!276 lt!1032094) (is-EmptyLang!9154 lt!1032094))))

(assert (=> b!2951203 d!841043))

(declare-fun b!2951348 () Bool)

(declare-fun e!1858768 () Regex!9154)

(assert (=> b!2951348 (= e!1858768 EmptyLang!9154)))

(declare-fun bm!195094 () Bool)

(declare-fun call!195101 () Regex!9154)

(declare-fun call!195104 () Regex!9154)

(assert (=> bm!195094 (= call!195101 call!195104)))

(declare-fun b!2951349 () Bool)

(declare-fun e!1858766 () Bool)

(declare-fun call!195099 () Bool)

(assert (=> b!2951349 (= e!1858766 call!195099)))

(declare-fun b!2951350 () Bool)

(declare-fun e!1858767 () Regex!9154)

(declare-fun lt!1032135 () Regex!9154)

(assert (=> b!2951350 (= e!1858767 (Star!9154 lt!1032135))))

(declare-fun call!195103 () Bool)

(declare-fun c!483166 () Bool)

(declare-fun lt!1032134 () Regex!9154)

(declare-fun lt!1032139 () Regex!9154)

(declare-fun c!483167 () Bool)

(declare-fun bm!195095 () Bool)

(assert (=> bm!195095 (= call!195103 (isEmptyLang!276 (ite c!483167 lt!1032135 (ite c!483166 lt!1032139 lt!1032134))))))

(declare-fun bm!195096 () Bool)

(declare-fun lt!1032136 () Regex!9154)

(declare-fun lt!1032137 () Regex!9154)

(assert (=> bm!195096 (= call!195099 (isEmptyLang!276 (ite c!483166 lt!1032136 lt!1032137)))))

(declare-fun b!2951351 () Bool)

(declare-fun e!1858774 () Regex!9154)

(assert (=> b!2951351 (= e!1858774 EmptyExpr!9154)))

(declare-fun b!2951352 () Bool)

(declare-fun c!483171 () Bool)

(declare-fun e!1858764 () Bool)

(assert (=> b!2951352 (= c!483171 e!1858764)))

(declare-fun res!1217741 () Bool)

(assert (=> b!2951352 (=> res!1217741 e!1858764)))

(assert (=> b!2951352 (= res!1217741 call!195103)))

(assert (=> b!2951352 (= lt!1032135 call!195104)))

(declare-fun e!1858770 () Regex!9154)

(assert (=> b!2951352 (= e!1858770 e!1858767)))

(declare-fun b!2951353 () Bool)

(declare-fun e!1858769 () Regex!9154)

(assert (=> b!2951353 (= e!1858769 lt!1032136)))

(declare-fun b!2951354 () Bool)

(assert (=> b!2951354 (= e!1858767 EmptyExpr!9154)))

(declare-fun b!2951355 () Bool)

(declare-fun e!1858765 () Regex!9154)

(declare-fun e!1858762 () Regex!9154)

(assert (=> b!2951355 (= e!1858765 e!1858762)))

(declare-fun c!483163 () Bool)

(assert (=> b!2951355 (= c!483163 (is-ElementMatch!9154 (regTwo!18820 r!17423)))))

(declare-fun b!2951356 () Bool)

(declare-fun e!1858771 () Regex!9154)

(declare-fun e!1858772 () Regex!9154)

(assert (=> b!2951356 (= e!1858771 e!1858772)))

(declare-fun c!483164 () Bool)

(assert (=> b!2951356 (= c!483164 (isEmptyExpr!357 lt!1032137))))

(declare-fun bm!195097 () Bool)

(declare-fun call!195100 () Bool)

(assert (=> bm!195097 (= call!195100 (isEmptyExpr!357 (ite c!483167 lt!1032135 lt!1032134)))))

(declare-fun b!2951357 () Bool)

(declare-fun e!1858763 () Regex!9154)

(assert (=> b!2951357 (= e!1858763 lt!1032139)))

(declare-fun b!2951358 () Bool)

(assert (=> b!2951358 (= e!1858769 (Union!9154 lt!1032136 lt!1032139))))

(declare-fun bm!195098 () Bool)

(assert (=> bm!195098 (= call!195104 (simplify!159 (ite c!483167 (reg!9483 (regTwo!18820 r!17423)) (ite c!483166 (regTwo!18821 (regTwo!18820 r!17423)) (regOne!18820 (regTwo!18820 r!17423))))))))

(declare-fun bm!195099 () Bool)

(declare-fun call!195102 () Regex!9154)

(assert (=> bm!195099 (= call!195102 (simplify!159 (ite c!483166 (regOne!18821 (regTwo!18820 r!17423)) (regTwo!18820 (regTwo!18820 r!17423)))))))

(declare-fun b!2951359 () Bool)

(assert (=> b!2951359 (= e!1858772 (Concat!14475 lt!1032134 lt!1032137))))

(declare-fun b!2951360 () Bool)

(assert (=> b!2951360 (= c!483166 (is-Union!9154 (regTwo!18820 r!17423)))))

(declare-fun e!1858775 () Regex!9154)

(assert (=> b!2951360 (= e!1858770 e!1858775)))

(declare-fun b!2951361 () Bool)

(assert (=> b!2951361 (= e!1858764 call!195100)))

(declare-fun b!2951362 () Bool)

(assert (=> b!2951362 (= e!1858771 lt!1032137)))

(declare-fun d!841045 () Bool)

(declare-fun e!1858773 () Bool)

(assert (=> d!841045 e!1858773))

(declare-fun res!1217742 () Bool)

(assert (=> d!841045 (=> (not res!1217742) (not e!1858773))))

(declare-fun lt!1032138 () Regex!9154)

(assert (=> d!841045 (= res!1217742 (validRegex!3887 lt!1032138))))

(assert (=> d!841045 (= lt!1032138 e!1858765)))

(declare-fun c!483169 () Bool)

(assert (=> d!841045 (= c!483169 (is-EmptyLang!9154 (regTwo!18820 r!17423)))))

(assert (=> d!841045 (validRegex!3887 (regTwo!18820 r!17423))))

(assert (=> d!841045 (= (simplify!159 (regTwo!18820 r!17423)) lt!1032138)))

(declare-fun b!2951363 () Bool)

(assert (=> b!2951363 (= e!1858772 lt!1032134)))

(declare-fun b!2951364 () Bool)

(declare-fun c!483162 () Bool)

(assert (=> b!2951364 (= c!483162 (is-EmptyExpr!9154 (regTwo!18820 r!17423)))))

(assert (=> b!2951364 (= e!1858762 e!1858774)))

(declare-fun b!2951365 () Bool)

(declare-fun nullable!2910 (Regex!9154) Bool)

(assert (=> b!2951365 (= e!1858773 (= (nullable!2910 lt!1032138) (nullable!2910 (regTwo!18820 r!17423))))))

(declare-fun b!2951366 () Bool)

(assert (=> b!2951366 (= e!1858765 EmptyLang!9154)))

(declare-fun bm!195100 () Bool)

(declare-fun call!195105 () Bool)

(assert (=> bm!195100 (= call!195105 call!195103)))

(declare-fun b!2951367 () Bool)

(declare-fun c!483165 () Bool)

(assert (=> b!2951367 (= c!483165 call!195105)))

(assert (=> b!2951367 (= e!1858763 e!1858769)))

(declare-fun b!2951368 () Bool)

(assert (=> b!2951368 (= e!1858774 e!1858770)))

(assert (=> b!2951368 (= c!483167 (is-Star!9154 (regTwo!18820 r!17423)))))

(declare-fun b!2951369 () Bool)

(assert (=> b!2951369 (= e!1858775 e!1858768)))

(assert (=> b!2951369 (= lt!1032134 call!195101)))

(assert (=> b!2951369 (= lt!1032137 call!195102)))

(declare-fun res!1217743 () Bool)

(assert (=> b!2951369 (= res!1217743 call!195105)))

(assert (=> b!2951369 (=> res!1217743 e!1858766)))

(declare-fun c!483170 () Bool)

(assert (=> b!2951369 (= c!483170 e!1858766)))

(declare-fun b!2951370 () Bool)

(assert (=> b!2951370 (= e!1858762 (regTwo!18820 r!17423))))

(declare-fun b!2951371 () Bool)

(assert (=> b!2951371 (= e!1858775 e!1858763)))

(assert (=> b!2951371 (= lt!1032136 call!195102)))

(assert (=> b!2951371 (= lt!1032139 call!195101)))

(declare-fun c!483168 () Bool)

(assert (=> b!2951371 (= c!483168 call!195099)))

(declare-fun b!2951372 () Bool)

(declare-fun c!483172 () Bool)

(assert (=> b!2951372 (= c!483172 call!195100)))

(assert (=> b!2951372 (= e!1858768 e!1858771)))

(assert (= (and d!841045 c!483169) b!2951366))

(assert (= (and d!841045 (not c!483169)) b!2951355))

(assert (= (and b!2951355 c!483163) b!2951370))

(assert (= (and b!2951355 (not c!483163)) b!2951364))

(assert (= (and b!2951364 c!483162) b!2951351))

(assert (= (and b!2951364 (not c!483162)) b!2951368))

(assert (= (and b!2951368 c!483167) b!2951352))

(assert (= (and b!2951368 (not c!483167)) b!2951360))

(assert (= (and b!2951352 (not res!1217741)) b!2951361))

(assert (= (and b!2951352 c!483171) b!2951354))

(assert (= (and b!2951352 (not c!483171)) b!2951350))

(assert (= (and b!2951360 c!483166) b!2951371))

(assert (= (and b!2951360 (not c!483166)) b!2951369))

(assert (= (and b!2951371 c!483168) b!2951357))

(assert (= (and b!2951371 (not c!483168)) b!2951367))

(assert (= (and b!2951367 c!483165) b!2951353))

(assert (= (and b!2951367 (not c!483165)) b!2951358))

(assert (= (and b!2951369 (not res!1217743)) b!2951349))

(assert (= (and b!2951369 c!483170) b!2951348))

(assert (= (and b!2951369 (not c!483170)) b!2951372))

(assert (= (and b!2951372 c!483172) b!2951362))

(assert (= (and b!2951372 (not c!483172)) b!2951356))

(assert (= (and b!2951356 c!483164) b!2951363))

(assert (= (and b!2951356 (not c!483164)) b!2951359))

(assert (= (or b!2951371 b!2951369) bm!195099))

(assert (= (or b!2951371 b!2951369) bm!195094))

(assert (= (or b!2951367 b!2951369) bm!195100))

(assert (= (or b!2951371 b!2951349) bm!195096))

(assert (= (or b!2951361 b!2951372) bm!195097))

(assert (= (or b!2951352 bm!195094) bm!195098))

(assert (= (or b!2951352 bm!195100) bm!195095))

(assert (= (and d!841045 res!1217742) b!2951365))

(declare-fun m!3329869 () Bool)

(assert (=> bm!195097 m!3329869))

(declare-fun m!3329871 () Bool)

(assert (=> d!841045 m!3329871))

(declare-fun m!3329873 () Bool)

(assert (=> d!841045 m!3329873))

(declare-fun m!3329875 () Bool)

(assert (=> b!2951356 m!3329875))

(declare-fun m!3329877 () Bool)

(assert (=> bm!195099 m!3329877))

(declare-fun m!3329879 () Bool)

(assert (=> bm!195095 m!3329879))

(declare-fun m!3329881 () Bool)

(assert (=> bm!195096 m!3329881))

(declare-fun m!3329883 () Bool)

(assert (=> bm!195098 m!3329883))

(declare-fun m!3329885 () Bool)

(assert (=> b!2951365 m!3329885))

(declare-fun m!3329887 () Bool)

(assert (=> b!2951365 m!3329887))

(assert (=> b!2951203 d!841045))

(declare-fun b!2951373 () Bool)

(declare-fun e!1858782 () Regex!9154)

(assert (=> b!2951373 (= e!1858782 EmptyLang!9154)))

(declare-fun bm!195101 () Bool)

(declare-fun call!195108 () Regex!9154)

(declare-fun call!195111 () Regex!9154)

(assert (=> bm!195101 (= call!195108 call!195111)))

(declare-fun b!2951374 () Bool)

(declare-fun e!1858780 () Bool)

(declare-fun call!195106 () Bool)

(assert (=> b!2951374 (= e!1858780 call!195106)))

(declare-fun b!2951375 () Bool)

(declare-fun e!1858781 () Regex!9154)

(declare-fun lt!1032141 () Regex!9154)

(assert (=> b!2951375 (= e!1858781 (Star!9154 lt!1032141))))

(declare-fun lt!1032145 () Regex!9154)

(declare-fun c!483177 () Bool)

(declare-fun c!483178 () Bool)

(declare-fun lt!1032140 () Regex!9154)

(declare-fun bm!195102 () Bool)

(declare-fun call!195110 () Bool)

(assert (=> bm!195102 (= call!195110 (isEmptyLang!276 (ite c!483178 lt!1032141 (ite c!483177 lt!1032145 lt!1032140))))))

(declare-fun bm!195103 () Bool)

(declare-fun lt!1032143 () Regex!9154)

(declare-fun lt!1032142 () Regex!9154)

(assert (=> bm!195103 (= call!195106 (isEmptyLang!276 (ite c!483177 lt!1032142 lt!1032143)))))

(declare-fun b!2951376 () Bool)

(declare-fun e!1858788 () Regex!9154)

(assert (=> b!2951376 (= e!1858788 EmptyExpr!9154)))

(declare-fun b!2951377 () Bool)

(declare-fun c!483182 () Bool)

(declare-fun e!1858778 () Bool)

(assert (=> b!2951377 (= c!483182 e!1858778)))

(declare-fun res!1217744 () Bool)

(assert (=> b!2951377 (=> res!1217744 e!1858778)))

(assert (=> b!2951377 (= res!1217744 call!195110)))

(assert (=> b!2951377 (= lt!1032141 call!195111)))

(declare-fun e!1858784 () Regex!9154)

(assert (=> b!2951377 (= e!1858784 e!1858781)))

(declare-fun b!2951378 () Bool)

(declare-fun e!1858783 () Regex!9154)

(assert (=> b!2951378 (= e!1858783 lt!1032142)))

(declare-fun b!2951379 () Bool)

(assert (=> b!2951379 (= e!1858781 EmptyExpr!9154)))

(declare-fun b!2951380 () Bool)

(declare-fun e!1858779 () Regex!9154)

(declare-fun e!1858776 () Regex!9154)

(assert (=> b!2951380 (= e!1858779 e!1858776)))

(declare-fun c!483174 () Bool)

(assert (=> b!2951380 (= c!483174 (is-ElementMatch!9154 (regOne!18820 r!17423)))))

(declare-fun b!2951381 () Bool)

(declare-fun e!1858785 () Regex!9154)

(declare-fun e!1858786 () Regex!9154)

(assert (=> b!2951381 (= e!1858785 e!1858786)))

(declare-fun c!483175 () Bool)

(assert (=> b!2951381 (= c!483175 (isEmptyExpr!357 lt!1032143))))

(declare-fun call!195107 () Bool)

(declare-fun bm!195104 () Bool)

(assert (=> bm!195104 (= call!195107 (isEmptyExpr!357 (ite c!483178 lt!1032141 lt!1032140)))))

(declare-fun b!2951382 () Bool)

(declare-fun e!1858777 () Regex!9154)

(assert (=> b!2951382 (= e!1858777 lt!1032145)))

(declare-fun b!2951383 () Bool)

(assert (=> b!2951383 (= e!1858783 (Union!9154 lt!1032142 lt!1032145))))

(declare-fun bm!195105 () Bool)

(assert (=> bm!195105 (= call!195111 (simplify!159 (ite c!483178 (reg!9483 (regOne!18820 r!17423)) (ite c!483177 (regTwo!18821 (regOne!18820 r!17423)) (regOne!18820 (regOne!18820 r!17423))))))))

(declare-fun bm!195106 () Bool)

(declare-fun call!195109 () Regex!9154)

(assert (=> bm!195106 (= call!195109 (simplify!159 (ite c!483177 (regOne!18821 (regOne!18820 r!17423)) (regTwo!18820 (regOne!18820 r!17423)))))))

(declare-fun b!2951384 () Bool)

(assert (=> b!2951384 (= e!1858786 (Concat!14475 lt!1032140 lt!1032143))))

(declare-fun b!2951385 () Bool)

(assert (=> b!2951385 (= c!483177 (is-Union!9154 (regOne!18820 r!17423)))))

(declare-fun e!1858789 () Regex!9154)

(assert (=> b!2951385 (= e!1858784 e!1858789)))

(declare-fun b!2951386 () Bool)

(assert (=> b!2951386 (= e!1858778 call!195107)))

(declare-fun b!2951387 () Bool)

(assert (=> b!2951387 (= e!1858785 lt!1032143)))

(declare-fun d!841047 () Bool)

(declare-fun e!1858787 () Bool)

(assert (=> d!841047 e!1858787))

(declare-fun res!1217745 () Bool)

(assert (=> d!841047 (=> (not res!1217745) (not e!1858787))))

(declare-fun lt!1032144 () Regex!9154)

(assert (=> d!841047 (= res!1217745 (validRegex!3887 lt!1032144))))

(assert (=> d!841047 (= lt!1032144 e!1858779)))

(declare-fun c!483180 () Bool)

(assert (=> d!841047 (= c!483180 (is-EmptyLang!9154 (regOne!18820 r!17423)))))

(assert (=> d!841047 (validRegex!3887 (regOne!18820 r!17423))))

(assert (=> d!841047 (= (simplify!159 (regOne!18820 r!17423)) lt!1032144)))

(declare-fun b!2951388 () Bool)

(assert (=> b!2951388 (= e!1858786 lt!1032140)))

(declare-fun b!2951389 () Bool)

(declare-fun c!483173 () Bool)

(assert (=> b!2951389 (= c!483173 (is-EmptyExpr!9154 (regOne!18820 r!17423)))))

(assert (=> b!2951389 (= e!1858776 e!1858788)))

(declare-fun b!2951390 () Bool)

(assert (=> b!2951390 (= e!1858787 (= (nullable!2910 lt!1032144) (nullable!2910 (regOne!18820 r!17423))))))

(declare-fun b!2951391 () Bool)

(assert (=> b!2951391 (= e!1858779 EmptyLang!9154)))

(declare-fun bm!195107 () Bool)

(declare-fun call!195112 () Bool)

(assert (=> bm!195107 (= call!195112 call!195110)))

(declare-fun b!2951392 () Bool)

(declare-fun c!483176 () Bool)

(assert (=> b!2951392 (= c!483176 call!195112)))

(assert (=> b!2951392 (= e!1858777 e!1858783)))

(declare-fun b!2951393 () Bool)

(assert (=> b!2951393 (= e!1858788 e!1858784)))

(assert (=> b!2951393 (= c!483178 (is-Star!9154 (regOne!18820 r!17423)))))

(declare-fun b!2951394 () Bool)

(assert (=> b!2951394 (= e!1858789 e!1858782)))

(assert (=> b!2951394 (= lt!1032140 call!195108)))

(assert (=> b!2951394 (= lt!1032143 call!195109)))

(declare-fun res!1217746 () Bool)

(assert (=> b!2951394 (= res!1217746 call!195112)))

(assert (=> b!2951394 (=> res!1217746 e!1858780)))

(declare-fun c!483181 () Bool)

(assert (=> b!2951394 (= c!483181 e!1858780)))

(declare-fun b!2951395 () Bool)

(assert (=> b!2951395 (= e!1858776 (regOne!18820 r!17423))))

(declare-fun b!2951396 () Bool)

(assert (=> b!2951396 (= e!1858789 e!1858777)))

(assert (=> b!2951396 (= lt!1032142 call!195109)))

(assert (=> b!2951396 (= lt!1032145 call!195108)))

(declare-fun c!483179 () Bool)

(assert (=> b!2951396 (= c!483179 call!195106)))

(declare-fun b!2951397 () Bool)

(declare-fun c!483183 () Bool)

(assert (=> b!2951397 (= c!483183 call!195107)))

(assert (=> b!2951397 (= e!1858782 e!1858785)))

(assert (= (and d!841047 c!483180) b!2951391))

(assert (= (and d!841047 (not c!483180)) b!2951380))

(assert (= (and b!2951380 c!483174) b!2951395))

(assert (= (and b!2951380 (not c!483174)) b!2951389))

(assert (= (and b!2951389 c!483173) b!2951376))

(assert (= (and b!2951389 (not c!483173)) b!2951393))

(assert (= (and b!2951393 c!483178) b!2951377))

(assert (= (and b!2951393 (not c!483178)) b!2951385))

(assert (= (and b!2951377 (not res!1217744)) b!2951386))

(assert (= (and b!2951377 c!483182) b!2951379))

(assert (= (and b!2951377 (not c!483182)) b!2951375))

(assert (= (and b!2951385 c!483177) b!2951396))

(assert (= (and b!2951385 (not c!483177)) b!2951394))

(assert (= (and b!2951396 c!483179) b!2951382))

(assert (= (and b!2951396 (not c!483179)) b!2951392))

(assert (= (and b!2951392 c!483176) b!2951378))

(assert (= (and b!2951392 (not c!483176)) b!2951383))

(assert (= (and b!2951394 (not res!1217746)) b!2951374))

(assert (= (and b!2951394 c!483181) b!2951373))

(assert (= (and b!2951394 (not c!483181)) b!2951397))

(assert (= (and b!2951397 c!483183) b!2951387))

(assert (= (and b!2951397 (not c!483183)) b!2951381))

(assert (= (and b!2951381 c!483175) b!2951388))

(assert (= (and b!2951381 (not c!483175)) b!2951384))

(assert (= (or b!2951396 b!2951394) bm!195106))

(assert (= (or b!2951396 b!2951394) bm!195101))

(assert (= (or b!2951392 b!2951394) bm!195107))

(assert (= (or b!2951396 b!2951374) bm!195103))

(assert (= (or b!2951386 b!2951397) bm!195104))

(assert (= (or b!2951377 bm!195101) bm!195105))

(assert (= (or b!2951377 bm!195107) bm!195102))

(assert (= (and d!841047 res!1217745) b!2951390))

(declare-fun m!3329889 () Bool)

(assert (=> bm!195104 m!3329889))

(declare-fun m!3329891 () Bool)

(assert (=> d!841047 m!3329891))

(assert (=> d!841047 m!3329815))

(declare-fun m!3329893 () Bool)

(assert (=> b!2951381 m!3329893))

(declare-fun m!3329895 () Bool)

(assert (=> bm!195106 m!3329895))

(declare-fun m!3329897 () Bool)

(assert (=> bm!195102 m!3329897))

(declare-fun m!3329899 () Bool)

(assert (=> bm!195103 m!3329899))

(declare-fun m!3329901 () Bool)

(assert (=> bm!195105 m!3329901))

(declare-fun m!3329903 () Bool)

(assert (=> b!2951390 m!3329903))

(declare-fun m!3329905 () Bool)

(assert (=> b!2951390 m!3329905))

(assert (=> b!2951203 d!841047))

(declare-fun d!841049 () Bool)

(assert (=> d!841049 (= (isEmptyExpr!357 lt!1032092) (is-EmptyExpr!9154 lt!1032092))))

(assert (=> b!2951196 d!841049))

(declare-fun bs!525732 () Bool)

(declare-fun b!2951449 () Bool)

(assert (= bs!525732 (and b!2951449 b!2951199)))

(declare-fun lambda!109785 () Int)

(assert (=> bs!525732 (not (= lambda!109785 lambda!109765))))

(assert (=> bs!525732 (not (= lambda!109785 lambda!109766))))

(assert (=> b!2951449 true))

(assert (=> b!2951449 true))

(declare-fun bs!525733 () Bool)

(declare-fun b!2951446 () Bool)

(assert (= bs!525733 (and b!2951446 b!2951199)))

(declare-fun lambda!109786 () Int)

(assert (=> bs!525733 (not (= lambda!109786 lambda!109765))))

(assert (=> bs!525733 (= (and (= (regOne!18820 r!17423) lt!1032094) (= (regTwo!18820 r!17423) lt!1032092)) (= lambda!109786 lambda!109766))))

(declare-fun bs!525734 () Bool)

(assert (= bs!525734 (and b!2951446 b!2951449)))

(assert (=> bs!525734 (not (= lambda!109786 lambda!109785))))

(assert (=> b!2951446 true))

(assert (=> b!2951446 true))

(declare-fun b!2951441 () Bool)

(declare-fun e!1858815 () Bool)

(declare-fun e!1858819 () Bool)

(assert (=> b!2951441 (= e!1858815 e!1858819)))

(declare-fun res!1217768 () Bool)

(assert (=> b!2951441 (= res!1217768 (matchRSpec!1291 (regOne!18821 r!17423) s!11993))))

(assert (=> b!2951441 (=> res!1217768 e!1858819)))

(declare-fun b!2951442 () Bool)

(assert (=> b!2951442 (= e!1858819 (matchRSpec!1291 (regTwo!18821 r!17423) s!11993))))

(declare-fun bm!195118 () Bool)

(declare-fun c!483197 () Bool)

(declare-fun call!195123 () Bool)

(assert (=> bm!195118 (= call!195123 (Exists!1486 (ite c!483197 lambda!109785 lambda!109786)))))

(declare-fun b!2951443 () Bool)

(declare-fun c!483199 () Bool)

(assert (=> b!2951443 (= c!483199 (is-ElementMatch!9154 r!17423))))

(declare-fun e!1858820 () Bool)

(declare-fun e!1858821 () Bool)

(assert (=> b!2951443 (= e!1858820 e!1858821)))

(declare-fun b!2951444 () Bool)

(declare-fun e!1858817 () Bool)

(declare-fun call!195124 () Bool)

(assert (=> b!2951444 (= e!1858817 call!195124)))

(declare-fun b!2951445 () Bool)

(declare-fun c!483198 () Bool)

(assert (=> b!2951445 (= c!483198 (is-Union!9154 r!17423))))

(assert (=> b!2951445 (= e!1858821 e!1858815)))

(declare-fun d!841051 () Bool)

(declare-fun c!483196 () Bool)

(assert (=> d!841051 (= c!483196 (is-EmptyExpr!9154 r!17423))))

(assert (=> d!841051 (= (matchRSpec!1291 r!17423 s!11993) e!1858817)))

(declare-fun bm!195119 () Bool)

(assert (=> bm!195119 (= call!195124 (isEmpty!19159 s!11993))))

(declare-fun e!1858818 () Bool)

(assert (=> b!2951446 (= e!1858818 call!195123)))

(declare-fun b!2951447 () Bool)

(assert (=> b!2951447 (= e!1858817 e!1858820)))

(declare-fun res!1217767 () Bool)

(assert (=> b!2951447 (= res!1217767 (not (is-EmptyLang!9154 r!17423)))))

(assert (=> b!2951447 (=> (not res!1217767) (not e!1858820))))

(declare-fun b!2951448 () Bool)

(assert (=> b!2951448 (= e!1858815 e!1858818)))

(assert (=> b!2951448 (= c!483197 (is-Star!9154 r!17423))))

(declare-fun e!1858816 () Bool)

(assert (=> b!2951449 (= e!1858816 call!195123)))

(declare-fun b!2951450 () Bool)

(declare-fun res!1217766 () Bool)

(assert (=> b!2951450 (=> res!1217766 e!1858816)))

(assert (=> b!2951450 (= res!1217766 call!195124)))

(assert (=> b!2951450 (= e!1858818 e!1858816)))

(declare-fun b!2951451 () Bool)

(assert (=> b!2951451 (= e!1858821 (= s!11993 (Cons!34895 (c!483130 r!17423) Nil!34895)))))

(assert (= (and d!841051 c!483196) b!2951444))

(assert (= (and d!841051 (not c!483196)) b!2951447))

(assert (= (and b!2951447 res!1217767) b!2951443))

(assert (= (and b!2951443 c!483199) b!2951451))

(assert (= (and b!2951443 (not c!483199)) b!2951445))

(assert (= (and b!2951445 c!483198) b!2951441))

(assert (= (and b!2951445 (not c!483198)) b!2951448))

(assert (= (and b!2951441 (not res!1217768)) b!2951442))

(assert (= (and b!2951448 c!483197) b!2951450))

(assert (= (and b!2951448 (not c!483197)) b!2951446))

(assert (= (and b!2951450 (not res!1217766)) b!2951449))

(assert (= (or b!2951449 b!2951446) bm!195118))

(assert (= (or b!2951444 b!2951450) bm!195119))

(declare-fun m!3329913 () Bool)

(assert (=> b!2951441 m!3329913))

(declare-fun m!3329915 () Bool)

(assert (=> b!2951442 m!3329915))

(declare-fun m!3329917 () Bool)

(assert (=> bm!195118 m!3329917))

(assert (=> bm!195119 m!3329785))

(assert (=> b!2951201 d!841051))

(declare-fun b!2951484 () Bool)

(declare-fun e!1858841 () Bool)

(assert (=> b!2951484 (= e!1858841 (nullable!2910 r!17423))))

(declare-fun b!2951485 () Bool)

(declare-fun res!1217787 () Bool)

(declare-fun e!1858844 () Bool)

(assert (=> b!2951485 (=> (not res!1217787) (not e!1858844))))

(declare-fun tail!4797 (List!35019) List!35019)

(assert (=> b!2951485 (= res!1217787 (isEmpty!19159 (tail!4797 s!11993)))))

(declare-fun b!2951486 () Bool)

(declare-fun derivativeStep!2512 (Regex!9154 C!18494) Regex!9154)

(declare-fun head!6571 (List!35019) C!18494)

(assert (=> b!2951486 (= e!1858841 (matchR!4036 (derivativeStep!2512 r!17423 (head!6571 s!11993)) (tail!4797 s!11993)))))

(declare-fun b!2951487 () Bool)

(declare-fun res!1217790 () Bool)

(declare-fun e!1858842 () Bool)

(assert (=> b!2951487 (=> res!1217790 e!1858842)))

(assert (=> b!2951487 (= res!1217790 (not (isEmpty!19159 (tail!4797 s!11993))))))

(declare-fun b!2951488 () Bool)

(declare-fun e!1858840 () Bool)

(declare-fun lt!1032150 () Bool)

(declare-fun call!195127 () Bool)

(assert (=> b!2951488 (= e!1858840 (= lt!1032150 call!195127))))

(declare-fun b!2951489 () Bool)

(declare-fun e!1858838 () Bool)

(assert (=> b!2951489 (= e!1858838 e!1858842)))

(declare-fun res!1217786 () Bool)

(assert (=> b!2951489 (=> res!1217786 e!1858842)))

(assert (=> b!2951489 (= res!1217786 call!195127)))

(declare-fun b!2951490 () Bool)

(declare-fun e!1858839 () Bool)

(assert (=> b!2951490 (= e!1858839 e!1858838)))

(declare-fun res!1217792 () Bool)

(assert (=> b!2951490 (=> (not res!1217792) (not e!1858838))))

(assert (=> b!2951490 (= res!1217792 (not lt!1032150))))

(declare-fun b!2951492 () Bool)

(declare-fun res!1217785 () Bool)

(assert (=> b!2951492 (=> res!1217785 e!1858839)))

(assert (=> b!2951492 (= res!1217785 e!1858844)))

(declare-fun res!1217789 () Bool)

(assert (=> b!2951492 (=> (not res!1217789) (not e!1858844))))

(assert (=> b!2951492 (= res!1217789 lt!1032150)))

(declare-fun bm!195122 () Bool)

(assert (=> bm!195122 (= call!195127 (isEmpty!19159 s!11993))))

(declare-fun b!2951493 () Bool)

(declare-fun e!1858843 () Bool)

(assert (=> b!2951493 (= e!1858840 e!1858843)))

(declare-fun c!483210 () Bool)

(assert (=> b!2951493 (= c!483210 (is-EmptyLang!9154 r!17423))))

(declare-fun b!2951494 () Bool)

(assert (=> b!2951494 (= e!1858842 (not (= (head!6571 s!11993) (c!483130 r!17423))))))

(declare-fun b!2951495 () Bool)

(assert (=> b!2951495 (= e!1858843 (not lt!1032150))))

(declare-fun d!841055 () Bool)

(assert (=> d!841055 e!1858840))

(declare-fun c!483209 () Bool)

(assert (=> d!841055 (= c!483209 (is-EmptyExpr!9154 r!17423))))

(assert (=> d!841055 (= lt!1032150 e!1858841)))

(declare-fun c!483208 () Bool)

(assert (=> d!841055 (= c!483208 (isEmpty!19159 s!11993))))

(assert (=> d!841055 (validRegex!3887 r!17423)))

(assert (=> d!841055 (= (matchR!4036 r!17423 s!11993) lt!1032150)))

(declare-fun b!2951491 () Bool)

(assert (=> b!2951491 (= e!1858844 (= (head!6571 s!11993) (c!483130 r!17423)))))

(declare-fun b!2951496 () Bool)

(declare-fun res!1217791 () Bool)

(assert (=> b!2951496 (=> res!1217791 e!1858839)))

(assert (=> b!2951496 (= res!1217791 (not (is-ElementMatch!9154 r!17423)))))

(assert (=> b!2951496 (= e!1858843 e!1858839)))

(declare-fun b!2951497 () Bool)

(declare-fun res!1217788 () Bool)

(assert (=> b!2951497 (=> (not res!1217788) (not e!1858844))))

(assert (=> b!2951497 (= res!1217788 (not call!195127))))

(assert (= (and d!841055 c!483208) b!2951484))

(assert (= (and d!841055 (not c!483208)) b!2951486))

(assert (= (and d!841055 c!483209) b!2951488))

(assert (= (and d!841055 (not c!483209)) b!2951493))

(assert (= (and b!2951493 c!483210) b!2951495))

(assert (= (and b!2951493 (not c!483210)) b!2951496))

(assert (= (and b!2951496 (not res!1217791)) b!2951492))

(assert (= (and b!2951492 res!1217789) b!2951497))

(assert (= (and b!2951497 res!1217788) b!2951485))

(assert (= (and b!2951485 res!1217787) b!2951491))

(assert (= (and b!2951492 (not res!1217785)) b!2951490))

(assert (= (and b!2951490 res!1217792) b!2951489))

(assert (= (and b!2951489 (not res!1217786)) b!2951487))

(assert (= (and b!2951487 (not res!1217790)) b!2951494))

(assert (= (or b!2951488 b!2951489 b!2951497) bm!195122))

(declare-fun m!3329919 () Bool)

(assert (=> b!2951487 m!3329919))

(assert (=> b!2951487 m!3329919))

(declare-fun m!3329921 () Bool)

(assert (=> b!2951487 m!3329921))

(declare-fun m!3329923 () Bool)

(assert (=> b!2951494 m!3329923))

(assert (=> b!2951491 m!3329923))

(assert (=> b!2951486 m!3329923))

(assert (=> b!2951486 m!3329923))

(declare-fun m!3329925 () Bool)

(assert (=> b!2951486 m!3329925))

(assert (=> b!2951486 m!3329919))

(assert (=> b!2951486 m!3329925))

(assert (=> b!2951486 m!3329919))

(declare-fun m!3329927 () Bool)

(assert (=> b!2951486 m!3329927))

(assert (=> d!841055 m!3329785))

(assert (=> d!841055 m!3329807))

(declare-fun m!3329929 () Bool)

(assert (=> b!2951484 m!3329929))

(assert (=> b!2951485 m!3329919))

(assert (=> b!2951485 m!3329919))

(assert (=> b!2951485 m!3329921))

(assert (=> bm!195122 m!3329785))

(assert (=> b!2951201 d!841055))

(declare-fun d!841057 () Bool)

(assert (=> d!841057 (= (matchR!4036 r!17423 s!11993) (matchRSpec!1291 r!17423 s!11993))))

(declare-fun lt!1032153 () Unit!48687)

(declare-fun choose!17433 (Regex!9154 List!35019) Unit!48687)

(assert (=> d!841057 (= lt!1032153 (choose!17433 r!17423 s!11993))))

(assert (=> d!841057 (validRegex!3887 r!17423)))

(assert (=> d!841057 (= (mainMatchTheorem!1291 r!17423 s!11993) lt!1032153)))

(declare-fun bs!525735 () Bool)

(assert (= bs!525735 d!841057))

(assert (=> bs!525735 m!3329793))

(assert (=> bs!525735 m!3329791))

(declare-fun m!3329931 () Bool)

(assert (=> bs!525735 m!3329931))

(assert (=> bs!525735 m!3329807))

(assert (=> b!2951201 d!841057))

(declare-fun b!2951540 () Bool)

(declare-fun e!1858872 () Bool)

(declare-fun call!195138 () Bool)

(assert (=> b!2951540 (= e!1858872 call!195138)))

(declare-fun bm!195131 () Bool)

(declare-fun call!195136 () Bool)

(assert (=> bm!195131 (= call!195136 call!195138)))

(declare-fun b!2951541 () Bool)

(declare-fun res!1217821 () Bool)

(declare-fun e!1858873 () Bool)

(assert (=> b!2951541 (=> (not res!1217821) (not e!1858873))))

(declare-fun call!195137 () Bool)

(assert (=> b!2951541 (= res!1217821 call!195137)))

(declare-fun e!1858871 () Bool)

(assert (=> b!2951541 (= e!1858871 e!1858873)))

(declare-fun b!2951542 () Bool)

(declare-fun e!1858875 () Bool)

(assert (=> b!2951542 (= e!1858875 e!1858872)))

(declare-fun res!1217820 () Bool)

(assert (=> b!2951542 (= res!1217820 (not (nullable!2910 (reg!9483 r!17423))))))

(assert (=> b!2951542 (=> (not res!1217820) (not e!1858872))))

(declare-fun bm!195132 () Bool)

(declare-fun c!483220 () Bool)

(assert (=> bm!195132 (= call!195137 (validRegex!3887 (ite c!483220 (regOne!18821 r!17423) (regTwo!18820 r!17423))))))

(declare-fun b!2951543 () Bool)

(declare-fun e!1858877 () Bool)

(declare-fun e!1858876 () Bool)

(assert (=> b!2951543 (= e!1858877 e!1858876)))

(declare-fun res!1217819 () Bool)

(assert (=> b!2951543 (=> (not res!1217819) (not e!1858876))))

(assert (=> b!2951543 (= res!1217819 call!195136)))

(declare-fun d!841059 () Bool)

(declare-fun res!1217823 () Bool)

(declare-fun e!1858874 () Bool)

(assert (=> d!841059 (=> res!1217823 e!1858874)))

(assert (=> d!841059 (= res!1217823 (is-ElementMatch!9154 r!17423))))

(assert (=> d!841059 (= (validRegex!3887 r!17423) e!1858874)))

(declare-fun b!2951544 () Bool)

(assert (=> b!2951544 (= e!1858876 call!195137)))

(declare-fun b!2951545 () Bool)

(assert (=> b!2951545 (= e!1858874 e!1858875)))

(declare-fun c!483219 () Bool)

(assert (=> b!2951545 (= c!483219 (is-Star!9154 r!17423))))

(declare-fun b!2951546 () Bool)

(declare-fun res!1217822 () Bool)

(assert (=> b!2951546 (=> res!1217822 e!1858877)))

(assert (=> b!2951546 (= res!1217822 (not (is-Concat!14475 r!17423)))))

(assert (=> b!2951546 (= e!1858871 e!1858877)))

(declare-fun bm!195133 () Bool)

(assert (=> bm!195133 (= call!195138 (validRegex!3887 (ite c!483219 (reg!9483 r!17423) (ite c!483220 (regTwo!18821 r!17423) (regOne!18820 r!17423)))))))

(declare-fun b!2951547 () Bool)

(assert (=> b!2951547 (= e!1858873 call!195136)))

(declare-fun b!2951548 () Bool)

(assert (=> b!2951548 (= e!1858875 e!1858871)))

(assert (=> b!2951548 (= c!483220 (is-Union!9154 r!17423))))

(assert (= (and d!841059 (not res!1217823)) b!2951545))

(assert (= (and b!2951545 c!483219) b!2951542))

(assert (= (and b!2951545 (not c!483219)) b!2951548))

(assert (= (and b!2951542 res!1217820) b!2951540))

(assert (= (and b!2951548 c!483220) b!2951541))

(assert (= (and b!2951548 (not c!483220)) b!2951546))

(assert (= (and b!2951541 res!1217821) b!2951547))

(assert (= (and b!2951546 (not res!1217822)) b!2951543))

(assert (= (and b!2951543 res!1217819) b!2951544))

(assert (= (or b!2951541 b!2951544) bm!195132))

(assert (= (or b!2951547 b!2951543) bm!195131))

(assert (= (or b!2951540 bm!195131) bm!195133))

(declare-fun m!3329933 () Bool)

(assert (=> b!2951542 m!3329933))

(declare-fun m!3329935 () Bool)

(assert (=> bm!195132 m!3329935))

(declare-fun m!3329937 () Bool)

(assert (=> bm!195133 m!3329937))

(assert (=> start!286218 d!841059))

(declare-fun b!2951549 () Bool)

(declare-fun e!1858881 () Bool)

(assert (=> b!2951549 (= e!1858881 (nullable!2910 lt!1032096))))

(declare-fun b!2951550 () Bool)

(declare-fun res!1217826 () Bool)

(declare-fun e!1858884 () Bool)

(assert (=> b!2951550 (=> (not res!1217826) (not e!1858884))))

(assert (=> b!2951550 (= res!1217826 (isEmpty!19159 (tail!4797 s!11993)))))

(declare-fun b!2951551 () Bool)

(assert (=> b!2951551 (= e!1858881 (matchR!4036 (derivativeStep!2512 lt!1032096 (head!6571 s!11993)) (tail!4797 s!11993)))))

(declare-fun b!2951552 () Bool)

(declare-fun res!1217829 () Bool)

(declare-fun e!1858882 () Bool)

(assert (=> b!2951552 (=> res!1217829 e!1858882)))

(assert (=> b!2951552 (= res!1217829 (not (isEmpty!19159 (tail!4797 s!11993))))))

(declare-fun b!2951553 () Bool)

(declare-fun e!1858880 () Bool)

(declare-fun lt!1032154 () Bool)

(declare-fun call!195139 () Bool)

(assert (=> b!2951553 (= e!1858880 (= lt!1032154 call!195139))))

(declare-fun b!2951554 () Bool)

(declare-fun e!1858878 () Bool)

(assert (=> b!2951554 (= e!1858878 e!1858882)))

(declare-fun res!1217825 () Bool)

(assert (=> b!2951554 (=> res!1217825 e!1858882)))

(assert (=> b!2951554 (= res!1217825 call!195139)))

(declare-fun b!2951555 () Bool)

(declare-fun e!1858879 () Bool)

(assert (=> b!2951555 (= e!1858879 e!1858878)))

(declare-fun res!1217831 () Bool)

(assert (=> b!2951555 (=> (not res!1217831) (not e!1858878))))

(assert (=> b!2951555 (= res!1217831 (not lt!1032154))))

(declare-fun b!2951557 () Bool)

(declare-fun res!1217824 () Bool)

(assert (=> b!2951557 (=> res!1217824 e!1858879)))

(assert (=> b!2951557 (= res!1217824 e!1858884)))

(declare-fun res!1217828 () Bool)

(assert (=> b!2951557 (=> (not res!1217828) (not e!1858884))))

(assert (=> b!2951557 (= res!1217828 lt!1032154)))

(declare-fun bm!195134 () Bool)

(assert (=> bm!195134 (= call!195139 (isEmpty!19159 s!11993))))

(declare-fun b!2951558 () Bool)

(declare-fun e!1858883 () Bool)

(assert (=> b!2951558 (= e!1858880 e!1858883)))

(declare-fun c!483223 () Bool)

(assert (=> b!2951558 (= c!483223 (is-EmptyLang!9154 lt!1032096))))

(declare-fun b!2951559 () Bool)

(assert (=> b!2951559 (= e!1858882 (not (= (head!6571 s!11993) (c!483130 lt!1032096))))))

(declare-fun b!2951560 () Bool)

(assert (=> b!2951560 (= e!1858883 (not lt!1032154))))

(declare-fun d!841061 () Bool)

(assert (=> d!841061 e!1858880))

(declare-fun c!483222 () Bool)

(assert (=> d!841061 (= c!483222 (is-EmptyExpr!9154 lt!1032096))))

(assert (=> d!841061 (= lt!1032154 e!1858881)))

(declare-fun c!483221 () Bool)

(assert (=> d!841061 (= c!483221 (isEmpty!19159 s!11993))))

(assert (=> d!841061 (validRegex!3887 lt!1032096)))

(assert (=> d!841061 (= (matchR!4036 lt!1032096 s!11993) lt!1032154)))

(declare-fun b!2951556 () Bool)

(assert (=> b!2951556 (= e!1858884 (= (head!6571 s!11993) (c!483130 lt!1032096)))))

(declare-fun b!2951561 () Bool)

(declare-fun res!1217830 () Bool)

(assert (=> b!2951561 (=> res!1217830 e!1858879)))

(assert (=> b!2951561 (= res!1217830 (not (is-ElementMatch!9154 lt!1032096)))))

(assert (=> b!2951561 (= e!1858883 e!1858879)))

(declare-fun b!2951562 () Bool)

(declare-fun res!1217827 () Bool)

(assert (=> b!2951562 (=> (not res!1217827) (not e!1858884))))

(assert (=> b!2951562 (= res!1217827 (not call!195139))))

(assert (= (and d!841061 c!483221) b!2951549))

(assert (= (and d!841061 (not c!483221)) b!2951551))

(assert (= (and d!841061 c!483222) b!2951553))

(assert (= (and d!841061 (not c!483222)) b!2951558))

(assert (= (and b!2951558 c!483223) b!2951560))

(assert (= (and b!2951558 (not c!483223)) b!2951561))

(assert (= (and b!2951561 (not res!1217830)) b!2951557))

(assert (= (and b!2951557 res!1217828) b!2951562))

(assert (= (and b!2951562 res!1217827) b!2951550))

(assert (= (and b!2951550 res!1217826) b!2951556))

(assert (= (and b!2951557 (not res!1217824)) b!2951555))

(assert (= (and b!2951555 res!1217831) b!2951554))

(assert (= (and b!2951554 (not res!1217825)) b!2951552))

(assert (= (and b!2951552 (not res!1217829)) b!2951559))

(assert (= (or b!2951553 b!2951554 b!2951562) bm!195134))

(assert (=> b!2951552 m!3329919))

(assert (=> b!2951552 m!3329919))

(assert (=> b!2951552 m!3329921))

(assert (=> b!2951559 m!3329923))

(assert (=> b!2951556 m!3329923))

(assert (=> b!2951551 m!3329923))

(assert (=> b!2951551 m!3329923))

(declare-fun m!3329939 () Bool)

(assert (=> b!2951551 m!3329939))

(assert (=> b!2951551 m!3329919))

(assert (=> b!2951551 m!3329939))

(assert (=> b!2951551 m!3329919))

(declare-fun m!3329941 () Bool)

(assert (=> b!2951551 m!3329941))

(assert (=> d!841061 m!3329785))

(declare-fun m!3329943 () Bool)

(assert (=> d!841061 m!3329943))

(declare-fun m!3329945 () Bool)

(assert (=> b!2951549 m!3329945))

(assert (=> b!2951550 m!3329919))

(assert (=> b!2951550 m!3329919))

(assert (=> b!2951550 m!3329921))

(assert (=> bm!195134 m!3329785))

(assert (=> b!2951202 d!841061))

(declare-fun d!841063 () Bool)

(assert (=> d!841063 (= (isEmpty!19159 s!11993) (is-Nil!34895 s!11993))))

(assert (=> b!2951205 d!841063))

(declare-fun d!841065 () Bool)

(assert (=> d!841065 (= (isEmptyLang!276 lt!1032092) (is-EmptyLang!9154 lt!1032092))))

(assert (=> b!2951195 d!841065))

(declare-fun d!841067 () Bool)

(declare-fun choose!17434 (Int) Bool)

(assert (=> d!841067 (= (Exists!1486 lambda!109766) (choose!17434 lambda!109766))))

(declare-fun bs!525736 () Bool)

(assert (= bs!525736 d!841067))

(declare-fun m!3329947 () Bool)

(assert (=> bs!525736 m!3329947))

(assert (=> b!2951199 d!841067))

(declare-fun d!841069 () Bool)

(declare-fun isEmpty!19161 (Option!6645) Bool)

(assert (=> d!841069 (= (isDefined!5196 (findConcatSeparation!1039 lt!1032094 lt!1032092 Nil!34895 s!11993 s!11993)) (not (isEmpty!19161 (findConcatSeparation!1039 lt!1032094 lt!1032092 Nil!34895 s!11993 s!11993))))))

(declare-fun bs!525737 () Bool)

(assert (= bs!525737 d!841069))

(assert (=> bs!525737 m!3329809))

(declare-fun m!3329949 () Bool)

(assert (=> bs!525737 m!3329949))

(assert (=> b!2951199 d!841069))

(declare-fun b!2951595 () Bool)

(declare-fun e!1858902 () Bool)

(declare-fun lt!1032165 () Option!6645)

(assert (=> b!2951595 (= e!1858902 (not (isDefined!5196 lt!1032165)))))

(declare-fun b!2951597 () Bool)

(declare-fun e!1858906 () Bool)

(assert (=> b!2951597 (= e!1858906 (matchR!4036 lt!1032092 s!11993))))

(declare-fun b!2951598 () Bool)

(declare-fun e!1858904 () Option!6645)

(assert (=> b!2951598 (= e!1858904 (Some!6644 (tuple2!33827 Nil!34895 s!11993)))))

(declare-fun b!2951599 () Bool)

(declare-fun res!1217854 () Bool)

(declare-fun e!1858903 () Bool)

(assert (=> b!2951599 (=> (not res!1217854) (not e!1858903))))

(declare-fun get!10699 (Option!6645) tuple2!33826)

(assert (=> b!2951599 (= res!1217854 (matchR!4036 lt!1032092 (_2!20045 (get!10699 lt!1032165))))))

(declare-fun b!2951600 () Bool)

(declare-fun ++!8321 (List!35019 List!35019) List!35019)

(assert (=> b!2951600 (= e!1858903 (= (++!8321 (_1!20045 (get!10699 lt!1032165)) (_2!20045 (get!10699 lt!1032165))) s!11993))))

(declare-fun b!2951601 () Bool)

(declare-fun res!1217853 () Bool)

(assert (=> b!2951601 (=> (not res!1217853) (not e!1858903))))

(assert (=> b!2951601 (= res!1217853 (matchR!4036 lt!1032094 (_1!20045 (get!10699 lt!1032165))))))

(declare-fun b!2951596 () Bool)

(declare-fun lt!1032166 () Unit!48687)

(declare-fun lt!1032167 () Unit!48687)

(assert (=> b!2951596 (= lt!1032166 lt!1032167)))

(assert (=> b!2951596 (= (++!8321 (++!8321 Nil!34895 (Cons!34895 (h!40315 s!11993) Nil!34895)) (t!234084 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!944 (List!35019 C!18494 List!35019 List!35019) Unit!48687)

(assert (=> b!2951596 (= lt!1032167 (lemmaMoveElementToOtherListKeepsConcatEq!944 Nil!34895 (h!40315 s!11993) (t!234084 s!11993) s!11993))))

(declare-fun e!1858905 () Option!6645)

(assert (=> b!2951596 (= e!1858905 (findConcatSeparation!1039 lt!1032094 lt!1032092 (++!8321 Nil!34895 (Cons!34895 (h!40315 s!11993) Nil!34895)) (t!234084 s!11993) s!11993))))

(declare-fun d!841071 () Bool)

(assert (=> d!841071 e!1858902))

(declare-fun res!1217852 () Bool)

(assert (=> d!841071 (=> res!1217852 e!1858902)))

(assert (=> d!841071 (= res!1217852 e!1858903)))

(declare-fun res!1217850 () Bool)

(assert (=> d!841071 (=> (not res!1217850) (not e!1858903))))

(assert (=> d!841071 (= res!1217850 (isDefined!5196 lt!1032165))))

(assert (=> d!841071 (= lt!1032165 e!1858904)))

(declare-fun c!483231 () Bool)

(assert (=> d!841071 (= c!483231 e!1858906)))

(declare-fun res!1217851 () Bool)

(assert (=> d!841071 (=> (not res!1217851) (not e!1858906))))

(assert (=> d!841071 (= res!1217851 (matchR!4036 lt!1032094 Nil!34895))))

(assert (=> d!841071 (validRegex!3887 lt!1032094)))

(assert (=> d!841071 (= (findConcatSeparation!1039 lt!1032094 lt!1032092 Nil!34895 s!11993 s!11993) lt!1032165)))

(declare-fun b!2951602 () Bool)

(assert (=> b!2951602 (= e!1858904 e!1858905)))

(declare-fun c!483232 () Bool)

(assert (=> b!2951602 (= c!483232 (is-Nil!34895 s!11993))))

(declare-fun b!2951603 () Bool)

(assert (=> b!2951603 (= e!1858905 None!6644)))

(assert (= (and d!841071 res!1217851) b!2951597))

(assert (= (and d!841071 c!483231) b!2951598))

(assert (= (and d!841071 (not c!483231)) b!2951602))

(assert (= (and b!2951602 c!483232) b!2951603))

(assert (= (and b!2951602 (not c!483232)) b!2951596))

(assert (= (and d!841071 res!1217850) b!2951601))

(assert (= (and b!2951601 res!1217853) b!2951599))

(assert (= (and b!2951599 res!1217854) b!2951600))

(assert (= (and d!841071 (not res!1217852)) b!2951595))

(declare-fun m!3329967 () Bool)

(assert (=> b!2951596 m!3329967))

(assert (=> b!2951596 m!3329967))

(declare-fun m!3329969 () Bool)

(assert (=> b!2951596 m!3329969))

(declare-fun m!3329971 () Bool)

(assert (=> b!2951596 m!3329971))

(assert (=> b!2951596 m!3329967))

(declare-fun m!3329973 () Bool)

(assert (=> b!2951596 m!3329973))

(declare-fun m!3329975 () Bool)

(assert (=> b!2951597 m!3329975))

(declare-fun m!3329977 () Bool)

(assert (=> d!841071 m!3329977))

(declare-fun m!3329979 () Bool)

(assert (=> d!841071 m!3329979))

(declare-fun m!3329981 () Bool)

(assert (=> d!841071 m!3329981))

(declare-fun m!3329983 () Bool)

(assert (=> b!2951601 m!3329983))

(declare-fun m!3329985 () Bool)

(assert (=> b!2951601 m!3329985))

(assert (=> b!2951600 m!3329983))

(declare-fun m!3329987 () Bool)

(assert (=> b!2951600 m!3329987))

(assert (=> b!2951595 m!3329977))

(assert (=> b!2951599 m!3329983))

(declare-fun m!3329989 () Bool)

(assert (=> b!2951599 m!3329989))

(assert (=> b!2951199 d!841071))

(declare-fun bs!525740 () Bool)

(declare-fun d!841079 () Bool)

(assert (= bs!525740 (and d!841079 b!2951199)))

(declare-fun lambda!109790 () Int)

(assert (=> bs!525740 (= lambda!109790 lambda!109765)))

(assert (=> bs!525740 (not (= lambda!109790 lambda!109766))))

(declare-fun bs!525741 () Bool)

(assert (= bs!525741 (and d!841079 b!2951449)))

(assert (=> bs!525741 (not (= lambda!109790 lambda!109785))))

(declare-fun bs!525742 () Bool)

(assert (= bs!525742 (and d!841079 b!2951446)))

(assert (=> bs!525742 (not (= lambda!109790 lambda!109786))))

(assert (=> d!841079 true))

(assert (=> d!841079 true))

(assert (=> d!841079 true))

(assert (=> d!841079 (= (isDefined!5196 (findConcatSeparation!1039 lt!1032094 lt!1032092 Nil!34895 s!11993 s!11993)) (Exists!1486 lambda!109790))))

(declare-fun lt!1032172 () Unit!48687)

(declare-fun choose!17435 (Regex!9154 Regex!9154 List!35019) Unit!48687)

(assert (=> d!841079 (= lt!1032172 (choose!17435 lt!1032094 lt!1032092 s!11993))))

(assert (=> d!841079 (validRegex!3887 lt!1032094)))

(assert (=> d!841079 (= (lemmaFindConcatSeparationEquivalentToExists!817 lt!1032094 lt!1032092 s!11993) lt!1032172)))

(declare-fun bs!525743 () Bool)

(assert (= bs!525743 d!841079))

(assert (=> bs!525743 m!3329981))

(declare-fun m!3329991 () Bool)

(assert (=> bs!525743 m!3329991))

(assert (=> bs!525743 m!3329809))

(assert (=> bs!525743 m!3329809))

(assert (=> bs!525743 m!3329811))

(declare-fun m!3329993 () Bool)

(assert (=> bs!525743 m!3329993))

(assert (=> b!2951199 d!841079))

(declare-fun b!2951612 () Bool)

(declare-fun e!1858912 () Bool)

(declare-fun call!195143 () Bool)

(assert (=> b!2951612 (= e!1858912 call!195143)))

(declare-fun bm!195136 () Bool)

(declare-fun call!195141 () Bool)

(assert (=> bm!195136 (= call!195141 call!195143)))

(declare-fun b!2951613 () Bool)

(declare-fun res!1217865 () Bool)

(declare-fun e!1858913 () Bool)

(assert (=> b!2951613 (=> (not res!1217865) (not e!1858913))))

(declare-fun call!195142 () Bool)

(assert (=> b!2951613 (= res!1217865 call!195142)))

(declare-fun e!1858911 () Bool)

(assert (=> b!2951613 (= e!1858911 e!1858913)))

(declare-fun b!2951614 () Bool)

(declare-fun e!1858915 () Bool)

(assert (=> b!2951614 (= e!1858915 e!1858912)))

(declare-fun res!1217864 () Bool)

(assert (=> b!2951614 (= res!1217864 (not (nullable!2910 (reg!9483 (regOne!18820 r!17423)))))))

(assert (=> b!2951614 (=> (not res!1217864) (not e!1858912))))

(declare-fun bm!195137 () Bool)

(declare-fun c!483234 () Bool)

(assert (=> bm!195137 (= call!195142 (validRegex!3887 (ite c!483234 (regOne!18821 (regOne!18820 r!17423)) (regTwo!18820 (regOne!18820 r!17423)))))))

(declare-fun b!2951615 () Bool)

(declare-fun e!1858917 () Bool)

(declare-fun e!1858916 () Bool)

(assert (=> b!2951615 (= e!1858917 e!1858916)))

(declare-fun res!1217863 () Bool)

(assert (=> b!2951615 (=> (not res!1217863) (not e!1858916))))

(assert (=> b!2951615 (= res!1217863 call!195141)))

(declare-fun d!841081 () Bool)

(declare-fun res!1217867 () Bool)

(declare-fun e!1858914 () Bool)

(assert (=> d!841081 (=> res!1217867 e!1858914)))

(assert (=> d!841081 (= res!1217867 (is-ElementMatch!9154 (regOne!18820 r!17423)))))

(assert (=> d!841081 (= (validRegex!3887 (regOne!18820 r!17423)) e!1858914)))

(declare-fun b!2951616 () Bool)

(assert (=> b!2951616 (= e!1858916 call!195142)))

(declare-fun b!2951617 () Bool)

(assert (=> b!2951617 (= e!1858914 e!1858915)))

(declare-fun c!483233 () Bool)

(assert (=> b!2951617 (= c!483233 (is-Star!9154 (regOne!18820 r!17423)))))

(declare-fun b!2951618 () Bool)

(declare-fun res!1217866 () Bool)

(assert (=> b!2951618 (=> res!1217866 e!1858917)))

(assert (=> b!2951618 (= res!1217866 (not (is-Concat!14475 (regOne!18820 r!17423))))))

(assert (=> b!2951618 (= e!1858911 e!1858917)))

(declare-fun bm!195138 () Bool)

(assert (=> bm!195138 (= call!195143 (validRegex!3887 (ite c!483233 (reg!9483 (regOne!18820 r!17423)) (ite c!483234 (regTwo!18821 (regOne!18820 r!17423)) (regOne!18820 (regOne!18820 r!17423))))))))

(declare-fun b!2951619 () Bool)

(assert (=> b!2951619 (= e!1858913 call!195141)))

(declare-fun b!2951620 () Bool)

(assert (=> b!2951620 (= e!1858915 e!1858911)))

(assert (=> b!2951620 (= c!483234 (is-Union!9154 (regOne!18820 r!17423)))))

(assert (= (and d!841081 (not res!1217867)) b!2951617))

(assert (= (and b!2951617 c!483233) b!2951614))

(assert (= (and b!2951617 (not c!483233)) b!2951620))

(assert (= (and b!2951614 res!1217864) b!2951612))

(assert (= (and b!2951620 c!483234) b!2951613))

(assert (= (and b!2951620 (not c!483234)) b!2951618))

(assert (= (and b!2951613 res!1217865) b!2951619))

(assert (= (and b!2951618 (not res!1217866)) b!2951615))

(assert (= (and b!2951615 res!1217863) b!2951616))

(assert (= (or b!2951613 b!2951616) bm!195137))

(assert (= (or b!2951619 b!2951615) bm!195136))

(assert (= (or b!2951612 bm!195136) bm!195138))

(declare-fun m!3329995 () Bool)

(assert (=> b!2951614 m!3329995))

(declare-fun m!3329997 () Bool)

(assert (=> bm!195137 m!3329997))

(declare-fun m!3329999 () Bool)

(assert (=> bm!195138 m!3329999))

(assert (=> b!2951199 d!841081))

(declare-fun bs!525747 () Bool)

(declare-fun d!841083 () Bool)

(assert (= bs!525747 (and d!841083 b!2951199)))

(declare-fun lambda!109800 () Int)

(assert (=> bs!525747 (not (= lambda!109800 lambda!109766))))

(declare-fun bs!525748 () Bool)

(assert (= bs!525748 (and d!841083 b!2951446)))

(assert (=> bs!525748 (not (= lambda!109800 lambda!109786))))

(declare-fun bs!525749 () Bool)

(assert (= bs!525749 (and d!841083 b!2951449)))

(assert (=> bs!525749 (not (= lambda!109800 lambda!109785))))

(assert (=> bs!525747 (= lambda!109800 lambda!109765)))

(declare-fun bs!525750 () Bool)

(assert (= bs!525750 (and d!841083 d!841079)))

(assert (=> bs!525750 (= lambda!109800 lambda!109790)))

(assert (=> d!841083 true))

(assert (=> d!841083 true))

(assert (=> d!841083 true))

(declare-fun lambda!109801 () Int)

(assert (=> bs!525747 (= lambda!109801 lambda!109766)))

(declare-fun bs!525752 () Bool)

(assert (= bs!525752 d!841083))

(assert (=> bs!525752 (not (= lambda!109801 lambda!109800))))

(assert (=> bs!525748 (= (and (= lt!1032094 (regOne!18820 r!17423)) (= lt!1032092 (regTwo!18820 r!17423))) (= lambda!109801 lambda!109786))))

(assert (=> bs!525749 (not (= lambda!109801 lambda!109785))))

(assert (=> bs!525747 (not (= lambda!109801 lambda!109765))))

(assert (=> bs!525750 (not (= lambda!109801 lambda!109790))))

(assert (=> d!841083 true))

(assert (=> d!841083 true))

(assert (=> d!841083 true))

(assert (=> d!841083 (= (Exists!1486 lambda!109800) (Exists!1486 lambda!109801))))

(declare-fun lt!1032176 () Unit!48687)

(declare-fun choose!17438 (Regex!9154 Regex!9154 List!35019) Unit!48687)

(assert (=> d!841083 (= lt!1032176 (choose!17438 lt!1032094 lt!1032092 s!11993))))

(assert (=> d!841083 (validRegex!3887 lt!1032094)))

(assert (=> d!841083 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!507 lt!1032094 lt!1032092 s!11993) lt!1032176)))

(declare-fun m!3330001 () Bool)

(assert (=> bs!525752 m!3330001))

(declare-fun m!3330003 () Bool)

(assert (=> bs!525752 m!3330003))

(declare-fun m!3330007 () Bool)

(assert (=> bs!525752 m!3330007))

(assert (=> bs!525752 m!3329981))

(assert (=> b!2951199 d!841083))

(declare-fun bs!525753 () Bool)

(declare-fun b!2951641 () Bool)

(assert (= bs!525753 (and b!2951641 d!841083)))

(declare-fun lambda!109802 () Int)

(assert (=> bs!525753 (not (= lambda!109802 lambda!109801))))

(declare-fun bs!525754 () Bool)

(assert (= bs!525754 (and b!2951641 b!2951199)))

(assert (=> bs!525754 (not (= lambda!109802 lambda!109766))))

(assert (=> bs!525753 (not (= lambda!109802 lambda!109800))))

(declare-fun bs!525755 () Bool)

(assert (= bs!525755 (and b!2951641 b!2951446)))

(assert (=> bs!525755 (not (= lambda!109802 lambda!109786))))

(declare-fun bs!525756 () Bool)

(assert (= bs!525756 (and b!2951641 b!2951449)))

(assert (=> bs!525756 (= (and (= (reg!9483 lt!1032096) (reg!9483 r!17423)) (= lt!1032096 r!17423)) (= lambda!109802 lambda!109785))))

(assert (=> bs!525754 (not (= lambda!109802 lambda!109765))))

(declare-fun bs!525757 () Bool)

(assert (= bs!525757 (and b!2951641 d!841079)))

(assert (=> bs!525757 (not (= lambda!109802 lambda!109790))))

(assert (=> b!2951641 true))

(assert (=> b!2951641 true))

(declare-fun bs!525758 () Bool)

(declare-fun b!2951638 () Bool)

(assert (= bs!525758 (and b!2951638 d!841083)))

(declare-fun lambda!109803 () Int)

(assert (=> bs!525758 (= (and (= (regOne!18820 lt!1032096) lt!1032094) (= (regTwo!18820 lt!1032096) lt!1032092)) (= lambda!109803 lambda!109801))))

(declare-fun bs!525759 () Bool)

(assert (= bs!525759 (and b!2951638 b!2951641)))

(assert (=> bs!525759 (not (= lambda!109803 lambda!109802))))

(declare-fun bs!525760 () Bool)

(assert (= bs!525760 (and b!2951638 b!2951199)))

(assert (=> bs!525760 (= (and (= (regOne!18820 lt!1032096) lt!1032094) (= (regTwo!18820 lt!1032096) lt!1032092)) (= lambda!109803 lambda!109766))))

(assert (=> bs!525758 (not (= lambda!109803 lambda!109800))))

(declare-fun bs!525761 () Bool)

(assert (= bs!525761 (and b!2951638 b!2951446)))

(assert (=> bs!525761 (= (and (= (regOne!18820 lt!1032096) (regOne!18820 r!17423)) (= (regTwo!18820 lt!1032096) (regTwo!18820 r!17423))) (= lambda!109803 lambda!109786))))

(declare-fun bs!525762 () Bool)

(assert (= bs!525762 (and b!2951638 b!2951449)))

(assert (=> bs!525762 (not (= lambda!109803 lambda!109785))))

(assert (=> bs!525760 (not (= lambda!109803 lambda!109765))))

(declare-fun bs!525763 () Bool)

(assert (= bs!525763 (and b!2951638 d!841079)))

(assert (=> bs!525763 (not (= lambda!109803 lambda!109790))))

(assert (=> b!2951638 true))

(assert (=> b!2951638 true))

(declare-fun b!2951633 () Bool)

(declare-fun e!1858924 () Bool)

(declare-fun e!1858928 () Bool)

(assert (=> b!2951633 (= e!1858924 e!1858928)))

(declare-fun res!1217882 () Bool)

(assert (=> b!2951633 (= res!1217882 (matchRSpec!1291 (regOne!18821 lt!1032096) s!11993))))

(assert (=> b!2951633 (=> res!1217882 e!1858928)))

(declare-fun b!2951634 () Bool)

(assert (=> b!2951634 (= e!1858928 (matchRSpec!1291 (regTwo!18821 lt!1032096) s!11993))))

(declare-fun c!483236 () Bool)

(declare-fun bm!195139 () Bool)

(declare-fun call!195144 () Bool)

(assert (=> bm!195139 (= call!195144 (Exists!1486 (ite c!483236 lambda!109802 lambda!109803)))))

(declare-fun b!2951635 () Bool)

(declare-fun c!483238 () Bool)

(assert (=> b!2951635 (= c!483238 (is-ElementMatch!9154 lt!1032096))))

(declare-fun e!1858929 () Bool)

(declare-fun e!1858930 () Bool)

(assert (=> b!2951635 (= e!1858929 e!1858930)))

(declare-fun b!2951636 () Bool)

(declare-fun e!1858926 () Bool)

(declare-fun call!195145 () Bool)

(assert (=> b!2951636 (= e!1858926 call!195145)))

(declare-fun b!2951637 () Bool)

(declare-fun c!483237 () Bool)

(assert (=> b!2951637 (= c!483237 (is-Union!9154 lt!1032096))))

(assert (=> b!2951637 (= e!1858930 e!1858924)))

(declare-fun d!841085 () Bool)

(declare-fun c!483235 () Bool)

(assert (=> d!841085 (= c!483235 (is-EmptyExpr!9154 lt!1032096))))

(assert (=> d!841085 (= (matchRSpec!1291 lt!1032096 s!11993) e!1858926)))

(declare-fun bm!195140 () Bool)

(assert (=> bm!195140 (= call!195145 (isEmpty!19159 s!11993))))

(declare-fun e!1858927 () Bool)

(assert (=> b!2951638 (= e!1858927 call!195144)))

(declare-fun b!2951639 () Bool)

(assert (=> b!2951639 (= e!1858926 e!1858929)))

(declare-fun res!1217881 () Bool)

(assert (=> b!2951639 (= res!1217881 (not (is-EmptyLang!9154 lt!1032096)))))

(assert (=> b!2951639 (=> (not res!1217881) (not e!1858929))))

(declare-fun b!2951640 () Bool)

(assert (=> b!2951640 (= e!1858924 e!1858927)))

(assert (=> b!2951640 (= c!483236 (is-Star!9154 lt!1032096))))

(declare-fun e!1858925 () Bool)

(assert (=> b!2951641 (= e!1858925 call!195144)))

(declare-fun b!2951642 () Bool)

(declare-fun res!1217880 () Bool)

(assert (=> b!2951642 (=> res!1217880 e!1858925)))

(assert (=> b!2951642 (= res!1217880 call!195145)))

(assert (=> b!2951642 (= e!1858927 e!1858925)))

(declare-fun b!2951643 () Bool)

(assert (=> b!2951643 (= e!1858930 (= s!11993 (Cons!34895 (c!483130 lt!1032096) Nil!34895)))))

(assert (= (and d!841085 c!483235) b!2951636))

(assert (= (and d!841085 (not c!483235)) b!2951639))

(assert (= (and b!2951639 res!1217881) b!2951635))

(assert (= (and b!2951635 c!483238) b!2951643))

(assert (= (and b!2951635 (not c!483238)) b!2951637))

(assert (= (and b!2951637 c!483237) b!2951633))

(assert (= (and b!2951637 (not c!483237)) b!2951640))

(assert (= (and b!2951633 (not res!1217882)) b!2951634))

(assert (= (and b!2951640 c!483236) b!2951642))

(assert (= (and b!2951640 (not c!483236)) b!2951638))

(assert (= (and b!2951642 (not res!1217880)) b!2951641))

(assert (= (or b!2951641 b!2951638) bm!195139))

(assert (= (or b!2951636 b!2951642) bm!195140))

(declare-fun m!3330015 () Bool)

(assert (=> b!2951633 m!3330015))

(declare-fun m!3330017 () Bool)

(assert (=> b!2951634 m!3330017))

(declare-fun m!3330019 () Bool)

(assert (=> bm!195139 m!3330019))

(assert (=> bm!195140 m!3329785))

(assert (=> b!2951199 d!841085))

(declare-fun d!841089 () Bool)

(assert (=> d!841089 (= (matchR!4036 lt!1032096 s!11993) (matchRSpec!1291 lt!1032096 s!11993))))

(declare-fun lt!1032177 () Unit!48687)

(assert (=> d!841089 (= lt!1032177 (choose!17433 lt!1032096 s!11993))))

(assert (=> d!841089 (validRegex!3887 lt!1032096)))

(assert (=> d!841089 (= (mainMatchTheorem!1291 lt!1032096 s!11993) lt!1032177)))

(declare-fun bs!525764 () Bool)

(assert (= bs!525764 d!841089))

(assert (=> bs!525764 m!3329799))

(assert (=> bs!525764 m!3329821))

(declare-fun m!3330021 () Bool)

(assert (=> bs!525764 m!3330021))

(assert (=> bs!525764 m!3329943))

(assert (=> b!2951199 d!841089))

(declare-fun d!841091 () Bool)

(assert (=> d!841091 (= (Exists!1486 lambda!109765) (choose!17434 lambda!109765))))

(declare-fun bs!525765 () Bool)

(assert (= bs!525765 d!841091))

(declare-fun m!3330023 () Bool)

(assert (=> bs!525765 m!3330023))

(assert (=> b!2951199 d!841091))

(declare-fun b!2951652 () Bool)

(declare-fun e!1858935 () Bool)

(declare-fun tp!943308 () Bool)

(assert (=> b!2951652 (= e!1858935 (and tp_is_empty!15871 tp!943308))))

(assert (=> b!2951197 (= tp!943285 e!1858935)))

(assert (= (and b!2951197 (is-Cons!34895 (t!234084 s!11993))) b!2951652))

(declare-fun b!2951680 () Bool)

(declare-fun e!1858950 () Bool)

(declare-fun tp!943319 () Bool)

(declare-fun tp!943321 () Bool)

(assert (=> b!2951680 (= e!1858950 (and tp!943319 tp!943321))))

(declare-fun b!2951677 () Bool)

(assert (=> b!2951677 (= e!1858950 tp_is_empty!15871)))

(declare-fun b!2951678 () Bool)

(declare-fun tp!943322 () Bool)

(declare-fun tp!943320 () Bool)

(assert (=> b!2951678 (= e!1858950 (and tp!943322 tp!943320))))

(declare-fun b!2951679 () Bool)

(declare-fun tp!943323 () Bool)

(assert (=> b!2951679 (= e!1858950 tp!943323)))

(assert (=> b!2951206 (= tp!943282 e!1858950)))

(assert (= (and b!2951206 (is-ElementMatch!9154 (regOne!18821 r!17423))) b!2951677))

(assert (= (and b!2951206 (is-Concat!14475 (regOne!18821 r!17423))) b!2951678))

(assert (= (and b!2951206 (is-Star!9154 (regOne!18821 r!17423))) b!2951679))

(assert (= (and b!2951206 (is-Union!9154 (regOne!18821 r!17423))) b!2951680))

(declare-fun b!2951684 () Bool)

(declare-fun e!1858951 () Bool)

(declare-fun tp!943324 () Bool)

(declare-fun tp!943326 () Bool)

(assert (=> b!2951684 (= e!1858951 (and tp!943324 tp!943326))))

(declare-fun b!2951681 () Bool)

(assert (=> b!2951681 (= e!1858951 tp_is_empty!15871)))

(declare-fun b!2951682 () Bool)

(declare-fun tp!943327 () Bool)

(declare-fun tp!943325 () Bool)

(assert (=> b!2951682 (= e!1858951 (and tp!943327 tp!943325))))

(declare-fun b!2951683 () Bool)

(declare-fun tp!943328 () Bool)

(assert (=> b!2951683 (= e!1858951 tp!943328)))

(assert (=> b!2951206 (= tp!943286 e!1858951)))

(assert (= (and b!2951206 (is-ElementMatch!9154 (regTwo!18821 r!17423))) b!2951681))

(assert (= (and b!2951206 (is-Concat!14475 (regTwo!18821 r!17423))) b!2951682))

(assert (= (and b!2951206 (is-Star!9154 (regTwo!18821 r!17423))) b!2951683))

(assert (= (and b!2951206 (is-Union!9154 (regTwo!18821 r!17423))) b!2951684))

(declare-fun b!2951688 () Bool)

(declare-fun e!1858952 () Bool)

(declare-fun tp!943329 () Bool)

(declare-fun tp!943331 () Bool)

(assert (=> b!2951688 (= e!1858952 (and tp!943329 tp!943331))))

(declare-fun b!2951685 () Bool)

(assert (=> b!2951685 (= e!1858952 tp_is_empty!15871)))

(declare-fun b!2951686 () Bool)

(declare-fun tp!943332 () Bool)

(declare-fun tp!943330 () Bool)

(assert (=> b!2951686 (= e!1858952 (and tp!943332 tp!943330))))

(declare-fun b!2951687 () Bool)

(declare-fun tp!943333 () Bool)

(assert (=> b!2951687 (= e!1858952 tp!943333)))

(assert (=> b!2951204 (= tp!943283 e!1858952)))

(assert (= (and b!2951204 (is-ElementMatch!9154 (reg!9483 r!17423))) b!2951685))

(assert (= (and b!2951204 (is-Concat!14475 (reg!9483 r!17423))) b!2951686))

(assert (= (and b!2951204 (is-Star!9154 (reg!9483 r!17423))) b!2951687))

(assert (= (and b!2951204 (is-Union!9154 (reg!9483 r!17423))) b!2951688))

(declare-fun b!2951692 () Bool)

(declare-fun e!1858953 () Bool)

(declare-fun tp!943334 () Bool)

(declare-fun tp!943336 () Bool)

(assert (=> b!2951692 (= e!1858953 (and tp!943334 tp!943336))))

(declare-fun b!2951689 () Bool)

(assert (=> b!2951689 (= e!1858953 tp_is_empty!15871)))

(declare-fun b!2951690 () Bool)

(declare-fun tp!943337 () Bool)

(declare-fun tp!943335 () Bool)

(assert (=> b!2951690 (= e!1858953 (and tp!943337 tp!943335))))

(declare-fun b!2951691 () Bool)

(declare-fun tp!943338 () Bool)

(assert (=> b!2951691 (= e!1858953 tp!943338)))

(assert (=> b!2951194 (= tp!943287 e!1858953)))

(assert (= (and b!2951194 (is-ElementMatch!9154 (regOne!18820 r!17423))) b!2951689))

(assert (= (and b!2951194 (is-Concat!14475 (regOne!18820 r!17423))) b!2951690))

(assert (= (and b!2951194 (is-Star!9154 (regOne!18820 r!17423))) b!2951691))

(assert (= (and b!2951194 (is-Union!9154 (regOne!18820 r!17423))) b!2951692))

(declare-fun b!2951696 () Bool)

(declare-fun e!1858954 () Bool)

(declare-fun tp!943339 () Bool)

(declare-fun tp!943341 () Bool)

(assert (=> b!2951696 (= e!1858954 (and tp!943339 tp!943341))))

(declare-fun b!2951693 () Bool)

(assert (=> b!2951693 (= e!1858954 tp_is_empty!15871)))

(declare-fun b!2951694 () Bool)

(declare-fun tp!943342 () Bool)

(declare-fun tp!943340 () Bool)

(assert (=> b!2951694 (= e!1858954 (and tp!943342 tp!943340))))

(declare-fun b!2951695 () Bool)

(declare-fun tp!943343 () Bool)

(assert (=> b!2951695 (= e!1858954 tp!943343)))

(assert (=> b!2951194 (= tp!943284 e!1858954)))

(assert (= (and b!2951194 (is-ElementMatch!9154 (regTwo!18820 r!17423))) b!2951693))

(assert (= (and b!2951194 (is-Concat!14475 (regTwo!18820 r!17423))) b!2951694))

(assert (= (and b!2951194 (is-Star!9154 (regTwo!18820 r!17423))) b!2951695))

(assert (= (and b!2951194 (is-Union!9154 (regTwo!18820 r!17423))) b!2951696))

(push 1)

(assert (not bm!195097))

(assert (not d!841083))

(assert (not bm!195140))

(assert (not bm!195106))

(assert (not bm!195104))

(assert (not bm!195118))

(assert (not b!2951390))

(assert (not b!2951595))

(assert (not b!2951679))

(assert (not b!2951442))

(assert (not d!841045))

(assert (not b!2951688))

(assert (not b!2951691))

(assert (not bm!195102))

(assert (not b!2951634))

(assert (not b!2951652))

(assert (not bm!195132))

(assert (not b!2951694))

(assert (not b!2951599))

(assert (not bm!195098))

(assert (not b!2951686))

(assert (not b!2951687))

(assert (not b!2951487))

(assert (not bm!195095))

(assert (not b!2951485))

(assert (not b!2951682))

(assert (not d!841079))

(assert (not bm!195096))

(assert (not d!841069))

(assert (not bm!195122))

(assert (not b!2951614))

(assert (not d!841047))

(assert (not b!2951549))

(assert (not b!2951680))

(assert (not b!2951356))

(assert (not d!841057))

(assert (not b!2951601))

(assert (not b!2951696))

(assert (not bm!195139))

(assert (not d!841067))

(assert (not d!841055))

(assert (not b!2951600))

(assert (not bm!195105))

(assert (not b!2951556))

(assert (not b!2951559))

(assert (not b!2951491))

(assert (not b!2951596))

(assert tp_is_empty!15871)

(assert (not b!2951597))

(assert (not b!2951441))

(assert (not b!2951551))

(assert (not d!841061))

(assert (not b!2951695))

(assert (not b!2951678))

(assert (not bm!195138))

(assert (not b!2951690))

(assert (not d!841071))

(assert (not bm!195103))

(assert (not bm!195099))

(assert (not b!2951683))

(assert (not b!2951486))

(assert (not b!2951684))

(assert (not b!2951542))

(assert (not bm!195134))

(assert (not b!2951550))

(assert (not b!2951365))

(assert (not b!2951484))

(assert (not d!841089))

(assert (not bm!195119))

(assert (not bm!195133))

(assert (not b!2951381))

(assert (not b!2951633))

(assert (not b!2951692))

(assert (not b!2951494))

(assert (not d!841091))

(assert (not bm!195137))

(assert (not b!2951552))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

