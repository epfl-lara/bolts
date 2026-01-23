; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718838 () Bool)

(assert start!718838)

(declare-fun b!7362674 () Bool)

(declare-fun e!4408159 () Bool)

(declare-fun e!4408155 () Bool)

(assert (=> b!7362674 (= e!4408159 e!4408155)))

(declare-fun res!2972085 () Bool)

(assert (=> b!7362674 (=> (not res!2972085) (not e!4408155))))

(declare-datatypes ((C!38750 0))(
  ( (C!38751 (val!29735 Int)) )
))
(declare-datatypes ((Regex!19238 0))(
  ( (ElementMatch!19238 (c!1368062 C!38750)) (Concat!28083 (regOne!38988 Regex!19238) (regTwo!38988 Regex!19238)) (EmptyExpr!19238) (Star!19238 (reg!19567 Regex!19238)) (EmptyLang!19238) (Union!19238 (regOne!38989 Regex!19238) (regTwo!38989 Regex!19238)) )
))
(declare-datatypes ((List!71734 0))(
  ( (Nil!71610) (Cons!71610 (h!78058 Regex!19238) (t!386183 List!71734)) )
))
(declare-datatypes ((Context!16356 0))(
  ( (Context!16357 (exprs!8678 List!71734)) )
))
(declare-fun cWitness!61 () Context!16356)

(declare-fun lt!2614157 () (Set Context!16356))

(assert (=> b!7362674 (= res!2972085 (set.member cWitness!61 lt!2614157))))

(declare-fun r1!2370 () Regex!19238)

(declare-fun c!10362 () C!38750)

(declare-fun ct1!282 () Context!16356)

(declare-fun derivationStepZipperDown!3064 (Regex!19238 Context!16356 C!38750) (Set Context!16356))

(assert (=> b!7362674 (= lt!2614157 (derivationStepZipperDown!3064 r1!2370 ct1!282 c!10362))))

(declare-fun b!7362675 () Bool)

(declare-fun e!4408162 () Bool)

(declare-fun tp!2092272 () Bool)

(declare-fun tp!2092279 () Bool)

(assert (=> b!7362675 (= e!4408162 (and tp!2092272 tp!2092279))))

(declare-fun b!7362676 () Bool)

(declare-fun tp!2092274 () Bool)

(declare-fun tp!2092275 () Bool)

(assert (=> b!7362676 (= e!4408162 (and tp!2092274 tp!2092275))))

(declare-fun b!7362677 () Bool)

(declare-fun res!2972082 () Bool)

(declare-fun e!4408161 () Bool)

(assert (=> b!7362677 (=> (not res!2972082) (not e!4408161))))

(declare-fun lt!2614154 () (Set Context!16356))

(assert (=> b!7362677 (= res!2972082 (set.member cWitness!61 lt!2614154))))

(declare-fun b!7362678 () Bool)

(declare-fun e!4408158 () Bool)

(assert (=> b!7362678 (= e!4408158 e!4408161)))

(declare-fun res!2972084 () Bool)

(assert (=> b!7362678 (=> (not res!2972084) (not e!4408161))))

(assert (=> b!7362678 (= res!2972084 (= lt!2614157 (set.union lt!2614154 (derivationStepZipperDown!3064 (regTwo!38989 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7362678 (= lt!2614154 (derivationStepZipperDown!3064 (regOne!38989 r1!2370) ct1!282 c!10362))))

(declare-fun b!7362679 () Bool)

(declare-fun e!4408157 () Bool)

(declare-fun tp!2092276 () Bool)

(assert (=> b!7362679 (= e!4408157 tp!2092276)))

(declare-fun b!7362681 () Bool)

(assert (=> b!7362681 (= e!4408155 e!4408158)))

(declare-fun res!2972083 () Bool)

(assert (=> b!7362681 (=> (not res!2972083) (not e!4408158))))

(assert (=> b!7362681 (= res!2972083 (and (or (not (is-ElementMatch!19238 r1!2370)) (not (= c!10362 (c!1368062 r1!2370)))) (is-Union!19238 r1!2370)))))

(declare-fun lt!2614153 () Context!16356)

(declare-fun lt!2614152 () (Set Context!16356))

(assert (=> b!7362681 (= lt!2614152 (derivationStepZipperDown!3064 r1!2370 lt!2614153 c!10362))))

(declare-fun ct2!378 () Context!16356)

(declare-fun ++!17054 (List!71734 List!71734) List!71734)

(assert (=> b!7362681 (= lt!2614153 (Context!16357 (++!17054 (exprs!8678 ct1!282) (exprs!8678 ct2!378))))))

(declare-fun lambda!457454 () Int)

(declare-datatypes ((Unit!165425 0))(
  ( (Unit!165426) )
))
(declare-fun lt!2614155 () Unit!165425)

(declare-fun lemmaConcatPreservesForall!1911 (List!71734 List!71734 Int) Unit!165425)

(assert (=> b!7362681 (= lt!2614155 (lemmaConcatPreservesForall!1911 (exprs!8678 ct1!282) (exprs!8678 ct2!378) lambda!457454))))

(declare-fun b!7362682 () Bool)

(declare-fun e!4408156 () Bool)

(declare-fun tp!2092278 () Bool)

(assert (=> b!7362682 (= e!4408156 tp!2092278)))

(declare-fun b!7362683 () Bool)

(declare-fun e!4408160 () Bool)

(declare-fun tp!2092277 () Bool)

(assert (=> b!7362683 (= e!4408160 tp!2092277)))

(declare-fun b!7362684 () Bool)

(declare-fun lt!2614149 () Context!16356)

(declare-fun inv!91436 (Context!16356) Bool)

(assert (=> b!7362684 (= e!4408161 (not (inv!91436 lt!2614149)))))

(declare-fun lt!2614150 () Unit!165425)

(assert (=> b!7362684 (= lt!2614150 (lemmaConcatPreservesForall!1911 (exprs!8678 cWitness!61) (exprs!8678 ct2!378) lambda!457454))))

(assert (=> b!7362684 (set.member lt!2614149 (derivationStepZipperDown!3064 (regOne!38989 r1!2370) lt!2614153 c!10362))))

(assert (=> b!7362684 (= lt!2614149 (Context!16357 (++!17054 (exprs!8678 cWitness!61) (exprs!8678 ct2!378))))))

(declare-fun lt!2614148 () Unit!165425)

(assert (=> b!7362684 (= lt!2614148 (lemmaConcatPreservesForall!1911 (exprs!8678 ct1!282) (exprs!8678 ct2!378) lambda!457454))))

(declare-fun lt!2614151 () Unit!165425)

(assert (=> b!7362684 (= lt!2614151 (lemmaConcatPreservesForall!1911 (exprs!8678 cWitness!61) (exprs!8678 ct2!378) lambda!457454))))

(declare-fun lt!2614156 () Unit!165425)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!113 (Regex!19238 Context!16356 Context!16356 Context!16356 C!38750) Unit!165425)

(assert (=> b!7362684 (= lt!2614156 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!113 (regOne!38989 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7362685 () Bool)

(declare-fun tp!2092273 () Bool)

(assert (=> b!7362685 (= e!4408162 tp!2092273)))

(declare-fun res!2972081 () Bool)

(assert (=> start!718838 (=> (not res!2972081) (not e!4408159))))

(declare-fun validRegex!9834 (Regex!19238) Bool)

(assert (=> start!718838 (= res!2972081 (validRegex!9834 r1!2370))))

(assert (=> start!718838 e!4408159))

(declare-fun tp_is_empty!48721 () Bool)

(assert (=> start!718838 tp_is_empty!48721))

(assert (=> start!718838 (and (inv!91436 cWitness!61) e!4408160)))

(assert (=> start!718838 (and (inv!91436 ct1!282) e!4408157)))

(assert (=> start!718838 e!4408162))

(assert (=> start!718838 (and (inv!91436 ct2!378) e!4408156)))

(declare-fun b!7362680 () Bool)

(assert (=> b!7362680 (= e!4408162 tp_is_empty!48721)))

(assert (= (and start!718838 res!2972081) b!7362674))

(assert (= (and b!7362674 res!2972085) b!7362681))

(assert (= (and b!7362681 res!2972083) b!7362678))

(assert (= (and b!7362678 res!2972084) b!7362677))

(assert (= (and b!7362677 res!2972082) b!7362684))

(assert (= start!718838 b!7362683))

(assert (= start!718838 b!7362679))

(assert (= (and start!718838 (is-ElementMatch!19238 r1!2370)) b!7362680))

(assert (= (and start!718838 (is-Concat!28083 r1!2370)) b!7362675))

(assert (= (and start!718838 (is-Star!19238 r1!2370)) b!7362685))

(assert (= (and start!718838 (is-Union!19238 r1!2370)) b!7362676))

(assert (= start!718838 b!7362682))

(declare-fun m!8019442 () Bool)

(assert (=> b!7362681 m!8019442))

(declare-fun m!8019444 () Bool)

(assert (=> b!7362681 m!8019444))

(declare-fun m!8019446 () Bool)

(assert (=> b!7362681 m!8019446))

(declare-fun m!8019448 () Bool)

(assert (=> start!718838 m!8019448))

(declare-fun m!8019450 () Bool)

(assert (=> start!718838 m!8019450))

(declare-fun m!8019452 () Bool)

(assert (=> start!718838 m!8019452))

(declare-fun m!8019454 () Bool)

(assert (=> start!718838 m!8019454))

(declare-fun m!8019456 () Bool)

(assert (=> b!7362678 m!8019456))

(declare-fun m!8019458 () Bool)

(assert (=> b!7362678 m!8019458))

(declare-fun m!8019460 () Bool)

(assert (=> b!7362674 m!8019460))

(declare-fun m!8019462 () Bool)

(assert (=> b!7362674 m!8019462))

(declare-fun m!8019464 () Bool)

(assert (=> b!7362677 m!8019464))

(declare-fun m!8019466 () Bool)

(assert (=> b!7362684 m!8019466))

(declare-fun m!8019468 () Bool)

(assert (=> b!7362684 m!8019468))

(declare-fun m!8019470 () Bool)

(assert (=> b!7362684 m!8019470))

(declare-fun m!8019472 () Bool)

(assert (=> b!7362684 m!8019472))

(declare-fun m!8019474 () Bool)

(assert (=> b!7362684 m!8019474))

(assert (=> b!7362684 m!8019446))

(declare-fun m!8019476 () Bool)

(assert (=> b!7362684 m!8019476))

(assert (=> b!7362684 m!8019468))

(push 1)

(assert (not b!7362679))

(assert (not b!7362681))

(assert (not b!7362685))

(assert (not b!7362678))

(assert (not start!718838))

(assert (not b!7362674))

(assert tp_is_empty!48721)

(assert (not b!7362682))

(assert (not b!7362684))

(assert (not b!7362683))

(assert (not b!7362676))

(assert (not b!7362675))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7362740 () Bool)

(declare-fun res!2972111 () Bool)

(declare-fun e!4408202 () Bool)

(assert (=> b!7362740 (=> res!2972111 e!4408202)))

(assert (=> b!7362740 (= res!2972111 (not (is-Concat!28083 r1!2370)))))

(declare-fun e!4408201 () Bool)

(assert (=> b!7362740 (= e!4408201 e!4408202)))

(declare-fun d!2282330 () Bool)

(declare-fun res!2972114 () Bool)

(declare-fun e!4408203 () Bool)

(assert (=> d!2282330 (=> res!2972114 e!4408203)))

(assert (=> d!2282330 (= res!2972114 (is-ElementMatch!19238 r1!2370))))

(assert (=> d!2282330 (= (validRegex!9834 r1!2370) e!4408203)))

(declare-fun bm!674955 () Bool)

(declare-fun c!1368068 () Bool)

(declare-fun c!1368069 () Bool)

(declare-fun call!674960 () Bool)

(assert (=> bm!674955 (= call!674960 (validRegex!9834 (ite c!1368069 (reg!19567 r1!2370) (ite c!1368068 (regTwo!38989 r1!2370) (regOne!38988 r1!2370)))))))

(declare-fun b!7362741 () Bool)

(declare-fun e!4408206 () Bool)

(declare-fun call!674961 () Bool)

(assert (=> b!7362741 (= e!4408206 call!674961)))

(declare-fun b!7362742 () Bool)

(declare-fun e!4408205 () Bool)

(assert (=> b!7362742 (= e!4408205 call!674960)))

(declare-fun b!7362743 () Bool)

(declare-fun e!4408204 () Bool)

(assert (=> b!7362743 (= e!4408204 e!4408201)))

(assert (=> b!7362743 (= c!1368068 (is-Union!19238 r1!2370))))

(declare-fun b!7362744 () Bool)

(declare-fun e!4408207 () Bool)

(declare-fun call!674962 () Bool)

(assert (=> b!7362744 (= e!4408207 call!674962)))

(declare-fun bm!674956 () Bool)

(assert (=> bm!674956 (= call!674961 call!674960)))

(declare-fun b!7362745 () Bool)

(assert (=> b!7362745 (= e!4408204 e!4408205)))

(declare-fun res!2972113 () Bool)

(declare-fun nullable!8320 (Regex!19238) Bool)

(assert (=> b!7362745 (= res!2972113 (not (nullable!8320 (reg!19567 r1!2370))))))

(assert (=> b!7362745 (=> (not res!2972113) (not e!4408205))))

(declare-fun b!7362746 () Bool)

(assert (=> b!7362746 (= e!4408202 e!4408207)))

(declare-fun res!2972112 () Bool)

(assert (=> b!7362746 (=> (not res!2972112) (not e!4408207))))

(assert (=> b!7362746 (= res!2972112 call!674961)))

(declare-fun b!7362747 () Bool)

(assert (=> b!7362747 (= e!4408203 e!4408204)))

(assert (=> b!7362747 (= c!1368069 (is-Star!19238 r1!2370))))

(declare-fun bm!674957 () Bool)

(assert (=> bm!674957 (= call!674962 (validRegex!9834 (ite c!1368068 (regOne!38989 r1!2370) (regTwo!38988 r1!2370))))))

(declare-fun b!7362748 () Bool)

(declare-fun res!2972115 () Bool)

(assert (=> b!7362748 (=> (not res!2972115) (not e!4408206))))

(assert (=> b!7362748 (= res!2972115 call!674962)))

(assert (=> b!7362748 (= e!4408201 e!4408206)))

(assert (= (and d!2282330 (not res!2972114)) b!7362747))

(assert (= (and b!7362747 c!1368069) b!7362745))

(assert (= (and b!7362747 (not c!1368069)) b!7362743))

(assert (= (and b!7362745 res!2972113) b!7362742))

(assert (= (and b!7362743 c!1368068) b!7362748))

(assert (= (and b!7362743 (not c!1368068)) b!7362740))

(assert (= (and b!7362748 res!2972115) b!7362741))

(assert (= (and b!7362740 (not res!2972111)) b!7362746))

(assert (= (and b!7362746 res!2972112) b!7362744))

(assert (= (or b!7362748 b!7362744) bm!674957))

(assert (= (or b!7362741 b!7362746) bm!674956))

(assert (= (or b!7362742 bm!674956) bm!674955))

(declare-fun m!8019514 () Bool)

(assert (=> bm!674955 m!8019514))

(declare-fun m!8019516 () Bool)

(assert (=> b!7362745 m!8019516))

(declare-fun m!8019518 () Bool)

(assert (=> bm!674957 m!8019518))

(assert (=> start!718838 d!2282330))

(declare-fun bs!1920250 () Bool)

(declare-fun d!2282334 () Bool)

(assert (= bs!1920250 (and d!2282334 b!7362681)))

(declare-fun lambda!457466 () Int)

(assert (=> bs!1920250 (= lambda!457466 lambda!457454)))

(declare-fun forall!18050 (List!71734 Int) Bool)

(assert (=> d!2282334 (= (inv!91436 cWitness!61) (forall!18050 (exprs!8678 cWitness!61) lambda!457466))))

(declare-fun bs!1920251 () Bool)

(assert (= bs!1920251 d!2282334))

(declare-fun m!8019520 () Bool)

(assert (=> bs!1920251 m!8019520))

(assert (=> start!718838 d!2282334))

(declare-fun bs!1920252 () Bool)

(declare-fun d!2282336 () Bool)

(assert (= bs!1920252 (and d!2282336 b!7362681)))

(declare-fun lambda!457467 () Int)

(assert (=> bs!1920252 (= lambda!457467 lambda!457454)))

(declare-fun bs!1920253 () Bool)

(assert (= bs!1920253 (and d!2282336 d!2282334)))

(assert (=> bs!1920253 (= lambda!457467 lambda!457466)))

(assert (=> d!2282336 (= (inv!91436 ct1!282) (forall!18050 (exprs!8678 ct1!282) lambda!457467))))

(declare-fun bs!1920254 () Bool)

(assert (= bs!1920254 d!2282336))

(declare-fun m!8019522 () Bool)

(assert (=> bs!1920254 m!8019522))

(assert (=> start!718838 d!2282336))

(declare-fun bs!1920255 () Bool)

(declare-fun d!2282338 () Bool)

(assert (= bs!1920255 (and d!2282338 b!7362681)))

(declare-fun lambda!457468 () Int)

(assert (=> bs!1920255 (= lambda!457468 lambda!457454)))

(declare-fun bs!1920256 () Bool)

(assert (= bs!1920256 (and d!2282338 d!2282334)))

(assert (=> bs!1920256 (= lambda!457468 lambda!457466)))

(declare-fun bs!1920257 () Bool)

(assert (= bs!1920257 (and d!2282338 d!2282336)))

(assert (=> bs!1920257 (= lambda!457468 lambda!457467)))

(assert (=> d!2282338 (= (inv!91436 ct2!378) (forall!18050 (exprs!8678 ct2!378) lambda!457468))))

(declare-fun bs!1920258 () Bool)

(assert (= bs!1920258 d!2282338))

(declare-fun m!8019524 () Bool)

(assert (=> bs!1920258 m!8019524))

(assert (=> start!718838 d!2282338))

(declare-fun c!1368102 () Bool)

(declare-fun call!674999 () (Set Context!16356))

(declare-fun bm!674994 () Bool)

(declare-fun call!675001 () List!71734)

(assert (=> bm!674994 (= call!674999 (derivationStepZipperDown!3064 (ite c!1368102 (regTwo!38989 (regTwo!38989 r1!2370)) (regOne!38988 (regTwo!38989 r1!2370))) (ite c!1368102 ct1!282 (Context!16357 call!675001)) c!10362))))

(declare-fun bm!674995 () Bool)

(declare-fun call!675004 () List!71734)

(assert (=> bm!674995 (= call!675004 call!675001)))

(declare-fun b!7362815 () Bool)

(declare-fun e!4408248 () Bool)

(assert (=> b!7362815 (= e!4408248 (nullable!8320 (regOne!38988 (regTwo!38989 r1!2370))))))

(declare-fun b!7362816 () Bool)

(declare-fun e!4408244 () (Set Context!16356))

(assert (=> b!7362816 (= e!4408244 (set.insert ct1!282 (as set.empty (Set Context!16356))))))

(declare-fun bm!674996 () Bool)

(declare-fun call!675003 () (Set Context!16356))

(declare-fun call!675002 () (Set Context!16356))

(assert (=> bm!674996 (= call!675003 call!675002)))

(declare-fun bm!674997 () Bool)

(declare-fun call!675000 () (Set Context!16356))

(assert (=> bm!674997 (= call!675000 call!675003)))

(declare-fun b!7362817 () Bool)

(declare-fun e!4408246 () (Set Context!16356))

(assert (=> b!7362817 (= e!4408246 call!675000)))

(declare-fun b!7362819 () Bool)

(declare-fun e!4408247 () (Set Context!16356))

(assert (=> b!7362819 (= e!4408247 call!675000)))

(declare-fun b!7362820 () Bool)

(declare-fun c!1368100 () Bool)

(assert (=> b!7362820 (= c!1368100 e!4408248)))

(declare-fun res!2972122 () Bool)

(assert (=> b!7362820 (=> (not res!2972122) (not e!4408248))))

(assert (=> b!7362820 (= res!2972122 (is-Concat!28083 (regTwo!38989 r1!2370)))))

(declare-fun e!4408245 () (Set Context!16356))

(declare-fun e!4408249 () (Set Context!16356))

(assert (=> b!7362820 (= e!4408245 e!4408249)))

(declare-fun b!7362821 () Bool)

(assert (=> b!7362821 (= e!4408249 (set.union call!674999 call!675003))))

(declare-fun bm!674998 () Bool)

(declare-fun c!1368104 () Bool)

(declare-fun $colon$colon!3226 (List!71734 Regex!19238) List!71734)

(assert (=> bm!674998 (= call!675001 ($colon$colon!3226 (exprs!8678 ct1!282) (ite (or c!1368100 c!1368104) (regTwo!38988 (regTwo!38989 r1!2370)) (regTwo!38989 r1!2370))))))

(declare-fun b!7362822 () Bool)

(assert (=> b!7362822 (= e!4408246 (as set.empty (Set Context!16356)))))

(declare-fun b!7362823 () Bool)

(declare-fun c!1368101 () Bool)

(assert (=> b!7362823 (= c!1368101 (is-Star!19238 (regTwo!38989 r1!2370)))))

(assert (=> b!7362823 (= e!4408247 e!4408246)))

(declare-fun b!7362824 () Bool)

(assert (=> b!7362824 (= e!4408249 e!4408247)))

(assert (=> b!7362824 (= c!1368104 (is-Concat!28083 (regTwo!38989 r1!2370)))))

(declare-fun bm!674999 () Bool)

(assert (=> bm!674999 (= call!675002 (derivationStepZipperDown!3064 (ite c!1368102 (regOne!38989 (regTwo!38989 r1!2370)) (ite c!1368100 (regTwo!38988 (regTwo!38989 r1!2370)) (ite c!1368104 (regOne!38988 (regTwo!38989 r1!2370)) (reg!19567 (regTwo!38989 r1!2370))))) (ite (or c!1368102 c!1368100) ct1!282 (Context!16357 call!675004)) c!10362))))

(declare-fun b!7362825 () Bool)

(assert (=> b!7362825 (= e!4408244 e!4408245)))

(assert (=> b!7362825 (= c!1368102 (is-Union!19238 (regTwo!38989 r1!2370)))))

(declare-fun d!2282340 () Bool)

(declare-fun c!1368103 () Bool)

(assert (=> d!2282340 (= c!1368103 (and (is-ElementMatch!19238 (regTwo!38989 r1!2370)) (= (c!1368062 (regTwo!38989 r1!2370)) c!10362)))))

(assert (=> d!2282340 (= (derivationStepZipperDown!3064 (regTwo!38989 r1!2370) ct1!282 c!10362) e!4408244)))

(declare-fun b!7362818 () Bool)

(assert (=> b!7362818 (= e!4408245 (set.union call!675002 call!674999))))

(assert (= (and d!2282340 c!1368103) b!7362816))

(assert (= (and d!2282340 (not c!1368103)) b!7362825))

(assert (= (and b!7362825 c!1368102) b!7362818))

(assert (= (and b!7362825 (not c!1368102)) b!7362820))

(assert (= (and b!7362820 res!2972122) b!7362815))

(assert (= (and b!7362820 c!1368100) b!7362821))

(assert (= (and b!7362820 (not c!1368100)) b!7362824))

(assert (= (and b!7362824 c!1368104) b!7362819))

(assert (= (and b!7362824 (not c!1368104)) b!7362823))

(assert (= (and b!7362823 c!1368101) b!7362817))

(assert (= (and b!7362823 (not c!1368101)) b!7362822))

(assert (= (or b!7362819 b!7362817) bm!674995))

(assert (= (or b!7362819 b!7362817) bm!674997))

(assert (= (or b!7362821 bm!674997) bm!674996))

(assert (= (or b!7362821 bm!674995) bm!674998))

(assert (= (or b!7362818 b!7362821) bm!674994))

(assert (= (or b!7362818 bm!674996) bm!674999))

(declare-fun m!8019544 () Bool)

(assert (=> bm!674999 m!8019544))

(declare-fun m!8019546 () Bool)

(assert (=> b!7362815 m!8019546))

(declare-fun m!8019548 () Bool)

(assert (=> bm!674994 m!8019548))

(declare-fun m!8019550 () Bool)

(assert (=> bm!674998 m!8019550))

(declare-fun m!8019552 () Bool)

(assert (=> b!7362816 m!8019552))

(assert (=> b!7362678 d!2282340))

(declare-fun c!1368112 () Bool)

(declare-fun call!675013 () List!71734)

(declare-fun bm!675006 () Bool)

(declare-fun call!675011 () (Set Context!16356))

(assert (=> bm!675006 (= call!675011 (derivationStepZipperDown!3064 (ite c!1368112 (regTwo!38989 (regOne!38989 r1!2370)) (regOne!38988 (regOne!38989 r1!2370))) (ite c!1368112 ct1!282 (Context!16357 call!675013)) c!10362))))

(declare-fun bm!675007 () Bool)

(declare-fun call!675016 () List!71734)

(assert (=> bm!675007 (= call!675016 call!675013)))

(declare-fun b!7362837 () Bool)

(declare-fun e!4408260 () Bool)

(assert (=> b!7362837 (= e!4408260 (nullable!8320 (regOne!38988 (regOne!38989 r1!2370))))))

(declare-fun b!7362838 () Bool)

(declare-fun e!4408256 () (Set Context!16356))

(assert (=> b!7362838 (= e!4408256 (set.insert ct1!282 (as set.empty (Set Context!16356))))))

(declare-fun bm!675008 () Bool)

(declare-fun call!675015 () (Set Context!16356))

(declare-fun call!675014 () (Set Context!16356))

(assert (=> bm!675008 (= call!675015 call!675014)))

(declare-fun bm!675009 () Bool)

(declare-fun call!675012 () (Set Context!16356))

(assert (=> bm!675009 (= call!675012 call!675015)))

(declare-fun b!7362839 () Bool)

(declare-fun e!4408258 () (Set Context!16356))

(assert (=> b!7362839 (= e!4408258 call!675012)))

(declare-fun b!7362841 () Bool)

(declare-fun e!4408259 () (Set Context!16356))

(assert (=> b!7362841 (= e!4408259 call!675012)))

(declare-fun b!7362842 () Bool)

(declare-fun c!1368110 () Bool)

(assert (=> b!7362842 (= c!1368110 e!4408260)))

(declare-fun res!2972124 () Bool)

(assert (=> b!7362842 (=> (not res!2972124) (not e!4408260))))

(assert (=> b!7362842 (= res!2972124 (is-Concat!28083 (regOne!38989 r1!2370)))))

(declare-fun e!4408257 () (Set Context!16356))

(declare-fun e!4408261 () (Set Context!16356))

(assert (=> b!7362842 (= e!4408257 e!4408261)))

(declare-fun b!7362843 () Bool)

(assert (=> b!7362843 (= e!4408261 (set.union call!675011 call!675015))))

(declare-fun c!1368114 () Bool)

(declare-fun bm!675010 () Bool)

(assert (=> bm!675010 (= call!675013 ($colon$colon!3226 (exprs!8678 ct1!282) (ite (or c!1368110 c!1368114) (regTwo!38988 (regOne!38989 r1!2370)) (regOne!38989 r1!2370))))))

(declare-fun b!7362844 () Bool)

(assert (=> b!7362844 (= e!4408258 (as set.empty (Set Context!16356)))))

(declare-fun b!7362845 () Bool)

(declare-fun c!1368111 () Bool)

(assert (=> b!7362845 (= c!1368111 (is-Star!19238 (regOne!38989 r1!2370)))))

(assert (=> b!7362845 (= e!4408259 e!4408258)))

(declare-fun b!7362846 () Bool)

(assert (=> b!7362846 (= e!4408261 e!4408259)))

(assert (=> b!7362846 (= c!1368114 (is-Concat!28083 (regOne!38989 r1!2370)))))

(declare-fun bm!675011 () Bool)

(assert (=> bm!675011 (= call!675014 (derivationStepZipperDown!3064 (ite c!1368112 (regOne!38989 (regOne!38989 r1!2370)) (ite c!1368110 (regTwo!38988 (regOne!38989 r1!2370)) (ite c!1368114 (regOne!38988 (regOne!38989 r1!2370)) (reg!19567 (regOne!38989 r1!2370))))) (ite (or c!1368112 c!1368110) ct1!282 (Context!16357 call!675016)) c!10362))))

(declare-fun b!7362847 () Bool)

(assert (=> b!7362847 (= e!4408256 e!4408257)))

(assert (=> b!7362847 (= c!1368112 (is-Union!19238 (regOne!38989 r1!2370)))))

(declare-fun d!2282346 () Bool)

(declare-fun c!1368113 () Bool)

(assert (=> d!2282346 (= c!1368113 (and (is-ElementMatch!19238 (regOne!38989 r1!2370)) (= (c!1368062 (regOne!38989 r1!2370)) c!10362)))))

(assert (=> d!2282346 (= (derivationStepZipperDown!3064 (regOne!38989 r1!2370) ct1!282 c!10362) e!4408256)))

(declare-fun b!7362840 () Bool)

(assert (=> b!7362840 (= e!4408257 (set.union call!675014 call!675011))))

(assert (= (and d!2282346 c!1368113) b!7362838))

(assert (= (and d!2282346 (not c!1368113)) b!7362847))

(assert (= (and b!7362847 c!1368112) b!7362840))

(assert (= (and b!7362847 (not c!1368112)) b!7362842))

(assert (= (and b!7362842 res!2972124) b!7362837))

(assert (= (and b!7362842 c!1368110) b!7362843))

(assert (= (and b!7362842 (not c!1368110)) b!7362846))

(assert (= (and b!7362846 c!1368114) b!7362841))

(assert (= (and b!7362846 (not c!1368114)) b!7362845))

(assert (= (and b!7362845 c!1368111) b!7362839))

(assert (= (and b!7362845 (not c!1368111)) b!7362844))

(assert (= (or b!7362841 b!7362839) bm!675007))

(assert (= (or b!7362841 b!7362839) bm!675009))

(assert (= (or b!7362843 bm!675009) bm!675008))

(assert (= (or b!7362843 bm!675007) bm!675010))

(assert (= (or b!7362840 b!7362843) bm!675006))

(assert (= (or b!7362840 bm!675008) bm!675011))

(declare-fun m!8019562 () Bool)

(assert (=> bm!675011 m!8019562))

(declare-fun m!8019564 () Bool)

(assert (=> b!7362837 m!8019564))

(declare-fun m!8019566 () Bool)

(assert (=> bm!675006 m!8019566))

(declare-fun m!8019568 () Bool)

(assert (=> bm!675010 m!8019568))

(assert (=> b!7362838 m!8019552))

(assert (=> b!7362678 d!2282346))

(declare-fun bs!1920260 () Bool)

(declare-fun d!2282350 () Bool)

(assert (= bs!1920260 (and d!2282350 b!7362681)))

(declare-fun lambda!457476 () Int)

(assert (=> bs!1920260 (= lambda!457476 lambda!457454)))

(declare-fun bs!1920261 () Bool)

(assert (= bs!1920261 (and d!2282350 d!2282334)))

(assert (=> bs!1920261 (= lambda!457476 lambda!457466)))

(declare-fun bs!1920263 () Bool)

(assert (= bs!1920263 (and d!2282350 d!2282336)))

(assert (=> bs!1920263 (= lambda!457476 lambda!457467)))

(declare-fun bs!1920264 () Bool)

(assert (= bs!1920264 (and d!2282350 d!2282338)))

(assert (=> bs!1920264 (= lambda!457476 lambda!457468)))

(assert (=> d!2282350 (set.member (Context!16357 (++!17054 (exprs!8678 cWitness!61) (exprs!8678 ct2!378))) (derivationStepZipperDown!3064 (regOne!38989 r1!2370) (Context!16357 (++!17054 (exprs!8678 ct1!282) (exprs!8678 ct2!378))) c!10362))))

(declare-fun lt!2614196 () Unit!165425)

(assert (=> d!2282350 (= lt!2614196 (lemmaConcatPreservesForall!1911 (exprs!8678 ct1!282) (exprs!8678 ct2!378) lambda!457476))))

(declare-fun lt!2614195 () Unit!165425)

(assert (=> d!2282350 (= lt!2614195 (lemmaConcatPreservesForall!1911 (exprs!8678 cWitness!61) (exprs!8678 ct2!378) lambda!457476))))

(declare-fun lt!2614194 () Unit!165425)

(declare-fun choose!57257 (Regex!19238 Context!16356 Context!16356 Context!16356 C!38750) Unit!165425)

(assert (=> d!2282350 (= lt!2614194 (choose!57257 (regOne!38989 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2282350 (validRegex!9834 (regOne!38989 r1!2370))))

(assert (=> d!2282350 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!113 (regOne!38989 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2614194)))

(declare-fun bs!1920270 () Bool)

(assert (= bs!1920270 d!2282350))

(assert (=> bs!1920270 m!8019472))

(declare-fun m!8019580 () Bool)

(assert (=> bs!1920270 m!8019580))

(declare-fun m!8019582 () Bool)

(assert (=> bs!1920270 m!8019582))

(assert (=> bs!1920270 m!8019444))

(declare-fun m!8019584 () Bool)

(assert (=> bs!1920270 m!8019584))

(declare-fun m!8019588 () Bool)

(assert (=> bs!1920270 m!8019588))

(declare-fun m!8019590 () Bool)

(assert (=> bs!1920270 m!8019590))

(declare-fun m!8019592 () Bool)

(assert (=> bs!1920270 m!8019592))

(assert (=> b!7362684 d!2282350))

(declare-fun d!2282360 () Bool)

(assert (=> d!2282360 (forall!18050 (++!17054 (exprs!8678 ct1!282) (exprs!8678 ct2!378)) lambda!457454)))

(declare-fun lt!2614199 () Unit!165425)

(declare-fun choose!57258 (List!71734 List!71734 Int) Unit!165425)

(assert (=> d!2282360 (= lt!2614199 (choose!57258 (exprs!8678 ct1!282) (exprs!8678 ct2!378) lambda!457454))))

(assert (=> d!2282360 (forall!18050 (exprs!8678 ct1!282) lambda!457454)))

(assert (=> d!2282360 (= (lemmaConcatPreservesForall!1911 (exprs!8678 ct1!282) (exprs!8678 ct2!378) lambda!457454) lt!2614199)))

(declare-fun bs!1920273 () Bool)

(assert (= bs!1920273 d!2282360))

(assert (=> bs!1920273 m!8019444))

(assert (=> bs!1920273 m!8019444))

(declare-fun m!8019594 () Bool)

(assert (=> bs!1920273 m!8019594))

(declare-fun m!8019596 () Bool)

(assert (=> bs!1920273 m!8019596))

(declare-fun m!8019598 () Bool)

(assert (=> bs!1920273 m!8019598))

(assert (=> b!7362684 d!2282360))

(declare-fun b!7362896 () Bool)

(declare-fun e!4408294 () List!71734)

(assert (=> b!7362896 (= e!4408294 (Cons!71610 (h!78058 (exprs!8678 cWitness!61)) (++!17054 (t!386183 (exprs!8678 cWitness!61)) (exprs!8678 ct2!378))))))

(declare-fun d!2282362 () Bool)

(declare-fun e!4408293 () Bool)

(assert (=> d!2282362 e!4408293))

(declare-fun res!2972151 () Bool)

(assert (=> d!2282362 (=> (not res!2972151) (not e!4408293))))

(declare-fun lt!2614207 () List!71734)

(declare-fun content!15126 (List!71734) (Set Regex!19238))

(assert (=> d!2282362 (= res!2972151 (= (content!15126 lt!2614207) (set.union (content!15126 (exprs!8678 cWitness!61)) (content!15126 (exprs!8678 ct2!378)))))))

(assert (=> d!2282362 (= lt!2614207 e!4408294)))

(declare-fun c!1368127 () Bool)

(assert (=> d!2282362 (= c!1368127 (is-Nil!71610 (exprs!8678 cWitness!61)))))

(assert (=> d!2282362 (= (++!17054 (exprs!8678 cWitness!61) (exprs!8678 ct2!378)) lt!2614207)))

(declare-fun b!7362897 () Bool)

(declare-fun res!2972150 () Bool)

(assert (=> b!7362897 (=> (not res!2972150) (not e!4408293))))

(declare-fun size!42104 (List!71734) Int)

(assert (=> b!7362897 (= res!2972150 (= (size!42104 lt!2614207) (+ (size!42104 (exprs!8678 cWitness!61)) (size!42104 (exprs!8678 ct2!378)))))))

(declare-fun b!7362898 () Bool)

(assert (=> b!7362898 (= e!4408293 (or (not (= (exprs!8678 ct2!378) Nil!71610)) (= lt!2614207 (exprs!8678 cWitness!61))))))

(declare-fun b!7362895 () Bool)

(assert (=> b!7362895 (= e!4408294 (exprs!8678 ct2!378))))

(assert (= (and d!2282362 c!1368127) b!7362895))

(assert (= (and d!2282362 (not c!1368127)) b!7362896))

(assert (= (and d!2282362 res!2972151) b!7362897))

(assert (= (and b!7362897 res!2972150) b!7362898))

(declare-fun m!8019616 () Bool)

(assert (=> b!7362896 m!8019616))

(declare-fun m!8019620 () Bool)

(assert (=> d!2282362 m!8019620))

(declare-fun m!8019624 () Bool)

(assert (=> d!2282362 m!8019624))

(declare-fun m!8019626 () Bool)

(assert (=> d!2282362 m!8019626))

(declare-fun m!8019628 () Bool)

(assert (=> b!7362897 m!8019628))

(declare-fun m!8019630 () Bool)

(assert (=> b!7362897 m!8019630))

(declare-fun m!8019632 () Bool)

(assert (=> b!7362897 m!8019632))

(assert (=> b!7362684 d!2282362))

(declare-fun d!2282368 () Bool)

(assert (=> d!2282368 (forall!18050 (++!17054 (exprs!8678 cWitness!61) (exprs!8678 ct2!378)) lambda!457454)))

(declare-fun lt!2614209 () Unit!165425)

(assert (=> d!2282368 (= lt!2614209 (choose!57258 (exprs!8678 cWitness!61) (exprs!8678 ct2!378) lambda!457454))))

(assert (=> d!2282368 (forall!18050 (exprs!8678 cWitness!61) lambda!457454)))

(assert (=> d!2282368 (= (lemmaConcatPreservesForall!1911 (exprs!8678 cWitness!61) (exprs!8678 ct2!378) lambda!457454) lt!2614209)))

(declare-fun bs!1920275 () Bool)

(assert (= bs!1920275 d!2282368))

(assert (=> bs!1920275 m!8019472))

(assert (=> bs!1920275 m!8019472))

(declare-fun m!8019634 () Bool)

(assert (=> bs!1920275 m!8019634))

(declare-fun m!8019636 () Bool)

(assert (=> bs!1920275 m!8019636))

(declare-fun m!8019638 () Bool)

(assert (=> bs!1920275 m!8019638))

(assert (=> b!7362684 d!2282368))

(declare-fun bm!675027 () Bool)

(declare-fun call!675032 () (Set Context!16356))

(declare-fun c!1368135 () Bool)

(declare-fun call!675034 () List!71734)

(assert (=> bm!675027 (= call!675032 (derivationStepZipperDown!3064 (ite c!1368135 (regTwo!38989 (regOne!38989 r1!2370)) (regOne!38988 (regOne!38989 r1!2370))) (ite c!1368135 lt!2614153 (Context!16357 call!675034)) c!10362))))

(declare-fun bm!675028 () Bool)

(declare-fun call!675037 () List!71734)

(assert (=> bm!675028 (= call!675037 call!675034)))

(declare-fun b!7362910 () Bool)

(declare-fun e!4408305 () Bool)

(assert (=> b!7362910 (= e!4408305 (nullable!8320 (regOne!38988 (regOne!38989 r1!2370))))))

(declare-fun b!7362911 () Bool)

(declare-fun e!4408301 () (Set Context!16356))

(assert (=> b!7362911 (= e!4408301 (set.insert lt!2614153 (as set.empty (Set Context!16356))))))

(declare-fun bm!675029 () Bool)

(declare-fun call!675036 () (Set Context!16356))

(declare-fun call!675035 () (Set Context!16356))

(assert (=> bm!675029 (= call!675036 call!675035)))

(declare-fun bm!675030 () Bool)

(declare-fun call!675033 () (Set Context!16356))

(assert (=> bm!675030 (= call!675033 call!675036)))

(declare-fun b!7362912 () Bool)

(declare-fun e!4408303 () (Set Context!16356))

(assert (=> b!7362912 (= e!4408303 call!675033)))

(declare-fun b!7362914 () Bool)

(declare-fun e!4408304 () (Set Context!16356))

(assert (=> b!7362914 (= e!4408304 call!675033)))

(declare-fun b!7362915 () Bool)

(declare-fun c!1368133 () Bool)

(assert (=> b!7362915 (= c!1368133 e!4408305)))

(declare-fun res!2972153 () Bool)

(assert (=> b!7362915 (=> (not res!2972153) (not e!4408305))))

(assert (=> b!7362915 (= res!2972153 (is-Concat!28083 (regOne!38989 r1!2370)))))

(declare-fun e!4408302 () (Set Context!16356))

(declare-fun e!4408306 () (Set Context!16356))

(assert (=> b!7362915 (= e!4408302 e!4408306)))

(declare-fun b!7362916 () Bool)

(assert (=> b!7362916 (= e!4408306 (set.union call!675032 call!675036))))

(declare-fun bm!675031 () Bool)

(declare-fun c!1368137 () Bool)

(assert (=> bm!675031 (= call!675034 ($colon$colon!3226 (exprs!8678 lt!2614153) (ite (or c!1368133 c!1368137) (regTwo!38988 (regOne!38989 r1!2370)) (regOne!38989 r1!2370))))))

(declare-fun b!7362917 () Bool)

(assert (=> b!7362917 (= e!4408303 (as set.empty (Set Context!16356)))))

(declare-fun b!7362918 () Bool)

(declare-fun c!1368134 () Bool)

(assert (=> b!7362918 (= c!1368134 (is-Star!19238 (regOne!38989 r1!2370)))))

(assert (=> b!7362918 (= e!4408304 e!4408303)))

(declare-fun b!7362919 () Bool)

(assert (=> b!7362919 (= e!4408306 e!4408304)))

(assert (=> b!7362919 (= c!1368137 (is-Concat!28083 (regOne!38989 r1!2370)))))

(declare-fun bm!675032 () Bool)

(assert (=> bm!675032 (= call!675035 (derivationStepZipperDown!3064 (ite c!1368135 (regOne!38989 (regOne!38989 r1!2370)) (ite c!1368133 (regTwo!38988 (regOne!38989 r1!2370)) (ite c!1368137 (regOne!38988 (regOne!38989 r1!2370)) (reg!19567 (regOne!38989 r1!2370))))) (ite (or c!1368135 c!1368133) lt!2614153 (Context!16357 call!675037)) c!10362))))

(declare-fun b!7362920 () Bool)

(assert (=> b!7362920 (= e!4408301 e!4408302)))

(assert (=> b!7362920 (= c!1368135 (is-Union!19238 (regOne!38989 r1!2370)))))

(declare-fun d!2282370 () Bool)

(declare-fun c!1368136 () Bool)

(assert (=> d!2282370 (= c!1368136 (and (is-ElementMatch!19238 (regOne!38989 r1!2370)) (= (c!1368062 (regOne!38989 r1!2370)) c!10362)))))

(assert (=> d!2282370 (= (derivationStepZipperDown!3064 (regOne!38989 r1!2370) lt!2614153 c!10362) e!4408301)))

(declare-fun b!7362913 () Bool)

(assert (=> b!7362913 (= e!4408302 (set.union call!675035 call!675032))))

(assert (= (and d!2282370 c!1368136) b!7362911))

(assert (= (and d!2282370 (not c!1368136)) b!7362920))

(assert (= (and b!7362920 c!1368135) b!7362913))

(assert (= (and b!7362920 (not c!1368135)) b!7362915))

(assert (= (and b!7362915 res!2972153) b!7362910))

(assert (= (and b!7362915 c!1368133) b!7362916))

(assert (= (and b!7362915 (not c!1368133)) b!7362919))

(assert (= (and b!7362919 c!1368137) b!7362914))

(assert (= (and b!7362919 (not c!1368137)) b!7362918))

(assert (= (and b!7362918 c!1368134) b!7362912))

(assert (= (and b!7362918 (not c!1368134)) b!7362917))

(assert (= (or b!7362914 b!7362912) bm!675028))

(assert (= (or b!7362914 b!7362912) bm!675030))

(assert (= (or b!7362916 bm!675030) bm!675029))

(assert (= (or b!7362916 bm!675028) bm!675031))

(assert (= (or b!7362913 b!7362916) bm!675027))

(assert (= (or b!7362913 bm!675029) bm!675032))

(declare-fun m!8019648 () Bool)

(assert (=> bm!675032 m!8019648))

(assert (=> b!7362910 m!8019564))

(declare-fun m!8019650 () Bool)

(assert (=> bm!675027 m!8019650))

(declare-fun m!8019652 () Bool)

(assert (=> bm!675031 m!8019652))

(declare-fun m!8019654 () Bool)

(assert (=> b!7362911 m!8019654))

(assert (=> b!7362684 d!2282370))

(declare-fun bs!1920280 () Bool)

(declare-fun d!2282374 () Bool)

(assert (= bs!1920280 (and d!2282374 b!7362681)))

(declare-fun lambda!457480 () Int)

(assert (=> bs!1920280 (= lambda!457480 lambda!457454)))

(declare-fun bs!1920282 () Bool)

(assert (= bs!1920282 (and d!2282374 d!2282336)))

(assert (=> bs!1920282 (= lambda!457480 lambda!457467)))

(declare-fun bs!1920283 () Bool)

(assert (= bs!1920283 (and d!2282374 d!2282350)))

(assert (=> bs!1920283 (= lambda!457480 lambda!457476)))

(declare-fun bs!1920284 () Bool)

(assert (= bs!1920284 (and d!2282374 d!2282334)))

(assert (=> bs!1920284 (= lambda!457480 lambda!457466)))

(declare-fun bs!1920285 () Bool)

(assert (= bs!1920285 (and d!2282374 d!2282338)))

(assert (=> bs!1920285 (= lambda!457480 lambda!457468)))

(assert (=> d!2282374 (= (inv!91436 lt!2614149) (forall!18050 (exprs!8678 lt!2614149) lambda!457480))))

(declare-fun bs!1920286 () Bool)

(assert (= bs!1920286 d!2282374))

(declare-fun m!8019658 () Bool)

(assert (=> bs!1920286 m!8019658))

(assert (=> b!7362684 d!2282374))

(declare-fun c!1368140 () Bool)

(declare-fun call!675038 () (Set Context!16356))

(declare-fun call!675040 () List!71734)

(declare-fun bm!675033 () Bool)

(assert (=> bm!675033 (= call!675038 (derivationStepZipperDown!3064 (ite c!1368140 (regTwo!38989 r1!2370) (regOne!38988 r1!2370)) (ite c!1368140 ct1!282 (Context!16357 call!675040)) c!10362))))

(declare-fun bm!675034 () Bool)

(declare-fun call!675043 () List!71734)

(assert (=> bm!675034 (= call!675043 call!675040)))

(declare-fun b!7362921 () Bool)

(declare-fun e!4408311 () Bool)

(assert (=> b!7362921 (= e!4408311 (nullable!8320 (regOne!38988 r1!2370)))))

(declare-fun b!7362922 () Bool)

(declare-fun e!4408307 () (Set Context!16356))

(assert (=> b!7362922 (= e!4408307 (set.insert ct1!282 (as set.empty (Set Context!16356))))))

(declare-fun bm!675035 () Bool)

(declare-fun call!675042 () (Set Context!16356))

(declare-fun call!675041 () (Set Context!16356))

(assert (=> bm!675035 (= call!675042 call!675041)))

(declare-fun bm!675036 () Bool)

(declare-fun call!675039 () (Set Context!16356))

(assert (=> bm!675036 (= call!675039 call!675042)))

(declare-fun b!7362923 () Bool)

(declare-fun e!4408309 () (Set Context!16356))

(assert (=> b!7362923 (= e!4408309 call!675039)))

(declare-fun b!7362925 () Bool)

(declare-fun e!4408310 () (Set Context!16356))

(assert (=> b!7362925 (= e!4408310 call!675039)))

(declare-fun b!7362926 () Bool)

(declare-fun c!1368138 () Bool)

(assert (=> b!7362926 (= c!1368138 e!4408311)))

(declare-fun res!2972154 () Bool)

(assert (=> b!7362926 (=> (not res!2972154) (not e!4408311))))

(assert (=> b!7362926 (= res!2972154 (is-Concat!28083 r1!2370))))

(declare-fun e!4408308 () (Set Context!16356))

(declare-fun e!4408312 () (Set Context!16356))

(assert (=> b!7362926 (= e!4408308 e!4408312)))

(declare-fun b!7362927 () Bool)

(assert (=> b!7362927 (= e!4408312 (set.union call!675038 call!675042))))

(declare-fun c!1368142 () Bool)

(declare-fun bm!675037 () Bool)

(assert (=> bm!675037 (= call!675040 ($colon$colon!3226 (exprs!8678 ct1!282) (ite (or c!1368138 c!1368142) (regTwo!38988 r1!2370) r1!2370)))))

(declare-fun b!7362928 () Bool)

(assert (=> b!7362928 (= e!4408309 (as set.empty (Set Context!16356)))))

(declare-fun b!7362929 () Bool)

(declare-fun c!1368139 () Bool)

(assert (=> b!7362929 (= c!1368139 (is-Star!19238 r1!2370))))

(assert (=> b!7362929 (= e!4408310 e!4408309)))

(declare-fun b!7362930 () Bool)

(assert (=> b!7362930 (= e!4408312 e!4408310)))

(assert (=> b!7362930 (= c!1368142 (is-Concat!28083 r1!2370))))

(declare-fun bm!675038 () Bool)

(assert (=> bm!675038 (= call!675041 (derivationStepZipperDown!3064 (ite c!1368140 (regOne!38989 r1!2370) (ite c!1368138 (regTwo!38988 r1!2370) (ite c!1368142 (regOne!38988 r1!2370) (reg!19567 r1!2370)))) (ite (or c!1368140 c!1368138) ct1!282 (Context!16357 call!675043)) c!10362))))

(declare-fun b!7362931 () Bool)

(assert (=> b!7362931 (= e!4408307 e!4408308)))

(assert (=> b!7362931 (= c!1368140 (is-Union!19238 r1!2370))))

(declare-fun d!2282378 () Bool)

(declare-fun c!1368141 () Bool)

(assert (=> d!2282378 (= c!1368141 (and (is-ElementMatch!19238 r1!2370) (= (c!1368062 r1!2370) c!10362)))))

(assert (=> d!2282378 (= (derivationStepZipperDown!3064 r1!2370 ct1!282 c!10362) e!4408307)))

(declare-fun b!7362924 () Bool)

(assert (=> b!7362924 (= e!4408308 (set.union call!675041 call!675038))))

(assert (= (and d!2282378 c!1368141) b!7362922))

(assert (= (and d!2282378 (not c!1368141)) b!7362931))

(assert (= (and b!7362931 c!1368140) b!7362924))

(assert (= (and b!7362931 (not c!1368140)) b!7362926))

(assert (= (and b!7362926 res!2972154) b!7362921))

(assert (= (and b!7362926 c!1368138) b!7362927))

(assert (= (and b!7362926 (not c!1368138)) b!7362930))

(assert (= (and b!7362930 c!1368142) b!7362925))

(assert (= (and b!7362930 (not c!1368142)) b!7362929))

(assert (= (and b!7362929 c!1368139) b!7362923))

(assert (= (and b!7362929 (not c!1368139)) b!7362928))

(assert (= (or b!7362925 b!7362923) bm!675034))

(assert (= (or b!7362925 b!7362923) bm!675036))

(assert (= (or b!7362927 bm!675036) bm!675035))

(assert (= (or b!7362927 bm!675034) bm!675037))

(assert (= (or b!7362924 b!7362927) bm!675033))

(assert (= (or b!7362924 bm!675035) bm!675038))

(declare-fun m!8019660 () Bool)

(assert (=> bm!675038 m!8019660))

(declare-fun m!8019662 () Bool)

(assert (=> b!7362921 m!8019662))

(declare-fun m!8019664 () Bool)

(assert (=> bm!675033 m!8019664))

(declare-fun m!8019666 () Bool)

(assert (=> bm!675037 m!8019666))

(assert (=> b!7362922 m!8019552))

(assert (=> b!7362674 d!2282378))

(declare-fun bm!675039 () Bool)

(declare-fun call!675046 () List!71734)

(declare-fun call!675044 () (Set Context!16356))

(declare-fun c!1368145 () Bool)

(assert (=> bm!675039 (= call!675044 (derivationStepZipperDown!3064 (ite c!1368145 (regTwo!38989 r1!2370) (regOne!38988 r1!2370)) (ite c!1368145 lt!2614153 (Context!16357 call!675046)) c!10362))))

(declare-fun bm!675040 () Bool)

(declare-fun call!675049 () List!71734)

(assert (=> bm!675040 (= call!675049 call!675046)))

(declare-fun b!7362932 () Bool)

(declare-fun e!4408317 () Bool)

(assert (=> b!7362932 (= e!4408317 (nullable!8320 (regOne!38988 r1!2370)))))

(declare-fun b!7362933 () Bool)

(declare-fun e!4408313 () (Set Context!16356))

(assert (=> b!7362933 (= e!4408313 (set.insert lt!2614153 (as set.empty (Set Context!16356))))))

(declare-fun bm!675041 () Bool)

(declare-fun call!675048 () (Set Context!16356))

(declare-fun call!675047 () (Set Context!16356))

(assert (=> bm!675041 (= call!675048 call!675047)))

(declare-fun bm!675042 () Bool)

(declare-fun call!675045 () (Set Context!16356))

(assert (=> bm!675042 (= call!675045 call!675048)))

(declare-fun b!7362934 () Bool)

(declare-fun e!4408315 () (Set Context!16356))

(assert (=> b!7362934 (= e!4408315 call!675045)))

(declare-fun b!7362936 () Bool)

(declare-fun e!4408316 () (Set Context!16356))

(assert (=> b!7362936 (= e!4408316 call!675045)))

(declare-fun b!7362937 () Bool)

(declare-fun c!1368143 () Bool)

(assert (=> b!7362937 (= c!1368143 e!4408317)))

(declare-fun res!2972155 () Bool)

(assert (=> b!7362937 (=> (not res!2972155) (not e!4408317))))

(assert (=> b!7362937 (= res!2972155 (is-Concat!28083 r1!2370))))

(declare-fun e!4408314 () (Set Context!16356))

(declare-fun e!4408318 () (Set Context!16356))

(assert (=> b!7362937 (= e!4408314 e!4408318)))

(declare-fun b!7362938 () Bool)

(assert (=> b!7362938 (= e!4408318 (set.union call!675044 call!675048))))

(declare-fun bm!675043 () Bool)

(declare-fun c!1368147 () Bool)

(assert (=> bm!675043 (= call!675046 ($colon$colon!3226 (exprs!8678 lt!2614153) (ite (or c!1368143 c!1368147) (regTwo!38988 r1!2370) r1!2370)))))

(declare-fun b!7362939 () Bool)

(assert (=> b!7362939 (= e!4408315 (as set.empty (Set Context!16356)))))

(declare-fun b!7362940 () Bool)

(declare-fun c!1368144 () Bool)

(assert (=> b!7362940 (= c!1368144 (is-Star!19238 r1!2370))))

(assert (=> b!7362940 (= e!4408316 e!4408315)))

(declare-fun b!7362941 () Bool)

(assert (=> b!7362941 (= e!4408318 e!4408316)))

(assert (=> b!7362941 (= c!1368147 (is-Concat!28083 r1!2370))))

(declare-fun bm!675044 () Bool)

(assert (=> bm!675044 (= call!675047 (derivationStepZipperDown!3064 (ite c!1368145 (regOne!38989 r1!2370) (ite c!1368143 (regTwo!38988 r1!2370) (ite c!1368147 (regOne!38988 r1!2370) (reg!19567 r1!2370)))) (ite (or c!1368145 c!1368143) lt!2614153 (Context!16357 call!675049)) c!10362))))

(declare-fun b!7362942 () Bool)

(assert (=> b!7362942 (= e!4408313 e!4408314)))

(assert (=> b!7362942 (= c!1368145 (is-Union!19238 r1!2370))))

(declare-fun d!2282380 () Bool)

(declare-fun c!1368146 () Bool)

(assert (=> d!2282380 (= c!1368146 (and (is-ElementMatch!19238 r1!2370) (= (c!1368062 r1!2370) c!10362)))))

(assert (=> d!2282380 (= (derivationStepZipperDown!3064 r1!2370 lt!2614153 c!10362) e!4408313)))

(declare-fun b!7362935 () Bool)

(assert (=> b!7362935 (= e!4408314 (set.union call!675047 call!675044))))

(assert (= (and d!2282380 c!1368146) b!7362933))

(assert (= (and d!2282380 (not c!1368146)) b!7362942))

(assert (= (and b!7362942 c!1368145) b!7362935))

(assert (= (and b!7362942 (not c!1368145)) b!7362937))

(assert (= (and b!7362937 res!2972155) b!7362932))

(assert (= (and b!7362937 c!1368143) b!7362938))

(assert (= (and b!7362937 (not c!1368143)) b!7362941))

(assert (= (and b!7362941 c!1368147) b!7362936))

(assert (= (and b!7362941 (not c!1368147)) b!7362940))

(assert (= (and b!7362940 c!1368144) b!7362934))

(assert (= (and b!7362940 (not c!1368144)) b!7362939))

(assert (= (or b!7362936 b!7362934) bm!675040))

(assert (= (or b!7362936 b!7362934) bm!675042))

(assert (= (or b!7362938 bm!675042) bm!675041))

(assert (= (or b!7362938 bm!675040) bm!675043))

(assert (= (or b!7362935 b!7362938) bm!675039))

(assert (= (or b!7362935 bm!675041) bm!675044))

(declare-fun m!8019668 () Bool)

(assert (=> bm!675044 m!8019668))

(assert (=> b!7362932 m!8019662))

(declare-fun m!8019670 () Bool)

(assert (=> bm!675039 m!8019670))

(declare-fun m!8019672 () Bool)

(assert (=> bm!675043 m!8019672))

(assert (=> b!7362933 m!8019654))

(assert (=> b!7362681 d!2282380))

(declare-fun b!7362944 () Bool)

(declare-fun e!4408320 () List!71734)

(assert (=> b!7362944 (= e!4408320 (Cons!71610 (h!78058 (exprs!8678 ct1!282)) (++!17054 (t!386183 (exprs!8678 ct1!282)) (exprs!8678 ct2!378))))))

(declare-fun d!2282382 () Bool)

(declare-fun e!4408319 () Bool)

(assert (=> d!2282382 e!4408319))

(declare-fun res!2972157 () Bool)

(assert (=> d!2282382 (=> (not res!2972157) (not e!4408319))))

(declare-fun lt!2614210 () List!71734)

(assert (=> d!2282382 (= res!2972157 (= (content!15126 lt!2614210) (set.union (content!15126 (exprs!8678 ct1!282)) (content!15126 (exprs!8678 ct2!378)))))))

(assert (=> d!2282382 (= lt!2614210 e!4408320)))

(declare-fun c!1368148 () Bool)

(assert (=> d!2282382 (= c!1368148 (is-Nil!71610 (exprs!8678 ct1!282)))))

(assert (=> d!2282382 (= (++!17054 (exprs!8678 ct1!282) (exprs!8678 ct2!378)) lt!2614210)))

(declare-fun b!7362945 () Bool)

(declare-fun res!2972156 () Bool)

(assert (=> b!7362945 (=> (not res!2972156) (not e!4408319))))

(assert (=> b!7362945 (= res!2972156 (= (size!42104 lt!2614210) (+ (size!42104 (exprs!8678 ct1!282)) (size!42104 (exprs!8678 ct2!378)))))))

(declare-fun b!7362946 () Bool)

(assert (=> b!7362946 (= e!4408319 (or (not (= (exprs!8678 ct2!378) Nil!71610)) (= lt!2614210 (exprs!8678 ct1!282))))))

(declare-fun b!7362943 () Bool)

(assert (=> b!7362943 (= e!4408320 (exprs!8678 ct2!378))))

(assert (= (and d!2282382 c!1368148) b!7362943))

(assert (= (and d!2282382 (not c!1368148)) b!7362944))

(assert (= (and d!2282382 res!2972157) b!7362945))

(assert (= (and b!7362945 res!2972156) b!7362946))

(declare-fun m!8019674 () Bool)

(assert (=> b!7362944 m!8019674))

(declare-fun m!8019676 () Bool)

(assert (=> d!2282382 m!8019676))

(declare-fun m!8019678 () Bool)

(assert (=> d!2282382 m!8019678))

(assert (=> d!2282382 m!8019626))

(declare-fun m!8019680 () Bool)

(assert (=> b!7362945 m!8019680))

(declare-fun m!8019682 () Bool)

(assert (=> b!7362945 m!8019682))

(assert (=> b!7362945 m!8019632))

(assert (=> b!7362681 d!2282382))

(assert (=> b!7362681 d!2282360))

(declare-fun b!7362951 () Bool)

(declare-fun e!4408323 () Bool)

(declare-fun tp!2092308 () Bool)

(declare-fun tp!2092309 () Bool)

(assert (=> b!7362951 (= e!4408323 (and tp!2092308 tp!2092309))))

(assert (=> b!7362683 (= tp!2092277 e!4408323)))

(assert (= (and b!7362683 (is-Cons!71610 (exprs!8678 cWitness!61))) b!7362951))

(declare-fun b!7362952 () Bool)

(declare-fun e!4408324 () Bool)

(declare-fun tp!2092310 () Bool)

(declare-fun tp!2092311 () Bool)

(assert (=> b!7362952 (= e!4408324 (and tp!2092310 tp!2092311))))

(assert (=> b!7362679 (= tp!2092276 e!4408324)))

(assert (= (and b!7362679 (is-Cons!71610 (exprs!8678 ct1!282))) b!7362952))

(declare-fun e!4408327 () Bool)

(assert (=> b!7362685 (= tp!2092273 e!4408327)))

(declare-fun b!7362963 () Bool)

(assert (=> b!7362963 (= e!4408327 tp_is_empty!48721)))

(declare-fun b!7362964 () Bool)

(declare-fun tp!2092322 () Bool)

(declare-fun tp!2092326 () Bool)

(assert (=> b!7362964 (= e!4408327 (and tp!2092322 tp!2092326))))

(declare-fun b!7362966 () Bool)

(declare-fun tp!2092324 () Bool)

(declare-fun tp!2092325 () Bool)

(assert (=> b!7362966 (= e!4408327 (and tp!2092324 tp!2092325))))

(declare-fun b!7362965 () Bool)

(declare-fun tp!2092323 () Bool)

(assert (=> b!7362965 (= e!4408327 tp!2092323)))

(assert (= (and b!7362685 (is-ElementMatch!19238 (reg!19567 r1!2370))) b!7362963))

(assert (= (and b!7362685 (is-Concat!28083 (reg!19567 r1!2370))) b!7362964))

(assert (= (and b!7362685 (is-Star!19238 (reg!19567 r1!2370))) b!7362965))

(assert (= (and b!7362685 (is-Union!19238 (reg!19567 r1!2370))) b!7362966))

(declare-fun e!4408328 () Bool)

(assert (=> b!7362675 (= tp!2092272 e!4408328)))

(declare-fun b!7362967 () Bool)

(assert (=> b!7362967 (= e!4408328 tp_is_empty!48721)))

(declare-fun b!7362968 () Bool)

(declare-fun tp!2092327 () Bool)

(declare-fun tp!2092331 () Bool)

(assert (=> b!7362968 (= e!4408328 (and tp!2092327 tp!2092331))))

(declare-fun b!7362970 () Bool)

(declare-fun tp!2092329 () Bool)

(declare-fun tp!2092330 () Bool)

(assert (=> b!7362970 (= e!4408328 (and tp!2092329 tp!2092330))))

(declare-fun b!7362969 () Bool)

(declare-fun tp!2092328 () Bool)

(assert (=> b!7362969 (= e!4408328 tp!2092328)))

(assert (= (and b!7362675 (is-ElementMatch!19238 (regOne!38988 r1!2370))) b!7362967))

(assert (= (and b!7362675 (is-Concat!28083 (regOne!38988 r1!2370))) b!7362968))

(assert (= (and b!7362675 (is-Star!19238 (regOne!38988 r1!2370))) b!7362969))

(assert (= (and b!7362675 (is-Union!19238 (regOne!38988 r1!2370))) b!7362970))

(declare-fun e!4408329 () Bool)

(assert (=> b!7362675 (= tp!2092279 e!4408329)))

(declare-fun b!7362971 () Bool)

(assert (=> b!7362971 (= e!4408329 tp_is_empty!48721)))

(declare-fun b!7362972 () Bool)

(declare-fun tp!2092332 () Bool)

(declare-fun tp!2092336 () Bool)

(assert (=> b!7362972 (= e!4408329 (and tp!2092332 tp!2092336))))

(declare-fun b!7362974 () Bool)

(declare-fun tp!2092334 () Bool)

(declare-fun tp!2092335 () Bool)

(assert (=> b!7362974 (= e!4408329 (and tp!2092334 tp!2092335))))

(declare-fun b!7362973 () Bool)

(declare-fun tp!2092333 () Bool)

(assert (=> b!7362973 (= e!4408329 tp!2092333)))

(assert (= (and b!7362675 (is-ElementMatch!19238 (regTwo!38988 r1!2370))) b!7362971))

(assert (= (and b!7362675 (is-Concat!28083 (regTwo!38988 r1!2370))) b!7362972))

(assert (= (and b!7362675 (is-Star!19238 (regTwo!38988 r1!2370))) b!7362973))

(assert (= (and b!7362675 (is-Union!19238 (regTwo!38988 r1!2370))) b!7362974))

(declare-fun e!4408330 () Bool)

(assert (=> b!7362676 (= tp!2092274 e!4408330)))

(declare-fun b!7362975 () Bool)

(assert (=> b!7362975 (= e!4408330 tp_is_empty!48721)))

(declare-fun b!7362976 () Bool)

(declare-fun tp!2092337 () Bool)

(declare-fun tp!2092341 () Bool)

(assert (=> b!7362976 (= e!4408330 (and tp!2092337 tp!2092341))))

(declare-fun b!7362978 () Bool)

(declare-fun tp!2092339 () Bool)

(declare-fun tp!2092340 () Bool)

(assert (=> b!7362978 (= e!4408330 (and tp!2092339 tp!2092340))))

(declare-fun b!7362977 () Bool)

(declare-fun tp!2092338 () Bool)

(assert (=> b!7362977 (= e!4408330 tp!2092338)))

(assert (= (and b!7362676 (is-ElementMatch!19238 (regOne!38989 r1!2370))) b!7362975))

(assert (= (and b!7362676 (is-Concat!28083 (regOne!38989 r1!2370))) b!7362976))

(assert (= (and b!7362676 (is-Star!19238 (regOne!38989 r1!2370))) b!7362977))

(assert (= (and b!7362676 (is-Union!19238 (regOne!38989 r1!2370))) b!7362978))

(declare-fun e!4408331 () Bool)

(assert (=> b!7362676 (= tp!2092275 e!4408331)))

(declare-fun b!7362979 () Bool)

(assert (=> b!7362979 (= e!4408331 tp_is_empty!48721)))

(declare-fun b!7362980 () Bool)

(declare-fun tp!2092342 () Bool)

(declare-fun tp!2092346 () Bool)

(assert (=> b!7362980 (= e!4408331 (and tp!2092342 tp!2092346))))

(declare-fun b!7362982 () Bool)

(declare-fun tp!2092344 () Bool)

(declare-fun tp!2092345 () Bool)

(assert (=> b!7362982 (= e!4408331 (and tp!2092344 tp!2092345))))

(declare-fun b!7362981 () Bool)

(declare-fun tp!2092343 () Bool)

(assert (=> b!7362981 (= e!4408331 tp!2092343)))

(assert (= (and b!7362676 (is-ElementMatch!19238 (regTwo!38989 r1!2370))) b!7362979))

(assert (= (and b!7362676 (is-Concat!28083 (regTwo!38989 r1!2370))) b!7362980))

(assert (= (and b!7362676 (is-Star!19238 (regTwo!38989 r1!2370))) b!7362981))

(assert (= (and b!7362676 (is-Union!19238 (regTwo!38989 r1!2370))) b!7362982))

(declare-fun b!7362983 () Bool)

(declare-fun e!4408332 () Bool)

(declare-fun tp!2092347 () Bool)

(declare-fun tp!2092348 () Bool)

(assert (=> b!7362983 (= e!4408332 (and tp!2092347 tp!2092348))))

(assert (=> b!7362682 (= tp!2092278 e!4408332)))

(assert (= (and b!7362682 (is-Cons!71610 (exprs!8678 ct2!378))) b!7362983))

(push 1)

(assert (not d!2282338))

(assert (not b!7362745))

(assert (not bm!675027))

(assert (not b!7362970))

(assert (not b!7362932))

(assert (not bm!674998))

(assert (not bm!675043))

(assert (not bm!674955))

(assert (not b!7362945))

(assert (not d!2282336))

(assert (not b!7362896))

(assert (not b!7362966))

(assert (not bm!675032))

(assert (not b!7362837))

(assert (not b!7362981))

(assert (not b!7362972))

(assert (not bm!675011))

(assert (not bm!674957))

(assert (not d!2282362))

(assert (not b!7362921))

(assert (not d!2282360))

(assert (not b!7362977))

(assert (not d!2282334))

(assert (not b!7362968))

(assert (not b!7362980))

(assert (not b!7362978))

(assert (not b!7362897))

(assert (not b!7362965))

(assert (not d!2282368))

(assert (not b!7362951))

(assert (not b!7362974))

(assert (not bm!675044))

(assert (not bm!674999))

(assert (not b!7362983))

(assert (not b!7362973))

(assert (not bm!675031))

(assert (not b!7362944))

(assert (not bm!675037))

(assert (not b!7362976))

(assert (not bm!674994))

(assert (not b!7362964))

(assert (not d!2282350))

(assert (not d!2282374))

(assert (not b!7362982))

(assert (not bm!675039))

(assert (not bm!675006))

(assert (not d!2282382))

(assert tp_is_empty!48721)

(assert (not bm!675033))

(assert (not bm!675038))

(assert (not b!7362815))

(assert (not b!7362910))

(assert (not b!7362969))

(assert (not bm!675010))

(assert (not b!7362952))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

