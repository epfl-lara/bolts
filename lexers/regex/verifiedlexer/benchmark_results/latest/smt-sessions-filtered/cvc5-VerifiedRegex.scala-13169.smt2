; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718730 () Bool)

(assert start!718730)

(declare-fun b!7360988 () Bool)

(declare-fun e!4407167 () Bool)

(declare-datatypes ((C!38726 0))(
  ( (C!38727 (val!29723 Int)) )
))
(declare-datatypes ((Regex!19226 0))(
  ( (ElementMatch!19226 (c!1367710 C!38726)) (Concat!28071 (regOne!38964 Regex!19226) (regTwo!38964 Regex!19226)) (EmptyExpr!19226) (Star!19226 (reg!19555 Regex!19226)) (EmptyLang!19226) (Union!19226 (regOne!38965 Regex!19226) (regTwo!38965 Regex!19226)) )
))
(declare-datatypes ((List!71722 0))(
  ( (Nil!71598) (Cons!71598 (h!78046 Regex!19226) (t!386171 List!71722)) )
))
(declare-datatypes ((Context!16332 0))(
  ( (Context!16333 (exprs!8666 List!71722)) )
))
(declare-fun cWitness!61 () Context!16332)

(declare-fun ct2!378 () Context!16332)

(declare-fun inv!91406 (Context!16332) Bool)

(declare-fun ++!17042 (List!71722 List!71722) List!71722)

(assert (=> b!7360988 (= e!4407167 (not (inv!91406 (Context!16333 (++!17042 (exprs!8666 cWitness!61) (exprs!8666 ct2!378))))))))

(declare-datatypes ((Unit!165401 0))(
  ( (Unit!165402) )
))
(declare-fun lt!2613835 () Unit!165401)

(declare-fun lambda!457324 () Int)

(declare-fun lemmaConcatPreservesForall!1899 (List!71722 List!71722 Int) Unit!165401)

(assert (=> b!7360988 (= lt!2613835 (lemmaConcatPreservesForall!1899 (exprs!8666 cWitness!61) (exprs!8666 ct2!378) lambda!457324))))

(declare-fun b!7360989 () Bool)

(declare-fun e!4407173 () Bool)

(declare-fun tp!2091625 () Bool)

(assert (=> b!7360989 (= e!4407173 tp!2091625)))

(declare-fun b!7360990 () Bool)

(declare-fun e!4407168 () Bool)

(declare-fun tp!2091631 () Bool)

(declare-fun tp!2091626 () Bool)

(assert (=> b!7360990 (= e!4407168 (and tp!2091631 tp!2091626))))

(declare-fun b!7360991 () Bool)

(declare-fun e!4407171 () Bool)

(assert (=> b!7360991 (= e!4407171 e!4407167)))

(declare-fun res!2971623 () Bool)

(assert (=> b!7360991 (=> (not res!2971623) (not e!4407167))))

(declare-fun lt!2613836 () (Set Context!16332))

(declare-fun lt!2613837 () Context!16332)

(assert (=> b!7360991 (= res!2971623 (= lt!2613836 (set.insert lt!2613837 (as set.empty (Set Context!16332)))))))

(declare-fun lt!2613838 () Unit!165401)

(declare-fun ct1!282 () Context!16332)

(assert (=> b!7360991 (= lt!2613838 (lemmaConcatPreservesForall!1899 (exprs!8666 ct1!282) (exprs!8666 ct2!378) lambda!457324))))

(declare-fun res!2971626 () Bool)

(declare-fun e!4407166 () Bool)

(assert (=> start!718730 (=> (not res!2971626) (not e!4407166))))

(declare-fun r1!2370 () Regex!19226)

(declare-fun validRegex!9822 (Regex!19226) Bool)

(assert (=> start!718730 (= res!2971626 (validRegex!9822 r1!2370))))

(assert (=> start!718730 e!4407166))

(declare-fun tp_is_empty!48697 () Bool)

(assert (=> start!718730 tp_is_empty!48697))

(assert (=> start!718730 (and (inv!91406 cWitness!61) e!4407173)))

(declare-fun e!4407169 () Bool)

(assert (=> start!718730 (and (inv!91406 ct1!282) e!4407169)))

(assert (=> start!718730 e!4407168))

(declare-fun e!4407170 () Bool)

(assert (=> start!718730 (and (inv!91406 ct2!378) e!4407170)))

(declare-fun b!7360992 () Bool)

(declare-fun tp!2091630 () Bool)

(declare-fun tp!2091629 () Bool)

(assert (=> b!7360992 (= e!4407168 (and tp!2091630 tp!2091629))))

(declare-fun b!7360993 () Bool)

(declare-fun e!4407165 () Bool)

(assert (=> b!7360993 (= e!4407165 e!4407171)))

(declare-fun res!2971624 () Bool)

(assert (=> b!7360993 (=> (not res!2971624) (not e!4407171))))

(declare-fun lt!2613834 () (Set Context!16332))

(declare-fun lt!2613832 () (Set Context!16332))

(assert (=> b!7360993 (= res!2971624 (and (= lt!2613834 lt!2613832) (set.member cWitness!61 lt!2613832) (= cWitness!61 ct1!282)))))

(assert (=> b!7360993 (= lt!2613832 (set.insert ct1!282 (as set.empty (Set Context!16332))))))

(declare-fun b!7360994 () Bool)

(declare-fun tp!2091624 () Bool)

(assert (=> b!7360994 (= e!4407168 tp!2091624)))

(declare-fun b!7360995 () Bool)

(assert (=> b!7360995 (= e!4407168 tp_is_empty!48697)))

(declare-fun b!7360996 () Bool)

(declare-fun e!4407172 () Bool)

(assert (=> b!7360996 (= e!4407166 e!4407172)))

(declare-fun res!2971627 () Bool)

(assert (=> b!7360996 (=> (not res!2971627) (not e!4407172))))

(assert (=> b!7360996 (= res!2971627 (set.member cWitness!61 lt!2613834))))

(declare-fun c!10362 () C!38726)

(declare-fun derivationStepZipperDown!3052 (Regex!19226 Context!16332 C!38726) (Set Context!16332))

(assert (=> b!7360996 (= lt!2613834 (derivationStepZipperDown!3052 r1!2370 ct1!282 c!10362))))

(declare-fun b!7360997 () Bool)

(declare-fun tp!2091628 () Bool)

(assert (=> b!7360997 (= e!4407169 tp!2091628)))

(declare-fun b!7360998 () Bool)

(assert (=> b!7360998 (= e!4407172 e!4407165)))

(declare-fun res!2971625 () Bool)

(assert (=> b!7360998 (=> (not res!2971625) (not e!4407165))))

(assert (=> b!7360998 (= res!2971625 (and (is-ElementMatch!19226 r1!2370) (= c!10362 (c!1367710 r1!2370))))))

(assert (=> b!7360998 (= lt!2613836 (derivationStepZipperDown!3052 r1!2370 lt!2613837 c!10362))))

(assert (=> b!7360998 (= lt!2613837 (Context!16333 (++!17042 (exprs!8666 ct1!282) (exprs!8666 ct2!378))))))

(declare-fun lt!2613833 () Unit!165401)

(assert (=> b!7360998 (= lt!2613833 (lemmaConcatPreservesForall!1899 (exprs!8666 ct1!282) (exprs!8666 ct2!378) lambda!457324))))

(declare-fun b!7360999 () Bool)

(declare-fun tp!2091627 () Bool)

(assert (=> b!7360999 (= e!4407170 tp!2091627)))

(assert (= (and start!718730 res!2971626) b!7360996))

(assert (= (and b!7360996 res!2971627) b!7360998))

(assert (= (and b!7360998 res!2971625) b!7360993))

(assert (= (and b!7360993 res!2971624) b!7360991))

(assert (= (and b!7360991 res!2971623) b!7360988))

(assert (= start!718730 b!7360989))

(assert (= start!718730 b!7360997))

(assert (= (and start!718730 (is-ElementMatch!19226 r1!2370)) b!7360995))

(assert (= (and start!718730 (is-Concat!28071 r1!2370)) b!7360992))

(assert (= (and start!718730 (is-Star!19226 r1!2370)) b!7360994))

(assert (= (and start!718730 (is-Union!19226 r1!2370)) b!7360990))

(assert (= start!718730 b!7360999))

(declare-fun m!8018502 () Bool)

(assert (=> b!7360998 m!8018502))

(declare-fun m!8018504 () Bool)

(assert (=> b!7360998 m!8018504))

(declare-fun m!8018506 () Bool)

(assert (=> b!7360998 m!8018506))

(declare-fun m!8018508 () Bool)

(assert (=> b!7360991 m!8018508))

(assert (=> b!7360991 m!8018506))

(declare-fun m!8018510 () Bool)

(assert (=> start!718730 m!8018510))

(declare-fun m!8018512 () Bool)

(assert (=> start!718730 m!8018512))

(declare-fun m!8018514 () Bool)

(assert (=> start!718730 m!8018514))

(declare-fun m!8018516 () Bool)

(assert (=> start!718730 m!8018516))

(declare-fun m!8018518 () Bool)

(assert (=> b!7360988 m!8018518))

(declare-fun m!8018520 () Bool)

(assert (=> b!7360988 m!8018520))

(declare-fun m!8018522 () Bool)

(assert (=> b!7360988 m!8018522))

(declare-fun m!8018524 () Bool)

(assert (=> b!7360993 m!8018524))

(declare-fun m!8018526 () Bool)

(assert (=> b!7360993 m!8018526))

(declare-fun m!8018528 () Bool)

(assert (=> b!7360996 m!8018528))

(declare-fun m!8018530 () Bool)

(assert (=> b!7360996 m!8018530))

(push 1)

(assert (not b!7360989))

(assert (not b!7360990))

(assert tp_is_empty!48697)

(assert (not b!7360999))

(assert (not b!7360991))

(assert (not b!7360997))

(assert (not b!7360988))

(assert (not b!7360994))

(assert (not b!7360996))

(assert (not b!7360998))

(assert (not start!718730))

(assert (not b!7360992))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7361058 () Bool)

(declare-fun e!4407213 () Bool)

(declare-fun nullable!8312 (Regex!19226) Bool)

(assert (=> b!7361058 (= e!4407213 (nullable!8312 (regOne!38964 r1!2370)))))

(declare-fun b!7361059 () Bool)

(declare-fun e!4407215 () (Set Context!16332))

(declare-fun e!4407218 () (Set Context!16332))

(assert (=> b!7361059 (= e!4407215 e!4407218)))

(declare-fun c!1367722 () Bool)

(assert (=> b!7361059 (= c!1367722 (is-Union!19226 r1!2370))))

(declare-fun bm!674581 () Bool)

(declare-fun call!674587 () (Set Context!16332))

(declare-fun call!674586 () (Set Context!16332))

(assert (=> bm!674581 (= call!674587 call!674586)))

(declare-fun b!7361060 () Bool)

(declare-fun c!1367724 () Bool)

(assert (=> b!7361060 (= c!1367724 (is-Star!19226 r1!2370))))

(declare-fun e!4407217 () (Set Context!16332))

(declare-fun e!4407214 () (Set Context!16332))

(assert (=> b!7361060 (= e!4407217 e!4407214)))

(declare-fun c!1367725 () Bool)

(declare-fun c!1367726 () Bool)

(declare-fun bm!674582 () Bool)

(declare-fun call!674590 () List!71722)

(assert (=> bm!674582 (= call!674586 (derivationStepZipperDown!3052 (ite c!1367722 (regTwo!38965 r1!2370) (ite c!1367725 (regTwo!38964 r1!2370) (ite c!1367726 (regOne!38964 r1!2370) (reg!19555 r1!2370)))) (ite (or c!1367722 c!1367725) ct1!282 (Context!16333 call!674590)) c!10362))))

(declare-fun call!674589 () List!71722)

(declare-fun bm!674583 () Bool)

(declare-fun $colon$colon!3218 (List!71722 Regex!19226) List!71722)

(assert (=> bm!674583 (= call!674589 ($colon$colon!3218 (exprs!8666 ct1!282) (ite (or c!1367725 c!1367726) (regTwo!38964 r1!2370) r1!2370)))))

(declare-fun bm!674584 () Bool)

(assert (=> bm!674584 (= call!674590 call!674589)))

(declare-fun b!7361062 () Bool)

(declare-fun call!674591 () (Set Context!16332))

(assert (=> b!7361062 (= e!4407214 call!674591)))

(declare-fun d!2282140 () Bool)

(declare-fun c!1367723 () Bool)

(assert (=> d!2282140 (= c!1367723 (and (is-ElementMatch!19226 r1!2370) (= (c!1367710 r1!2370) c!10362)))))

(assert (=> d!2282140 (= (derivationStepZipperDown!3052 r1!2370 ct1!282 c!10362) e!4407215)))

(declare-fun b!7361061 () Bool)

(declare-fun e!4407216 () (Set Context!16332))

(declare-fun call!674588 () (Set Context!16332))

(assert (=> b!7361061 (= e!4407216 (set.union call!674588 call!674587))))

(declare-fun b!7361063 () Bool)

(assert (=> b!7361063 (= e!4407216 e!4407217)))

(assert (=> b!7361063 (= c!1367726 (is-Concat!28071 r1!2370))))

(declare-fun bm!674585 () Bool)

(assert (=> bm!674585 (= call!674591 call!674587)))

(declare-fun b!7361064 () Bool)

(assert (=> b!7361064 (= e!4407214 (as set.empty (Set Context!16332)))))

(declare-fun b!7361065 () Bool)

(assert (=> b!7361065 (= e!4407215 (set.insert ct1!282 (as set.empty (Set Context!16332))))))

(declare-fun bm!674586 () Bool)

(assert (=> bm!674586 (= call!674588 (derivationStepZipperDown!3052 (ite c!1367722 (regOne!38965 r1!2370) (regOne!38964 r1!2370)) (ite c!1367722 ct1!282 (Context!16333 call!674589)) c!10362))))

(declare-fun b!7361066 () Bool)

(assert (=> b!7361066 (= e!4407217 call!674591)))

(declare-fun b!7361067 () Bool)

(assert (=> b!7361067 (= e!4407218 (set.union call!674588 call!674586))))

(declare-fun b!7361068 () Bool)

(assert (=> b!7361068 (= c!1367725 e!4407213)))

(declare-fun res!2971645 () Bool)

(assert (=> b!7361068 (=> (not res!2971645) (not e!4407213))))

(assert (=> b!7361068 (= res!2971645 (is-Concat!28071 r1!2370))))

(assert (=> b!7361068 (= e!4407218 e!4407216)))

(assert (= (and d!2282140 c!1367723) b!7361065))

(assert (= (and d!2282140 (not c!1367723)) b!7361059))

(assert (= (and b!7361059 c!1367722) b!7361067))

(assert (= (and b!7361059 (not c!1367722)) b!7361068))

(assert (= (and b!7361068 res!2971645) b!7361058))

(assert (= (and b!7361068 c!1367725) b!7361061))

(assert (= (and b!7361068 (not c!1367725)) b!7361063))

(assert (= (and b!7361063 c!1367726) b!7361066))

(assert (= (and b!7361063 (not c!1367726)) b!7361060))

(assert (= (and b!7361060 c!1367724) b!7361062))

(assert (= (and b!7361060 (not c!1367724)) b!7361064))

(assert (= (or b!7361066 b!7361062) bm!674584))

(assert (= (or b!7361066 b!7361062) bm!674585))

(assert (= (or b!7361061 bm!674585) bm!674581))

(assert (= (or b!7361061 bm!674584) bm!674583))

(assert (= (or b!7361067 bm!674581) bm!674582))

(assert (= (or b!7361067 b!7361061) bm!674586))

(assert (=> b!7361065 m!8018526))

(declare-fun m!8018562 () Bool)

(assert (=> bm!674582 m!8018562))

(declare-fun m!8018564 () Bool)

(assert (=> bm!674583 m!8018564))

(declare-fun m!8018566 () Bool)

(assert (=> b!7361058 m!8018566))

(declare-fun m!8018568 () Bool)

(assert (=> bm!674586 m!8018568))

(assert (=> b!7360996 d!2282140))

(declare-fun b!7361105 () Bool)

(declare-fun res!2971668 () Bool)

(declare-fun e!4407251 () Bool)

(assert (=> b!7361105 (=> res!2971668 e!4407251)))

(assert (=> b!7361105 (= res!2971668 (not (is-Concat!28071 r1!2370)))))

(declare-fun e!4407248 () Bool)

(assert (=> b!7361105 (= e!4407248 e!4407251)))

(declare-fun b!7361106 () Bool)

(declare-fun e!4407250 () Bool)

(declare-fun e!4407253 () Bool)

(assert (=> b!7361106 (= e!4407250 e!4407253)))

(declare-fun c!1367735 () Bool)

(assert (=> b!7361106 (= c!1367735 (is-Star!19226 r1!2370))))

(declare-fun b!7361107 () Bool)

(declare-fun res!2971666 () Bool)

(declare-fun e!4407247 () Bool)

(assert (=> b!7361107 (=> (not res!2971666) (not e!4407247))))

(declare-fun call!674602 () Bool)

(assert (=> b!7361107 (= res!2971666 call!674602)))

(assert (=> b!7361107 (= e!4407248 e!4407247)))

(declare-fun bm!674597 () Bool)

(declare-fun call!674604 () Bool)

(declare-fun call!674603 () Bool)

(assert (=> bm!674597 (= call!674604 call!674603)))

(declare-fun b!7361108 () Bool)

(declare-fun e!4407252 () Bool)

(assert (=> b!7361108 (= e!4407252 call!674602)))

(declare-fun b!7361109 () Bool)

(declare-fun e!4407249 () Bool)

(assert (=> b!7361109 (= e!4407253 e!4407249)))

(declare-fun res!2971669 () Bool)

(assert (=> b!7361109 (= res!2971669 (not (nullable!8312 (reg!19555 r1!2370))))))

(assert (=> b!7361109 (=> (not res!2971669) (not e!4407249))))

(declare-fun bm!674598 () Bool)

(declare-fun c!1367736 () Bool)

(assert (=> bm!674598 (= call!674602 (validRegex!9822 (ite c!1367736 (regOne!38965 r1!2370) (regTwo!38964 r1!2370))))))

(declare-fun b!7361110 () Bool)

(assert (=> b!7361110 (= e!4407249 call!674603)))

(declare-fun d!2282144 () Bool)

(declare-fun res!2971670 () Bool)

(assert (=> d!2282144 (=> res!2971670 e!4407250)))

(assert (=> d!2282144 (= res!2971670 (is-ElementMatch!19226 r1!2370))))

(assert (=> d!2282144 (= (validRegex!9822 r1!2370) e!4407250)))

(declare-fun bm!674599 () Bool)

(assert (=> bm!674599 (= call!674603 (validRegex!9822 (ite c!1367735 (reg!19555 r1!2370) (ite c!1367736 (regTwo!38965 r1!2370) (regOne!38964 r1!2370)))))))

(declare-fun b!7361111 () Bool)

(assert (=> b!7361111 (= e!4407251 e!4407252)))

(declare-fun res!2971667 () Bool)

(assert (=> b!7361111 (=> (not res!2971667) (not e!4407252))))

(assert (=> b!7361111 (= res!2971667 call!674604)))

(declare-fun b!7361112 () Bool)

(assert (=> b!7361112 (= e!4407253 e!4407248)))

(assert (=> b!7361112 (= c!1367736 (is-Union!19226 r1!2370))))

(declare-fun b!7361113 () Bool)

(assert (=> b!7361113 (= e!4407247 call!674604)))

(assert (= (and d!2282144 (not res!2971670)) b!7361106))

(assert (= (and b!7361106 c!1367735) b!7361109))

(assert (= (and b!7361106 (not c!1367735)) b!7361112))

(assert (= (and b!7361109 res!2971669) b!7361110))

(assert (= (and b!7361112 c!1367736) b!7361107))

(assert (= (and b!7361112 (not c!1367736)) b!7361105))

(assert (= (and b!7361107 res!2971666) b!7361113))

(assert (= (and b!7361105 (not res!2971668)) b!7361111))

(assert (= (and b!7361111 res!2971667) b!7361108))

(assert (= (or b!7361107 b!7361108) bm!674598))

(assert (= (or b!7361113 b!7361111) bm!674597))

(assert (= (or b!7361110 bm!674597) bm!674599))

(declare-fun m!8018570 () Bool)

(assert (=> b!7361109 m!8018570))

(declare-fun m!8018572 () Bool)

(assert (=> bm!674598 m!8018572))

(declare-fun m!8018574 () Bool)

(assert (=> bm!674599 m!8018574))

(assert (=> start!718730 d!2282144))

(declare-fun bs!1920134 () Bool)

(declare-fun d!2282146 () Bool)

(assert (= bs!1920134 (and d!2282146 b!7360998)))

(declare-fun lambda!457334 () Int)

(assert (=> bs!1920134 (= lambda!457334 lambda!457324)))

(declare-fun forall!18042 (List!71722 Int) Bool)

(assert (=> d!2282146 (= (inv!91406 cWitness!61) (forall!18042 (exprs!8666 cWitness!61) lambda!457334))))

(declare-fun bs!1920135 () Bool)

(assert (= bs!1920135 d!2282146))

(declare-fun m!8018576 () Bool)

(assert (=> bs!1920135 m!8018576))

(assert (=> start!718730 d!2282146))

(declare-fun bs!1920136 () Bool)

(declare-fun d!2282148 () Bool)

(assert (= bs!1920136 (and d!2282148 b!7360998)))

(declare-fun lambda!457335 () Int)

(assert (=> bs!1920136 (= lambda!457335 lambda!457324)))

(declare-fun bs!1920137 () Bool)

(assert (= bs!1920137 (and d!2282148 d!2282146)))

(assert (=> bs!1920137 (= lambda!457335 lambda!457334)))

(assert (=> d!2282148 (= (inv!91406 ct1!282) (forall!18042 (exprs!8666 ct1!282) lambda!457335))))

(declare-fun bs!1920138 () Bool)

(assert (= bs!1920138 d!2282148))

(declare-fun m!8018578 () Bool)

(assert (=> bs!1920138 m!8018578))

(assert (=> start!718730 d!2282148))

(declare-fun bs!1920139 () Bool)

(declare-fun d!2282150 () Bool)

(assert (= bs!1920139 (and d!2282150 b!7360998)))

(declare-fun lambda!457336 () Int)

(assert (=> bs!1920139 (= lambda!457336 lambda!457324)))

(declare-fun bs!1920140 () Bool)

(assert (= bs!1920140 (and d!2282150 d!2282146)))

(assert (=> bs!1920140 (= lambda!457336 lambda!457334)))

(declare-fun bs!1920141 () Bool)

(assert (= bs!1920141 (and d!2282150 d!2282148)))

(assert (=> bs!1920141 (= lambda!457336 lambda!457335)))

(assert (=> d!2282150 (= (inv!91406 ct2!378) (forall!18042 (exprs!8666 ct2!378) lambda!457336))))

(declare-fun bs!1920142 () Bool)

(assert (= bs!1920142 d!2282150))

(declare-fun m!8018580 () Bool)

(assert (=> bs!1920142 m!8018580))

(assert (=> start!718730 d!2282150))

(declare-fun d!2282152 () Bool)

(assert (=> d!2282152 (forall!18042 (++!17042 (exprs!8666 ct1!282) (exprs!8666 ct2!378)) lambda!457324)))

(declare-fun lt!2613862 () Unit!165401)

(declare-fun choose!57249 (List!71722 List!71722 Int) Unit!165401)

(assert (=> d!2282152 (= lt!2613862 (choose!57249 (exprs!8666 ct1!282) (exprs!8666 ct2!378) lambda!457324))))

(assert (=> d!2282152 (forall!18042 (exprs!8666 ct1!282) lambda!457324)))

(assert (=> d!2282152 (= (lemmaConcatPreservesForall!1899 (exprs!8666 ct1!282) (exprs!8666 ct2!378) lambda!457324) lt!2613862)))

(declare-fun bs!1920143 () Bool)

(assert (= bs!1920143 d!2282152))

(assert (=> bs!1920143 m!8018504))

(assert (=> bs!1920143 m!8018504))

(declare-fun m!8018582 () Bool)

(assert (=> bs!1920143 m!8018582))

(declare-fun m!8018584 () Bool)

(assert (=> bs!1920143 m!8018584))

(declare-fun m!8018586 () Bool)

(assert (=> bs!1920143 m!8018586))

(assert (=> b!7360991 d!2282152))

(declare-fun b!7361123 () Bool)

(declare-fun e!4407261 () Bool)

(assert (=> b!7361123 (= e!4407261 (nullable!8312 (regOne!38964 r1!2370)))))

(declare-fun b!7361124 () Bool)

(declare-fun e!4407263 () (Set Context!16332))

(declare-fun e!4407266 () (Set Context!16332))

(assert (=> b!7361124 (= e!4407263 e!4407266)))

(declare-fun c!1367739 () Bool)

(assert (=> b!7361124 (= c!1367739 (is-Union!19226 r1!2370))))

(declare-fun bm!674605 () Bool)

(declare-fun call!674611 () (Set Context!16332))

(declare-fun call!674610 () (Set Context!16332))

(assert (=> bm!674605 (= call!674611 call!674610)))

(declare-fun b!7361125 () Bool)

(declare-fun c!1367741 () Bool)

(assert (=> b!7361125 (= c!1367741 (is-Star!19226 r1!2370))))

(declare-fun e!4407265 () (Set Context!16332))

(declare-fun e!4407262 () (Set Context!16332))

(assert (=> b!7361125 (= e!4407265 e!4407262)))

(declare-fun bm!674606 () Bool)

(declare-fun c!1367742 () Bool)

(declare-fun c!1367743 () Bool)

(declare-fun call!674614 () List!71722)

(assert (=> bm!674606 (= call!674610 (derivationStepZipperDown!3052 (ite c!1367739 (regTwo!38965 r1!2370) (ite c!1367742 (regTwo!38964 r1!2370) (ite c!1367743 (regOne!38964 r1!2370) (reg!19555 r1!2370)))) (ite (or c!1367739 c!1367742) lt!2613837 (Context!16333 call!674614)) c!10362))))

(declare-fun call!674613 () List!71722)

(declare-fun bm!674607 () Bool)

(assert (=> bm!674607 (= call!674613 ($colon$colon!3218 (exprs!8666 lt!2613837) (ite (or c!1367742 c!1367743) (regTwo!38964 r1!2370) r1!2370)))))

(declare-fun bm!674608 () Bool)

(assert (=> bm!674608 (= call!674614 call!674613)))

(declare-fun b!7361127 () Bool)

(declare-fun call!674615 () (Set Context!16332))

(assert (=> b!7361127 (= e!4407262 call!674615)))

(declare-fun d!2282154 () Bool)

(declare-fun c!1367740 () Bool)

(assert (=> d!2282154 (= c!1367740 (and (is-ElementMatch!19226 r1!2370) (= (c!1367710 r1!2370) c!10362)))))

(assert (=> d!2282154 (= (derivationStepZipperDown!3052 r1!2370 lt!2613837 c!10362) e!4407263)))

(declare-fun b!7361126 () Bool)

(declare-fun e!4407264 () (Set Context!16332))

(declare-fun call!674612 () (Set Context!16332))

(assert (=> b!7361126 (= e!4407264 (set.union call!674612 call!674611))))

(declare-fun b!7361128 () Bool)

(assert (=> b!7361128 (= e!4407264 e!4407265)))

(assert (=> b!7361128 (= c!1367743 (is-Concat!28071 r1!2370))))

(declare-fun bm!674609 () Bool)

(assert (=> bm!674609 (= call!674615 call!674611)))

(declare-fun b!7361129 () Bool)

(assert (=> b!7361129 (= e!4407262 (as set.empty (Set Context!16332)))))

(declare-fun b!7361130 () Bool)

(assert (=> b!7361130 (= e!4407263 (set.insert lt!2613837 (as set.empty (Set Context!16332))))))

(declare-fun bm!674610 () Bool)

(assert (=> bm!674610 (= call!674612 (derivationStepZipperDown!3052 (ite c!1367739 (regOne!38965 r1!2370) (regOne!38964 r1!2370)) (ite c!1367739 lt!2613837 (Context!16333 call!674613)) c!10362))))

(declare-fun b!7361131 () Bool)

(assert (=> b!7361131 (= e!4407265 call!674615)))

(declare-fun b!7361132 () Bool)

(assert (=> b!7361132 (= e!4407266 (set.union call!674612 call!674610))))

(declare-fun b!7361133 () Bool)

(assert (=> b!7361133 (= c!1367742 e!4407261)))

(declare-fun res!2971676 () Bool)

(assert (=> b!7361133 (=> (not res!2971676) (not e!4407261))))

(assert (=> b!7361133 (= res!2971676 (is-Concat!28071 r1!2370))))

(assert (=> b!7361133 (= e!4407266 e!4407264)))

(assert (= (and d!2282154 c!1367740) b!7361130))

(assert (= (and d!2282154 (not c!1367740)) b!7361124))

(assert (= (and b!7361124 c!1367739) b!7361132))

(assert (= (and b!7361124 (not c!1367739)) b!7361133))

(assert (= (and b!7361133 res!2971676) b!7361123))

(assert (= (and b!7361133 c!1367742) b!7361126))

(assert (= (and b!7361133 (not c!1367742)) b!7361128))

(assert (= (and b!7361128 c!1367743) b!7361131))

(assert (= (and b!7361128 (not c!1367743)) b!7361125))

(assert (= (and b!7361125 c!1367741) b!7361127))

(assert (= (and b!7361125 (not c!1367741)) b!7361129))

(assert (= (or b!7361131 b!7361127) bm!674608))

(assert (= (or b!7361131 b!7361127) bm!674609))

(assert (= (or b!7361126 bm!674609) bm!674605))

(assert (= (or b!7361126 bm!674608) bm!674607))

(assert (= (or b!7361132 bm!674605) bm!674606))

(assert (= (or b!7361132 b!7361126) bm!674610))

(assert (=> b!7361130 m!8018508))

(declare-fun m!8018590 () Bool)

(assert (=> bm!674606 m!8018590))

(declare-fun m!8018594 () Bool)

(assert (=> bm!674607 m!8018594))

(assert (=> b!7361123 m!8018566))

(declare-fun m!8018596 () Bool)

(assert (=> bm!674610 m!8018596))

(assert (=> b!7360998 d!2282154))

(declare-fun b!7361144 () Bool)

(declare-fun res!2971681 () Bool)

(declare-fun e!4407272 () Bool)

(assert (=> b!7361144 (=> (not res!2971681) (not e!4407272))))

(declare-fun lt!2613865 () List!71722)

(declare-fun size!42096 (List!71722) Int)

(assert (=> b!7361144 (= res!2971681 (= (size!42096 lt!2613865) (+ (size!42096 (exprs!8666 ct1!282)) (size!42096 (exprs!8666 ct2!378)))))))

(declare-fun b!7361145 () Bool)

(assert (=> b!7361145 (= e!4407272 (or (not (= (exprs!8666 ct2!378) Nil!71598)) (= lt!2613865 (exprs!8666 ct1!282))))))

(declare-fun d!2282156 () Bool)

(assert (=> d!2282156 e!4407272))

(declare-fun res!2971682 () Bool)

(assert (=> d!2282156 (=> (not res!2971682) (not e!4407272))))

(declare-fun content!15118 (List!71722) (Set Regex!19226))

(assert (=> d!2282156 (= res!2971682 (= (content!15118 lt!2613865) (set.union (content!15118 (exprs!8666 ct1!282)) (content!15118 (exprs!8666 ct2!378)))))))

(declare-fun e!4407271 () List!71722)

(assert (=> d!2282156 (= lt!2613865 e!4407271)))

(declare-fun c!1367746 () Bool)

(assert (=> d!2282156 (= c!1367746 (is-Nil!71598 (exprs!8666 ct1!282)))))

(assert (=> d!2282156 (= (++!17042 (exprs!8666 ct1!282) (exprs!8666 ct2!378)) lt!2613865)))

(declare-fun b!7361143 () Bool)

(assert (=> b!7361143 (= e!4407271 (Cons!71598 (h!78046 (exprs!8666 ct1!282)) (++!17042 (t!386171 (exprs!8666 ct1!282)) (exprs!8666 ct2!378))))))

(declare-fun b!7361142 () Bool)

(assert (=> b!7361142 (= e!4407271 (exprs!8666 ct2!378))))

(assert (= (and d!2282156 c!1367746) b!7361142))

(assert (= (and d!2282156 (not c!1367746)) b!7361143))

(assert (= (and d!2282156 res!2971682) b!7361144))

(assert (= (and b!7361144 res!2971681) b!7361145))

(declare-fun m!8018604 () Bool)

(assert (=> b!7361144 m!8018604))

(declare-fun m!8018606 () Bool)

(assert (=> b!7361144 m!8018606))

(declare-fun m!8018608 () Bool)

(assert (=> b!7361144 m!8018608))

(declare-fun m!8018610 () Bool)

(assert (=> d!2282156 m!8018610))

(declare-fun m!8018612 () Bool)

(assert (=> d!2282156 m!8018612))

(declare-fun m!8018614 () Bool)

(assert (=> d!2282156 m!8018614))

(declare-fun m!8018616 () Bool)

(assert (=> b!7361143 m!8018616))

(assert (=> b!7360998 d!2282156))

(assert (=> b!7360998 d!2282152))

(declare-fun bs!1920153 () Bool)

(declare-fun d!2282164 () Bool)

(assert (= bs!1920153 (and d!2282164 b!7360998)))

(declare-fun lambda!457342 () Int)

(assert (=> bs!1920153 (= lambda!457342 lambda!457324)))

(declare-fun bs!1920154 () Bool)

(assert (= bs!1920154 (and d!2282164 d!2282146)))

(assert (=> bs!1920154 (= lambda!457342 lambda!457334)))

(declare-fun bs!1920155 () Bool)

(assert (= bs!1920155 (and d!2282164 d!2282148)))

(assert (=> bs!1920155 (= lambda!457342 lambda!457335)))

(declare-fun bs!1920156 () Bool)

(assert (= bs!1920156 (and d!2282164 d!2282150)))

(assert (=> bs!1920156 (= lambda!457342 lambda!457336)))

(assert (=> d!2282164 (= (inv!91406 (Context!16333 (++!17042 (exprs!8666 cWitness!61) (exprs!8666 ct2!378)))) (forall!18042 (exprs!8666 (Context!16333 (++!17042 (exprs!8666 cWitness!61) (exprs!8666 ct2!378)))) lambda!457342))))

(declare-fun bs!1920157 () Bool)

(assert (= bs!1920157 d!2282164))

(declare-fun m!8018620 () Bool)

(assert (=> bs!1920157 m!8018620))

(assert (=> b!7360988 d!2282164))

(declare-fun b!7361148 () Bool)

(declare-fun res!2971683 () Bool)

(declare-fun e!4407274 () Bool)

(assert (=> b!7361148 (=> (not res!2971683) (not e!4407274))))

(declare-fun lt!2613866 () List!71722)

(assert (=> b!7361148 (= res!2971683 (= (size!42096 lt!2613866) (+ (size!42096 (exprs!8666 cWitness!61)) (size!42096 (exprs!8666 ct2!378)))))))

(declare-fun b!7361149 () Bool)

(assert (=> b!7361149 (= e!4407274 (or (not (= (exprs!8666 ct2!378) Nil!71598)) (= lt!2613866 (exprs!8666 cWitness!61))))))

(declare-fun d!2282168 () Bool)

(assert (=> d!2282168 e!4407274))

(declare-fun res!2971684 () Bool)

(assert (=> d!2282168 (=> (not res!2971684) (not e!4407274))))

(assert (=> d!2282168 (= res!2971684 (= (content!15118 lt!2613866) (set.union (content!15118 (exprs!8666 cWitness!61)) (content!15118 (exprs!8666 ct2!378)))))))

(declare-fun e!4407273 () List!71722)

(assert (=> d!2282168 (= lt!2613866 e!4407273)))

(declare-fun c!1367747 () Bool)

(assert (=> d!2282168 (= c!1367747 (is-Nil!71598 (exprs!8666 cWitness!61)))))

(assert (=> d!2282168 (= (++!17042 (exprs!8666 cWitness!61) (exprs!8666 ct2!378)) lt!2613866)))

(declare-fun b!7361147 () Bool)

(assert (=> b!7361147 (= e!4407273 (Cons!71598 (h!78046 (exprs!8666 cWitness!61)) (++!17042 (t!386171 (exprs!8666 cWitness!61)) (exprs!8666 ct2!378))))))

(declare-fun b!7361146 () Bool)

(assert (=> b!7361146 (= e!4407273 (exprs!8666 ct2!378))))

(assert (= (and d!2282168 c!1367747) b!7361146))

(assert (= (and d!2282168 (not c!1367747)) b!7361147))

(assert (= (and d!2282168 res!2971684) b!7361148))

(assert (= (and b!7361148 res!2971683) b!7361149))

(declare-fun m!8018622 () Bool)

(assert (=> b!7361148 m!8018622))

(declare-fun m!8018624 () Bool)

(assert (=> b!7361148 m!8018624))

(assert (=> b!7361148 m!8018608))

(declare-fun m!8018626 () Bool)

(assert (=> d!2282168 m!8018626))

(declare-fun m!8018628 () Bool)

(assert (=> d!2282168 m!8018628))

(assert (=> d!2282168 m!8018614))

(declare-fun m!8018630 () Bool)

(assert (=> b!7361147 m!8018630))

(assert (=> b!7360988 d!2282168))

(declare-fun d!2282170 () Bool)

(assert (=> d!2282170 (forall!18042 (++!17042 (exprs!8666 cWitness!61) (exprs!8666 ct2!378)) lambda!457324)))

(declare-fun lt!2613867 () Unit!165401)

(assert (=> d!2282170 (= lt!2613867 (choose!57249 (exprs!8666 cWitness!61) (exprs!8666 ct2!378) lambda!457324))))

(assert (=> d!2282170 (forall!18042 (exprs!8666 cWitness!61) lambda!457324)))

(assert (=> d!2282170 (= (lemmaConcatPreservesForall!1899 (exprs!8666 cWitness!61) (exprs!8666 ct2!378) lambda!457324) lt!2613867)))

(declare-fun bs!1920158 () Bool)

(assert (= bs!1920158 d!2282170))

(assert (=> bs!1920158 m!8018518))

(assert (=> bs!1920158 m!8018518))

(declare-fun m!8018632 () Bool)

(assert (=> bs!1920158 m!8018632))

(declare-fun m!8018634 () Bool)

(assert (=> bs!1920158 m!8018634))

(declare-fun m!8018636 () Bool)

(assert (=> bs!1920158 m!8018636))

(assert (=> b!7360988 d!2282170))

(declare-fun e!4407277 () Bool)

(assert (=> b!7360994 (= tp!2091624 e!4407277)))

(declare-fun b!7361162 () Bool)

(declare-fun tp!2091667 () Bool)

(assert (=> b!7361162 (= e!4407277 tp!2091667)))

(declare-fun b!7361161 () Bool)

(declare-fun tp!2091666 () Bool)

(declare-fun tp!2091668 () Bool)

(assert (=> b!7361161 (= e!4407277 (and tp!2091666 tp!2091668))))

(declare-fun b!7361160 () Bool)

(assert (=> b!7361160 (= e!4407277 tp_is_empty!48697)))

(declare-fun b!7361163 () Bool)

(declare-fun tp!2091670 () Bool)

(declare-fun tp!2091669 () Bool)

(assert (=> b!7361163 (= e!4407277 (and tp!2091670 tp!2091669))))

(assert (= (and b!7360994 (is-ElementMatch!19226 (reg!19555 r1!2370))) b!7361160))

(assert (= (and b!7360994 (is-Concat!28071 (reg!19555 r1!2370))) b!7361161))

(assert (= (and b!7360994 (is-Star!19226 (reg!19555 r1!2370))) b!7361162))

(assert (= (and b!7360994 (is-Union!19226 (reg!19555 r1!2370))) b!7361163))

(declare-fun b!7361168 () Bool)

(declare-fun e!4407280 () Bool)

(declare-fun tp!2091675 () Bool)

(declare-fun tp!2091676 () Bool)

(assert (=> b!7361168 (= e!4407280 (and tp!2091675 tp!2091676))))

(assert (=> b!7360999 (= tp!2091627 e!4407280)))

(assert (= (and b!7360999 (is-Cons!71598 (exprs!8666 ct2!378))) b!7361168))

(declare-fun b!7361169 () Bool)

(declare-fun e!4407281 () Bool)

(declare-fun tp!2091677 () Bool)

(declare-fun tp!2091678 () Bool)

(assert (=> b!7361169 (= e!4407281 (and tp!2091677 tp!2091678))))

(assert (=> b!7360989 (= tp!2091625 e!4407281)))

(assert (= (and b!7360989 (is-Cons!71598 (exprs!8666 cWitness!61))) b!7361169))

(declare-fun e!4407282 () Bool)

(assert (=> b!7360990 (= tp!2091631 e!4407282)))

(declare-fun b!7361172 () Bool)

(declare-fun tp!2091680 () Bool)

(assert (=> b!7361172 (= e!4407282 tp!2091680)))

(declare-fun b!7361171 () Bool)

(declare-fun tp!2091679 () Bool)

(declare-fun tp!2091681 () Bool)

(assert (=> b!7361171 (= e!4407282 (and tp!2091679 tp!2091681))))

(declare-fun b!7361170 () Bool)

(assert (=> b!7361170 (= e!4407282 tp_is_empty!48697)))

(declare-fun b!7361173 () Bool)

(declare-fun tp!2091683 () Bool)

(declare-fun tp!2091682 () Bool)

(assert (=> b!7361173 (= e!4407282 (and tp!2091683 tp!2091682))))

(assert (= (and b!7360990 (is-ElementMatch!19226 (regOne!38965 r1!2370))) b!7361170))

(assert (= (and b!7360990 (is-Concat!28071 (regOne!38965 r1!2370))) b!7361171))

(assert (= (and b!7360990 (is-Star!19226 (regOne!38965 r1!2370))) b!7361172))

(assert (= (and b!7360990 (is-Union!19226 (regOne!38965 r1!2370))) b!7361173))

(declare-fun e!4407283 () Bool)

(assert (=> b!7360990 (= tp!2091626 e!4407283)))

(declare-fun b!7361176 () Bool)

(declare-fun tp!2091685 () Bool)

(assert (=> b!7361176 (= e!4407283 tp!2091685)))

(declare-fun b!7361175 () Bool)

(declare-fun tp!2091684 () Bool)

(declare-fun tp!2091686 () Bool)

(assert (=> b!7361175 (= e!4407283 (and tp!2091684 tp!2091686))))

(declare-fun b!7361174 () Bool)

(assert (=> b!7361174 (= e!4407283 tp_is_empty!48697)))

(declare-fun b!7361177 () Bool)

(declare-fun tp!2091688 () Bool)

(declare-fun tp!2091687 () Bool)

(assert (=> b!7361177 (= e!4407283 (and tp!2091688 tp!2091687))))

(assert (= (and b!7360990 (is-ElementMatch!19226 (regTwo!38965 r1!2370))) b!7361174))

(assert (= (and b!7360990 (is-Concat!28071 (regTwo!38965 r1!2370))) b!7361175))

(assert (= (and b!7360990 (is-Star!19226 (regTwo!38965 r1!2370))) b!7361176))

(assert (= (and b!7360990 (is-Union!19226 (regTwo!38965 r1!2370))) b!7361177))

(declare-fun e!4407284 () Bool)

(assert (=> b!7360992 (= tp!2091630 e!4407284)))

(declare-fun b!7361180 () Bool)

(declare-fun tp!2091690 () Bool)

(assert (=> b!7361180 (= e!4407284 tp!2091690)))

(declare-fun b!7361179 () Bool)

(declare-fun tp!2091689 () Bool)

(declare-fun tp!2091691 () Bool)

(assert (=> b!7361179 (= e!4407284 (and tp!2091689 tp!2091691))))

(declare-fun b!7361178 () Bool)

(assert (=> b!7361178 (= e!4407284 tp_is_empty!48697)))

(declare-fun b!7361181 () Bool)

(declare-fun tp!2091693 () Bool)

(declare-fun tp!2091692 () Bool)

(assert (=> b!7361181 (= e!4407284 (and tp!2091693 tp!2091692))))

(assert (= (and b!7360992 (is-ElementMatch!19226 (regOne!38964 r1!2370))) b!7361178))

(assert (= (and b!7360992 (is-Concat!28071 (regOne!38964 r1!2370))) b!7361179))

(assert (= (and b!7360992 (is-Star!19226 (regOne!38964 r1!2370))) b!7361180))

(assert (= (and b!7360992 (is-Union!19226 (regOne!38964 r1!2370))) b!7361181))

(declare-fun e!4407285 () Bool)

(assert (=> b!7360992 (= tp!2091629 e!4407285)))

(declare-fun b!7361184 () Bool)

(declare-fun tp!2091695 () Bool)

(assert (=> b!7361184 (= e!4407285 tp!2091695)))

(declare-fun b!7361183 () Bool)

(declare-fun tp!2091694 () Bool)

(declare-fun tp!2091696 () Bool)

(assert (=> b!7361183 (= e!4407285 (and tp!2091694 tp!2091696))))

(declare-fun b!7361182 () Bool)

(assert (=> b!7361182 (= e!4407285 tp_is_empty!48697)))

(declare-fun b!7361185 () Bool)

(declare-fun tp!2091698 () Bool)

(declare-fun tp!2091697 () Bool)

(assert (=> b!7361185 (= e!4407285 (and tp!2091698 tp!2091697))))

(assert (= (and b!7360992 (is-ElementMatch!19226 (regTwo!38964 r1!2370))) b!7361182))

(assert (= (and b!7360992 (is-Concat!28071 (regTwo!38964 r1!2370))) b!7361183))

(assert (= (and b!7360992 (is-Star!19226 (regTwo!38964 r1!2370))) b!7361184))

(assert (= (and b!7360992 (is-Union!19226 (regTwo!38964 r1!2370))) b!7361185))

(declare-fun b!7361186 () Bool)

(declare-fun e!4407286 () Bool)

(declare-fun tp!2091699 () Bool)

(declare-fun tp!2091700 () Bool)

(assert (=> b!7361186 (= e!4407286 (and tp!2091699 tp!2091700))))

(assert (=> b!7360997 (= tp!2091628 e!4407286)))

(assert (= (and b!7360997 (is-Cons!71598 (exprs!8666 ct1!282))) b!7361186))

(push 1)

(assert (not bm!674610))

(assert (not d!2282150))

(assert (not b!7361173))

(assert (not b!7361177))

(assert (not b!7361161))

(assert (not bm!674583))

(assert (not d!2282168))

(assert (not d!2282146))

(assert (not b!7361175))

(assert (not bm!674598))

(assert (not b!7361123))

(assert (not bm!674607))

(assert (not b!7361180))

(assert (not b!7361184))

(assert (not b!7361171))

(assert (not b!7361148))

(assert (not b!7361181))

(assert (not b!7361179))

(assert (not d!2282170))

(assert (not bm!674599))

(assert (not b!7361162))

(assert (not bm!674586))

(assert (not b!7361144))

(assert (not b!7361109))

(assert tp_is_empty!48697)

(assert (not b!7361176))

(assert (not d!2282164))

(assert (not d!2282156))

(assert (not b!7361163))

(assert (not bm!674582))

(assert (not b!7361185))

(assert (not d!2282152))

(assert (not b!7361147))

(assert (not b!7361143))

(assert (not b!7361183))

(assert (not b!7361186))

(assert (not d!2282148))

(assert (not b!7361169))

(assert (not b!7361168))

(assert (not b!7361172))

(assert (not bm!674606))

(assert (not b!7361058))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

