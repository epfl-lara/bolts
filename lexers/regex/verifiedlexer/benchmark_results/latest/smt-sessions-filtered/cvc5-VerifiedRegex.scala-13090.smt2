; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716406 () Bool)

(assert start!716406)

(declare-fun b!7334667 () Bool)

(declare-fun e!4392065 () Bool)

(declare-fun tp!2082132 () Bool)

(assert (=> b!7334667 (= e!4392065 tp!2082132)))

(declare-fun b!7334668 () Bool)

(declare-fun e!4392063 () Bool)

(declare-datatypes ((C!38410 0))(
  ( (C!38411 (val!29565 Int)) )
))
(declare-datatypes ((Regex!19068 0))(
  ( (ElementMatch!19068 (c!1362190 C!38410)) (Concat!27913 (regOne!38648 Regex!19068) (regTwo!38648 Regex!19068)) (EmptyExpr!19068) (Star!19068 (reg!19397 Regex!19068)) (EmptyLang!19068) (Union!19068 (regOne!38649 Regex!19068) (regTwo!38649 Regex!19068)) )
))
(declare-datatypes ((List!71564 0))(
  ( (Nil!71440) (Cons!71440 (h!77888 Regex!19068) (t!385959 List!71564)) )
))
(declare-datatypes ((Context!16016 0))(
  ( (Context!16017 (exprs!8508 List!71564)) )
))
(declare-fun lt!2608805 () Context!16016)

(declare-fun inv!91011 (Context!16016) Bool)

(assert (=> b!7334668 (= e!4392063 (not (inv!91011 lt!2608805)))))

(declare-fun lambda!455012 () Int)

(declare-fun cWitness!35 () Context!16016)

(declare-datatypes ((Unit!165097 0))(
  ( (Unit!165098) )
))
(declare-fun lt!2608799 () Unit!165097)

(declare-fun ct2!352 () Context!16016)

(declare-fun lemmaConcatPreservesForall!1747 (List!71564 List!71564 Int) Unit!165097)

(assert (=> b!7334668 (= lt!2608799 (lemmaConcatPreservesForall!1747 (exprs!8508 cWitness!35) (exprs!8508 ct2!352) lambda!455012))))

(declare-fun c!10305 () C!38410)

(declare-fun lt!2608800 () List!71564)

(declare-fun ct1!256 () Context!16016)

(declare-fun derivationStepZipperDown!2895 (Regex!19068 Context!16016 C!38410) (Set Context!16016))

(declare-fun ++!16890 (List!71564 List!71564) List!71564)

(assert (=> b!7334668 (set.member lt!2608805 (derivationStepZipperDown!2895 (h!77888 (exprs!8508 ct1!256)) (Context!16017 (++!16890 lt!2608800 (exprs!8508 ct2!352))) c!10305))))

(assert (=> b!7334668 (= lt!2608805 (Context!16017 (++!16890 (exprs!8508 cWitness!35) (exprs!8508 ct2!352))))))

(declare-fun lt!2608804 () Unit!165097)

(assert (=> b!7334668 (= lt!2608804 (lemmaConcatPreservesForall!1747 lt!2608800 (exprs!8508 ct2!352) lambda!455012))))

(declare-fun lt!2608803 () Unit!165097)

(assert (=> b!7334668 (= lt!2608803 (lemmaConcatPreservesForall!1747 (exprs!8508 cWitness!35) (exprs!8508 ct2!352) lambda!455012))))

(declare-fun lt!2608809 () Context!16016)

(declare-fun lt!2608806 () Unit!165097)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!33 (Regex!19068 Context!16016 Context!16016 Context!16016 C!38410) Unit!165097)

(assert (=> b!7334668 (= lt!2608806 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!33 (h!77888 (exprs!8508 ct1!256)) lt!2608809 ct2!352 cWitness!35 c!10305))))

(declare-fun lt!2608802 () (Set Context!16016))

(declare-fun lt!2608808 () List!71564)

(declare-fun tail!14749 (List!71564) List!71564)

(assert (=> b!7334668 (= lt!2608802 (derivationStepZipperDown!2895 (h!77888 (exprs!8508 ct1!256)) (Context!16017 (tail!14749 lt!2608808)) c!10305))))

(declare-fun b!7334669 () Bool)

(declare-fun e!4392066 () Bool)

(declare-fun tp!2082133 () Bool)

(assert (=> b!7334669 (= e!4392066 tp!2082133)))

(declare-fun b!7334670 () Bool)

(declare-fun e!4392068 () Bool)

(assert (=> b!7334670 (= e!4392068 e!4392063)))

(declare-fun res!2963862 () Bool)

(assert (=> b!7334670 (=> (not res!2963862) (not e!4392063))))

(declare-fun nullable!8169 (Regex!19068) Bool)

(assert (=> b!7334670 (= res!2963862 (not (nullable!8169 (h!77888 (exprs!8508 ct1!256)))))))

(declare-fun lt!2608801 () (Set Context!16016))

(assert (=> b!7334670 (= lt!2608801 (derivationStepZipperDown!2895 (h!77888 (exprs!8508 ct1!256)) lt!2608809 c!10305))))

(assert (=> b!7334670 (= lt!2608809 (Context!16017 lt!2608800))))

(assert (=> b!7334670 (= lt!2608800 (tail!14749 (exprs!8508 ct1!256)))))

(declare-fun b!7334671 () Bool)

(declare-fun res!2963861 () Bool)

(assert (=> b!7334671 (=> (not res!2963861) (not e!4392063))))

(declare-fun lt!2608807 () (Set Context!16016))

(assert (=> b!7334671 (= res!2963861 (and (= lt!2608807 lt!2608801) (set.member cWitness!35 lt!2608801)))))

(declare-fun res!2963864 () Bool)

(declare-fun e!4392064 () Bool)

(assert (=> start!716406 (=> (not res!2963864) (not e!4392064))))

(assert (=> start!716406 (= res!2963864 (set.member cWitness!35 lt!2608807))))

(declare-fun derivationStepZipperUp!2748 (Context!16016 C!38410) (Set Context!16016))

(assert (=> start!716406 (= lt!2608807 (derivationStepZipperUp!2748 ct1!256 c!10305))))

(assert (=> start!716406 e!4392064))

(declare-fun tp_is_empty!48381 () Bool)

(assert (=> start!716406 tp_is_empty!48381))

(assert (=> start!716406 (and (inv!91011 cWitness!35) e!4392065)))

(assert (=> start!716406 (and (inv!91011 ct1!256) e!4392066)))

(declare-fun e!4392067 () Bool)

(assert (=> start!716406 (and (inv!91011 ct2!352) e!4392067)))

(declare-fun b!7334666 () Bool)

(declare-fun res!2963865 () Bool)

(assert (=> b!7334666 (=> (not res!2963865) (not e!4392068))))

(declare-fun isEmpty!40980 (List!71564) Bool)

(assert (=> b!7334666 (= res!2963865 (not (isEmpty!40980 (exprs!8508 ct1!256))))))

(declare-fun b!7334672 () Bool)

(assert (=> b!7334672 (= e!4392064 e!4392068)))

(declare-fun res!2963866 () Bool)

(assert (=> b!7334672 (=> (not res!2963866) (not e!4392068))))

(assert (=> b!7334672 (= res!2963866 (is-Cons!71440 (exprs!8508 ct1!256)))))

(assert (=> b!7334672 (= lt!2608808 (++!16890 (exprs!8508 ct1!256) (exprs!8508 ct2!352)))))

(declare-fun lt!2608798 () Unit!165097)

(assert (=> b!7334672 (= lt!2608798 (lemmaConcatPreservesForall!1747 (exprs!8508 ct1!256) (exprs!8508 ct2!352) lambda!455012))))

(declare-fun b!7334673 () Bool)

(declare-fun res!2963863 () Bool)

(assert (=> b!7334673 (=> (not res!2963863) (not e!4392063))))

(assert (=> b!7334673 (= res!2963863 (not (isEmpty!40980 lt!2608808)))))

(declare-fun b!7334674 () Bool)

(declare-fun tp!2082134 () Bool)

(assert (=> b!7334674 (= e!4392067 tp!2082134)))

(assert (= (and start!716406 res!2963864) b!7334672))

(assert (= (and b!7334672 res!2963866) b!7334666))

(assert (= (and b!7334666 res!2963865) b!7334670))

(assert (= (and b!7334670 res!2963862) b!7334671))

(assert (= (and b!7334671 res!2963861) b!7334673))

(assert (= (and b!7334673 res!2963863) b!7334668))

(assert (= start!716406 b!7334667))

(assert (= start!716406 b!7334669))

(assert (= start!716406 b!7334674))

(declare-fun m!8000502 () Bool)

(assert (=> b!7334668 m!8000502))

(declare-fun m!8000504 () Bool)

(assert (=> b!7334668 m!8000504))

(declare-fun m!8000506 () Bool)

(assert (=> b!7334668 m!8000506))

(declare-fun m!8000508 () Bool)

(assert (=> b!7334668 m!8000508))

(declare-fun m!8000510 () Bool)

(assert (=> b!7334668 m!8000510))

(declare-fun m!8000512 () Bool)

(assert (=> b!7334668 m!8000512))

(declare-fun m!8000514 () Bool)

(assert (=> b!7334668 m!8000514))

(assert (=> b!7334668 m!8000512))

(declare-fun m!8000516 () Bool)

(assert (=> b!7334668 m!8000516))

(declare-fun m!8000518 () Bool)

(assert (=> b!7334668 m!8000518))

(declare-fun m!8000520 () Bool)

(assert (=> b!7334668 m!8000520))

(declare-fun m!8000522 () Bool)

(assert (=> b!7334672 m!8000522))

(declare-fun m!8000524 () Bool)

(assert (=> b!7334672 m!8000524))

(declare-fun m!8000526 () Bool)

(assert (=> b!7334673 m!8000526))

(declare-fun m!8000528 () Bool)

(assert (=> b!7334671 m!8000528))

(declare-fun m!8000530 () Bool)

(assert (=> b!7334670 m!8000530))

(declare-fun m!8000532 () Bool)

(assert (=> b!7334670 m!8000532))

(declare-fun m!8000534 () Bool)

(assert (=> b!7334670 m!8000534))

(declare-fun m!8000536 () Bool)

(assert (=> b!7334666 m!8000536))

(declare-fun m!8000538 () Bool)

(assert (=> start!716406 m!8000538))

(declare-fun m!8000540 () Bool)

(assert (=> start!716406 m!8000540))

(declare-fun m!8000542 () Bool)

(assert (=> start!716406 m!8000542))

(declare-fun m!8000544 () Bool)

(assert (=> start!716406 m!8000544))

(declare-fun m!8000546 () Bool)

(assert (=> start!716406 m!8000546))

(push 1)

(assert (not b!7334668))

(assert (not start!716406))

(assert (not b!7334672))

(assert (not b!7334670))

(assert (not b!7334666))

(assert (not b!7334674))

(assert (not b!7334667))

(assert (not b!7334669))

(assert (not b!7334673))

(assert tp_is_empty!48381)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2277701 () Bool)

(assert (=> d!2277701 (= (isEmpty!40980 (exprs!8508 ct1!256)) (is-Nil!71440 (exprs!8508 ct1!256)))))

(assert (=> b!7334666 d!2277701))

(declare-fun b!7334712 () Bool)

(declare-fun e!4392094 () (Set Context!16016))

(declare-fun call!668652 () (Set Context!16016))

(assert (=> b!7334712 (= e!4392094 call!668652)))

(declare-fun b!7334713 () Bool)

(declare-fun e!4392095 () Bool)

(assert (=> b!7334713 (= e!4392095 (nullable!8169 (h!77888 (exprs!8508 ct1!256))))))

(declare-fun bm!668647 () Bool)

(assert (=> bm!668647 (= call!668652 (derivationStepZipperDown!2895 (h!77888 (exprs!8508 ct1!256)) (Context!16017 (t!385959 (exprs!8508 ct1!256))) c!10305))))

(declare-fun b!7334714 () Bool)

(assert (=> b!7334714 (= e!4392094 (as set.empty (Set Context!16016)))))

(declare-fun d!2277703 () Bool)

(declare-fun c!1362197 () Bool)

(assert (=> d!2277703 (= c!1362197 e!4392095)))

(declare-fun res!2963887 () Bool)

(assert (=> d!2277703 (=> (not res!2963887) (not e!4392095))))

(assert (=> d!2277703 (= res!2963887 (is-Cons!71440 (exprs!8508 ct1!256)))))

(declare-fun e!4392093 () (Set Context!16016))

(assert (=> d!2277703 (= (derivationStepZipperUp!2748 ct1!256 c!10305) e!4392093)))

(declare-fun b!7334715 () Bool)

(assert (=> b!7334715 (= e!4392093 e!4392094)))

(declare-fun c!1362196 () Bool)

(assert (=> b!7334715 (= c!1362196 (is-Cons!71440 (exprs!8508 ct1!256)))))

(declare-fun b!7334716 () Bool)

(assert (=> b!7334716 (= e!4392093 (set.union call!668652 (derivationStepZipperUp!2748 (Context!16017 (t!385959 (exprs!8508 ct1!256))) c!10305)))))

(assert (= (and d!2277703 res!2963887) b!7334713))

(assert (= (and d!2277703 c!1362197) b!7334716))

(assert (= (and d!2277703 (not c!1362197)) b!7334715))

(assert (= (and b!7334715 c!1362196) b!7334712))

(assert (= (and b!7334715 (not c!1362196)) b!7334714))

(assert (= (or b!7334716 b!7334712) bm!668647))

(assert (=> b!7334713 m!8000530))

(declare-fun m!8000596 () Bool)

(assert (=> bm!668647 m!8000596))

(declare-fun m!8000598 () Bool)

(assert (=> b!7334716 m!8000598))

(assert (=> start!716406 d!2277703))

(declare-fun bs!1917817 () Bool)

(declare-fun d!2277709 () Bool)

(assert (= bs!1917817 (and d!2277709 b!7334672)))

(declare-fun lambda!455024 () Int)

(assert (=> bs!1917817 (= lambda!455024 lambda!455012)))

(declare-fun forall!17904 (List!71564 Int) Bool)

(assert (=> d!2277709 (= (inv!91011 cWitness!35) (forall!17904 (exprs!8508 cWitness!35) lambda!455024))))

(declare-fun bs!1917818 () Bool)

(assert (= bs!1917818 d!2277709))

(declare-fun m!8000600 () Bool)

(assert (=> bs!1917818 m!8000600))

(assert (=> start!716406 d!2277709))

(declare-fun bs!1917819 () Bool)

(declare-fun d!2277711 () Bool)

(assert (= bs!1917819 (and d!2277711 b!7334672)))

(declare-fun lambda!455025 () Int)

(assert (=> bs!1917819 (= lambda!455025 lambda!455012)))

(declare-fun bs!1917820 () Bool)

(assert (= bs!1917820 (and d!2277711 d!2277709)))

(assert (=> bs!1917820 (= lambda!455025 lambda!455024)))

(assert (=> d!2277711 (= (inv!91011 ct1!256) (forall!17904 (exprs!8508 ct1!256) lambda!455025))))

(declare-fun bs!1917821 () Bool)

(assert (= bs!1917821 d!2277711))

(declare-fun m!8000602 () Bool)

(assert (=> bs!1917821 m!8000602))

(assert (=> start!716406 d!2277711))

(declare-fun bs!1917822 () Bool)

(declare-fun d!2277713 () Bool)

(assert (= bs!1917822 (and d!2277713 b!7334672)))

(declare-fun lambda!455026 () Int)

(assert (=> bs!1917822 (= lambda!455026 lambda!455012)))

(declare-fun bs!1917823 () Bool)

(assert (= bs!1917823 (and d!2277713 d!2277709)))

(assert (=> bs!1917823 (= lambda!455026 lambda!455024)))

(declare-fun bs!1917824 () Bool)

(assert (= bs!1917824 (and d!2277713 d!2277711)))

(assert (=> bs!1917824 (= lambda!455026 lambda!455025)))

(assert (=> d!2277713 (= (inv!91011 ct2!352) (forall!17904 (exprs!8508 ct2!352) lambda!455026))))

(declare-fun bs!1917825 () Bool)

(assert (= bs!1917825 d!2277713))

(declare-fun m!8000604 () Bool)

(assert (=> bs!1917825 m!8000604))

(assert (=> start!716406 d!2277713))

(declare-fun b!7334725 () Bool)

(declare-fun e!4392100 () List!71564)

(assert (=> b!7334725 (= e!4392100 (exprs!8508 ct2!352))))

(declare-fun b!7334727 () Bool)

(declare-fun res!2963892 () Bool)

(declare-fun e!4392101 () Bool)

(assert (=> b!7334727 (=> (not res!2963892) (not e!4392101))))

(declare-fun lt!2608848 () List!71564)

(declare-fun size!41974 (List!71564) Int)

(assert (=> b!7334727 (= res!2963892 (= (size!41974 lt!2608848) (+ (size!41974 (exprs!8508 ct1!256)) (size!41974 (exprs!8508 ct2!352)))))))

(declare-fun d!2277715 () Bool)

(assert (=> d!2277715 e!4392101))

(declare-fun res!2963893 () Bool)

(assert (=> d!2277715 (=> (not res!2963893) (not e!4392101))))

(declare-fun content!14995 (List!71564) (Set Regex!19068))

(assert (=> d!2277715 (= res!2963893 (= (content!14995 lt!2608848) (set.union (content!14995 (exprs!8508 ct1!256)) (content!14995 (exprs!8508 ct2!352)))))))

(assert (=> d!2277715 (= lt!2608848 e!4392100)))

(declare-fun c!1362200 () Bool)

(assert (=> d!2277715 (= c!1362200 (is-Nil!71440 (exprs!8508 ct1!256)))))

(assert (=> d!2277715 (= (++!16890 (exprs!8508 ct1!256) (exprs!8508 ct2!352)) lt!2608848)))

(declare-fun b!7334728 () Bool)

(assert (=> b!7334728 (= e!4392101 (or (not (= (exprs!8508 ct2!352) Nil!71440)) (= lt!2608848 (exprs!8508 ct1!256))))))

(declare-fun b!7334726 () Bool)

(assert (=> b!7334726 (= e!4392100 (Cons!71440 (h!77888 (exprs!8508 ct1!256)) (++!16890 (t!385959 (exprs!8508 ct1!256)) (exprs!8508 ct2!352))))))

(assert (= (and d!2277715 c!1362200) b!7334725))

(assert (= (and d!2277715 (not c!1362200)) b!7334726))

(assert (= (and d!2277715 res!2963893) b!7334727))

(assert (= (and b!7334727 res!2963892) b!7334728))

(declare-fun m!8000606 () Bool)

(assert (=> b!7334727 m!8000606))

(declare-fun m!8000608 () Bool)

(assert (=> b!7334727 m!8000608))

(declare-fun m!8000610 () Bool)

(assert (=> b!7334727 m!8000610))

(declare-fun m!8000612 () Bool)

(assert (=> d!2277715 m!8000612))

(declare-fun m!8000614 () Bool)

(assert (=> d!2277715 m!8000614))

(declare-fun m!8000616 () Bool)

(assert (=> d!2277715 m!8000616))

(declare-fun m!8000618 () Bool)

(assert (=> b!7334726 m!8000618))

(assert (=> b!7334672 d!2277715))

(declare-fun d!2277717 () Bool)

(assert (=> d!2277717 (forall!17904 (++!16890 (exprs!8508 ct1!256) (exprs!8508 ct2!352)) lambda!455012)))

(declare-fun lt!2608851 () Unit!165097)

(declare-fun choose!57050 (List!71564 List!71564 Int) Unit!165097)

(assert (=> d!2277717 (= lt!2608851 (choose!57050 (exprs!8508 ct1!256) (exprs!8508 ct2!352) lambda!455012))))

(assert (=> d!2277717 (forall!17904 (exprs!8508 ct1!256) lambda!455012)))

(assert (=> d!2277717 (= (lemmaConcatPreservesForall!1747 (exprs!8508 ct1!256) (exprs!8508 ct2!352) lambda!455012) lt!2608851)))

(declare-fun bs!1917826 () Bool)

(assert (= bs!1917826 d!2277717))

(assert (=> bs!1917826 m!8000522))

(assert (=> bs!1917826 m!8000522))

(declare-fun m!8000620 () Bool)

(assert (=> bs!1917826 m!8000620))

(declare-fun m!8000622 () Bool)

(assert (=> bs!1917826 m!8000622))

(declare-fun m!8000624 () Bool)

(assert (=> bs!1917826 m!8000624))

(assert (=> b!7334672 d!2277717))

(declare-fun d!2277719 () Bool)

(assert (=> d!2277719 (= (isEmpty!40980 lt!2608808) (is-Nil!71440 lt!2608808))))

(assert (=> b!7334673 d!2277719))

(declare-fun d!2277721 () Bool)

(assert (=> d!2277721 (= (tail!14749 lt!2608808) (t!385959 lt!2608808))))

(assert (=> b!7334668 d!2277721))

(declare-fun d!2277723 () Bool)

(assert (=> d!2277723 (forall!17904 (++!16890 lt!2608800 (exprs!8508 ct2!352)) lambda!455012)))

(declare-fun lt!2608852 () Unit!165097)

(assert (=> d!2277723 (= lt!2608852 (choose!57050 lt!2608800 (exprs!8508 ct2!352) lambda!455012))))

(assert (=> d!2277723 (forall!17904 lt!2608800 lambda!455012)))

(assert (=> d!2277723 (= (lemmaConcatPreservesForall!1747 lt!2608800 (exprs!8508 ct2!352) lambda!455012) lt!2608852)))

(declare-fun bs!1917827 () Bool)

(assert (= bs!1917827 d!2277723))

(assert (=> bs!1917827 m!8000510))

(assert (=> bs!1917827 m!8000510))

(declare-fun m!8000626 () Bool)

(assert (=> bs!1917827 m!8000626))

(declare-fun m!8000628 () Bool)

(assert (=> bs!1917827 m!8000628))

(declare-fun m!8000630 () Bool)

(assert (=> bs!1917827 m!8000630))

(assert (=> b!7334668 d!2277723))

(declare-fun b!7334773 () Bool)

(declare-fun c!1362221 () Bool)

(assert (=> b!7334773 (= c!1362221 (is-Star!19068 (h!77888 (exprs!8508 ct1!256))))))

(declare-fun e!4392131 () (Set Context!16016))

(declare-fun e!4392127 () (Set Context!16016))

(assert (=> b!7334773 (= e!4392131 e!4392127)))

(declare-fun b!7334774 () Bool)

(declare-fun e!4392130 () (Set Context!16016))

(assert (=> b!7334774 (= e!4392130 (set.insert (Context!16017 (++!16890 lt!2608800 (exprs!8508 ct2!352))) (as set.empty (Set Context!16016))))))

(declare-fun b!7334775 () Bool)

(declare-fun c!1362225 () Bool)

(declare-fun e!4392126 () Bool)

(assert (=> b!7334775 (= c!1362225 e!4392126)))

(declare-fun res!2963898 () Bool)

(assert (=> b!7334775 (=> (not res!2963898) (not e!4392126))))

(assert (=> b!7334775 (= res!2963898 (is-Concat!27913 (h!77888 (exprs!8508 ct1!256))))))

(declare-fun e!4392128 () (Set Context!16016))

(declare-fun e!4392129 () (Set Context!16016))

(assert (=> b!7334775 (= e!4392128 e!4392129)))

(declare-fun b!7334776 () Bool)

(declare-fun call!668680 () (Set Context!16016))

(declare-fun call!668682 () (Set Context!16016))

(assert (=> b!7334776 (= e!4392128 (set.union call!668680 call!668682))))

(declare-fun b!7334777 () Bool)

(declare-fun call!668677 () (Set Context!16016))

(assert (=> b!7334777 (= e!4392131 call!668677)))

(declare-fun d!2277725 () Bool)

(declare-fun c!1362222 () Bool)

(assert (=> d!2277725 (= c!1362222 (and (is-ElementMatch!19068 (h!77888 (exprs!8508 ct1!256))) (= (c!1362190 (h!77888 (exprs!8508 ct1!256))) c!10305)))))

(assert (=> d!2277725 (= (derivationStepZipperDown!2895 (h!77888 (exprs!8508 ct1!256)) (Context!16017 (++!16890 lt!2608800 (exprs!8508 ct2!352))) c!10305) e!4392130)))

(declare-fun bm!668672 () Bool)

(declare-fun call!668681 () List!71564)

(declare-fun call!668678 () List!71564)

(assert (=> bm!668672 (= call!668681 call!668678)))

(declare-fun b!7334778 () Bool)

(assert (=> b!7334778 (= e!4392127 (as set.empty (Set Context!16016)))))

(declare-fun bm!668673 () Bool)

(declare-fun c!1362223 () Bool)

(assert (=> bm!668673 (= call!668682 (derivationStepZipperDown!2895 (ite c!1362223 (regTwo!38649 (h!77888 (exprs!8508 ct1!256))) (regOne!38648 (h!77888 (exprs!8508 ct1!256)))) (ite c!1362223 (Context!16017 (++!16890 lt!2608800 (exprs!8508 ct2!352))) (Context!16017 call!668678)) c!10305))))

(declare-fun c!1362224 () Bool)

(declare-fun bm!668674 () Bool)

(assert (=> bm!668674 (= call!668680 (derivationStepZipperDown!2895 (ite c!1362223 (regOne!38649 (h!77888 (exprs!8508 ct1!256))) (ite c!1362225 (regTwo!38648 (h!77888 (exprs!8508 ct1!256))) (ite c!1362224 (regOne!38648 (h!77888 (exprs!8508 ct1!256))) (reg!19397 (h!77888 (exprs!8508 ct1!256)))))) (ite (or c!1362223 c!1362225) (Context!16017 (++!16890 lt!2608800 (exprs!8508 ct2!352))) (Context!16017 call!668681)) c!10305))))

(declare-fun bm!668675 () Bool)

(declare-fun call!668679 () (Set Context!16016))

(assert (=> bm!668675 (= call!668677 call!668679)))

(declare-fun b!7334779 () Bool)

(assert (=> b!7334779 (= e!4392126 (nullable!8169 (regOne!38648 (h!77888 (exprs!8508 ct1!256)))))))

(declare-fun b!7334780 () Bool)

(assert (=> b!7334780 (= e!4392129 e!4392131)))

(assert (=> b!7334780 (= c!1362224 (is-Concat!27913 (h!77888 (exprs!8508 ct1!256))))))

(declare-fun b!7334781 () Bool)

(assert (=> b!7334781 (= e!4392127 call!668677)))

(declare-fun b!7334782 () Bool)

(assert (=> b!7334782 (= e!4392129 (set.union call!668682 call!668679))))

(declare-fun bm!668676 () Bool)

(assert (=> bm!668676 (= call!668679 call!668680)))

(declare-fun b!7334783 () Bool)

(assert (=> b!7334783 (= e!4392130 e!4392128)))

(assert (=> b!7334783 (= c!1362223 (is-Union!19068 (h!77888 (exprs!8508 ct1!256))))))

(declare-fun bm!668677 () Bool)

(declare-fun $colon$colon!3077 (List!71564 Regex!19068) List!71564)

(assert (=> bm!668677 (= call!668678 ($colon$colon!3077 (exprs!8508 (Context!16017 (++!16890 lt!2608800 (exprs!8508 ct2!352)))) (ite (or c!1362225 c!1362224) (regTwo!38648 (h!77888 (exprs!8508 ct1!256))) (h!77888 (exprs!8508 ct1!256)))))))

(assert (= (and d!2277725 c!1362222) b!7334774))

(assert (= (and d!2277725 (not c!1362222)) b!7334783))

(assert (= (and b!7334783 c!1362223) b!7334776))

(assert (= (and b!7334783 (not c!1362223)) b!7334775))

(assert (= (and b!7334775 res!2963898) b!7334779))

(assert (= (and b!7334775 c!1362225) b!7334782))

(assert (= (and b!7334775 (not c!1362225)) b!7334780))

(assert (= (and b!7334780 c!1362224) b!7334777))

(assert (= (and b!7334780 (not c!1362224)) b!7334773))

(assert (= (and b!7334773 c!1362221) b!7334781))

(assert (= (and b!7334773 (not c!1362221)) b!7334778))

(assert (= (or b!7334777 b!7334781) bm!668672))

(assert (= (or b!7334777 b!7334781) bm!668675))

(assert (= (or b!7334782 bm!668675) bm!668676))

(assert (= (or b!7334782 bm!668672) bm!668677))

(assert (= (or b!7334776 b!7334782) bm!668673))

(assert (= (or b!7334776 bm!668676) bm!668674))

(declare-fun m!8000632 () Bool)

(assert (=> bm!668673 m!8000632))

(declare-fun m!8000634 () Bool)

(assert (=> b!7334779 m!8000634))

(declare-fun m!8000636 () Bool)

(assert (=> bm!668674 m!8000636))

(declare-fun m!8000638 () Bool)

(assert (=> bm!668677 m!8000638))

(declare-fun m!8000640 () Bool)

(assert (=> b!7334774 m!8000640))

(assert (=> b!7334668 d!2277725))

(declare-fun d!2277727 () Bool)

(assert (=> d!2277727 (forall!17904 (++!16890 (exprs!8508 cWitness!35) (exprs!8508 ct2!352)) lambda!455012)))

(declare-fun lt!2608853 () Unit!165097)

(assert (=> d!2277727 (= lt!2608853 (choose!57050 (exprs!8508 cWitness!35) (exprs!8508 ct2!352) lambda!455012))))

(assert (=> d!2277727 (forall!17904 (exprs!8508 cWitness!35) lambda!455012)))

(assert (=> d!2277727 (= (lemmaConcatPreservesForall!1747 (exprs!8508 cWitness!35) (exprs!8508 ct2!352) lambda!455012) lt!2608853)))

(declare-fun bs!1917828 () Bool)

(assert (= bs!1917828 d!2277727))

(assert (=> bs!1917828 m!8000506))

(assert (=> bs!1917828 m!8000506))

(declare-fun m!8000642 () Bool)

(assert (=> bs!1917828 m!8000642))

(declare-fun m!8000644 () Bool)

(assert (=> bs!1917828 m!8000644))

(declare-fun m!8000646 () Bool)

(assert (=> bs!1917828 m!8000646))

(assert (=> b!7334668 d!2277727))

(declare-fun b!7334784 () Bool)

(declare-fun e!4392132 () List!71564)

(assert (=> b!7334784 (= e!4392132 (exprs!8508 ct2!352))))

(declare-fun b!7334786 () Bool)

(declare-fun res!2963899 () Bool)

(declare-fun e!4392133 () Bool)

(assert (=> b!7334786 (=> (not res!2963899) (not e!4392133))))

(declare-fun lt!2608854 () List!71564)

(assert (=> b!7334786 (= res!2963899 (= (size!41974 lt!2608854) (+ (size!41974 (exprs!8508 cWitness!35)) (size!41974 (exprs!8508 ct2!352)))))))

(declare-fun d!2277729 () Bool)

(assert (=> d!2277729 e!4392133))

(declare-fun res!2963900 () Bool)

(assert (=> d!2277729 (=> (not res!2963900) (not e!4392133))))

(assert (=> d!2277729 (= res!2963900 (= (content!14995 lt!2608854) (set.union (content!14995 (exprs!8508 cWitness!35)) (content!14995 (exprs!8508 ct2!352)))))))

(assert (=> d!2277729 (= lt!2608854 e!4392132)))

(declare-fun c!1362226 () Bool)

(assert (=> d!2277729 (= c!1362226 (is-Nil!71440 (exprs!8508 cWitness!35)))))

(assert (=> d!2277729 (= (++!16890 (exprs!8508 cWitness!35) (exprs!8508 ct2!352)) lt!2608854)))

(declare-fun b!7334787 () Bool)

(assert (=> b!7334787 (= e!4392133 (or (not (= (exprs!8508 ct2!352) Nil!71440)) (= lt!2608854 (exprs!8508 cWitness!35))))))

(declare-fun b!7334785 () Bool)

(assert (=> b!7334785 (= e!4392132 (Cons!71440 (h!77888 (exprs!8508 cWitness!35)) (++!16890 (t!385959 (exprs!8508 cWitness!35)) (exprs!8508 ct2!352))))))

(assert (= (and d!2277729 c!1362226) b!7334784))

(assert (= (and d!2277729 (not c!1362226)) b!7334785))

(assert (= (and d!2277729 res!2963900) b!7334786))

(assert (= (and b!7334786 res!2963899) b!7334787))

(declare-fun m!8000648 () Bool)

(assert (=> b!7334786 m!8000648))

(declare-fun m!8000650 () Bool)

(assert (=> b!7334786 m!8000650))

(assert (=> b!7334786 m!8000610))

(declare-fun m!8000652 () Bool)

(assert (=> d!2277729 m!8000652))

(declare-fun m!8000654 () Bool)

(assert (=> d!2277729 m!8000654))

(assert (=> d!2277729 m!8000616))

(declare-fun m!8000656 () Bool)

(assert (=> b!7334785 m!8000656))

(assert (=> b!7334668 d!2277729))

(declare-fun b!7334788 () Bool)

(declare-fun e!4392134 () List!71564)

(assert (=> b!7334788 (= e!4392134 (exprs!8508 ct2!352))))

(declare-fun b!7334790 () Bool)

(declare-fun res!2963901 () Bool)

(declare-fun e!4392135 () Bool)

(assert (=> b!7334790 (=> (not res!2963901) (not e!4392135))))

(declare-fun lt!2608855 () List!71564)

(assert (=> b!7334790 (= res!2963901 (= (size!41974 lt!2608855) (+ (size!41974 lt!2608800) (size!41974 (exprs!8508 ct2!352)))))))

(declare-fun d!2277731 () Bool)

(assert (=> d!2277731 e!4392135))

(declare-fun res!2963902 () Bool)

(assert (=> d!2277731 (=> (not res!2963902) (not e!4392135))))

(assert (=> d!2277731 (= res!2963902 (= (content!14995 lt!2608855) (set.union (content!14995 lt!2608800) (content!14995 (exprs!8508 ct2!352)))))))

(assert (=> d!2277731 (= lt!2608855 e!4392134)))

(declare-fun c!1362227 () Bool)

(assert (=> d!2277731 (= c!1362227 (is-Nil!71440 lt!2608800))))

(assert (=> d!2277731 (= (++!16890 lt!2608800 (exprs!8508 ct2!352)) lt!2608855)))

(declare-fun b!7334791 () Bool)

(assert (=> b!7334791 (= e!4392135 (or (not (= (exprs!8508 ct2!352) Nil!71440)) (= lt!2608855 lt!2608800)))))

(declare-fun b!7334789 () Bool)

(assert (=> b!7334789 (= e!4392134 (Cons!71440 (h!77888 lt!2608800) (++!16890 (t!385959 lt!2608800) (exprs!8508 ct2!352))))))

(assert (= (and d!2277731 c!1362227) b!7334788))

(assert (= (and d!2277731 (not c!1362227)) b!7334789))

(assert (= (and d!2277731 res!2963902) b!7334790))

(assert (= (and b!7334790 res!2963901) b!7334791))

(declare-fun m!8000658 () Bool)

(assert (=> b!7334790 m!8000658))

(declare-fun m!8000660 () Bool)

(assert (=> b!7334790 m!8000660))

(assert (=> b!7334790 m!8000610))

(declare-fun m!8000662 () Bool)

(assert (=> d!2277731 m!8000662))

(declare-fun m!8000664 () Bool)

(assert (=> d!2277731 m!8000664))

(assert (=> d!2277731 m!8000616))

(declare-fun m!8000666 () Bool)

(assert (=> b!7334789 m!8000666))

(assert (=> b!7334668 d!2277731))

(declare-fun bs!1917829 () Bool)

(declare-fun d!2277733 () Bool)

(assert (= bs!1917829 (and d!2277733 b!7334672)))

(declare-fun lambda!455027 () Int)

(assert (=> bs!1917829 (= lambda!455027 lambda!455012)))

(declare-fun bs!1917830 () Bool)

(assert (= bs!1917830 (and d!2277733 d!2277709)))

(assert (=> bs!1917830 (= lambda!455027 lambda!455024)))

(declare-fun bs!1917831 () Bool)

(assert (= bs!1917831 (and d!2277733 d!2277711)))

(assert (=> bs!1917831 (= lambda!455027 lambda!455025)))

(declare-fun bs!1917832 () Bool)

(assert (= bs!1917832 (and d!2277733 d!2277713)))

(assert (=> bs!1917832 (= lambda!455027 lambda!455026)))

(assert (=> d!2277733 (= (inv!91011 lt!2608805) (forall!17904 (exprs!8508 lt!2608805) lambda!455027))))

(declare-fun bs!1917833 () Bool)

(assert (= bs!1917833 d!2277733))

(declare-fun m!8000668 () Bool)

(assert (=> bs!1917833 m!8000668))

(assert (=> b!7334668 d!2277733))

(declare-fun b!7334792 () Bool)

(declare-fun c!1362228 () Bool)

(assert (=> b!7334792 (= c!1362228 (is-Star!19068 (h!77888 (exprs!8508 ct1!256))))))

(declare-fun e!4392141 () (Set Context!16016))

(declare-fun e!4392137 () (Set Context!16016))

(assert (=> b!7334792 (= e!4392141 e!4392137)))

(declare-fun b!7334793 () Bool)

(declare-fun e!4392140 () (Set Context!16016))

(assert (=> b!7334793 (= e!4392140 (set.insert (Context!16017 (tail!14749 lt!2608808)) (as set.empty (Set Context!16016))))))

(declare-fun b!7334794 () Bool)

(declare-fun c!1362232 () Bool)

(declare-fun e!4392136 () Bool)

(assert (=> b!7334794 (= c!1362232 e!4392136)))

(declare-fun res!2963903 () Bool)

(assert (=> b!7334794 (=> (not res!2963903) (not e!4392136))))

(assert (=> b!7334794 (= res!2963903 (is-Concat!27913 (h!77888 (exprs!8508 ct1!256))))))

(declare-fun e!4392138 () (Set Context!16016))

(declare-fun e!4392139 () (Set Context!16016))

(assert (=> b!7334794 (= e!4392138 e!4392139)))

(declare-fun b!7334795 () Bool)

(declare-fun call!668686 () (Set Context!16016))

(declare-fun call!668688 () (Set Context!16016))

(assert (=> b!7334795 (= e!4392138 (set.union call!668686 call!668688))))

(declare-fun b!7334796 () Bool)

(declare-fun call!668683 () (Set Context!16016))

(assert (=> b!7334796 (= e!4392141 call!668683)))

(declare-fun d!2277735 () Bool)

(declare-fun c!1362229 () Bool)

(assert (=> d!2277735 (= c!1362229 (and (is-ElementMatch!19068 (h!77888 (exprs!8508 ct1!256))) (= (c!1362190 (h!77888 (exprs!8508 ct1!256))) c!10305)))))

(assert (=> d!2277735 (= (derivationStepZipperDown!2895 (h!77888 (exprs!8508 ct1!256)) (Context!16017 (tail!14749 lt!2608808)) c!10305) e!4392140)))

(declare-fun bm!668678 () Bool)

(declare-fun call!668687 () List!71564)

(declare-fun call!668684 () List!71564)

(assert (=> bm!668678 (= call!668687 call!668684)))

(declare-fun b!7334797 () Bool)

(assert (=> b!7334797 (= e!4392137 (as set.empty (Set Context!16016)))))

(declare-fun bm!668679 () Bool)

(declare-fun c!1362230 () Bool)

(assert (=> bm!668679 (= call!668688 (derivationStepZipperDown!2895 (ite c!1362230 (regTwo!38649 (h!77888 (exprs!8508 ct1!256))) (regOne!38648 (h!77888 (exprs!8508 ct1!256)))) (ite c!1362230 (Context!16017 (tail!14749 lt!2608808)) (Context!16017 call!668684)) c!10305))))

(declare-fun c!1362231 () Bool)

(declare-fun bm!668680 () Bool)

(assert (=> bm!668680 (= call!668686 (derivationStepZipperDown!2895 (ite c!1362230 (regOne!38649 (h!77888 (exprs!8508 ct1!256))) (ite c!1362232 (regTwo!38648 (h!77888 (exprs!8508 ct1!256))) (ite c!1362231 (regOne!38648 (h!77888 (exprs!8508 ct1!256))) (reg!19397 (h!77888 (exprs!8508 ct1!256)))))) (ite (or c!1362230 c!1362232) (Context!16017 (tail!14749 lt!2608808)) (Context!16017 call!668687)) c!10305))))

(declare-fun bm!668681 () Bool)

(declare-fun call!668685 () (Set Context!16016))

(assert (=> bm!668681 (= call!668683 call!668685)))

(declare-fun b!7334798 () Bool)

(assert (=> b!7334798 (= e!4392136 (nullable!8169 (regOne!38648 (h!77888 (exprs!8508 ct1!256)))))))

(declare-fun b!7334799 () Bool)

(assert (=> b!7334799 (= e!4392139 e!4392141)))

(assert (=> b!7334799 (= c!1362231 (is-Concat!27913 (h!77888 (exprs!8508 ct1!256))))))

(declare-fun b!7334800 () Bool)

(assert (=> b!7334800 (= e!4392137 call!668683)))

(declare-fun b!7334801 () Bool)

(assert (=> b!7334801 (= e!4392139 (set.union call!668688 call!668685))))

(declare-fun bm!668682 () Bool)

(assert (=> bm!668682 (= call!668685 call!668686)))

(declare-fun b!7334802 () Bool)

(assert (=> b!7334802 (= e!4392140 e!4392138)))

(assert (=> b!7334802 (= c!1362230 (is-Union!19068 (h!77888 (exprs!8508 ct1!256))))))

(declare-fun bm!668683 () Bool)

(assert (=> bm!668683 (= call!668684 ($colon$colon!3077 (exprs!8508 (Context!16017 (tail!14749 lt!2608808))) (ite (or c!1362232 c!1362231) (regTwo!38648 (h!77888 (exprs!8508 ct1!256))) (h!77888 (exprs!8508 ct1!256)))))))

(assert (= (and d!2277735 c!1362229) b!7334793))

(assert (= (and d!2277735 (not c!1362229)) b!7334802))

(assert (= (and b!7334802 c!1362230) b!7334795))

(assert (= (and b!7334802 (not c!1362230)) b!7334794))

(assert (= (and b!7334794 res!2963903) b!7334798))

(assert (= (and b!7334794 c!1362232) b!7334801))

(assert (= (and b!7334794 (not c!1362232)) b!7334799))

(assert (= (and b!7334799 c!1362231) b!7334796))

(assert (= (and b!7334799 (not c!1362231)) b!7334792))

(assert (= (and b!7334792 c!1362228) b!7334800))

(assert (= (and b!7334792 (not c!1362228)) b!7334797))

(assert (= (or b!7334796 b!7334800) bm!668678))

(assert (= (or b!7334796 b!7334800) bm!668681))

(assert (= (or b!7334801 bm!668681) bm!668682))

(assert (= (or b!7334801 bm!668678) bm!668683))

(assert (= (or b!7334795 b!7334801) bm!668679))

(assert (= (or b!7334795 bm!668682) bm!668680))

(declare-fun m!8000670 () Bool)

(assert (=> bm!668679 m!8000670))

(assert (=> b!7334798 m!8000634))

(declare-fun m!8000672 () Bool)

(assert (=> bm!668680 m!8000672))

(declare-fun m!8000674 () Bool)

(assert (=> bm!668683 m!8000674))

(declare-fun m!8000676 () Bool)

(assert (=> b!7334793 m!8000676))

(assert (=> b!7334668 d!2277735))

(declare-fun bs!1917834 () Bool)

(declare-fun d!2277737 () Bool)

(assert (= bs!1917834 (and d!2277737 d!2277709)))

(declare-fun lambda!455032 () Int)

(assert (=> bs!1917834 (= lambda!455032 lambda!455024)))

(declare-fun bs!1917835 () Bool)

(assert (= bs!1917835 (and d!2277737 d!2277733)))

(assert (=> bs!1917835 (= lambda!455032 lambda!455027)))

(declare-fun bs!1917836 () Bool)

(assert (= bs!1917836 (and d!2277737 d!2277713)))

(assert (=> bs!1917836 (= lambda!455032 lambda!455026)))

(declare-fun bs!1917837 () Bool)

(assert (= bs!1917837 (and d!2277737 d!2277711)))

(assert (=> bs!1917837 (= lambda!455032 lambda!455025)))

(declare-fun bs!1917838 () Bool)

(assert (= bs!1917838 (and d!2277737 b!7334672)))

(assert (=> bs!1917838 (= lambda!455032 lambda!455012)))

(assert (=> d!2277737 (set.member (Context!16017 (++!16890 (exprs!8508 cWitness!35) (exprs!8508 ct2!352))) (derivationStepZipperDown!2895 (h!77888 (exprs!8508 ct1!256)) (Context!16017 (++!16890 (exprs!8508 lt!2608809) (exprs!8508 ct2!352))) c!10305))))

(declare-fun lt!2608864 () Unit!165097)

(assert (=> d!2277737 (= lt!2608864 (lemmaConcatPreservesForall!1747 (exprs!8508 lt!2608809) (exprs!8508 ct2!352) lambda!455032))))

(declare-fun lt!2608863 () Unit!165097)

(assert (=> d!2277737 (= lt!2608863 (lemmaConcatPreservesForall!1747 (exprs!8508 cWitness!35) (exprs!8508 ct2!352) lambda!455032))))

(declare-fun lt!2608862 () Unit!165097)

(declare-fun choose!57051 (Regex!19068 Context!16016 Context!16016 Context!16016 C!38410) Unit!165097)

(assert (=> d!2277737 (= lt!2608862 (choose!57051 (h!77888 (exprs!8508 ct1!256)) lt!2608809 ct2!352 cWitness!35 c!10305))))

(declare-fun validRegex!9667 (Regex!19068) Bool)

(assert (=> d!2277737 (validRegex!9667 (h!77888 (exprs!8508 ct1!256)))))

(assert (=> d!2277737 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!33 (h!77888 (exprs!8508 ct1!256)) lt!2608809 ct2!352 cWitness!35 c!10305) lt!2608862)))

(declare-fun bs!1917839 () Bool)

(assert (= bs!1917839 d!2277737))

(declare-fun m!8000688 () Bool)

(assert (=> bs!1917839 m!8000688))

(declare-fun m!8000690 () Bool)

(assert (=> bs!1917839 m!8000690))

(assert (=> bs!1917839 m!8000506))

(declare-fun m!8000692 () Bool)

(assert (=> bs!1917839 m!8000692))

(declare-fun m!8000694 () Bool)

(assert (=> bs!1917839 m!8000694))

(declare-fun m!8000696 () Bool)

(assert (=> bs!1917839 m!8000696))

(declare-fun m!8000698 () Bool)

(assert (=> bs!1917839 m!8000698))

(declare-fun m!8000700 () Bool)

(assert (=> bs!1917839 m!8000700))

(assert (=> b!7334668 d!2277737))

(declare-fun d!2277743 () Bool)

(declare-fun nullableFct!3259 (Regex!19068) Bool)

(assert (=> d!2277743 (= (nullable!8169 (h!77888 (exprs!8508 ct1!256))) (nullableFct!3259 (h!77888 (exprs!8508 ct1!256))))))

(declare-fun bs!1917840 () Bool)

(assert (= bs!1917840 d!2277743))

(declare-fun m!8000702 () Bool)

(assert (=> bs!1917840 m!8000702))

(assert (=> b!7334670 d!2277743))

(declare-fun b!7334820 () Bool)

(declare-fun c!1362241 () Bool)

(assert (=> b!7334820 (= c!1362241 (is-Star!19068 (h!77888 (exprs!8508 ct1!256))))))

(declare-fun e!4392157 () (Set Context!16016))

(declare-fun e!4392153 () (Set Context!16016))

(assert (=> b!7334820 (= e!4392157 e!4392153)))

(declare-fun b!7334821 () Bool)

(declare-fun e!4392156 () (Set Context!16016))

(assert (=> b!7334821 (= e!4392156 (set.insert lt!2608809 (as set.empty (Set Context!16016))))))

(declare-fun b!7334822 () Bool)

(declare-fun c!1362245 () Bool)

(declare-fun e!4392152 () Bool)

(assert (=> b!7334822 (= c!1362245 e!4392152)))

(declare-fun res!2963909 () Bool)

(assert (=> b!7334822 (=> (not res!2963909) (not e!4392152))))

(assert (=> b!7334822 (= res!2963909 (is-Concat!27913 (h!77888 (exprs!8508 ct1!256))))))

(declare-fun e!4392154 () (Set Context!16016))

(declare-fun e!4392155 () (Set Context!16016))

(assert (=> b!7334822 (= e!4392154 e!4392155)))

(declare-fun b!7334823 () Bool)

(declare-fun call!668698 () (Set Context!16016))

(declare-fun call!668700 () (Set Context!16016))

(assert (=> b!7334823 (= e!4392154 (set.union call!668698 call!668700))))

(declare-fun b!7334824 () Bool)

(declare-fun call!668695 () (Set Context!16016))

(assert (=> b!7334824 (= e!4392157 call!668695)))

(declare-fun d!2277745 () Bool)

(declare-fun c!1362242 () Bool)

(assert (=> d!2277745 (= c!1362242 (and (is-ElementMatch!19068 (h!77888 (exprs!8508 ct1!256))) (= (c!1362190 (h!77888 (exprs!8508 ct1!256))) c!10305)))))

(assert (=> d!2277745 (= (derivationStepZipperDown!2895 (h!77888 (exprs!8508 ct1!256)) lt!2608809 c!10305) e!4392156)))

(declare-fun bm!668690 () Bool)

(declare-fun call!668699 () List!71564)

(declare-fun call!668696 () List!71564)

(assert (=> bm!668690 (= call!668699 call!668696)))

(declare-fun b!7334825 () Bool)

(assert (=> b!7334825 (= e!4392153 (as set.empty (Set Context!16016)))))

(declare-fun bm!668691 () Bool)

(declare-fun c!1362243 () Bool)

(assert (=> bm!668691 (= call!668700 (derivationStepZipperDown!2895 (ite c!1362243 (regTwo!38649 (h!77888 (exprs!8508 ct1!256))) (regOne!38648 (h!77888 (exprs!8508 ct1!256)))) (ite c!1362243 lt!2608809 (Context!16017 call!668696)) c!10305))))

(declare-fun c!1362244 () Bool)

(declare-fun bm!668692 () Bool)

(assert (=> bm!668692 (= call!668698 (derivationStepZipperDown!2895 (ite c!1362243 (regOne!38649 (h!77888 (exprs!8508 ct1!256))) (ite c!1362245 (regTwo!38648 (h!77888 (exprs!8508 ct1!256))) (ite c!1362244 (regOne!38648 (h!77888 (exprs!8508 ct1!256))) (reg!19397 (h!77888 (exprs!8508 ct1!256)))))) (ite (or c!1362243 c!1362245) lt!2608809 (Context!16017 call!668699)) c!10305))))

(declare-fun bm!668693 () Bool)

(declare-fun call!668697 () (Set Context!16016))

(assert (=> bm!668693 (= call!668695 call!668697)))

(declare-fun b!7334828 () Bool)

(assert (=> b!7334828 (= e!4392152 (nullable!8169 (regOne!38648 (h!77888 (exprs!8508 ct1!256)))))))

(declare-fun b!7334829 () Bool)

(assert (=> b!7334829 (= e!4392155 e!4392157)))

(assert (=> b!7334829 (= c!1362244 (is-Concat!27913 (h!77888 (exprs!8508 ct1!256))))))

(declare-fun b!7334830 () Bool)

(assert (=> b!7334830 (= e!4392153 call!668695)))

(declare-fun b!7334831 () Bool)

(assert (=> b!7334831 (= e!4392155 (set.union call!668700 call!668697))))

(declare-fun bm!668694 () Bool)

(assert (=> bm!668694 (= call!668697 call!668698)))

(declare-fun b!7334832 () Bool)

(assert (=> b!7334832 (= e!4392156 e!4392154)))

(assert (=> b!7334832 (= c!1362243 (is-Union!19068 (h!77888 (exprs!8508 ct1!256))))))

(declare-fun bm!668695 () Bool)

(assert (=> bm!668695 (= call!668696 ($colon$colon!3077 (exprs!8508 lt!2608809) (ite (or c!1362245 c!1362244) (regTwo!38648 (h!77888 (exprs!8508 ct1!256))) (h!77888 (exprs!8508 ct1!256)))))))

(assert (= (and d!2277745 c!1362242) b!7334821))

(assert (= (and d!2277745 (not c!1362242)) b!7334832))

(assert (= (and b!7334832 c!1362243) b!7334823))

(assert (= (and b!7334832 (not c!1362243)) b!7334822))

(assert (= (and b!7334822 res!2963909) b!7334828))

(assert (= (and b!7334822 c!1362245) b!7334831))

(assert (= (and b!7334822 (not c!1362245)) b!7334829))

(assert (= (and b!7334829 c!1362244) b!7334824))

(assert (= (and b!7334829 (not c!1362244)) b!7334820))

(assert (= (and b!7334820 c!1362241) b!7334830))

(assert (= (and b!7334820 (not c!1362241)) b!7334825))

(assert (= (or b!7334824 b!7334830) bm!668690))

(assert (= (or b!7334824 b!7334830) bm!668693))

(assert (= (or b!7334831 bm!668693) bm!668694))

(assert (= (or b!7334831 bm!668690) bm!668695))

(assert (= (or b!7334823 b!7334831) bm!668691))

(assert (= (or b!7334823 bm!668694) bm!668692))

(declare-fun m!8000704 () Bool)

(assert (=> bm!668691 m!8000704))

(assert (=> b!7334828 m!8000634))

(declare-fun m!8000706 () Bool)

(assert (=> bm!668692 m!8000706))

(declare-fun m!8000708 () Bool)

(assert (=> bm!668695 m!8000708))

(declare-fun m!8000710 () Bool)

(assert (=> b!7334821 m!8000710))

(assert (=> b!7334670 d!2277745))

(declare-fun d!2277747 () Bool)

(assert (=> d!2277747 (= (tail!14749 (exprs!8508 ct1!256)) (t!385959 (exprs!8508 ct1!256)))))

(assert (=> b!7334670 d!2277747))

(declare-fun b!7334837 () Bool)

(declare-fun e!4392160 () Bool)

(declare-fun tp!2082148 () Bool)

(declare-fun tp!2082149 () Bool)

(assert (=> b!7334837 (= e!4392160 (and tp!2082148 tp!2082149))))

(assert (=> b!7334667 (= tp!2082132 e!4392160)))

(assert (= (and b!7334667 (is-Cons!71440 (exprs!8508 cWitness!35))) b!7334837))

(declare-fun b!7334838 () Bool)

(declare-fun e!4392161 () Bool)

(declare-fun tp!2082150 () Bool)

(declare-fun tp!2082151 () Bool)

(assert (=> b!7334838 (= e!4392161 (and tp!2082150 tp!2082151))))

(assert (=> b!7334669 (= tp!2082133 e!4392161)))

(assert (= (and b!7334669 (is-Cons!71440 (exprs!8508 ct1!256))) b!7334838))

(declare-fun b!7334839 () Bool)

(declare-fun e!4392162 () Bool)

(declare-fun tp!2082152 () Bool)

(declare-fun tp!2082153 () Bool)

(assert (=> b!7334839 (= e!4392162 (and tp!2082152 tp!2082153))))

(assert (=> b!7334674 (= tp!2082134 e!4392162)))

(assert (= (and b!7334674 (is-Cons!71440 (exprs!8508 ct2!352))) b!7334839))

(push 1)

(assert (not d!2277727))

(assert (not d!2277723))

(assert (not d!2277711))

(assert (not d!2277737))

(assert (not d!2277715))

(assert (not bm!668647))

(assert (not b!7334786))

(assert (not bm!668677))

(assert (not bm!668695))

(assert (not b!7334790))

(assert (not d!2277729))

(assert (not bm!668679))

(assert (not d!2277731))

(assert (not bm!668683))

(assert (not bm!668673))

(assert (not bm!668691))

(assert (not bm!668674))

(assert (not d!2277713))

(assert (not b!7334837))

(assert (not b!7334779))

(assert (not b!7334828))

(assert (not bm!668680))

(assert (not d!2277743))

(assert (not b!7334789))

(assert (not b!7334798))

(assert (not b!7334716))

(assert (not b!7334839))

(assert tp_is_empty!48381)

(assert (not d!2277709))

(assert (not b!7334838))

(assert (not d!2277733))

(assert (not b!7334727))

(assert (not b!7334785))

(assert (not b!7334726))

(assert (not d!2277717))

(assert (not bm!668692))

(assert (not b!7334713))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

