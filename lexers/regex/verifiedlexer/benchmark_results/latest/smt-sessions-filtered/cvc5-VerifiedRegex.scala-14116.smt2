; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742612 () Bool)

(assert start!742612)

(declare-fun b!7841026 () Bool)

(declare-fun res!3118554 () Bool)

(declare-fun e!4636001 () Bool)

(assert (=> b!7841026 (=> (not res!3118554) (not e!4636001))))

(declare-datatypes ((C!42378 0))(
  ( (C!42379 (val!31629 Int)) )
))
(declare-datatypes ((Regex!21026 0))(
  ( (ElementMatch!21026 (c!1441553 C!42378)) (Concat!29871 (regOne!42564 Regex!21026) (regTwo!42564 Regex!21026)) (EmptyExpr!21026) (Star!21026 (reg!21355 Regex!21026)) (EmptyLang!21026) (Union!21026 (regOne!42565 Regex!21026) (regTwo!42565 Regex!21026)) )
))
(declare-fun r2!3226 () Regex!21026)

(declare-datatypes ((List!73863 0))(
  ( (Nil!73739) (Cons!73739 (h!80187 C!42378) (t!388598 List!73863)) )
))
(declare-datatypes ((tuple2!70034 0))(
  ( (tuple2!70035 (_1!38320 List!73863) (_2!38320 List!73863)) )
))
(declare-fun lt!2678464 () tuple2!70034)

(declare-fun matchR!10480 (Regex!21026 List!73863) Bool)

(assert (=> b!7841026 (= res!3118554 (matchR!10480 r2!3226 (_2!38320 lt!2678464)))))

(declare-fun b!7841027 () Bool)

(declare-fun e!4636007 () Bool)

(declare-fun lt!2678463 () Bool)

(assert (=> b!7841027 (= e!4636007 lt!2678463)))

(declare-fun b!7841028 () Bool)

(declare-fun res!3118549 () Bool)

(declare-fun e!4636002 () Bool)

(assert (=> b!7841028 (=> (not res!3118549) (not e!4636002))))

(declare-fun s2!2463 () List!73863)

(assert (=> b!7841028 (= res!3118549 (not (is-Nil!73739 s2!2463)))))

(declare-fun b!7841029 () Bool)

(declare-fun e!4636000 () Bool)

(assert (=> b!7841029 (= e!4636000 (not (matchR!10480 r2!3226 s2!2463)))))

(declare-fun b!7841030 () Bool)

(declare-fun e!4636006 () Bool)

(declare-fun tp!2320756 () Bool)

(declare-fun tp!2320758 () Bool)

(assert (=> b!7841030 (= e!4636006 (and tp!2320756 tp!2320758))))

(declare-fun b!7841031 () Bool)

(declare-fun tp!2320766 () Bool)

(declare-fun tp!2320762 () Bool)

(assert (=> b!7841031 (= e!4636006 (and tp!2320766 tp!2320762))))

(declare-fun b!7841032 () Bool)

(declare-fun res!3118552 () Bool)

(assert (=> b!7841032 (=> (not res!3118552) (not e!4636002))))

(declare-fun s1!2717 () List!73863)

(declare-fun s!10212 () List!73863)

(declare-fun ++!18060 (List!73863 List!73863) List!73863)

(assert (=> b!7841032 (= res!3118552 (= (++!18060 s1!2717 s2!2463) s!10212))))

(declare-fun b!7841033 () Bool)

(declare-fun e!4636008 () Bool)

(declare-fun tp!2320761 () Bool)

(assert (=> b!7841033 (= e!4636008 tp!2320761)))

(declare-fun res!3118553 () Bool)

(assert (=> start!742612 (=> (not res!3118553) (not e!4636002))))

(declare-fun r1!3326 () Regex!21026)

(declare-fun validRegex!11440 (Regex!21026) Bool)

(assert (=> start!742612 (= res!3118553 (validRegex!11440 r1!3326))))

(assert (=> start!742612 e!4636002))

(declare-fun e!4636005 () Bool)

(assert (=> start!742612 e!4636005))

(assert (=> start!742612 e!4636008))

(declare-fun e!4636003 () Bool)

(assert (=> start!742612 e!4636003))

(assert (=> start!742612 e!4636006))

(declare-fun e!4636004 () Bool)

(assert (=> start!742612 e!4636004))

(declare-fun b!7841034 () Bool)

(declare-fun tp_is_empty!52407 () Bool)

(assert (=> b!7841034 (= e!4636008 tp_is_empty!52407)))

(declare-fun b!7841035 () Bool)

(declare-fun res!3118551 () Bool)

(assert (=> b!7841035 (=> (not res!3118551) (not e!4636002))))

(assert (=> b!7841035 (= res!3118551 e!4636000)))

(declare-fun res!3118547 () Bool)

(assert (=> b!7841035 (=> res!3118547 e!4636000)))

(assert (=> b!7841035 (= res!3118547 (not (matchR!10480 r1!3326 s1!2717)))))

(declare-fun b!7841036 () Bool)

(assert (=> b!7841036 (= e!4636002 (not e!4636007))))

(declare-fun res!3118548 () Bool)

(assert (=> b!7841036 (=> res!3118548 e!4636007)))

(declare-fun e!4636009 () Bool)

(assert (=> b!7841036 (= res!3118548 e!4636009)))

(declare-fun res!3118545 () Bool)

(assert (=> b!7841036 (=> (not res!3118545) (not e!4636009))))

(assert (=> b!7841036 (= res!3118545 (not lt!2678463))))

(declare-datatypes ((Option!17811 0))(
  ( (None!17810) (Some!17810 (v!54945 tuple2!70034)) )
))
(declare-fun lt!2678467 () Option!17811)

(declare-fun isDefined!14409 (Option!17811) Bool)

(assert (=> b!7841036 (= lt!2678463 (not (isDefined!14409 lt!2678467)))))

(declare-fun lt!2678466 () List!73863)

(declare-fun findConcatSeparation!3829 (Regex!21026 Regex!21026 List!73863 List!73863 List!73863) Option!17811)

(assert (=> b!7841036 (= lt!2678467 (findConcatSeparation!3829 r1!3326 r2!3226 lt!2678466 (t!388598 s2!2463) s!10212))))

(assert (=> b!7841036 (= (++!18060 lt!2678466 (t!388598 s2!2463)) s!10212)))

(assert (=> b!7841036 (= lt!2678466 (++!18060 s1!2717 (Cons!73739 (h!80187 s2!2463) Nil!73739)))))

(declare-datatypes ((Unit!168834 0))(
  ( (Unit!168835) )
))
(declare-fun lt!2678465 () Unit!168834)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3463 (List!73863 C!42378 List!73863 List!73863) Unit!168834)

(assert (=> b!7841036 (= lt!2678465 (lemmaMoveElementToOtherListKeepsConcatEq!3463 s1!2717 (h!80187 s2!2463) (t!388598 s2!2463) s!10212))))

(declare-fun b!7841037 () Bool)

(assert (=> b!7841037 (= e!4636001 (= (++!18060 (_1!38320 lt!2678464) (_2!38320 lt!2678464)) s!10212))))

(declare-fun b!7841038 () Bool)

(declare-fun tp!2320768 () Bool)

(declare-fun tp!2320759 () Bool)

(assert (=> b!7841038 (= e!4636008 (and tp!2320768 tp!2320759))))

(declare-fun b!7841039 () Bool)

(declare-fun tp!2320763 () Bool)

(assert (=> b!7841039 (= e!4636005 (and tp_is_empty!52407 tp!2320763))))

(declare-fun b!7841040 () Bool)

(declare-fun tp!2320757 () Bool)

(assert (=> b!7841040 (= e!4636006 tp!2320757)))

(declare-fun b!7841041 () Bool)

(assert (=> b!7841041 (= e!4636006 tp_is_empty!52407)))

(declare-fun b!7841042 () Bool)

(declare-fun res!3118546 () Bool)

(assert (=> b!7841042 (=> (not res!3118546) (not e!4636002))))

(assert (=> b!7841042 (= res!3118546 (validRegex!11440 r2!3226))))

(declare-fun b!7841043 () Bool)

(declare-fun tp!2320767 () Bool)

(assert (=> b!7841043 (= e!4636004 (and tp_is_empty!52407 tp!2320767))))

(declare-fun b!7841044 () Bool)

(assert (=> b!7841044 (= e!4636009 e!4636001)))

(declare-fun res!3118550 () Bool)

(assert (=> b!7841044 (=> (not res!3118550) (not e!4636001))))

(assert (=> b!7841044 (= res!3118550 (matchR!10480 r1!3326 (_1!38320 lt!2678464)))))

(declare-fun get!26439 (Option!17811) tuple2!70034)

(assert (=> b!7841044 (= lt!2678464 (get!26439 lt!2678467))))

(declare-fun b!7841045 () Bool)

(declare-fun tp!2320765 () Bool)

(declare-fun tp!2320764 () Bool)

(assert (=> b!7841045 (= e!4636008 (and tp!2320765 tp!2320764))))

(declare-fun b!7841046 () Bool)

(declare-fun tp!2320760 () Bool)

(assert (=> b!7841046 (= e!4636003 (and tp_is_empty!52407 tp!2320760))))

(assert (= (and start!742612 res!3118553) b!7841042))

(assert (= (and b!7841042 res!3118546) b!7841032))

(assert (= (and b!7841032 res!3118552) b!7841035))

(assert (= (and b!7841035 (not res!3118547)) b!7841029))

(assert (= (and b!7841035 res!3118551) b!7841028))

(assert (= (and b!7841028 res!3118549) b!7841036))

(assert (= (and b!7841036 res!3118545) b!7841044))

(assert (= (and b!7841044 res!3118550) b!7841026))

(assert (= (and b!7841026 res!3118554) b!7841037))

(assert (= (and b!7841036 (not res!3118548)) b!7841027))

(assert (= (and start!742612 (is-Cons!73739 s1!2717)) b!7841039))

(assert (= (and start!742612 (is-ElementMatch!21026 r1!3326)) b!7841034))

(assert (= (and start!742612 (is-Concat!29871 r1!3326)) b!7841038))

(assert (= (and start!742612 (is-Star!21026 r1!3326)) b!7841033))

(assert (= (and start!742612 (is-Union!21026 r1!3326)) b!7841045))

(assert (= (and start!742612 (is-Cons!73739 s!10212)) b!7841046))

(assert (= (and start!742612 (is-ElementMatch!21026 r2!3226)) b!7841041))

(assert (= (and start!742612 (is-Concat!29871 r2!3226)) b!7841031))

(assert (= (and start!742612 (is-Star!21026 r2!3226)) b!7841040))

(assert (= (and start!742612 (is-Union!21026 r2!3226)) b!7841030))

(assert (= (and start!742612 (is-Cons!73739 s2!2463)) b!7841043))

(declare-fun m!8253526 () Bool)

(assert (=> b!7841037 m!8253526))

(declare-fun m!8253528 () Bool)

(assert (=> b!7841032 m!8253528))

(declare-fun m!8253530 () Bool)

(assert (=> b!7841029 m!8253530))

(declare-fun m!8253532 () Bool)

(assert (=> b!7841036 m!8253532))

(declare-fun m!8253534 () Bool)

(assert (=> b!7841036 m!8253534))

(declare-fun m!8253536 () Bool)

(assert (=> b!7841036 m!8253536))

(declare-fun m!8253538 () Bool)

(assert (=> b!7841036 m!8253538))

(declare-fun m!8253540 () Bool)

(assert (=> b!7841036 m!8253540))

(declare-fun m!8253542 () Bool)

(assert (=> b!7841035 m!8253542))

(declare-fun m!8253544 () Bool)

(assert (=> b!7841026 m!8253544))

(declare-fun m!8253546 () Bool)

(assert (=> b!7841042 m!8253546))

(declare-fun m!8253548 () Bool)

(assert (=> b!7841044 m!8253548))

(declare-fun m!8253550 () Bool)

(assert (=> b!7841044 m!8253550))

(declare-fun m!8253552 () Bool)

(assert (=> start!742612 m!8253552))

(push 1)

(assert (not b!7841037))

(assert (not b!7841039))

(assert (not b!7841044))

(assert (not b!7841031))

(assert (not b!7841046))

(assert (not b!7841030))

(assert (not b!7841035))

(assert (not b!7841032))

(assert (not b!7841036))

(assert tp_is_empty!52407)

(assert (not start!742612))

(assert (not b!7841038))

(assert (not b!7841033))

(assert (not b!7841043))

(assert (not b!7841026))

(assert (not b!7841045))

(assert (not b!7841042))

(assert (not b!7841040))

(assert (not b!7841029))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!726700 () Bool)

(declare-fun call!726705 () Bool)

(declare-fun call!726706 () Bool)

(assert (=> bm!726700 (= call!726705 call!726706)))

(declare-fun b!7841140 () Bool)

(declare-fun e!4636060 () Bool)

(assert (=> b!7841140 (= e!4636060 call!726705)))

(declare-fun d!2352067 () Bool)

(declare-fun res!3118595 () Bool)

(declare-fun e!4636063 () Bool)

(assert (=> d!2352067 (=> res!3118595 e!4636063)))

(assert (=> d!2352067 (= res!3118595 (is-ElementMatch!21026 r1!3326))))

(assert (=> d!2352067 (= (validRegex!11440 r1!3326) e!4636063)))

(declare-fun b!7841141 () Bool)

(declare-fun res!3118598 () Bool)

(declare-fun e!4636065 () Bool)

(assert (=> b!7841141 (=> res!3118598 e!4636065)))

(assert (=> b!7841141 (= res!3118598 (not (is-Concat!29871 r1!3326)))))

(declare-fun e!4636062 () Bool)

(assert (=> b!7841141 (= e!4636062 e!4636065)))

(declare-fun b!7841142 () Bool)

(declare-fun e!4636061 () Bool)

(assert (=> b!7841142 (= e!4636061 call!726705)))

(declare-fun bm!726701 () Bool)

(declare-fun call!726707 () Bool)

(declare-fun c!1441565 () Bool)

(assert (=> bm!726701 (= call!726707 (validRegex!11440 (ite c!1441565 (regOne!42565 r1!3326) (regOne!42564 r1!3326))))))

(declare-fun b!7841143 () Bool)

(assert (=> b!7841143 (= e!4636065 e!4636061)))

(declare-fun res!3118597 () Bool)

(assert (=> b!7841143 (=> (not res!3118597) (not e!4636061))))

(assert (=> b!7841143 (= res!3118597 call!726707)))

(declare-fun bm!726702 () Bool)

(declare-fun c!1441566 () Bool)

(assert (=> bm!726702 (= call!726706 (validRegex!11440 (ite c!1441566 (reg!21355 r1!3326) (ite c!1441565 (regTwo!42565 r1!3326) (regTwo!42564 r1!3326)))))))

(declare-fun b!7841144 () Bool)

(declare-fun e!4636064 () Bool)

(assert (=> b!7841144 (= e!4636063 e!4636064)))

(assert (=> b!7841144 (= c!1441566 (is-Star!21026 r1!3326))))

(declare-fun b!7841145 () Bool)

(declare-fun e!4636066 () Bool)

(assert (=> b!7841145 (= e!4636066 call!726706)))

(declare-fun b!7841146 () Bool)

(assert (=> b!7841146 (= e!4636064 e!4636066)))

(declare-fun res!3118596 () Bool)

(declare-fun nullable!9316 (Regex!21026) Bool)

(assert (=> b!7841146 (= res!3118596 (not (nullable!9316 (reg!21355 r1!3326))))))

(assert (=> b!7841146 (=> (not res!3118596) (not e!4636066))))

(declare-fun b!7841147 () Bool)

(declare-fun res!3118599 () Bool)

(assert (=> b!7841147 (=> (not res!3118599) (not e!4636060))))

(assert (=> b!7841147 (= res!3118599 call!726707)))

(assert (=> b!7841147 (= e!4636062 e!4636060)))

(declare-fun b!7841148 () Bool)

(assert (=> b!7841148 (= e!4636064 e!4636062)))

(assert (=> b!7841148 (= c!1441565 (is-Union!21026 r1!3326))))

(assert (= (and d!2352067 (not res!3118595)) b!7841144))

(assert (= (and b!7841144 c!1441566) b!7841146))

(assert (= (and b!7841144 (not c!1441566)) b!7841148))

(assert (= (and b!7841146 res!3118596) b!7841145))

(assert (= (and b!7841148 c!1441565) b!7841147))

(assert (= (and b!7841148 (not c!1441565)) b!7841141))

(assert (= (and b!7841147 res!3118599) b!7841140))

(assert (= (and b!7841141 (not res!3118598)) b!7841143))

(assert (= (and b!7841143 res!3118597) b!7841142))

(assert (= (or b!7841147 b!7841143) bm!726701))

(assert (= (or b!7841140 b!7841142) bm!726700))

(assert (= (or b!7841145 bm!726700) bm!726702))

(declare-fun m!8253582 () Bool)

(assert (=> bm!726701 m!8253582))

(declare-fun m!8253584 () Bool)

(assert (=> bm!726702 m!8253584))

(declare-fun m!8253586 () Bool)

(assert (=> b!7841146 m!8253586))

(assert (=> start!742612 d!2352067))

(declare-fun b!7841173 () Bool)

(declare-fun e!4636079 () List!73863)

(assert (=> b!7841173 (= e!4636079 s2!2463)))

(declare-fun b!7841174 () Bool)

(assert (=> b!7841174 (= e!4636079 (Cons!73739 (h!80187 s1!2717) (++!18060 (t!388598 s1!2717) s2!2463)))))

(declare-fun b!7841175 () Bool)

(declare-fun res!3118620 () Bool)

(declare-fun e!4636080 () Bool)

(assert (=> b!7841175 (=> (not res!3118620) (not e!4636080))))

(declare-fun lt!2678487 () List!73863)

(declare-fun size!42788 (List!73863) Int)

(assert (=> b!7841175 (= res!3118620 (= (size!42788 lt!2678487) (+ (size!42788 s1!2717) (size!42788 s2!2463))))))

(declare-fun b!7841176 () Bool)

(assert (=> b!7841176 (= e!4636080 (or (not (= s2!2463 Nil!73739)) (= lt!2678487 s1!2717)))))

(declare-fun d!2352069 () Bool)

(assert (=> d!2352069 e!4636080))

(declare-fun res!3118621 () Bool)

(assert (=> d!2352069 (=> (not res!3118621) (not e!4636080))))

(declare-fun content!15657 (List!73863) (Set C!42378))

(assert (=> d!2352069 (= res!3118621 (= (content!15657 lt!2678487) (set.union (content!15657 s1!2717) (content!15657 s2!2463))))))

(assert (=> d!2352069 (= lt!2678487 e!4636079)))

(declare-fun c!1441569 () Bool)

(assert (=> d!2352069 (= c!1441569 (is-Nil!73739 s1!2717))))

(assert (=> d!2352069 (= (++!18060 s1!2717 s2!2463) lt!2678487)))

(assert (= (and d!2352069 c!1441569) b!7841173))

(assert (= (and d!2352069 (not c!1441569)) b!7841174))

(assert (= (and d!2352069 res!3118621) b!7841175))

(assert (= (and b!7841175 res!3118620) b!7841176))

(declare-fun m!8253588 () Bool)

(assert (=> b!7841174 m!8253588))

(declare-fun m!8253590 () Bool)

(assert (=> b!7841175 m!8253590))

(declare-fun m!8253592 () Bool)

(assert (=> b!7841175 m!8253592))

(declare-fun m!8253594 () Bool)

(assert (=> b!7841175 m!8253594))

(declare-fun m!8253596 () Bool)

(assert (=> d!2352069 m!8253596))

(declare-fun m!8253598 () Bool)

(assert (=> d!2352069 m!8253598))

(declare-fun m!8253600 () Bool)

(assert (=> d!2352069 m!8253600))

(assert (=> b!7841032 d!2352069))

(declare-fun b!7841177 () Bool)

(declare-fun e!4636081 () List!73863)

(assert (=> b!7841177 (= e!4636081 (_2!38320 lt!2678464))))

(declare-fun b!7841178 () Bool)

(assert (=> b!7841178 (= e!4636081 (Cons!73739 (h!80187 (_1!38320 lt!2678464)) (++!18060 (t!388598 (_1!38320 lt!2678464)) (_2!38320 lt!2678464))))))

(declare-fun b!7841179 () Bool)

(declare-fun res!3118622 () Bool)

(declare-fun e!4636082 () Bool)

(assert (=> b!7841179 (=> (not res!3118622) (not e!4636082))))

(declare-fun lt!2678488 () List!73863)

(assert (=> b!7841179 (= res!3118622 (= (size!42788 lt!2678488) (+ (size!42788 (_1!38320 lt!2678464)) (size!42788 (_2!38320 lt!2678464)))))))

(declare-fun b!7841180 () Bool)

(assert (=> b!7841180 (= e!4636082 (or (not (= (_2!38320 lt!2678464) Nil!73739)) (= lt!2678488 (_1!38320 lt!2678464))))))

(declare-fun d!2352071 () Bool)

(assert (=> d!2352071 e!4636082))

(declare-fun res!3118623 () Bool)

(assert (=> d!2352071 (=> (not res!3118623) (not e!4636082))))

(assert (=> d!2352071 (= res!3118623 (= (content!15657 lt!2678488) (set.union (content!15657 (_1!38320 lt!2678464)) (content!15657 (_2!38320 lt!2678464)))))))

(assert (=> d!2352071 (= lt!2678488 e!4636081)))

(declare-fun c!1441570 () Bool)

(assert (=> d!2352071 (= c!1441570 (is-Nil!73739 (_1!38320 lt!2678464)))))

(assert (=> d!2352071 (= (++!18060 (_1!38320 lt!2678464) (_2!38320 lt!2678464)) lt!2678488)))

(assert (= (and d!2352071 c!1441570) b!7841177))

(assert (= (and d!2352071 (not c!1441570)) b!7841178))

(assert (= (and d!2352071 res!3118623) b!7841179))

(assert (= (and b!7841179 res!3118622) b!7841180))

(declare-fun m!8253602 () Bool)

(assert (=> b!7841178 m!8253602))

(declare-fun m!8253604 () Bool)

(assert (=> b!7841179 m!8253604))

(declare-fun m!8253606 () Bool)

(assert (=> b!7841179 m!8253606))

(declare-fun m!8253608 () Bool)

(assert (=> b!7841179 m!8253608))

(declare-fun m!8253610 () Bool)

(assert (=> d!2352071 m!8253610))

(declare-fun m!8253612 () Bool)

(assert (=> d!2352071 m!8253612))

(declare-fun m!8253614 () Bool)

(assert (=> d!2352071 m!8253614))

(assert (=> b!7841037 d!2352071))

(declare-fun bm!726708 () Bool)

(declare-fun call!726713 () Bool)

(declare-fun isEmpty!42308 (List!73863) Bool)

(assert (=> bm!726708 (= call!726713 (isEmpty!42308 (_1!38320 lt!2678464)))))

(declare-fun b!7841223 () Bool)

(declare-fun res!3118655 () Bool)

(declare-fun e!4636105 () Bool)

(assert (=> b!7841223 (=> res!3118655 e!4636105)))

(assert (=> b!7841223 (= res!3118655 (not (is-ElementMatch!21026 r1!3326)))))

(declare-fun e!4636104 () Bool)

(assert (=> b!7841223 (= e!4636104 e!4636105)))

(declare-fun b!7841224 () Bool)

(declare-fun e!4636106 () Bool)

(assert (=> b!7841224 (= e!4636106 e!4636104)))

(declare-fun c!1441582 () Bool)

(assert (=> b!7841224 (= c!1441582 (is-EmptyLang!21026 r1!3326))))

(declare-fun b!7841225 () Bool)

(declare-fun e!4636107 () Bool)

(assert (=> b!7841225 (= e!4636105 e!4636107)))

(declare-fun res!3118650 () Bool)

(assert (=> b!7841225 (=> (not res!3118650) (not e!4636107))))

(declare-fun lt!2678492 () Bool)

(assert (=> b!7841225 (= res!3118650 (not lt!2678492))))

(declare-fun b!7841226 () Bool)

(declare-fun e!4636110 () Bool)

(declare-fun head!16003 (List!73863) C!42378)

(assert (=> b!7841226 (= e!4636110 (not (= (head!16003 (_1!38320 lt!2678464)) (c!1441553 r1!3326))))))

(declare-fun b!7841228 () Bool)

(declare-fun res!3118649 () Bool)

(declare-fun e!4636109 () Bool)

(assert (=> b!7841228 (=> (not res!3118649) (not e!4636109))))

(assert (=> b!7841228 (= res!3118649 (not call!726713))))

(declare-fun b!7841229 () Bool)

(assert (=> b!7841229 (= e!4636107 e!4636110)))

(declare-fun res!3118653 () Bool)

(assert (=> b!7841229 (=> res!3118653 e!4636110)))

(assert (=> b!7841229 (= res!3118653 call!726713)))

(declare-fun b!7841230 () Bool)

(assert (=> b!7841230 (= e!4636109 (= (head!16003 (_1!38320 lt!2678464)) (c!1441553 r1!3326)))))

(declare-fun b!7841231 () Bool)

(declare-fun e!4636108 () Bool)

(assert (=> b!7841231 (= e!4636108 (nullable!9316 r1!3326))))

(declare-fun b!7841232 () Bool)

(assert (=> b!7841232 (= e!4636106 (= lt!2678492 call!726713))))

(declare-fun b!7841233 () Bool)

(declare-fun res!3118652 () Bool)

(assert (=> b!7841233 (=> res!3118652 e!4636110)))

(declare-fun tail!15544 (List!73863) List!73863)

(assert (=> b!7841233 (= res!3118652 (not (isEmpty!42308 (tail!15544 (_1!38320 lt!2678464)))))))

(declare-fun b!7841234 () Bool)

(declare-fun res!3118651 () Bool)

(assert (=> b!7841234 (=> res!3118651 e!4636105)))

(assert (=> b!7841234 (= res!3118651 e!4636109)))

(declare-fun res!3118654 () Bool)

(assert (=> b!7841234 (=> (not res!3118654) (not e!4636109))))

(assert (=> b!7841234 (= res!3118654 lt!2678492)))

(declare-fun b!7841227 () Bool)

(declare-fun res!3118648 () Bool)

(assert (=> b!7841227 (=> (not res!3118648) (not e!4636109))))

(assert (=> b!7841227 (= res!3118648 (isEmpty!42308 (tail!15544 (_1!38320 lt!2678464))))))

(declare-fun d!2352073 () Bool)

(assert (=> d!2352073 e!4636106))

(declare-fun c!1441580 () Bool)

(assert (=> d!2352073 (= c!1441580 (is-EmptyExpr!21026 r1!3326))))

(assert (=> d!2352073 (= lt!2678492 e!4636108)))

(declare-fun c!1441581 () Bool)

(assert (=> d!2352073 (= c!1441581 (isEmpty!42308 (_1!38320 lt!2678464)))))

(assert (=> d!2352073 (validRegex!11440 r1!3326)))

(assert (=> d!2352073 (= (matchR!10480 r1!3326 (_1!38320 lt!2678464)) lt!2678492)))

(declare-fun b!7841235 () Bool)

(declare-fun derivativeStep!6273 (Regex!21026 C!42378) Regex!21026)

(assert (=> b!7841235 (= e!4636108 (matchR!10480 (derivativeStep!6273 r1!3326 (head!16003 (_1!38320 lt!2678464))) (tail!15544 (_1!38320 lt!2678464))))))

(declare-fun b!7841236 () Bool)

(assert (=> b!7841236 (= e!4636104 (not lt!2678492))))

(assert (= (and d!2352073 c!1441581) b!7841231))

(assert (= (and d!2352073 (not c!1441581)) b!7841235))

(assert (= (and d!2352073 c!1441580) b!7841232))

(assert (= (and d!2352073 (not c!1441580)) b!7841224))

(assert (= (and b!7841224 c!1441582) b!7841236))

(assert (= (and b!7841224 (not c!1441582)) b!7841223))

(assert (= (and b!7841223 (not res!3118655)) b!7841234))

(assert (= (and b!7841234 res!3118654) b!7841228))

(assert (= (and b!7841228 res!3118649) b!7841227))

(assert (= (and b!7841227 res!3118648) b!7841230))

(assert (= (and b!7841234 (not res!3118651)) b!7841225))

(assert (= (and b!7841225 res!3118650) b!7841229))

(assert (= (and b!7841229 (not res!3118653)) b!7841233))

(assert (= (and b!7841233 (not res!3118652)) b!7841226))

(assert (= (or b!7841232 b!7841228 b!7841229) bm!726708))

(declare-fun m!8253630 () Bool)

(assert (=> b!7841235 m!8253630))

(assert (=> b!7841235 m!8253630))

(declare-fun m!8253632 () Bool)

(assert (=> b!7841235 m!8253632))

(declare-fun m!8253634 () Bool)

(assert (=> b!7841235 m!8253634))

(assert (=> b!7841235 m!8253632))

(assert (=> b!7841235 m!8253634))

(declare-fun m!8253636 () Bool)

(assert (=> b!7841235 m!8253636))

(assert (=> b!7841233 m!8253634))

(assert (=> b!7841233 m!8253634))

(declare-fun m!8253638 () Bool)

(assert (=> b!7841233 m!8253638))

(declare-fun m!8253640 () Bool)

(assert (=> b!7841231 m!8253640))

(assert (=> b!7841226 m!8253630))

(assert (=> b!7841227 m!8253634))

(assert (=> b!7841227 m!8253634))

(assert (=> b!7841227 m!8253638))

(assert (=> b!7841230 m!8253630))

(declare-fun m!8253642 () Bool)

(assert (=> bm!726708 m!8253642))

(assert (=> d!2352073 m!8253642))

(assert (=> d!2352073 m!8253552))

(assert (=> b!7841044 d!2352073))

(declare-fun d!2352077 () Bool)

(assert (=> d!2352077 (= (get!26439 lt!2678467) (v!54945 lt!2678467))))

(assert (=> b!7841044 d!2352077))

(declare-fun bm!726709 () Bool)

(declare-fun call!726714 () Bool)

(assert (=> bm!726709 (= call!726714 (isEmpty!42308 s1!2717))))

(declare-fun b!7841237 () Bool)

(declare-fun res!3118663 () Bool)

(declare-fun e!4636112 () Bool)

(assert (=> b!7841237 (=> res!3118663 e!4636112)))

(assert (=> b!7841237 (= res!3118663 (not (is-ElementMatch!21026 r1!3326)))))

(declare-fun e!4636111 () Bool)

(assert (=> b!7841237 (= e!4636111 e!4636112)))

(declare-fun b!7841238 () Bool)

(declare-fun e!4636113 () Bool)

(assert (=> b!7841238 (= e!4636113 e!4636111)))

(declare-fun c!1441585 () Bool)

(assert (=> b!7841238 (= c!1441585 (is-EmptyLang!21026 r1!3326))))

(declare-fun b!7841239 () Bool)

(declare-fun e!4636114 () Bool)

(assert (=> b!7841239 (= e!4636112 e!4636114)))

(declare-fun res!3118658 () Bool)

(assert (=> b!7841239 (=> (not res!3118658) (not e!4636114))))

(declare-fun lt!2678493 () Bool)

(assert (=> b!7841239 (= res!3118658 (not lt!2678493))))

(declare-fun b!7841240 () Bool)

(declare-fun e!4636117 () Bool)

(assert (=> b!7841240 (= e!4636117 (not (= (head!16003 s1!2717) (c!1441553 r1!3326))))))

(declare-fun b!7841242 () Bool)

(declare-fun res!3118657 () Bool)

(declare-fun e!4636116 () Bool)

(assert (=> b!7841242 (=> (not res!3118657) (not e!4636116))))

(assert (=> b!7841242 (= res!3118657 (not call!726714))))

(declare-fun b!7841243 () Bool)

(assert (=> b!7841243 (= e!4636114 e!4636117)))

(declare-fun res!3118661 () Bool)

(assert (=> b!7841243 (=> res!3118661 e!4636117)))

(assert (=> b!7841243 (= res!3118661 call!726714)))

(declare-fun b!7841244 () Bool)

(assert (=> b!7841244 (= e!4636116 (= (head!16003 s1!2717) (c!1441553 r1!3326)))))

(declare-fun b!7841245 () Bool)

(declare-fun e!4636115 () Bool)

(assert (=> b!7841245 (= e!4636115 (nullable!9316 r1!3326))))

(declare-fun b!7841246 () Bool)

(assert (=> b!7841246 (= e!4636113 (= lt!2678493 call!726714))))

(declare-fun b!7841247 () Bool)

(declare-fun res!3118660 () Bool)

(assert (=> b!7841247 (=> res!3118660 e!4636117)))

(assert (=> b!7841247 (= res!3118660 (not (isEmpty!42308 (tail!15544 s1!2717))))))

(declare-fun b!7841248 () Bool)

(declare-fun res!3118659 () Bool)

(assert (=> b!7841248 (=> res!3118659 e!4636112)))

(assert (=> b!7841248 (= res!3118659 e!4636116)))

(declare-fun res!3118662 () Bool)

(assert (=> b!7841248 (=> (not res!3118662) (not e!4636116))))

(assert (=> b!7841248 (= res!3118662 lt!2678493)))

(declare-fun b!7841241 () Bool)

(declare-fun res!3118656 () Bool)

(assert (=> b!7841241 (=> (not res!3118656) (not e!4636116))))

(assert (=> b!7841241 (= res!3118656 (isEmpty!42308 (tail!15544 s1!2717)))))

(declare-fun d!2352079 () Bool)

(assert (=> d!2352079 e!4636113))

(declare-fun c!1441583 () Bool)

(assert (=> d!2352079 (= c!1441583 (is-EmptyExpr!21026 r1!3326))))

(assert (=> d!2352079 (= lt!2678493 e!4636115)))

(declare-fun c!1441584 () Bool)

(assert (=> d!2352079 (= c!1441584 (isEmpty!42308 s1!2717))))

(assert (=> d!2352079 (validRegex!11440 r1!3326)))

(assert (=> d!2352079 (= (matchR!10480 r1!3326 s1!2717) lt!2678493)))

(declare-fun b!7841249 () Bool)

(assert (=> b!7841249 (= e!4636115 (matchR!10480 (derivativeStep!6273 r1!3326 (head!16003 s1!2717)) (tail!15544 s1!2717)))))

(declare-fun b!7841250 () Bool)

(assert (=> b!7841250 (= e!4636111 (not lt!2678493))))

(assert (= (and d!2352079 c!1441584) b!7841245))

(assert (= (and d!2352079 (not c!1441584)) b!7841249))

(assert (= (and d!2352079 c!1441583) b!7841246))

(assert (= (and d!2352079 (not c!1441583)) b!7841238))

(assert (= (and b!7841238 c!1441585) b!7841250))

(assert (= (and b!7841238 (not c!1441585)) b!7841237))

(assert (= (and b!7841237 (not res!3118663)) b!7841248))

(assert (= (and b!7841248 res!3118662) b!7841242))

(assert (= (and b!7841242 res!3118657) b!7841241))

(assert (= (and b!7841241 res!3118656) b!7841244))

(assert (= (and b!7841248 (not res!3118659)) b!7841239))

(assert (= (and b!7841239 res!3118658) b!7841243))

(assert (= (and b!7841243 (not res!3118661)) b!7841247))

(assert (= (and b!7841247 (not res!3118660)) b!7841240))

(assert (= (or b!7841246 b!7841242 b!7841243) bm!726709))

(declare-fun m!8253644 () Bool)

(assert (=> b!7841249 m!8253644))

(assert (=> b!7841249 m!8253644))

(declare-fun m!8253646 () Bool)

(assert (=> b!7841249 m!8253646))

(declare-fun m!8253648 () Bool)

(assert (=> b!7841249 m!8253648))

(assert (=> b!7841249 m!8253646))

(assert (=> b!7841249 m!8253648))

(declare-fun m!8253650 () Bool)

(assert (=> b!7841249 m!8253650))

(assert (=> b!7841247 m!8253648))

(assert (=> b!7841247 m!8253648))

(declare-fun m!8253652 () Bool)

(assert (=> b!7841247 m!8253652))

(assert (=> b!7841245 m!8253640))

(assert (=> b!7841240 m!8253644))

(assert (=> b!7841241 m!8253648))

(assert (=> b!7841241 m!8253648))

(assert (=> b!7841241 m!8253652))

(assert (=> b!7841244 m!8253644))

(declare-fun m!8253654 () Bool)

(assert (=> bm!726709 m!8253654))

(assert (=> d!2352079 m!8253654))

(assert (=> d!2352079 m!8253552))

(assert (=> b!7841035 d!2352079))

(declare-fun bm!726710 () Bool)

(declare-fun call!726715 () Bool)

(assert (=> bm!726710 (= call!726715 (isEmpty!42308 s2!2463))))

(declare-fun b!7841251 () Bool)

(declare-fun res!3118671 () Bool)

(declare-fun e!4636119 () Bool)

(assert (=> b!7841251 (=> res!3118671 e!4636119)))

(assert (=> b!7841251 (= res!3118671 (not (is-ElementMatch!21026 r2!3226)))))

(declare-fun e!4636118 () Bool)

(assert (=> b!7841251 (= e!4636118 e!4636119)))

(declare-fun b!7841252 () Bool)

(declare-fun e!4636120 () Bool)

(assert (=> b!7841252 (= e!4636120 e!4636118)))

(declare-fun c!1441588 () Bool)

(assert (=> b!7841252 (= c!1441588 (is-EmptyLang!21026 r2!3226))))

(declare-fun b!7841253 () Bool)

(declare-fun e!4636121 () Bool)

(assert (=> b!7841253 (= e!4636119 e!4636121)))

(declare-fun res!3118666 () Bool)

(assert (=> b!7841253 (=> (not res!3118666) (not e!4636121))))

(declare-fun lt!2678494 () Bool)

(assert (=> b!7841253 (= res!3118666 (not lt!2678494))))

(declare-fun b!7841254 () Bool)

(declare-fun e!4636124 () Bool)

(assert (=> b!7841254 (= e!4636124 (not (= (head!16003 s2!2463) (c!1441553 r2!3226))))))

(declare-fun b!7841256 () Bool)

(declare-fun res!3118665 () Bool)

(declare-fun e!4636123 () Bool)

(assert (=> b!7841256 (=> (not res!3118665) (not e!4636123))))

(assert (=> b!7841256 (= res!3118665 (not call!726715))))

(declare-fun b!7841257 () Bool)

(assert (=> b!7841257 (= e!4636121 e!4636124)))

(declare-fun res!3118669 () Bool)

(assert (=> b!7841257 (=> res!3118669 e!4636124)))

(assert (=> b!7841257 (= res!3118669 call!726715)))

(declare-fun b!7841258 () Bool)

(assert (=> b!7841258 (= e!4636123 (= (head!16003 s2!2463) (c!1441553 r2!3226)))))

(declare-fun b!7841259 () Bool)

(declare-fun e!4636122 () Bool)

(assert (=> b!7841259 (= e!4636122 (nullable!9316 r2!3226))))

(declare-fun b!7841260 () Bool)

(assert (=> b!7841260 (= e!4636120 (= lt!2678494 call!726715))))

(declare-fun b!7841261 () Bool)

(declare-fun res!3118668 () Bool)

(assert (=> b!7841261 (=> res!3118668 e!4636124)))

(assert (=> b!7841261 (= res!3118668 (not (isEmpty!42308 (tail!15544 s2!2463))))))

(declare-fun b!7841262 () Bool)

(declare-fun res!3118667 () Bool)

(assert (=> b!7841262 (=> res!3118667 e!4636119)))

(assert (=> b!7841262 (= res!3118667 e!4636123)))

(declare-fun res!3118670 () Bool)

(assert (=> b!7841262 (=> (not res!3118670) (not e!4636123))))

(assert (=> b!7841262 (= res!3118670 lt!2678494)))

(declare-fun b!7841255 () Bool)

(declare-fun res!3118664 () Bool)

(assert (=> b!7841255 (=> (not res!3118664) (not e!4636123))))

(assert (=> b!7841255 (= res!3118664 (isEmpty!42308 (tail!15544 s2!2463)))))

(declare-fun d!2352081 () Bool)

(assert (=> d!2352081 e!4636120))

(declare-fun c!1441586 () Bool)

(assert (=> d!2352081 (= c!1441586 (is-EmptyExpr!21026 r2!3226))))

(assert (=> d!2352081 (= lt!2678494 e!4636122)))

(declare-fun c!1441587 () Bool)

(assert (=> d!2352081 (= c!1441587 (isEmpty!42308 s2!2463))))

(assert (=> d!2352081 (validRegex!11440 r2!3226)))

(assert (=> d!2352081 (= (matchR!10480 r2!3226 s2!2463) lt!2678494)))

(declare-fun b!7841263 () Bool)

(assert (=> b!7841263 (= e!4636122 (matchR!10480 (derivativeStep!6273 r2!3226 (head!16003 s2!2463)) (tail!15544 s2!2463)))))

(declare-fun b!7841264 () Bool)

(assert (=> b!7841264 (= e!4636118 (not lt!2678494))))

(assert (= (and d!2352081 c!1441587) b!7841259))

(assert (= (and d!2352081 (not c!1441587)) b!7841263))

(assert (= (and d!2352081 c!1441586) b!7841260))

(assert (= (and d!2352081 (not c!1441586)) b!7841252))

(assert (= (and b!7841252 c!1441588) b!7841264))

(assert (= (and b!7841252 (not c!1441588)) b!7841251))

(assert (= (and b!7841251 (not res!3118671)) b!7841262))

(assert (= (and b!7841262 res!3118670) b!7841256))

(assert (= (and b!7841256 res!3118665) b!7841255))

(assert (= (and b!7841255 res!3118664) b!7841258))

(assert (= (and b!7841262 (not res!3118667)) b!7841253))

(assert (= (and b!7841253 res!3118666) b!7841257))

(assert (= (and b!7841257 (not res!3118669)) b!7841261))

(assert (= (and b!7841261 (not res!3118668)) b!7841254))

(assert (= (or b!7841260 b!7841256 b!7841257) bm!726710))

(declare-fun m!8253656 () Bool)

(assert (=> b!7841263 m!8253656))

(assert (=> b!7841263 m!8253656))

(declare-fun m!8253658 () Bool)

(assert (=> b!7841263 m!8253658))

(declare-fun m!8253660 () Bool)

(assert (=> b!7841263 m!8253660))

(assert (=> b!7841263 m!8253658))

(assert (=> b!7841263 m!8253660))

(declare-fun m!8253662 () Bool)

(assert (=> b!7841263 m!8253662))

(assert (=> b!7841261 m!8253660))

(assert (=> b!7841261 m!8253660))

(declare-fun m!8253664 () Bool)

(assert (=> b!7841261 m!8253664))

(declare-fun m!8253666 () Bool)

(assert (=> b!7841259 m!8253666))

(assert (=> b!7841254 m!8253656))

(assert (=> b!7841255 m!8253660))

(assert (=> b!7841255 m!8253660))

(assert (=> b!7841255 m!8253664))

(assert (=> b!7841258 m!8253656))

(declare-fun m!8253668 () Bool)

(assert (=> bm!726710 m!8253668))

(assert (=> d!2352081 m!8253668))

(assert (=> d!2352081 m!8253546))

(assert (=> b!7841029 d!2352081))

(declare-fun bm!726711 () Bool)

(declare-fun call!726716 () Bool)

(declare-fun call!726717 () Bool)

(assert (=> bm!726711 (= call!726716 call!726717)))

(declare-fun b!7841269 () Bool)

(declare-fun e!4636127 () Bool)

(assert (=> b!7841269 (= e!4636127 call!726716)))

(declare-fun d!2352083 () Bool)

(declare-fun res!3118672 () Bool)

(declare-fun e!4636130 () Bool)

(assert (=> d!2352083 (=> res!3118672 e!4636130)))

(assert (=> d!2352083 (= res!3118672 (is-ElementMatch!21026 r2!3226))))

(assert (=> d!2352083 (= (validRegex!11440 r2!3226) e!4636130)))

(declare-fun b!7841270 () Bool)

(declare-fun res!3118675 () Bool)

(declare-fun e!4636132 () Bool)

(assert (=> b!7841270 (=> res!3118675 e!4636132)))

(assert (=> b!7841270 (= res!3118675 (not (is-Concat!29871 r2!3226)))))

(declare-fun e!4636129 () Bool)

(assert (=> b!7841270 (= e!4636129 e!4636132)))

(declare-fun b!7841271 () Bool)

(declare-fun e!4636128 () Bool)

(assert (=> b!7841271 (= e!4636128 call!726716)))

(declare-fun bm!726712 () Bool)

(declare-fun call!726718 () Bool)

(declare-fun c!1441591 () Bool)

(assert (=> bm!726712 (= call!726718 (validRegex!11440 (ite c!1441591 (regOne!42565 r2!3226) (regOne!42564 r2!3226))))))

(declare-fun b!7841272 () Bool)

(assert (=> b!7841272 (= e!4636132 e!4636128)))

(declare-fun res!3118674 () Bool)

(assert (=> b!7841272 (=> (not res!3118674) (not e!4636128))))

(assert (=> b!7841272 (= res!3118674 call!726718)))

(declare-fun c!1441592 () Bool)

(declare-fun bm!726713 () Bool)

(assert (=> bm!726713 (= call!726717 (validRegex!11440 (ite c!1441592 (reg!21355 r2!3226) (ite c!1441591 (regTwo!42565 r2!3226) (regTwo!42564 r2!3226)))))))

(declare-fun b!7841273 () Bool)

(declare-fun e!4636131 () Bool)

(assert (=> b!7841273 (= e!4636130 e!4636131)))

(assert (=> b!7841273 (= c!1441592 (is-Star!21026 r2!3226))))

(declare-fun b!7841274 () Bool)

(declare-fun e!4636133 () Bool)

(assert (=> b!7841274 (= e!4636133 call!726717)))

(declare-fun b!7841275 () Bool)

(assert (=> b!7841275 (= e!4636131 e!4636133)))

(declare-fun res!3118673 () Bool)

(assert (=> b!7841275 (= res!3118673 (not (nullable!9316 (reg!21355 r2!3226))))))

(assert (=> b!7841275 (=> (not res!3118673) (not e!4636133))))

(declare-fun b!7841276 () Bool)

(declare-fun res!3118676 () Bool)

(assert (=> b!7841276 (=> (not res!3118676) (not e!4636127))))

(assert (=> b!7841276 (= res!3118676 call!726718)))

(assert (=> b!7841276 (= e!4636129 e!4636127)))

(declare-fun b!7841277 () Bool)

(assert (=> b!7841277 (= e!4636131 e!4636129)))

(assert (=> b!7841277 (= c!1441591 (is-Union!21026 r2!3226))))

(assert (= (and d!2352083 (not res!3118672)) b!7841273))

(assert (= (and b!7841273 c!1441592) b!7841275))

(assert (= (and b!7841273 (not c!1441592)) b!7841277))

(assert (= (and b!7841275 res!3118673) b!7841274))

(assert (= (and b!7841277 c!1441591) b!7841276))

(assert (= (and b!7841277 (not c!1441591)) b!7841270))

(assert (= (and b!7841276 res!3118676) b!7841269))

(assert (= (and b!7841270 (not res!3118675)) b!7841272))

(assert (= (and b!7841272 res!3118674) b!7841271))

(assert (= (or b!7841276 b!7841272) bm!726712))

(assert (= (or b!7841269 b!7841271) bm!726711))

(assert (= (or b!7841274 bm!726711) bm!726713))

(declare-fun m!8253670 () Bool)

(assert (=> bm!726712 m!8253670))

(declare-fun m!8253672 () Bool)

(assert (=> bm!726713 m!8253672))

(declare-fun m!8253674 () Bool)

(assert (=> b!7841275 m!8253674))

(assert (=> b!7841042 d!2352083))

(declare-fun bm!726714 () Bool)

(declare-fun call!726719 () Bool)

(assert (=> bm!726714 (= call!726719 (isEmpty!42308 (_2!38320 lt!2678464)))))

(declare-fun b!7841282 () Bool)

(declare-fun res!3118688 () Bool)

(declare-fun e!4636137 () Bool)

(assert (=> b!7841282 (=> res!3118688 e!4636137)))

(assert (=> b!7841282 (= res!3118688 (not (is-ElementMatch!21026 r2!3226)))))

(declare-fun e!4636136 () Bool)

(assert (=> b!7841282 (= e!4636136 e!4636137)))

(declare-fun b!7841283 () Bool)

(declare-fun e!4636138 () Bool)

(assert (=> b!7841283 (= e!4636138 e!4636136)))

(declare-fun c!1441595 () Bool)

(assert (=> b!7841283 (= c!1441595 (is-EmptyLang!21026 r2!3226))))

(declare-fun b!7841284 () Bool)

(declare-fun e!4636139 () Bool)

(assert (=> b!7841284 (= e!4636137 e!4636139)))

(declare-fun res!3118683 () Bool)

(assert (=> b!7841284 (=> (not res!3118683) (not e!4636139))))

(declare-fun lt!2678497 () Bool)

(assert (=> b!7841284 (= res!3118683 (not lt!2678497))))

(declare-fun b!7841285 () Bool)

(declare-fun e!4636142 () Bool)

(assert (=> b!7841285 (= e!4636142 (not (= (head!16003 (_2!38320 lt!2678464)) (c!1441553 r2!3226))))))

(declare-fun b!7841287 () Bool)

(declare-fun res!3118682 () Bool)

(declare-fun e!4636141 () Bool)

(assert (=> b!7841287 (=> (not res!3118682) (not e!4636141))))

(assert (=> b!7841287 (= res!3118682 (not call!726719))))

(declare-fun b!7841288 () Bool)

(assert (=> b!7841288 (= e!4636139 e!4636142)))

(declare-fun res!3118686 () Bool)

(assert (=> b!7841288 (=> res!3118686 e!4636142)))

(assert (=> b!7841288 (= res!3118686 call!726719)))

(declare-fun b!7841289 () Bool)

(assert (=> b!7841289 (= e!4636141 (= (head!16003 (_2!38320 lt!2678464)) (c!1441553 r2!3226)))))

(declare-fun b!7841290 () Bool)

(declare-fun e!4636140 () Bool)

(assert (=> b!7841290 (= e!4636140 (nullable!9316 r2!3226))))

(declare-fun b!7841291 () Bool)

(assert (=> b!7841291 (= e!4636138 (= lt!2678497 call!726719))))

(declare-fun b!7841292 () Bool)

(declare-fun res!3118685 () Bool)

(assert (=> b!7841292 (=> res!3118685 e!4636142)))

(assert (=> b!7841292 (= res!3118685 (not (isEmpty!42308 (tail!15544 (_2!38320 lt!2678464)))))))

(declare-fun b!7841293 () Bool)

(declare-fun res!3118684 () Bool)

(assert (=> b!7841293 (=> res!3118684 e!4636137)))

(assert (=> b!7841293 (= res!3118684 e!4636141)))

(declare-fun res!3118687 () Bool)

(assert (=> b!7841293 (=> (not res!3118687) (not e!4636141))))

(assert (=> b!7841293 (= res!3118687 lt!2678497)))

(declare-fun b!7841286 () Bool)

(declare-fun res!3118681 () Bool)

(assert (=> b!7841286 (=> (not res!3118681) (not e!4636141))))

(assert (=> b!7841286 (= res!3118681 (isEmpty!42308 (tail!15544 (_2!38320 lt!2678464))))))

(declare-fun d!2352085 () Bool)

(assert (=> d!2352085 e!4636138))

(declare-fun c!1441593 () Bool)

(assert (=> d!2352085 (= c!1441593 (is-EmptyExpr!21026 r2!3226))))

(assert (=> d!2352085 (= lt!2678497 e!4636140)))

(declare-fun c!1441594 () Bool)

(assert (=> d!2352085 (= c!1441594 (isEmpty!42308 (_2!38320 lt!2678464)))))

(assert (=> d!2352085 (validRegex!11440 r2!3226)))

(assert (=> d!2352085 (= (matchR!10480 r2!3226 (_2!38320 lt!2678464)) lt!2678497)))

(declare-fun b!7841294 () Bool)

(assert (=> b!7841294 (= e!4636140 (matchR!10480 (derivativeStep!6273 r2!3226 (head!16003 (_2!38320 lt!2678464))) (tail!15544 (_2!38320 lt!2678464))))))

(declare-fun b!7841295 () Bool)

(assert (=> b!7841295 (= e!4636136 (not lt!2678497))))

(assert (= (and d!2352085 c!1441594) b!7841290))

(assert (= (and d!2352085 (not c!1441594)) b!7841294))

(assert (= (and d!2352085 c!1441593) b!7841291))

(assert (= (and d!2352085 (not c!1441593)) b!7841283))

(assert (= (and b!7841283 c!1441595) b!7841295))

(assert (= (and b!7841283 (not c!1441595)) b!7841282))

(assert (= (and b!7841282 (not res!3118688)) b!7841293))

(assert (= (and b!7841293 res!3118687) b!7841287))

(assert (= (and b!7841287 res!3118682) b!7841286))

(assert (= (and b!7841286 res!3118681) b!7841289))

(assert (= (and b!7841293 (not res!3118684)) b!7841284))

(assert (= (and b!7841284 res!3118683) b!7841288))

(assert (= (and b!7841288 (not res!3118686)) b!7841292))

(assert (= (and b!7841292 (not res!3118685)) b!7841285))

(assert (= (or b!7841291 b!7841287 b!7841288) bm!726714))

(declare-fun m!8253676 () Bool)

(assert (=> b!7841294 m!8253676))

(assert (=> b!7841294 m!8253676))

(declare-fun m!8253678 () Bool)

(assert (=> b!7841294 m!8253678))

(declare-fun m!8253680 () Bool)

(assert (=> b!7841294 m!8253680))

(assert (=> b!7841294 m!8253678))

(assert (=> b!7841294 m!8253680))

(declare-fun m!8253682 () Bool)

(assert (=> b!7841294 m!8253682))

(assert (=> b!7841292 m!8253680))

(assert (=> b!7841292 m!8253680))

(declare-fun m!8253684 () Bool)

(assert (=> b!7841292 m!8253684))

(assert (=> b!7841290 m!8253666))

(assert (=> b!7841285 m!8253676))

(assert (=> b!7841286 m!8253680))

(assert (=> b!7841286 m!8253680))

(assert (=> b!7841286 m!8253684))

(assert (=> b!7841289 m!8253676))

(declare-fun m!8253686 () Bool)

(assert (=> bm!726714 m!8253686))

(assert (=> d!2352085 m!8253686))

(assert (=> d!2352085 m!8253546))

(assert (=> b!7841026 d!2352085))

(declare-fun b!7841296 () Bool)

(declare-fun e!4636143 () List!73863)

(assert (=> b!7841296 (= e!4636143 (t!388598 s2!2463))))

(declare-fun b!7841297 () Bool)

(assert (=> b!7841297 (= e!4636143 (Cons!73739 (h!80187 lt!2678466) (++!18060 (t!388598 lt!2678466) (t!388598 s2!2463))))))

(declare-fun b!7841298 () Bool)

(declare-fun res!3118689 () Bool)

(declare-fun e!4636144 () Bool)

(assert (=> b!7841298 (=> (not res!3118689) (not e!4636144))))

(declare-fun lt!2678498 () List!73863)

(assert (=> b!7841298 (= res!3118689 (= (size!42788 lt!2678498) (+ (size!42788 lt!2678466) (size!42788 (t!388598 s2!2463)))))))

(declare-fun b!7841299 () Bool)

(assert (=> b!7841299 (= e!4636144 (or (not (= (t!388598 s2!2463) Nil!73739)) (= lt!2678498 lt!2678466)))))

(declare-fun d!2352087 () Bool)

(assert (=> d!2352087 e!4636144))

(declare-fun res!3118690 () Bool)

(assert (=> d!2352087 (=> (not res!3118690) (not e!4636144))))

(assert (=> d!2352087 (= res!3118690 (= (content!15657 lt!2678498) (set.union (content!15657 lt!2678466) (content!15657 (t!388598 s2!2463)))))))

(assert (=> d!2352087 (= lt!2678498 e!4636143)))

(declare-fun c!1441596 () Bool)

(assert (=> d!2352087 (= c!1441596 (is-Nil!73739 lt!2678466))))

(assert (=> d!2352087 (= (++!18060 lt!2678466 (t!388598 s2!2463)) lt!2678498)))

(assert (= (and d!2352087 c!1441596) b!7841296))

(assert (= (and d!2352087 (not c!1441596)) b!7841297))

(assert (= (and d!2352087 res!3118690) b!7841298))

(assert (= (and b!7841298 res!3118689) b!7841299))

(declare-fun m!8253688 () Bool)

(assert (=> b!7841297 m!8253688))

(declare-fun m!8253690 () Bool)

(assert (=> b!7841298 m!8253690))

(declare-fun m!8253692 () Bool)

(assert (=> b!7841298 m!8253692))

(declare-fun m!8253694 () Bool)

(assert (=> b!7841298 m!8253694))

(declare-fun m!8253696 () Bool)

(assert (=> d!2352087 m!8253696))

(declare-fun m!8253698 () Bool)

(assert (=> d!2352087 m!8253698))

(declare-fun m!8253700 () Bool)

(assert (=> d!2352087 m!8253700))

(assert (=> b!7841036 d!2352087))

(declare-fun b!7841300 () Bool)

(declare-fun e!4636145 () List!73863)

(assert (=> b!7841300 (= e!4636145 (Cons!73739 (h!80187 s2!2463) Nil!73739))))

(declare-fun b!7841301 () Bool)

(assert (=> b!7841301 (= e!4636145 (Cons!73739 (h!80187 s1!2717) (++!18060 (t!388598 s1!2717) (Cons!73739 (h!80187 s2!2463) Nil!73739))))))

(declare-fun b!7841302 () Bool)

(declare-fun res!3118691 () Bool)

(declare-fun e!4636146 () Bool)

(assert (=> b!7841302 (=> (not res!3118691) (not e!4636146))))

(declare-fun lt!2678499 () List!73863)

(assert (=> b!7841302 (= res!3118691 (= (size!42788 lt!2678499) (+ (size!42788 s1!2717) (size!42788 (Cons!73739 (h!80187 s2!2463) Nil!73739)))))))

(declare-fun b!7841303 () Bool)

(assert (=> b!7841303 (= e!4636146 (or (not (= (Cons!73739 (h!80187 s2!2463) Nil!73739) Nil!73739)) (= lt!2678499 s1!2717)))))

(declare-fun d!2352089 () Bool)

(assert (=> d!2352089 e!4636146))

(declare-fun res!3118692 () Bool)

(assert (=> d!2352089 (=> (not res!3118692) (not e!4636146))))

(assert (=> d!2352089 (= res!3118692 (= (content!15657 lt!2678499) (set.union (content!15657 s1!2717) (content!15657 (Cons!73739 (h!80187 s2!2463) Nil!73739)))))))

(assert (=> d!2352089 (= lt!2678499 e!4636145)))

(declare-fun c!1441597 () Bool)

(assert (=> d!2352089 (= c!1441597 (is-Nil!73739 s1!2717))))

(assert (=> d!2352089 (= (++!18060 s1!2717 (Cons!73739 (h!80187 s2!2463) Nil!73739)) lt!2678499)))

(assert (= (and d!2352089 c!1441597) b!7841300))

(assert (= (and d!2352089 (not c!1441597)) b!7841301))

(assert (= (and d!2352089 res!3118692) b!7841302))

(assert (= (and b!7841302 res!3118691) b!7841303))

(declare-fun m!8253702 () Bool)

(assert (=> b!7841301 m!8253702))

(declare-fun m!8253704 () Bool)

(assert (=> b!7841302 m!8253704))

(assert (=> b!7841302 m!8253592))

(declare-fun m!8253706 () Bool)

(assert (=> b!7841302 m!8253706))

(declare-fun m!8253708 () Bool)

(assert (=> d!2352089 m!8253708))

(assert (=> d!2352089 m!8253598))

(declare-fun m!8253710 () Bool)

(assert (=> d!2352089 m!8253710))

(assert (=> b!7841036 d!2352089))

(declare-fun d!2352091 () Bool)

(declare-fun isEmpty!42310 (Option!17811) Bool)

(assert (=> d!2352091 (= (isDefined!14409 lt!2678467) (not (isEmpty!42310 lt!2678467)))))

(declare-fun bs!1966962 () Bool)

(assert (= bs!1966962 d!2352091))

(declare-fun m!8253712 () Bool)

(assert (=> bs!1966962 m!8253712))

(assert (=> b!7841036 d!2352091))

(declare-fun d!2352093 () Bool)

(assert (=> d!2352093 (= (++!18060 (++!18060 s1!2717 (Cons!73739 (h!80187 s2!2463) Nil!73739)) (t!388598 s2!2463)) s!10212)))

(declare-fun lt!2678504 () Unit!168834)

(declare-fun choose!59620 (List!73863 C!42378 List!73863 List!73863) Unit!168834)

(assert (=> d!2352093 (= lt!2678504 (choose!59620 s1!2717 (h!80187 s2!2463) (t!388598 s2!2463) s!10212))))

(assert (=> d!2352093 (= (++!18060 s1!2717 (Cons!73739 (h!80187 s2!2463) (t!388598 s2!2463))) s!10212)))

(assert (=> d!2352093 (= (lemmaMoveElementToOtherListKeepsConcatEq!3463 s1!2717 (h!80187 s2!2463) (t!388598 s2!2463) s!10212) lt!2678504)))

(declare-fun bs!1966963 () Bool)

(assert (= bs!1966963 d!2352093))

(assert (=> bs!1966963 m!8253536))

(assert (=> bs!1966963 m!8253536))

(declare-fun m!8253728 () Bool)

(assert (=> bs!1966963 m!8253728))

(declare-fun m!8253730 () Bool)

(assert (=> bs!1966963 m!8253730))

(declare-fun m!8253732 () Bool)

(assert (=> bs!1966963 m!8253732))

(assert (=> b!7841036 d!2352093))

(declare-fun b!7841358 () Bool)

(declare-fun res!3118725 () Bool)

(declare-fun e!4636180 () Bool)

(assert (=> b!7841358 (=> (not res!3118725) (not e!4636180))))

(declare-fun lt!2678512 () Option!17811)

(assert (=> b!7841358 (= res!3118725 (matchR!10480 r1!3326 (_1!38320 (get!26439 lt!2678512))))))

(declare-fun b!7841359 () Bool)

(declare-fun e!4636182 () Option!17811)

(assert (=> b!7841359 (= e!4636182 (Some!17810 (tuple2!70035 lt!2678466 (t!388598 s2!2463))))))

(declare-fun b!7841360 () Bool)

(declare-fun e!4636184 () Option!17811)

(assert (=> b!7841360 (= e!4636184 None!17810)))

(declare-fun d!2352097 () Bool)

(declare-fun e!4636181 () Bool)

(assert (=> d!2352097 e!4636181))

(declare-fun res!3118727 () Bool)

(assert (=> d!2352097 (=> res!3118727 e!4636181)))

(assert (=> d!2352097 (= res!3118727 e!4636180)))

(declare-fun res!3118723 () Bool)

(assert (=> d!2352097 (=> (not res!3118723) (not e!4636180))))

(assert (=> d!2352097 (= res!3118723 (isDefined!14409 lt!2678512))))

(assert (=> d!2352097 (= lt!2678512 e!4636182)))

(declare-fun c!1441610 () Bool)

(declare-fun e!4636183 () Bool)

(assert (=> d!2352097 (= c!1441610 e!4636183)))

(declare-fun res!3118726 () Bool)

(assert (=> d!2352097 (=> (not res!3118726) (not e!4636183))))

(assert (=> d!2352097 (= res!3118726 (matchR!10480 r1!3326 lt!2678466))))

(assert (=> d!2352097 (validRegex!11440 r1!3326)))

(assert (=> d!2352097 (= (findConcatSeparation!3829 r1!3326 r2!3226 lt!2678466 (t!388598 s2!2463) s!10212) lt!2678512)))

(declare-fun b!7841361 () Bool)

(assert (=> b!7841361 (= e!4636183 (matchR!10480 r2!3226 (t!388598 s2!2463)))))

(declare-fun b!7841362 () Bool)

(declare-fun res!3118724 () Bool)

(assert (=> b!7841362 (=> (not res!3118724) (not e!4636180))))

(assert (=> b!7841362 (= res!3118724 (matchR!10480 r2!3226 (_2!38320 (get!26439 lt!2678512))))))

(declare-fun b!7841363 () Bool)

(declare-fun lt!2678511 () Unit!168834)

(declare-fun lt!2678513 () Unit!168834)

(assert (=> b!7841363 (= lt!2678511 lt!2678513)))

(assert (=> b!7841363 (= (++!18060 (++!18060 lt!2678466 (Cons!73739 (h!80187 (t!388598 s2!2463)) Nil!73739)) (t!388598 (t!388598 s2!2463))) s!10212)))

(assert (=> b!7841363 (= lt!2678513 (lemmaMoveElementToOtherListKeepsConcatEq!3463 lt!2678466 (h!80187 (t!388598 s2!2463)) (t!388598 (t!388598 s2!2463)) s!10212))))

(assert (=> b!7841363 (= e!4636184 (findConcatSeparation!3829 r1!3326 r2!3226 (++!18060 lt!2678466 (Cons!73739 (h!80187 (t!388598 s2!2463)) Nil!73739)) (t!388598 (t!388598 s2!2463)) s!10212))))

(declare-fun b!7841364 () Bool)

(assert (=> b!7841364 (= e!4636180 (= (++!18060 (_1!38320 (get!26439 lt!2678512)) (_2!38320 (get!26439 lt!2678512))) s!10212))))

(declare-fun b!7841365 () Bool)

(assert (=> b!7841365 (= e!4636181 (not (isDefined!14409 lt!2678512)))))

(declare-fun b!7841366 () Bool)

(assert (=> b!7841366 (= e!4636182 e!4636184)))

(declare-fun c!1441611 () Bool)

(assert (=> b!7841366 (= c!1441611 (is-Nil!73739 (t!388598 s2!2463)))))

(assert (= (and d!2352097 res!3118726) b!7841361))

(assert (= (and d!2352097 c!1441610) b!7841359))

(assert (= (and d!2352097 (not c!1441610)) b!7841366))

(assert (= (and b!7841366 c!1441611) b!7841360))

(assert (= (and b!7841366 (not c!1441611)) b!7841363))

(assert (= (and d!2352097 res!3118723) b!7841358))

(assert (= (and b!7841358 res!3118725) b!7841362))

(assert (= (and b!7841362 res!3118724) b!7841364))

(assert (= (and d!2352097 (not res!3118727)) b!7841365))

(declare-fun m!8253746 () Bool)

(assert (=> d!2352097 m!8253746))

(declare-fun m!8253748 () Bool)

(assert (=> d!2352097 m!8253748))

(assert (=> d!2352097 m!8253552))

(declare-fun m!8253750 () Bool)

(assert (=> b!7841361 m!8253750))

(declare-fun m!8253752 () Bool)

(assert (=> b!7841362 m!8253752))

(declare-fun m!8253754 () Bool)

(assert (=> b!7841362 m!8253754))

(assert (=> b!7841358 m!8253752))

(declare-fun m!8253756 () Bool)

(assert (=> b!7841358 m!8253756))

(assert (=> b!7841364 m!8253752))

(declare-fun m!8253758 () Bool)

(assert (=> b!7841364 m!8253758))

(declare-fun m!8253760 () Bool)

(assert (=> b!7841363 m!8253760))

(assert (=> b!7841363 m!8253760))

(declare-fun m!8253762 () Bool)

(assert (=> b!7841363 m!8253762))

(declare-fun m!8253764 () Bool)

(assert (=> b!7841363 m!8253764))

(assert (=> b!7841363 m!8253760))

(declare-fun m!8253766 () Bool)

(assert (=> b!7841363 m!8253766))

(assert (=> b!7841365 m!8253746))

(assert (=> b!7841036 d!2352097))

(declare-fun e!4636201 () Bool)

(assert (=> b!7841038 (= tp!2320768 e!4636201)))

(declare-fun b!7841400 () Bool)

(assert (=> b!7841400 (= e!4636201 tp_is_empty!52407)))

(declare-fun b!7841401 () Bool)

(declare-fun tp!2320821 () Bool)

(declare-fun tp!2320820 () Bool)

(assert (=> b!7841401 (= e!4636201 (and tp!2320821 tp!2320820))))

(declare-fun b!7841403 () Bool)

(declare-fun tp!2320819 () Bool)

(declare-fun tp!2320818 () Bool)

(assert (=> b!7841403 (= e!4636201 (and tp!2320819 tp!2320818))))

(declare-fun b!7841402 () Bool)

(declare-fun tp!2320822 () Bool)

(assert (=> b!7841402 (= e!4636201 tp!2320822)))

(assert (= (and b!7841038 (is-ElementMatch!21026 (regOne!42564 r1!3326))) b!7841400))

(assert (= (and b!7841038 (is-Concat!29871 (regOne!42564 r1!3326))) b!7841401))

(assert (= (and b!7841038 (is-Star!21026 (regOne!42564 r1!3326))) b!7841402))

(assert (= (and b!7841038 (is-Union!21026 (regOne!42564 r1!3326))) b!7841403))

(declare-fun e!4636202 () Bool)

(assert (=> b!7841038 (= tp!2320759 e!4636202)))

(declare-fun b!7841404 () Bool)

(assert (=> b!7841404 (= e!4636202 tp_is_empty!52407)))

(declare-fun b!7841405 () Bool)

(declare-fun tp!2320826 () Bool)

(declare-fun tp!2320825 () Bool)

(assert (=> b!7841405 (= e!4636202 (and tp!2320826 tp!2320825))))

(declare-fun b!7841407 () Bool)

(declare-fun tp!2320824 () Bool)

(declare-fun tp!2320823 () Bool)

(assert (=> b!7841407 (= e!4636202 (and tp!2320824 tp!2320823))))

(declare-fun b!7841406 () Bool)

(declare-fun tp!2320827 () Bool)

(assert (=> b!7841406 (= e!4636202 tp!2320827)))

(assert (= (and b!7841038 (is-ElementMatch!21026 (regTwo!42564 r1!3326))) b!7841404))

(assert (= (and b!7841038 (is-Concat!29871 (regTwo!42564 r1!3326))) b!7841405))

(assert (= (and b!7841038 (is-Star!21026 (regTwo!42564 r1!3326))) b!7841406))

(assert (= (and b!7841038 (is-Union!21026 (regTwo!42564 r1!3326))) b!7841407))

(declare-fun b!7841412 () Bool)

(declare-fun e!4636205 () Bool)

(declare-fun tp!2320830 () Bool)

(assert (=> b!7841412 (= e!4636205 (and tp_is_empty!52407 tp!2320830))))

(assert (=> b!7841043 (= tp!2320767 e!4636205)))

(assert (= (and b!7841043 (is-Cons!73739 (t!388598 s2!2463))) b!7841412))

(declare-fun b!7841413 () Bool)

(declare-fun e!4636206 () Bool)

(declare-fun tp!2320831 () Bool)

(assert (=> b!7841413 (= e!4636206 (and tp_is_empty!52407 tp!2320831))))

(assert (=> b!7841039 (= tp!2320763 e!4636206)))

(assert (= (and b!7841039 (is-Cons!73739 (t!388598 s1!2717))) b!7841413))

(declare-fun e!4636207 () Bool)

(assert (=> b!7841033 (= tp!2320761 e!4636207)))

(declare-fun b!7841414 () Bool)

(assert (=> b!7841414 (= e!4636207 tp_is_empty!52407)))

(declare-fun b!7841415 () Bool)

(declare-fun tp!2320835 () Bool)

(declare-fun tp!2320834 () Bool)

(assert (=> b!7841415 (= e!4636207 (and tp!2320835 tp!2320834))))

(declare-fun b!7841417 () Bool)

(declare-fun tp!2320833 () Bool)

(declare-fun tp!2320832 () Bool)

(assert (=> b!7841417 (= e!4636207 (and tp!2320833 tp!2320832))))

(declare-fun b!7841416 () Bool)

(declare-fun tp!2320836 () Bool)

(assert (=> b!7841416 (= e!4636207 tp!2320836)))

(assert (= (and b!7841033 (is-ElementMatch!21026 (reg!21355 r1!3326))) b!7841414))

(assert (= (and b!7841033 (is-Concat!29871 (reg!21355 r1!3326))) b!7841415))

(assert (= (and b!7841033 (is-Star!21026 (reg!21355 r1!3326))) b!7841416))

(assert (= (and b!7841033 (is-Union!21026 (reg!21355 r1!3326))) b!7841417))

(declare-fun b!7841418 () Bool)

(declare-fun e!4636208 () Bool)

(declare-fun tp!2320837 () Bool)

(assert (=> b!7841418 (= e!4636208 (and tp_is_empty!52407 tp!2320837))))

(assert (=> b!7841046 (= tp!2320760 e!4636208)))

(assert (= (and b!7841046 (is-Cons!73739 (t!388598 s!10212))) b!7841418))

(declare-fun e!4636209 () Bool)

(assert (=> b!7841030 (= tp!2320756 e!4636209)))

(declare-fun b!7841419 () Bool)

(assert (=> b!7841419 (= e!4636209 tp_is_empty!52407)))

(declare-fun b!7841420 () Bool)

(declare-fun tp!2320841 () Bool)

(declare-fun tp!2320840 () Bool)

(assert (=> b!7841420 (= e!4636209 (and tp!2320841 tp!2320840))))

(declare-fun b!7841422 () Bool)

(declare-fun tp!2320839 () Bool)

(declare-fun tp!2320838 () Bool)

(assert (=> b!7841422 (= e!4636209 (and tp!2320839 tp!2320838))))

(declare-fun b!7841421 () Bool)

(declare-fun tp!2320842 () Bool)

(assert (=> b!7841421 (= e!4636209 tp!2320842)))

(assert (= (and b!7841030 (is-ElementMatch!21026 (regOne!42565 r2!3226))) b!7841419))

(assert (= (and b!7841030 (is-Concat!29871 (regOne!42565 r2!3226))) b!7841420))

(assert (= (and b!7841030 (is-Star!21026 (regOne!42565 r2!3226))) b!7841421))

(assert (= (and b!7841030 (is-Union!21026 (regOne!42565 r2!3226))) b!7841422))

(declare-fun e!4636210 () Bool)

(assert (=> b!7841030 (= tp!2320758 e!4636210)))

(declare-fun b!7841423 () Bool)

(assert (=> b!7841423 (= e!4636210 tp_is_empty!52407)))

(declare-fun b!7841424 () Bool)

(declare-fun tp!2320846 () Bool)

(declare-fun tp!2320845 () Bool)

(assert (=> b!7841424 (= e!4636210 (and tp!2320846 tp!2320845))))

(declare-fun b!7841426 () Bool)

(declare-fun tp!2320844 () Bool)

(declare-fun tp!2320843 () Bool)

(assert (=> b!7841426 (= e!4636210 (and tp!2320844 tp!2320843))))

(declare-fun b!7841425 () Bool)

(declare-fun tp!2320847 () Bool)

(assert (=> b!7841425 (= e!4636210 tp!2320847)))

(assert (= (and b!7841030 (is-ElementMatch!21026 (regTwo!42565 r2!3226))) b!7841423))

(assert (= (and b!7841030 (is-Concat!29871 (regTwo!42565 r2!3226))) b!7841424))

(assert (= (and b!7841030 (is-Star!21026 (regTwo!42565 r2!3226))) b!7841425))

(assert (= (and b!7841030 (is-Union!21026 (regTwo!42565 r2!3226))) b!7841426))

(declare-fun e!4636211 () Bool)

(assert (=> b!7841040 (= tp!2320757 e!4636211)))

(declare-fun b!7841427 () Bool)

(assert (=> b!7841427 (= e!4636211 tp_is_empty!52407)))

(declare-fun b!7841428 () Bool)

(declare-fun tp!2320851 () Bool)

(declare-fun tp!2320850 () Bool)

(assert (=> b!7841428 (= e!4636211 (and tp!2320851 tp!2320850))))

(declare-fun b!7841430 () Bool)

(declare-fun tp!2320849 () Bool)

(declare-fun tp!2320848 () Bool)

(assert (=> b!7841430 (= e!4636211 (and tp!2320849 tp!2320848))))

(declare-fun b!7841429 () Bool)

(declare-fun tp!2320852 () Bool)

(assert (=> b!7841429 (= e!4636211 tp!2320852)))

(assert (= (and b!7841040 (is-ElementMatch!21026 (reg!21355 r2!3226))) b!7841427))

(assert (= (and b!7841040 (is-Concat!29871 (reg!21355 r2!3226))) b!7841428))

(assert (= (and b!7841040 (is-Star!21026 (reg!21355 r2!3226))) b!7841429))

(assert (= (and b!7841040 (is-Union!21026 (reg!21355 r2!3226))) b!7841430))

(declare-fun e!4636212 () Bool)

(assert (=> b!7841045 (= tp!2320765 e!4636212)))

(declare-fun b!7841431 () Bool)

(assert (=> b!7841431 (= e!4636212 tp_is_empty!52407)))

(declare-fun b!7841432 () Bool)

(declare-fun tp!2320856 () Bool)

(declare-fun tp!2320855 () Bool)

(assert (=> b!7841432 (= e!4636212 (and tp!2320856 tp!2320855))))

(declare-fun b!7841434 () Bool)

(declare-fun tp!2320854 () Bool)

(declare-fun tp!2320853 () Bool)

(assert (=> b!7841434 (= e!4636212 (and tp!2320854 tp!2320853))))

(declare-fun b!7841433 () Bool)

(declare-fun tp!2320857 () Bool)

(assert (=> b!7841433 (= e!4636212 tp!2320857)))

(assert (= (and b!7841045 (is-ElementMatch!21026 (regOne!42565 r1!3326))) b!7841431))

(assert (= (and b!7841045 (is-Concat!29871 (regOne!42565 r1!3326))) b!7841432))

(assert (= (and b!7841045 (is-Star!21026 (regOne!42565 r1!3326))) b!7841433))

(assert (= (and b!7841045 (is-Union!21026 (regOne!42565 r1!3326))) b!7841434))

(declare-fun e!4636213 () Bool)

(assert (=> b!7841045 (= tp!2320764 e!4636213)))

(declare-fun b!7841435 () Bool)

(assert (=> b!7841435 (= e!4636213 tp_is_empty!52407)))

(declare-fun b!7841436 () Bool)

(declare-fun tp!2320861 () Bool)

(declare-fun tp!2320860 () Bool)

(assert (=> b!7841436 (= e!4636213 (and tp!2320861 tp!2320860))))

(declare-fun b!7841438 () Bool)

(declare-fun tp!2320859 () Bool)

(declare-fun tp!2320858 () Bool)

(assert (=> b!7841438 (= e!4636213 (and tp!2320859 tp!2320858))))

(declare-fun b!7841437 () Bool)

(declare-fun tp!2320862 () Bool)

(assert (=> b!7841437 (= e!4636213 tp!2320862)))

(assert (= (and b!7841045 (is-ElementMatch!21026 (regTwo!42565 r1!3326))) b!7841435))

(assert (= (and b!7841045 (is-Concat!29871 (regTwo!42565 r1!3326))) b!7841436))

(assert (= (and b!7841045 (is-Star!21026 (regTwo!42565 r1!3326))) b!7841437))

(assert (= (and b!7841045 (is-Union!21026 (regTwo!42565 r1!3326))) b!7841438))

(declare-fun e!4636214 () Bool)

(assert (=> b!7841031 (= tp!2320766 e!4636214)))

(declare-fun b!7841439 () Bool)

(assert (=> b!7841439 (= e!4636214 tp_is_empty!52407)))

(declare-fun b!7841440 () Bool)

(declare-fun tp!2320866 () Bool)

(declare-fun tp!2320865 () Bool)

(assert (=> b!7841440 (= e!4636214 (and tp!2320866 tp!2320865))))

(declare-fun b!7841442 () Bool)

(declare-fun tp!2320864 () Bool)

(declare-fun tp!2320863 () Bool)

(assert (=> b!7841442 (= e!4636214 (and tp!2320864 tp!2320863))))

(declare-fun b!7841441 () Bool)

(declare-fun tp!2320867 () Bool)

(assert (=> b!7841441 (= e!4636214 tp!2320867)))

(assert (= (and b!7841031 (is-ElementMatch!21026 (regOne!42564 r2!3226))) b!7841439))

(assert (= (and b!7841031 (is-Concat!29871 (regOne!42564 r2!3226))) b!7841440))

(assert (= (and b!7841031 (is-Star!21026 (regOne!42564 r2!3226))) b!7841441))

(assert (= (and b!7841031 (is-Union!21026 (regOne!42564 r2!3226))) b!7841442))

(declare-fun e!4636215 () Bool)

(assert (=> b!7841031 (= tp!2320762 e!4636215)))

(declare-fun b!7841443 () Bool)

(assert (=> b!7841443 (= e!4636215 tp_is_empty!52407)))

(declare-fun b!7841444 () Bool)

(declare-fun tp!2320871 () Bool)

(declare-fun tp!2320870 () Bool)

(assert (=> b!7841444 (= e!4636215 (and tp!2320871 tp!2320870))))

(declare-fun b!7841446 () Bool)

(declare-fun tp!2320869 () Bool)

(declare-fun tp!2320868 () Bool)

(assert (=> b!7841446 (= e!4636215 (and tp!2320869 tp!2320868))))

(declare-fun b!7841445 () Bool)

(declare-fun tp!2320872 () Bool)

(assert (=> b!7841445 (= e!4636215 tp!2320872)))

(assert (= (and b!7841031 (is-ElementMatch!21026 (regTwo!42564 r2!3226))) b!7841443))

(assert (= (and b!7841031 (is-Concat!29871 (regTwo!42564 r2!3226))) b!7841444))

(assert (= (and b!7841031 (is-Star!21026 (regTwo!42564 r2!3226))) b!7841445))

(assert (= (and b!7841031 (is-Union!21026 (regTwo!42564 r2!3226))) b!7841446))

(push 1)

(assert (not bm!726710))

(assert (not b!7841362))

(assert (not b!7841146))

(assert (not b!7841412))

(assert (not b!7841235))

(assert (not b!7841240))

(assert (not bm!726709))

(assert (not b!7841297))

(assert (not b!7841259))

(assert (not b!7841405))

(assert (not d!2352071))

(assert (not b!7841437))

(assert (not d!2352085))

(assert (not b!7841402))

(assert (not b!7841244))

(assert (not d!2352091))

(assert (not d!2352087))

(assert (not b!7841263))

(assert (not b!7841227))

(assert (not b!7841425))

(assert (not b!7841294))

(assert (not b!7841178))

(assert (not b!7841406))

(assert (not b!7841446))

(assert (not b!7841421))

(assert (not b!7841420))

(assert (not b!7841442))

(assert (not d!2352081))

(assert (not b!7841403))

(assert (not b!7841231))

(assert (not b!7841436))

(assert (not b!7841413))

(assert (not b!7841292))

(assert (not b!7841245))

(assert (not b!7841233))

(assert (not b!7841415))

(assert (not b!7841179))

(assert (not b!7841255))

(assert (not b!7841428))

(assert (not bm!726714))

(assert (not b!7841358))

(assert (not b!7841424))

(assert (not b!7841444))

(assert (not b!7841433))

(assert (not b!7841174))

(assert (not d!2352073))

(assert (not b!7841445))

(assert (not b!7841361))

(assert (not b!7841258))

(assert (not b!7841441))

(assert (not b!7841302))

(assert (not b!7841363))

(assert (not b!7841429))

(assert (not b!7841275))

(assert (not b!7841289))

(assert (not b!7841175))

(assert (not b!7841290))

(assert (not b!7841301))

(assert (not bm!726702))

(assert (not b!7841254))

(assert (not b!7841430))

(assert (not bm!726713))

(assert (not b!7841434))

(assert (not d!2352079))

(assert (not b!7841286))

(assert (not b!7841426))

(assert (not b!7841247))

(assert (not b!7841230))

(assert (not d!2352093))

(assert (not b!7841226))

(assert (not b!7841438))

(assert (not bm!726708))

(assert (not b!7841417))

(assert (not bm!726701))

(assert (not b!7841241))

(assert (not b!7841298))

(assert (not b!7841249))

(assert (not d!2352089))

(assert tp_is_empty!52407)

(assert (not b!7841261))

(assert (not bm!726712))

(assert (not b!7841401))

(assert (not b!7841285))

(assert (not b!7841418))

(assert (not b!7841365))

(assert (not b!7841416))

(assert (not b!7841440))

(assert (not b!7841432))

(assert (not d!2352069))

(assert (not b!7841407))

(assert (not b!7841364))

(assert (not d!2352097))

(assert (not b!7841422))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

