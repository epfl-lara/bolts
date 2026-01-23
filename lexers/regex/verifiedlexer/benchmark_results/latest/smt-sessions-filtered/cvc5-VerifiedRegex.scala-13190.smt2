; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719234 () Bool)

(assert start!719234)

(declare-fun b!7368682 () Bool)

(declare-fun e!4411467 () Bool)

(declare-fun tp!2094657 () Bool)

(assert (=> b!7368682 (= e!4411467 tp!2094657)))

(declare-fun b!7368684 () Bool)

(declare-fun e!4411470 () Bool)

(declare-fun tp!2094659 () Bool)

(assert (=> b!7368684 (= e!4411470 tp!2094659)))

(declare-fun b!7368685 () Bool)

(declare-fun res!2973595 () Bool)

(declare-fun e!4411465 () Bool)

(assert (=> b!7368685 (=> (not res!2973595) (not e!4411465))))

(declare-datatypes ((C!38810 0))(
  ( (C!38811 (val!29765 Int)) )
))
(declare-datatypes ((Regex!19268 0))(
  ( (ElementMatch!19268 (c!1369364 C!38810)) (Concat!28113 (regOne!39048 Regex!19268) (regTwo!39048 Regex!19268)) (EmptyExpr!19268) (Star!19268 (reg!19597 Regex!19268)) (EmptyLang!19268) (Union!19268 (regOne!39049 Regex!19268) (regTwo!39049 Regex!19268)) )
))
(declare-datatypes ((List!71764 0))(
  ( (Nil!71640) (Cons!71640 (h!78088 Regex!19268) (t!386219 List!71764)) )
))
(declare-datatypes ((Context!16416 0))(
  ( (Context!16417 (exprs!8708 List!71764)) )
))
(declare-fun cWitness!61 () Context!16416)

(declare-fun lt!2615136 () (Set Context!16416))

(assert (=> b!7368685 (= res!2973595 (set.member cWitness!61 lt!2615136))))

(declare-fun b!7368686 () Bool)

(declare-fun res!2973597 () Bool)

(declare-fun e!4411466 () Bool)

(assert (=> b!7368686 (=> (not res!2973597) (not e!4411466))))

(declare-fun r1!2370 () Regex!19268)

(declare-fun nullable!8344 (Regex!19268) Bool)

(assert (=> b!7368686 (= res!2973597 (nullable!8344 (regOne!39048 r1!2370)))))

(declare-fun b!7368687 () Bool)

(declare-fun e!4411468 () Bool)

(assert (=> b!7368687 (= e!4411468 e!4411466)))

(declare-fun res!2973598 () Bool)

(assert (=> b!7368687 (=> (not res!2973598) (not e!4411466))))

(declare-fun c!10362 () C!38810)

(assert (=> b!7368687 (= res!2973598 (and (or (not (is-ElementMatch!19268 r1!2370)) (not (= c!10362 (c!1369364 r1!2370)))) (not (is-Union!19268 r1!2370)) (is-Concat!28113 r1!2370)))))

(declare-fun ct1!282 () Context!16416)

(declare-fun ct2!378 () Context!16416)

(declare-fun lt!2615135 () (Set Context!16416))

(declare-fun derivationStepZipperDown!3094 (Regex!19268 Context!16416 C!38810) (Set Context!16416))

(declare-fun ++!17084 (List!71764 List!71764) List!71764)

(assert (=> b!7368687 (= lt!2615135 (derivationStepZipperDown!3094 r1!2370 (Context!16417 (++!17084 (exprs!8708 ct1!282) (exprs!8708 ct2!378))) c!10362))))

(declare-fun lambda!457858 () Int)

(declare-datatypes ((Unit!165485 0))(
  ( (Unit!165486) )
))
(declare-fun lt!2615137 () Unit!165485)

(declare-fun lemmaConcatPreservesForall!1941 (List!71764 List!71764 Int) Unit!165485)

(assert (=> b!7368687 (= lt!2615137 (lemmaConcatPreservesForall!1941 (exprs!8708 ct1!282) (exprs!8708 ct2!378) lambda!457858))))

(declare-fun b!7368688 () Bool)

(declare-fun res!2973593 () Bool)

(assert (=> b!7368688 (=> (not res!2973593) (not e!4411466))))

(declare-fun validRegex!9864 (Regex!19268) Bool)

(assert (=> b!7368688 (= res!2973593 (validRegex!9864 (regTwo!39048 r1!2370)))))

(declare-fun b!7368689 () Bool)

(declare-fun e!4411469 () Bool)

(declare-fun tp!2094662 () Bool)

(assert (=> b!7368689 (= e!4411469 tp!2094662)))

(declare-fun b!7368690 () Bool)

(assert (=> b!7368690 (= e!4411466 e!4411465)))

(declare-fun res!2973592 () Bool)

(assert (=> b!7368690 (=> (not res!2973592) (not e!4411465))))

(declare-fun lt!2615134 () (Set Context!16416))

(assert (=> b!7368690 (= res!2973592 (= lt!2615134 (set.union lt!2615136 (derivationStepZipperDown!3094 (regTwo!39048 r1!2370) ct1!282 c!10362))))))

(declare-fun $colon$colon!3250 (List!71764 Regex!19268) List!71764)

(assert (=> b!7368690 (= lt!2615136 (derivationStepZipperDown!3094 (regOne!39048 r1!2370) (Context!16417 ($colon$colon!3250 (exprs!8708 ct1!282) (regTwo!39048 r1!2370))) c!10362))))

(declare-fun b!7368691 () Bool)

(declare-fun e!4411472 () Bool)

(assert (=> b!7368691 (= e!4411472 e!4411468)))

(declare-fun res!2973594 () Bool)

(assert (=> b!7368691 (=> (not res!2973594) (not e!4411468))))

(assert (=> b!7368691 (= res!2973594 (set.member cWitness!61 lt!2615134))))

(assert (=> b!7368691 (= lt!2615134 (derivationStepZipperDown!3094 r1!2370 ct1!282 c!10362))))

(declare-fun b!7368692 () Bool)

(declare-fun e!4411471 () Bool)

(declare-fun tp!2094656 () Bool)

(declare-fun tp!2094658 () Bool)

(assert (=> b!7368692 (= e!4411471 (and tp!2094656 tp!2094658))))

(declare-fun res!2973591 () Bool)

(assert (=> start!719234 (=> (not res!2973591) (not e!4411472))))

(assert (=> start!719234 (= res!2973591 (validRegex!9864 r1!2370))))

(assert (=> start!719234 e!4411472))

(declare-fun tp_is_empty!48781 () Bool)

(assert (=> start!719234 tp_is_empty!48781))

(declare-fun inv!91511 (Context!16416) Bool)

(assert (=> start!719234 (and (inv!91511 cWitness!61) e!4411467)))

(assert (=> start!719234 (and (inv!91511 ct1!282) e!4411469)))

(assert (=> start!719234 e!4411471))

(assert (=> start!719234 (and (inv!91511 ct2!378) e!4411470)))

(declare-fun b!7368683 () Bool)

(declare-fun tp!2094661 () Bool)

(declare-fun tp!2094663 () Bool)

(assert (=> b!7368683 (= e!4411471 (and tp!2094661 tp!2094663))))

(declare-fun b!7368693 () Bool)

(declare-fun regexDepth!438 (Regex!19268) Int)

(assert (=> b!7368693 (= e!4411465 (>= (regexDepth!438 (regOne!39048 r1!2370)) (regexDepth!438 r1!2370)))))

(declare-fun b!7368694 () Bool)

(declare-fun tp!2094660 () Bool)

(assert (=> b!7368694 (= e!4411471 tp!2094660)))

(declare-fun b!7368695 () Bool)

(declare-fun res!2973596 () Bool)

(assert (=> b!7368695 (=> (not res!2973596) (not e!4411465))))

(assert (=> b!7368695 (= res!2973596 (validRegex!9864 (regOne!39048 r1!2370)))))

(declare-fun b!7368696 () Bool)

(assert (=> b!7368696 (= e!4411471 tp_is_empty!48781)))

(assert (= (and start!719234 res!2973591) b!7368691))

(assert (= (and b!7368691 res!2973594) b!7368687))

(assert (= (and b!7368687 res!2973598) b!7368686))

(assert (= (and b!7368686 res!2973597) b!7368688))

(assert (= (and b!7368688 res!2973593) b!7368690))

(assert (= (and b!7368690 res!2973592) b!7368685))

(assert (= (and b!7368685 res!2973595) b!7368695))

(assert (= (and b!7368695 res!2973596) b!7368693))

(assert (= start!719234 b!7368682))

(assert (= start!719234 b!7368689))

(assert (= (and start!719234 (is-ElementMatch!19268 r1!2370)) b!7368696))

(assert (= (and start!719234 (is-Concat!28113 r1!2370)) b!7368683))

(assert (= (and start!719234 (is-Star!19268 r1!2370)) b!7368694))

(assert (= (and start!719234 (is-Union!19268 r1!2370)) b!7368692))

(assert (= start!719234 b!7368684))

(declare-fun m!8023114 () Bool)

(assert (=> b!7368686 m!8023114))

(declare-fun m!8023116 () Bool)

(assert (=> b!7368695 m!8023116))

(declare-fun m!8023118 () Bool)

(assert (=> b!7368693 m!8023118))

(declare-fun m!8023120 () Bool)

(assert (=> b!7368693 m!8023120))

(declare-fun m!8023122 () Bool)

(assert (=> b!7368690 m!8023122))

(declare-fun m!8023124 () Bool)

(assert (=> b!7368690 m!8023124))

(declare-fun m!8023126 () Bool)

(assert (=> b!7368690 m!8023126))

(declare-fun m!8023128 () Bool)

(assert (=> b!7368691 m!8023128))

(declare-fun m!8023130 () Bool)

(assert (=> b!7368691 m!8023130))

(declare-fun m!8023132 () Bool)

(assert (=> b!7368688 m!8023132))

(declare-fun m!8023134 () Bool)

(assert (=> b!7368687 m!8023134))

(declare-fun m!8023136 () Bool)

(assert (=> b!7368687 m!8023136))

(declare-fun m!8023138 () Bool)

(assert (=> b!7368687 m!8023138))

(declare-fun m!8023140 () Bool)

(assert (=> start!719234 m!8023140))

(declare-fun m!8023142 () Bool)

(assert (=> start!719234 m!8023142))

(declare-fun m!8023144 () Bool)

(assert (=> start!719234 m!8023144))

(declare-fun m!8023146 () Bool)

(assert (=> start!719234 m!8023146))

(declare-fun m!8023148 () Bool)

(assert (=> b!7368685 m!8023148))

(push 1)

(assert (not b!7368688))

(assert (not b!7368692))

(assert (not b!7368693))

(assert (not b!7368684))

(assert (not start!719234))

(assert (not b!7368694))

(assert (not b!7368690))

(assert (not b!7368689))

(assert (not b!7368682))

(assert (not b!7368691))

(assert (not b!7368695))

(assert (not b!7368687))

(assert (not b!7368686))

(assert tp_is_empty!48781)

(assert (not b!7368683))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7368764 () Bool)

(declare-fun c!1369376 () Bool)

(assert (=> b!7368764 (= c!1369376 (is-Star!19268 r1!2370))))

(declare-fun e!4411510 () (Set Context!16416))

(declare-fun e!4411514 () (Set Context!16416))

(assert (=> b!7368764 (= e!4411510 e!4411514)))

(declare-fun b!7368765 () Bool)

(declare-fun e!4411511 () (Set Context!16416))

(declare-fun e!4411509 () (Set Context!16416))

(assert (=> b!7368765 (= e!4411511 e!4411509)))

(declare-fun c!1369380 () Bool)

(assert (=> b!7368765 (= c!1369380 (is-Union!19268 r1!2370))))

(declare-fun d!2283289 () Bool)

(declare-fun c!1369378 () Bool)

(assert (=> d!2283289 (= c!1369378 (and (is-ElementMatch!19268 r1!2370) (= (c!1369364 r1!2370) c!10362)))))

(assert (=> d!2283289 (= (derivationStepZipperDown!3094 r1!2370 ct1!282 c!10362) e!4411511)))

(declare-fun c!1369379 () Bool)

(declare-fun call!676386 () List!71764)

(declare-fun bm!676379 () Bool)

(declare-fun c!1369377 () Bool)

(declare-fun call!676384 () (Set Context!16416))

(assert (=> bm!676379 (= call!676384 (derivationStepZipperDown!3094 (ite c!1369380 (regOne!39049 r1!2370) (ite c!1369377 (regTwo!39048 r1!2370) (ite c!1369379 (regOne!39048 r1!2370) (reg!19597 r1!2370)))) (ite (or c!1369380 c!1369377) ct1!282 (Context!16417 call!676386)) c!10362))))

(declare-fun bm!676380 () Bool)

(declare-fun call!676387 () List!71764)

(assert (=> bm!676380 (= call!676387 ($colon$colon!3250 (exprs!8708 ct1!282) (ite (or c!1369377 c!1369379) (regTwo!39048 r1!2370) r1!2370)))))

(declare-fun b!7368766 () Bool)

(declare-fun e!4411513 () (Set Context!16416))

(declare-fun call!676389 () (Set Context!16416))

(declare-fun call!676385 () (Set Context!16416))

(assert (=> b!7368766 (= e!4411513 (set.union call!676389 call!676385))))

(declare-fun b!7368767 () Bool)

(declare-fun e!4411512 () Bool)

(assert (=> b!7368767 (= c!1369377 e!4411512)))

(declare-fun res!2973625 () Bool)

(assert (=> b!7368767 (=> (not res!2973625) (not e!4411512))))

(assert (=> b!7368767 (= res!2973625 (is-Concat!28113 r1!2370))))

(assert (=> b!7368767 (= e!4411509 e!4411513)))

(declare-fun bm!676381 () Bool)

(assert (=> bm!676381 (= call!676389 (derivationStepZipperDown!3094 (ite c!1369380 (regTwo!39049 r1!2370) (regOne!39048 r1!2370)) (ite c!1369380 ct1!282 (Context!16417 call!676387)) c!10362))))

(declare-fun b!7368768 () Bool)

(assert (=> b!7368768 (= e!4411509 (set.union call!676384 call!676389))))

(declare-fun b!7368769 () Bool)

(declare-fun call!676388 () (Set Context!16416))

(assert (=> b!7368769 (= e!4411510 call!676388)))

(declare-fun bm!676382 () Bool)

(assert (=> bm!676382 (= call!676385 call!676384)))

(declare-fun b!7368770 () Bool)

(assert (=> b!7368770 (= e!4411514 (as set.empty (Set Context!16416)))))

(declare-fun bm!676383 () Bool)

(assert (=> bm!676383 (= call!676388 call!676385)))

(declare-fun b!7368771 () Bool)

(assert (=> b!7368771 (= e!4411511 (set.insert ct1!282 (as set.empty (Set Context!16416))))))

(declare-fun b!7368772 () Bool)

(assert (=> b!7368772 (= e!4411513 e!4411510)))

(assert (=> b!7368772 (= c!1369379 (is-Concat!28113 r1!2370))))

(declare-fun bm!676384 () Bool)

(assert (=> bm!676384 (= call!676386 call!676387)))

(declare-fun b!7368773 () Bool)

(assert (=> b!7368773 (= e!4411512 (nullable!8344 (regOne!39048 r1!2370)))))

(declare-fun b!7368774 () Bool)

(assert (=> b!7368774 (= e!4411514 call!676388)))

(assert (= (and d!2283289 c!1369378) b!7368771))

(assert (= (and d!2283289 (not c!1369378)) b!7368765))

(assert (= (and b!7368765 c!1369380) b!7368768))

(assert (= (and b!7368765 (not c!1369380)) b!7368767))

(assert (= (and b!7368767 res!2973625) b!7368773))

(assert (= (and b!7368767 c!1369377) b!7368766))

(assert (= (and b!7368767 (not c!1369377)) b!7368772))

(assert (= (and b!7368772 c!1369379) b!7368769))

(assert (= (and b!7368772 (not c!1369379)) b!7368764))

(assert (= (and b!7368764 c!1369376) b!7368774))

(assert (= (and b!7368764 (not c!1369376)) b!7368770))

(assert (= (or b!7368769 b!7368774) bm!676384))

(assert (= (or b!7368769 b!7368774) bm!676383))

(assert (= (or b!7368766 bm!676383) bm!676382))

(assert (= (or b!7368766 bm!676384) bm!676380))

(assert (= (or b!7368768 b!7368766) bm!676381))

(assert (= (or b!7368768 bm!676382) bm!676379))

(assert (=> b!7368773 m!8023114))

(declare-fun m!8023186 () Bool)

(assert (=> bm!676379 m!8023186))

(declare-fun m!8023188 () Bool)

(assert (=> bm!676380 m!8023188))

(declare-fun m!8023190 () Bool)

(assert (=> b!7368771 m!8023190))

(declare-fun m!8023192 () Bool)

(assert (=> bm!676381 m!8023192))

(assert (=> b!7368691 d!2283289))

(declare-fun b!7368775 () Bool)

(declare-fun c!1369381 () Bool)

(assert (=> b!7368775 (= c!1369381 (is-Star!19268 (regTwo!39048 r1!2370)))))

(declare-fun e!4411516 () (Set Context!16416))

(declare-fun e!4411520 () (Set Context!16416))

(assert (=> b!7368775 (= e!4411516 e!4411520)))

(declare-fun b!7368776 () Bool)

(declare-fun e!4411517 () (Set Context!16416))

(declare-fun e!4411515 () (Set Context!16416))

(assert (=> b!7368776 (= e!4411517 e!4411515)))

(declare-fun c!1369385 () Bool)

(assert (=> b!7368776 (= c!1369385 (is-Union!19268 (regTwo!39048 r1!2370)))))

(declare-fun d!2283291 () Bool)

(declare-fun c!1369383 () Bool)

(assert (=> d!2283291 (= c!1369383 (and (is-ElementMatch!19268 (regTwo!39048 r1!2370)) (= (c!1369364 (regTwo!39048 r1!2370)) c!10362)))))

(assert (=> d!2283291 (= (derivationStepZipperDown!3094 (regTwo!39048 r1!2370) ct1!282 c!10362) e!4411517)))

(declare-fun call!676392 () List!71764)

(declare-fun c!1369382 () Bool)

(declare-fun bm!676385 () Bool)

(declare-fun call!676390 () (Set Context!16416))

(declare-fun c!1369384 () Bool)

(assert (=> bm!676385 (= call!676390 (derivationStepZipperDown!3094 (ite c!1369385 (regOne!39049 (regTwo!39048 r1!2370)) (ite c!1369382 (regTwo!39048 (regTwo!39048 r1!2370)) (ite c!1369384 (regOne!39048 (regTwo!39048 r1!2370)) (reg!19597 (regTwo!39048 r1!2370))))) (ite (or c!1369385 c!1369382) ct1!282 (Context!16417 call!676392)) c!10362))))

(declare-fun call!676393 () List!71764)

(declare-fun bm!676386 () Bool)

(assert (=> bm!676386 (= call!676393 ($colon$colon!3250 (exprs!8708 ct1!282) (ite (or c!1369382 c!1369384) (regTwo!39048 (regTwo!39048 r1!2370)) (regTwo!39048 r1!2370))))))

(declare-fun b!7368777 () Bool)

(declare-fun e!4411519 () (Set Context!16416))

(declare-fun call!676395 () (Set Context!16416))

(declare-fun call!676391 () (Set Context!16416))

(assert (=> b!7368777 (= e!4411519 (set.union call!676395 call!676391))))

(declare-fun b!7368778 () Bool)

(declare-fun e!4411518 () Bool)

(assert (=> b!7368778 (= c!1369382 e!4411518)))

(declare-fun res!2973626 () Bool)

(assert (=> b!7368778 (=> (not res!2973626) (not e!4411518))))

(assert (=> b!7368778 (= res!2973626 (is-Concat!28113 (regTwo!39048 r1!2370)))))

(assert (=> b!7368778 (= e!4411515 e!4411519)))

(declare-fun bm!676387 () Bool)

(assert (=> bm!676387 (= call!676395 (derivationStepZipperDown!3094 (ite c!1369385 (regTwo!39049 (regTwo!39048 r1!2370)) (regOne!39048 (regTwo!39048 r1!2370))) (ite c!1369385 ct1!282 (Context!16417 call!676393)) c!10362))))

(declare-fun b!7368779 () Bool)

(assert (=> b!7368779 (= e!4411515 (set.union call!676390 call!676395))))

(declare-fun b!7368780 () Bool)

(declare-fun call!676394 () (Set Context!16416))

(assert (=> b!7368780 (= e!4411516 call!676394)))

(declare-fun bm!676388 () Bool)

(assert (=> bm!676388 (= call!676391 call!676390)))

(declare-fun b!7368781 () Bool)

(assert (=> b!7368781 (= e!4411520 (as set.empty (Set Context!16416)))))

(declare-fun bm!676389 () Bool)

(assert (=> bm!676389 (= call!676394 call!676391)))

(declare-fun b!7368782 () Bool)

(assert (=> b!7368782 (= e!4411517 (set.insert ct1!282 (as set.empty (Set Context!16416))))))

(declare-fun b!7368783 () Bool)

(assert (=> b!7368783 (= e!4411519 e!4411516)))

(assert (=> b!7368783 (= c!1369384 (is-Concat!28113 (regTwo!39048 r1!2370)))))

(declare-fun bm!676390 () Bool)

(assert (=> bm!676390 (= call!676392 call!676393)))

(declare-fun b!7368784 () Bool)

(assert (=> b!7368784 (= e!4411518 (nullable!8344 (regOne!39048 (regTwo!39048 r1!2370))))))

(declare-fun b!7368785 () Bool)

(assert (=> b!7368785 (= e!4411520 call!676394)))

(assert (= (and d!2283291 c!1369383) b!7368782))

(assert (= (and d!2283291 (not c!1369383)) b!7368776))

(assert (= (and b!7368776 c!1369385) b!7368779))

(assert (= (and b!7368776 (not c!1369385)) b!7368778))

(assert (= (and b!7368778 res!2973626) b!7368784))

(assert (= (and b!7368778 c!1369382) b!7368777))

(assert (= (and b!7368778 (not c!1369382)) b!7368783))

(assert (= (and b!7368783 c!1369384) b!7368780))

(assert (= (and b!7368783 (not c!1369384)) b!7368775))

(assert (= (and b!7368775 c!1369381) b!7368785))

(assert (= (and b!7368775 (not c!1369381)) b!7368781))

(assert (= (or b!7368780 b!7368785) bm!676390))

(assert (= (or b!7368780 b!7368785) bm!676389))

(assert (= (or b!7368777 bm!676389) bm!676388))

(assert (= (or b!7368777 bm!676390) bm!676386))

(assert (= (or b!7368779 b!7368777) bm!676387))

(assert (= (or b!7368779 bm!676388) bm!676385))

(declare-fun m!8023194 () Bool)

(assert (=> b!7368784 m!8023194))

(declare-fun m!8023196 () Bool)

(assert (=> bm!676385 m!8023196))

(declare-fun m!8023198 () Bool)

(assert (=> bm!676386 m!8023198))

(assert (=> b!7368782 m!8023190))

(declare-fun m!8023200 () Bool)

(assert (=> bm!676387 m!8023200))

(assert (=> b!7368690 d!2283291))

(declare-fun b!7368786 () Bool)

(declare-fun c!1369386 () Bool)

(assert (=> b!7368786 (= c!1369386 (is-Star!19268 (regOne!39048 r1!2370)))))

(declare-fun e!4411522 () (Set Context!16416))

(declare-fun e!4411526 () (Set Context!16416))

(assert (=> b!7368786 (= e!4411522 e!4411526)))

(declare-fun b!7368787 () Bool)

(declare-fun e!4411523 () (Set Context!16416))

(declare-fun e!4411521 () (Set Context!16416))

(assert (=> b!7368787 (= e!4411523 e!4411521)))

(declare-fun c!1369390 () Bool)

(assert (=> b!7368787 (= c!1369390 (is-Union!19268 (regOne!39048 r1!2370)))))

(declare-fun d!2283293 () Bool)

(declare-fun c!1369388 () Bool)

(assert (=> d!2283293 (= c!1369388 (and (is-ElementMatch!19268 (regOne!39048 r1!2370)) (= (c!1369364 (regOne!39048 r1!2370)) c!10362)))))

(assert (=> d!2283293 (= (derivationStepZipperDown!3094 (regOne!39048 r1!2370) (Context!16417 ($colon$colon!3250 (exprs!8708 ct1!282) (regTwo!39048 r1!2370))) c!10362) e!4411523)))

(declare-fun c!1369387 () Bool)

(declare-fun call!676396 () (Set Context!16416))

(declare-fun c!1369389 () Bool)

(declare-fun bm!676391 () Bool)

(declare-fun call!676398 () List!71764)

(assert (=> bm!676391 (= call!676396 (derivationStepZipperDown!3094 (ite c!1369390 (regOne!39049 (regOne!39048 r1!2370)) (ite c!1369387 (regTwo!39048 (regOne!39048 r1!2370)) (ite c!1369389 (regOne!39048 (regOne!39048 r1!2370)) (reg!19597 (regOne!39048 r1!2370))))) (ite (or c!1369390 c!1369387) (Context!16417 ($colon$colon!3250 (exprs!8708 ct1!282) (regTwo!39048 r1!2370))) (Context!16417 call!676398)) c!10362))))

(declare-fun bm!676392 () Bool)

(declare-fun call!676399 () List!71764)

(assert (=> bm!676392 (= call!676399 ($colon$colon!3250 (exprs!8708 (Context!16417 ($colon$colon!3250 (exprs!8708 ct1!282) (regTwo!39048 r1!2370)))) (ite (or c!1369387 c!1369389) (regTwo!39048 (regOne!39048 r1!2370)) (regOne!39048 r1!2370))))))

(declare-fun b!7368788 () Bool)

(declare-fun e!4411525 () (Set Context!16416))

(declare-fun call!676401 () (Set Context!16416))

(declare-fun call!676397 () (Set Context!16416))

(assert (=> b!7368788 (= e!4411525 (set.union call!676401 call!676397))))

(declare-fun b!7368789 () Bool)

(declare-fun e!4411524 () Bool)

(assert (=> b!7368789 (= c!1369387 e!4411524)))

(declare-fun res!2973627 () Bool)

(assert (=> b!7368789 (=> (not res!2973627) (not e!4411524))))

(assert (=> b!7368789 (= res!2973627 (is-Concat!28113 (regOne!39048 r1!2370)))))

(assert (=> b!7368789 (= e!4411521 e!4411525)))

(declare-fun bm!676393 () Bool)

(assert (=> bm!676393 (= call!676401 (derivationStepZipperDown!3094 (ite c!1369390 (regTwo!39049 (regOne!39048 r1!2370)) (regOne!39048 (regOne!39048 r1!2370))) (ite c!1369390 (Context!16417 ($colon$colon!3250 (exprs!8708 ct1!282) (regTwo!39048 r1!2370))) (Context!16417 call!676399)) c!10362))))

(declare-fun b!7368790 () Bool)

(assert (=> b!7368790 (= e!4411521 (set.union call!676396 call!676401))))

(declare-fun b!7368791 () Bool)

(declare-fun call!676400 () (Set Context!16416))

(assert (=> b!7368791 (= e!4411522 call!676400)))

(declare-fun bm!676394 () Bool)

(assert (=> bm!676394 (= call!676397 call!676396)))

(declare-fun b!7368792 () Bool)

(assert (=> b!7368792 (= e!4411526 (as set.empty (Set Context!16416)))))

(declare-fun bm!676395 () Bool)

(assert (=> bm!676395 (= call!676400 call!676397)))

(declare-fun b!7368793 () Bool)

(assert (=> b!7368793 (= e!4411523 (set.insert (Context!16417 ($colon$colon!3250 (exprs!8708 ct1!282) (regTwo!39048 r1!2370))) (as set.empty (Set Context!16416))))))

(declare-fun b!7368794 () Bool)

(assert (=> b!7368794 (= e!4411525 e!4411522)))

(assert (=> b!7368794 (= c!1369389 (is-Concat!28113 (regOne!39048 r1!2370)))))

(declare-fun bm!676396 () Bool)

(assert (=> bm!676396 (= call!676398 call!676399)))

(declare-fun b!7368795 () Bool)

(assert (=> b!7368795 (= e!4411524 (nullable!8344 (regOne!39048 (regOne!39048 r1!2370))))))

(declare-fun b!7368796 () Bool)

(assert (=> b!7368796 (= e!4411526 call!676400)))

(assert (= (and d!2283293 c!1369388) b!7368793))

(assert (= (and d!2283293 (not c!1369388)) b!7368787))

(assert (= (and b!7368787 c!1369390) b!7368790))

(assert (= (and b!7368787 (not c!1369390)) b!7368789))

(assert (= (and b!7368789 res!2973627) b!7368795))

(assert (= (and b!7368789 c!1369387) b!7368788))

(assert (= (and b!7368789 (not c!1369387)) b!7368794))

(assert (= (and b!7368794 c!1369389) b!7368791))

(assert (= (and b!7368794 (not c!1369389)) b!7368786))

(assert (= (and b!7368786 c!1369386) b!7368796))

(assert (= (and b!7368786 (not c!1369386)) b!7368792))

(assert (= (or b!7368791 b!7368796) bm!676396))

(assert (= (or b!7368791 b!7368796) bm!676395))

(assert (= (or b!7368788 bm!676395) bm!676394))

(assert (= (or b!7368788 bm!676396) bm!676392))

(assert (= (or b!7368790 b!7368788) bm!676393))

(assert (= (or b!7368790 bm!676394) bm!676391))

(declare-fun m!8023202 () Bool)

(assert (=> b!7368795 m!8023202))

(declare-fun m!8023204 () Bool)

(assert (=> bm!676391 m!8023204))

(declare-fun m!8023206 () Bool)

(assert (=> bm!676392 m!8023206))

(declare-fun m!8023208 () Bool)

(assert (=> b!7368793 m!8023208))

(declare-fun m!8023210 () Bool)

(assert (=> bm!676393 m!8023210))

(assert (=> b!7368690 d!2283293))

(declare-fun d!2283295 () Bool)

(assert (=> d!2283295 (= ($colon$colon!3250 (exprs!8708 ct1!282) (regTwo!39048 r1!2370)) (Cons!71640 (regTwo!39048 r1!2370) (exprs!8708 ct1!282)))))

(assert (=> b!7368690 d!2283295))

(declare-fun b!7368815 () Bool)

(declare-fun e!4411546 () Bool)

(declare-fun call!676410 () Bool)

(assert (=> b!7368815 (= e!4411546 call!676410)))

(declare-fun b!7368816 () Bool)

(declare-fun res!2973639 () Bool)

(assert (=> b!7368816 (=> (not res!2973639) (not e!4411546))))

(declare-fun call!676408 () Bool)

(assert (=> b!7368816 (= res!2973639 call!676408)))

(declare-fun e!4411541 () Bool)

(assert (=> b!7368816 (= e!4411541 e!4411546)))

(declare-fun c!1369395 () Bool)

(declare-fun bm!676403 () Bool)

(declare-fun call!676409 () Bool)

(declare-fun c!1369396 () Bool)

(assert (=> bm!676403 (= call!676409 (validRegex!9864 (ite c!1369396 (reg!19597 (regOne!39048 r1!2370)) (ite c!1369395 (regOne!39049 (regOne!39048 r1!2370)) (regTwo!39048 (regOne!39048 r1!2370))))))))

(declare-fun bm!676404 () Bool)

(assert (=> bm!676404 (= call!676408 call!676409)))

(declare-fun b!7368817 () Bool)

(declare-fun e!4411542 () Bool)

(assert (=> b!7368817 (= e!4411542 call!676408)))

(declare-fun b!7368818 () Bool)

(declare-fun e!4411544 () Bool)

(assert (=> b!7368818 (= e!4411544 e!4411541)))

(assert (=> b!7368818 (= c!1369395 (is-Union!19268 (regOne!39048 r1!2370)))))

(declare-fun b!7368819 () Bool)

(declare-fun e!4411545 () Bool)

(assert (=> b!7368819 (= e!4411545 e!4411544)))

(assert (=> b!7368819 (= c!1369396 (is-Star!19268 (regOne!39048 r1!2370)))))

(declare-fun b!7368820 () Bool)

(declare-fun e!4411543 () Bool)

(assert (=> b!7368820 (= e!4411544 e!4411543)))

(declare-fun res!2973641 () Bool)

(assert (=> b!7368820 (= res!2973641 (not (nullable!8344 (reg!19597 (regOne!39048 r1!2370)))))))

(assert (=> b!7368820 (=> (not res!2973641) (not e!4411543))))

(declare-fun bm!676405 () Bool)

(assert (=> bm!676405 (= call!676410 (validRegex!9864 (ite c!1369395 (regTwo!39049 (regOne!39048 r1!2370)) (regOne!39048 (regOne!39048 r1!2370)))))))

(declare-fun d!2283297 () Bool)

(declare-fun res!2973640 () Bool)

(assert (=> d!2283297 (=> res!2973640 e!4411545)))

(assert (=> d!2283297 (= res!2973640 (is-ElementMatch!19268 (regOne!39048 r1!2370)))))

(assert (=> d!2283297 (= (validRegex!9864 (regOne!39048 r1!2370)) e!4411545)))

(declare-fun b!7368821 () Bool)

(declare-fun res!2973638 () Bool)

(declare-fun e!4411547 () Bool)

(assert (=> b!7368821 (=> res!2973638 e!4411547)))

(assert (=> b!7368821 (= res!2973638 (not (is-Concat!28113 (regOne!39048 r1!2370))))))

(assert (=> b!7368821 (= e!4411541 e!4411547)))

(declare-fun b!7368822 () Bool)

(assert (=> b!7368822 (= e!4411547 e!4411542)))

(declare-fun res!2973642 () Bool)

(assert (=> b!7368822 (=> (not res!2973642) (not e!4411542))))

(assert (=> b!7368822 (= res!2973642 call!676410)))

(declare-fun b!7368823 () Bool)

(assert (=> b!7368823 (= e!4411543 call!676409)))

(assert (= (and d!2283297 (not res!2973640)) b!7368819))

(assert (= (and b!7368819 c!1369396) b!7368820))

(assert (= (and b!7368819 (not c!1369396)) b!7368818))

(assert (= (and b!7368820 res!2973641) b!7368823))

(assert (= (and b!7368818 c!1369395) b!7368816))

(assert (= (and b!7368818 (not c!1369395)) b!7368821))

(assert (= (and b!7368816 res!2973639) b!7368815))

(assert (= (and b!7368821 (not res!2973638)) b!7368822))

(assert (= (and b!7368822 res!2973642) b!7368817))

(assert (= (or b!7368816 b!7368817) bm!676404))

(assert (= (or b!7368815 b!7368822) bm!676405))

(assert (= (or b!7368823 bm!676404) bm!676403))

(declare-fun m!8023212 () Bool)

(assert (=> bm!676403 m!8023212))

(declare-fun m!8023214 () Bool)

(assert (=> b!7368820 m!8023214))

(declare-fun m!8023216 () Bool)

(assert (=> bm!676405 m!8023216))

(assert (=> b!7368695 d!2283297))

(declare-fun b!7368824 () Bool)

(declare-fun e!4411553 () Bool)

(declare-fun call!676413 () Bool)

(assert (=> b!7368824 (= e!4411553 call!676413)))

(declare-fun b!7368825 () Bool)

(declare-fun res!2973644 () Bool)

(assert (=> b!7368825 (=> (not res!2973644) (not e!4411553))))

(declare-fun call!676411 () Bool)

(assert (=> b!7368825 (= res!2973644 call!676411)))

(declare-fun e!4411548 () Bool)

(assert (=> b!7368825 (= e!4411548 e!4411553)))

(declare-fun bm!676406 () Bool)

(declare-fun c!1369397 () Bool)

(declare-fun c!1369398 () Bool)

(declare-fun call!676412 () Bool)

(assert (=> bm!676406 (= call!676412 (validRegex!9864 (ite c!1369398 (reg!19597 (regTwo!39048 r1!2370)) (ite c!1369397 (regOne!39049 (regTwo!39048 r1!2370)) (regTwo!39048 (regTwo!39048 r1!2370))))))))

(declare-fun bm!676407 () Bool)

(assert (=> bm!676407 (= call!676411 call!676412)))

(declare-fun b!7368826 () Bool)

(declare-fun e!4411549 () Bool)

(assert (=> b!7368826 (= e!4411549 call!676411)))

(declare-fun b!7368827 () Bool)

(declare-fun e!4411551 () Bool)

(assert (=> b!7368827 (= e!4411551 e!4411548)))

(assert (=> b!7368827 (= c!1369397 (is-Union!19268 (regTwo!39048 r1!2370)))))

(declare-fun b!7368828 () Bool)

(declare-fun e!4411552 () Bool)

(assert (=> b!7368828 (= e!4411552 e!4411551)))

(assert (=> b!7368828 (= c!1369398 (is-Star!19268 (regTwo!39048 r1!2370)))))

(declare-fun b!7368829 () Bool)

(declare-fun e!4411550 () Bool)

(assert (=> b!7368829 (= e!4411551 e!4411550)))

(declare-fun res!2973646 () Bool)

(assert (=> b!7368829 (= res!2973646 (not (nullable!8344 (reg!19597 (regTwo!39048 r1!2370)))))))

(assert (=> b!7368829 (=> (not res!2973646) (not e!4411550))))

(declare-fun bm!676408 () Bool)

(assert (=> bm!676408 (= call!676413 (validRegex!9864 (ite c!1369397 (regTwo!39049 (regTwo!39048 r1!2370)) (regOne!39048 (regTwo!39048 r1!2370)))))))

(declare-fun d!2283301 () Bool)

(declare-fun res!2973645 () Bool)

(assert (=> d!2283301 (=> res!2973645 e!4411552)))

(assert (=> d!2283301 (= res!2973645 (is-ElementMatch!19268 (regTwo!39048 r1!2370)))))

(assert (=> d!2283301 (= (validRegex!9864 (regTwo!39048 r1!2370)) e!4411552)))

(declare-fun b!7368830 () Bool)

(declare-fun res!2973643 () Bool)

(declare-fun e!4411554 () Bool)

(assert (=> b!7368830 (=> res!2973643 e!4411554)))

(assert (=> b!7368830 (= res!2973643 (not (is-Concat!28113 (regTwo!39048 r1!2370))))))

(assert (=> b!7368830 (= e!4411548 e!4411554)))

(declare-fun b!7368831 () Bool)

(assert (=> b!7368831 (= e!4411554 e!4411549)))

(declare-fun res!2973647 () Bool)

(assert (=> b!7368831 (=> (not res!2973647) (not e!4411549))))

(assert (=> b!7368831 (= res!2973647 call!676413)))

(declare-fun b!7368832 () Bool)

(assert (=> b!7368832 (= e!4411550 call!676412)))

(assert (= (and d!2283301 (not res!2973645)) b!7368828))

(assert (= (and b!7368828 c!1369398) b!7368829))

(assert (= (and b!7368828 (not c!1369398)) b!7368827))

(assert (= (and b!7368829 res!2973646) b!7368832))

(assert (= (and b!7368827 c!1369397) b!7368825))

(assert (= (and b!7368827 (not c!1369397)) b!7368830))

(assert (= (and b!7368825 res!2973644) b!7368824))

(assert (= (and b!7368830 (not res!2973643)) b!7368831))

(assert (= (and b!7368831 res!2973647) b!7368826))

(assert (= (or b!7368825 b!7368826) bm!676407))

(assert (= (or b!7368824 b!7368831) bm!676408))

(assert (= (or b!7368832 bm!676407) bm!676406))

(declare-fun m!8023218 () Bool)

(assert (=> bm!676406 m!8023218))

(declare-fun m!8023220 () Bool)

(assert (=> b!7368829 m!8023220))

(declare-fun m!8023222 () Bool)

(assert (=> bm!676408 m!8023222))

(assert (=> b!7368688 d!2283301))

(declare-fun c!1369427 () Bool)

(declare-fun c!1369421 () Bool)

(declare-fun call!676442 () Int)

(declare-fun bm!676431 () Bool)

(assert (=> bm!676431 (= call!676442 (regexDepth!438 (ite c!1369421 (regOne!39049 (regOne!39048 r1!2370)) (ite c!1369427 (regOne!39048 (regOne!39048 r1!2370)) (reg!19597 (regOne!39048 r1!2370))))))))

(declare-fun b!7368883 () Bool)

(declare-fun c!1369425 () Bool)

(assert (=> b!7368883 (= c!1369425 (is-Star!19268 (regOne!39048 r1!2370)))))

(declare-fun e!4411586 () Bool)

(declare-fun e!4411592 () Bool)

(assert (=> b!7368883 (= e!4411586 e!4411592)))

(declare-fun b!7368884 () Bool)

(declare-fun c!1369426 () Bool)

(assert (=> b!7368884 (= c!1369426 (is-Union!19268 (regOne!39048 r1!2370)))))

(declare-fun e!4411585 () Int)

(declare-fun e!4411588 () Int)

(assert (=> b!7368884 (= e!4411585 e!4411588)))

(declare-fun b!7368885 () Bool)

(declare-fun e!4411583 () Bool)

(declare-fun e!4411589 () Bool)

(assert (=> b!7368885 (= e!4411583 e!4411589)))

(assert (=> b!7368885 (= c!1369421 (is-Union!19268 (regOne!39048 r1!2370)))))

(declare-fun call!676441 () Int)

(declare-fun c!1369422 () Bool)

(declare-fun bm!676432 () Bool)

(assert (=> bm!676432 (= call!676441 (regexDepth!438 (ite c!1369422 (reg!19597 (regOne!39048 r1!2370)) (ite c!1369426 (regTwo!39049 (regOne!39048 r1!2370)) (regOne!39048 (regOne!39048 r1!2370))))))))

(declare-fun bm!676433 () Bool)

(declare-fun call!676436 () Int)

(assert (=> bm!676433 (= call!676436 call!676442)))

(declare-fun b!7368887 () Bool)

(declare-fun e!4411584 () Int)

(assert (=> b!7368887 (= e!4411584 1)))

(declare-fun bm!676434 () Bool)

(declare-fun call!676437 () Int)

(assert (=> bm!676434 (= call!676437 (regexDepth!438 (ite c!1369421 (regTwo!39049 (regOne!39048 r1!2370)) (regTwo!39048 (regOne!39048 r1!2370)))))))

(declare-fun b!7368888 () Bool)

(declare-fun e!4411587 () Bool)

(declare-fun lt!2615154 () Int)

(assert (=> b!7368888 (= e!4411587 (> lt!2615154 call!676437))))

(declare-fun b!7368889 () Bool)

(declare-fun call!676440 () Int)

(assert (=> b!7368889 (= e!4411588 (+ 1 call!676440))))

(declare-fun b!7368890 () Bool)

(assert (=> b!7368890 (= e!4411588 e!4411584)))

(declare-fun c!1369423 () Bool)

(assert (=> b!7368890 (= c!1369423 (is-Concat!28113 (regOne!39048 r1!2370)))))

(declare-fun b!7368891 () Bool)

(declare-fun e!4411591 () Int)

(assert (=> b!7368891 (= e!4411591 1)))

(declare-fun b!7368892 () Bool)

(declare-fun e!4411590 () Bool)

(assert (=> b!7368892 (= e!4411590 (> lt!2615154 call!676437))))

(declare-fun b!7368893 () Bool)

(assert (=> b!7368893 (= e!4411589 e!4411586)))

(assert (=> b!7368893 (= c!1369427 (is-Concat!28113 (regOne!39048 r1!2370)))))

(declare-fun b!7368894 () Bool)

(assert (=> b!7368894 (= e!4411584 (+ 1 call!676440))))

(declare-fun b!7368895 () Bool)

(declare-fun res!2973654 () Bool)

(assert (=> b!7368895 (=> (not res!2973654) (not e!4411590))))

(assert (=> b!7368895 (= res!2973654 (> lt!2615154 call!676436))))

(assert (=> b!7368895 (= e!4411586 e!4411590)))

(declare-fun call!676439 () Int)

(declare-fun bm!676435 () Bool)

(declare-fun call!676438 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!676435 (= call!676440 (maxBigInt!0 (ite c!1369426 call!676439 call!676438) (ite c!1369426 call!676438 call!676439)))))

(declare-fun b!7368896 () Bool)

(assert (=> b!7368896 (= e!4411591 e!4411585)))

(assert (=> b!7368896 (= c!1369422 (is-Star!19268 (regOne!39048 r1!2370)))))

(declare-fun d!2283303 () Bool)

(assert (=> d!2283303 e!4411583))

(declare-fun res!2973656 () Bool)

(assert (=> d!2283303 (=> (not res!2973656) (not e!4411583))))

(assert (=> d!2283303 (= res!2973656 (> lt!2615154 0))))

(assert (=> d!2283303 (= lt!2615154 e!4411591)))

(declare-fun c!1369424 () Bool)

(assert (=> d!2283303 (= c!1369424 (is-ElementMatch!19268 (regOne!39048 r1!2370)))))

(assert (=> d!2283303 (= (regexDepth!438 (regOne!39048 r1!2370)) lt!2615154)))

(declare-fun b!7368886 () Bool)

(assert (=> b!7368886 (= e!4411592 (> lt!2615154 call!676436))))

(declare-fun b!7368897 () Bool)

(assert (=> b!7368897 (= e!4411589 e!4411587)))

(declare-fun res!2973655 () Bool)

(assert (=> b!7368897 (= res!2973655 (> lt!2615154 call!676442))))

(assert (=> b!7368897 (=> (not res!2973655) (not e!4411587))))

(declare-fun bm!676436 () Bool)

(assert (=> bm!676436 (= call!676438 call!676441)))

(declare-fun b!7368898 () Bool)

(assert (=> b!7368898 (= e!4411585 (+ 1 call!676441))))

(declare-fun b!7368899 () Bool)

(assert (=> b!7368899 (= e!4411592 (= lt!2615154 1))))

(declare-fun bm!676437 () Bool)

(assert (=> bm!676437 (= call!676439 (regexDepth!438 (ite c!1369426 (regOne!39049 (regOne!39048 r1!2370)) (regTwo!39048 (regOne!39048 r1!2370)))))))

(assert (= (and d!2283303 c!1369424) b!7368891))

(assert (= (and d!2283303 (not c!1369424)) b!7368896))

(assert (= (and b!7368896 c!1369422) b!7368898))

(assert (= (and b!7368896 (not c!1369422)) b!7368884))

(assert (= (and b!7368884 c!1369426) b!7368889))

(assert (= (and b!7368884 (not c!1369426)) b!7368890))

(assert (= (and b!7368890 c!1369423) b!7368894))

(assert (= (and b!7368890 (not c!1369423)) b!7368887))

(assert (= (or b!7368889 b!7368894) bm!676436))

(assert (= (or b!7368889 b!7368894) bm!676437))

(assert (= (or b!7368889 b!7368894) bm!676435))

(assert (= (or b!7368898 bm!676436) bm!676432))

(assert (= (and d!2283303 res!2973656) b!7368885))

(assert (= (and b!7368885 c!1369421) b!7368897))

(assert (= (and b!7368885 (not c!1369421)) b!7368893))

(assert (= (and b!7368897 res!2973655) b!7368888))

(assert (= (and b!7368893 c!1369427) b!7368895))

(assert (= (and b!7368893 (not c!1369427)) b!7368883))

(assert (= (and b!7368895 res!2973654) b!7368892))

(assert (= (and b!7368883 c!1369425) b!7368886))

(assert (= (and b!7368883 (not c!1369425)) b!7368899))

(assert (= (or b!7368895 b!7368886) bm!676433))

(assert (= (or b!7368888 b!7368892) bm!676434))

(assert (= (or b!7368897 bm!676433) bm!676431))

(declare-fun m!8023224 () Bool)

(assert (=> bm!676431 m!8023224))

(declare-fun m!8023226 () Bool)

(assert (=> bm!676437 m!8023226))

(declare-fun m!8023228 () Bool)

(assert (=> bm!676434 m!8023228))

(declare-fun m!8023230 () Bool)

(assert (=> bm!676432 m!8023230))

(declare-fun m!8023232 () Bool)

(assert (=> bm!676435 m!8023232))

(assert (=> b!7368693 d!2283303))

(declare-fun c!1369434 () Bool)

(declare-fun c!1369440 () Bool)

(declare-fun bm!676438 () Bool)

(declare-fun call!676449 () Int)

(assert (=> bm!676438 (= call!676449 (regexDepth!438 (ite c!1369434 (regOne!39049 r1!2370) (ite c!1369440 (regOne!39048 r1!2370) (reg!19597 r1!2370)))))))

(declare-fun b!7368918 () Bool)

(declare-fun c!1369438 () Bool)

(assert (=> b!7368918 (= c!1369438 (is-Star!19268 r1!2370))))

(declare-fun e!4411608 () Bool)

(declare-fun e!4411614 () Bool)

(assert (=> b!7368918 (= e!4411608 e!4411614)))

(declare-fun b!7368919 () Bool)

(declare-fun c!1369439 () Bool)

(assert (=> b!7368919 (= c!1369439 (is-Union!19268 r1!2370))))

(declare-fun e!4411607 () Int)

(declare-fun e!4411610 () Int)

(assert (=> b!7368919 (= e!4411607 e!4411610)))

(declare-fun b!7368920 () Bool)

(declare-fun e!4411605 () Bool)

(declare-fun e!4411611 () Bool)

(assert (=> b!7368920 (= e!4411605 e!4411611)))

(assert (=> b!7368920 (= c!1369434 (is-Union!19268 r1!2370))))

(declare-fun bm!676439 () Bool)

(declare-fun call!676448 () Int)

(declare-fun c!1369435 () Bool)

(assert (=> bm!676439 (= call!676448 (regexDepth!438 (ite c!1369435 (reg!19597 r1!2370) (ite c!1369439 (regTwo!39049 r1!2370) (regOne!39048 r1!2370)))))))

(declare-fun bm!676440 () Bool)

(declare-fun call!676443 () Int)

(assert (=> bm!676440 (= call!676443 call!676449)))

(declare-fun b!7368922 () Bool)

(declare-fun e!4411606 () Int)

(assert (=> b!7368922 (= e!4411606 1)))

(declare-fun bm!676441 () Bool)

(declare-fun call!676444 () Int)

(assert (=> bm!676441 (= call!676444 (regexDepth!438 (ite c!1369434 (regTwo!39049 r1!2370) (regTwo!39048 r1!2370))))))

(declare-fun b!7368923 () Bool)

(declare-fun e!4411609 () Bool)

(declare-fun lt!2615155 () Int)

(assert (=> b!7368923 (= e!4411609 (> lt!2615155 call!676444))))

(declare-fun b!7368924 () Bool)

(declare-fun call!676447 () Int)

(assert (=> b!7368924 (= e!4411610 (+ 1 call!676447))))

(declare-fun b!7368925 () Bool)

(assert (=> b!7368925 (= e!4411610 e!4411606)))

(declare-fun c!1369436 () Bool)

(assert (=> b!7368925 (= c!1369436 (is-Concat!28113 r1!2370))))

(declare-fun b!7368926 () Bool)

(declare-fun e!4411613 () Int)

(assert (=> b!7368926 (= e!4411613 1)))

(declare-fun b!7368927 () Bool)

(declare-fun e!4411612 () Bool)

(assert (=> b!7368927 (= e!4411612 (> lt!2615155 call!676444))))

(declare-fun b!7368928 () Bool)

(assert (=> b!7368928 (= e!4411611 e!4411608)))

(assert (=> b!7368928 (= c!1369440 (is-Concat!28113 r1!2370))))

(declare-fun b!7368929 () Bool)

(assert (=> b!7368929 (= e!4411606 (+ 1 call!676447))))

(declare-fun b!7368930 () Bool)

(declare-fun res!2973663 () Bool)

(assert (=> b!7368930 (=> (not res!2973663) (not e!4411612))))

(assert (=> b!7368930 (= res!2973663 (> lt!2615155 call!676443))))

(assert (=> b!7368930 (= e!4411608 e!4411612)))

(declare-fun call!676445 () Int)

(declare-fun bm!676442 () Bool)

(declare-fun call!676446 () Int)

(assert (=> bm!676442 (= call!676447 (maxBigInt!0 (ite c!1369439 call!676446 call!676445) (ite c!1369439 call!676445 call!676446)))))

(declare-fun b!7368931 () Bool)

(assert (=> b!7368931 (= e!4411613 e!4411607)))

(assert (=> b!7368931 (= c!1369435 (is-Star!19268 r1!2370))))

(declare-fun d!2283305 () Bool)

(assert (=> d!2283305 e!4411605))

(declare-fun res!2973665 () Bool)

(assert (=> d!2283305 (=> (not res!2973665) (not e!4411605))))

(assert (=> d!2283305 (= res!2973665 (> lt!2615155 0))))

(assert (=> d!2283305 (= lt!2615155 e!4411613)))

(declare-fun c!1369437 () Bool)

(assert (=> d!2283305 (= c!1369437 (is-ElementMatch!19268 r1!2370))))

(assert (=> d!2283305 (= (regexDepth!438 r1!2370) lt!2615155)))

(declare-fun b!7368921 () Bool)

(assert (=> b!7368921 (= e!4411614 (> lt!2615155 call!676443))))

(declare-fun b!7368932 () Bool)

(assert (=> b!7368932 (= e!4411611 e!4411609)))

(declare-fun res!2973664 () Bool)

(assert (=> b!7368932 (= res!2973664 (> lt!2615155 call!676449))))

(assert (=> b!7368932 (=> (not res!2973664) (not e!4411609))))

(declare-fun bm!676443 () Bool)

(assert (=> bm!676443 (= call!676445 call!676448)))

(declare-fun b!7368933 () Bool)

(assert (=> b!7368933 (= e!4411607 (+ 1 call!676448))))

(declare-fun b!7368934 () Bool)

(assert (=> b!7368934 (= e!4411614 (= lt!2615155 1))))

(declare-fun bm!676444 () Bool)

(assert (=> bm!676444 (= call!676446 (regexDepth!438 (ite c!1369439 (regOne!39049 r1!2370) (regTwo!39048 r1!2370))))))

(assert (= (and d!2283305 c!1369437) b!7368926))

(assert (= (and d!2283305 (not c!1369437)) b!7368931))

(assert (= (and b!7368931 c!1369435) b!7368933))

(assert (= (and b!7368931 (not c!1369435)) b!7368919))

(assert (= (and b!7368919 c!1369439) b!7368924))

(assert (= (and b!7368919 (not c!1369439)) b!7368925))

(assert (= (and b!7368925 c!1369436) b!7368929))

(assert (= (and b!7368925 (not c!1369436)) b!7368922))

(assert (= (or b!7368924 b!7368929) bm!676443))

(assert (= (or b!7368924 b!7368929) bm!676444))

(assert (= (or b!7368924 b!7368929) bm!676442))

(assert (= (or b!7368933 bm!676443) bm!676439))

(assert (= (and d!2283305 res!2973665) b!7368920))

(assert (= (and b!7368920 c!1369434) b!7368932))

(assert (= (and b!7368920 (not c!1369434)) b!7368928))

(assert (= (and b!7368932 res!2973664) b!7368923))

(assert (= (and b!7368928 c!1369440) b!7368930))

(assert (= (and b!7368928 (not c!1369440)) b!7368918))

(assert (= (and b!7368930 res!2973663) b!7368927))

(assert (= (and b!7368918 c!1369438) b!7368921))

(assert (= (and b!7368918 (not c!1369438)) b!7368934))

(assert (= (or b!7368930 b!7368921) bm!676440))

(assert (= (or b!7368923 b!7368927) bm!676441))

(assert (= (or b!7368932 bm!676440) bm!676438))

(declare-fun m!8023234 () Bool)

(assert (=> bm!676438 m!8023234))

(declare-fun m!8023236 () Bool)

(assert (=> bm!676444 m!8023236))

(declare-fun m!8023238 () Bool)

(assert (=> bm!676441 m!8023238))

(declare-fun m!8023240 () Bool)

(assert (=> bm!676439 m!8023240))

(declare-fun m!8023242 () Bool)

(assert (=> bm!676442 m!8023242))

(assert (=> b!7368693 d!2283305))

(declare-fun b!7368935 () Bool)

(declare-fun c!1369441 () Bool)

(assert (=> b!7368935 (= c!1369441 (is-Star!19268 r1!2370))))

(declare-fun e!4411616 () (Set Context!16416))

(declare-fun e!4411620 () (Set Context!16416))

(assert (=> b!7368935 (= e!4411616 e!4411620)))

(declare-fun b!7368936 () Bool)

(declare-fun e!4411617 () (Set Context!16416))

(declare-fun e!4411615 () (Set Context!16416))

(assert (=> b!7368936 (= e!4411617 e!4411615)))

(declare-fun c!1369445 () Bool)

(assert (=> b!7368936 (= c!1369445 (is-Union!19268 r1!2370))))

(declare-fun d!2283307 () Bool)

(declare-fun c!1369443 () Bool)

(assert (=> d!2283307 (= c!1369443 (and (is-ElementMatch!19268 r1!2370) (= (c!1369364 r1!2370) c!10362)))))

(assert (=> d!2283307 (= (derivationStepZipperDown!3094 r1!2370 (Context!16417 (++!17084 (exprs!8708 ct1!282) (exprs!8708 ct2!378))) c!10362) e!4411617)))

(declare-fun call!676452 () (Set Context!16416))

(declare-fun call!676454 () List!71764)

(declare-fun c!1369444 () Bool)

(declare-fun c!1369442 () Bool)

(declare-fun bm!676447 () Bool)

(assert (=> bm!676447 (= call!676452 (derivationStepZipperDown!3094 (ite c!1369445 (regOne!39049 r1!2370) (ite c!1369442 (regTwo!39048 r1!2370) (ite c!1369444 (regOne!39048 r1!2370) (reg!19597 r1!2370)))) (ite (or c!1369445 c!1369442) (Context!16417 (++!17084 (exprs!8708 ct1!282) (exprs!8708 ct2!378))) (Context!16417 call!676454)) c!10362))))

(declare-fun bm!676448 () Bool)

(declare-fun call!676455 () List!71764)

(assert (=> bm!676448 (= call!676455 ($colon$colon!3250 (exprs!8708 (Context!16417 (++!17084 (exprs!8708 ct1!282) (exprs!8708 ct2!378)))) (ite (or c!1369442 c!1369444) (regTwo!39048 r1!2370) r1!2370)))))

(declare-fun b!7368937 () Bool)

(declare-fun e!4411619 () (Set Context!16416))

(declare-fun call!676457 () (Set Context!16416))

(declare-fun call!676453 () (Set Context!16416))

(assert (=> b!7368937 (= e!4411619 (set.union call!676457 call!676453))))

(declare-fun b!7368938 () Bool)

(declare-fun e!4411618 () Bool)

(assert (=> b!7368938 (= c!1369442 e!4411618)))

(declare-fun res!2973666 () Bool)

(assert (=> b!7368938 (=> (not res!2973666) (not e!4411618))))

(assert (=> b!7368938 (= res!2973666 (is-Concat!28113 r1!2370))))

(assert (=> b!7368938 (= e!4411615 e!4411619)))

(declare-fun bm!676449 () Bool)

(assert (=> bm!676449 (= call!676457 (derivationStepZipperDown!3094 (ite c!1369445 (regTwo!39049 r1!2370) (regOne!39048 r1!2370)) (ite c!1369445 (Context!16417 (++!17084 (exprs!8708 ct1!282) (exprs!8708 ct2!378))) (Context!16417 call!676455)) c!10362))))

(declare-fun b!7368939 () Bool)

(assert (=> b!7368939 (= e!4411615 (set.union call!676452 call!676457))))

(declare-fun b!7368940 () Bool)

(declare-fun call!676456 () (Set Context!16416))

(assert (=> b!7368940 (= e!4411616 call!676456)))

(declare-fun bm!676450 () Bool)

(assert (=> bm!676450 (= call!676453 call!676452)))

(declare-fun b!7368941 () Bool)

(assert (=> b!7368941 (= e!4411620 (as set.empty (Set Context!16416)))))

(declare-fun bm!676451 () Bool)

(assert (=> bm!676451 (= call!676456 call!676453)))

(declare-fun b!7368942 () Bool)

(assert (=> b!7368942 (= e!4411617 (set.insert (Context!16417 (++!17084 (exprs!8708 ct1!282) (exprs!8708 ct2!378))) (as set.empty (Set Context!16416))))))

(declare-fun b!7368943 () Bool)

(assert (=> b!7368943 (= e!4411619 e!4411616)))

(assert (=> b!7368943 (= c!1369444 (is-Concat!28113 r1!2370))))

(declare-fun bm!676452 () Bool)

(assert (=> bm!676452 (= call!676454 call!676455)))

(declare-fun b!7368944 () Bool)

(assert (=> b!7368944 (= e!4411618 (nullable!8344 (regOne!39048 r1!2370)))))

(declare-fun b!7368945 () Bool)

(assert (=> b!7368945 (= e!4411620 call!676456)))

(assert (= (and d!2283307 c!1369443) b!7368942))

(assert (= (and d!2283307 (not c!1369443)) b!7368936))

(assert (= (and b!7368936 c!1369445) b!7368939))

(assert (= (and b!7368936 (not c!1369445)) b!7368938))

(assert (= (and b!7368938 res!2973666) b!7368944))

(assert (= (and b!7368938 c!1369442) b!7368937))

(assert (= (and b!7368938 (not c!1369442)) b!7368943))

(assert (= (and b!7368943 c!1369444) b!7368940))

(assert (= (and b!7368943 (not c!1369444)) b!7368935))

(assert (= (and b!7368935 c!1369441) b!7368945))

(assert (= (and b!7368935 (not c!1369441)) b!7368941))

(assert (= (or b!7368940 b!7368945) bm!676452))

(assert (= (or b!7368940 b!7368945) bm!676451))

(assert (= (or b!7368937 bm!676451) bm!676450))

(assert (= (or b!7368937 bm!676452) bm!676448))

(assert (= (or b!7368939 b!7368937) bm!676449))

(assert (= (or b!7368939 bm!676450) bm!676447))

(assert (=> b!7368944 m!8023114))

(declare-fun m!8023244 () Bool)

(assert (=> bm!676447 m!8023244))

(declare-fun m!8023246 () Bool)

(assert (=> bm!676448 m!8023246))

(declare-fun m!8023248 () Bool)

(assert (=> b!7368942 m!8023248))

(declare-fun m!8023250 () Bool)

(assert (=> bm!676449 m!8023250))

(assert (=> b!7368687 d!2283307))

(declare-fun b!7368955 () Bool)

(declare-fun e!4411626 () List!71764)

(assert (=> b!7368955 (= e!4411626 (Cons!71640 (h!78088 (exprs!8708 ct1!282)) (++!17084 (t!386219 (exprs!8708 ct1!282)) (exprs!8708 ct2!378))))))

(declare-fun lt!2615158 () List!71764)

(declare-fun b!7368957 () Bool)

(declare-fun e!4411625 () Bool)

(assert (=> b!7368957 (= e!4411625 (or (not (= (exprs!8708 ct2!378) Nil!71640)) (= lt!2615158 (exprs!8708 ct1!282))))))

(declare-fun d!2283309 () Bool)

(assert (=> d!2283309 e!4411625))

(declare-fun res!2973671 () Bool)

(assert (=> d!2283309 (=> (not res!2973671) (not e!4411625))))

(declare-fun content!15149 (List!71764) (Set Regex!19268))

(assert (=> d!2283309 (= res!2973671 (= (content!15149 lt!2615158) (set.union (content!15149 (exprs!8708 ct1!282)) (content!15149 (exprs!8708 ct2!378)))))))

(assert (=> d!2283309 (= lt!2615158 e!4411626)))

(declare-fun c!1369448 () Bool)

(assert (=> d!2283309 (= c!1369448 (is-Nil!71640 (exprs!8708 ct1!282)))))

(assert (=> d!2283309 (= (++!17084 (exprs!8708 ct1!282) (exprs!8708 ct2!378)) lt!2615158)))

(declare-fun b!7368954 () Bool)

(assert (=> b!7368954 (= e!4411626 (exprs!8708 ct2!378))))

(declare-fun b!7368956 () Bool)

(declare-fun res!2973672 () Bool)

(assert (=> b!7368956 (=> (not res!2973672) (not e!4411625))))

(declare-fun size!42127 (List!71764) Int)

(assert (=> b!7368956 (= res!2973672 (= (size!42127 lt!2615158) (+ (size!42127 (exprs!8708 ct1!282)) (size!42127 (exprs!8708 ct2!378)))))))

(assert (= (and d!2283309 c!1369448) b!7368954))

(assert (= (and d!2283309 (not c!1369448)) b!7368955))

(assert (= (and d!2283309 res!2973671) b!7368956))

(assert (= (and b!7368956 res!2973672) b!7368957))

(declare-fun m!8023252 () Bool)

(assert (=> b!7368955 m!8023252))

(declare-fun m!8023254 () Bool)

(assert (=> d!2283309 m!8023254))

(declare-fun m!8023256 () Bool)

(assert (=> d!2283309 m!8023256))

(declare-fun m!8023258 () Bool)

(assert (=> d!2283309 m!8023258))

(declare-fun m!8023260 () Bool)

(assert (=> b!7368956 m!8023260))

(declare-fun m!8023262 () Bool)

(assert (=> b!7368956 m!8023262))

(declare-fun m!8023264 () Bool)

(assert (=> b!7368956 m!8023264))

(assert (=> b!7368687 d!2283309))

(declare-fun d!2283311 () Bool)

(declare-fun forall!18074 (List!71764 Int) Bool)

(assert (=> d!2283311 (forall!18074 (++!17084 (exprs!8708 ct1!282) (exprs!8708 ct2!378)) lambda!457858)))

(declare-fun lt!2615161 () Unit!165485)

(declare-fun choose!57292 (List!71764 List!71764 Int) Unit!165485)

(assert (=> d!2283311 (= lt!2615161 (choose!57292 (exprs!8708 ct1!282) (exprs!8708 ct2!378) lambda!457858))))

(assert (=> d!2283311 (forall!18074 (exprs!8708 ct1!282) lambda!457858)))

(assert (=> d!2283311 (= (lemmaConcatPreservesForall!1941 (exprs!8708 ct1!282) (exprs!8708 ct2!378) lambda!457858) lt!2615161)))

(declare-fun bs!1920708 () Bool)

(assert (= bs!1920708 d!2283311))

(assert (=> bs!1920708 m!8023134))

(assert (=> bs!1920708 m!8023134))

(declare-fun m!8023266 () Bool)

(assert (=> bs!1920708 m!8023266))

(declare-fun m!8023268 () Bool)

(assert (=> bs!1920708 m!8023268))

(declare-fun m!8023270 () Bool)

(assert (=> bs!1920708 m!8023270))

(assert (=> b!7368687 d!2283311))

(declare-fun b!7368958 () Bool)

(declare-fun e!4411632 () Bool)

(declare-fun call!676464 () Bool)

(assert (=> b!7368958 (= e!4411632 call!676464)))

(declare-fun b!7368959 () Bool)

(declare-fun res!2973674 () Bool)

(assert (=> b!7368959 (=> (not res!2973674) (not e!4411632))))

(declare-fun call!676462 () Bool)

(assert (=> b!7368959 (= res!2973674 call!676462)))

(declare-fun e!4411627 () Bool)

(assert (=> b!7368959 (= e!4411627 e!4411632)))

(declare-fun call!676463 () Bool)

(declare-fun bm!676457 () Bool)

(declare-fun c!1369449 () Bool)

(declare-fun c!1369450 () Bool)

(assert (=> bm!676457 (= call!676463 (validRegex!9864 (ite c!1369450 (reg!19597 r1!2370) (ite c!1369449 (regOne!39049 r1!2370) (regTwo!39048 r1!2370)))))))

(declare-fun bm!676458 () Bool)

(assert (=> bm!676458 (= call!676462 call!676463)))

(declare-fun b!7368960 () Bool)

(declare-fun e!4411628 () Bool)

(assert (=> b!7368960 (= e!4411628 call!676462)))

(declare-fun b!7368961 () Bool)

(declare-fun e!4411630 () Bool)

(assert (=> b!7368961 (= e!4411630 e!4411627)))

(assert (=> b!7368961 (= c!1369449 (is-Union!19268 r1!2370))))

(declare-fun b!7368962 () Bool)

(declare-fun e!4411631 () Bool)

(assert (=> b!7368962 (= e!4411631 e!4411630)))

(assert (=> b!7368962 (= c!1369450 (is-Star!19268 r1!2370))))

(declare-fun b!7368963 () Bool)

(declare-fun e!4411629 () Bool)

(assert (=> b!7368963 (= e!4411630 e!4411629)))

(declare-fun res!2973676 () Bool)

(assert (=> b!7368963 (= res!2973676 (not (nullable!8344 (reg!19597 r1!2370))))))

(assert (=> b!7368963 (=> (not res!2973676) (not e!4411629))))

(declare-fun bm!676459 () Bool)

(assert (=> bm!676459 (= call!676464 (validRegex!9864 (ite c!1369449 (regTwo!39049 r1!2370) (regOne!39048 r1!2370))))))

(declare-fun d!2283313 () Bool)

(declare-fun res!2973675 () Bool)

(assert (=> d!2283313 (=> res!2973675 e!4411631)))

(assert (=> d!2283313 (= res!2973675 (is-ElementMatch!19268 r1!2370))))

(assert (=> d!2283313 (= (validRegex!9864 r1!2370) e!4411631)))

(declare-fun b!7368964 () Bool)

(declare-fun res!2973673 () Bool)

(declare-fun e!4411633 () Bool)

(assert (=> b!7368964 (=> res!2973673 e!4411633)))

(assert (=> b!7368964 (= res!2973673 (not (is-Concat!28113 r1!2370)))))

(assert (=> b!7368964 (= e!4411627 e!4411633)))

(declare-fun b!7368965 () Bool)

(assert (=> b!7368965 (= e!4411633 e!4411628)))

(declare-fun res!2973677 () Bool)

(assert (=> b!7368965 (=> (not res!2973677) (not e!4411628))))

(assert (=> b!7368965 (= res!2973677 call!676464)))

(declare-fun b!7368966 () Bool)

(assert (=> b!7368966 (= e!4411629 call!676463)))

(assert (= (and d!2283313 (not res!2973675)) b!7368962))

(assert (= (and b!7368962 c!1369450) b!7368963))

(assert (= (and b!7368962 (not c!1369450)) b!7368961))

(assert (= (and b!7368963 res!2973676) b!7368966))

(assert (= (and b!7368961 c!1369449) b!7368959))

(assert (= (and b!7368961 (not c!1369449)) b!7368964))

(assert (= (and b!7368959 res!2973674) b!7368958))

(assert (= (and b!7368964 (not res!2973673)) b!7368965))

(assert (= (and b!7368965 res!2973677) b!7368960))

(assert (= (or b!7368959 b!7368960) bm!676458))

(assert (= (or b!7368958 b!7368965) bm!676459))

(assert (= (or b!7368966 bm!676458) bm!676457))

(declare-fun m!8023272 () Bool)

(assert (=> bm!676457 m!8023272))

(declare-fun m!8023274 () Bool)

(assert (=> b!7368963 m!8023274))

(declare-fun m!8023276 () Bool)

(assert (=> bm!676459 m!8023276))

(assert (=> start!719234 d!2283313))

(declare-fun bs!1920709 () Bool)

(declare-fun d!2283315 () Bool)

(assert (= bs!1920709 (and d!2283315 b!7368687)))

(declare-fun lambda!457864 () Int)

(assert (=> bs!1920709 (= lambda!457864 lambda!457858)))

(assert (=> d!2283315 (= (inv!91511 cWitness!61) (forall!18074 (exprs!8708 cWitness!61) lambda!457864))))

(declare-fun bs!1920710 () Bool)

(assert (= bs!1920710 d!2283315))

(declare-fun m!8023278 () Bool)

(assert (=> bs!1920710 m!8023278))

(assert (=> start!719234 d!2283315))

(declare-fun bs!1920711 () Bool)

(declare-fun d!2283317 () Bool)

(assert (= bs!1920711 (and d!2283317 b!7368687)))

(declare-fun lambda!457865 () Int)

(assert (=> bs!1920711 (= lambda!457865 lambda!457858)))

(declare-fun bs!1920712 () Bool)

(assert (= bs!1920712 (and d!2283317 d!2283315)))

(assert (=> bs!1920712 (= lambda!457865 lambda!457864)))

(assert (=> d!2283317 (= (inv!91511 ct1!282) (forall!18074 (exprs!8708 ct1!282) lambda!457865))))

(declare-fun bs!1920713 () Bool)

(assert (= bs!1920713 d!2283317))

(declare-fun m!8023280 () Bool)

(assert (=> bs!1920713 m!8023280))

(assert (=> start!719234 d!2283317))

(declare-fun bs!1920714 () Bool)

(declare-fun d!2283319 () Bool)

(assert (= bs!1920714 (and d!2283319 b!7368687)))

(declare-fun lambda!457866 () Int)

(assert (=> bs!1920714 (= lambda!457866 lambda!457858)))

(declare-fun bs!1920715 () Bool)

(assert (= bs!1920715 (and d!2283319 d!2283315)))

(assert (=> bs!1920715 (= lambda!457866 lambda!457864)))

(declare-fun bs!1920716 () Bool)

(assert (= bs!1920716 (and d!2283319 d!2283317)))

(assert (=> bs!1920716 (= lambda!457866 lambda!457865)))

(assert (=> d!2283319 (= (inv!91511 ct2!378) (forall!18074 (exprs!8708 ct2!378) lambda!457866))))

(declare-fun bs!1920717 () Bool)

(assert (= bs!1920717 d!2283319))

(declare-fun m!8023282 () Bool)

(assert (=> bs!1920717 m!8023282))

(assert (=> start!719234 d!2283319))

(declare-fun d!2283321 () Bool)

(declare-fun nullableFct!3333 (Regex!19268) Bool)

(assert (=> d!2283321 (= (nullable!8344 (regOne!39048 r1!2370)) (nullableFct!3333 (regOne!39048 r1!2370)))))

(declare-fun bs!1920718 () Bool)

(assert (= bs!1920718 d!2283321))

(declare-fun m!8023284 () Bool)

(assert (=> bs!1920718 m!8023284))

(assert (=> b!7368686 d!2283321))

(declare-fun b!7368988 () Bool)

(declare-fun e!4411646 () Bool)

(declare-fun tp!2094692 () Bool)

(declare-fun tp!2094693 () Bool)

(assert (=> b!7368988 (= e!4411646 (and tp!2094692 tp!2094693))))

(assert (=> b!7368684 (= tp!2094659 e!4411646)))

(assert (= (and b!7368684 (is-Cons!71640 (exprs!8708 ct2!378))) b!7368988))

(declare-fun b!7368989 () Bool)

(declare-fun e!4411647 () Bool)

(declare-fun tp!2094694 () Bool)

(declare-fun tp!2094695 () Bool)

(assert (=> b!7368989 (= e!4411647 (and tp!2094694 tp!2094695))))

(assert (=> b!7368689 (= tp!2094662 e!4411647)))

(assert (= (and b!7368689 (is-Cons!71640 (exprs!8708 ct1!282))) b!7368989))

(declare-fun b!7369000 () Bool)

(declare-fun e!4411650 () Bool)

(assert (=> b!7369000 (= e!4411650 tp_is_empty!48781)))

(declare-fun b!7369001 () Bool)

(declare-fun tp!2094706 () Bool)

(declare-fun tp!2094709 () Bool)

(assert (=> b!7369001 (= e!4411650 (and tp!2094706 tp!2094709))))

(assert (=> b!7368694 (= tp!2094660 e!4411650)))

(declare-fun b!7369002 () Bool)

(declare-fun tp!2094710 () Bool)

(assert (=> b!7369002 (= e!4411650 tp!2094710)))

(declare-fun b!7369003 () Bool)

(declare-fun tp!2094708 () Bool)

(declare-fun tp!2094707 () Bool)

(assert (=> b!7369003 (= e!4411650 (and tp!2094708 tp!2094707))))

(assert (= (and b!7368694 (is-ElementMatch!19268 (reg!19597 r1!2370))) b!7369000))

(assert (= (and b!7368694 (is-Concat!28113 (reg!19597 r1!2370))) b!7369001))

(assert (= (and b!7368694 (is-Star!19268 (reg!19597 r1!2370))) b!7369002))

(assert (= (and b!7368694 (is-Union!19268 (reg!19597 r1!2370))) b!7369003))

(declare-fun b!7369004 () Bool)

(declare-fun e!4411651 () Bool)

(assert (=> b!7369004 (= e!4411651 tp_is_empty!48781)))

(declare-fun b!7369005 () Bool)

(declare-fun tp!2094711 () Bool)

(declare-fun tp!2094714 () Bool)

(assert (=> b!7369005 (= e!4411651 (and tp!2094711 tp!2094714))))

(assert (=> b!7368683 (= tp!2094661 e!4411651)))

(declare-fun b!7369006 () Bool)

(declare-fun tp!2094715 () Bool)

(assert (=> b!7369006 (= e!4411651 tp!2094715)))

(declare-fun b!7369007 () Bool)

(declare-fun tp!2094713 () Bool)

(declare-fun tp!2094712 () Bool)

(assert (=> b!7369007 (= e!4411651 (and tp!2094713 tp!2094712))))

(assert (= (and b!7368683 (is-ElementMatch!19268 (regOne!39048 r1!2370))) b!7369004))

(assert (= (and b!7368683 (is-Concat!28113 (regOne!39048 r1!2370))) b!7369005))

(assert (= (and b!7368683 (is-Star!19268 (regOne!39048 r1!2370))) b!7369006))

(assert (= (and b!7368683 (is-Union!19268 (regOne!39048 r1!2370))) b!7369007))

(declare-fun b!7369008 () Bool)

(declare-fun e!4411652 () Bool)

(assert (=> b!7369008 (= e!4411652 tp_is_empty!48781)))

(declare-fun b!7369009 () Bool)

(declare-fun tp!2094716 () Bool)

(declare-fun tp!2094719 () Bool)

(assert (=> b!7369009 (= e!4411652 (and tp!2094716 tp!2094719))))

(assert (=> b!7368683 (= tp!2094663 e!4411652)))

(declare-fun b!7369010 () Bool)

(declare-fun tp!2094720 () Bool)

(assert (=> b!7369010 (= e!4411652 tp!2094720)))

(declare-fun b!7369011 () Bool)

(declare-fun tp!2094718 () Bool)

(declare-fun tp!2094717 () Bool)

(assert (=> b!7369011 (= e!4411652 (and tp!2094718 tp!2094717))))

(assert (= (and b!7368683 (is-ElementMatch!19268 (regTwo!39048 r1!2370))) b!7369008))

(assert (= (and b!7368683 (is-Concat!28113 (regTwo!39048 r1!2370))) b!7369009))

(assert (= (and b!7368683 (is-Star!19268 (regTwo!39048 r1!2370))) b!7369010))

(assert (= (and b!7368683 (is-Union!19268 (regTwo!39048 r1!2370))) b!7369011))

(declare-fun b!7369012 () Bool)

(declare-fun e!4411653 () Bool)

(declare-fun tp!2094721 () Bool)

(declare-fun tp!2094722 () Bool)

(assert (=> b!7369012 (= e!4411653 (and tp!2094721 tp!2094722))))

(assert (=> b!7368682 (= tp!2094657 e!4411653)))

(assert (= (and b!7368682 (is-Cons!71640 (exprs!8708 cWitness!61))) b!7369012))

(declare-fun b!7369013 () Bool)

(declare-fun e!4411654 () Bool)

(assert (=> b!7369013 (= e!4411654 tp_is_empty!48781)))

(declare-fun b!7369014 () Bool)

(declare-fun tp!2094723 () Bool)

(declare-fun tp!2094726 () Bool)

(assert (=> b!7369014 (= e!4411654 (and tp!2094723 tp!2094726))))

(assert (=> b!7368692 (= tp!2094656 e!4411654)))

(declare-fun b!7369015 () Bool)

(declare-fun tp!2094727 () Bool)

(assert (=> b!7369015 (= e!4411654 tp!2094727)))

(declare-fun b!7369016 () Bool)

(declare-fun tp!2094725 () Bool)

(declare-fun tp!2094724 () Bool)

(assert (=> b!7369016 (= e!4411654 (and tp!2094725 tp!2094724))))

(assert (= (and b!7368692 (is-ElementMatch!19268 (regOne!39049 r1!2370))) b!7369013))

(assert (= (and b!7368692 (is-Concat!28113 (regOne!39049 r1!2370))) b!7369014))

(assert (= (and b!7368692 (is-Star!19268 (regOne!39049 r1!2370))) b!7369015))

(assert (= (and b!7368692 (is-Union!19268 (regOne!39049 r1!2370))) b!7369016))

(declare-fun b!7369017 () Bool)

(declare-fun e!4411655 () Bool)

(assert (=> b!7369017 (= e!4411655 tp_is_empty!48781)))

(declare-fun b!7369018 () Bool)

(declare-fun tp!2094728 () Bool)

(declare-fun tp!2094731 () Bool)

(assert (=> b!7369018 (= e!4411655 (and tp!2094728 tp!2094731))))

(assert (=> b!7368692 (= tp!2094658 e!4411655)))

(declare-fun b!7369019 () Bool)

(declare-fun tp!2094732 () Bool)

(assert (=> b!7369019 (= e!4411655 tp!2094732)))

(declare-fun b!7369020 () Bool)

(declare-fun tp!2094730 () Bool)

(declare-fun tp!2094729 () Bool)

(assert (=> b!7369020 (= e!4411655 (and tp!2094730 tp!2094729))))

(assert (= (and b!7368692 (is-ElementMatch!19268 (regTwo!39049 r1!2370))) b!7369017))

(assert (= (and b!7368692 (is-Concat!28113 (regTwo!39049 r1!2370))) b!7369018))

(assert (= (and b!7368692 (is-Star!19268 (regTwo!39049 r1!2370))) b!7369019))

(assert (= (and b!7368692 (is-Union!19268 (regTwo!39049 r1!2370))) b!7369020))

(push 1)

(assert (not bm!676447))

(assert (not bm!676442))

(assert (not bm!676459))

(assert (not b!7368944))

(assert (not b!7369012))

(assert (not bm!676403))

(assert (not bm!676449))

(assert (not b!7369009))

(assert (not b!7368955))

(assert (not bm!676380))

(assert (not b!7368829))

(assert (not bm!676379))

(assert (not bm!676385))

(assert (not bm!676434))

(assert (not b!7369019))

(assert (not bm!676439))

(assert (not b!7369001))

(assert (not d!2283311))

(assert (not b!7368773))

(assert (not bm!676381))

(assert (not b!7368989))

(assert (not bm!676437))

(assert (not b!7368820))

(assert (not bm!676444))

(assert (not d!2283315))

(assert (not bm!676448))

(assert (not b!7368963))

(assert (not bm!676431))

(assert (not b!7368988))

(assert (not b!7369015))

(assert (not bm!676441))

(assert (not bm!676432))

(assert (not b!7369020))

(assert (not b!7368784))

(assert (not bm!676391))

(assert (not b!7368795))

(assert (not b!7369011))

(assert (not bm!676457))

(assert (not b!7369010))

(assert (not bm!676406))

(assert (not b!7369007))

(assert (not b!7369006))

(assert (not bm!676435))

(assert (not bm!676387))

(assert (not bm!676438))

(assert (not b!7369003))

(assert (not b!7368956))

(assert (not b!7369018))

(assert (not bm!676392))

(assert (not b!7369002))

(assert (not bm!676405))

(assert (not d!2283317))

(assert (not bm!676393))

(assert (not d!2283319))

(assert tp_is_empty!48781)

(assert (not b!7369014))

(assert (not bm!676386))

(assert (not d!2283321))

(assert (not d!2283309))

(assert (not b!7369005))

(assert (not b!7369016))

(assert (not bm!676408))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

