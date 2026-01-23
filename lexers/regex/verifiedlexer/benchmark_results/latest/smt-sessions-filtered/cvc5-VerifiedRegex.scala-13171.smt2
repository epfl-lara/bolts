; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718758 () Bool)

(assert start!718758)

(declare-fun b!7361382 () Bool)

(declare-fun e!4407409 () Bool)

(declare-fun e!4407406 () Bool)

(assert (=> b!7361382 (= e!4407409 e!4407406)))

(declare-fun res!2971740 () Bool)

(assert (=> b!7361382 (=> (not res!2971740) (not e!4407406))))

(declare-datatypes ((C!38734 0))(
  ( (C!38735 (val!29727 Int)) )
))
(declare-datatypes ((Regex!19230 0))(
  ( (ElementMatch!19230 (c!1367774 C!38734)) (Concat!28075 (regOne!38972 Regex!19230) (regTwo!38972 Regex!19230)) (EmptyExpr!19230) (Star!19230 (reg!19559 Regex!19230)) (EmptyLang!19230) (Union!19230 (regOne!38973 Regex!19230) (regTwo!38973 Regex!19230)) )
))
(declare-fun r1!2370 () Regex!19230)

(declare-fun c!10362 () C!38734)

(assert (=> b!7361382 (= res!2971740 (and (is-ElementMatch!19230 r1!2370) (= c!10362 (c!1367774 r1!2370))))))

(declare-datatypes ((List!71726 0))(
  ( (Nil!71602) (Cons!71602 (h!78050 Regex!19230) (t!386175 List!71726)) )
))
(declare-datatypes ((Context!16340 0))(
  ( (Context!16341 (exprs!8670 List!71726)) )
))
(declare-fun lt!2613942 () (Set Context!16340))

(declare-fun lt!2613945 () Context!16340)

(declare-fun derivationStepZipperDown!3056 (Regex!19230 Context!16340 C!38734) (Set Context!16340))

(assert (=> b!7361382 (= lt!2613942 (derivationStepZipperDown!3056 r1!2370 lt!2613945 c!10362))))

(declare-fun ct1!282 () Context!16340)

(declare-fun ct2!378 () Context!16340)

(declare-fun ++!17046 (List!71726 List!71726) List!71726)

(assert (=> b!7361382 (= lt!2613945 (Context!16341 (++!17046 (exprs!8670 ct1!282) (exprs!8670 ct2!378))))))

(declare-fun lambda!457368 () Int)

(declare-datatypes ((Unit!165409 0))(
  ( (Unit!165410) )
))
(declare-fun lt!2613944 () Unit!165409)

(declare-fun lemmaConcatPreservesForall!1903 (List!71726 List!71726 Int) Unit!165409)

(assert (=> b!7361382 (= lt!2613944 (lemmaConcatPreservesForall!1903 (exprs!8670 ct1!282) (exprs!8670 ct2!378) lambda!457368))))

(declare-fun b!7361383 () Bool)

(declare-fun e!4407411 () Bool)

(declare-fun e!4407413 () Bool)

(assert (=> b!7361383 (= e!4407411 e!4407413)))

(declare-fun res!2971739 () Bool)

(assert (=> b!7361383 (=> (not res!2971739) (not e!4407413))))

(declare-fun lt!2613940 () Context!16340)

(assert (=> b!7361383 (= res!2971739 (set.member lt!2613940 lt!2613942))))

(declare-fun cWitness!61 () Context!16340)

(assert (=> b!7361383 (= lt!2613940 (Context!16341 (++!17046 (exprs!8670 cWitness!61) (exprs!8670 ct2!378))))))

(declare-fun lt!2613941 () Unit!165409)

(assert (=> b!7361383 (= lt!2613941 (lemmaConcatPreservesForall!1903 (exprs!8670 cWitness!61) (exprs!8670 ct2!378) lambda!457368))))

(declare-fun b!7361384 () Bool)

(declare-fun e!4407414 () Bool)

(declare-fun tp_is_empty!48705 () Bool)

(assert (=> b!7361384 (= e!4407414 tp_is_empty!48705)))

(declare-fun b!7361385 () Bool)

(declare-fun e!4407407 () Bool)

(assert (=> b!7361385 (= e!4407407 e!4407411)))

(declare-fun res!2971742 () Bool)

(assert (=> b!7361385 (=> (not res!2971742) (not e!4407411))))

(assert (=> b!7361385 (= res!2971742 (= lt!2613942 (set.insert lt!2613945 (as set.empty (Set Context!16340)))))))

(declare-fun lt!2613943 () Unit!165409)

(assert (=> b!7361385 (= lt!2613943 (lemmaConcatPreservesForall!1903 (exprs!8670 ct1!282) (exprs!8670 ct2!378) lambda!457368))))

(declare-fun b!7361386 () Bool)

(declare-fun tp!2091813 () Bool)

(declare-fun tp!2091812 () Bool)

(assert (=> b!7361386 (= e!4407414 (and tp!2091813 tp!2091812))))

(declare-fun res!2971744 () Bool)

(declare-fun e!4407412 () Bool)

(assert (=> start!718758 (=> (not res!2971744) (not e!4407412))))

(declare-fun validRegex!9826 (Regex!19230) Bool)

(assert (=> start!718758 (= res!2971744 (validRegex!9826 r1!2370))))

(assert (=> start!718758 e!4407412))

(assert (=> start!718758 tp_is_empty!48705))

(declare-fun e!4407410 () Bool)

(declare-fun inv!91416 (Context!16340) Bool)

(assert (=> start!718758 (and (inv!91416 cWitness!61) e!4407410)))

(declare-fun e!4407405 () Bool)

(assert (=> start!718758 (and (inv!91416 ct1!282) e!4407405)))

(assert (=> start!718758 e!4407414))

(declare-fun e!4407408 () Bool)

(assert (=> start!718758 (and (inv!91416 ct2!378) e!4407408)))

(declare-fun b!7361387 () Bool)

(assert (=> b!7361387 (= e!4407412 e!4407409)))

(declare-fun res!2971741 () Bool)

(assert (=> b!7361387 (=> (not res!2971741) (not e!4407409))))

(declare-fun lt!2613938 () (Set Context!16340))

(assert (=> b!7361387 (= res!2971741 (set.member cWitness!61 lt!2613938))))

(assert (=> b!7361387 (= lt!2613938 (derivationStepZipperDown!3056 r1!2370 ct1!282 c!10362))))

(declare-fun b!7361388 () Bool)

(declare-fun tp!2091811 () Bool)

(assert (=> b!7361388 (= e!4407405 tp!2091811)))

(declare-fun b!7361389 () Bool)

(declare-fun tp!2091817 () Bool)

(assert (=> b!7361389 (= e!4407410 tp!2091817)))

(declare-fun b!7361390 () Bool)

(declare-fun tp!2091816 () Bool)

(declare-fun tp!2091814 () Bool)

(assert (=> b!7361390 (= e!4407414 (and tp!2091816 tp!2091814))))

(declare-fun b!7361391 () Bool)

(declare-fun tp!2091815 () Bool)

(assert (=> b!7361391 (= e!4407414 tp!2091815)))

(declare-fun b!7361392 () Bool)

(assert (=> b!7361392 (= e!4407413 (not (inv!91416 lt!2613940)))))

(declare-fun lt!2613939 () Unit!165409)

(assert (=> b!7361392 (= lt!2613939 (lemmaConcatPreservesForall!1903 (exprs!8670 ct1!282) (exprs!8670 ct2!378) lambda!457368))))

(declare-fun lt!2613947 () Unit!165409)

(assert (=> b!7361392 (= lt!2613947 (lemmaConcatPreservesForall!1903 (exprs!8670 cWitness!61) (exprs!8670 ct2!378) lambda!457368))))

(declare-fun b!7361393 () Bool)

(assert (=> b!7361393 (= e!4407406 e!4407407)))

(declare-fun res!2971743 () Bool)

(assert (=> b!7361393 (=> (not res!2971743) (not e!4407407))))

(declare-fun lt!2613946 () (Set Context!16340))

(assert (=> b!7361393 (= res!2971743 (and (= lt!2613938 lt!2613946) (set.member cWitness!61 lt!2613946) (= cWitness!61 ct1!282)))))

(assert (=> b!7361393 (= lt!2613946 (set.insert ct1!282 (as set.empty (Set Context!16340))))))

(declare-fun b!7361394 () Bool)

(declare-fun tp!2091810 () Bool)

(assert (=> b!7361394 (= e!4407408 tp!2091810)))

(assert (= (and start!718758 res!2971744) b!7361387))

(assert (= (and b!7361387 res!2971741) b!7361382))

(assert (= (and b!7361382 res!2971740) b!7361393))

(assert (= (and b!7361393 res!2971743) b!7361385))

(assert (= (and b!7361385 res!2971742) b!7361383))

(assert (= (and b!7361383 res!2971739) b!7361392))

(assert (= start!718758 b!7361389))

(assert (= start!718758 b!7361388))

(assert (= (and start!718758 (is-ElementMatch!19230 r1!2370)) b!7361384))

(assert (= (and start!718758 (is-Concat!28075 r1!2370)) b!7361390))

(assert (= (and start!718758 (is-Star!19230 r1!2370)) b!7361391))

(assert (= (and start!718758 (is-Union!19230 r1!2370)) b!7361386))

(assert (= start!718758 b!7361394))

(declare-fun m!8018750 () Bool)

(assert (=> b!7361392 m!8018750))

(declare-fun m!8018752 () Bool)

(assert (=> b!7361392 m!8018752))

(declare-fun m!8018754 () Bool)

(assert (=> b!7361392 m!8018754))

(declare-fun m!8018756 () Bool)

(assert (=> b!7361393 m!8018756))

(declare-fun m!8018758 () Bool)

(assert (=> b!7361393 m!8018758))

(declare-fun m!8018760 () Bool)

(assert (=> start!718758 m!8018760))

(declare-fun m!8018762 () Bool)

(assert (=> start!718758 m!8018762))

(declare-fun m!8018764 () Bool)

(assert (=> start!718758 m!8018764))

(declare-fun m!8018766 () Bool)

(assert (=> start!718758 m!8018766))

(declare-fun m!8018768 () Bool)

(assert (=> b!7361383 m!8018768))

(declare-fun m!8018770 () Bool)

(assert (=> b!7361383 m!8018770))

(assert (=> b!7361383 m!8018754))

(declare-fun m!8018772 () Bool)

(assert (=> b!7361387 m!8018772))

(declare-fun m!8018774 () Bool)

(assert (=> b!7361387 m!8018774))

(declare-fun m!8018776 () Bool)

(assert (=> b!7361385 m!8018776))

(assert (=> b!7361385 m!8018752))

(declare-fun m!8018778 () Bool)

(assert (=> b!7361382 m!8018778))

(declare-fun m!8018780 () Bool)

(assert (=> b!7361382 m!8018780))

(assert (=> b!7361382 m!8018752))

(push 1)

(assert (not b!7361383))

(assert (not b!7361386))

(assert (not start!718758))

(assert tp_is_empty!48705)

(assert (not b!7361387))

(assert (not b!7361389))

(assert (not b!7361388))

(assert (not b!7361394))

(assert (not b!7361385))

(assert (not b!7361390))

(assert (not b!7361392))

(assert (not b!7361382))

(assert (not b!7361391))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7361442 () Bool)

(declare-fun e!4407449 () List!71726)

(assert (=> b!7361442 (= e!4407449 (exprs!8670 ct2!378))))

(declare-fun b!7361443 () Bool)

(assert (=> b!7361443 (= e!4407449 (Cons!71602 (h!78050 (exprs!8670 cWitness!61)) (++!17046 (t!386175 (exprs!8670 cWitness!61)) (exprs!8670 ct2!378))))))

(declare-fun b!7361444 () Bool)

(declare-fun res!2971767 () Bool)

(declare-fun e!4407450 () Bool)

(assert (=> b!7361444 (=> (not res!2971767) (not e!4407450))))

(declare-fun lt!2613980 () List!71726)

(declare-fun size!42098 (List!71726) Int)

(assert (=> b!7361444 (= res!2971767 (= (size!42098 lt!2613980) (+ (size!42098 (exprs!8670 cWitness!61)) (size!42098 (exprs!8670 ct2!378)))))))

(declare-fun b!7361445 () Bool)

(assert (=> b!7361445 (= e!4407450 (or (not (= (exprs!8670 ct2!378) Nil!71602)) (= lt!2613980 (exprs!8670 cWitness!61))))))

(declare-fun d!2282186 () Bool)

(assert (=> d!2282186 e!4407450))

(declare-fun res!2971768 () Bool)

(assert (=> d!2282186 (=> (not res!2971768) (not e!4407450))))

(declare-fun content!15120 (List!71726) (Set Regex!19230))

(assert (=> d!2282186 (= res!2971768 (= (content!15120 lt!2613980) (set.union (content!15120 (exprs!8670 cWitness!61)) (content!15120 (exprs!8670 ct2!378)))))))

(assert (=> d!2282186 (= lt!2613980 e!4407449)))

(declare-fun c!1367778 () Bool)

(assert (=> d!2282186 (= c!1367778 (is-Nil!71602 (exprs!8670 cWitness!61)))))

(assert (=> d!2282186 (= (++!17046 (exprs!8670 cWitness!61) (exprs!8670 ct2!378)) lt!2613980)))

(assert (= (and d!2282186 c!1367778) b!7361442))

(assert (= (and d!2282186 (not c!1367778)) b!7361443))

(assert (= (and d!2282186 res!2971768) b!7361444))

(assert (= (and b!7361444 res!2971767) b!7361445))

(declare-fun m!8018816 () Bool)

(assert (=> b!7361443 m!8018816))

(declare-fun m!8018818 () Bool)

(assert (=> b!7361444 m!8018818))

(declare-fun m!8018820 () Bool)

(assert (=> b!7361444 m!8018820))

(declare-fun m!8018822 () Bool)

(assert (=> b!7361444 m!8018822))

(declare-fun m!8018824 () Bool)

(assert (=> d!2282186 m!8018824))

(declare-fun m!8018826 () Bool)

(assert (=> d!2282186 m!8018826))

(declare-fun m!8018828 () Bool)

(assert (=> d!2282186 m!8018828))

(assert (=> b!7361383 d!2282186))

(declare-fun d!2282192 () Bool)

(declare-fun forall!18044 (List!71726 Int) Bool)

(assert (=> d!2282192 (forall!18044 (++!17046 (exprs!8670 cWitness!61) (exprs!8670 ct2!378)) lambda!457368)))

(declare-fun lt!2613983 () Unit!165409)

(declare-fun choose!57251 (List!71726 List!71726 Int) Unit!165409)

(assert (=> d!2282192 (= lt!2613983 (choose!57251 (exprs!8670 cWitness!61) (exprs!8670 ct2!378) lambda!457368))))

(assert (=> d!2282192 (forall!18044 (exprs!8670 cWitness!61) lambda!457368)))

(assert (=> d!2282192 (= (lemmaConcatPreservesForall!1903 (exprs!8670 cWitness!61) (exprs!8670 ct2!378) lambda!457368) lt!2613983)))

(declare-fun bs!1920172 () Bool)

(assert (= bs!1920172 d!2282192))

(assert (=> bs!1920172 m!8018770))

(assert (=> bs!1920172 m!8018770))

(declare-fun m!8018830 () Bool)

(assert (=> bs!1920172 m!8018830))

(declare-fun m!8018832 () Bool)

(assert (=> bs!1920172 m!8018832))

(declare-fun m!8018834 () Bool)

(assert (=> bs!1920172 m!8018834))

(assert (=> b!7361383 d!2282192))

(declare-fun b!7361468 () Bool)

(declare-fun e!4407467 () (Set Context!16340))

(assert (=> b!7361468 (= e!4407467 (set.insert lt!2613945 (as set.empty (Set Context!16340))))))

(declare-fun d!2282194 () Bool)

(declare-fun c!1367792 () Bool)

(assert (=> d!2282194 (= c!1367792 (and (is-ElementMatch!19230 r1!2370) (= (c!1367774 r1!2370) c!10362)))))

(assert (=> d!2282194 (= (derivationStepZipperDown!3056 r1!2370 lt!2613945 c!10362) e!4407467)))

(declare-fun b!7361469 () Bool)

(declare-fun e!4407468 () (Set Context!16340))

(declare-fun call!674655 () (Set Context!16340))

(declare-fun call!674652 () (Set Context!16340))

(assert (=> b!7361469 (= e!4407468 (set.union call!674655 call!674652))))

(declare-fun call!674653 () List!71726)

(declare-fun bm!674647 () Bool)

(declare-fun c!1367789 () Bool)

(declare-fun c!1367791 () Bool)

(declare-fun $colon$colon!3220 (List!71726 Regex!19230) List!71726)

(assert (=> bm!674647 (= call!674653 ($colon$colon!3220 (exprs!8670 lt!2613945) (ite (or c!1367791 c!1367789) (regTwo!38972 r1!2370) r1!2370)))))

(declare-fun bm!674648 () Bool)

(declare-fun call!674657 () (Set Context!16340))

(assert (=> bm!674648 (= call!674657 call!674652)))

(declare-fun bm!674649 () Bool)

(declare-fun call!674654 () List!71726)

(assert (=> bm!674649 (= call!674654 call!674653)))

(declare-fun b!7361470 () Bool)

(declare-fun e!4407465 () (Set Context!16340))

(assert (=> b!7361470 (= e!4407465 (as set.empty (Set Context!16340)))))

(declare-fun b!7361471 () Bool)

(assert (=> b!7361471 (= e!4407465 call!674657)))

(declare-fun b!7361472 () Bool)

(declare-fun e!4407464 () Bool)

(assert (=> b!7361472 (= c!1367791 e!4407464)))

(declare-fun res!2971771 () Bool)

(assert (=> b!7361472 (=> (not res!2971771) (not e!4407464))))

(assert (=> b!7361472 (= res!2971771 (is-Concat!28075 r1!2370))))

(declare-fun e!4407463 () (Set Context!16340))

(assert (=> b!7361472 (= e!4407463 e!4407468)))

(declare-fun b!7361473 () Bool)

(assert (=> b!7361473 (= e!4407467 e!4407463)))

(declare-fun c!1367790 () Bool)

(assert (=> b!7361473 (= c!1367790 (is-Union!19230 r1!2370))))

(declare-fun bm!674650 () Bool)

(assert (=> bm!674650 (= call!674655 (derivationStepZipperDown!3056 (ite c!1367790 (regOne!38973 r1!2370) (regOne!38972 r1!2370)) (ite c!1367790 lt!2613945 (Context!16341 call!674653)) c!10362))))

(declare-fun b!7361474 () Bool)

(declare-fun call!674656 () (Set Context!16340))

(assert (=> b!7361474 (= e!4407463 (set.union call!674655 call!674656))))

(declare-fun bm!674651 () Bool)

(assert (=> bm!674651 (= call!674656 (derivationStepZipperDown!3056 (ite c!1367790 (regTwo!38973 r1!2370) (ite c!1367791 (regTwo!38972 r1!2370) (ite c!1367789 (regOne!38972 r1!2370) (reg!19559 r1!2370)))) (ite (or c!1367790 c!1367791) lt!2613945 (Context!16341 call!674654)) c!10362))))

(declare-fun b!7361475 () Bool)

(declare-fun nullable!8314 (Regex!19230) Bool)

(assert (=> b!7361475 (= e!4407464 (nullable!8314 (regOne!38972 r1!2370)))))

(declare-fun bm!674652 () Bool)

(assert (=> bm!674652 (= call!674652 call!674656)))

(declare-fun b!7361476 () Bool)

(declare-fun e!4407466 () (Set Context!16340))

(assert (=> b!7361476 (= e!4407466 call!674657)))

(declare-fun b!7361477 () Bool)

(declare-fun c!1367793 () Bool)

(assert (=> b!7361477 (= c!1367793 (is-Star!19230 r1!2370))))

(assert (=> b!7361477 (= e!4407466 e!4407465)))

(declare-fun b!7361478 () Bool)

(assert (=> b!7361478 (= e!4407468 e!4407466)))

(assert (=> b!7361478 (= c!1367789 (is-Concat!28075 r1!2370))))

(assert (= (and d!2282194 c!1367792) b!7361468))

(assert (= (and d!2282194 (not c!1367792)) b!7361473))

(assert (= (and b!7361473 c!1367790) b!7361474))

(assert (= (and b!7361473 (not c!1367790)) b!7361472))

(assert (= (and b!7361472 res!2971771) b!7361475))

(assert (= (and b!7361472 c!1367791) b!7361469))

(assert (= (and b!7361472 (not c!1367791)) b!7361478))

(assert (= (and b!7361478 c!1367789) b!7361476))

(assert (= (and b!7361478 (not c!1367789)) b!7361477))

(assert (= (and b!7361477 c!1367793) b!7361471))

(assert (= (and b!7361477 (not c!1367793)) b!7361470))

(assert (= (or b!7361476 b!7361471) bm!674649))

(assert (= (or b!7361476 b!7361471) bm!674648))

(assert (= (or b!7361469 bm!674648) bm!674652))

(assert (= (or b!7361469 bm!674649) bm!674647))

(assert (= (or b!7361474 bm!674652) bm!674651))

(assert (= (or b!7361474 b!7361469) bm!674650))

(declare-fun m!8018848 () Bool)

(assert (=> b!7361475 m!8018848))

(declare-fun m!8018850 () Bool)

(assert (=> bm!674647 m!8018850))

(declare-fun m!8018852 () Bool)

(assert (=> bm!674650 m!8018852))

(assert (=> b!7361468 m!8018776))

(declare-fun m!8018854 () Bool)

(assert (=> bm!674651 m!8018854))

(assert (=> b!7361382 d!2282194))

(declare-fun b!7361483 () Bool)

(declare-fun e!4407471 () List!71726)

(assert (=> b!7361483 (= e!4407471 (exprs!8670 ct2!378))))

(declare-fun b!7361484 () Bool)

(assert (=> b!7361484 (= e!4407471 (Cons!71602 (h!78050 (exprs!8670 ct1!282)) (++!17046 (t!386175 (exprs!8670 ct1!282)) (exprs!8670 ct2!378))))))

(declare-fun b!7361485 () Bool)

(declare-fun res!2971772 () Bool)

(declare-fun e!4407472 () Bool)

(assert (=> b!7361485 (=> (not res!2971772) (not e!4407472))))

(declare-fun lt!2613988 () List!71726)

(assert (=> b!7361485 (= res!2971772 (= (size!42098 lt!2613988) (+ (size!42098 (exprs!8670 ct1!282)) (size!42098 (exprs!8670 ct2!378)))))))

(declare-fun b!7361486 () Bool)

(assert (=> b!7361486 (= e!4407472 (or (not (= (exprs!8670 ct2!378) Nil!71602)) (= lt!2613988 (exprs!8670 ct1!282))))))

(declare-fun d!2282200 () Bool)

(assert (=> d!2282200 e!4407472))

(declare-fun res!2971773 () Bool)

(assert (=> d!2282200 (=> (not res!2971773) (not e!4407472))))

(assert (=> d!2282200 (= res!2971773 (= (content!15120 lt!2613988) (set.union (content!15120 (exprs!8670 ct1!282)) (content!15120 (exprs!8670 ct2!378)))))))

(assert (=> d!2282200 (= lt!2613988 e!4407471)))

(declare-fun c!1367796 () Bool)

(assert (=> d!2282200 (= c!1367796 (is-Nil!71602 (exprs!8670 ct1!282)))))

(assert (=> d!2282200 (= (++!17046 (exprs!8670 ct1!282) (exprs!8670 ct2!378)) lt!2613988)))

(assert (= (and d!2282200 c!1367796) b!7361483))

(assert (= (and d!2282200 (not c!1367796)) b!7361484))

(assert (= (and d!2282200 res!2971773) b!7361485))

(assert (= (and b!7361485 res!2971772) b!7361486))

(declare-fun m!8018856 () Bool)

(assert (=> b!7361484 m!8018856))

(declare-fun m!8018858 () Bool)

(assert (=> b!7361485 m!8018858))

(declare-fun m!8018860 () Bool)

(assert (=> b!7361485 m!8018860))

(assert (=> b!7361485 m!8018822))

(declare-fun m!8018862 () Bool)

(assert (=> d!2282200 m!8018862))

(declare-fun m!8018864 () Bool)

(assert (=> d!2282200 m!8018864))

(assert (=> d!2282200 m!8018828))

(assert (=> b!7361382 d!2282200))

(declare-fun d!2282202 () Bool)

(assert (=> d!2282202 (forall!18044 (++!17046 (exprs!8670 ct1!282) (exprs!8670 ct2!378)) lambda!457368)))

(declare-fun lt!2613989 () Unit!165409)

(assert (=> d!2282202 (= lt!2613989 (choose!57251 (exprs!8670 ct1!282) (exprs!8670 ct2!378) lambda!457368))))

(assert (=> d!2282202 (forall!18044 (exprs!8670 ct1!282) lambda!457368)))

(assert (=> d!2282202 (= (lemmaConcatPreservesForall!1903 (exprs!8670 ct1!282) (exprs!8670 ct2!378) lambda!457368) lt!2613989)))

(declare-fun bs!1920175 () Bool)

(assert (= bs!1920175 d!2282202))

(assert (=> bs!1920175 m!8018780))

(assert (=> bs!1920175 m!8018780))

(declare-fun m!8018866 () Bool)

(assert (=> bs!1920175 m!8018866))

(declare-fun m!8018868 () Bool)

(assert (=> bs!1920175 m!8018868))

(declare-fun m!8018870 () Bool)

(assert (=> bs!1920175 m!8018870))

(assert (=> b!7361382 d!2282202))

(declare-fun b!7361523 () Bool)

(declare-fun e!4407502 () Bool)

(declare-fun e!4407498 () Bool)

(assert (=> b!7361523 (= e!4407502 e!4407498)))

(declare-fun res!2971787 () Bool)

(assert (=> b!7361523 (=> (not res!2971787) (not e!4407498))))

(declare-fun call!674674 () Bool)

(assert (=> b!7361523 (= res!2971787 call!674674)))

(declare-fun b!7361524 () Bool)

(declare-fun e!4407501 () Bool)

(declare-fun e!4407497 () Bool)

(assert (=> b!7361524 (= e!4407501 e!4407497)))

(declare-fun res!2971790 () Bool)

(assert (=> b!7361524 (= res!2971790 (not (nullable!8314 (reg!19559 r1!2370))))))

(assert (=> b!7361524 (=> (not res!2971790) (not e!4407497))))

(declare-fun call!674676 () Bool)

(declare-fun c!1367809 () Bool)

(declare-fun bm!674667 () Bool)

(declare-fun c!1367810 () Bool)

(assert (=> bm!674667 (= call!674676 (validRegex!9826 (ite c!1367809 (reg!19559 r1!2370) (ite c!1367810 (regTwo!38973 r1!2370) (regOne!38972 r1!2370)))))))

(declare-fun d!2282204 () Bool)

(declare-fun res!2971786 () Bool)

(declare-fun e!4407500 () Bool)

(assert (=> d!2282204 (=> res!2971786 e!4407500)))

(assert (=> d!2282204 (= res!2971786 (is-ElementMatch!19230 r1!2370))))

(assert (=> d!2282204 (= (validRegex!9826 r1!2370) e!4407500)))

(declare-fun b!7361525 () Bool)

(declare-fun res!2971788 () Bool)

(declare-fun e!4407499 () Bool)

(assert (=> b!7361525 (=> (not res!2971788) (not e!4407499))))

(declare-fun call!674675 () Bool)

(assert (=> b!7361525 (= res!2971788 call!674675)))

(declare-fun e!4407503 () Bool)

(assert (=> b!7361525 (= e!4407503 e!4407499)))

(declare-fun b!7361526 () Bool)

(assert (=> b!7361526 (= e!4407500 e!4407501)))

(assert (=> b!7361526 (= c!1367809 (is-Star!19230 r1!2370))))

(declare-fun bm!674668 () Bool)

(assert (=> bm!674668 (= call!674674 call!674676)))

(declare-fun b!7361527 () Bool)

(assert (=> b!7361527 (= e!4407501 e!4407503)))

(assert (=> b!7361527 (= c!1367810 (is-Union!19230 r1!2370))))

(declare-fun b!7361528 () Bool)

(declare-fun res!2971789 () Bool)

(assert (=> b!7361528 (=> res!2971789 e!4407502)))

(assert (=> b!7361528 (= res!2971789 (not (is-Concat!28075 r1!2370)))))

(assert (=> b!7361528 (= e!4407503 e!4407502)))

(declare-fun b!7361529 () Bool)

(assert (=> b!7361529 (= e!4407499 call!674674)))

(declare-fun b!7361530 () Bool)

(assert (=> b!7361530 (= e!4407498 call!674675)))

(declare-fun b!7361531 () Bool)

(assert (=> b!7361531 (= e!4407497 call!674676)))

(declare-fun bm!674669 () Bool)

(assert (=> bm!674669 (= call!674675 (validRegex!9826 (ite c!1367810 (regOne!38973 r1!2370) (regTwo!38972 r1!2370))))))

(assert (= (and d!2282204 (not res!2971786)) b!7361526))

(assert (= (and b!7361526 c!1367809) b!7361524))

(assert (= (and b!7361526 (not c!1367809)) b!7361527))

(assert (= (and b!7361524 res!2971790) b!7361531))

(assert (= (and b!7361527 c!1367810) b!7361525))

(assert (= (and b!7361527 (not c!1367810)) b!7361528))

(assert (= (and b!7361525 res!2971788) b!7361529))

(assert (= (and b!7361528 (not res!2971789)) b!7361523))

(assert (= (and b!7361523 res!2971787) b!7361530))

(assert (= (or b!7361525 b!7361530) bm!674669))

(assert (= (or b!7361529 b!7361523) bm!674668))

(assert (= (or b!7361531 bm!674668) bm!674667))

(declare-fun m!8018872 () Bool)

(assert (=> b!7361524 m!8018872))

(declare-fun m!8018874 () Bool)

(assert (=> bm!674667 m!8018874))

(declare-fun m!8018876 () Bool)

(assert (=> bm!674669 m!8018876))

(assert (=> start!718758 d!2282204))

(declare-fun bs!1920176 () Bool)

(declare-fun d!2282206 () Bool)

(assert (= bs!1920176 (and d!2282206 b!7361382)))

(declare-fun lambda!457385 () Int)

(assert (=> bs!1920176 (= lambda!457385 lambda!457368)))

(assert (=> d!2282206 (= (inv!91416 cWitness!61) (forall!18044 (exprs!8670 cWitness!61) lambda!457385))))

(declare-fun bs!1920177 () Bool)

(assert (= bs!1920177 d!2282206))

(declare-fun m!8018878 () Bool)

(assert (=> bs!1920177 m!8018878))

(assert (=> start!718758 d!2282206))

(declare-fun bs!1920178 () Bool)

(declare-fun d!2282208 () Bool)

(assert (= bs!1920178 (and d!2282208 b!7361382)))

(declare-fun lambda!457386 () Int)

(assert (=> bs!1920178 (= lambda!457386 lambda!457368)))

(declare-fun bs!1920179 () Bool)

(assert (= bs!1920179 (and d!2282208 d!2282206)))

(assert (=> bs!1920179 (= lambda!457386 lambda!457385)))

(assert (=> d!2282208 (= (inv!91416 ct1!282) (forall!18044 (exprs!8670 ct1!282) lambda!457386))))

(declare-fun bs!1920180 () Bool)

(assert (= bs!1920180 d!2282208))

(declare-fun m!8018880 () Bool)

(assert (=> bs!1920180 m!8018880))

(assert (=> start!718758 d!2282208))

(declare-fun bs!1920181 () Bool)

(declare-fun d!2282210 () Bool)

(assert (= bs!1920181 (and d!2282210 b!7361382)))

(declare-fun lambda!457387 () Int)

(assert (=> bs!1920181 (= lambda!457387 lambda!457368)))

(declare-fun bs!1920182 () Bool)

(assert (= bs!1920182 (and d!2282210 d!2282206)))

(assert (=> bs!1920182 (= lambda!457387 lambda!457385)))

(declare-fun bs!1920183 () Bool)

(assert (= bs!1920183 (and d!2282210 d!2282208)))

(assert (=> bs!1920183 (= lambda!457387 lambda!457386)))

(assert (=> d!2282210 (= (inv!91416 ct2!378) (forall!18044 (exprs!8670 ct2!378) lambda!457387))))

(declare-fun bs!1920184 () Bool)

(assert (= bs!1920184 d!2282210))

(declare-fun m!8018882 () Bool)

(assert (=> bs!1920184 m!8018882))

(assert (=> start!718758 d!2282210))

(declare-fun b!7361532 () Bool)

(declare-fun e!4407508 () (Set Context!16340))

(assert (=> b!7361532 (= e!4407508 (set.insert ct1!282 (as set.empty (Set Context!16340))))))

(declare-fun d!2282212 () Bool)

(declare-fun c!1367814 () Bool)

(assert (=> d!2282212 (= c!1367814 (and (is-ElementMatch!19230 r1!2370) (= (c!1367774 r1!2370) c!10362)))))

(assert (=> d!2282212 (= (derivationStepZipperDown!3056 r1!2370 ct1!282 c!10362) e!4407508)))

(declare-fun b!7361533 () Bool)

(declare-fun e!4407509 () (Set Context!16340))

(declare-fun call!674682 () (Set Context!16340))

(declare-fun call!674679 () (Set Context!16340))

(assert (=> b!7361533 (= e!4407509 (set.union call!674682 call!674679))))

(declare-fun call!674680 () List!71726)

(declare-fun bm!674674 () Bool)

(declare-fun c!1367813 () Bool)

(declare-fun c!1367811 () Bool)

(assert (=> bm!674674 (= call!674680 ($colon$colon!3220 (exprs!8670 ct1!282) (ite (or c!1367813 c!1367811) (regTwo!38972 r1!2370) r1!2370)))))

(declare-fun bm!674675 () Bool)

(declare-fun call!674684 () (Set Context!16340))

(assert (=> bm!674675 (= call!674684 call!674679)))

(declare-fun bm!674676 () Bool)

(declare-fun call!674681 () List!71726)

(assert (=> bm!674676 (= call!674681 call!674680)))

(declare-fun b!7361534 () Bool)

(declare-fun e!4407506 () (Set Context!16340))

(assert (=> b!7361534 (= e!4407506 (as set.empty (Set Context!16340)))))

(declare-fun b!7361535 () Bool)

(assert (=> b!7361535 (= e!4407506 call!674684)))

(declare-fun b!7361536 () Bool)

(declare-fun e!4407505 () Bool)

(assert (=> b!7361536 (= c!1367813 e!4407505)))

(declare-fun res!2971791 () Bool)

(assert (=> b!7361536 (=> (not res!2971791) (not e!4407505))))

(assert (=> b!7361536 (= res!2971791 (is-Concat!28075 r1!2370))))

(declare-fun e!4407504 () (Set Context!16340))

(assert (=> b!7361536 (= e!4407504 e!4407509)))

(declare-fun b!7361537 () Bool)

(assert (=> b!7361537 (= e!4407508 e!4407504)))

(declare-fun c!1367812 () Bool)

(assert (=> b!7361537 (= c!1367812 (is-Union!19230 r1!2370))))

(declare-fun bm!674677 () Bool)

(assert (=> bm!674677 (= call!674682 (derivationStepZipperDown!3056 (ite c!1367812 (regOne!38973 r1!2370) (regOne!38972 r1!2370)) (ite c!1367812 ct1!282 (Context!16341 call!674680)) c!10362))))

(declare-fun b!7361538 () Bool)

(declare-fun call!674683 () (Set Context!16340))

(assert (=> b!7361538 (= e!4407504 (set.union call!674682 call!674683))))

(declare-fun bm!674678 () Bool)

(assert (=> bm!674678 (= call!674683 (derivationStepZipperDown!3056 (ite c!1367812 (regTwo!38973 r1!2370) (ite c!1367813 (regTwo!38972 r1!2370) (ite c!1367811 (regOne!38972 r1!2370) (reg!19559 r1!2370)))) (ite (or c!1367812 c!1367813) ct1!282 (Context!16341 call!674681)) c!10362))))

(declare-fun b!7361539 () Bool)

(assert (=> b!7361539 (= e!4407505 (nullable!8314 (regOne!38972 r1!2370)))))

(declare-fun bm!674679 () Bool)

(assert (=> bm!674679 (= call!674679 call!674683)))

(declare-fun b!7361540 () Bool)

(declare-fun e!4407507 () (Set Context!16340))

(assert (=> b!7361540 (= e!4407507 call!674684)))

(declare-fun b!7361541 () Bool)

(declare-fun c!1367815 () Bool)

(assert (=> b!7361541 (= c!1367815 (is-Star!19230 r1!2370))))

(assert (=> b!7361541 (= e!4407507 e!4407506)))

(declare-fun b!7361542 () Bool)

(assert (=> b!7361542 (= e!4407509 e!4407507)))

(assert (=> b!7361542 (= c!1367811 (is-Concat!28075 r1!2370))))

(assert (= (and d!2282212 c!1367814) b!7361532))

(assert (= (and d!2282212 (not c!1367814)) b!7361537))

(assert (= (and b!7361537 c!1367812) b!7361538))

(assert (= (and b!7361537 (not c!1367812)) b!7361536))

(assert (= (and b!7361536 res!2971791) b!7361539))

(assert (= (and b!7361536 c!1367813) b!7361533))

(assert (= (and b!7361536 (not c!1367813)) b!7361542))

(assert (= (and b!7361542 c!1367811) b!7361540))

(assert (= (and b!7361542 (not c!1367811)) b!7361541))

(assert (= (and b!7361541 c!1367815) b!7361535))

(assert (= (and b!7361541 (not c!1367815)) b!7361534))

(assert (= (or b!7361540 b!7361535) bm!674676))

(assert (= (or b!7361540 b!7361535) bm!674675))

(assert (= (or b!7361533 bm!674675) bm!674679))

(assert (= (or b!7361533 bm!674676) bm!674674))

(assert (= (or b!7361538 bm!674679) bm!674678))

(assert (= (or b!7361538 b!7361533) bm!674677))

(assert (=> b!7361539 m!8018848))

(declare-fun m!8018884 () Bool)

(assert (=> bm!674674 m!8018884))

(declare-fun m!8018886 () Bool)

(assert (=> bm!674677 m!8018886))

(assert (=> b!7361532 m!8018758))

(declare-fun m!8018888 () Bool)

(assert (=> bm!674678 m!8018888))

(assert (=> b!7361387 d!2282212))

(declare-fun bs!1920185 () Bool)

(declare-fun d!2282214 () Bool)

(assert (= bs!1920185 (and d!2282214 b!7361382)))

(declare-fun lambda!457388 () Int)

(assert (=> bs!1920185 (= lambda!457388 lambda!457368)))

(declare-fun bs!1920186 () Bool)

(assert (= bs!1920186 (and d!2282214 d!2282206)))

(assert (=> bs!1920186 (= lambda!457388 lambda!457385)))

(declare-fun bs!1920187 () Bool)

(assert (= bs!1920187 (and d!2282214 d!2282208)))

(assert (=> bs!1920187 (= lambda!457388 lambda!457386)))

(declare-fun bs!1920188 () Bool)

(assert (= bs!1920188 (and d!2282214 d!2282210)))

(assert (=> bs!1920188 (= lambda!457388 lambda!457387)))

(assert (=> d!2282214 (= (inv!91416 lt!2613940) (forall!18044 (exprs!8670 lt!2613940) lambda!457388))))

(declare-fun bs!1920189 () Bool)

(assert (= bs!1920189 d!2282214))

(declare-fun m!8018890 () Bool)

(assert (=> bs!1920189 m!8018890))

(assert (=> b!7361392 d!2282214))

(assert (=> b!7361392 d!2282202))

(assert (=> b!7361392 d!2282192))

(assert (=> b!7361385 d!2282202))

(declare-fun b!7361547 () Bool)

(declare-fun e!4407512 () Bool)

(declare-fun tp!2091846 () Bool)

(declare-fun tp!2091847 () Bool)

(assert (=> b!7361547 (= e!4407512 (and tp!2091846 tp!2091847))))

(assert (=> b!7361394 (= tp!2091810 e!4407512)))

(assert (= (and b!7361394 (is-Cons!71602 (exprs!8670 ct2!378))) b!7361547))

(declare-fun b!7361548 () Bool)

(declare-fun e!4407513 () Bool)

(declare-fun tp!2091848 () Bool)

(declare-fun tp!2091849 () Bool)

(assert (=> b!7361548 (= e!4407513 (and tp!2091848 tp!2091849))))

(assert (=> b!7361388 (= tp!2091811 e!4407513)))

(assert (= (and b!7361388 (is-Cons!71602 (exprs!8670 ct1!282))) b!7361548))

(declare-fun b!7361559 () Bool)

(declare-fun e!4407516 () Bool)

(assert (=> b!7361559 (= e!4407516 tp_is_empty!48705)))

(assert (=> b!7361386 (= tp!2091813 e!4407516)))

(declare-fun b!7361561 () Bool)

(declare-fun tp!2091861 () Bool)

(assert (=> b!7361561 (= e!4407516 tp!2091861)))

(declare-fun b!7361562 () Bool)

(declare-fun tp!2091860 () Bool)

(declare-fun tp!2091862 () Bool)

(assert (=> b!7361562 (= e!4407516 (and tp!2091860 tp!2091862))))

(declare-fun b!7361560 () Bool)

(declare-fun tp!2091863 () Bool)

(declare-fun tp!2091864 () Bool)

(assert (=> b!7361560 (= e!4407516 (and tp!2091863 tp!2091864))))

(assert (= (and b!7361386 (is-ElementMatch!19230 (regOne!38973 r1!2370))) b!7361559))

(assert (= (and b!7361386 (is-Concat!28075 (regOne!38973 r1!2370))) b!7361560))

(assert (= (and b!7361386 (is-Star!19230 (regOne!38973 r1!2370))) b!7361561))

(assert (= (and b!7361386 (is-Union!19230 (regOne!38973 r1!2370))) b!7361562))

(declare-fun b!7361563 () Bool)

(declare-fun e!4407517 () Bool)

(assert (=> b!7361563 (= e!4407517 tp_is_empty!48705)))

(assert (=> b!7361386 (= tp!2091812 e!4407517)))

(declare-fun b!7361565 () Bool)

(declare-fun tp!2091866 () Bool)

(assert (=> b!7361565 (= e!4407517 tp!2091866)))

(declare-fun b!7361566 () Bool)

(declare-fun tp!2091865 () Bool)

(declare-fun tp!2091867 () Bool)

(assert (=> b!7361566 (= e!4407517 (and tp!2091865 tp!2091867))))

(declare-fun b!7361564 () Bool)

(declare-fun tp!2091868 () Bool)

(declare-fun tp!2091869 () Bool)

(assert (=> b!7361564 (= e!4407517 (and tp!2091868 tp!2091869))))

(assert (= (and b!7361386 (is-ElementMatch!19230 (regTwo!38973 r1!2370))) b!7361563))

(assert (= (and b!7361386 (is-Concat!28075 (regTwo!38973 r1!2370))) b!7361564))

(assert (= (and b!7361386 (is-Star!19230 (regTwo!38973 r1!2370))) b!7361565))

(assert (= (and b!7361386 (is-Union!19230 (regTwo!38973 r1!2370))) b!7361566))

(declare-fun b!7361567 () Bool)

(declare-fun e!4407518 () Bool)

(assert (=> b!7361567 (= e!4407518 tp_is_empty!48705)))

(assert (=> b!7361391 (= tp!2091815 e!4407518)))

(declare-fun b!7361569 () Bool)

(declare-fun tp!2091871 () Bool)

(assert (=> b!7361569 (= e!4407518 tp!2091871)))

(declare-fun b!7361570 () Bool)

(declare-fun tp!2091870 () Bool)

(declare-fun tp!2091872 () Bool)

(assert (=> b!7361570 (= e!4407518 (and tp!2091870 tp!2091872))))

(declare-fun b!7361568 () Bool)

(declare-fun tp!2091873 () Bool)

(declare-fun tp!2091874 () Bool)

(assert (=> b!7361568 (= e!4407518 (and tp!2091873 tp!2091874))))

(assert (= (and b!7361391 (is-ElementMatch!19230 (reg!19559 r1!2370))) b!7361567))

(assert (= (and b!7361391 (is-Concat!28075 (reg!19559 r1!2370))) b!7361568))

(assert (= (and b!7361391 (is-Star!19230 (reg!19559 r1!2370))) b!7361569))

(assert (= (and b!7361391 (is-Union!19230 (reg!19559 r1!2370))) b!7361570))

(declare-fun b!7361571 () Bool)

(declare-fun e!4407519 () Bool)

(assert (=> b!7361571 (= e!4407519 tp_is_empty!48705)))

(assert (=> b!7361390 (= tp!2091816 e!4407519)))

(declare-fun b!7361573 () Bool)

(declare-fun tp!2091876 () Bool)

(assert (=> b!7361573 (= e!4407519 tp!2091876)))

(declare-fun b!7361574 () Bool)

(declare-fun tp!2091875 () Bool)

(declare-fun tp!2091877 () Bool)

(assert (=> b!7361574 (= e!4407519 (and tp!2091875 tp!2091877))))

(declare-fun b!7361572 () Bool)

(declare-fun tp!2091878 () Bool)

(declare-fun tp!2091879 () Bool)

(assert (=> b!7361572 (= e!4407519 (and tp!2091878 tp!2091879))))

(assert (= (and b!7361390 (is-ElementMatch!19230 (regOne!38972 r1!2370))) b!7361571))

(assert (= (and b!7361390 (is-Concat!28075 (regOne!38972 r1!2370))) b!7361572))

(assert (= (and b!7361390 (is-Star!19230 (regOne!38972 r1!2370))) b!7361573))

(assert (= (and b!7361390 (is-Union!19230 (regOne!38972 r1!2370))) b!7361574))

(declare-fun b!7361575 () Bool)

(declare-fun e!4407520 () Bool)

(assert (=> b!7361575 (= e!4407520 tp_is_empty!48705)))

(assert (=> b!7361390 (= tp!2091814 e!4407520)))

(declare-fun b!7361577 () Bool)

(declare-fun tp!2091881 () Bool)

(assert (=> b!7361577 (= e!4407520 tp!2091881)))

(declare-fun b!7361578 () Bool)

(declare-fun tp!2091880 () Bool)

(declare-fun tp!2091882 () Bool)

(assert (=> b!7361578 (= e!4407520 (and tp!2091880 tp!2091882))))

(declare-fun b!7361576 () Bool)

(declare-fun tp!2091883 () Bool)

(declare-fun tp!2091884 () Bool)

(assert (=> b!7361576 (= e!4407520 (and tp!2091883 tp!2091884))))

(assert (= (and b!7361390 (is-ElementMatch!19230 (regTwo!38972 r1!2370))) b!7361575))

(assert (= (and b!7361390 (is-Concat!28075 (regTwo!38972 r1!2370))) b!7361576))

(assert (= (and b!7361390 (is-Star!19230 (regTwo!38972 r1!2370))) b!7361577))

(assert (= (and b!7361390 (is-Union!19230 (regTwo!38972 r1!2370))) b!7361578))

(declare-fun b!7361579 () Bool)

(declare-fun e!4407521 () Bool)

(declare-fun tp!2091885 () Bool)

(declare-fun tp!2091886 () Bool)

(assert (=> b!7361579 (= e!4407521 (and tp!2091885 tp!2091886))))

(assert (=> b!7361389 (= tp!2091817 e!4407521)))

(assert (= (and b!7361389 (is-Cons!71602 (exprs!8670 cWitness!61))) b!7361579))

(push 1)

(assert (not b!7361444))

(assert (not b!7361564))

(assert (not b!7361577))

(assert (not b!7361539))

(assert (not b!7361579))

(assert (not d!2282202))

(assert (not b!7361548))

(assert (not d!2282192))

(assert (not b!7361485))

(assert (not b!7361578))

(assert (not b!7361484))

(assert (not b!7361562))

(assert (not b!7361570))

(assert (not d!2282206))

(assert (not b!7361573))

(assert (not bm!674677))

(assert tp_is_empty!48705)

(assert (not b!7361568))

(assert (not d!2282200))

(assert (not b!7361561))

(assert (not b!7361560))

(assert (not bm!674647))

(assert (not b!7361443))

(assert (not bm!674667))

(assert (not d!2282186))

(assert (not bm!674678))

(assert (not d!2282208))

(assert (not bm!674669))

(assert (not b!7361574))

(assert (not b!7361566))

(assert (not b!7361572))

(assert (not d!2282210))

(assert (not b!7361524))

(assert (not d!2282214))

(assert (not b!7361565))

(assert (not b!7361576))

(assert (not bm!674651))

(assert (not b!7361569))

(assert (not bm!674650))

(assert (not b!7361475))

(assert (not bm!674674))

(assert (not b!7361547))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

