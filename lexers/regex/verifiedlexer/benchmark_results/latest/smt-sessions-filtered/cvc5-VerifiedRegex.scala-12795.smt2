; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707626 () Bool)

(assert start!707626)

(assert (=> start!707626 true))

(declare-fun b!7261059 () Bool)

(declare-fun e!4354098 () Bool)

(declare-fun tp!2038983 () Bool)

(assert (=> b!7261059 (= e!4354098 tp!2038983)))

(declare-fun b!7261060 () Bool)

(declare-fun e!4354096 () Bool)

(declare-datatypes ((C!37670 0))(
  ( (C!37671 (val!28783 Int)) )
))
(declare-datatypes ((Regex!18698 0))(
  ( (ElementMatch!18698 (c!1350836 C!37670)) (Concat!27543 (regOne!37908 Regex!18698) (regTwo!37908 Regex!18698)) (EmptyExpr!18698) (Star!18698 (reg!19027 Regex!18698)) (EmptyLang!18698) (Union!18698 (regOne!37909 Regex!18698) (regTwo!37909 Regex!18698)) )
))
(declare-datatypes ((List!70673 0))(
  ( (Nil!70549) (Cons!70549 (h!76997 Regex!18698) (t!384739 List!70673)) )
))
(declare-datatypes ((Context!15276 0))(
  ( (Context!15277 (exprs!8138 List!70673)) )
))
(declare-fun lt!2590819 () (Set Context!15276))

(declare-datatypes ((List!70674 0))(
  ( (Nil!70550) (Cons!70550 (h!76998 C!37670) (t!384740 List!70674)) )
))
(declare-fun s!7912 () List!70674)

(declare-fun matchZipper!3606 ((Set Context!15276) List!70674) Bool)

(assert (=> b!7261060 (= e!4354096 (matchZipper!3606 lt!2590819 s!7912))))

(declare-fun b!7261061 () Bool)

(declare-fun e!4354100 () Bool)

(declare-fun tp_is_empty!46861 () Bool)

(declare-fun tp!2038982 () Bool)

(assert (=> b!7261061 (= e!4354100 (and tp_is_empty!46861 tp!2038982))))

(declare-fun res!2944137 () Bool)

(declare-fun e!4354095 () Bool)

(assert (=> start!707626 (=> (not res!2944137) (not e!4354095))))

(declare-datatypes ((List!70675 0))(
  ( (Nil!70551) (Cons!70551 (h!76999 Context!15276) (t!384741 List!70675)) )
))
(declare-fun zl!1664 () List!70675)

(declare-fun lambda!446602 () Int)

(declare-fun exists!4462 (List!70675 Int) Bool)

(assert (=> start!707626 (= res!2944137 (exists!4462 zl!1664 lambda!446602))))

(assert (=> start!707626 e!4354095))

(declare-fun e!4354097 () Bool)

(assert (=> start!707626 e!4354097))

(assert (=> start!707626 e!4354100))

(declare-fun b!7261062 () Bool)

(declare-fun e!4354099 () Bool)

(assert (=> b!7261062 (= e!4354099 (exists!4462 (t!384741 zl!1664) lambda!446602))))

(declare-fun b!7261063 () Bool)

(declare-fun res!2944140 () Bool)

(assert (=> b!7261063 (=> (not res!2944140) (not e!4354095))))

(assert (=> b!7261063 (= res!2944140 (is-Cons!70551 zl!1664))))

(declare-fun b!7261064 () Bool)

(assert (=> b!7261064 (= e!4354095 (not e!4354099))))

(declare-fun res!2944139 () Bool)

(assert (=> b!7261064 (=> res!2944139 e!4354099)))

(declare-fun lt!2590820 () Bool)

(assert (=> b!7261064 (= res!2944139 lt!2590820)))

(declare-fun lt!2590818 () (Set Context!15276))

(assert (=> b!7261064 (= (matchZipper!3606 (set.union lt!2590818 lt!2590819) s!7912) e!4354096)))

(declare-fun res!2944138 () Bool)

(assert (=> b!7261064 (=> res!2944138 e!4354096)))

(assert (=> b!7261064 (= res!2944138 lt!2590820)))

(assert (=> b!7261064 (= lt!2590820 (matchZipper!3606 lt!2590818 s!7912))))

(declare-datatypes ((Unit!164034 0))(
  ( (Unit!164035) )
))
(declare-fun lt!2590817 () Unit!164034)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1747 ((Set Context!15276) (Set Context!15276) List!70674) Unit!164034)

(assert (=> b!7261064 (= lt!2590817 (lemmaZipperConcatMatchesSameAsBothZippers!1747 lt!2590818 lt!2590819 s!7912))))

(declare-fun content!14696 (List!70675) (Set Context!15276))

(assert (=> b!7261064 (= lt!2590819 (content!14696 (t!384741 zl!1664)))))

(assert (=> b!7261064 (= lt!2590818 (set.insert (h!76999 zl!1664) (as set.empty (Set Context!15276))))))

(declare-fun b!7261065 () Bool)

(declare-fun tp!2038981 () Bool)

(declare-fun inv!89756 (Context!15276) Bool)

(assert (=> b!7261065 (= e!4354097 (and (inv!89756 (h!76999 zl!1664)) e!4354098 tp!2038981))))

(assert (= (and start!707626 res!2944137) b!7261063))

(assert (= (and b!7261063 res!2944140) b!7261064))

(assert (= (and b!7261064 (not res!2944138)) b!7261060))

(assert (= (and b!7261064 (not res!2944139)) b!7261062))

(assert (= b!7261065 b!7261059))

(assert (= (and start!707626 (is-Cons!70551 zl!1664)) b!7261065))

(assert (= (and start!707626 (is-Cons!70550 s!7912)) b!7261061))

(declare-fun m!7945758 () Bool)

(assert (=> b!7261065 m!7945758))

(declare-fun m!7945760 () Bool)

(assert (=> b!7261064 m!7945760))

(declare-fun m!7945762 () Bool)

(assert (=> b!7261064 m!7945762))

(declare-fun m!7945764 () Bool)

(assert (=> b!7261064 m!7945764))

(declare-fun m!7945766 () Bool)

(assert (=> b!7261064 m!7945766))

(declare-fun m!7945768 () Bool)

(assert (=> b!7261064 m!7945768))

(declare-fun m!7945770 () Bool)

(assert (=> b!7261060 m!7945770))

(declare-fun m!7945772 () Bool)

(assert (=> start!707626 m!7945772))

(declare-fun m!7945774 () Bool)

(assert (=> b!7261062 m!7945774))

(push 1)

(assert (not start!707626))

(assert tp_is_empty!46861)

(assert (not b!7261060))

(assert (not b!7261061))

(assert (not b!7261065))

(assert (not b!7261064))

(assert (not b!7261059))

(assert (not b!7261062))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2258978 () Bool)

(declare-fun c!1350844 () Bool)

(declare-fun isEmpty!40609 (List!70674) Bool)

(assert (=> d!2258978 (= c!1350844 (isEmpty!40609 s!7912))))

(declare-fun e!4354121 () Bool)

(assert (=> d!2258978 (= (matchZipper!3606 (set.union lt!2590818 lt!2590819) s!7912) e!4354121)))

(declare-fun b!7261095 () Bool)

(declare-fun nullableZipper!2943 ((Set Context!15276)) Bool)

(assert (=> b!7261095 (= e!4354121 (nullableZipper!2943 (set.union lt!2590818 lt!2590819)))))

(declare-fun b!7261096 () Bool)

(declare-fun derivationStepZipper!3469 ((Set Context!15276) C!37670) (Set Context!15276))

(declare-fun head!14942 (List!70674) C!37670)

(declare-fun tail!14401 (List!70674) List!70674)

(assert (=> b!7261096 (= e!4354121 (matchZipper!3606 (derivationStepZipper!3469 (set.union lt!2590818 lt!2590819) (head!14942 s!7912)) (tail!14401 s!7912)))))

(assert (= (and d!2258978 c!1350844) b!7261095))

(assert (= (and d!2258978 (not c!1350844)) b!7261096))

(declare-fun m!7945794 () Bool)

(assert (=> d!2258978 m!7945794))

(declare-fun m!7945796 () Bool)

(assert (=> b!7261095 m!7945796))

(declare-fun m!7945798 () Bool)

(assert (=> b!7261096 m!7945798))

(assert (=> b!7261096 m!7945798))

(declare-fun m!7945800 () Bool)

(assert (=> b!7261096 m!7945800))

(declare-fun m!7945802 () Bool)

(assert (=> b!7261096 m!7945802))

(assert (=> b!7261096 m!7945800))

(assert (=> b!7261096 m!7945802))

(declare-fun m!7945804 () Bool)

(assert (=> b!7261096 m!7945804))

(assert (=> b!7261064 d!2258978))

(declare-fun d!2258980 () Bool)

(declare-fun c!1350845 () Bool)

(assert (=> d!2258980 (= c!1350845 (isEmpty!40609 s!7912))))

(declare-fun e!4354122 () Bool)

(assert (=> d!2258980 (= (matchZipper!3606 lt!2590818 s!7912) e!4354122)))

(declare-fun b!7261097 () Bool)

(assert (=> b!7261097 (= e!4354122 (nullableZipper!2943 lt!2590818))))

(declare-fun b!7261098 () Bool)

(assert (=> b!7261098 (= e!4354122 (matchZipper!3606 (derivationStepZipper!3469 lt!2590818 (head!14942 s!7912)) (tail!14401 s!7912)))))

(assert (= (and d!2258980 c!1350845) b!7261097))

(assert (= (and d!2258980 (not c!1350845)) b!7261098))

(assert (=> d!2258980 m!7945794))

(declare-fun m!7945806 () Bool)

(assert (=> b!7261097 m!7945806))

(assert (=> b!7261098 m!7945798))

(assert (=> b!7261098 m!7945798))

(declare-fun m!7945808 () Bool)

(assert (=> b!7261098 m!7945808))

(assert (=> b!7261098 m!7945802))

(assert (=> b!7261098 m!7945808))

(assert (=> b!7261098 m!7945802))

(declare-fun m!7945810 () Bool)

(assert (=> b!7261098 m!7945810))

(assert (=> b!7261064 d!2258980))

(declare-fun d!2258982 () Bool)

(declare-fun e!4354125 () Bool)

(assert (=> d!2258982 (= (matchZipper!3606 (set.union lt!2590818 lt!2590819) s!7912) e!4354125)))

(declare-fun res!2944155 () Bool)

(assert (=> d!2258982 (=> res!2944155 e!4354125)))

(assert (=> d!2258982 (= res!2944155 (matchZipper!3606 lt!2590818 s!7912))))

(declare-fun lt!2590835 () Unit!164034)

(declare-fun choose!56232 ((Set Context!15276) (Set Context!15276) List!70674) Unit!164034)

(assert (=> d!2258982 (= lt!2590835 (choose!56232 lt!2590818 lt!2590819 s!7912))))

(assert (=> d!2258982 (= (lemmaZipperConcatMatchesSameAsBothZippers!1747 lt!2590818 lt!2590819 s!7912) lt!2590835)))

(declare-fun b!7261101 () Bool)

(assert (=> b!7261101 (= e!4354125 (matchZipper!3606 lt!2590819 s!7912))))

(assert (= (and d!2258982 (not res!2944155)) b!7261101))

(assert (=> d!2258982 m!7945768))

(assert (=> d!2258982 m!7945762))

(declare-fun m!7945812 () Bool)

(assert (=> d!2258982 m!7945812))

(assert (=> b!7261101 m!7945770))

(assert (=> b!7261064 d!2258982))

(declare-fun d!2258986 () Bool)

(declare-fun c!1350848 () Bool)

(assert (=> d!2258986 (= c!1350848 (is-Nil!70551 (t!384741 zl!1664)))))

(declare-fun e!4354128 () (Set Context!15276))

(assert (=> d!2258986 (= (content!14696 (t!384741 zl!1664)) e!4354128)))

(declare-fun b!7261106 () Bool)

(assert (=> b!7261106 (= e!4354128 (as set.empty (Set Context!15276)))))

(declare-fun b!7261107 () Bool)

(assert (=> b!7261107 (= e!4354128 (set.union (set.insert (h!76999 (t!384741 zl!1664)) (as set.empty (Set Context!15276))) (content!14696 (t!384741 (t!384741 zl!1664)))))))

(assert (= (and d!2258986 c!1350848) b!7261106))

(assert (= (and d!2258986 (not c!1350848)) b!7261107))

(declare-fun m!7945814 () Bool)

(assert (=> b!7261107 m!7945814))

(declare-fun m!7945816 () Bool)

(assert (=> b!7261107 m!7945816))

(assert (=> b!7261064 d!2258986))

(declare-fun bs!1909371 () Bool)

(declare-fun d!2258988 () Bool)

(assert (= bs!1909371 (and d!2258988 start!707626)))

(declare-fun lambda!446610 () Int)

(assert (=> bs!1909371 (not (= lambda!446610 lambda!446602))))

(assert (=> d!2258988 true))

(declare-fun order!29045 () Int)

(declare-fun dynLambda!28825 (Int Int) Int)

(assert (=> d!2258988 (< (dynLambda!28825 order!29045 lambda!446602) (dynLambda!28825 order!29045 lambda!446610))))

(declare-fun forall!17549 (List!70675 Int) Bool)

(assert (=> d!2258988 (= (exists!4462 zl!1664 lambda!446602) (not (forall!17549 zl!1664 lambda!446610)))))

(declare-fun bs!1909372 () Bool)

(assert (= bs!1909372 d!2258988))

(declare-fun m!7945818 () Bool)

(assert (=> bs!1909372 m!7945818))

(assert (=> start!707626 d!2258988))

(declare-fun d!2258990 () Bool)

(declare-fun c!1350849 () Bool)

(assert (=> d!2258990 (= c!1350849 (isEmpty!40609 s!7912))))

(declare-fun e!4354129 () Bool)

(assert (=> d!2258990 (= (matchZipper!3606 lt!2590819 s!7912) e!4354129)))

(declare-fun b!7261110 () Bool)

(assert (=> b!7261110 (= e!4354129 (nullableZipper!2943 lt!2590819))))

(declare-fun b!7261111 () Bool)

(assert (=> b!7261111 (= e!4354129 (matchZipper!3606 (derivationStepZipper!3469 lt!2590819 (head!14942 s!7912)) (tail!14401 s!7912)))))

(assert (= (and d!2258990 c!1350849) b!7261110))

(assert (= (and d!2258990 (not c!1350849)) b!7261111))

(assert (=> d!2258990 m!7945794))

(declare-fun m!7945820 () Bool)

(assert (=> b!7261110 m!7945820))

(assert (=> b!7261111 m!7945798))

(assert (=> b!7261111 m!7945798))

(declare-fun m!7945822 () Bool)

(assert (=> b!7261111 m!7945822))

(assert (=> b!7261111 m!7945802))

(assert (=> b!7261111 m!7945822))

(assert (=> b!7261111 m!7945802))

(declare-fun m!7945824 () Bool)

(assert (=> b!7261111 m!7945824))

(assert (=> b!7261060 d!2258990))

(declare-fun d!2258992 () Bool)

(declare-fun lambda!446613 () Int)

(declare-fun forall!17550 (List!70673 Int) Bool)

(assert (=> d!2258992 (= (inv!89756 (h!76999 zl!1664)) (forall!17550 (exprs!8138 (h!76999 zl!1664)) lambda!446613))))

(declare-fun bs!1909373 () Bool)

(assert (= bs!1909373 d!2258992))

(declare-fun m!7945838 () Bool)

(assert (=> bs!1909373 m!7945838))

(assert (=> b!7261065 d!2258992))

(declare-fun bs!1909374 () Bool)

(declare-fun d!2258996 () Bool)

(assert (= bs!1909374 (and d!2258996 start!707626)))

(declare-fun lambda!446614 () Int)

(assert (=> bs!1909374 (not (= lambda!446614 lambda!446602))))

(declare-fun bs!1909375 () Bool)

(assert (= bs!1909375 (and d!2258996 d!2258988)))

(assert (=> bs!1909375 (= lambda!446614 lambda!446610)))

(assert (=> d!2258996 true))

(assert (=> d!2258996 (< (dynLambda!28825 order!29045 lambda!446602) (dynLambda!28825 order!29045 lambda!446614))))

(assert (=> d!2258996 (= (exists!4462 (t!384741 zl!1664) lambda!446602) (not (forall!17549 (t!384741 zl!1664) lambda!446614)))))

(declare-fun bs!1909376 () Bool)

(assert (= bs!1909376 d!2258996))

(declare-fun m!7945841 () Bool)

(assert (=> bs!1909376 m!7945841))

(assert (=> b!7261062 d!2258996))

(declare-fun b!7261124 () Bool)

(declare-fun e!4354136 () Bool)

(declare-fun tp!2038997 () Bool)

(declare-fun tp!2038998 () Bool)

(assert (=> b!7261124 (= e!4354136 (and tp!2038997 tp!2038998))))

(assert (=> b!7261059 (= tp!2038983 e!4354136)))

(assert (= (and b!7261059 (is-Cons!70549 (exprs!8138 (h!76999 zl!1664)))) b!7261124))

(declare-fun b!7261132 () Bool)

(declare-fun e!4354142 () Bool)

(declare-fun tp!2039003 () Bool)

(assert (=> b!7261132 (= e!4354142 tp!2039003)))

(declare-fun b!7261131 () Bool)

(declare-fun e!4354141 () Bool)

(declare-fun tp!2039004 () Bool)

(assert (=> b!7261131 (= e!4354141 (and (inv!89756 (h!76999 (t!384741 zl!1664))) e!4354142 tp!2039004))))

(assert (=> b!7261065 (= tp!2038981 e!4354141)))

(assert (= b!7261131 b!7261132))

(assert (= (and b!7261065 (is-Cons!70551 (t!384741 zl!1664))) b!7261131))

(declare-fun m!7945848 () Bool)

(assert (=> b!7261131 m!7945848))

(declare-fun b!7261137 () Bool)

(declare-fun e!4354145 () Bool)

(declare-fun tp!2039007 () Bool)

(assert (=> b!7261137 (= e!4354145 (and tp_is_empty!46861 tp!2039007))))

(assert (=> b!7261061 (= tp!2038982 e!4354145)))

(assert (= (and b!7261061 (is-Cons!70550 (t!384740 s!7912))) b!7261137))

(push 1)

(assert (not b!7261132))

(assert (not b!7261098))

(assert (not b!7261137))

(assert (not b!7261095))

(assert (not b!7261107))

(assert (not b!7261111))

(assert (not b!7261131))

(assert (not d!2258980))

(assert tp_is_empty!46861)

(assert (not b!7261124))

(assert (not d!2258996))

(assert (not b!7261096))

(assert (not b!7261110))

(assert (not d!2258990))

(assert (not b!7261097))

(assert (not d!2258988))

(assert (not d!2258982))

(assert (not d!2258992))

(assert (not d!2258978))

(assert (not b!7261101))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2259010 () Bool)

(assert (=> d!2259010 (= (isEmpty!40609 s!7912) (is-Nil!70550 s!7912))))

(assert (=> d!2258990 d!2259010))

(declare-fun d!2259012 () Bool)

(declare-fun c!1350858 () Bool)

(assert (=> d!2259012 (= c!1350858 (is-Nil!70551 (t!384741 (t!384741 zl!1664))))))

(declare-fun e!4354165 () (Set Context!15276))

(assert (=> d!2259012 (= (content!14696 (t!384741 (t!384741 zl!1664))) e!4354165)))

(declare-fun b!7261169 () Bool)

(assert (=> b!7261169 (= e!4354165 (as set.empty (Set Context!15276)))))

(declare-fun b!7261170 () Bool)

(assert (=> b!7261170 (= e!4354165 (set.union (set.insert (h!76999 (t!384741 (t!384741 zl!1664))) (as set.empty (Set Context!15276))) (content!14696 (t!384741 (t!384741 (t!384741 zl!1664))))))))

(assert (= (and d!2259012 c!1350858) b!7261169))

(assert (= (and d!2259012 (not c!1350858)) b!7261170))

(declare-fun m!7945870 () Bool)

(assert (=> b!7261170 m!7945870))

(declare-fun m!7945872 () Bool)

(assert (=> b!7261170 m!7945872))

(assert (=> b!7261107 d!2259012))

(assert (=> d!2258980 d!2259010))

(declare-fun d!2259014 () Bool)

(declare-fun c!1350859 () Bool)

(assert (=> d!2259014 (= c!1350859 (isEmpty!40609 (tail!14401 s!7912)))))

(declare-fun e!4354166 () Bool)

(assert (=> d!2259014 (= (matchZipper!3606 (derivationStepZipper!3469 (set.union lt!2590818 lt!2590819) (head!14942 s!7912)) (tail!14401 s!7912)) e!4354166)))

(declare-fun b!7261171 () Bool)

(assert (=> b!7261171 (= e!4354166 (nullableZipper!2943 (derivationStepZipper!3469 (set.union lt!2590818 lt!2590819) (head!14942 s!7912))))))

(declare-fun b!7261172 () Bool)

(assert (=> b!7261172 (= e!4354166 (matchZipper!3606 (derivationStepZipper!3469 (derivationStepZipper!3469 (set.union lt!2590818 lt!2590819) (head!14942 s!7912)) (head!14942 (tail!14401 s!7912))) (tail!14401 (tail!14401 s!7912))))))

(assert (= (and d!2259014 c!1350859) b!7261171))

(assert (= (and d!2259014 (not c!1350859)) b!7261172))

(assert (=> d!2259014 m!7945802))

(declare-fun m!7945874 () Bool)

(assert (=> d!2259014 m!7945874))

(assert (=> b!7261171 m!7945800))

(declare-fun m!7945876 () Bool)

(assert (=> b!7261171 m!7945876))

(assert (=> b!7261172 m!7945802))

(declare-fun m!7945878 () Bool)

(assert (=> b!7261172 m!7945878))

(assert (=> b!7261172 m!7945800))

(assert (=> b!7261172 m!7945878))

(declare-fun m!7945880 () Bool)

(assert (=> b!7261172 m!7945880))

(assert (=> b!7261172 m!7945802))

(declare-fun m!7945882 () Bool)

(assert (=> b!7261172 m!7945882))

(assert (=> b!7261172 m!7945880))

(assert (=> b!7261172 m!7945882))

(declare-fun m!7945884 () Bool)

(assert (=> b!7261172 m!7945884))

(assert (=> b!7261096 d!2259014))

(declare-fun d!2259016 () Bool)

(assert (=> d!2259016 true))

(declare-fun lambda!446624 () Int)

(declare-fun flatMap!2851 ((Set Context!15276) Int) (Set Context!15276))

(assert (=> d!2259016 (= (derivationStepZipper!3469 (set.union lt!2590818 lt!2590819) (head!14942 s!7912)) (flatMap!2851 (set.union lt!2590818 lt!2590819) lambda!446624))))

(declare-fun bs!1909383 () Bool)

(assert (= bs!1909383 d!2259016))

(declare-fun m!7945886 () Bool)

(assert (=> bs!1909383 m!7945886))

(assert (=> b!7261096 d!2259016))

(declare-fun d!2259018 () Bool)

(assert (=> d!2259018 (= (head!14942 s!7912) (h!76998 s!7912))))

(assert (=> b!7261096 d!2259018))

(declare-fun d!2259020 () Bool)

(assert (=> d!2259020 (= (tail!14401 s!7912) (t!384740 s!7912))))

(assert (=> b!7261096 d!2259020))

(declare-fun d!2259022 () Bool)

(declare-fun res!2944163 () Bool)

(declare-fun e!4354171 () Bool)

(assert (=> d!2259022 (=> res!2944163 e!4354171)))

(assert (=> d!2259022 (= res!2944163 (is-Nil!70551 zl!1664))))

(assert (=> d!2259022 (= (forall!17549 zl!1664 lambda!446610) e!4354171)))

(declare-fun b!7261179 () Bool)

(declare-fun e!4354172 () Bool)

(assert (=> b!7261179 (= e!4354171 e!4354172)))

(declare-fun res!2944164 () Bool)

(assert (=> b!7261179 (=> (not res!2944164) (not e!4354172))))

(declare-fun dynLambda!28827 (Int Context!15276) Bool)

(assert (=> b!7261179 (= res!2944164 (dynLambda!28827 lambda!446610 (h!76999 zl!1664)))))

(declare-fun b!7261180 () Bool)

(assert (=> b!7261180 (= e!4354172 (forall!17549 (t!384741 zl!1664) lambda!446610))))

(assert (= (and d!2259022 (not res!2944163)) b!7261179))

(assert (= (and b!7261179 res!2944164) b!7261180))

(declare-fun b_lambda!279289 () Bool)

(assert (=> (not b_lambda!279289) (not b!7261179)))

(declare-fun m!7945888 () Bool)

(assert (=> b!7261179 m!7945888))

(declare-fun m!7945890 () Bool)

(assert (=> b!7261180 m!7945890))

(assert (=> d!2258988 d!2259022))

(assert (=> d!2258978 d!2259010))

(declare-fun d!2259024 () Bool)

(declare-fun c!1350862 () Bool)

(assert (=> d!2259024 (= c!1350862 (isEmpty!40609 (tail!14401 s!7912)))))

(declare-fun e!4354173 () Bool)

(assert (=> d!2259024 (= (matchZipper!3606 (derivationStepZipper!3469 lt!2590819 (head!14942 s!7912)) (tail!14401 s!7912)) e!4354173)))

(declare-fun b!7261181 () Bool)

(assert (=> b!7261181 (= e!4354173 (nullableZipper!2943 (derivationStepZipper!3469 lt!2590819 (head!14942 s!7912))))))

(declare-fun b!7261182 () Bool)

(assert (=> b!7261182 (= e!4354173 (matchZipper!3606 (derivationStepZipper!3469 (derivationStepZipper!3469 lt!2590819 (head!14942 s!7912)) (head!14942 (tail!14401 s!7912))) (tail!14401 (tail!14401 s!7912))))))

(assert (= (and d!2259024 c!1350862) b!7261181))

(assert (= (and d!2259024 (not c!1350862)) b!7261182))

(assert (=> d!2259024 m!7945802))

(assert (=> d!2259024 m!7945874))

(assert (=> b!7261181 m!7945822))

(declare-fun m!7945892 () Bool)

(assert (=> b!7261181 m!7945892))

(assert (=> b!7261182 m!7945802))

(assert (=> b!7261182 m!7945878))

(assert (=> b!7261182 m!7945822))

(assert (=> b!7261182 m!7945878))

(declare-fun m!7945894 () Bool)

(assert (=> b!7261182 m!7945894))

(assert (=> b!7261182 m!7945802))

(assert (=> b!7261182 m!7945882))

(assert (=> b!7261182 m!7945894))

(assert (=> b!7261182 m!7945882))

(declare-fun m!7945896 () Bool)

(assert (=> b!7261182 m!7945896))

(assert (=> b!7261111 d!2259024))

(declare-fun bs!1909384 () Bool)

(declare-fun d!2259026 () Bool)

(assert (= bs!1909384 (and d!2259026 d!2259016)))

(declare-fun lambda!446625 () Int)

(assert (=> bs!1909384 (= lambda!446625 lambda!446624)))

(assert (=> d!2259026 true))

(assert (=> d!2259026 (= (derivationStepZipper!3469 lt!2590819 (head!14942 s!7912)) (flatMap!2851 lt!2590819 lambda!446625))))

(declare-fun bs!1909385 () Bool)

(assert (= bs!1909385 d!2259026))

(declare-fun m!7945898 () Bool)

(assert (=> bs!1909385 m!7945898))

(assert (=> b!7261111 d!2259026))

(assert (=> b!7261111 d!2259018))

(assert (=> b!7261111 d!2259020))

(declare-fun d!2259028 () Bool)

(declare-fun c!1350863 () Bool)

(assert (=> d!2259028 (= c!1350863 (isEmpty!40609 (tail!14401 s!7912)))))

(declare-fun e!4354174 () Bool)

(assert (=> d!2259028 (= (matchZipper!3606 (derivationStepZipper!3469 lt!2590818 (head!14942 s!7912)) (tail!14401 s!7912)) e!4354174)))

(declare-fun b!7261183 () Bool)

(assert (=> b!7261183 (= e!4354174 (nullableZipper!2943 (derivationStepZipper!3469 lt!2590818 (head!14942 s!7912))))))

(declare-fun b!7261184 () Bool)

(assert (=> b!7261184 (= e!4354174 (matchZipper!3606 (derivationStepZipper!3469 (derivationStepZipper!3469 lt!2590818 (head!14942 s!7912)) (head!14942 (tail!14401 s!7912))) (tail!14401 (tail!14401 s!7912))))))

(assert (= (and d!2259028 c!1350863) b!7261183))

(assert (= (and d!2259028 (not c!1350863)) b!7261184))

(assert (=> d!2259028 m!7945802))

(assert (=> d!2259028 m!7945874))

(assert (=> b!7261183 m!7945808))

(declare-fun m!7945900 () Bool)

(assert (=> b!7261183 m!7945900))

(assert (=> b!7261184 m!7945802))

(assert (=> b!7261184 m!7945878))

(assert (=> b!7261184 m!7945808))

(assert (=> b!7261184 m!7945878))

(declare-fun m!7945902 () Bool)

(assert (=> b!7261184 m!7945902))

(assert (=> b!7261184 m!7945802))

(assert (=> b!7261184 m!7945882))

(assert (=> b!7261184 m!7945902))

(assert (=> b!7261184 m!7945882))

(declare-fun m!7945904 () Bool)

(assert (=> b!7261184 m!7945904))

(assert (=> b!7261098 d!2259028))

(declare-fun bs!1909386 () Bool)

(declare-fun d!2259030 () Bool)

(assert (= bs!1909386 (and d!2259030 d!2259016)))

(declare-fun lambda!446626 () Int)

(assert (=> bs!1909386 (= lambda!446626 lambda!446624)))

(declare-fun bs!1909387 () Bool)

(assert (= bs!1909387 (and d!2259030 d!2259026)))

(assert (=> bs!1909387 (= lambda!446626 lambda!446625)))

(assert (=> d!2259030 true))

(assert (=> d!2259030 (= (derivationStepZipper!3469 lt!2590818 (head!14942 s!7912)) (flatMap!2851 lt!2590818 lambda!446626))))

(declare-fun bs!1909388 () Bool)

(assert (= bs!1909388 d!2259030))

(declare-fun m!7945906 () Bool)

(assert (=> bs!1909388 m!7945906))

(assert (=> b!7261098 d!2259030))

(assert (=> b!7261098 d!2259018))

(assert (=> b!7261098 d!2259020))

(declare-fun bs!1909389 () Bool)

(declare-fun d!2259032 () Bool)

(assert (= bs!1909389 (and d!2259032 start!707626)))

(declare-fun lambda!446629 () Int)

(assert (=> bs!1909389 (not (= lambda!446629 lambda!446602))))

(declare-fun bs!1909390 () Bool)

(assert (= bs!1909390 (and d!2259032 d!2258988)))

(assert (=> bs!1909390 (not (= lambda!446629 lambda!446610))))

(declare-fun bs!1909391 () Bool)

(assert (= bs!1909391 (and d!2259032 d!2258996)))

(assert (=> bs!1909391 (not (= lambda!446629 lambda!446614))))

(declare-fun exists!4464 ((Set Context!15276) Int) Bool)

(assert (=> d!2259032 (= (nullableZipper!2943 (set.union lt!2590818 lt!2590819)) (exists!4464 (set.union lt!2590818 lt!2590819) lambda!446629))))

(declare-fun bs!1909392 () Bool)

(assert (= bs!1909392 d!2259032))

(declare-fun m!7945908 () Bool)

(assert (=> bs!1909392 m!7945908))

(assert (=> b!7261095 d!2259032))

(declare-fun d!2259034 () Bool)

(declare-fun res!2944165 () Bool)

(declare-fun e!4354175 () Bool)

(assert (=> d!2259034 (=> res!2944165 e!4354175)))

(assert (=> d!2259034 (= res!2944165 (is-Nil!70551 (t!384741 zl!1664)))))

(assert (=> d!2259034 (= (forall!17549 (t!384741 zl!1664) lambda!446614) e!4354175)))

(declare-fun b!7261185 () Bool)

(declare-fun e!4354176 () Bool)

(assert (=> b!7261185 (= e!4354175 e!4354176)))

(declare-fun res!2944166 () Bool)

(assert (=> b!7261185 (=> (not res!2944166) (not e!4354176))))

(assert (=> b!7261185 (= res!2944166 (dynLambda!28827 lambda!446614 (h!76999 (t!384741 zl!1664))))))

(declare-fun b!7261186 () Bool)

(assert (=> b!7261186 (= e!4354176 (forall!17549 (t!384741 (t!384741 zl!1664)) lambda!446614))))

(assert (= (and d!2259034 (not res!2944165)) b!7261185))

(assert (= (and b!7261185 res!2944166) b!7261186))

(declare-fun b_lambda!279291 () Bool)

(assert (=> (not b_lambda!279291) (not b!7261185)))

(declare-fun m!7945910 () Bool)

(assert (=> b!7261185 m!7945910))

(declare-fun m!7945912 () Bool)

(assert (=> b!7261186 m!7945912))

(assert (=> d!2258996 d!2259034))

(declare-fun d!2259036 () Bool)

(declare-fun res!2944171 () Bool)

(declare-fun e!4354181 () Bool)

(assert (=> d!2259036 (=> res!2944171 e!4354181)))

(assert (=> d!2259036 (= res!2944171 (is-Nil!70549 (exprs!8138 (h!76999 zl!1664))))))

(assert (=> d!2259036 (= (forall!17550 (exprs!8138 (h!76999 zl!1664)) lambda!446613) e!4354181)))

(declare-fun b!7261191 () Bool)

(declare-fun e!4354182 () Bool)

(assert (=> b!7261191 (= e!4354181 e!4354182)))

(declare-fun res!2944172 () Bool)

(assert (=> b!7261191 (=> (not res!2944172) (not e!4354182))))

(declare-fun dynLambda!28828 (Int Regex!18698) Bool)

(assert (=> b!7261191 (= res!2944172 (dynLambda!28828 lambda!446613 (h!76997 (exprs!8138 (h!76999 zl!1664)))))))

(declare-fun b!7261192 () Bool)

(assert (=> b!7261192 (= e!4354182 (forall!17550 (t!384739 (exprs!8138 (h!76999 zl!1664))) lambda!446613))))

(assert (= (and d!2259036 (not res!2944171)) b!7261191))

(assert (= (and b!7261191 res!2944172) b!7261192))

(declare-fun b_lambda!279293 () Bool)

(assert (=> (not b_lambda!279293) (not b!7261191)))

(declare-fun m!7945914 () Bool)

(assert (=> b!7261191 m!7945914))

(declare-fun m!7945916 () Bool)

(assert (=> b!7261192 m!7945916))

(assert (=> d!2258992 d!2259036))

(assert (=> d!2258982 d!2258978))

(assert (=> d!2258982 d!2258980))

(declare-fun d!2259038 () Bool)

(declare-fun e!4354185 () Bool)

(assert (=> d!2259038 (= (matchZipper!3606 (set.union lt!2590818 lt!2590819) s!7912) e!4354185)))

(declare-fun res!2944175 () Bool)

(assert (=> d!2259038 (=> res!2944175 e!4354185)))

(assert (=> d!2259038 (= res!2944175 (matchZipper!3606 lt!2590818 s!7912))))

(assert (=> d!2259038 true))

(declare-fun _$48!2558 () Unit!164034)

(assert (=> d!2259038 (= (choose!56232 lt!2590818 lt!2590819 s!7912) _$48!2558)))

(declare-fun b!7261195 () Bool)

(assert (=> b!7261195 (= e!4354185 (matchZipper!3606 lt!2590819 s!7912))))

(assert (= (and d!2259038 (not res!2944175)) b!7261195))

(assert (=> d!2259038 m!7945768))

(assert (=> d!2259038 m!7945762))

(assert (=> b!7261195 m!7945770))

(assert (=> d!2258982 d!2259038))

(declare-fun bs!1909393 () Bool)

(declare-fun d!2259040 () Bool)

(assert (= bs!1909393 (and d!2259040 d!2258992)))

(declare-fun lambda!446630 () Int)

(assert (=> bs!1909393 (= lambda!446630 lambda!446613)))

(assert (=> d!2259040 (= (inv!89756 (h!76999 (t!384741 zl!1664))) (forall!17550 (exprs!8138 (h!76999 (t!384741 zl!1664))) lambda!446630))))

(declare-fun bs!1909394 () Bool)

(assert (= bs!1909394 d!2259040))

(declare-fun m!7945918 () Bool)

(assert (=> bs!1909394 m!7945918))

(assert (=> b!7261131 d!2259040))

(declare-fun bs!1909395 () Bool)

(declare-fun d!2259042 () Bool)

(assert (= bs!1909395 (and d!2259042 start!707626)))

(declare-fun lambda!446631 () Int)

(assert (=> bs!1909395 (not (= lambda!446631 lambda!446602))))

(declare-fun bs!1909396 () Bool)

(assert (= bs!1909396 (and d!2259042 d!2258988)))

(assert (=> bs!1909396 (not (= lambda!446631 lambda!446610))))

(declare-fun bs!1909397 () Bool)

(assert (= bs!1909397 (and d!2259042 d!2258996)))

(assert (=> bs!1909397 (not (= lambda!446631 lambda!446614))))

(declare-fun bs!1909398 () Bool)

(assert (= bs!1909398 (and d!2259042 d!2259032)))

(assert (=> bs!1909398 (= lambda!446631 lambda!446629)))

(assert (=> d!2259042 (= (nullableZipper!2943 lt!2590819) (exists!4464 lt!2590819 lambda!446631))))

(declare-fun bs!1909399 () Bool)

(assert (= bs!1909399 d!2259042))

(declare-fun m!7945920 () Bool)

(assert (=> bs!1909399 m!7945920))

(assert (=> b!7261110 d!2259042))

(declare-fun bs!1909400 () Bool)

(declare-fun d!2259044 () Bool)

(assert (= bs!1909400 (and d!2259044 start!707626)))

(declare-fun lambda!446632 () Int)

(assert (=> bs!1909400 (not (= lambda!446632 lambda!446602))))

(declare-fun bs!1909401 () Bool)

(assert (= bs!1909401 (and d!2259044 d!2258988)))

(assert (=> bs!1909401 (not (= lambda!446632 lambda!446610))))

(declare-fun bs!1909402 () Bool)

(assert (= bs!1909402 (and d!2259044 d!2259042)))

(assert (=> bs!1909402 (= lambda!446632 lambda!446631)))

(declare-fun bs!1909403 () Bool)

(assert (= bs!1909403 (and d!2259044 d!2259032)))

(assert (=> bs!1909403 (= lambda!446632 lambda!446629)))

(declare-fun bs!1909404 () Bool)

(assert (= bs!1909404 (and d!2259044 d!2258996)))

(assert (=> bs!1909404 (not (= lambda!446632 lambda!446614))))

(assert (=> d!2259044 (= (nullableZipper!2943 lt!2590818) (exists!4464 lt!2590818 lambda!446632))))

(declare-fun bs!1909405 () Bool)

(assert (= bs!1909405 d!2259044))

(declare-fun m!7945922 () Bool)

(assert (=> bs!1909405 m!7945922))

(assert (=> b!7261097 d!2259044))

(assert (=> b!7261101 d!2258990))

(declare-fun b!7261206 () Bool)

(declare-fun e!4354188 () Bool)

(assert (=> b!7261206 (= e!4354188 tp_is_empty!46861)))

(declare-fun b!7261208 () Bool)

(declare-fun tp!2039033 () Bool)

(assert (=> b!7261208 (= e!4354188 tp!2039033)))

(declare-fun b!7261209 () Bool)

(declare-fun tp!2039036 () Bool)

(declare-fun tp!2039037 () Bool)

(assert (=> b!7261209 (= e!4354188 (and tp!2039036 tp!2039037))))

(declare-fun b!7261207 () Bool)

(declare-fun tp!2039034 () Bool)

(declare-fun tp!2039035 () Bool)

(assert (=> b!7261207 (= e!4354188 (and tp!2039034 tp!2039035))))

(assert (=> b!7261124 (= tp!2038997 e!4354188)))

(assert (= (and b!7261124 (is-ElementMatch!18698 (h!76997 (exprs!8138 (h!76999 zl!1664))))) b!7261206))

(assert (= (and b!7261124 (is-Concat!27543 (h!76997 (exprs!8138 (h!76999 zl!1664))))) b!7261207))

(assert (= (and b!7261124 (is-Star!18698 (h!76997 (exprs!8138 (h!76999 zl!1664))))) b!7261208))

(assert (= (and b!7261124 (is-Union!18698 (h!76997 (exprs!8138 (h!76999 zl!1664))))) b!7261209))

(declare-fun b!7261210 () Bool)

(declare-fun e!4354189 () Bool)

(declare-fun tp!2039038 () Bool)

(declare-fun tp!2039039 () Bool)

(assert (=> b!7261210 (= e!4354189 (and tp!2039038 tp!2039039))))

(assert (=> b!7261124 (= tp!2038998 e!4354189)))

(assert (= (and b!7261124 (is-Cons!70549 (t!384739 (exprs!8138 (h!76999 zl!1664))))) b!7261210))

(declare-fun b!7261211 () Bool)

(declare-fun e!4354190 () Bool)

(declare-fun tp!2039040 () Bool)

(declare-fun tp!2039041 () Bool)

(assert (=> b!7261211 (= e!4354190 (and tp!2039040 tp!2039041))))

(assert (=> b!7261132 (= tp!2039003 e!4354190)))

(assert (= (and b!7261132 (is-Cons!70549 (exprs!8138 (h!76999 (t!384741 zl!1664))))) b!7261211))

(declare-fun b!7261213 () Bool)

(declare-fun e!4354192 () Bool)

(declare-fun tp!2039042 () Bool)

(assert (=> b!7261213 (= e!4354192 tp!2039042)))

(declare-fun tp!2039043 () Bool)

(declare-fun e!4354191 () Bool)

(declare-fun b!7261212 () Bool)

(assert (=> b!7261212 (= e!4354191 (and (inv!89756 (h!76999 (t!384741 (t!384741 zl!1664)))) e!4354192 tp!2039043))))

(assert (=> b!7261131 (= tp!2039004 e!4354191)))

(assert (= b!7261212 b!7261213))

(assert (= (and b!7261131 (is-Cons!70551 (t!384741 (t!384741 zl!1664)))) b!7261212))

(declare-fun m!7945924 () Bool)

(assert (=> b!7261212 m!7945924))

(declare-fun b!7261214 () Bool)

(declare-fun e!4354193 () Bool)

(declare-fun tp!2039044 () Bool)

(assert (=> b!7261214 (= e!4354193 (and tp_is_empty!46861 tp!2039044))))

(assert (=> b!7261137 (= tp!2039007 e!4354193)))

(assert (= (and b!7261137 (is-Cons!70550 (t!384740 (t!384740 s!7912)))) b!7261214))

(declare-fun b_lambda!279295 () Bool)

(assert (= b_lambda!279293 (or d!2258992 b_lambda!279295)))

(declare-fun bs!1909406 () Bool)

(declare-fun d!2259046 () Bool)

(assert (= bs!1909406 (and d!2259046 d!2258992)))

(declare-fun validRegex!9550 (Regex!18698) Bool)

(assert (=> bs!1909406 (= (dynLambda!28828 lambda!446613 (h!76997 (exprs!8138 (h!76999 zl!1664)))) (validRegex!9550 (h!76997 (exprs!8138 (h!76999 zl!1664)))))))

(declare-fun m!7945926 () Bool)

(assert (=> bs!1909406 m!7945926))

(assert (=> b!7261191 d!2259046))

(declare-fun b_lambda!279297 () Bool)

(assert (= b_lambda!279291 (or d!2258996 b_lambda!279297)))

(declare-fun bs!1909407 () Bool)

(declare-fun d!2259048 () Bool)

(assert (= bs!1909407 (and d!2259048 d!2258996)))

(assert (=> bs!1909407 (= (dynLambda!28827 lambda!446614 (h!76999 (t!384741 zl!1664))) (not (dynLambda!28827 lambda!446602 (h!76999 (t!384741 zl!1664)))))))

(declare-fun b_lambda!279301 () Bool)

(assert (=> (not b_lambda!279301) (not bs!1909407)))

(declare-fun m!7945928 () Bool)

(assert (=> bs!1909407 m!7945928))

(assert (=> b!7261185 d!2259048))

(declare-fun b_lambda!279299 () Bool)

(assert (= b_lambda!279289 (or d!2258988 b_lambda!279299)))

(declare-fun bs!1909408 () Bool)

(declare-fun d!2259050 () Bool)

(assert (= bs!1909408 (and d!2259050 d!2258988)))

(assert (=> bs!1909408 (= (dynLambda!28827 lambda!446610 (h!76999 zl!1664)) (not (dynLambda!28827 lambda!446602 (h!76999 zl!1664))))))

(declare-fun b_lambda!279303 () Bool)

(assert (=> (not b_lambda!279303) (not bs!1909408)))

(declare-fun m!7945930 () Bool)

(assert (=> bs!1909408 m!7945930))

(assert (=> b!7261179 d!2259050))

(push 1)

(assert (not b!7261184))

(assert (not b!7261211))

(assert (not b!7261213))

(assert (not d!2259042))

(assert (not b!7261207))

(assert (not b!7261170))

(assert (not b!7261171))

(assert (not b!7261212))

(assert (not b_lambda!279295))

(assert (not d!2259032))

(assert (not d!2259014))

(assert (not d!2259030))

(assert (not b!7261192))

(assert (not d!2259038))

(assert (not b!7261182))

(assert (not b_lambda!279301))

(assert (not b!7261186))

(assert (not d!2259040))

(assert (not bs!1909406))

(assert (not d!2259016))

(assert (not d!2259044))

(assert (not b_lambda!279303))

(assert (not b!7261181))

(assert (not b!7261214))

(assert (not b_lambda!279299))

(assert (not b_lambda!279297))

(assert (not b!7261195))

(assert (not b!7261208))

(assert (not b!7261209))

(assert tp_is_empty!46861)

(assert (not d!2259028))

(assert (not b!7261210))

(assert (not b!7261183))

(assert (not d!2259024))

(assert (not b!7261180))

(assert (not d!2259026))

(assert (not b!7261172))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!279321 () Bool)

(assert (= b_lambda!279301 (or start!707626 b_lambda!279321)))

(declare-fun bs!1909435 () Bool)

(declare-fun d!2259094 () Bool)

(assert (= bs!1909435 (and d!2259094 start!707626)))

(assert (=> bs!1909435 (= (dynLambda!28827 lambda!446602 (h!76999 (t!384741 zl!1664))) (matchZipper!3606 (set.insert (h!76999 (t!384741 zl!1664)) (as set.empty (Set Context!15276))) s!7912))))

(assert (=> bs!1909435 m!7945814))

(assert (=> bs!1909435 m!7945814))

(declare-fun m!7945994 () Bool)

(assert (=> bs!1909435 m!7945994))

(assert (=> bs!1909407 d!2259094))

(declare-fun b_lambda!279323 () Bool)

(assert (= b_lambda!279303 (or start!707626 b_lambda!279323)))

(declare-fun bs!1909436 () Bool)

(declare-fun d!2259096 () Bool)

(assert (= bs!1909436 (and d!2259096 start!707626)))

(assert (=> bs!1909436 (= (dynLambda!28827 lambda!446602 (h!76999 zl!1664)) (matchZipper!3606 (set.insert (h!76999 zl!1664) (as set.empty (Set Context!15276))) s!7912))))

(assert (=> bs!1909436 m!7945760))

(assert (=> bs!1909436 m!7945760))

(declare-fun m!7945996 () Bool)

(assert (=> bs!1909436 m!7945996))

(assert (=> bs!1909408 d!2259096))

(push 1)

(assert (not b!7261184))

(assert (not b!7261211))

(assert (not b!7261213))

(assert (not d!2259042))

(assert (not d!2259044))

(assert (not b!7261207))

(assert (not b!7261170))

(assert (not b!7261171))

(assert (not b!7261212))

(assert (not b_lambda!279323))

(assert (not b_lambda!279295))

(assert (not d!2259032))

(assert (not d!2259014))

(assert (not d!2259030))

(assert (not bs!1909436))

(assert (not b!7261192))

(assert (not d!2259038))

(assert (not b!7261182))

(assert (not b!7261186))

(assert (not d!2259040))

(assert (not bs!1909406))

(assert (not d!2259016))

(assert (not b!7261181))

(assert (not b!7261214))

(assert (not b_lambda!279299))

(assert (not b_lambda!279297))

(assert (not b!7261195))

(assert (not b!7261208))

(assert (not b!7261209))

(assert tp_is_empty!46861)

(assert (not bs!1909435))

(assert (not d!2259028))

(assert (not b!7261210))

(assert (not b!7261183))

(assert (not d!2259024))

(assert (not b!7261180))

(assert (not b_lambda!279321))

(assert (not d!2259026))

(assert (not b!7261172))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

