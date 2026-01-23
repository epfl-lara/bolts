; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734950 () Bool)

(assert start!734950)

(declare-fun b!7632640 () Bool)

(assert (=> b!7632640 true))

(assert (=> b!7632640 true))

(declare-fun b!7632630 () Bool)

(declare-fun e!4537573 () Bool)

(declare-fun tp_is_empty!51139 () Bool)

(declare-fun tp!2228333 () Bool)

(assert (=> b!7632630 (= e!4537573 (and tp_is_empty!51139 tp!2228333))))

(declare-fun b!7632631 () Bool)

(declare-datatypes ((Unit!167720 0))(
  ( (Unit!167721) )
))
(declare-fun e!4537568 () Unit!167720)

(declare-fun Unit!167722 () Unit!167720)

(assert (=> b!7632631 (= e!4537568 Unit!167722)))

(declare-fun b!7632632 () Bool)

(declare-fun e!4537572 () Bool)

(declare-fun tp!2228337 () Bool)

(declare-fun tp!2228332 () Bool)

(assert (=> b!7632632 (= e!4537572 (and tp!2228337 tp!2228332))))

(declare-fun b!7632633 () Bool)

(declare-fun tp!2228331 () Bool)

(assert (=> b!7632633 (= e!4537572 tp!2228331)))

(declare-fun b!7632634 () Bool)

(declare-fun e!4537575 () Bool)

(assert (=> b!7632634 (= e!4537575 false)))

(declare-fun b!7632635 () Bool)

(declare-fun res!3056748 () Bool)

(declare-fun e!4537570 () Bool)

(assert (=> b!7632635 (=> (not res!3056748) (not e!4537570))))

(declare-datatypes ((C!41110 0))(
  ( (C!41111 (val!30995 Int)) )
))
(declare-datatypes ((Regex!20392 0))(
  ( (ElementMatch!20392 (c!1406118 C!41110)) (Concat!29237 (regOne!41296 Regex!20392) (regTwo!41296 Regex!20392)) (EmptyExpr!20392) (Star!20392 (reg!20721 Regex!20392)) (EmptyLang!20392) (Union!20392 (regOne!41297 Regex!20392) (regTwo!41297 Regex!20392)) )
))
(declare-fun r!14126 () Regex!20392)

(assert (=> b!7632635 (= res!3056748 (and (not (is-EmptyExpr!20392 r!14126)) (not (is-EmptyLang!20392 r!14126)) (not (is-ElementMatch!20392 r!14126)) (not (is-Union!20392 r!14126)) (not (is-Star!20392 r!14126))))))

(declare-fun b!7632636 () Bool)

(declare-fun e!4537576 () Bool)

(declare-fun e!4537574 () Bool)

(assert (=> b!7632636 (= e!4537576 e!4537574)))

(declare-fun res!3056747 () Bool)

(assert (=> b!7632636 (=> res!3056747 e!4537574)))

(declare-fun lambda!469146 () Int)

(declare-fun Exists!4546 (Int) Bool)

(assert (=> b!7632636 (= res!3056747 (Exists!4546 lambda!469146))))

(declare-fun lt!2659030 () Unit!167720)

(assert (=> b!7632636 (= lt!2659030 e!4537568)))

(declare-fun c!1406117 () Bool)

(declare-fun lt!2659032 () Bool)

(assert (=> b!7632636 (= c!1406117 lt!2659032)))

(declare-fun b!7632637 () Bool)

(declare-fun Unit!167723 () Unit!167720)

(assert (=> b!7632637 (= e!4537568 Unit!167723)))

(declare-datatypes ((List!73243 0))(
  ( (Nil!73119) (Cons!73119 (h!79567 C!41110) (t!387978 List!73243)) )
))
(declare-datatypes ((tuple2!69342 0))(
  ( (tuple2!69343 (_1!37974 List!73243) (_2!37974 List!73243)) )
))
(declare-fun lt!2659027 () tuple2!69342)

(declare-datatypes ((Option!17465 0))(
  ( (None!17464) (Some!17464 (v!54599 tuple2!69342)) )
))
(declare-fun lt!2659031 () Option!17465)

(declare-fun get!25853 (Option!17465) tuple2!69342)

(assert (=> b!7632637 (= lt!2659027 (get!25853 lt!2659031))))

(declare-fun lt!2659029 () Unit!167720)

(declare-fun s!9605 () List!73243)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!149 (Regex!20392 Regex!20392 List!73243 List!73243 List!73243) Unit!167720)

(assert (=> b!7632637 (= lt!2659029 (lemmaFindSeparationIsDefinedThenConcatMatches!149 (regOne!41296 r!14126) (regTwo!41296 r!14126) (_1!37974 lt!2659027) (_2!37974 lt!2659027) s!9605))))

(declare-fun res!3056750 () Bool)

(declare-fun matchR!9895 (Regex!20392 List!73243) Bool)

(declare-fun ++!17672 (List!73243 List!73243) List!73243)

(assert (=> b!7632637 (= res!3056750 (matchR!9895 r!14126 (++!17672 (_1!37974 lt!2659027) (_2!37974 lt!2659027))))))

(assert (=> b!7632637 (=> (not res!3056750) (not e!4537575))))

(assert (=> b!7632637 e!4537575))

(declare-fun b!7632638 () Bool)

(declare-fun e!4537571 () Bool)

(declare-fun tp!2228336 () Bool)

(assert (=> b!7632638 (= e!4537571 (and tp_is_empty!51139 tp!2228336))))

(declare-fun b!7632639 () Bool)

(declare-fun res!3056745 () Bool)

(assert (=> b!7632639 (=> res!3056745 e!4537574)))

(declare-fun cut!18 () tuple2!69342)

(assert (=> b!7632639 (= res!3056745 (not (= (++!17672 (_1!37974 cut!18) (_2!37974 cut!18)) s!9605)))))

(assert (=> b!7632640 (= e!4537570 (not e!4537576))))

(declare-fun res!3056746 () Bool)

(assert (=> b!7632640 (=> res!3056746 e!4537576)))

(assert (=> b!7632640 (= res!3056746 (matchR!9895 r!14126 s!9605))))

(assert (=> b!7632640 (= lt!2659032 (Exists!4546 lambda!469146))))

(declare-fun isDefined!14081 (Option!17465) Bool)

(assert (=> b!7632640 (= lt!2659032 (isDefined!14081 lt!2659031))))

(declare-fun findConcatSeparation!3495 (Regex!20392 Regex!20392 List!73243 List!73243 List!73243) Option!17465)

(assert (=> b!7632640 (= lt!2659031 (findConcatSeparation!3495 (regOne!41296 r!14126) (regTwo!41296 r!14126) Nil!73119 s!9605 s!9605))))

(declare-fun lt!2659028 () Unit!167720)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3253 (Regex!20392 Regex!20392 List!73243) Unit!167720)

(assert (=> b!7632640 (= lt!2659028 (lemmaFindConcatSeparationEquivalentToExists!3253 (regOne!41296 r!14126) (regTwo!41296 r!14126) s!9605))))

(declare-fun b!7632641 () Bool)

(declare-fun tp!2228335 () Bool)

(declare-fun tp!2228330 () Bool)

(assert (=> b!7632641 (= e!4537572 (and tp!2228335 tp!2228330))))

(declare-fun res!3056749 () Bool)

(assert (=> start!734950 (=> (not res!3056749) (not e!4537570))))

(declare-fun validRegex!10810 (Regex!20392) Bool)

(assert (=> start!734950 (= res!3056749 (validRegex!10810 r!14126))))

(assert (=> start!734950 e!4537570))

(assert (=> start!734950 e!4537572))

(assert (=> start!734950 e!4537571))

(declare-fun e!4537569 () Bool)

(assert (=> start!734950 (and e!4537573 e!4537569)))

(declare-fun b!7632642 () Bool)

(assert (=> b!7632642 (= e!4537574 (validRegex!10810 (regOne!41296 r!14126)))))

(declare-fun b!7632643 () Bool)

(declare-fun tp!2228334 () Bool)

(assert (=> b!7632643 (= e!4537569 (and tp_is_empty!51139 tp!2228334))))

(declare-fun b!7632644 () Bool)

(assert (=> b!7632644 (= e!4537572 tp_is_empty!51139)))

(assert (= (and start!734950 res!3056749) b!7632635))

(assert (= (and b!7632635 res!3056748) b!7632640))

(assert (= (and b!7632640 (not res!3056746)) b!7632636))

(assert (= (and b!7632636 c!1406117) b!7632637))

(assert (= (and b!7632636 (not c!1406117)) b!7632631))

(assert (= (and b!7632637 res!3056750) b!7632634))

(assert (= (and b!7632636 (not res!3056747)) b!7632639))

(assert (= (and b!7632639 (not res!3056745)) b!7632642))

(assert (= (and start!734950 (is-ElementMatch!20392 r!14126)) b!7632644))

(assert (= (and start!734950 (is-Concat!29237 r!14126)) b!7632641))

(assert (= (and start!734950 (is-Star!20392 r!14126)) b!7632633))

(assert (= (and start!734950 (is-Union!20392 r!14126)) b!7632632))

(assert (= (and start!734950 (is-Cons!73119 s!9605)) b!7632638))

(assert (= (and start!734950 (is-Cons!73119 (_1!37974 cut!18))) b!7632630))

(assert (= (and start!734950 (is-Cons!73119 (_2!37974 cut!18))) b!7632643))

(declare-fun m!8158834 () Bool)

(assert (=> b!7632642 m!8158834))

(declare-fun m!8158836 () Bool)

(assert (=> b!7632636 m!8158836))

(declare-fun m!8158838 () Bool)

(assert (=> b!7632639 m!8158838))

(declare-fun m!8158840 () Bool)

(assert (=> b!7632637 m!8158840))

(declare-fun m!8158842 () Bool)

(assert (=> b!7632637 m!8158842))

(declare-fun m!8158844 () Bool)

(assert (=> b!7632637 m!8158844))

(assert (=> b!7632637 m!8158844))

(declare-fun m!8158846 () Bool)

(assert (=> b!7632637 m!8158846))

(declare-fun m!8158848 () Bool)

(assert (=> start!734950 m!8158848))

(declare-fun m!8158850 () Bool)

(assert (=> b!7632640 m!8158850))

(declare-fun m!8158852 () Bool)

(assert (=> b!7632640 m!8158852))

(declare-fun m!8158854 () Bool)

(assert (=> b!7632640 m!8158854))

(assert (=> b!7632640 m!8158836))

(declare-fun m!8158856 () Bool)

(assert (=> b!7632640 m!8158856))

(push 1)

(assert (not b!7632641))

(assert (not start!734950))

(assert (not b!7632637))

(assert (not b!7632643))

(assert (not b!7632633))

(assert (not b!7632636))

(assert (not b!7632638))

(assert (not b!7632639))

(assert tp_is_empty!51139)

(assert (not b!7632632))

(assert (not b!7632640))

(assert (not b!7632642))

(assert (not b!7632630))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2324324 () Bool)

(declare-fun choose!58925 (Int) Bool)

(assert (=> d!2324324 (= (Exists!4546 lambda!469146) (choose!58925 lambda!469146))))

(declare-fun bs!1944079 () Bool)

(assert (= bs!1944079 d!2324324))

(declare-fun m!8158882 () Bool)

(assert (=> bs!1944079 m!8158882))

(assert (=> b!7632636 d!2324324))

(declare-fun d!2324326 () Bool)

(assert (=> d!2324326 (= (get!25853 lt!2659031) (v!54599 lt!2659031))))

(assert (=> b!7632637 d!2324326))

(declare-fun d!2324328 () Bool)

(assert (=> d!2324328 (matchR!9895 (Concat!29237 (regOne!41296 r!14126) (regTwo!41296 r!14126)) (++!17672 (_1!37974 lt!2659027) (_2!37974 lt!2659027)))))

(declare-fun lt!2659053 () Unit!167720)

(declare-fun choose!58926 (Regex!20392 Regex!20392 List!73243 List!73243 List!73243) Unit!167720)

(assert (=> d!2324328 (= lt!2659053 (choose!58926 (regOne!41296 r!14126) (regTwo!41296 r!14126) (_1!37974 lt!2659027) (_2!37974 lt!2659027) s!9605))))

(assert (=> d!2324328 (validRegex!10810 (regOne!41296 r!14126))))

(assert (=> d!2324328 (= (lemmaFindSeparationIsDefinedThenConcatMatches!149 (regOne!41296 r!14126) (regTwo!41296 r!14126) (_1!37974 lt!2659027) (_2!37974 lt!2659027) s!9605) lt!2659053)))

(declare-fun bs!1944080 () Bool)

(assert (= bs!1944080 d!2324328))

(assert (=> bs!1944080 m!8158844))

(assert (=> bs!1944080 m!8158844))

(declare-fun m!8158884 () Bool)

(assert (=> bs!1944080 m!8158884))

(declare-fun m!8158886 () Bool)

(assert (=> bs!1944080 m!8158886))

(assert (=> bs!1944080 m!8158834))

(assert (=> b!7632637 d!2324328))

(declare-fun b!7632734 () Bool)

(declare-fun res!3056793 () Bool)

(declare-fun e!4537627 () Bool)

(assert (=> b!7632734 (=> (not res!3056793) (not e!4537627))))

(declare-fun call!700669 () Bool)

(assert (=> b!7632734 (= res!3056793 (not call!700669))))

(declare-fun b!7632735 () Bool)

(declare-fun res!3056798 () Bool)

(declare-fun e!4537626 () Bool)

(assert (=> b!7632735 (=> res!3056798 e!4537626)))

(assert (=> b!7632735 (= res!3056798 e!4537627)))

(declare-fun res!3056794 () Bool)

(assert (=> b!7632735 (=> (not res!3056794) (not e!4537627))))

(declare-fun lt!2659056 () Bool)

(assert (=> b!7632735 (= res!3056794 lt!2659056)))

(declare-fun b!7632736 () Bool)

(declare-fun e!4537624 () Bool)

(assert (=> b!7632736 (= e!4537624 (not lt!2659056))))

(declare-fun b!7632737 () Bool)

(declare-fun e!4537625 () Bool)

(declare-fun e!4537623 () Bool)

(assert (=> b!7632737 (= e!4537625 e!4537623)))

(declare-fun res!3056796 () Bool)

(assert (=> b!7632737 (=> res!3056796 e!4537623)))

(assert (=> b!7632737 (= res!3056796 call!700669)))

(declare-fun d!2324330 () Bool)

(declare-fun e!4537628 () Bool)

(assert (=> d!2324330 e!4537628))

(declare-fun c!1406129 () Bool)

(assert (=> d!2324330 (= c!1406129 (is-EmptyExpr!20392 r!14126))))

(declare-fun e!4537622 () Bool)

(assert (=> d!2324330 (= lt!2659056 e!4537622)))

(declare-fun c!1406131 () Bool)

(declare-fun isEmpty!41752 (List!73243) Bool)

(assert (=> d!2324330 (= c!1406131 (isEmpty!41752 (++!17672 (_1!37974 lt!2659027) (_2!37974 lt!2659027))))))

(assert (=> d!2324330 (validRegex!10810 r!14126)))

(assert (=> d!2324330 (= (matchR!9895 r!14126 (++!17672 (_1!37974 lt!2659027) (_2!37974 lt!2659027))) lt!2659056)))

(declare-fun b!7632738 () Bool)

(declare-fun res!3056799 () Bool)

(assert (=> b!7632738 (=> res!3056799 e!4537623)))

(declare-fun tail!15232 (List!73243) List!73243)

(assert (=> b!7632738 (= res!3056799 (not (isEmpty!41752 (tail!15232 (++!17672 (_1!37974 lt!2659027) (_2!37974 lt!2659027))))))))

(declare-fun b!7632739 () Bool)

(declare-fun head!15692 (List!73243) C!41110)

(assert (=> b!7632739 (= e!4537627 (= (head!15692 (++!17672 (_1!37974 lt!2659027) (_2!37974 lt!2659027))) (c!1406118 r!14126)))))

(declare-fun b!7632740 () Bool)

(declare-fun res!3056800 () Bool)

(assert (=> b!7632740 (=> res!3056800 e!4537626)))

(assert (=> b!7632740 (= res!3056800 (not (is-ElementMatch!20392 r!14126)))))

(assert (=> b!7632740 (= e!4537624 e!4537626)))

(declare-fun b!7632741 () Bool)

(assert (=> b!7632741 (= e!4537628 (= lt!2659056 call!700669))))

(declare-fun b!7632742 () Bool)

(assert (=> b!7632742 (= e!4537626 e!4537625)))

(declare-fun res!3056797 () Bool)

(assert (=> b!7632742 (=> (not res!3056797) (not e!4537625))))

(assert (=> b!7632742 (= res!3056797 (not lt!2659056))))

(declare-fun b!7632743 () Bool)

(assert (=> b!7632743 (= e!4537623 (not (= (head!15692 (++!17672 (_1!37974 lt!2659027) (_2!37974 lt!2659027))) (c!1406118 r!14126))))))

(declare-fun bm!700664 () Bool)

(assert (=> bm!700664 (= call!700669 (isEmpty!41752 (++!17672 (_1!37974 lt!2659027) (_2!37974 lt!2659027))))))

(declare-fun b!7632744 () Bool)

(declare-fun res!3056795 () Bool)

(assert (=> b!7632744 (=> (not res!3056795) (not e!4537627))))

(assert (=> b!7632744 (= res!3056795 (isEmpty!41752 (tail!15232 (++!17672 (_1!37974 lt!2659027) (_2!37974 lt!2659027)))))))

(declare-fun b!7632745 () Bool)

(declare-fun nullable!8919 (Regex!20392) Bool)

(assert (=> b!7632745 (= e!4537622 (nullable!8919 r!14126))))

(declare-fun b!7632746 () Bool)

(declare-fun derivativeStep!5892 (Regex!20392 C!41110) Regex!20392)

(assert (=> b!7632746 (= e!4537622 (matchR!9895 (derivativeStep!5892 r!14126 (head!15692 (++!17672 (_1!37974 lt!2659027) (_2!37974 lt!2659027)))) (tail!15232 (++!17672 (_1!37974 lt!2659027) (_2!37974 lt!2659027)))))))

(declare-fun b!7632747 () Bool)

(assert (=> b!7632747 (= e!4537628 e!4537624)))

(declare-fun c!1406130 () Bool)

(assert (=> b!7632747 (= c!1406130 (is-EmptyLang!20392 r!14126))))

(assert (= (and d!2324330 c!1406131) b!7632745))

(assert (= (and d!2324330 (not c!1406131)) b!7632746))

(assert (= (and d!2324330 c!1406129) b!7632741))

(assert (= (and d!2324330 (not c!1406129)) b!7632747))

(assert (= (and b!7632747 c!1406130) b!7632736))

(assert (= (and b!7632747 (not c!1406130)) b!7632740))

(assert (= (and b!7632740 (not res!3056800)) b!7632735))

(assert (= (and b!7632735 res!3056794) b!7632734))

(assert (= (and b!7632734 res!3056793) b!7632744))

(assert (= (and b!7632744 res!3056795) b!7632739))

(assert (= (and b!7632735 (not res!3056798)) b!7632742))

(assert (= (and b!7632742 res!3056797) b!7632737))

(assert (= (and b!7632737 (not res!3056796)) b!7632738))

(assert (= (and b!7632738 (not res!3056799)) b!7632743))

(assert (= (or b!7632741 b!7632734 b!7632737) bm!700664))

(assert (=> b!7632738 m!8158844))

(declare-fun m!8158888 () Bool)

(assert (=> b!7632738 m!8158888))

(assert (=> b!7632738 m!8158888))

(declare-fun m!8158890 () Bool)

(assert (=> b!7632738 m!8158890))

(assert (=> b!7632746 m!8158844))

(declare-fun m!8158892 () Bool)

(assert (=> b!7632746 m!8158892))

(assert (=> b!7632746 m!8158892))

(declare-fun m!8158894 () Bool)

(assert (=> b!7632746 m!8158894))

(assert (=> b!7632746 m!8158844))

(assert (=> b!7632746 m!8158888))

(assert (=> b!7632746 m!8158894))

(assert (=> b!7632746 m!8158888))

(declare-fun m!8158896 () Bool)

(assert (=> b!7632746 m!8158896))

(assert (=> b!7632743 m!8158844))

(assert (=> b!7632743 m!8158892))

(assert (=> d!2324330 m!8158844))

(declare-fun m!8158898 () Bool)

(assert (=> d!2324330 m!8158898))

(assert (=> d!2324330 m!8158848))

(declare-fun m!8158900 () Bool)

(assert (=> b!7632745 m!8158900))

(assert (=> b!7632739 m!8158844))

(assert (=> b!7632739 m!8158892))

(assert (=> b!7632744 m!8158844))

(assert (=> b!7632744 m!8158888))

(assert (=> b!7632744 m!8158888))

(assert (=> b!7632744 m!8158890))

(assert (=> bm!700664 m!8158844))

(assert (=> bm!700664 m!8158898))

(assert (=> b!7632637 d!2324330))

(declare-fun b!7632776 () Bool)

(declare-fun res!3056816 () Bool)

(declare-fun e!4537647 () Bool)

(assert (=> b!7632776 (=> (not res!3056816) (not e!4537647))))

(declare-fun lt!2659059 () List!73243)

(declare-fun size!42568 (List!73243) Int)

(assert (=> b!7632776 (= res!3056816 (= (size!42568 lt!2659059) (+ (size!42568 (_1!37974 lt!2659027)) (size!42568 (_2!37974 lt!2659027)))))))

(declare-fun b!7632775 () Bool)

(declare-fun e!4537648 () List!73243)

(assert (=> b!7632775 (= e!4537648 (Cons!73119 (h!79567 (_1!37974 lt!2659027)) (++!17672 (t!387978 (_1!37974 lt!2659027)) (_2!37974 lt!2659027))))))

(declare-fun b!7632774 () Bool)

(assert (=> b!7632774 (= e!4537648 (_2!37974 lt!2659027))))

(declare-fun b!7632777 () Bool)

(assert (=> b!7632777 (= e!4537647 (or (not (= (_2!37974 lt!2659027) Nil!73119)) (= lt!2659059 (_1!37974 lt!2659027))))))

(declare-fun d!2324334 () Bool)

(assert (=> d!2324334 e!4537647))

(declare-fun res!3056815 () Bool)

(assert (=> d!2324334 (=> (not res!3056815) (not e!4537647))))

(declare-fun content!15475 (List!73243) (Set C!41110))

(assert (=> d!2324334 (= res!3056815 (= (content!15475 lt!2659059) (set.union (content!15475 (_1!37974 lt!2659027)) (content!15475 (_2!37974 lt!2659027)))))))

(assert (=> d!2324334 (= lt!2659059 e!4537648)))

(declare-fun c!1406138 () Bool)

(assert (=> d!2324334 (= c!1406138 (is-Nil!73119 (_1!37974 lt!2659027)))))

(assert (=> d!2324334 (= (++!17672 (_1!37974 lt!2659027) (_2!37974 lt!2659027)) lt!2659059)))

(assert (= (and d!2324334 c!1406138) b!7632774))

(assert (= (and d!2324334 (not c!1406138)) b!7632775))

(assert (= (and d!2324334 res!3056815) b!7632776))

(assert (= (and b!7632776 res!3056816) b!7632777))

(declare-fun m!8158902 () Bool)

(assert (=> b!7632776 m!8158902))

(declare-fun m!8158904 () Bool)

(assert (=> b!7632776 m!8158904))

(declare-fun m!8158906 () Bool)

(assert (=> b!7632776 m!8158906))

(declare-fun m!8158908 () Bool)

(assert (=> b!7632775 m!8158908))

(declare-fun m!8158910 () Bool)

(assert (=> d!2324334 m!8158910))

(declare-fun m!8158912 () Bool)

(assert (=> d!2324334 m!8158912))

(declare-fun m!8158914 () Bool)

(assert (=> d!2324334 m!8158914))

(assert (=> b!7632637 d!2324334))

(declare-fun d!2324336 () Bool)

(declare-fun res!3056833 () Bool)

(declare-fun e!4537674 () Bool)

(assert (=> d!2324336 (=> res!3056833 e!4537674)))

(assert (=> d!2324336 (= res!3056833 (is-ElementMatch!20392 (regOne!41296 r!14126)))))

(assert (=> d!2324336 (= (validRegex!10810 (regOne!41296 r!14126)) e!4537674)))

(declare-fun b!7632805 () Bool)

(declare-fun e!4537673 () Bool)

(declare-fun e!4537676 () Bool)

(assert (=> b!7632805 (= e!4537673 e!4537676)))

(declare-fun c!1406145 () Bool)

(assert (=> b!7632805 (= c!1406145 (is-Union!20392 (regOne!41296 r!14126)))))

(declare-fun b!7632806 () Bool)

(declare-fun e!4537672 () Bool)

(declare-fun e!4537675 () Bool)

(assert (=> b!7632806 (= e!4537672 e!4537675)))

(declare-fun res!3056836 () Bool)

(assert (=> b!7632806 (=> (not res!3056836) (not e!4537675))))

(declare-fun call!700687 () Bool)

(assert (=> b!7632806 (= res!3056836 call!700687)))

(declare-fun bm!700680 () Bool)

(declare-fun call!700685 () Bool)

(assert (=> bm!700680 (= call!700685 (validRegex!10810 (ite c!1406145 (regTwo!41297 (regOne!41296 r!14126)) (regTwo!41296 (regOne!41296 r!14126)))))))

(declare-fun b!7632807 () Bool)

(declare-fun e!4537671 () Bool)

(declare-fun call!700686 () Bool)

(assert (=> b!7632807 (= e!4537671 call!700686)))

(declare-fun b!7632808 () Bool)

(declare-fun e!4537670 () Bool)

(assert (=> b!7632808 (= e!4537670 call!700685)))

(declare-fun b!7632809 () Bool)

(assert (=> b!7632809 (= e!4537674 e!4537673)))

(declare-fun c!1406146 () Bool)

(assert (=> b!7632809 (= c!1406146 (is-Star!20392 (regOne!41296 r!14126)))))

(declare-fun b!7632810 () Bool)

(declare-fun res!3056832 () Bool)

(assert (=> b!7632810 (=> res!3056832 e!4537672)))

(assert (=> b!7632810 (= res!3056832 (not (is-Concat!29237 (regOne!41296 r!14126))))))

(assert (=> b!7632810 (= e!4537676 e!4537672)))

(declare-fun bm!700681 () Bool)

(assert (=> bm!700681 (= call!700686 (validRegex!10810 (ite c!1406146 (reg!20721 (regOne!41296 r!14126)) (ite c!1406145 (regOne!41297 (regOne!41296 r!14126)) (regOne!41296 (regOne!41296 r!14126))))))))

(declare-fun b!7632811 () Bool)

(assert (=> b!7632811 (= e!4537675 call!700685)))

(declare-fun b!7632812 () Bool)

(assert (=> b!7632812 (= e!4537673 e!4537671)))

(declare-fun res!3056834 () Bool)

(assert (=> b!7632812 (= res!3056834 (not (nullable!8919 (reg!20721 (regOne!41296 r!14126)))))))

(assert (=> b!7632812 (=> (not res!3056834) (not e!4537671))))

(declare-fun bm!700682 () Bool)

(assert (=> bm!700682 (= call!700687 call!700686)))

(declare-fun b!7632813 () Bool)

(declare-fun res!3056835 () Bool)

(assert (=> b!7632813 (=> (not res!3056835) (not e!4537670))))

(assert (=> b!7632813 (= res!3056835 call!700687)))

(assert (=> b!7632813 (= e!4537676 e!4537670)))

(assert (= (and d!2324336 (not res!3056833)) b!7632809))

(assert (= (and b!7632809 c!1406146) b!7632812))

(assert (= (and b!7632809 (not c!1406146)) b!7632805))

(assert (= (and b!7632812 res!3056834) b!7632807))

(assert (= (and b!7632805 c!1406145) b!7632813))

(assert (= (and b!7632805 (not c!1406145)) b!7632810))

(assert (= (and b!7632813 res!3056835) b!7632808))

(assert (= (and b!7632810 (not res!3056832)) b!7632806))

(assert (= (and b!7632806 res!3056836) b!7632811))

(assert (= (or b!7632813 b!7632806) bm!700682))

(assert (= (or b!7632808 b!7632811) bm!700680))

(assert (= (or b!7632807 bm!700682) bm!700681))

(declare-fun m!8158918 () Bool)

(assert (=> bm!700680 m!8158918))

(declare-fun m!8158922 () Bool)

(assert (=> bm!700681 m!8158922))

(declare-fun m!8158924 () Bool)

(assert (=> b!7632812 m!8158924))

(assert (=> b!7632642 d!2324336))

(declare-fun b!7632814 () Bool)

(declare-fun res!3056837 () Bool)

(declare-fun e!4537682 () Bool)

(assert (=> b!7632814 (=> (not res!3056837) (not e!4537682))))

(declare-fun call!700688 () Bool)

(assert (=> b!7632814 (= res!3056837 (not call!700688))))

(declare-fun b!7632815 () Bool)

(declare-fun res!3056842 () Bool)

(declare-fun e!4537681 () Bool)

(assert (=> b!7632815 (=> res!3056842 e!4537681)))

(assert (=> b!7632815 (= res!3056842 e!4537682)))

(declare-fun res!3056838 () Bool)

(assert (=> b!7632815 (=> (not res!3056838) (not e!4537682))))

(declare-fun lt!2659060 () Bool)

(assert (=> b!7632815 (= res!3056838 lt!2659060)))

(declare-fun b!7632816 () Bool)

(declare-fun e!4537679 () Bool)

(assert (=> b!7632816 (= e!4537679 (not lt!2659060))))

(declare-fun b!7632817 () Bool)

(declare-fun e!4537680 () Bool)

(declare-fun e!4537678 () Bool)

(assert (=> b!7632817 (= e!4537680 e!4537678)))

(declare-fun res!3056840 () Bool)

(assert (=> b!7632817 (=> res!3056840 e!4537678)))

(assert (=> b!7632817 (= res!3056840 call!700688)))

(declare-fun d!2324338 () Bool)

(declare-fun e!4537683 () Bool)

(assert (=> d!2324338 e!4537683))

(declare-fun c!1406147 () Bool)

(assert (=> d!2324338 (= c!1406147 (is-EmptyExpr!20392 r!14126))))

(declare-fun e!4537677 () Bool)

(assert (=> d!2324338 (= lt!2659060 e!4537677)))

(declare-fun c!1406149 () Bool)

(assert (=> d!2324338 (= c!1406149 (isEmpty!41752 s!9605))))

(assert (=> d!2324338 (validRegex!10810 r!14126)))

(assert (=> d!2324338 (= (matchR!9895 r!14126 s!9605) lt!2659060)))

(declare-fun b!7632818 () Bool)

(declare-fun res!3056843 () Bool)

(assert (=> b!7632818 (=> res!3056843 e!4537678)))

(assert (=> b!7632818 (= res!3056843 (not (isEmpty!41752 (tail!15232 s!9605))))))

(declare-fun b!7632819 () Bool)

(assert (=> b!7632819 (= e!4537682 (= (head!15692 s!9605) (c!1406118 r!14126)))))

(declare-fun b!7632820 () Bool)

(declare-fun res!3056844 () Bool)

(assert (=> b!7632820 (=> res!3056844 e!4537681)))

(assert (=> b!7632820 (= res!3056844 (not (is-ElementMatch!20392 r!14126)))))

(assert (=> b!7632820 (= e!4537679 e!4537681)))

(declare-fun b!7632821 () Bool)

(assert (=> b!7632821 (= e!4537683 (= lt!2659060 call!700688))))

(declare-fun b!7632822 () Bool)

(assert (=> b!7632822 (= e!4537681 e!4537680)))

(declare-fun res!3056841 () Bool)

(assert (=> b!7632822 (=> (not res!3056841) (not e!4537680))))

(assert (=> b!7632822 (= res!3056841 (not lt!2659060))))

(declare-fun b!7632823 () Bool)

(assert (=> b!7632823 (= e!4537678 (not (= (head!15692 s!9605) (c!1406118 r!14126))))))

(declare-fun bm!700683 () Bool)

(assert (=> bm!700683 (= call!700688 (isEmpty!41752 s!9605))))

(declare-fun b!7632824 () Bool)

(declare-fun res!3056839 () Bool)

(assert (=> b!7632824 (=> (not res!3056839) (not e!4537682))))

(assert (=> b!7632824 (= res!3056839 (isEmpty!41752 (tail!15232 s!9605)))))

(declare-fun b!7632825 () Bool)

(assert (=> b!7632825 (= e!4537677 (nullable!8919 r!14126))))

(declare-fun b!7632826 () Bool)

(assert (=> b!7632826 (= e!4537677 (matchR!9895 (derivativeStep!5892 r!14126 (head!15692 s!9605)) (tail!15232 s!9605)))))

(declare-fun b!7632827 () Bool)

(assert (=> b!7632827 (= e!4537683 e!4537679)))

(declare-fun c!1406148 () Bool)

(assert (=> b!7632827 (= c!1406148 (is-EmptyLang!20392 r!14126))))

(assert (= (and d!2324338 c!1406149) b!7632825))

(assert (= (and d!2324338 (not c!1406149)) b!7632826))

(assert (= (and d!2324338 c!1406147) b!7632821))

(assert (= (and d!2324338 (not c!1406147)) b!7632827))

(assert (= (and b!7632827 c!1406148) b!7632816))

(assert (= (and b!7632827 (not c!1406148)) b!7632820))

(assert (= (and b!7632820 (not res!3056844)) b!7632815))

(assert (= (and b!7632815 res!3056838) b!7632814))

(assert (= (and b!7632814 res!3056837) b!7632824))

(assert (= (and b!7632824 res!3056839) b!7632819))

(assert (= (and b!7632815 (not res!3056842)) b!7632822))

(assert (= (and b!7632822 res!3056841) b!7632817))

(assert (= (and b!7632817 (not res!3056840)) b!7632818))

(assert (= (and b!7632818 (not res!3056843)) b!7632823))

(assert (= (or b!7632821 b!7632814 b!7632817) bm!700683))

(declare-fun m!8158928 () Bool)

(assert (=> b!7632818 m!8158928))

(assert (=> b!7632818 m!8158928))

(declare-fun m!8158930 () Bool)

(assert (=> b!7632818 m!8158930))

(declare-fun m!8158932 () Bool)

(assert (=> b!7632826 m!8158932))

(assert (=> b!7632826 m!8158932))

(declare-fun m!8158934 () Bool)

(assert (=> b!7632826 m!8158934))

(assert (=> b!7632826 m!8158928))

(assert (=> b!7632826 m!8158934))

(assert (=> b!7632826 m!8158928))

(declare-fun m!8158936 () Bool)

(assert (=> b!7632826 m!8158936))

(assert (=> b!7632823 m!8158932))

(declare-fun m!8158938 () Bool)

(assert (=> d!2324338 m!8158938))

(assert (=> d!2324338 m!8158848))

(assert (=> b!7632825 m!8158900))

(assert (=> b!7632819 m!8158932))

(assert (=> b!7632824 m!8158928))

(assert (=> b!7632824 m!8158928))

(assert (=> b!7632824 m!8158930))

(assert (=> bm!700683 m!8158938))

(assert (=> b!7632640 d!2324338))

(assert (=> b!7632640 d!2324324))

(declare-fun bs!1944081 () Bool)

(declare-fun d!2324342 () Bool)

(assert (= bs!1944081 (and d!2324342 b!7632640)))

(declare-fun lambda!469154 () Int)

(assert (=> bs!1944081 (= lambda!469154 lambda!469146)))

(assert (=> d!2324342 true))

(assert (=> d!2324342 true))

(assert (=> d!2324342 true))

(assert (=> d!2324342 (= (isDefined!14081 (findConcatSeparation!3495 (regOne!41296 r!14126) (regTwo!41296 r!14126) Nil!73119 s!9605 s!9605)) (Exists!4546 lambda!469154))))

(declare-fun lt!2659065 () Unit!167720)

(declare-fun choose!58927 (Regex!20392 Regex!20392 List!73243) Unit!167720)

(assert (=> d!2324342 (= lt!2659065 (choose!58927 (regOne!41296 r!14126) (regTwo!41296 r!14126) s!9605))))

(assert (=> d!2324342 (validRegex!10810 (regOne!41296 r!14126))))

(assert (=> d!2324342 (= (lemmaFindConcatSeparationEquivalentToExists!3253 (regOne!41296 r!14126) (regTwo!41296 r!14126) s!9605) lt!2659065)))

(declare-fun bs!1944082 () Bool)

(assert (= bs!1944082 d!2324342))

(assert (=> bs!1944082 m!8158856))

(assert (=> bs!1944082 m!8158856))

(declare-fun m!8158940 () Bool)

(assert (=> bs!1944082 m!8158940))

(assert (=> bs!1944082 m!8158834))

(declare-fun m!8158942 () Bool)

(assert (=> bs!1944082 m!8158942))

(declare-fun m!8158944 () Bool)

(assert (=> bs!1944082 m!8158944))

(assert (=> b!7632640 d!2324342))

(declare-fun b!7632871 () Bool)

(declare-fun e!4537712 () Bool)

(declare-fun lt!2659076 () Option!17465)

(assert (=> b!7632871 (= e!4537712 (not (isDefined!14081 lt!2659076)))))

(declare-fun b!7632872 () Bool)

(declare-fun res!3056870 () Bool)

(declare-fun e!4537711 () Bool)

(assert (=> b!7632872 (=> (not res!3056870) (not e!4537711))))

(assert (=> b!7632872 (= res!3056870 (matchR!9895 (regOne!41296 r!14126) (_1!37974 (get!25853 lt!2659076))))))

(declare-fun b!7632873 () Bool)

(declare-fun e!4537713 () Option!17465)

(declare-fun e!4537709 () Option!17465)

(assert (=> b!7632873 (= e!4537713 e!4537709)))

(declare-fun c!1406159 () Bool)

(assert (=> b!7632873 (= c!1406159 (is-Nil!73119 s!9605))))

(declare-fun b!7632874 () Bool)

(assert (=> b!7632874 (= e!4537711 (= (++!17672 (_1!37974 (get!25853 lt!2659076)) (_2!37974 (get!25853 lt!2659076))) s!9605))))

(declare-fun b!7632875 () Bool)

(assert (=> b!7632875 (= e!4537709 None!17464)))

(declare-fun b!7632876 () Bool)

(declare-fun e!4537710 () Bool)

(assert (=> b!7632876 (= e!4537710 (matchR!9895 (regTwo!41296 r!14126) s!9605))))

(declare-fun d!2324344 () Bool)

(assert (=> d!2324344 e!4537712))

(declare-fun res!3056871 () Bool)

(assert (=> d!2324344 (=> res!3056871 e!4537712)))

(assert (=> d!2324344 (= res!3056871 e!4537711)))

(declare-fun res!3056872 () Bool)

(assert (=> d!2324344 (=> (not res!3056872) (not e!4537711))))

(assert (=> d!2324344 (= res!3056872 (isDefined!14081 lt!2659076))))

(assert (=> d!2324344 (= lt!2659076 e!4537713)))

(declare-fun c!1406160 () Bool)

(assert (=> d!2324344 (= c!1406160 e!4537710)))

(declare-fun res!3056873 () Bool)

(assert (=> d!2324344 (=> (not res!3056873) (not e!4537710))))

(assert (=> d!2324344 (= res!3056873 (matchR!9895 (regOne!41296 r!14126) Nil!73119))))

(assert (=> d!2324344 (validRegex!10810 (regOne!41296 r!14126))))

(assert (=> d!2324344 (= (findConcatSeparation!3495 (regOne!41296 r!14126) (regTwo!41296 r!14126) Nil!73119 s!9605 s!9605) lt!2659076)))

(declare-fun b!7632877 () Bool)

(declare-fun res!3056874 () Bool)

(assert (=> b!7632877 (=> (not res!3056874) (not e!4537711))))

(assert (=> b!7632877 (= res!3056874 (matchR!9895 (regTwo!41296 r!14126) (_2!37974 (get!25853 lt!2659076))))))

(declare-fun b!7632878 () Bool)

(assert (=> b!7632878 (= e!4537713 (Some!17464 (tuple2!69343 Nil!73119 s!9605)))))

(declare-fun b!7632879 () Bool)

(declare-fun lt!2659077 () Unit!167720)

(declare-fun lt!2659078 () Unit!167720)

(assert (=> b!7632879 (= lt!2659077 lt!2659078)))

(assert (=> b!7632879 (= (++!17672 (++!17672 Nil!73119 (Cons!73119 (h!79567 s!9605) Nil!73119)) (t!387978 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3247 (List!73243 C!41110 List!73243 List!73243) Unit!167720)

(assert (=> b!7632879 (= lt!2659078 (lemmaMoveElementToOtherListKeepsConcatEq!3247 Nil!73119 (h!79567 s!9605) (t!387978 s!9605) s!9605))))

(assert (=> b!7632879 (= e!4537709 (findConcatSeparation!3495 (regOne!41296 r!14126) (regTwo!41296 r!14126) (++!17672 Nil!73119 (Cons!73119 (h!79567 s!9605) Nil!73119)) (t!387978 s!9605) s!9605))))

(assert (= (and d!2324344 res!3056873) b!7632876))

(assert (= (and d!2324344 c!1406160) b!7632878))

(assert (= (and d!2324344 (not c!1406160)) b!7632873))

(assert (= (and b!7632873 c!1406159) b!7632875))

(assert (= (and b!7632873 (not c!1406159)) b!7632879))

(assert (= (and d!2324344 res!3056872) b!7632872))

(assert (= (and b!7632872 res!3056870) b!7632877))

(assert (= (and b!7632877 res!3056874) b!7632874))

(assert (= (and d!2324344 (not res!3056871)) b!7632871))

(declare-fun m!8158970 () Bool)

(assert (=> b!7632871 m!8158970))

(declare-fun m!8158972 () Bool)

(assert (=> b!7632874 m!8158972))

(declare-fun m!8158974 () Bool)

(assert (=> b!7632874 m!8158974))

(assert (=> b!7632872 m!8158972))

(declare-fun m!8158976 () Bool)

(assert (=> b!7632872 m!8158976))

(declare-fun m!8158978 () Bool)

(assert (=> b!7632879 m!8158978))

(assert (=> b!7632879 m!8158978))

(declare-fun m!8158980 () Bool)

(assert (=> b!7632879 m!8158980))

(declare-fun m!8158982 () Bool)

(assert (=> b!7632879 m!8158982))

(assert (=> b!7632879 m!8158978))

(declare-fun m!8158984 () Bool)

(assert (=> b!7632879 m!8158984))

(assert (=> d!2324344 m!8158970))

(declare-fun m!8158986 () Bool)

(assert (=> d!2324344 m!8158986))

(assert (=> d!2324344 m!8158834))

(assert (=> b!7632877 m!8158972))

(declare-fun m!8158988 () Bool)

(assert (=> b!7632877 m!8158988))

(declare-fun m!8158990 () Bool)

(assert (=> b!7632876 m!8158990))

(assert (=> b!7632640 d!2324344))

(declare-fun d!2324354 () Bool)

(declare-fun isEmpty!41753 (Option!17465) Bool)

(assert (=> d!2324354 (= (isDefined!14081 lt!2659031) (not (isEmpty!41753 lt!2659031)))))

(declare-fun bs!1944084 () Bool)

(assert (= bs!1944084 d!2324354))

(declare-fun m!8158992 () Bool)

(assert (=> bs!1944084 m!8158992))

(assert (=> b!7632640 d!2324354))

(declare-fun b!7632882 () Bool)

(declare-fun res!3056876 () Bool)

(declare-fun e!4537714 () Bool)

(assert (=> b!7632882 (=> (not res!3056876) (not e!4537714))))

(declare-fun lt!2659079 () List!73243)

(assert (=> b!7632882 (= res!3056876 (= (size!42568 lt!2659079) (+ (size!42568 (_1!37974 cut!18)) (size!42568 (_2!37974 cut!18)))))))

(declare-fun b!7632881 () Bool)

(declare-fun e!4537715 () List!73243)

(assert (=> b!7632881 (= e!4537715 (Cons!73119 (h!79567 (_1!37974 cut!18)) (++!17672 (t!387978 (_1!37974 cut!18)) (_2!37974 cut!18))))))

(declare-fun b!7632880 () Bool)

(assert (=> b!7632880 (= e!4537715 (_2!37974 cut!18))))

(declare-fun b!7632883 () Bool)

(assert (=> b!7632883 (= e!4537714 (or (not (= (_2!37974 cut!18) Nil!73119)) (= lt!2659079 (_1!37974 cut!18))))))

(declare-fun d!2324356 () Bool)

(assert (=> d!2324356 e!4537714))

(declare-fun res!3056875 () Bool)

(assert (=> d!2324356 (=> (not res!3056875) (not e!4537714))))

(assert (=> d!2324356 (= res!3056875 (= (content!15475 lt!2659079) (set.union (content!15475 (_1!37974 cut!18)) (content!15475 (_2!37974 cut!18)))))))

(assert (=> d!2324356 (= lt!2659079 e!4537715)))

(declare-fun c!1406161 () Bool)

(assert (=> d!2324356 (= c!1406161 (is-Nil!73119 (_1!37974 cut!18)))))

(assert (=> d!2324356 (= (++!17672 (_1!37974 cut!18) (_2!37974 cut!18)) lt!2659079)))

(assert (= (and d!2324356 c!1406161) b!7632880))

(assert (= (and d!2324356 (not c!1406161)) b!7632881))

(assert (= (and d!2324356 res!3056875) b!7632882))

(assert (= (and b!7632882 res!3056876) b!7632883))

(declare-fun m!8158994 () Bool)

(assert (=> b!7632882 m!8158994))

(declare-fun m!8158996 () Bool)

(assert (=> b!7632882 m!8158996))

(declare-fun m!8158998 () Bool)

(assert (=> b!7632882 m!8158998))

(declare-fun m!8159000 () Bool)

(assert (=> b!7632881 m!8159000))

(declare-fun m!8159002 () Bool)

(assert (=> d!2324356 m!8159002))

(declare-fun m!8159004 () Bool)

(assert (=> d!2324356 m!8159004))

(declare-fun m!8159006 () Bool)

(assert (=> d!2324356 m!8159006))

(assert (=> b!7632639 d!2324356))

(declare-fun d!2324358 () Bool)

(declare-fun res!3056878 () Bool)

(declare-fun e!4537720 () Bool)

(assert (=> d!2324358 (=> res!3056878 e!4537720)))

(assert (=> d!2324358 (= res!3056878 (is-ElementMatch!20392 r!14126))))

(assert (=> d!2324358 (= (validRegex!10810 r!14126) e!4537720)))

(declare-fun b!7632884 () Bool)

(declare-fun e!4537719 () Bool)

(declare-fun e!4537722 () Bool)

(assert (=> b!7632884 (= e!4537719 e!4537722)))

(declare-fun c!1406162 () Bool)

(assert (=> b!7632884 (= c!1406162 (is-Union!20392 r!14126))))

(declare-fun b!7632885 () Bool)

(declare-fun e!4537718 () Bool)

(declare-fun e!4537721 () Bool)

(assert (=> b!7632885 (= e!4537718 e!4537721)))

(declare-fun res!3056881 () Bool)

(assert (=> b!7632885 (=> (not res!3056881) (not e!4537721))))

(declare-fun call!700694 () Bool)

(assert (=> b!7632885 (= res!3056881 call!700694)))

(declare-fun bm!700687 () Bool)

(declare-fun call!700692 () Bool)

(assert (=> bm!700687 (= call!700692 (validRegex!10810 (ite c!1406162 (regTwo!41297 r!14126) (regTwo!41296 r!14126))))))

(declare-fun b!7632886 () Bool)

(declare-fun e!4537717 () Bool)

(declare-fun call!700693 () Bool)

(assert (=> b!7632886 (= e!4537717 call!700693)))

(declare-fun b!7632887 () Bool)

(declare-fun e!4537716 () Bool)

(assert (=> b!7632887 (= e!4537716 call!700692)))

(declare-fun b!7632888 () Bool)

(assert (=> b!7632888 (= e!4537720 e!4537719)))

(declare-fun c!1406163 () Bool)

(assert (=> b!7632888 (= c!1406163 (is-Star!20392 r!14126))))

(declare-fun b!7632889 () Bool)

(declare-fun res!3056877 () Bool)

(assert (=> b!7632889 (=> res!3056877 e!4537718)))

(assert (=> b!7632889 (= res!3056877 (not (is-Concat!29237 r!14126)))))

(assert (=> b!7632889 (= e!4537722 e!4537718)))

(declare-fun bm!700688 () Bool)

(assert (=> bm!700688 (= call!700693 (validRegex!10810 (ite c!1406163 (reg!20721 r!14126) (ite c!1406162 (regOne!41297 r!14126) (regOne!41296 r!14126)))))))

(declare-fun b!7632890 () Bool)

(assert (=> b!7632890 (= e!4537721 call!700692)))

(declare-fun b!7632891 () Bool)

(assert (=> b!7632891 (= e!4537719 e!4537717)))

(declare-fun res!3056879 () Bool)

(assert (=> b!7632891 (= res!3056879 (not (nullable!8919 (reg!20721 r!14126))))))

(assert (=> b!7632891 (=> (not res!3056879) (not e!4537717))))

(declare-fun bm!700689 () Bool)

(assert (=> bm!700689 (= call!700694 call!700693)))

(declare-fun b!7632892 () Bool)

(declare-fun res!3056880 () Bool)

(assert (=> b!7632892 (=> (not res!3056880) (not e!4537716))))

(assert (=> b!7632892 (= res!3056880 call!700694)))

(assert (=> b!7632892 (= e!4537722 e!4537716)))

(assert (= (and d!2324358 (not res!3056878)) b!7632888))

(assert (= (and b!7632888 c!1406163) b!7632891))

(assert (= (and b!7632888 (not c!1406163)) b!7632884))

(assert (= (and b!7632891 res!3056879) b!7632886))

(assert (= (and b!7632884 c!1406162) b!7632892))

(assert (= (and b!7632884 (not c!1406162)) b!7632889))

(assert (= (and b!7632892 res!3056880) b!7632887))

(assert (= (and b!7632889 (not res!3056877)) b!7632885))

(assert (= (and b!7632885 res!3056881) b!7632890))

(assert (= (or b!7632892 b!7632885) bm!700689))

(assert (= (or b!7632887 b!7632890) bm!700687))

(assert (= (or b!7632886 bm!700689) bm!700688))

(declare-fun m!8159008 () Bool)

(assert (=> bm!700687 m!8159008))

(declare-fun m!8159010 () Bool)

(assert (=> bm!700688 m!8159010))

(declare-fun m!8159012 () Bool)

(assert (=> b!7632891 m!8159012))

(assert (=> start!734950 d!2324358))

(declare-fun b!7632897 () Bool)

(declare-fun e!4537725 () Bool)

(declare-fun tp!2228364 () Bool)

(assert (=> b!7632897 (= e!4537725 (and tp_is_empty!51139 tp!2228364))))

(assert (=> b!7632643 (= tp!2228334 e!4537725)))

(assert (= (and b!7632643 (is-Cons!73119 (t!387978 (_2!37974 cut!18)))) b!7632897))

(declare-fun e!4537728 () Bool)

(assert (=> b!7632632 (= tp!2228337 e!4537728)))

(declare-fun b!7632908 () Bool)

(assert (=> b!7632908 (= e!4537728 tp_is_empty!51139)))

(declare-fun b!7632911 () Bool)

(declare-fun tp!2228375 () Bool)

(declare-fun tp!2228379 () Bool)

(assert (=> b!7632911 (= e!4537728 (and tp!2228375 tp!2228379))))

(declare-fun b!7632910 () Bool)

(declare-fun tp!2228378 () Bool)

(assert (=> b!7632910 (= e!4537728 tp!2228378)))

(declare-fun b!7632909 () Bool)

(declare-fun tp!2228377 () Bool)

(declare-fun tp!2228376 () Bool)

(assert (=> b!7632909 (= e!4537728 (and tp!2228377 tp!2228376))))

(assert (= (and b!7632632 (is-ElementMatch!20392 (regOne!41297 r!14126))) b!7632908))

(assert (= (and b!7632632 (is-Concat!29237 (regOne!41297 r!14126))) b!7632909))

(assert (= (and b!7632632 (is-Star!20392 (regOne!41297 r!14126))) b!7632910))

(assert (= (and b!7632632 (is-Union!20392 (regOne!41297 r!14126))) b!7632911))

(declare-fun e!4537729 () Bool)

(assert (=> b!7632632 (= tp!2228332 e!4537729)))

(declare-fun b!7632912 () Bool)

(assert (=> b!7632912 (= e!4537729 tp_is_empty!51139)))

(declare-fun b!7632915 () Bool)

(declare-fun tp!2228380 () Bool)

(declare-fun tp!2228384 () Bool)

(assert (=> b!7632915 (= e!4537729 (and tp!2228380 tp!2228384))))

(declare-fun b!7632914 () Bool)

(declare-fun tp!2228383 () Bool)

(assert (=> b!7632914 (= e!4537729 tp!2228383)))

(declare-fun b!7632913 () Bool)

(declare-fun tp!2228382 () Bool)

(declare-fun tp!2228381 () Bool)

(assert (=> b!7632913 (= e!4537729 (and tp!2228382 tp!2228381))))

(assert (= (and b!7632632 (is-ElementMatch!20392 (regTwo!41297 r!14126))) b!7632912))

(assert (= (and b!7632632 (is-Concat!29237 (regTwo!41297 r!14126))) b!7632913))

(assert (= (and b!7632632 (is-Star!20392 (regTwo!41297 r!14126))) b!7632914))

(assert (= (and b!7632632 (is-Union!20392 (regTwo!41297 r!14126))) b!7632915))

(declare-fun e!4537730 () Bool)

(assert (=> b!7632633 (= tp!2228331 e!4537730)))

(declare-fun b!7632916 () Bool)

(assert (=> b!7632916 (= e!4537730 tp_is_empty!51139)))

(declare-fun b!7632919 () Bool)

(declare-fun tp!2228385 () Bool)

(declare-fun tp!2228389 () Bool)

(assert (=> b!7632919 (= e!4537730 (and tp!2228385 tp!2228389))))

(declare-fun b!7632918 () Bool)

(declare-fun tp!2228388 () Bool)

(assert (=> b!7632918 (= e!4537730 tp!2228388)))

(declare-fun b!7632917 () Bool)

(declare-fun tp!2228387 () Bool)

(declare-fun tp!2228386 () Bool)

(assert (=> b!7632917 (= e!4537730 (and tp!2228387 tp!2228386))))

(assert (= (and b!7632633 (is-ElementMatch!20392 (reg!20721 r!14126))) b!7632916))

(assert (= (and b!7632633 (is-Concat!29237 (reg!20721 r!14126))) b!7632917))

(assert (= (and b!7632633 (is-Star!20392 (reg!20721 r!14126))) b!7632918))

(assert (= (and b!7632633 (is-Union!20392 (reg!20721 r!14126))) b!7632919))

(declare-fun b!7632920 () Bool)

(declare-fun e!4537731 () Bool)

(declare-fun tp!2228390 () Bool)

(assert (=> b!7632920 (= e!4537731 (and tp_is_empty!51139 tp!2228390))))

(assert (=> b!7632638 (= tp!2228336 e!4537731)))

(assert (= (and b!7632638 (is-Cons!73119 (t!387978 s!9605))) b!7632920))

(declare-fun e!4537732 () Bool)

(assert (=> b!7632641 (= tp!2228335 e!4537732)))

(declare-fun b!7632921 () Bool)

(assert (=> b!7632921 (= e!4537732 tp_is_empty!51139)))

(declare-fun b!7632924 () Bool)

(declare-fun tp!2228391 () Bool)

(declare-fun tp!2228395 () Bool)

(assert (=> b!7632924 (= e!4537732 (and tp!2228391 tp!2228395))))

(declare-fun b!7632923 () Bool)

(declare-fun tp!2228394 () Bool)

(assert (=> b!7632923 (= e!4537732 tp!2228394)))

(declare-fun b!7632922 () Bool)

(declare-fun tp!2228393 () Bool)

(declare-fun tp!2228392 () Bool)

(assert (=> b!7632922 (= e!4537732 (and tp!2228393 tp!2228392))))

(assert (= (and b!7632641 (is-ElementMatch!20392 (regOne!41296 r!14126))) b!7632921))

(assert (= (and b!7632641 (is-Concat!29237 (regOne!41296 r!14126))) b!7632922))

(assert (= (and b!7632641 (is-Star!20392 (regOne!41296 r!14126))) b!7632923))

(assert (= (and b!7632641 (is-Union!20392 (regOne!41296 r!14126))) b!7632924))

(declare-fun e!4537733 () Bool)

(assert (=> b!7632641 (= tp!2228330 e!4537733)))

(declare-fun b!7632925 () Bool)

(assert (=> b!7632925 (= e!4537733 tp_is_empty!51139)))

(declare-fun b!7632928 () Bool)

(declare-fun tp!2228396 () Bool)

(declare-fun tp!2228400 () Bool)

(assert (=> b!7632928 (= e!4537733 (and tp!2228396 tp!2228400))))

(declare-fun b!7632927 () Bool)

(declare-fun tp!2228399 () Bool)

(assert (=> b!7632927 (= e!4537733 tp!2228399)))

(declare-fun b!7632926 () Bool)

(declare-fun tp!2228398 () Bool)

(declare-fun tp!2228397 () Bool)

(assert (=> b!7632926 (= e!4537733 (and tp!2228398 tp!2228397))))

(assert (= (and b!7632641 (is-ElementMatch!20392 (regTwo!41296 r!14126))) b!7632925))

(assert (= (and b!7632641 (is-Concat!29237 (regTwo!41296 r!14126))) b!7632926))

(assert (= (and b!7632641 (is-Star!20392 (regTwo!41296 r!14126))) b!7632927))

(assert (= (and b!7632641 (is-Union!20392 (regTwo!41296 r!14126))) b!7632928))

(declare-fun b!7632929 () Bool)

(declare-fun e!4537734 () Bool)

(declare-fun tp!2228401 () Bool)

(assert (=> b!7632929 (= e!4537734 (and tp_is_empty!51139 tp!2228401))))

(assert (=> b!7632630 (= tp!2228333 e!4537734)))

(assert (= (and b!7632630 (is-Cons!73119 (t!387978 (_1!37974 cut!18)))) b!7632929))

(push 1)

(assert (not d!2324330))

(assert (not d!2324342))

(assert (not bm!700683))

(assert (not b!7632877))

(assert (not bm!700688))

(assert (not b!7632744))

(assert (not b!7632911))

(assert (not b!7632910))

(assert (not b!7632818))

(assert (not b!7632876))

(assert (not b!7632776))

(assert (not b!7632917))

(assert (not b!7632929))

(assert (not b!7632918))

(assert (not b!7632881))

(assert (not b!7632922))

(assert (not d!2324324))

(assert (not b!7632920))

(assert (not b!7632879))

(assert (not b!7632913))

(assert (not b!7632819))

(assert (not b!7632919))

(assert (not b!7632923))

(assert (not b!7632874))

(assert (not d!2324356))

(assert (not b!7632824))

(assert (not d!2324334))

(assert (not b!7632826))

(assert (not d!2324328))

(assert (not d!2324354))

(assert (not d!2324338))

(assert (not d!2324344))

(assert (not b!7632928))

(assert (not b!7632909))

(assert (not b!7632914))

(assert (not bm!700681))

(assert (not b!7632746))

(assert (not b!7632872))

(assert (not b!7632871))

(assert (not b!7632775))

(assert (not b!7632739))

(assert (not bm!700664))

(assert (not bm!700680))

(assert (not b!7632882))

(assert (not b!7632891))

(assert (not b!7632823))

(assert (not b!7632915))

(assert (not b!7632927))

(assert (not b!7632825))

(assert (not bm!700687))

(assert (not b!7632926))

(assert (not b!7632924))

(assert (not b!7632743))

(assert (not b!7632812))

(assert (not b!7632745))

(assert (not b!7632897))

(assert (not b!7632738))

(assert tp_is_empty!51139)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

