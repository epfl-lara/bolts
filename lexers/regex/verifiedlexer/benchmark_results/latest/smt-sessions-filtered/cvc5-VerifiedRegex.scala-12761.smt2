; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!705130 () Bool)

(assert start!705130)

(declare-fun b!7248241 () Bool)

(assert (=> b!7248241 true))

(declare-fun b!7248239 () Bool)

(declare-fun e!4346018 () Bool)

(declare-fun e!4346015 () Bool)

(assert (=> b!7248239 (= e!4346018 e!4346015)))

(declare-fun res!2939946 () Bool)

(assert (=> b!7248239 (=> (not res!2939946) (not e!4346015))))

(declare-datatypes ((C!37534 0))(
  ( (C!37535 (val!28715 Int)) )
))
(declare-datatypes ((Regex!18630 0))(
  ( (ElementMatch!18630 (c!1346635 C!37534)) (Concat!27475 (regOne!37772 Regex!18630) (regTwo!37772 Regex!18630)) (EmptyExpr!18630) (Star!18630 (reg!18959 Regex!18630)) (EmptyLang!18630) (Union!18630 (regOne!37773 Regex!18630) (regTwo!37773 Regex!18630)) )
))
(declare-datatypes ((List!70470 0))(
  ( (Nil!70346) (Cons!70346 (h!76794 Regex!18630) (t!384522 List!70470)) )
))
(declare-datatypes ((Context!15140 0))(
  ( (Context!15141 (exprs!8070 List!70470)) )
))
(declare-fun lt!2583728 () (Set Context!15140))

(declare-datatypes ((List!70471 0))(
  ( (Nil!70347) (Cons!70347 (h!76795 C!37534) (t!384523 List!70471)) )
))
(declare-fun s1!1971 () List!70471)

(declare-fun matchZipper!3540 ((Set Context!15140) List!70471) Bool)

(assert (=> b!7248239 (= res!2939946 (matchZipper!3540 lt!2583728 (t!384523 s1!1971)))))

(declare-fun lt!2583726 () (Set Context!15140))

(declare-fun derivationStepZipper!3408 ((Set Context!15140) C!37534) (Set Context!15140))

(assert (=> b!7248239 (= lt!2583728 (derivationStepZipper!3408 lt!2583726 (h!76795 s1!1971)))))

(declare-fun b!7248240 () Bool)

(declare-fun e!4346019 () Bool)

(declare-fun tp!2037030 () Bool)

(assert (=> b!7248240 (= e!4346019 tp!2037030)))

(declare-fun e!4346016 () Bool)

(assert (=> b!7248241 (= e!4346015 (not e!4346016))))

(declare-fun res!2939947 () Bool)

(assert (=> b!7248241 (=> res!2939947 e!4346016)))

(declare-fun lambda!443625 () Int)

(declare-fun exists!4338 ((Set Context!15140) Int) Bool)

(assert (=> b!7248241 (= res!2939947 (not (exists!4338 lt!2583728 lambda!443625)))))

(declare-datatypes ((List!70472 0))(
  ( (Nil!70348) (Cons!70348 (h!76796 Context!15140) (t!384524 List!70472)) )
))
(declare-fun lt!2583721 () List!70472)

(declare-fun exists!4339 (List!70472 Int) Bool)

(assert (=> b!7248241 (exists!4339 lt!2583721 lambda!443625)))

(declare-datatypes ((Unit!163844 0))(
  ( (Unit!163845) )
))
(declare-fun lt!2583725 () Unit!163844)

(declare-fun lemmaZipperMatchesExistsMatchingContext!733 (List!70472 List!70471) Unit!163844)

(assert (=> b!7248241 (= lt!2583725 (lemmaZipperMatchesExistsMatchingContext!733 lt!2583721 (t!384523 s1!1971)))))

(declare-fun toList!11459 ((Set Context!15140)) List!70472)

(assert (=> b!7248241 (= lt!2583721 (toList!11459 lt!2583728))))

(declare-fun b!7248242 () Bool)

(declare-fun e!4346021 () Bool)

(declare-fun tp_is_empty!46725 () Bool)

(declare-fun tp!2037029 () Bool)

(assert (=> b!7248242 (= e!4346021 (and tp_is_empty!46725 tp!2037029))))

(declare-fun b!7248243 () Bool)

(declare-fun e!4346013 () Bool)

(assert (=> b!7248243 (= e!4346016 e!4346013)))

(declare-fun res!2939943 () Bool)

(assert (=> b!7248243 (=> res!2939943 e!4346013)))

(declare-fun ct1!232 () Context!15140)

(declare-fun isEmpty!40511 (List!70470) Bool)

(assert (=> b!7248243 (= res!2939943 (isEmpty!40511 (exprs!8070 ct1!232)))))

(declare-fun lt!2583729 () (Set Context!15140))

(declare-fun derivationStepZipperUp!2454 (Context!15140 C!37534) (Set Context!15140))

(assert (=> b!7248243 (= lt!2583729 (derivationStepZipperUp!2454 ct1!232 (h!76795 s1!1971)))))

(declare-fun lt!2583724 () Unit!163844)

(declare-fun lambda!443624 () Int)

(declare-fun ct2!328 () Context!15140)

(declare-fun lt!2583730 () Context!15140)

(declare-fun lemmaConcatPreservesForall!1437 (List!70470 List!70470 Int) Unit!163844)

(assert (=> b!7248243 (= lt!2583724 (lemmaConcatPreservesForall!1437 (exprs!8070 lt!2583730) (exprs!8070 ct2!328) lambda!443624))))

(declare-fun s2!1849 () List!70471)

(declare-fun ++!16522 (List!70470 List!70470) List!70470)

(declare-fun ++!16523 (List!70471 List!70471) List!70471)

(assert (=> b!7248243 (matchZipper!3540 (set.insert (Context!15141 (++!16522 (exprs!8070 lt!2583730) (exprs!8070 ct2!328))) (as set.empty (Set Context!15140))) (++!16523 (t!384523 s1!1971) s2!1849))))

(declare-fun lt!2583720 () Unit!163844)

(assert (=> b!7248243 (= lt!2583720 (lemmaConcatPreservesForall!1437 (exprs!8070 lt!2583730) (exprs!8070 ct2!328) lambda!443624))))

(declare-fun lt!2583718 () Unit!163844)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!375 (Context!15140 Context!15140 List!70471 List!70471) Unit!163844)

(assert (=> b!7248243 (= lt!2583718 (lemmaConcatenateContextMatchesConcatOfStrings!375 lt!2583730 ct2!328 (t!384523 s1!1971) s2!1849))))

(declare-fun getWitness!2178 ((Set Context!15140) Int) Context!15140)

(assert (=> b!7248243 (= lt!2583730 (getWitness!2178 lt!2583728 lambda!443625))))

(declare-fun b!7248244 () Bool)

(declare-fun e!4346020 () Bool)

(declare-fun tp!2037028 () Bool)

(assert (=> b!7248244 (= e!4346020 tp!2037028)))

(declare-fun b!7248245 () Bool)

(declare-fun lt!2583727 () List!70470)

(declare-fun inv!89586 (Context!15140) Bool)

(assert (=> b!7248245 (= e!4346013 (inv!89586 (Context!15141 lt!2583727)))))

(declare-fun lt!2583722 () Unit!163844)

(assert (=> b!7248245 (= lt!2583722 (lemmaConcatPreservesForall!1437 (exprs!8070 ct1!232) (exprs!8070 ct2!328) lambda!443624))))

(declare-fun lt!2583723 () (Set Context!15140))

(declare-fun derivationStepZipperDown!2624 (Regex!18630 Context!15140 C!37534) (Set Context!15140))

(declare-fun tail!14294 (List!70470) List!70470)

(assert (=> b!7248245 (= lt!2583723 (derivationStepZipperDown!2624 (h!76794 (exprs!8070 ct1!232)) (Context!15141 (tail!14294 (exprs!8070 ct1!232))) (h!76795 s1!1971)))))

(declare-fun b!7248247 () Bool)

(declare-fun e!4346017 () Bool)

(declare-fun tp!2037027 () Bool)

(assert (=> b!7248247 (= e!4346017 (and tp_is_empty!46725 tp!2037027))))

(declare-fun b!7248248 () Bool)

(declare-fun res!2939948 () Bool)

(declare-fun e!4346014 () Bool)

(assert (=> b!7248248 (=> (not res!2939948) (not e!4346014))))

(assert (=> b!7248248 (= res!2939948 (matchZipper!3540 (set.insert ct2!328 (as set.empty (Set Context!15140))) s2!1849))))

(declare-fun b!7248246 () Bool)

(assert (=> b!7248246 (= e!4346014 e!4346018)))

(declare-fun res!2939944 () Bool)

(assert (=> b!7248246 (=> (not res!2939944) (not e!4346018))))

(assert (=> b!7248246 (= res!2939944 (and (not (is-Nil!70346 (exprs!8070 ct1!232))) (is-Cons!70347 s1!1971)))))

(assert (=> b!7248246 (= lt!2583727 (++!16522 (exprs!8070 ct1!232) (exprs!8070 ct2!328)))))

(declare-fun lt!2583719 () Unit!163844)

(assert (=> b!7248246 (= lt!2583719 (lemmaConcatPreservesForall!1437 (exprs!8070 ct1!232) (exprs!8070 ct2!328) lambda!443624))))

(declare-fun res!2939945 () Bool)

(assert (=> start!705130 (=> (not res!2939945) (not e!4346014))))

(assert (=> start!705130 (= res!2939945 (matchZipper!3540 lt!2583726 s1!1971))))

(assert (=> start!705130 (= lt!2583726 (set.insert ct1!232 (as set.empty (Set Context!15140))))))

(assert (=> start!705130 e!4346014))

(assert (=> start!705130 (and (inv!89586 ct1!232) e!4346019)))

(assert (=> start!705130 e!4346021))

(assert (=> start!705130 e!4346017))

(assert (=> start!705130 (and (inv!89586 ct2!328) e!4346020)))

(assert (= (and start!705130 res!2939945) b!7248248))

(assert (= (and b!7248248 res!2939948) b!7248246))

(assert (= (and b!7248246 res!2939944) b!7248239))

(assert (= (and b!7248239 res!2939946) b!7248241))

(assert (= (and b!7248241 (not res!2939947)) b!7248243))

(assert (= (and b!7248243 (not res!2939943)) b!7248245))

(assert (= start!705130 b!7248240))

(assert (= (and start!705130 (is-Cons!70347 s1!1971)) b!7248242))

(assert (= (and start!705130 (is-Cons!70347 s2!1849)) b!7248247))

(assert (= start!705130 b!7248244))

(declare-fun m!7925958 () Bool)

(assert (=> b!7248241 m!7925958))

(declare-fun m!7925960 () Bool)

(assert (=> b!7248241 m!7925960))

(declare-fun m!7925962 () Bool)

(assert (=> b!7248241 m!7925962))

(declare-fun m!7925964 () Bool)

(assert (=> b!7248241 m!7925964))

(declare-fun m!7925966 () Bool)

(assert (=> b!7248239 m!7925966))

(declare-fun m!7925968 () Bool)

(assert (=> b!7248239 m!7925968))

(declare-fun m!7925970 () Bool)

(assert (=> b!7248245 m!7925970))

(declare-fun m!7925972 () Bool)

(assert (=> b!7248245 m!7925972))

(declare-fun m!7925974 () Bool)

(assert (=> b!7248245 m!7925974))

(declare-fun m!7925976 () Bool)

(assert (=> b!7248245 m!7925976))

(declare-fun m!7925978 () Bool)

(assert (=> b!7248243 m!7925978))

(declare-fun m!7925980 () Bool)

(assert (=> b!7248243 m!7925980))

(declare-fun m!7925982 () Bool)

(assert (=> b!7248243 m!7925982))

(declare-fun m!7925984 () Bool)

(assert (=> b!7248243 m!7925984))

(assert (=> b!7248243 m!7925978))

(declare-fun m!7925986 () Bool)

(assert (=> b!7248243 m!7925986))

(declare-fun m!7925988 () Bool)

(assert (=> b!7248243 m!7925988))

(assert (=> b!7248243 m!7925982))

(declare-fun m!7925990 () Bool)

(assert (=> b!7248243 m!7925990))

(declare-fun m!7925992 () Bool)

(assert (=> b!7248243 m!7925992))

(assert (=> b!7248243 m!7925990))

(declare-fun m!7925994 () Bool)

(assert (=> b!7248243 m!7925994))

(declare-fun m!7925996 () Bool)

(assert (=> start!705130 m!7925996))

(declare-fun m!7925998 () Bool)

(assert (=> start!705130 m!7925998))

(declare-fun m!7926000 () Bool)

(assert (=> start!705130 m!7926000))

(declare-fun m!7926002 () Bool)

(assert (=> start!705130 m!7926002))

(declare-fun m!7926004 () Bool)

(assert (=> b!7248246 m!7926004))

(assert (=> b!7248246 m!7925972))

(declare-fun m!7926006 () Bool)

(assert (=> b!7248248 m!7926006))

(assert (=> b!7248248 m!7926006))

(declare-fun m!7926008 () Bool)

(assert (=> b!7248248 m!7926008))

(push 1)

(assert (not b!7248248))

(assert (not b!7248240))

(assert (not b!7248245))

(assert (not b!7248246))

(assert (not b!7248244))

(assert (not b!7248243))

(assert (not b!7248241))

(assert (not b!7248242))

(assert (not start!705130))

(assert tp_is_empty!46725)

(assert (not b!7248239))

(assert (not b!7248247))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2252598 () Bool)

(declare-fun c!1346645 () Bool)

(declare-fun isEmpty!40513 (List!70471) Bool)

(assert (=> d!2252598 (= c!1346645 (isEmpty!40513 (t!384523 s1!1971)))))

(declare-fun e!4346051 () Bool)

(assert (=> d!2252598 (= (matchZipper!3540 lt!2583728 (t!384523 s1!1971)) e!4346051)))

(declare-fun b!7248287 () Bool)

(declare-fun nullableZipper!2902 ((Set Context!15140)) Bool)

(assert (=> b!7248287 (= e!4346051 (nullableZipper!2902 lt!2583728))))

(declare-fun b!7248288 () Bool)

(declare-fun head!14891 (List!70471) C!37534)

(declare-fun tail!14296 (List!70471) List!70471)

(assert (=> b!7248288 (= e!4346051 (matchZipper!3540 (derivationStepZipper!3408 lt!2583728 (head!14891 (t!384523 s1!1971))) (tail!14296 (t!384523 s1!1971))))))

(assert (= (and d!2252598 c!1346645) b!7248287))

(assert (= (and d!2252598 (not c!1346645)) b!7248288))

(declare-fun m!7926062 () Bool)

(assert (=> d!2252598 m!7926062))

(declare-fun m!7926064 () Bool)

(assert (=> b!7248287 m!7926064))

(declare-fun m!7926066 () Bool)

(assert (=> b!7248288 m!7926066))

(assert (=> b!7248288 m!7926066))

(declare-fun m!7926068 () Bool)

(assert (=> b!7248288 m!7926068))

(declare-fun m!7926070 () Bool)

(assert (=> b!7248288 m!7926070))

(assert (=> b!7248288 m!7926068))

(assert (=> b!7248288 m!7926070))

(declare-fun m!7926072 () Bool)

(assert (=> b!7248288 m!7926072))

(assert (=> b!7248239 d!2252598))

(declare-fun d!2252600 () Bool)

(assert (=> d!2252600 true))

(declare-fun lambda!443644 () Int)

(declare-fun flatMap!2796 ((Set Context!15140) Int) (Set Context!15140))

(assert (=> d!2252600 (= (derivationStepZipper!3408 lt!2583726 (h!76795 s1!1971)) (flatMap!2796 lt!2583726 lambda!443644))))

(declare-fun bs!1905647 () Bool)

(assert (= bs!1905647 d!2252600))

(declare-fun m!7926074 () Bool)

(assert (=> bs!1905647 m!7926074))

(assert (=> b!7248239 d!2252600))

(declare-fun bs!1905648 () Bool)

(declare-fun d!2252602 () Bool)

(assert (= bs!1905648 (and d!2252602 b!7248246)))

(declare-fun lambda!443647 () Int)

(assert (=> bs!1905648 (= lambda!443647 lambda!443624)))

(declare-fun forall!17471 (List!70470 Int) Bool)

(assert (=> d!2252602 (= (inv!89586 (Context!15141 lt!2583727)) (forall!17471 (exprs!8070 (Context!15141 lt!2583727)) lambda!443647))))

(declare-fun bs!1905649 () Bool)

(assert (= bs!1905649 d!2252602))

(declare-fun m!7926076 () Bool)

(assert (=> bs!1905649 m!7926076))

(assert (=> b!7248245 d!2252602))

(declare-fun d!2252604 () Bool)

(assert (=> d!2252604 (forall!17471 (++!16522 (exprs!8070 ct1!232) (exprs!8070 ct2!328)) lambda!443624)))

(declare-fun lt!2583772 () Unit!163844)

(declare-fun choose!55955 (List!70470 List!70470 Int) Unit!163844)

(assert (=> d!2252604 (= lt!2583772 (choose!55955 (exprs!8070 ct1!232) (exprs!8070 ct2!328) lambda!443624))))

(assert (=> d!2252604 (forall!17471 (exprs!8070 ct1!232) lambda!443624)))

(assert (=> d!2252604 (= (lemmaConcatPreservesForall!1437 (exprs!8070 ct1!232) (exprs!8070 ct2!328) lambda!443624) lt!2583772)))

(declare-fun bs!1905650 () Bool)

(assert (= bs!1905650 d!2252604))

(assert (=> bs!1905650 m!7926004))

(assert (=> bs!1905650 m!7926004))

(declare-fun m!7926078 () Bool)

(assert (=> bs!1905650 m!7926078))

(declare-fun m!7926080 () Bool)

(assert (=> bs!1905650 m!7926080))

(declare-fun m!7926082 () Bool)

(assert (=> bs!1905650 m!7926082))

(assert (=> b!7248245 d!2252604))

(declare-fun call!660041 () List!70470)

(declare-fun c!1346660 () Bool)

(declare-fun c!1346658 () Bool)

(declare-fun call!660042 () (Set Context!15140))

(declare-fun bm!660035 () Bool)

(declare-fun c!1346662 () Bool)

(assert (=> bm!660035 (= call!660042 (derivationStepZipperDown!2624 (ite c!1346662 (regTwo!37773 (h!76794 (exprs!8070 ct1!232))) (ite c!1346658 (regTwo!37772 (h!76794 (exprs!8070 ct1!232))) (ite c!1346660 (regOne!37772 (h!76794 (exprs!8070 ct1!232))) (reg!18959 (h!76794 (exprs!8070 ct1!232)))))) (ite (or c!1346662 c!1346658) (Context!15141 (tail!14294 (exprs!8070 ct1!232))) (Context!15141 call!660041)) (h!76795 s1!1971)))))

(declare-fun bm!660036 () Bool)

(declare-fun call!660043 () (Set Context!15140))

(declare-fun call!660045 () (Set Context!15140))

(assert (=> bm!660036 (= call!660043 call!660045)))

(declare-fun b!7248313 () Bool)

(declare-fun e!4346068 () Bool)

(assert (=> b!7248313 (= c!1346658 e!4346068)))

(declare-fun res!2939969 () Bool)

(assert (=> b!7248313 (=> (not res!2939969) (not e!4346068))))

(assert (=> b!7248313 (= res!2939969 (is-Concat!27475 (h!76794 (exprs!8070 ct1!232))))))

(declare-fun e!4346066 () (Set Context!15140))

(declare-fun e!4346067 () (Set Context!15140))

(assert (=> b!7248313 (= e!4346066 e!4346067)))

(declare-fun call!660044 () List!70470)

(declare-fun bm!660037 () Bool)

(declare-fun call!660040 () (Set Context!15140))

(assert (=> bm!660037 (= call!660040 (derivationStepZipperDown!2624 (ite c!1346662 (regOne!37773 (h!76794 (exprs!8070 ct1!232))) (regOne!37772 (h!76794 (exprs!8070 ct1!232)))) (ite c!1346662 (Context!15141 (tail!14294 (exprs!8070 ct1!232))) (Context!15141 call!660044)) (h!76795 s1!1971)))))

(declare-fun d!2252606 () Bool)

(declare-fun c!1346659 () Bool)

(assert (=> d!2252606 (= c!1346659 (and (is-ElementMatch!18630 (h!76794 (exprs!8070 ct1!232))) (= (c!1346635 (h!76794 (exprs!8070 ct1!232))) (h!76795 s1!1971))))))

(declare-fun e!4346069 () (Set Context!15140))

(assert (=> d!2252606 (= (derivationStepZipperDown!2624 (h!76794 (exprs!8070 ct1!232)) (Context!15141 (tail!14294 (exprs!8070 ct1!232))) (h!76795 s1!1971)) e!4346069)))

(declare-fun b!7248314 () Bool)

(assert (=> b!7248314 (= e!4346069 e!4346066)))

(assert (=> b!7248314 (= c!1346662 (is-Union!18630 (h!76794 (exprs!8070 ct1!232))))))

(declare-fun bm!660038 () Bool)

(assert (=> bm!660038 (= call!660045 call!660042)))

(declare-fun b!7248315 () Bool)

(declare-fun nullable!7893 (Regex!18630) Bool)

(assert (=> b!7248315 (= e!4346068 (nullable!7893 (regOne!37772 (h!76794 (exprs!8070 ct1!232)))))))

(declare-fun bm!660039 () Bool)

(declare-fun $colon$colon!2908 (List!70470 Regex!18630) List!70470)

(assert (=> bm!660039 (= call!660044 ($colon$colon!2908 (exprs!8070 (Context!15141 (tail!14294 (exprs!8070 ct1!232)))) (ite (or c!1346658 c!1346660) (regTwo!37772 (h!76794 (exprs!8070 ct1!232))) (h!76794 (exprs!8070 ct1!232)))))))

(declare-fun b!7248316 () Bool)

(assert (=> b!7248316 (= e!4346066 (set.union call!660040 call!660042))))

(declare-fun b!7248317 () Bool)

(assert (=> b!7248317 (= e!4346067 (set.union call!660040 call!660045))))

(declare-fun bm!660040 () Bool)

(assert (=> bm!660040 (= call!660041 call!660044)))

(declare-fun b!7248318 () Bool)

(assert (=> b!7248318 (= e!4346069 (set.insert (Context!15141 (tail!14294 (exprs!8070 ct1!232))) (as set.empty (Set Context!15140))))))

(declare-fun b!7248319 () Bool)

(declare-fun e!4346064 () (Set Context!15140))

(assert (=> b!7248319 (= e!4346064 call!660043)))

(declare-fun b!7248320 () Bool)

(declare-fun e!4346065 () (Set Context!15140))

(assert (=> b!7248320 (= e!4346067 e!4346065)))

(assert (=> b!7248320 (= c!1346660 (is-Concat!27475 (h!76794 (exprs!8070 ct1!232))))))

(declare-fun b!7248321 () Bool)

(assert (=> b!7248321 (= e!4346065 call!660043)))

(declare-fun b!7248322 () Bool)

(declare-fun c!1346661 () Bool)

(assert (=> b!7248322 (= c!1346661 (is-Star!18630 (h!76794 (exprs!8070 ct1!232))))))

(assert (=> b!7248322 (= e!4346065 e!4346064)))

(declare-fun b!7248323 () Bool)

(assert (=> b!7248323 (= e!4346064 (as set.empty (Set Context!15140)))))

(assert (= (and d!2252606 c!1346659) b!7248318))

(assert (= (and d!2252606 (not c!1346659)) b!7248314))

(assert (= (and b!7248314 c!1346662) b!7248316))

(assert (= (and b!7248314 (not c!1346662)) b!7248313))

(assert (= (and b!7248313 res!2939969) b!7248315))

(assert (= (and b!7248313 c!1346658) b!7248317))

(assert (= (and b!7248313 (not c!1346658)) b!7248320))

(assert (= (and b!7248320 c!1346660) b!7248321))

(assert (= (and b!7248320 (not c!1346660)) b!7248322))

(assert (= (and b!7248322 c!1346661) b!7248319))

(assert (= (and b!7248322 (not c!1346661)) b!7248323))

(assert (= (or b!7248321 b!7248319) bm!660040))

(assert (= (or b!7248321 b!7248319) bm!660036))

(assert (= (or b!7248317 bm!660040) bm!660039))

(assert (= (or b!7248317 bm!660036) bm!660038))

(assert (= (or b!7248316 bm!660038) bm!660035))

(assert (= (or b!7248316 b!7248317) bm!660037))

(declare-fun m!7926084 () Bool)

(assert (=> bm!660035 m!7926084))

(declare-fun m!7926086 () Bool)

(assert (=> bm!660039 m!7926086))

(declare-fun m!7926088 () Bool)

(assert (=> b!7248315 m!7926088))

(declare-fun m!7926090 () Bool)

(assert (=> b!7248318 m!7926090))

(declare-fun m!7926092 () Bool)

(assert (=> bm!660037 m!7926092))

(assert (=> b!7248245 d!2252606))

(declare-fun d!2252610 () Bool)

(assert (=> d!2252610 (= (tail!14294 (exprs!8070 ct1!232)) (t!384522 (exprs!8070 ct1!232)))))

(assert (=> b!7248245 d!2252610))

(declare-fun d!2252612 () Bool)

(assert (=> d!2252612 (= (isEmpty!40511 (exprs!8070 ct1!232)) (is-Nil!70346 (exprs!8070 ct1!232)))))

(assert (=> b!7248243 d!2252612))

(declare-fun d!2252614 () Bool)

(declare-fun e!4346074 () Bool)

(assert (=> d!2252614 e!4346074))

(declare-fun res!2939972 () Bool)

(assert (=> d!2252614 (=> (not res!2939972) (not e!4346074))))

(declare-fun lt!2583775 () Context!15140)

(declare-fun dynLambda!28713 (Int Context!15140) Bool)

(assert (=> d!2252614 (= res!2939972 (dynLambda!28713 lambda!443625 lt!2583775))))

(declare-fun getWitness!2180 (List!70472 Int) Context!15140)

(assert (=> d!2252614 (= lt!2583775 (getWitness!2180 (toList!11459 lt!2583728) lambda!443625))))

(assert (=> d!2252614 (exists!4338 lt!2583728 lambda!443625)))

(assert (=> d!2252614 (= (getWitness!2178 lt!2583728 lambda!443625) lt!2583775)))

(declare-fun b!7248330 () Bool)

(assert (=> b!7248330 (= e!4346074 (set.member lt!2583775 lt!2583728))))

(assert (= (and d!2252614 res!2939972) b!7248330))

(declare-fun b_lambda!278223 () Bool)

(assert (=> (not b_lambda!278223) (not d!2252614)))

(declare-fun m!7926094 () Bool)

(assert (=> d!2252614 m!7926094))

(assert (=> d!2252614 m!7925964))

(assert (=> d!2252614 m!7925964))

(declare-fun m!7926096 () Bool)

(assert (=> d!2252614 m!7926096))

(assert (=> d!2252614 m!7925958))

(declare-fun m!7926098 () Bool)

(assert (=> b!7248330 m!7926098))

(assert (=> b!7248243 d!2252614))

(declare-fun bs!1905652 () Bool)

(declare-fun d!2252616 () Bool)

(assert (= bs!1905652 (and d!2252616 b!7248246)))

(declare-fun lambda!443653 () Int)

(assert (=> bs!1905652 (= lambda!443653 lambda!443624)))

(declare-fun bs!1905653 () Bool)

(assert (= bs!1905653 (and d!2252616 d!2252602)))

(assert (=> bs!1905653 (= lambda!443653 lambda!443647)))

(assert (=> d!2252616 (matchZipper!3540 (set.insert (Context!15141 (++!16522 (exprs!8070 lt!2583730) (exprs!8070 ct2!328))) (as set.empty (Set Context!15140))) (++!16523 (t!384523 s1!1971) s2!1849))))

(declare-fun lt!2583781 () Unit!163844)

(assert (=> d!2252616 (= lt!2583781 (lemmaConcatPreservesForall!1437 (exprs!8070 lt!2583730) (exprs!8070 ct2!328) lambda!443653))))

(declare-fun lt!2583780 () Unit!163844)

(declare-fun choose!55956 (Context!15140 Context!15140 List!70471 List!70471) Unit!163844)

(assert (=> d!2252616 (= lt!2583780 (choose!55956 lt!2583730 ct2!328 (t!384523 s1!1971) s2!1849))))

(assert (=> d!2252616 (matchZipper!3540 (set.insert lt!2583730 (as set.empty (Set Context!15140))) (t!384523 s1!1971))))

(assert (=> d!2252616 (= (lemmaConcatenateContextMatchesConcatOfStrings!375 lt!2583730 ct2!328 (t!384523 s1!1971) s2!1849) lt!2583780)))

(declare-fun bs!1905654 () Bool)

(assert (= bs!1905654 d!2252616))

(declare-fun m!7926114 () Bool)

(assert (=> bs!1905654 m!7926114))

(assert (=> bs!1905654 m!7925994))

(assert (=> bs!1905654 m!7925982))

(assert (=> bs!1905654 m!7925990))

(assert (=> bs!1905654 m!7925992))

(assert (=> bs!1905654 m!7925990))

(declare-fun m!7926116 () Bool)

(assert (=> bs!1905654 m!7926116))

(assert (=> bs!1905654 m!7925982))

(declare-fun m!7926118 () Bool)

(assert (=> bs!1905654 m!7926118))

(assert (=> bs!1905654 m!7926114))

(declare-fun m!7926120 () Bool)

(assert (=> bs!1905654 m!7926120))

(assert (=> b!7248243 d!2252616))

(declare-fun b!7248347 () Bool)

(declare-fun res!2939980 () Bool)

(declare-fun e!4346082 () Bool)

(assert (=> b!7248347 (=> (not res!2939980) (not e!4346082))))

(declare-fun lt!2583786 () List!70470)

(declare-fun size!41694 (List!70470) Int)

(assert (=> b!7248347 (= res!2939980 (= (size!41694 lt!2583786) (+ (size!41694 (exprs!8070 lt!2583730)) (size!41694 (exprs!8070 ct2!328)))))))

(declare-fun d!2252622 () Bool)

(assert (=> d!2252622 e!4346082))

(declare-fun res!2939979 () Bool)

(assert (=> d!2252622 (=> (not res!2939979) (not e!4346082))))

(declare-fun content!14578 (List!70470) (Set Regex!18630))

(assert (=> d!2252622 (= res!2939979 (= (content!14578 lt!2583786) (set.union (content!14578 (exprs!8070 lt!2583730)) (content!14578 (exprs!8070 ct2!328)))))))

(declare-fun e!4346083 () List!70470)

(assert (=> d!2252622 (= lt!2583786 e!4346083)))

(declare-fun c!1346670 () Bool)

(assert (=> d!2252622 (= c!1346670 (is-Nil!70346 (exprs!8070 lt!2583730)))))

(assert (=> d!2252622 (= (++!16522 (exprs!8070 lt!2583730) (exprs!8070 ct2!328)) lt!2583786)))

(declare-fun b!7248345 () Bool)

(assert (=> b!7248345 (= e!4346083 (exprs!8070 ct2!328))))

(declare-fun b!7248348 () Bool)

(assert (=> b!7248348 (= e!4346082 (or (not (= (exprs!8070 ct2!328) Nil!70346)) (= lt!2583786 (exprs!8070 lt!2583730))))))

(declare-fun b!7248346 () Bool)

(assert (=> b!7248346 (= e!4346083 (Cons!70346 (h!76794 (exprs!8070 lt!2583730)) (++!16522 (t!384522 (exprs!8070 lt!2583730)) (exprs!8070 ct2!328))))))

(assert (= (and d!2252622 c!1346670) b!7248345))

(assert (= (and d!2252622 (not c!1346670)) b!7248346))

(assert (= (and d!2252622 res!2939979) b!7248347))

(assert (= (and b!7248347 res!2939980) b!7248348))

(declare-fun m!7926122 () Bool)

(assert (=> b!7248347 m!7926122))

(declare-fun m!7926124 () Bool)

(assert (=> b!7248347 m!7926124))

(declare-fun m!7926126 () Bool)

(assert (=> b!7248347 m!7926126))

(declare-fun m!7926128 () Bool)

(assert (=> d!2252622 m!7926128))

(declare-fun m!7926130 () Bool)

(assert (=> d!2252622 m!7926130))

(declare-fun m!7926132 () Bool)

(assert (=> d!2252622 m!7926132))

(declare-fun m!7926134 () Bool)

(assert (=> b!7248346 m!7926134))

(assert (=> b!7248243 d!2252622))

(declare-fun b!7248360 () Bool)

(declare-fun res!2939987 () Bool)

(declare-fun e!4346090 () Bool)

(assert (=> b!7248360 (=> (not res!2939987) (not e!4346090))))

(declare-fun lt!2583790 () List!70471)

(declare-fun size!41695 (List!70471) Int)

(assert (=> b!7248360 (= res!2939987 (= (size!41695 lt!2583790) (+ (size!41695 (t!384523 s1!1971)) (size!41695 s2!1849))))))

(declare-fun b!7248361 () Bool)

(assert (=> b!7248361 (= e!4346090 (or (not (= s2!1849 Nil!70347)) (= lt!2583790 (t!384523 s1!1971))))))

(declare-fun b!7248359 () Bool)

(declare-fun e!4346089 () List!70471)

(assert (=> b!7248359 (= e!4346089 (Cons!70347 (h!76795 (t!384523 s1!1971)) (++!16523 (t!384523 (t!384523 s1!1971)) s2!1849)))))

(declare-fun d!2252624 () Bool)

(assert (=> d!2252624 e!4346090))

(declare-fun res!2939986 () Bool)

(assert (=> d!2252624 (=> (not res!2939986) (not e!4346090))))

(declare-fun content!14579 (List!70471) (Set C!37534))

(assert (=> d!2252624 (= res!2939986 (= (content!14579 lt!2583790) (set.union (content!14579 (t!384523 s1!1971)) (content!14579 s2!1849))))))

(assert (=> d!2252624 (= lt!2583790 e!4346089)))

(declare-fun c!1346673 () Bool)

(assert (=> d!2252624 (= c!1346673 (is-Nil!70347 (t!384523 s1!1971)))))

(assert (=> d!2252624 (= (++!16523 (t!384523 s1!1971) s2!1849) lt!2583790)))

(declare-fun b!7248358 () Bool)

(assert (=> b!7248358 (= e!4346089 s2!1849)))

(assert (= (and d!2252624 c!1346673) b!7248358))

(assert (= (and d!2252624 (not c!1346673)) b!7248359))

(assert (= (and d!2252624 res!2939986) b!7248360))

(assert (= (and b!7248360 res!2939987) b!7248361))

(declare-fun m!7926142 () Bool)

(assert (=> b!7248360 m!7926142))

(declare-fun m!7926144 () Bool)

(assert (=> b!7248360 m!7926144))

(declare-fun m!7926146 () Bool)

(assert (=> b!7248360 m!7926146))

(declare-fun m!7926148 () Bool)

(assert (=> b!7248359 m!7926148))

(declare-fun m!7926150 () Bool)

(assert (=> d!2252624 m!7926150))

(declare-fun m!7926152 () Bool)

(assert (=> d!2252624 m!7926152))

(declare-fun m!7926154 () Bool)

(assert (=> d!2252624 m!7926154))

(assert (=> b!7248243 d!2252624))

(declare-fun d!2252630 () Bool)

(declare-fun c!1346674 () Bool)

(assert (=> d!2252630 (= c!1346674 (isEmpty!40513 (++!16523 (t!384523 s1!1971) s2!1849)))))

(declare-fun e!4346091 () Bool)

(assert (=> d!2252630 (= (matchZipper!3540 (set.insert (Context!15141 (++!16522 (exprs!8070 lt!2583730) (exprs!8070 ct2!328))) (as set.empty (Set Context!15140))) (++!16523 (t!384523 s1!1971) s2!1849)) e!4346091)))

(declare-fun b!7248362 () Bool)

(assert (=> b!7248362 (= e!4346091 (nullableZipper!2902 (set.insert (Context!15141 (++!16522 (exprs!8070 lt!2583730) (exprs!8070 ct2!328))) (as set.empty (Set Context!15140)))))))

(declare-fun b!7248363 () Bool)

(assert (=> b!7248363 (= e!4346091 (matchZipper!3540 (derivationStepZipper!3408 (set.insert (Context!15141 (++!16522 (exprs!8070 lt!2583730) (exprs!8070 ct2!328))) (as set.empty (Set Context!15140))) (head!14891 (++!16523 (t!384523 s1!1971) s2!1849))) (tail!14296 (++!16523 (t!384523 s1!1971) s2!1849))))))

(assert (= (and d!2252630 c!1346674) b!7248362))

(assert (= (and d!2252630 (not c!1346674)) b!7248363))

(assert (=> d!2252630 m!7925990))

(declare-fun m!7926156 () Bool)

(assert (=> d!2252630 m!7926156))

(assert (=> b!7248362 m!7925982))

(declare-fun m!7926158 () Bool)

(assert (=> b!7248362 m!7926158))

(assert (=> b!7248363 m!7925990))

(declare-fun m!7926160 () Bool)

(assert (=> b!7248363 m!7926160))

(assert (=> b!7248363 m!7925982))

(assert (=> b!7248363 m!7926160))

(declare-fun m!7926162 () Bool)

(assert (=> b!7248363 m!7926162))

(assert (=> b!7248363 m!7925990))

(declare-fun m!7926164 () Bool)

(assert (=> b!7248363 m!7926164))

(assert (=> b!7248363 m!7926162))

(assert (=> b!7248363 m!7926164))

(declare-fun m!7926166 () Bool)

(assert (=> b!7248363 m!7926166))

(assert (=> b!7248243 d!2252630))

(declare-fun bm!660043 () Bool)

(declare-fun call!660048 () (Set Context!15140))

(assert (=> bm!660043 (= call!660048 (derivationStepZipperDown!2624 (h!76794 (exprs!8070 ct1!232)) (Context!15141 (t!384522 (exprs!8070 ct1!232))) (h!76795 s1!1971)))))

(declare-fun e!4346099 () (Set Context!15140))

(declare-fun b!7248377 () Bool)

(assert (=> b!7248377 (= e!4346099 (set.union call!660048 (derivationStepZipperUp!2454 (Context!15141 (t!384522 (exprs!8070 ct1!232))) (h!76795 s1!1971))))))

(declare-fun b!7248378 () Bool)

(declare-fun e!4346101 () Bool)

(assert (=> b!7248378 (= e!4346101 (nullable!7893 (h!76794 (exprs!8070 ct1!232))))))

(declare-fun b!7248376 () Bool)

(declare-fun e!4346100 () (Set Context!15140))

(assert (=> b!7248376 (= e!4346099 e!4346100)))

(declare-fun c!1346681 () Bool)

(assert (=> b!7248376 (= c!1346681 (is-Cons!70346 (exprs!8070 ct1!232)))))

(declare-fun d!2252632 () Bool)

(declare-fun c!1346680 () Bool)

(assert (=> d!2252632 (= c!1346680 e!4346101)))

(declare-fun res!2939990 () Bool)

(assert (=> d!2252632 (=> (not res!2939990) (not e!4346101))))

(assert (=> d!2252632 (= res!2939990 (is-Cons!70346 (exprs!8070 ct1!232)))))

(assert (=> d!2252632 (= (derivationStepZipperUp!2454 ct1!232 (h!76795 s1!1971)) e!4346099)))

(declare-fun b!7248379 () Bool)

(assert (=> b!7248379 (= e!4346100 call!660048)))

(declare-fun b!7248380 () Bool)

(assert (=> b!7248380 (= e!4346100 (as set.empty (Set Context!15140)))))

(assert (= (and d!2252632 res!2939990) b!7248378))

(assert (= (and d!2252632 c!1346680) b!7248377))

(assert (= (and d!2252632 (not c!1346680)) b!7248376))

(assert (= (and b!7248376 c!1346681) b!7248379))

(assert (= (and b!7248376 (not c!1346681)) b!7248380))

(assert (= (or b!7248377 b!7248379) bm!660043))

(declare-fun m!7926184 () Bool)

(assert (=> bm!660043 m!7926184))

(declare-fun m!7926186 () Bool)

(assert (=> b!7248377 m!7926186))

(declare-fun m!7926190 () Bool)

(assert (=> b!7248378 m!7926190))

(assert (=> b!7248243 d!2252632))

(declare-fun d!2252636 () Bool)

(assert (=> d!2252636 (forall!17471 (++!16522 (exprs!8070 lt!2583730) (exprs!8070 ct2!328)) lambda!443624)))

(declare-fun lt!2583794 () Unit!163844)

(assert (=> d!2252636 (= lt!2583794 (choose!55955 (exprs!8070 lt!2583730) (exprs!8070 ct2!328) lambda!443624))))

(assert (=> d!2252636 (forall!17471 (exprs!8070 lt!2583730) lambda!443624)))

(assert (=> d!2252636 (= (lemmaConcatPreservesForall!1437 (exprs!8070 lt!2583730) (exprs!8070 ct2!328) lambda!443624) lt!2583794)))

(declare-fun bs!1905656 () Bool)

(assert (= bs!1905656 d!2252636))

(assert (=> bs!1905656 m!7925994))

(assert (=> bs!1905656 m!7925994))

(declare-fun m!7926192 () Bool)

(assert (=> bs!1905656 m!7926192))

(declare-fun m!7926194 () Bool)

(assert (=> bs!1905656 m!7926194))

(declare-fun m!7926196 () Bool)

(assert (=> bs!1905656 m!7926196))

(assert (=> b!7248243 d!2252636))

(declare-fun d!2252640 () Bool)

(declare-fun c!1346682 () Bool)

(assert (=> d!2252640 (= c!1346682 (isEmpty!40513 s1!1971))))

(declare-fun e!4346102 () Bool)

(assert (=> d!2252640 (= (matchZipper!3540 lt!2583726 s1!1971) e!4346102)))

(declare-fun b!7248381 () Bool)

(assert (=> b!7248381 (= e!4346102 (nullableZipper!2902 lt!2583726))))

(declare-fun b!7248382 () Bool)

(assert (=> b!7248382 (= e!4346102 (matchZipper!3540 (derivationStepZipper!3408 lt!2583726 (head!14891 s1!1971)) (tail!14296 s1!1971)))))

(assert (= (and d!2252640 c!1346682) b!7248381))

(assert (= (and d!2252640 (not c!1346682)) b!7248382))

(declare-fun m!7926198 () Bool)

(assert (=> d!2252640 m!7926198))

(declare-fun m!7926200 () Bool)

(assert (=> b!7248381 m!7926200))

(declare-fun m!7926202 () Bool)

(assert (=> b!7248382 m!7926202))

(assert (=> b!7248382 m!7926202))

(declare-fun m!7926204 () Bool)

(assert (=> b!7248382 m!7926204))

(declare-fun m!7926206 () Bool)

(assert (=> b!7248382 m!7926206))

(assert (=> b!7248382 m!7926204))

(assert (=> b!7248382 m!7926206))

(declare-fun m!7926208 () Bool)

(assert (=> b!7248382 m!7926208))

(assert (=> start!705130 d!2252640))

(declare-fun bs!1905657 () Bool)

(declare-fun d!2252642 () Bool)

(assert (= bs!1905657 (and d!2252642 b!7248246)))

(declare-fun lambda!443654 () Int)

(assert (=> bs!1905657 (= lambda!443654 lambda!443624)))

(declare-fun bs!1905658 () Bool)

(assert (= bs!1905658 (and d!2252642 d!2252602)))

(assert (=> bs!1905658 (= lambda!443654 lambda!443647)))

(declare-fun bs!1905659 () Bool)

(assert (= bs!1905659 (and d!2252642 d!2252616)))

(assert (=> bs!1905659 (= lambda!443654 lambda!443653)))

(assert (=> d!2252642 (= (inv!89586 ct1!232) (forall!17471 (exprs!8070 ct1!232) lambda!443654))))

(declare-fun bs!1905660 () Bool)

(assert (= bs!1905660 d!2252642))

(declare-fun m!7926210 () Bool)

(assert (=> bs!1905660 m!7926210))

(assert (=> start!705130 d!2252642))

(declare-fun bs!1905661 () Bool)

(declare-fun d!2252644 () Bool)

(assert (= bs!1905661 (and d!2252644 b!7248246)))

(declare-fun lambda!443655 () Int)

(assert (=> bs!1905661 (= lambda!443655 lambda!443624)))

(declare-fun bs!1905662 () Bool)

(assert (= bs!1905662 (and d!2252644 d!2252602)))

(assert (=> bs!1905662 (= lambda!443655 lambda!443647)))

(declare-fun bs!1905663 () Bool)

(assert (= bs!1905663 (and d!2252644 d!2252616)))

(assert (=> bs!1905663 (= lambda!443655 lambda!443653)))

(declare-fun bs!1905664 () Bool)

(assert (= bs!1905664 (and d!2252644 d!2252642)))

(assert (=> bs!1905664 (= lambda!443655 lambda!443654)))

(assert (=> d!2252644 (= (inv!89586 ct2!328) (forall!17471 (exprs!8070 ct2!328) lambda!443655))))

(declare-fun bs!1905665 () Bool)

(assert (= bs!1905665 d!2252644))

(declare-fun m!7926212 () Bool)

(assert (=> bs!1905665 m!7926212))

(assert (=> start!705130 d!2252644))

(declare-fun d!2252646 () Bool)

(declare-fun c!1346683 () Bool)

(assert (=> d!2252646 (= c!1346683 (isEmpty!40513 s2!1849))))

(declare-fun e!4346103 () Bool)

(assert (=> d!2252646 (= (matchZipper!3540 (set.insert ct2!328 (as set.empty (Set Context!15140))) s2!1849) e!4346103)))

(declare-fun b!7248383 () Bool)

(assert (=> b!7248383 (= e!4346103 (nullableZipper!2902 (set.insert ct2!328 (as set.empty (Set Context!15140)))))))

(declare-fun b!7248384 () Bool)

(assert (=> b!7248384 (= e!4346103 (matchZipper!3540 (derivationStepZipper!3408 (set.insert ct2!328 (as set.empty (Set Context!15140))) (head!14891 s2!1849)) (tail!14296 s2!1849)))))

(assert (= (and d!2252646 c!1346683) b!7248383))

(assert (= (and d!2252646 (not c!1346683)) b!7248384))

(declare-fun m!7926214 () Bool)

(assert (=> d!2252646 m!7926214))

(assert (=> b!7248383 m!7926006))

(declare-fun m!7926216 () Bool)

(assert (=> b!7248383 m!7926216))

(declare-fun m!7926218 () Bool)

(assert (=> b!7248384 m!7926218))

(assert (=> b!7248384 m!7926006))

(assert (=> b!7248384 m!7926218))

(declare-fun m!7926220 () Bool)

(assert (=> b!7248384 m!7926220))

(declare-fun m!7926222 () Bool)

(assert (=> b!7248384 m!7926222))

(assert (=> b!7248384 m!7926220))

(assert (=> b!7248384 m!7926222))

(declare-fun m!7926224 () Bool)

(assert (=> b!7248384 m!7926224))

(assert (=> b!7248248 d!2252646))

(declare-fun b!7248387 () Bool)

(declare-fun res!2939992 () Bool)

(declare-fun e!4346104 () Bool)

(assert (=> b!7248387 (=> (not res!2939992) (not e!4346104))))

(declare-fun lt!2583795 () List!70470)

(assert (=> b!7248387 (= res!2939992 (= (size!41694 lt!2583795) (+ (size!41694 (exprs!8070 ct1!232)) (size!41694 (exprs!8070 ct2!328)))))))

(declare-fun d!2252648 () Bool)

(assert (=> d!2252648 e!4346104))

(declare-fun res!2939991 () Bool)

(assert (=> d!2252648 (=> (not res!2939991) (not e!4346104))))

(assert (=> d!2252648 (= res!2939991 (= (content!14578 lt!2583795) (set.union (content!14578 (exprs!8070 ct1!232)) (content!14578 (exprs!8070 ct2!328)))))))

(declare-fun e!4346105 () List!70470)

(assert (=> d!2252648 (= lt!2583795 e!4346105)))

(declare-fun c!1346684 () Bool)

(assert (=> d!2252648 (= c!1346684 (is-Nil!70346 (exprs!8070 ct1!232)))))

(assert (=> d!2252648 (= (++!16522 (exprs!8070 ct1!232) (exprs!8070 ct2!328)) lt!2583795)))

(declare-fun b!7248385 () Bool)

(assert (=> b!7248385 (= e!4346105 (exprs!8070 ct2!328))))

(declare-fun b!7248388 () Bool)

(assert (=> b!7248388 (= e!4346104 (or (not (= (exprs!8070 ct2!328) Nil!70346)) (= lt!2583795 (exprs!8070 ct1!232))))))

(declare-fun b!7248386 () Bool)

(assert (=> b!7248386 (= e!4346105 (Cons!70346 (h!76794 (exprs!8070 ct1!232)) (++!16522 (t!384522 (exprs!8070 ct1!232)) (exprs!8070 ct2!328))))))

(assert (= (and d!2252648 c!1346684) b!7248385))

(assert (= (and d!2252648 (not c!1346684)) b!7248386))

(assert (= (and d!2252648 res!2939991) b!7248387))

(assert (= (and b!7248387 res!2939992) b!7248388))

(declare-fun m!7926226 () Bool)

(assert (=> b!7248387 m!7926226))

(declare-fun m!7926228 () Bool)

(assert (=> b!7248387 m!7926228))

(assert (=> b!7248387 m!7926126))

(declare-fun m!7926230 () Bool)

(assert (=> d!2252648 m!7926230))

(declare-fun m!7926232 () Bool)

(assert (=> d!2252648 m!7926232))

(assert (=> d!2252648 m!7926132))

(declare-fun m!7926234 () Bool)

(assert (=> b!7248386 m!7926234))

(assert (=> b!7248246 d!2252648))

(assert (=> b!7248246 d!2252604))

(declare-fun d!2252650 () Bool)

(declare-fun lt!2583798 () Bool)

(assert (=> d!2252650 (= lt!2583798 (exists!4339 (toList!11459 lt!2583728) lambda!443625))))

(declare-fun choose!55957 ((Set Context!15140) Int) Bool)

(assert (=> d!2252650 (= lt!2583798 (choose!55957 lt!2583728 lambda!443625))))

(assert (=> d!2252650 (= (exists!4338 lt!2583728 lambda!443625) lt!2583798)))

(declare-fun bs!1905666 () Bool)

(assert (= bs!1905666 d!2252650))

(assert (=> bs!1905666 m!7925964))

(assert (=> bs!1905666 m!7925964))

(declare-fun m!7926236 () Bool)

(assert (=> bs!1905666 m!7926236))

(declare-fun m!7926238 () Bool)

(assert (=> bs!1905666 m!7926238))

(assert (=> b!7248241 d!2252650))

(declare-fun bs!1905667 () Bool)

(declare-fun d!2252652 () Bool)

(assert (= bs!1905667 (and d!2252652 b!7248241)))

(declare-fun lambda!443658 () Int)

(assert (=> bs!1905667 (not (= lambda!443658 lambda!443625))))

(assert (=> d!2252652 true))

(declare-fun order!28955 () Int)

(declare-fun dynLambda!28714 (Int Int) Int)

(assert (=> d!2252652 (< (dynLambda!28714 order!28955 lambda!443625) (dynLambda!28714 order!28955 lambda!443658))))

(declare-fun forall!17472 (List!70472 Int) Bool)

(assert (=> d!2252652 (= (exists!4339 lt!2583721 lambda!443625) (not (forall!17472 lt!2583721 lambda!443658)))))

(declare-fun bs!1905668 () Bool)

(assert (= bs!1905668 d!2252652))

(declare-fun m!7926240 () Bool)

(assert (=> bs!1905668 m!7926240))

(assert (=> b!7248241 d!2252652))

(declare-fun bs!1905669 () Bool)

(declare-fun d!2252654 () Bool)

(assert (= bs!1905669 (and d!2252654 b!7248241)))

(declare-fun lambda!443661 () Int)

(assert (=> bs!1905669 (= lambda!443661 lambda!443625)))

(declare-fun bs!1905670 () Bool)

(assert (= bs!1905670 (and d!2252654 d!2252652)))

(assert (=> bs!1905670 (not (= lambda!443661 lambda!443658))))

(assert (=> d!2252654 true))

(assert (=> d!2252654 (exists!4339 lt!2583721 lambda!443661)))

(declare-fun lt!2583804 () Unit!163844)

(declare-fun choose!55958 (List!70472 List!70471) Unit!163844)

(assert (=> d!2252654 (= lt!2583804 (choose!55958 lt!2583721 (t!384523 s1!1971)))))

(declare-fun content!14580 (List!70472) (Set Context!15140))

(assert (=> d!2252654 (matchZipper!3540 (content!14580 lt!2583721) (t!384523 s1!1971))))

(assert (=> d!2252654 (= (lemmaZipperMatchesExistsMatchingContext!733 lt!2583721 (t!384523 s1!1971)) lt!2583804)))

(declare-fun bs!1905671 () Bool)

(assert (= bs!1905671 d!2252654))

(declare-fun m!7926256 () Bool)

(assert (=> bs!1905671 m!7926256))

(declare-fun m!7926258 () Bool)

(assert (=> bs!1905671 m!7926258))

(declare-fun m!7926260 () Bool)

(assert (=> bs!1905671 m!7926260))

(assert (=> bs!1905671 m!7926260))

(declare-fun m!7926262 () Bool)

(assert (=> bs!1905671 m!7926262))

(assert (=> b!7248241 d!2252654))

(declare-fun d!2252658 () Bool)

(declare-fun e!4346114 () Bool)

(assert (=> d!2252658 e!4346114))

(declare-fun res!2940001 () Bool)

(assert (=> d!2252658 (=> (not res!2940001) (not e!4346114))))

(declare-fun lt!2583807 () List!70472)

(declare-fun noDuplicate!2980 (List!70472) Bool)

(assert (=> d!2252658 (= res!2940001 (noDuplicate!2980 lt!2583807))))

(declare-fun choose!55959 ((Set Context!15140)) List!70472)

(assert (=> d!2252658 (= lt!2583807 (choose!55959 lt!2583728))))

(assert (=> d!2252658 (= (toList!11459 lt!2583728) lt!2583807)))

(declare-fun b!7248405 () Bool)

(assert (=> b!7248405 (= e!4346114 (= (content!14580 lt!2583807) lt!2583728))))

(assert (= (and d!2252658 res!2940001) b!7248405))

(declare-fun m!7926264 () Bool)

(assert (=> d!2252658 m!7926264))

(declare-fun m!7926266 () Bool)

(assert (=> d!2252658 m!7926266))

(declare-fun m!7926268 () Bool)

(assert (=> b!7248405 m!7926268))

(assert (=> b!7248241 d!2252658))

(declare-fun b!7248410 () Bool)

(declare-fun e!4346117 () Bool)

(declare-fun tp!2037047 () Bool)

(declare-fun tp!2037048 () Bool)

(assert (=> b!7248410 (= e!4346117 (and tp!2037047 tp!2037048))))

(assert (=> b!7248240 (= tp!2037030 e!4346117)))

(assert (= (and b!7248240 (is-Cons!70346 (exprs!8070 ct1!232))) b!7248410))

(declare-fun b!7248411 () Bool)

(declare-fun e!4346118 () Bool)

(declare-fun tp!2037049 () Bool)

(declare-fun tp!2037050 () Bool)

(assert (=> b!7248411 (= e!4346118 (and tp!2037049 tp!2037050))))

(assert (=> b!7248244 (= tp!2037028 e!4346118)))

(assert (= (and b!7248244 (is-Cons!70346 (exprs!8070 ct2!328))) b!7248411))

(declare-fun b!7248416 () Bool)

(declare-fun e!4346121 () Bool)

(declare-fun tp!2037053 () Bool)

(assert (=> b!7248416 (= e!4346121 (and tp_is_empty!46725 tp!2037053))))

(assert (=> b!7248247 (= tp!2037027 e!4346121)))

(assert (= (and b!7248247 (is-Cons!70347 (t!384523 s2!1849))) b!7248416))

(declare-fun b!7248417 () Bool)

(declare-fun e!4346122 () Bool)

(declare-fun tp!2037054 () Bool)

(assert (=> b!7248417 (= e!4346122 (and tp_is_empty!46725 tp!2037054))))

(assert (=> b!7248242 (= tp!2037029 e!4346122)))

(assert (= (and b!7248242 (is-Cons!70347 (t!384523 s1!1971))) b!7248417))

(declare-fun b_lambda!278227 () Bool)

(assert (= b_lambda!278223 (or b!7248241 b_lambda!278227)))

(declare-fun bs!1905672 () Bool)

(declare-fun d!2252660 () Bool)

(assert (= bs!1905672 (and d!2252660 b!7248241)))

(assert (=> bs!1905672 (= (dynLambda!28713 lambda!443625 lt!2583775) (matchZipper!3540 (set.insert lt!2583775 (as set.empty (Set Context!15140))) (t!384523 s1!1971)))))

(declare-fun m!7926270 () Bool)

(assert (=> bs!1905672 m!7926270))

(assert (=> bs!1905672 m!7926270))

(declare-fun m!7926272 () Bool)

(assert (=> bs!1905672 m!7926272))

(assert (=> d!2252614 d!2252660))

(push 1)

(assert (not b!7248347))

(assert (not d!2252652))

(assert (not b!7248383))

(assert (not b!7248381))

(assert (not b!7248315))

(assert (not d!2252650))

(assert (not b!7248417))

(assert (not d!2252640))

(assert tp_is_empty!46725)

(assert (not d!2252604))

(assert (not b!7248387))

(assert (not b!7248362))

(assert (not b!7248287))

(assert (not d!2252648))

(assert (not bm!660035))

(assert (not bm!660037))

(assert (not d!2252614))

(assert (not b!7248382))

(assert (not b!7248384))

(assert (not b!7248288))

(assert (not d!2252636))

(assert (not d!2252630))

(assert (not b!7248410))

(assert (not d!2252658))

(assert (not b!7248363))

(assert (not d!2252602))

(assert (not b!7248405))

(assert (not bm!660043))

(assert (not d!2252642))

(assert (not d!2252646))

(assert (not b!7248346))

(assert (not b!7248416))

(assert (not b!7248360))

(assert (not b!7248377))

(assert (not b!7248411))

(assert (not d!2252622))

(assert (not d!2252654))

(assert (not b_lambda!278227))

(assert (not bs!1905672))

(assert (not b!7248359))

(assert (not bm!660039))

(assert (not b!7248378))

(assert (not b!7248386))

(assert (not d!2252600))

(assert (not d!2252624))

(assert (not d!2252616))

(assert (not d!2252598))

(assert (not d!2252644))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

