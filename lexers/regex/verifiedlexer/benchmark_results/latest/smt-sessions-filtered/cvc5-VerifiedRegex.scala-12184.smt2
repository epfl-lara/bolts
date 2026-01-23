; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!685900 () Bool)

(assert start!685900)

(declare-fun b!7065714 () Bool)

(assert (=> b!7065714 true))

(declare-fun b!7065701 () Bool)

(assert (=> b!7065701 true))

(declare-fun b!7065715 () Bool)

(assert (=> b!7065715 true))

(declare-fun bs!1879711 () Bool)

(declare-fun b!7065702 () Bool)

(assert (= bs!1879711 (and b!7065702 b!7065714)))

(declare-fun lambda!423691 () Int)

(declare-fun lambda!423687 () Int)

(assert (=> bs!1879711 (not (= lambda!423691 lambda!423687))))

(declare-fun bs!1879712 () Bool)

(declare-fun b!7065703 () Bool)

(assert (= bs!1879712 (and b!7065703 b!7065714)))

(declare-datatypes ((C!35498 0))(
  ( (C!35499 (val!27451 Int)) )
))
(declare-datatypes ((List!68368 0))(
  ( (Nil!68244) (Cons!68244 (h!74692 C!35498) (t!382149 List!68368)) )
))
(declare-datatypes ((tuple2!68230 0))(
  ( (tuple2!68231 (_1!37418 List!68368) (_2!37418 List!68368)) )
))
(declare-fun lt!2540740 () tuple2!68230)

(declare-fun s!7408 () List!68368)

(declare-fun lambda!423692 () Int)

(assert (=> bs!1879712 (= (= (_1!37418 lt!2540740) s!7408) (= lambda!423692 lambda!423687))))

(declare-fun bs!1879713 () Bool)

(assert (= bs!1879713 (and b!7065703 b!7065702)))

(assert (=> bs!1879713 (not (= lambda!423692 lambda!423691))))

(assert (=> b!7065703 true))

(declare-fun b!7065698 () Bool)

(declare-fun e!4247811 () Bool)

(declare-fun e!4247815 () Bool)

(assert (=> b!7065698 (= e!4247811 e!4247815)))

(declare-fun res!2885166 () Bool)

(assert (=> b!7065698 (=> res!2885166 e!4247815)))

(declare-fun lt!2540787 () Int)

(declare-datatypes ((Regex!17614 0))(
  ( (ElementMatch!17614 (c!1317496 C!35498)) (Concat!26459 (regOne!35740 Regex!17614) (regTwo!35740 Regex!17614)) (EmptyExpr!17614) (Star!17614 (reg!17943 Regex!17614)) (EmptyLang!17614) (Union!17614 (regOne!35741 Regex!17614) (regTwo!35741 Regex!17614)) )
))
(declare-datatypes ((List!68369 0))(
  ( (Nil!68245) (Cons!68245 (h!74693 Regex!17614) (t!382150 List!68369)) )
))
(declare-datatypes ((Context!13220 0))(
  ( (Context!13221 (exprs!7110 List!68369)) )
))
(declare-fun lt!2540775 () Context!13220)

(declare-fun contextDepthTotal!550 (Context!13220) Int)

(assert (=> b!7065698 (= res!2885166 (<= lt!2540787 (contextDepthTotal!550 lt!2540775)))))

(declare-fun lt!2540784 () Int)

(assert (=> b!7065698 (<= lt!2540787 lt!2540784)))

(declare-datatypes ((List!68370 0))(
  ( (Nil!68246) (Cons!68246 (h!74694 Context!13220) (t!382151 List!68370)) )
))
(declare-fun lt!2540763 () List!68370)

(declare-fun zipperDepthTotal!579 (List!68370) Int)

(assert (=> b!7065698 (= lt!2540784 (zipperDepthTotal!579 lt!2540763))))

(declare-fun lt!2540768 () Context!13220)

(assert (=> b!7065698 (= lt!2540787 (contextDepthTotal!550 lt!2540768))))

(declare-datatypes ((Unit!161924 0))(
  ( (Unit!161925) )
))
(declare-fun lt!2540726 () Unit!161924)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!117 (List!68370 Context!13220) Unit!161924)

(assert (=> b!7065698 (= lt!2540726 (lemmaTotalDepthZipperLargerThanOfAnyContext!117 lt!2540763 lt!2540768))))

(declare-fun z1!570 () (Set Context!13220))

(declare-fun toList!10955 ((Set Context!13220)) List!68370)

(assert (=> b!7065698 (= lt!2540763 (toList!10955 z1!570))))

(declare-fun lt!2540727 () Unit!161924)

(declare-fun lambda!423689 () Int)

(declare-fun lt!2540776 () List!68369)

(declare-fun ct2!306 () Context!13220)

(declare-fun lemmaConcatPreservesForall!925 (List!68369 List!68369 Int) Unit!161924)

(assert (=> b!7065698 (= lt!2540727 (lemmaConcatPreservesForall!925 lt!2540776 (exprs!7110 ct2!306) lambda!423689))))

(declare-fun lt!2540785 () Unit!161924)

(assert (=> b!7065698 (= lt!2540785 (lemmaConcatPreservesForall!925 lt!2540776 (exprs!7110 ct2!306) lambda!423689))))

(declare-fun lt!2540737 () Unit!161924)

(assert (=> b!7065698 (= lt!2540737 (lemmaConcatPreservesForall!925 lt!2540776 (exprs!7110 ct2!306) lambda!423689))))

(declare-fun lt!2540756 () (Set Context!13220))

(declare-fun lambda!423690 () Int)

(declare-fun flatMap!2540 ((Set Context!13220) Int) (Set Context!13220))

(declare-fun derivationStepZipperUp!2198 (Context!13220 C!35498) (Set Context!13220))

(assert (=> b!7065698 (= (flatMap!2540 lt!2540756 lambda!423690) (derivationStepZipperUp!2198 lt!2540775 (h!74692 s!7408)))))

(declare-fun lt!2540790 () Unit!161924)

(declare-fun lemmaFlatMapOnSingletonSet!2049 ((Set Context!13220) Context!13220 Int) Unit!161924)

(assert (=> b!7065698 (= lt!2540790 (lemmaFlatMapOnSingletonSet!2049 lt!2540756 lt!2540775 lambda!423690))))

(declare-fun lambda!423688 () Int)

(declare-fun map!15954 ((Set Context!13220) Int) (Set Context!13220))

(declare-fun ++!15725 (List!68369 List!68369) List!68369)

(assert (=> b!7065698 (= (map!15954 lt!2540756 lambda!423688) (set.insert (Context!13221 (++!15725 lt!2540776 (exprs!7110 ct2!306))) (as set.empty (Set Context!13220))))))

(declare-fun lt!2540731 () Unit!161924)

(assert (=> b!7065698 (= lt!2540731 (lemmaConcatPreservesForall!925 lt!2540776 (exprs!7110 ct2!306) lambda!423689))))

(declare-fun lt!2540744 () Unit!161924)

(declare-fun lemmaMapOnSingletonSet!431 ((Set Context!13220) Context!13220 Int) Unit!161924)

(assert (=> b!7065698 (= lt!2540744 (lemmaMapOnSingletonSet!431 lt!2540756 lt!2540775 lambda!423688))))

(assert (=> b!7065698 (= lt!2540756 (set.insert lt!2540775 (as set.empty (Set Context!13220))))))

(declare-fun b!7065699 () Bool)

(declare-fun e!4247809 () Bool)

(declare-fun e!4247821 () Bool)

(assert (=> b!7065699 (= e!4247809 e!4247821)))

(declare-fun res!2885178 () Bool)

(assert (=> b!7065699 (=> res!2885178 e!4247821)))

(declare-fun lt!2540738 () (Set Context!13220))

(declare-fun lt!2540735 () (Set Context!13220))

(assert (=> b!7065699 (= res!2885178 (not (= lt!2540738 lt!2540735)))))

(declare-fun lt!2540769 () (Set Context!13220))

(declare-fun lt!2540749 () (Set Context!13220))

(assert (=> b!7065699 (= lt!2540735 (set.union lt!2540769 lt!2540749))))

(declare-fun lt!2540783 () Context!13220)

(assert (=> b!7065699 (= lt!2540749 (derivationStepZipperUp!2198 lt!2540783 (h!74692 s!7408)))))

(declare-fun derivationStepZipperDown!2248 (Regex!17614 Context!13220 C!35498) (Set Context!13220))

(assert (=> b!7065699 (= lt!2540769 (derivationStepZipperDown!2248 (h!74693 (exprs!7110 lt!2540768)) lt!2540783 (h!74692 s!7408)))))

(assert (=> b!7065699 (= lt!2540783 (Context!13221 (++!15725 lt!2540776 (exprs!7110 ct2!306))))))

(declare-fun lt!2540736 () Unit!161924)

(assert (=> b!7065699 (= lt!2540736 (lemmaConcatPreservesForall!925 lt!2540776 (exprs!7110 ct2!306) lambda!423689))))

(declare-fun lt!2540773 () Unit!161924)

(assert (=> b!7065699 (= lt!2540773 (lemmaConcatPreservesForall!925 lt!2540776 (exprs!7110 ct2!306) lambda!423689))))

(declare-fun b!7065700 () Bool)

(declare-fun e!4247808 () Bool)

(declare-fun isPrefix!5847 (List!68368 List!68368) Bool)

(assert (=> b!7065700 (= e!4247808 (isPrefix!5847 Nil!68244 (_1!37418 lt!2540740)))))

(declare-fun e!4247817 () Bool)

(declare-fun e!4247816 () Bool)

(assert (=> b!7065701 (= e!4247817 e!4247816)))

(declare-fun res!2885169 () Bool)

(assert (=> b!7065701 (=> res!2885169 e!4247816)))

(declare-fun lt!2540739 () Context!13220)

(declare-fun lt!2540732 () Context!13220)

(assert (=> b!7065701 (= res!2885169 (or (not (= lt!2540739 lt!2540732)) (not (set.member lt!2540768 z1!570))))))

(assert (=> b!7065701 (= lt!2540739 (Context!13221 (++!15725 (exprs!7110 lt!2540768) (exprs!7110 ct2!306))))))

(declare-fun lt!2540789 () Unit!161924)

(assert (=> b!7065701 (= lt!2540789 (lemmaConcatPreservesForall!925 (exprs!7110 lt!2540768) (exprs!7110 ct2!306) lambda!423689))))

(declare-fun mapPost2!443 ((Set Context!13220) Int Context!13220) Context!13220)

(assert (=> b!7065701 (= lt!2540768 (mapPost2!443 z1!570 lambda!423688 lt!2540732))))

(declare-fun e!4247814 () Unit!161924)

(declare-fun Unit!161926 () Unit!161924)

(assert (=> b!7065702 (= e!4247814 Unit!161926)))

(declare-fun lt!2540791 () Context!13220)

(declare-fun getWitness!1698 ((Set Context!13220) Int) Context!13220)

(assert (=> b!7065702 (= lt!2540791 (getWitness!1698 lt!2540756 lambda!423691))))

(declare-fun lt!2540766 () Unit!161924)

(declare-fun lemmaContainsThenExists!146 ((Set Context!13220) Context!13220 Int) Unit!161924)

(assert (=> b!7065702 (= lt!2540766 (lemmaContainsThenExists!146 lt!2540756 lt!2540775 lambda!423691))))

(declare-fun exists!3638 ((Set Context!13220) Int) Bool)

(assert (=> b!7065702 (exists!3638 lt!2540756 lambda!423691)))

(declare-fun lt!2540750 () (Set Context!13220))

(assert (=> b!7065702 (= lt!2540750 (set.insert lt!2540768 (as set.empty (Set Context!13220))))))

(declare-fun lt!2540774 () Unit!161924)

(assert (=> b!7065702 (= lt!2540774 (lemmaContainsThenExists!146 lt!2540750 lt!2540768 lambda!423691))))

(assert (=> b!7065702 (exists!3638 lt!2540750 lambda!423691)))

(declare-fun lt!2540792 () Unit!161924)

(declare-fun call!642096 () Unit!161924)

(assert (=> b!7065702 (= lt!2540792 call!642096)))

(declare-fun call!642095 () Bool)

(assert (=> b!7065702 call!642095))

(declare-fun res!2885177 () Bool)

(declare-fun e!4247819 () Bool)

(assert (=> start!685900 (=> (not res!2885177) (not e!4247819))))

(declare-fun lt!2540762 () (Set Context!13220))

(declare-fun matchZipper!3154 ((Set Context!13220) List!68368) Bool)

(assert (=> start!685900 (= res!2885177 (matchZipper!3154 lt!2540762 s!7408))))

(declare-fun appendTo!735 ((Set Context!13220) Context!13220) (Set Context!13220))

(assert (=> start!685900 (= lt!2540762 (appendTo!735 z1!570 ct2!306))))

(assert (=> start!685900 e!4247819))

(declare-fun condSetEmpty!50100 () Bool)

(assert (=> start!685900 (= condSetEmpty!50100 (= z1!570 (as set.empty (Set Context!13220))))))

(declare-fun setRes!50100 () Bool)

(assert (=> start!685900 setRes!50100))

(declare-fun e!4247803 () Bool)

(declare-fun inv!86895 (Context!13220) Bool)

(assert (=> start!685900 (and (inv!86895 ct2!306) e!4247803)))

(declare-fun e!4247804 () Bool)

(assert (=> start!685900 e!4247804))

(declare-fun e!4247812 () Bool)

(assert (=> b!7065703 (= e!4247812 e!4247808)))

(declare-fun res!2885167 () Bool)

(assert (=> b!7065703 (=> res!2885167 e!4247808)))

(assert (=> b!7065703 (= res!2885167 (not (matchZipper!3154 z1!570 (_1!37418 lt!2540740))))))

(declare-fun content!13743 (List!68370) (Set Context!13220))

(assert (=> b!7065703 (matchZipper!3154 (content!13743 lt!2540763) (_1!37418 lt!2540740))))

(declare-fun lt!2540754 () Unit!161924)

(declare-fun lemmaExistsMatchingContextThenMatchingString!43 (List!68370 List!68368) Unit!161924)

(assert (=> b!7065703 (= lt!2540754 (lemmaExistsMatchingContextThenMatchingString!43 lt!2540763 (_1!37418 lt!2540740)))))

(assert (=> b!7065703 (exists!3638 z1!570 lambda!423692)))

(declare-fun lt!2540730 () Unit!161924)

(assert (=> b!7065703 (= lt!2540730 (lemmaContainsThenExists!146 z1!570 lt!2540768 lambda!423692))))

(declare-fun lt!2540770 () Unit!161924)

(assert (=> b!7065703 (= lt!2540770 e!4247814)))

(declare-fun c!1317495 () Bool)

(declare-fun isEmpty!39823 (List!68368) Bool)

(assert (=> b!7065703 (= c!1317495 (isEmpty!39823 (_1!37418 lt!2540740)))))

(declare-fun b!7065704 () Bool)

(declare-fun e!4247807 () Bool)

(assert (=> b!7065704 (= e!4247807 (matchZipper!3154 lt!2540749 (t!382149 s!7408)))))

(declare-fun b!7065705 () Bool)

(declare-fun e!4247810 () Bool)

(declare-fun lt!2540760 () (Set Context!13220))

(declare-fun lt!2540748 () List!68368)

(assert (=> b!7065705 (= e!4247810 (matchZipper!3154 lt!2540760 lt!2540748))))

(declare-fun b!7065706 () Bool)

(declare-fun e!4247805 () Bool)

(assert (=> b!7065706 (= e!4247805 (not (matchZipper!3154 lt!2540749 (t!382149 s!7408))))))

(declare-fun lt!2540780 () Unit!161924)

(assert (=> b!7065706 (= lt!2540780 (lemmaConcatPreservesForall!925 lt!2540776 (exprs!7110 ct2!306) lambda!423689))))

(declare-fun b!7065707 () Bool)

(declare-fun res!2885187 () Bool)

(assert (=> b!7065707 (=> res!2885187 e!4247815)))

(assert (=> b!7065707 (= res!2885187 (>= (zipperDepthTotal!579 (Cons!68246 lt!2540775 Nil!68246)) lt!2540784))))

(declare-fun b!7065708 () Bool)

(declare-fun res!2885171 () Bool)

(assert (=> b!7065708 (=> res!2885171 e!4247812)))

(declare-fun ++!15726 (List!68368 List!68368) List!68368)

(assert (=> b!7065708 (= res!2885171 (not (= (++!15726 (_1!37418 lt!2540740) (_2!37418 lt!2540740)) s!7408)))))

(declare-fun b!7065709 () Bool)

(declare-fun tp!1941528 () Bool)

(assert (=> b!7065709 (= e!4247803 tp!1941528)))

(declare-fun b!7065710 () Bool)

(declare-fun res!2885165 () Bool)

(assert (=> b!7065710 (=> res!2885165 e!4247812)))

(declare-fun lt!2540781 () (Set Context!13220))

(assert (=> b!7065710 (= res!2885165 (not (matchZipper!3154 lt!2540781 (_2!37418 lt!2540740))))))

(declare-fun b!7065711 () Bool)

(declare-fun res!2885180 () Bool)

(assert (=> b!7065711 (=> (not res!2885180) (not e!4247819))))

(assert (=> b!7065711 (= res!2885180 (is-Cons!68244 s!7408))))

(declare-fun bm!642090 () Bool)

(declare-fun lt!2540743 () (Set Context!13220))

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!63 ((Set Context!13220) (Set Context!13220) List!68368 List!68368 List!68368 List!68368 List!68368) Unit!161924)

(assert (=> bm!642090 (= call!642096 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!63 (ite c!1317495 lt!2540750 lt!2540743) lt!2540781 (_1!37418 lt!2540740) (_2!37418 lt!2540740) s!7408 Nil!68244 s!7408))))

(declare-fun b!7065712 () Bool)

(declare-fun tp_is_empty!44453 () Bool)

(declare-fun tp!1941526 () Bool)

(assert (=> b!7065712 (= e!4247804 (and tp_is_empty!44453 tp!1941526))))

(declare-fun b!7065713 () Bool)

(declare-fun res!2885185 () Bool)

(declare-fun e!4247818 () Bool)

(assert (=> b!7065713 (=> res!2885185 e!4247818)))

(declare-fun lt!2540755 () Bool)

(assert (=> b!7065713 (= res!2885185 (not lt!2540755))))

(declare-fun bm!642091 () Bool)

(declare-datatypes ((Option!16947 0))(
  ( (None!16946) (Some!16946 (v!53240 tuple2!68230)) )
))
(declare-fun call!642097 () Option!16947)

(declare-fun findConcatSeparationZippers!463 ((Set Context!13220) (Set Context!13220) List!68368 List!68368 List!68368) Option!16947)

(assert (=> bm!642091 (= call!642097 (findConcatSeparationZippers!463 (ite c!1317495 lt!2540750 lt!2540743) lt!2540781 Nil!68244 s!7408 s!7408))))

(assert (=> b!7065714 (= e!4247819 (not e!4247817))))

(declare-fun res!2885168 () Bool)

(assert (=> b!7065714 (=> res!2885168 e!4247817)))

(declare-fun lt!2540751 () (Set Context!13220))

(assert (=> b!7065714 (= res!2885168 (not (matchZipper!3154 lt!2540751 s!7408)))))

(assert (=> b!7065714 (= lt!2540751 (set.insert lt!2540732 (as set.empty (Set Context!13220))))))

(assert (=> b!7065714 (= lt!2540732 (getWitness!1698 lt!2540762 lambda!423687))))

(declare-fun lt!2540778 () List!68370)

(declare-fun exists!3639 (List!68370 Int) Bool)

(assert (=> b!7065714 (exists!3639 lt!2540778 lambda!423687)))

(declare-fun lt!2540779 () Unit!161924)

(declare-fun lemmaZipperMatchesExistsMatchingContext!535 (List!68370 List!68368) Unit!161924)

(assert (=> b!7065714 (= lt!2540779 (lemmaZipperMatchesExistsMatchingContext!535 lt!2540778 s!7408))))

(assert (=> b!7065714 (= lt!2540778 (toList!10955 lt!2540762))))

(declare-fun e!4247806 () Bool)

(declare-fun e!4247823 () Bool)

(assert (=> b!7065715 (= e!4247806 e!4247823)))

(declare-fun res!2885179 () Bool)

(assert (=> b!7065715 (=> res!2885179 e!4247823)))

(declare-fun lt!2540746 () (Set Context!13220))

(declare-fun derivationStepZipper!3064 ((Set Context!13220) C!35498) (Set Context!13220))

(assert (=> b!7065715 (= res!2885179 (not (= (derivationStepZipper!3064 lt!2540746 (h!74692 s!7408)) lt!2540738)))))

(assert (=> b!7065715 (= (flatMap!2540 lt!2540746 lambda!423690) (derivationStepZipperUp!2198 lt!2540739 (h!74692 s!7408)))))

(declare-fun lt!2540752 () Unit!161924)

(assert (=> b!7065715 (= lt!2540752 (lemmaFlatMapOnSingletonSet!2049 lt!2540746 lt!2540739 lambda!423690))))

(assert (=> b!7065715 (= lt!2540738 (derivationStepZipperUp!2198 lt!2540739 (h!74692 s!7408)))))

(declare-fun lt!2540745 () Unit!161924)

(assert (=> b!7065715 (= lt!2540745 (lemmaConcatPreservesForall!925 (exprs!7110 lt!2540768) (exprs!7110 ct2!306) lambda!423689))))

(declare-fun b!7065716 () Bool)

(declare-fun e!4247820 () Bool)

(assert (=> b!7065716 (= e!4247820 e!4247811)))

(declare-fun res!2885170 () Bool)

(assert (=> b!7065716 (=> res!2885170 e!4247811)))

(declare-fun lt!2540753 () (Set Context!13220))

(assert (=> b!7065716 (= res!2885170 (not (matchZipper!3154 lt!2540753 s!7408)))))

(declare-fun lt!2540772 () Unit!161924)

(assert (=> b!7065716 (= lt!2540772 (lemmaConcatPreservesForall!925 lt!2540776 (exprs!7110 ct2!306) lambda!423689))))

(declare-fun b!7065717 () Bool)

(declare-fun res!2885184 () Bool)

(assert (=> b!7065717 (=> res!2885184 e!4247823)))

(assert (=> b!7065717 (= res!2885184 (not (is-Cons!68245 (exprs!7110 lt!2540768))))))

(declare-fun b!7065718 () Bool)

(declare-fun e!4247813 () Bool)

(assert (=> b!7065718 (= e!4247813 e!4247820)))

(declare-fun res!2885181 () Bool)

(assert (=> b!7065718 (=> res!2885181 e!4247820)))

(assert (=> b!7065718 (= res!2885181 (not (= (derivationStepZipper!3064 lt!2540753 (h!74692 s!7408)) lt!2540749)))))

(declare-fun lt!2540741 () Unit!161924)

(assert (=> b!7065718 (= lt!2540741 (lemmaConcatPreservesForall!925 lt!2540776 (exprs!7110 ct2!306) lambda!423689))))

(declare-fun lt!2540765 () Unit!161924)

(assert (=> b!7065718 (= lt!2540765 (lemmaConcatPreservesForall!925 lt!2540776 (exprs!7110 ct2!306) lambda!423689))))

(assert (=> b!7065718 (= (flatMap!2540 lt!2540753 lambda!423690) (derivationStepZipperUp!2198 lt!2540783 (h!74692 s!7408)))))

(declare-fun lt!2540759 () Unit!161924)

(assert (=> b!7065718 (= lt!2540759 (lemmaFlatMapOnSingletonSet!2049 lt!2540753 lt!2540783 lambda!423690))))

(assert (=> b!7065718 (= lt!2540753 (set.insert lt!2540783 (as set.empty (Set Context!13220))))))

(declare-fun lt!2540728 () Unit!161924)

(assert (=> b!7065718 (= lt!2540728 (lemmaConcatPreservesForall!925 lt!2540776 (exprs!7110 ct2!306) lambda!423689))))

(declare-fun lt!2540757 () Unit!161924)

(assert (=> b!7065718 (= lt!2540757 (lemmaConcatPreservesForall!925 lt!2540776 (exprs!7110 ct2!306) lambda!423689))))

(declare-fun setIsEmpty!50100 () Bool)

(assert (=> setIsEmpty!50100 setRes!50100))

(declare-fun b!7065719 () Bool)

(assert (=> b!7065719 (= e!4247821 e!4247818)))

(declare-fun res!2885186 () Bool)

(assert (=> b!7065719 (=> res!2885186 e!4247818)))

(assert (=> b!7065719 (= res!2885186 e!4247805)))

(declare-fun res!2885176 () Bool)

(assert (=> b!7065719 (=> (not res!2885176) (not e!4247805))))

(declare-fun lt!2540777 () Bool)

(assert (=> b!7065719 (= res!2885176 (not (= lt!2540755 lt!2540777)))))

(assert (=> b!7065719 (= lt!2540755 (matchZipper!3154 lt!2540738 (t!382149 s!7408)))))

(declare-fun lt!2540782 () Unit!161924)

(assert (=> b!7065719 (= lt!2540782 (lemmaConcatPreservesForall!925 lt!2540776 (exprs!7110 ct2!306) lambda!423689))))

(assert (=> b!7065719 (= (matchZipper!3154 lt!2540735 (t!382149 s!7408)) e!4247807)))

(declare-fun res!2885163 () Bool)

(assert (=> b!7065719 (=> res!2885163 e!4247807)))

(assert (=> b!7065719 (= res!2885163 lt!2540777)))

(assert (=> b!7065719 (= lt!2540777 (matchZipper!3154 lt!2540769 (t!382149 s!7408)))))

(declare-fun lt!2540771 () Unit!161924)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1627 ((Set Context!13220) (Set Context!13220) List!68368) Unit!161924)

(assert (=> b!7065719 (= lt!2540771 (lemmaZipperConcatMatchesSameAsBothZippers!1627 lt!2540769 lt!2540749 (t!382149 s!7408)))))

(declare-fun lt!2540761 () Unit!161924)

(assert (=> b!7065719 (= lt!2540761 (lemmaConcatPreservesForall!925 lt!2540776 (exprs!7110 ct2!306) lambda!423689))))

(declare-fun lt!2540758 () Unit!161924)

(assert (=> b!7065719 (= lt!2540758 (lemmaConcatPreservesForall!925 lt!2540776 (exprs!7110 ct2!306) lambda!423689))))

(declare-fun e!4247822 () Bool)

(declare-fun tp!1941525 () Bool)

(declare-fun setNonEmpty!50100 () Bool)

(declare-fun setElem!50100 () Context!13220)

(assert (=> setNonEmpty!50100 (= setRes!50100 (and tp!1941525 (inv!86895 setElem!50100) e!4247822))))

(declare-fun setRest!50100 () (Set Context!13220))

(assert (=> setNonEmpty!50100 (= z1!570 (set.union (set.insert setElem!50100 (as set.empty (Set Context!13220))) setRest!50100))))

(declare-fun b!7065720 () Bool)

(assert (=> b!7065720 (= e!4247816 e!4247806)))

(declare-fun res!2885172 () Bool)

(assert (=> b!7065720 (=> res!2885172 e!4247806)))

(assert (=> b!7065720 (= res!2885172 (not (= lt!2540746 lt!2540751)))))

(assert (=> b!7065720 (= lt!2540746 (set.insert lt!2540739 (as set.empty (Set Context!13220))))))

(declare-fun lt!2540733 () Unit!161924)

(assert (=> b!7065720 (= lt!2540733 (lemmaConcatPreservesForall!925 (exprs!7110 lt!2540768) (exprs!7110 ct2!306) lambda!423689))))

(declare-fun b!7065721 () Bool)

(declare-fun Unit!161927 () Unit!161924)

(assert (=> b!7065721 (= e!4247814 Unit!161927)))

(assert (=> b!7065721 (= lt!2540743 (set.insert lt!2540768 (as set.empty (Set Context!13220))))))

(declare-fun lt!2540747 () Unit!161924)

(assert (=> b!7065721 (= lt!2540747 (lemmaFlatMapOnSingletonSet!2049 lt!2540743 lt!2540768 lambda!423690))))

(assert (=> b!7065721 (= (flatMap!2540 lt!2540743 lambda!423690) (derivationStepZipperUp!2198 lt!2540768 (h!74692 s!7408)))))

(declare-fun lt!2540742 () (Set Context!13220))

(assert (=> b!7065721 (= lt!2540742 (derivationStepZipperDown!2248 (h!74693 (exprs!7110 lt!2540768)) lt!2540775 (h!74692 s!7408)))))

(assert (=> b!7065721 (= lt!2540760 (derivationStepZipperUp!2198 lt!2540775 (h!74692 s!7408)))))

(declare-fun tail!13776 (List!68368) List!68368)

(assert (=> b!7065721 (= lt!2540748 (tail!13776 (_1!37418 lt!2540740)))))

(declare-fun lt!2540734 () Unit!161924)

(assert (=> b!7065721 (= lt!2540734 (lemmaZipperConcatMatchesSameAsBothZippers!1627 lt!2540742 lt!2540760 lt!2540748))))

(declare-fun res!2885174 () Bool)

(assert (=> b!7065721 (= res!2885174 (matchZipper!3154 lt!2540742 lt!2540748))))

(assert (=> b!7065721 (=> res!2885174 e!4247810)))

(assert (=> b!7065721 (= (matchZipper!3154 (set.union lt!2540742 lt!2540760) lt!2540748) e!4247810)))

(declare-fun lt!2540764 () Unit!161924)

(assert (=> b!7065721 (= lt!2540764 (lemmaFlatMapOnSingletonSet!2049 lt!2540756 lt!2540775 lambda!423690))))

(assert (=> b!7065721 (= (flatMap!2540 lt!2540756 lambda!423690) (derivationStepZipperUp!2198 lt!2540775 (h!74692 s!7408)))))

(declare-fun lt!2540729 () Unit!161924)

(assert (=> b!7065721 (= lt!2540729 call!642096)))

(assert (=> b!7065721 call!642095))

(declare-fun b!7065722 () Bool)

(assert (=> b!7065722 (= e!4247815 e!4247812)))

(declare-fun res!2885173 () Bool)

(assert (=> b!7065722 (=> res!2885173 e!4247812)))

(assert (=> b!7065722 (= res!2885173 (not (matchZipper!3154 lt!2540756 (_1!37418 lt!2540740))))))

(declare-fun lt!2540786 () Option!16947)

(declare-fun get!23905 (Option!16947) tuple2!68230)

(assert (=> b!7065722 (= lt!2540740 (get!23905 lt!2540786))))

(declare-fun isDefined!13648 (Option!16947) Bool)

(assert (=> b!7065722 (isDefined!13648 lt!2540786)))

(assert (=> b!7065722 (= lt!2540786 (findConcatSeparationZippers!463 lt!2540756 lt!2540781 Nil!68244 s!7408 s!7408))))

(assert (=> b!7065722 (= lt!2540781 (set.insert ct2!306 (as set.empty (Set Context!13220))))))

(declare-fun lt!2540767 () Unit!161924)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!451 ((Set Context!13220) Context!13220 List!68368) Unit!161924)

(assert (=> b!7065722 (= lt!2540767 (lemmaConcatZipperMatchesStringThenFindConcatDefined!451 lt!2540756 ct2!306 s!7408))))

(declare-fun b!7065723 () Bool)

(assert (=> b!7065723 (= e!4247823 e!4247809)))

(declare-fun res!2885175 () Bool)

(assert (=> b!7065723 (=> res!2885175 e!4247809)))

(declare-fun nullable!7297 (Regex!17614) Bool)

(assert (=> b!7065723 (= res!2885175 (not (nullable!7297 (h!74693 (exprs!7110 lt!2540768)))))))

(assert (=> b!7065723 (= lt!2540775 (Context!13221 lt!2540776))))

(declare-fun tail!13777 (List!68369) List!68369)

(assert (=> b!7065723 (= lt!2540776 (tail!13777 (exprs!7110 lt!2540768)))))

(declare-fun b!7065724 () Bool)

(assert (=> b!7065724 (= e!4247818 e!4247813)))

(declare-fun res!2885164 () Bool)

(assert (=> b!7065724 (=> res!2885164 e!4247813)))

(assert (=> b!7065724 (= res!2885164 (not (matchZipper!3154 lt!2540749 (t!382149 s!7408))))))

(declare-fun lt!2540788 () Unit!161924)

(assert (=> b!7065724 (= lt!2540788 (lemmaConcatPreservesForall!925 lt!2540776 (exprs!7110 ct2!306) lambda!423689))))

(declare-fun b!7065725 () Bool)

(declare-fun tp!1941527 () Bool)

(assert (=> b!7065725 (= e!4247822 tp!1941527)))

(declare-fun b!7065726 () Bool)

(declare-fun res!2885183 () Bool)

(assert (=> b!7065726 (=> res!2885183 e!4247823)))

(declare-fun isEmpty!39824 (List!68369) Bool)

(assert (=> b!7065726 (= res!2885183 (isEmpty!39824 (exprs!7110 lt!2540768)))))

(declare-fun bm!642092 () Bool)

(assert (=> bm!642092 (= call!642095 (isDefined!13648 call!642097))))

(declare-fun b!7065727 () Bool)

(declare-fun res!2885182 () Bool)

(assert (=> b!7065727 (=> res!2885182 e!4247817)))

(assert (=> b!7065727 (= res!2885182 (not (set.member lt!2540732 lt!2540762)))))

(assert (= (and start!685900 res!2885177) b!7065711))

(assert (= (and b!7065711 res!2885180) b!7065714))

(assert (= (and b!7065714 (not res!2885168)) b!7065727))

(assert (= (and b!7065727 (not res!2885182)) b!7065701))

(assert (= (and b!7065701 (not res!2885169)) b!7065720))

(assert (= (and b!7065720 (not res!2885172)) b!7065715))

(assert (= (and b!7065715 (not res!2885179)) b!7065717))

(assert (= (and b!7065717 (not res!2885184)) b!7065726))

(assert (= (and b!7065726 (not res!2885183)) b!7065723))

(assert (= (and b!7065723 (not res!2885175)) b!7065699))

(assert (= (and b!7065699 (not res!2885178)) b!7065719))

(assert (= (and b!7065719 (not res!2885163)) b!7065704))

(assert (= (and b!7065719 res!2885176) b!7065706))

(assert (= (and b!7065719 (not res!2885186)) b!7065713))

(assert (= (and b!7065713 (not res!2885185)) b!7065724))

(assert (= (and b!7065724 (not res!2885164)) b!7065718))

(assert (= (and b!7065718 (not res!2885181)) b!7065716))

(assert (= (and b!7065716 (not res!2885170)) b!7065698))

(assert (= (and b!7065698 (not res!2885166)) b!7065707))

(assert (= (and b!7065707 (not res!2885187)) b!7065722))

(assert (= (and b!7065722 (not res!2885173)) b!7065710))

(assert (= (and b!7065710 (not res!2885165)) b!7065708))

(assert (= (and b!7065708 (not res!2885171)) b!7065703))

(assert (= (and b!7065703 c!1317495) b!7065702))

(assert (= (and b!7065703 (not c!1317495)) b!7065721))

(assert (= (and b!7065721 (not res!2885174)) b!7065705))

(assert (= (or b!7065702 b!7065721) bm!642090))

(assert (= (or b!7065702 b!7065721) bm!642091))

(assert (= (or b!7065702 b!7065721) bm!642092))

(assert (= (and b!7065703 (not res!2885167)) b!7065700))

(assert (= (and start!685900 condSetEmpty!50100) setIsEmpty!50100))

(assert (= (and start!685900 (not condSetEmpty!50100)) setNonEmpty!50100))

(assert (= setNonEmpty!50100 b!7065725))

(assert (= start!685900 b!7065709))

(assert (= (and start!685900 (is-Cons!68244 s!7408)) b!7065712))

(declare-fun m!7788804 () Bool)

(assert (=> b!7065701 m!7788804))

(declare-fun m!7788806 () Bool)

(assert (=> b!7065701 m!7788806))

(declare-fun m!7788808 () Bool)

(assert (=> b!7065701 m!7788808))

(declare-fun m!7788810 () Bool)

(assert (=> b!7065701 m!7788810))

(declare-fun m!7788812 () Bool)

(assert (=> b!7065726 m!7788812))

(declare-fun m!7788814 () Bool)

(assert (=> b!7065706 m!7788814))

(declare-fun m!7788816 () Bool)

(assert (=> b!7065706 m!7788816))

(declare-fun m!7788818 () Bool)

(assert (=> b!7065710 m!7788818))

(assert (=> b!7065715 m!7788808))

(declare-fun m!7788820 () Bool)

(assert (=> b!7065715 m!7788820))

(declare-fun m!7788822 () Bool)

(assert (=> b!7065715 m!7788822))

(declare-fun m!7788824 () Bool)

(assert (=> b!7065715 m!7788824))

(declare-fun m!7788826 () Bool)

(assert (=> b!7065715 m!7788826))

(declare-fun m!7788828 () Bool)

(assert (=> b!7065716 m!7788828))

(assert (=> b!7065716 m!7788816))

(declare-fun m!7788830 () Bool)

(assert (=> bm!642090 m!7788830))

(declare-fun m!7788832 () Bool)

(assert (=> b!7065722 m!7788832))

(declare-fun m!7788834 () Bool)

(assert (=> b!7065722 m!7788834))

(declare-fun m!7788836 () Bool)

(assert (=> b!7065722 m!7788836))

(declare-fun m!7788838 () Bool)

(assert (=> b!7065722 m!7788838))

(declare-fun m!7788840 () Bool)

(assert (=> b!7065722 m!7788840))

(declare-fun m!7788842 () Bool)

(assert (=> b!7065722 m!7788842))

(declare-fun m!7788844 () Bool)

(assert (=> b!7065702 m!7788844))

(declare-fun m!7788846 () Bool)

(assert (=> b!7065702 m!7788846))

(declare-fun m!7788848 () Bool)

(assert (=> b!7065702 m!7788848))

(declare-fun m!7788850 () Bool)

(assert (=> b!7065702 m!7788850))

(declare-fun m!7788852 () Bool)

(assert (=> b!7065702 m!7788852))

(declare-fun m!7788854 () Bool)

(assert (=> b!7065702 m!7788854))

(assert (=> b!7065699 m!7788816))

(declare-fun m!7788856 () Bool)

(assert (=> b!7065699 m!7788856))

(declare-fun m!7788858 () Bool)

(assert (=> b!7065699 m!7788858))

(assert (=> b!7065699 m!7788816))

(declare-fun m!7788860 () Bool)

(assert (=> b!7065699 m!7788860))

(declare-fun m!7788862 () Bool)

(assert (=> b!7065720 m!7788862))

(assert (=> b!7065720 m!7788808))

(declare-fun m!7788864 () Bool)

(assert (=> setNonEmpty!50100 m!7788864))

(declare-fun m!7788866 () Bool)

(assert (=> b!7065707 m!7788866))

(declare-fun m!7788868 () Bool)

(assert (=> b!7065703 m!7788868))

(declare-fun m!7788870 () Bool)

(assert (=> b!7065703 m!7788870))

(declare-fun m!7788872 () Bool)

(assert (=> b!7065703 m!7788872))

(declare-fun m!7788874 () Bool)

(assert (=> b!7065703 m!7788874))

(declare-fun m!7788876 () Bool)

(assert (=> b!7065703 m!7788876))

(declare-fun m!7788878 () Bool)

(assert (=> b!7065703 m!7788878))

(assert (=> b!7065703 m!7788872))

(declare-fun m!7788880 () Bool)

(assert (=> b!7065703 m!7788880))

(declare-fun m!7788882 () Bool)

(assert (=> b!7065714 m!7788882))

(declare-fun m!7788884 () Bool)

(assert (=> b!7065714 m!7788884))

(declare-fun m!7788886 () Bool)

(assert (=> b!7065714 m!7788886))

(declare-fun m!7788888 () Bool)

(assert (=> b!7065714 m!7788888))

(declare-fun m!7788890 () Bool)

(assert (=> b!7065714 m!7788890))

(declare-fun m!7788892 () Bool)

(assert (=> b!7065714 m!7788892))

(declare-fun m!7788894 () Bool)

(assert (=> b!7065708 m!7788894))

(assert (=> b!7065704 m!7788814))

(declare-fun m!7788896 () Bool)

(assert (=> start!685900 m!7788896))

(declare-fun m!7788898 () Bool)

(assert (=> start!685900 m!7788898))

(declare-fun m!7788900 () Bool)

(assert (=> start!685900 m!7788900))

(declare-fun m!7788902 () Bool)

(assert (=> b!7065721 m!7788902))

(declare-fun m!7788904 () Bool)

(assert (=> b!7065721 m!7788904))

(declare-fun m!7788906 () Bool)

(assert (=> b!7065721 m!7788906))

(assert (=> b!7065721 m!7788846))

(declare-fun m!7788908 () Bool)

(assert (=> b!7065721 m!7788908))

(declare-fun m!7788910 () Bool)

(assert (=> b!7065721 m!7788910))

(declare-fun m!7788912 () Bool)

(assert (=> b!7065721 m!7788912))

(declare-fun m!7788914 () Bool)

(assert (=> b!7065721 m!7788914))

(declare-fun m!7788916 () Bool)

(assert (=> b!7065721 m!7788916))

(declare-fun m!7788918 () Bool)

(assert (=> b!7065721 m!7788918))

(declare-fun m!7788920 () Bool)

(assert (=> b!7065721 m!7788920))

(declare-fun m!7788922 () Bool)

(assert (=> b!7065721 m!7788922))

(assert (=> b!7065724 m!7788814))

(assert (=> b!7065724 m!7788816))

(declare-fun m!7788924 () Bool)

(assert (=> bm!642092 m!7788924))

(declare-fun m!7788926 () Bool)

(assert (=> b!7065727 m!7788926))

(declare-fun m!7788928 () Bool)

(assert (=> b!7065700 m!7788928))

(declare-fun m!7788930 () Bool)

(assert (=> b!7065705 m!7788930))

(declare-fun m!7788932 () Bool)

(assert (=> b!7065719 m!7788932))

(declare-fun m!7788934 () Bool)

(assert (=> b!7065719 m!7788934))

(assert (=> b!7065719 m!7788816))

(declare-fun m!7788936 () Bool)

(assert (=> b!7065719 m!7788936))

(assert (=> b!7065719 m!7788816))

(assert (=> b!7065719 m!7788816))

(declare-fun m!7788938 () Bool)

(assert (=> b!7065719 m!7788938))

(declare-fun m!7788940 () Bool)

(assert (=> b!7065723 m!7788940))

(declare-fun m!7788942 () Bool)

(assert (=> b!7065723 m!7788942))

(declare-fun m!7788944 () Bool)

(assert (=> b!7065698 m!7788944))

(declare-fun m!7788946 () Bool)

(assert (=> b!7065698 m!7788946))

(declare-fun m!7788948 () Bool)

(assert (=> b!7065698 m!7788948))

(assert (=> b!7065698 m!7788816))

(declare-fun m!7788950 () Bool)

(assert (=> b!7065698 m!7788950))

(declare-fun m!7788952 () Bool)

(assert (=> b!7065698 m!7788952))

(assert (=> b!7065698 m!7788860))

(declare-fun m!7788954 () Bool)

(assert (=> b!7065698 m!7788954))

(assert (=> b!7065698 m!7788912))

(assert (=> b!7065698 m!7788910))

(declare-fun m!7788956 () Bool)

(assert (=> b!7065698 m!7788956))

(assert (=> b!7065698 m!7788816))

(assert (=> b!7065698 m!7788816))

(assert (=> b!7065698 m!7788816))

(assert (=> b!7065698 m!7788908))

(declare-fun m!7788958 () Bool)

(assert (=> b!7065698 m!7788958))

(declare-fun m!7788960 () Bool)

(assert (=> b!7065698 m!7788960))

(declare-fun m!7788962 () Bool)

(assert (=> bm!642091 m!7788962))

(assert (=> b!7065718 m!7788816))

(assert (=> b!7065718 m!7788816))

(assert (=> b!7065718 m!7788858))

(assert (=> b!7065718 m!7788816))

(declare-fun m!7788964 () Bool)

(assert (=> b!7065718 m!7788964))

(assert (=> b!7065718 m!7788816))

(declare-fun m!7788966 () Bool)

(assert (=> b!7065718 m!7788966))

(declare-fun m!7788968 () Bool)

(assert (=> b!7065718 m!7788968))

(declare-fun m!7788970 () Bool)

(assert (=> b!7065718 m!7788970))

(push 1)

(assert (not b!7065715))

(assert (not b!7065705))

(assert (not b!7065710))

(assert (not b!7065704))

(assert (not b!7065698))

(assert (not b!7065722))

(assert (not b!7065699))

(assert (not b!7065702))

(assert tp_is_empty!44453)

(assert (not b!7065719))

(assert (not b!7065720))

(assert (not b!7065708))

(assert (not bm!642092))

(assert (not b!7065709))

(assert (not b!7065726))

(assert (not b!7065723))

(assert (not start!685900))

(assert (not b!7065721))

(assert (not b!7065724))

(assert (not b!7065714))

(assert (not b!7065725))

(assert (not b!7065700))

(assert (not b!7065706))

(assert (not bm!642091))

(assert (not b!7065703))

(assert (not b!7065701))

(assert (not b!7065712))

(assert (not b!7065707))

(assert (not b!7065716))

(assert (not b!7065718))

(assert (not setNonEmpty!50100))

(assert (not bm!642090))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!1317541 () Bool)

(declare-fun bm!642114 () Bool)

(declare-fun call!642121 () List!68369)

(declare-fun c!1317540 () Bool)

(declare-fun $colon$colon!2642 (List!68369 Regex!17614) List!68369)

(assert (=> bm!642114 (= call!642121 ($colon$colon!2642 (exprs!7110 lt!2540783) (ite (or c!1317541 c!1317540) (regTwo!35740 (h!74693 (exprs!7110 lt!2540768))) (h!74693 (exprs!7110 lt!2540768)))))))

(declare-fun b!7065856 () Bool)

(declare-fun e!4247902 () Bool)

(assert (=> b!7065856 (= c!1317541 e!4247902)))

(declare-fun res!2885266 () Bool)

(assert (=> b!7065856 (=> (not res!2885266) (not e!4247902))))

(assert (=> b!7065856 (= res!2885266 (is-Concat!26459 (h!74693 (exprs!7110 lt!2540768))))))

(declare-fun e!4247903 () (Set Context!13220))

(declare-fun e!4247904 () (Set Context!13220))

(assert (=> b!7065856 (= e!4247903 e!4247904)))

(declare-fun c!1317538 () Bool)

(declare-fun call!642123 () List!68369)

(declare-fun call!642122 () (Set Context!13220))

(declare-fun bm!642115 () Bool)

(assert (=> bm!642115 (= call!642122 (derivationStepZipperDown!2248 (ite c!1317538 (regOne!35741 (h!74693 (exprs!7110 lt!2540768))) (ite c!1317541 (regTwo!35740 (h!74693 (exprs!7110 lt!2540768))) (ite c!1317540 (regOne!35740 (h!74693 (exprs!7110 lt!2540768))) (reg!17943 (h!74693 (exprs!7110 lt!2540768)))))) (ite (or c!1317538 c!1317541) lt!2540783 (Context!13221 call!642123)) (h!74692 s!7408)))))

(declare-fun b!7065857 () Bool)

(declare-fun e!4247900 () (Set Context!13220))

(declare-fun call!642124 () (Set Context!13220))

(assert (=> b!7065857 (= e!4247900 call!642124)))

(declare-fun b!7065858 () Bool)

(declare-fun e!4247901 () (Set Context!13220))

(assert (=> b!7065858 (= e!4247901 (set.insert lt!2540783 (as set.empty (Set Context!13220))))))

(declare-fun b!7065859 () Bool)

(declare-fun call!642120 () (Set Context!13220))

(assert (=> b!7065859 (= e!4247903 (set.union call!642122 call!642120))))

(declare-fun b!7065860 () Bool)

(assert (=> b!7065860 (= e!4247901 e!4247903)))

(assert (=> b!7065860 (= c!1317538 (is-Union!17614 (h!74693 (exprs!7110 lt!2540768))))))

(declare-fun bm!642116 () Bool)

(assert (=> bm!642116 (= call!642123 call!642121)))

(declare-fun b!7065861 () Bool)

(declare-fun call!642119 () (Set Context!13220))

(assert (=> b!7065861 (= e!4247904 (set.union call!642120 call!642119))))

(declare-fun bm!642117 () Bool)

(assert (=> bm!642117 (= call!642120 (derivationStepZipperDown!2248 (ite c!1317538 (regTwo!35741 (h!74693 (exprs!7110 lt!2540768))) (regOne!35740 (h!74693 (exprs!7110 lt!2540768)))) (ite c!1317538 lt!2540783 (Context!13221 call!642121)) (h!74692 s!7408)))))

(declare-fun b!7065863 () Bool)

(declare-fun e!4247899 () (Set Context!13220))

(assert (=> b!7065863 (= e!4247904 e!4247899)))

(assert (=> b!7065863 (= c!1317540 (is-Concat!26459 (h!74693 (exprs!7110 lt!2540768))))))

(declare-fun b!7065864 () Bool)

(assert (=> b!7065864 (= e!4247900 (as set.empty (Set Context!13220)))))

(declare-fun bm!642118 () Bool)

(assert (=> bm!642118 (= call!642119 call!642122)))

(declare-fun b!7065865 () Bool)

(declare-fun c!1317537 () Bool)

(assert (=> b!7065865 (= c!1317537 (is-Star!17614 (h!74693 (exprs!7110 lt!2540768))))))

(assert (=> b!7065865 (= e!4247899 e!4247900)))

(declare-fun bm!642119 () Bool)

(assert (=> bm!642119 (= call!642124 call!642119)))

(declare-fun b!7065866 () Bool)

(assert (=> b!7065866 (= e!4247902 (nullable!7297 (regOne!35740 (h!74693 (exprs!7110 lt!2540768)))))))

(declare-fun b!7065862 () Bool)

(assert (=> b!7065862 (= e!4247899 call!642124)))

(declare-fun d!2209321 () Bool)

(declare-fun c!1317539 () Bool)

(assert (=> d!2209321 (= c!1317539 (and (is-ElementMatch!17614 (h!74693 (exprs!7110 lt!2540768))) (= (c!1317496 (h!74693 (exprs!7110 lt!2540768))) (h!74692 s!7408))))))

(assert (=> d!2209321 (= (derivationStepZipperDown!2248 (h!74693 (exprs!7110 lt!2540768)) lt!2540783 (h!74692 s!7408)) e!4247901)))

(assert (= (and d!2209321 c!1317539) b!7065858))

(assert (= (and d!2209321 (not c!1317539)) b!7065860))

(assert (= (and b!7065860 c!1317538) b!7065859))

(assert (= (and b!7065860 (not c!1317538)) b!7065856))

(assert (= (and b!7065856 res!2885266) b!7065866))

(assert (= (and b!7065856 c!1317541) b!7065861))

(assert (= (and b!7065856 (not c!1317541)) b!7065863))

(assert (= (and b!7065863 c!1317540) b!7065862))

(assert (= (and b!7065863 (not c!1317540)) b!7065865))

(assert (= (and b!7065865 c!1317537) b!7065857))

(assert (= (and b!7065865 (not c!1317537)) b!7065864))

(assert (= (or b!7065862 b!7065857) bm!642116))

(assert (= (or b!7065862 b!7065857) bm!642119))

(assert (= (or b!7065861 bm!642119) bm!642118))

(assert (= (or b!7065861 bm!642116) bm!642114))

(assert (= (or b!7065859 bm!642118) bm!642115))

(assert (= (or b!7065859 b!7065861) bm!642117))

(declare-fun m!7789140 () Bool)

(assert (=> bm!642117 m!7789140))

(assert (=> b!7065858 m!7788968))

(declare-fun m!7789142 () Bool)

(assert (=> bm!642115 m!7789142))

(declare-fun m!7789144 () Bool)

(assert (=> bm!642114 m!7789144))

(declare-fun m!7789146 () Bool)

(assert (=> b!7065866 m!7789146))

(assert (=> b!7065699 d!2209321))

(declare-fun d!2209323 () Bool)

(declare-fun forall!16561 (List!68369 Int) Bool)

(assert (=> d!2209323 (forall!16561 (++!15725 lt!2540776 (exprs!7110 ct2!306)) lambda!423689)))

(declare-fun lt!2541000 () Unit!161924)

(declare-fun choose!54042 (List!68369 List!68369 Int) Unit!161924)

(assert (=> d!2209323 (= lt!2541000 (choose!54042 lt!2540776 (exprs!7110 ct2!306) lambda!423689))))

(assert (=> d!2209323 (forall!16561 lt!2540776 lambda!423689)))

(assert (=> d!2209323 (= (lemmaConcatPreservesForall!925 lt!2540776 (exprs!7110 ct2!306) lambda!423689) lt!2541000)))

(declare-fun bs!1879717 () Bool)

(assert (= bs!1879717 d!2209323))

(assert (=> bs!1879717 m!7788860))

(assert (=> bs!1879717 m!7788860))

(declare-fun m!7789148 () Bool)

(assert (=> bs!1879717 m!7789148))

(declare-fun m!7789150 () Bool)

(assert (=> bs!1879717 m!7789150))

(declare-fun m!7789152 () Bool)

(assert (=> bs!1879717 m!7789152))

(assert (=> b!7065699 d!2209323))

(declare-fun b!7065877 () Bool)

(declare-fun e!4247913 () (Set Context!13220))

(declare-fun call!642127 () (Set Context!13220))

(assert (=> b!7065877 (= e!4247913 call!642127)))

(declare-fun d!2209325 () Bool)

(declare-fun c!1317547 () Bool)

(declare-fun e!4247912 () Bool)

(assert (=> d!2209325 (= c!1317547 e!4247912)))

(declare-fun res!2885269 () Bool)

(assert (=> d!2209325 (=> (not res!2885269) (not e!4247912))))

(assert (=> d!2209325 (= res!2885269 (is-Cons!68245 (exprs!7110 lt!2540783)))))

(declare-fun e!4247911 () (Set Context!13220))

(assert (=> d!2209325 (= (derivationStepZipperUp!2198 lt!2540783 (h!74692 s!7408)) e!4247911)))

(declare-fun b!7065878 () Bool)

(assert (=> b!7065878 (= e!4247912 (nullable!7297 (h!74693 (exprs!7110 lt!2540783))))))

(declare-fun b!7065879 () Bool)

(assert (=> b!7065879 (= e!4247911 e!4247913)))

(declare-fun c!1317546 () Bool)

(assert (=> b!7065879 (= c!1317546 (is-Cons!68245 (exprs!7110 lt!2540783)))))

(declare-fun bm!642122 () Bool)

(assert (=> bm!642122 (= call!642127 (derivationStepZipperDown!2248 (h!74693 (exprs!7110 lt!2540783)) (Context!13221 (t!382150 (exprs!7110 lt!2540783))) (h!74692 s!7408)))))

(declare-fun b!7065880 () Bool)

(assert (=> b!7065880 (= e!4247911 (set.union call!642127 (derivationStepZipperUp!2198 (Context!13221 (t!382150 (exprs!7110 lt!2540783))) (h!74692 s!7408))))))

(declare-fun b!7065881 () Bool)

(assert (=> b!7065881 (= e!4247913 (as set.empty (Set Context!13220)))))

(assert (= (and d!2209325 res!2885269) b!7065878))

(assert (= (and d!2209325 c!1317547) b!7065880))

(assert (= (and d!2209325 (not c!1317547)) b!7065879))

(assert (= (and b!7065879 c!1317546) b!7065877))

(assert (= (and b!7065879 (not c!1317546)) b!7065881))

(assert (= (or b!7065880 b!7065877) bm!642122))

(declare-fun m!7789154 () Bool)

(assert (=> b!7065878 m!7789154))

(declare-fun m!7789156 () Bool)

(assert (=> bm!642122 m!7789156))

(declare-fun m!7789158 () Bool)

(assert (=> b!7065880 m!7789158))

(assert (=> b!7065699 d!2209325))

(declare-fun b!7065892 () Bool)

(declare-fun res!2885275 () Bool)

(declare-fun e!4247919 () Bool)

(assert (=> b!7065892 (=> (not res!2885275) (not e!4247919))))

(declare-fun lt!2541003 () List!68369)

(declare-fun size!41187 (List!68369) Int)

(assert (=> b!7065892 (= res!2885275 (= (size!41187 lt!2541003) (+ (size!41187 lt!2540776) (size!41187 (exprs!7110 ct2!306)))))))

(declare-fun d!2209327 () Bool)

(assert (=> d!2209327 e!4247919))

(declare-fun res!2885274 () Bool)

(assert (=> d!2209327 (=> (not res!2885274) (not e!4247919))))

(declare-fun content!13745 (List!68369) (Set Regex!17614))

(assert (=> d!2209327 (= res!2885274 (= (content!13745 lt!2541003) (set.union (content!13745 lt!2540776) (content!13745 (exprs!7110 ct2!306)))))))

(declare-fun e!4247918 () List!68369)

(assert (=> d!2209327 (= lt!2541003 e!4247918)))

(declare-fun c!1317550 () Bool)

(assert (=> d!2209327 (= c!1317550 (is-Nil!68245 lt!2540776))))

(assert (=> d!2209327 (= (++!15725 lt!2540776 (exprs!7110 ct2!306)) lt!2541003)))

(declare-fun b!7065890 () Bool)

(assert (=> b!7065890 (= e!4247918 (exprs!7110 ct2!306))))

(declare-fun b!7065893 () Bool)

(assert (=> b!7065893 (= e!4247919 (or (not (= (exprs!7110 ct2!306) Nil!68245)) (= lt!2541003 lt!2540776)))))

(declare-fun b!7065891 () Bool)

(assert (=> b!7065891 (= e!4247918 (Cons!68245 (h!74693 lt!2540776) (++!15725 (t!382150 lt!2540776) (exprs!7110 ct2!306))))))

(assert (= (and d!2209327 c!1317550) b!7065890))

(assert (= (and d!2209327 (not c!1317550)) b!7065891))

(assert (= (and d!2209327 res!2885274) b!7065892))

(assert (= (and b!7065892 res!2885275) b!7065893))

(declare-fun m!7789160 () Bool)

(assert (=> b!7065892 m!7789160))

(declare-fun m!7789162 () Bool)

(assert (=> b!7065892 m!7789162))

(declare-fun m!7789164 () Bool)

(assert (=> b!7065892 m!7789164))

(declare-fun m!7789166 () Bool)

(assert (=> d!2209327 m!7789166))

(declare-fun m!7789168 () Bool)

(assert (=> d!2209327 m!7789168))

(declare-fun m!7789170 () Bool)

(assert (=> d!2209327 m!7789170))

(declare-fun m!7789172 () Bool)

(assert (=> b!7065891 m!7789172))

(assert (=> b!7065699 d!2209327))

(declare-fun b!7065903 () Bool)

(declare-fun res!2885287 () Bool)

(declare-fun e!4247926 () Bool)

(assert (=> b!7065903 (=> (not res!2885287) (not e!4247926))))

(declare-fun head!14387 (List!68368) C!35498)

(assert (=> b!7065903 (= res!2885287 (= (head!14387 Nil!68244) (head!14387 (_1!37418 lt!2540740))))))

(declare-fun d!2209329 () Bool)

(declare-fun e!4247927 () Bool)

(assert (=> d!2209329 e!4247927))

(declare-fun res!2885286 () Bool)

(assert (=> d!2209329 (=> res!2885286 e!4247927)))

(declare-fun lt!2541006 () Bool)

(assert (=> d!2209329 (= res!2885286 (not lt!2541006))))

(declare-fun e!4247928 () Bool)

(assert (=> d!2209329 (= lt!2541006 e!4247928)))

(declare-fun res!2885285 () Bool)

(assert (=> d!2209329 (=> res!2885285 e!4247928)))

(assert (=> d!2209329 (= res!2885285 (is-Nil!68244 Nil!68244))))

(assert (=> d!2209329 (= (isPrefix!5847 Nil!68244 (_1!37418 lt!2540740)) lt!2541006)))

(declare-fun b!7065905 () Bool)

(declare-fun size!41188 (List!68368) Int)

(assert (=> b!7065905 (= e!4247927 (>= (size!41188 (_1!37418 lt!2540740)) (size!41188 Nil!68244)))))

(declare-fun b!7065904 () Bool)

(assert (=> b!7065904 (= e!4247926 (isPrefix!5847 (tail!13776 Nil!68244) (tail!13776 (_1!37418 lt!2540740))))))

(declare-fun b!7065902 () Bool)

(assert (=> b!7065902 (= e!4247928 e!4247926)))

(declare-fun res!2885284 () Bool)

(assert (=> b!7065902 (=> (not res!2885284) (not e!4247926))))

(assert (=> b!7065902 (= res!2885284 (not (is-Nil!68244 (_1!37418 lt!2540740))))))

(assert (= (and d!2209329 (not res!2885285)) b!7065902))

(assert (= (and b!7065902 res!2885284) b!7065903))

(assert (= (and b!7065903 res!2885287) b!7065904))

(assert (= (and d!2209329 (not res!2885286)) b!7065905))

(declare-fun m!7789174 () Bool)

(assert (=> b!7065903 m!7789174))

(declare-fun m!7789176 () Bool)

(assert (=> b!7065903 m!7789176))

(declare-fun m!7789178 () Bool)

(assert (=> b!7065905 m!7789178))

(declare-fun m!7789180 () Bool)

(assert (=> b!7065905 m!7789180))

(declare-fun m!7789182 () Bool)

(assert (=> b!7065904 m!7789182))

(assert (=> b!7065904 m!7788920))

(assert (=> b!7065904 m!7789182))

(assert (=> b!7065904 m!7788920))

(declare-fun m!7789184 () Bool)

(assert (=> b!7065904 m!7789184))

(assert (=> b!7065700 d!2209329))

(declare-fun b!7065906 () Bool)

(declare-fun e!4247931 () (Set Context!13220))

(declare-fun call!642128 () (Set Context!13220))

(assert (=> b!7065906 (= e!4247931 call!642128)))

(declare-fun d!2209331 () Bool)

(declare-fun c!1317552 () Bool)

(declare-fun e!4247930 () Bool)

(assert (=> d!2209331 (= c!1317552 e!4247930)))

(declare-fun res!2885288 () Bool)

(assert (=> d!2209331 (=> (not res!2885288) (not e!4247930))))

(assert (=> d!2209331 (= res!2885288 (is-Cons!68245 (exprs!7110 lt!2540775)))))

(declare-fun e!4247929 () (Set Context!13220))

(assert (=> d!2209331 (= (derivationStepZipperUp!2198 lt!2540775 (h!74692 s!7408)) e!4247929)))

(declare-fun b!7065907 () Bool)

(assert (=> b!7065907 (= e!4247930 (nullable!7297 (h!74693 (exprs!7110 lt!2540775))))))

(declare-fun b!7065908 () Bool)

(assert (=> b!7065908 (= e!4247929 e!4247931)))

(declare-fun c!1317551 () Bool)

(assert (=> b!7065908 (= c!1317551 (is-Cons!68245 (exprs!7110 lt!2540775)))))

(declare-fun bm!642123 () Bool)

(assert (=> bm!642123 (= call!642128 (derivationStepZipperDown!2248 (h!74693 (exprs!7110 lt!2540775)) (Context!13221 (t!382150 (exprs!7110 lt!2540775))) (h!74692 s!7408)))))

(declare-fun b!7065909 () Bool)

(assert (=> b!7065909 (= e!4247929 (set.union call!642128 (derivationStepZipperUp!2198 (Context!13221 (t!382150 (exprs!7110 lt!2540775))) (h!74692 s!7408))))))

(declare-fun b!7065910 () Bool)

(assert (=> b!7065910 (= e!4247931 (as set.empty (Set Context!13220)))))

(assert (= (and d!2209331 res!2885288) b!7065907))

(assert (= (and d!2209331 c!1317552) b!7065909))

(assert (= (and d!2209331 (not c!1317552)) b!7065908))

(assert (= (and b!7065908 c!1317551) b!7065906))

(assert (= (and b!7065908 (not c!1317551)) b!7065910))

(assert (= (or b!7065909 b!7065906) bm!642123))

(declare-fun m!7789186 () Bool)

(assert (=> b!7065907 m!7789186))

(declare-fun m!7789188 () Bool)

(assert (=> bm!642123 m!7789188))

(declare-fun m!7789190 () Bool)

(assert (=> b!7065909 m!7789190))

(assert (=> b!7065698 d!2209331))

(assert (=> b!7065698 d!2209323))

(declare-fun d!2209333 () Bool)

(declare-fun dynLambda!27725 (Int Context!13220) (Set Context!13220))

(assert (=> d!2209333 (= (flatMap!2540 lt!2540756 lambda!423690) (dynLambda!27725 lambda!423690 lt!2540775))))

(declare-fun lt!2541009 () Unit!161924)

(declare-fun choose!54043 ((Set Context!13220) Context!13220 Int) Unit!161924)

(assert (=> d!2209333 (= lt!2541009 (choose!54043 lt!2540756 lt!2540775 lambda!423690))))

(assert (=> d!2209333 (= lt!2540756 (set.insert lt!2540775 (as set.empty (Set Context!13220))))))

(assert (=> d!2209333 (= (lemmaFlatMapOnSingletonSet!2049 lt!2540756 lt!2540775 lambda!423690) lt!2541009)))

(declare-fun b_lambda!269583 () Bool)

(assert (=> (not b_lambda!269583) (not d!2209333)))

(declare-fun bs!1879718 () Bool)

(assert (= bs!1879718 d!2209333))

(assert (=> bs!1879718 m!7788910))

(declare-fun m!7789192 () Bool)

(assert (=> bs!1879718 m!7789192))

(declare-fun m!7789194 () Bool)

(assert (=> bs!1879718 m!7789194))

(assert (=> bs!1879718 m!7788958))

(assert (=> b!7065698 d!2209333))

(assert (=> b!7065698 d!2209327))

(declare-fun d!2209335 () Bool)

(declare-fun choose!54044 ((Set Context!13220) Int) (Set Context!13220))

(assert (=> d!2209335 (= (map!15954 lt!2540756 lambda!423688) (choose!54044 lt!2540756 lambda!423688))))

(declare-fun bs!1879719 () Bool)

(assert (= bs!1879719 d!2209335))

(declare-fun m!7789196 () Bool)

(assert (=> bs!1879719 m!7789196))

(assert (=> b!7065698 d!2209335))

(declare-fun d!2209337 () Bool)

(declare-fun lt!2541012 () Int)

(assert (=> d!2209337 (>= lt!2541012 0)))

(declare-fun e!4247934 () Int)

(assert (=> d!2209337 (= lt!2541012 e!4247934)))

(declare-fun c!1317556 () Bool)

(assert (=> d!2209337 (= c!1317556 (is-Cons!68245 (exprs!7110 lt!2540775)))))

(assert (=> d!2209337 (= (contextDepthTotal!550 lt!2540775) lt!2541012)))

(declare-fun b!7065915 () Bool)

(declare-fun regexDepthTotal!328 (Regex!17614) Int)

(assert (=> b!7065915 (= e!4247934 (+ (regexDepthTotal!328 (h!74693 (exprs!7110 lt!2540775))) (contextDepthTotal!550 (Context!13221 (t!382150 (exprs!7110 lt!2540775))))))))

(declare-fun b!7065916 () Bool)

(assert (=> b!7065916 (= e!4247934 1)))

(assert (= (and d!2209337 c!1317556) b!7065915))

(assert (= (and d!2209337 (not c!1317556)) b!7065916))

(declare-fun m!7789198 () Bool)

(assert (=> b!7065915 m!7789198))

(declare-fun m!7789200 () Bool)

(assert (=> b!7065915 m!7789200))

(assert (=> b!7065698 d!2209337))

(declare-fun d!2209339 () Bool)

(declare-fun e!4247937 () Bool)

(assert (=> d!2209339 e!4247937))

(declare-fun res!2885291 () Bool)

(assert (=> d!2209339 (=> (not res!2885291) (not e!4247937))))

(declare-fun lt!2541015 () List!68370)

(declare-fun noDuplicate!2710 (List!68370) Bool)

(assert (=> d!2209339 (= res!2885291 (noDuplicate!2710 lt!2541015))))

(declare-fun choose!54045 ((Set Context!13220)) List!68370)

(assert (=> d!2209339 (= lt!2541015 (choose!54045 z1!570))))

(assert (=> d!2209339 (= (toList!10955 z1!570) lt!2541015)))

(declare-fun b!7065919 () Bool)

(assert (=> b!7065919 (= e!4247937 (= (content!13743 lt!2541015) z1!570))))

(assert (= (and d!2209339 res!2885291) b!7065919))

(declare-fun m!7789202 () Bool)

(assert (=> d!2209339 m!7789202))

(declare-fun m!7789204 () Bool)

(assert (=> d!2209339 m!7789204))

(declare-fun m!7789206 () Bool)

(assert (=> b!7065919 m!7789206))

(assert (=> b!7065698 d!2209339))

(declare-fun d!2209341 () Bool)

(declare-fun lt!2541018 () Int)

(assert (=> d!2209341 (>= lt!2541018 0)))

(declare-fun e!4247940 () Int)

(assert (=> d!2209341 (= lt!2541018 e!4247940)))

(declare-fun c!1317559 () Bool)

(assert (=> d!2209341 (= c!1317559 (is-Cons!68246 lt!2540763))))

(assert (=> d!2209341 (= (zipperDepthTotal!579 lt!2540763) lt!2541018)))

(declare-fun b!7065924 () Bool)

(assert (=> b!7065924 (= e!4247940 (+ (contextDepthTotal!550 (h!74694 lt!2540763)) (zipperDepthTotal!579 (t!382151 lt!2540763))))))

(declare-fun b!7065925 () Bool)

(assert (=> b!7065925 (= e!4247940 0)))

(assert (= (and d!2209341 c!1317559) b!7065924))

(assert (= (and d!2209341 (not c!1317559)) b!7065925))

(declare-fun m!7789208 () Bool)

(assert (=> b!7065924 m!7789208))

(declare-fun m!7789210 () Bool)

(assert (=> b!7065924 m!7789210))

(assert (=> b!7065698 d!2209341))

(declare-fun d!2209343 () Bool)

(declare-fun dynLambda!27726 (Int Context!13220) Context!13220)

(assert (=> d!2209343 (= (map!15954 lt!2540756 lambda!423688) (set.insert (dynLambda!27726 lambda!423688 lt!2540775) (as set.empty (Set Context!13220))))))

(declare-fun lt!2541021 () Unit!161924)

(declare-fun choose!54046 ((Set Context!13220) Context!13220 Int) Unit!161924)

(assert (=> d!2209343 (= lt!2541021 (choose!54046 lt!2540756 lt!2540775 lambda!423688))))

(assert (=> d!2209343 (= lt!2540756 (set.insert lt!2540775 (as set.empty (Set Context!13220))))))

(assert (=> d!2209343 (= (lemmaMapOnSingletonSet!431 lt!2540756 lt!2540775 lambda!423688) lt!2541021)))

(declare-fun b_lambda!269585 () Bool)

(assert (=> (not b_lambda!269585) (not d!2209343)))

(declare-fun bs!1879720 () Bool)

(assert (= bs!1879720 d!2209343))

(declare-fun m!7789212 () Bool)

(assert (=> bs!1879720 m!7789212))

(declare-fun m!7789214 () Bool)

(assert (=> bs!1879720 m!7789214))

(assert (=> bs!1879720 m!7789212))

(assert (=> bs!1879720 m!7788948))

(declare-fun m!7789216 () Bool)

(assert (=> bs!1879720 m!7789216))

(assert (=> bs!1879720 m!7788958))

(assert (=> b!7065698 d!2209343))

(declare-fun d!2209345 () Bool)

(declare-fun lt!2541022 () Int)

(assert (=> d!2209345 (>= lt!2541022 0)))

(declare-fun e!4247941 () Int)

(assert (=> d!2209345 (= lt!2541022 e!4247941)))

(declare-fun c!1317560 () Bool)

(assert (=> d!2209345 (= c!1317560 (is-Cons!68245 (exprs!7110 lt!2540768)))))

(assert (=> d!2209345 (= (contextDepthTotal!550 lt!2540768) lt!2541022)))

(declare-fun b!7065926 () Bool)

(assert (=> b!7065926 (= e!4247941 (+ (regexDepthTotal!328 (h!74693 (exprs!7110 lt!2540768))) (contextDepthTotal!550 (Context!13221 (t!382150 (exprs!7110 lt!2540768))))))))

(declare-fun b!7065927 () Bool)

(assert (=> b!7065927 (= e!4247941 1)))

(assert (= (and d!2209345 c!1317560) b!7065926))

(assert (= (and d!2209345 (not c!1317560)) b!7065927))

(declare-fun m!7789218 () Bool)

(assert (=> b!7065926 m!7789218))

(declare-fun m!7789220 () Bool)

(assert (=> b!7065926 m!7789220))

(assert (=> b!7065698 d!2209345))

(declare-fun d!2209347 () Bool)

(declare-fun choose!54047 ((Set Context!13220) Int) (Set Context!13220))

(assert (=> d!2209347 (= (flatMap!2540 lt!2540756 lambda!423690) (choose!54047 lt!2540756 lambda!423690))))

(declare-fun bs!1879721 () Bool)

(assert (= bs!1879721 d!2209347))

(declare-fun m!7789222 () Bool)

(assert (=> bs!1879721 m!7789222))

(assert (=> b!7065698 d!2209347))

(declare-fun d!2209349 () Bool)

(assert (=> d!2209349 (<= (contextDepthTotal!550 lt!2540768) (zipperDepthTotal!579 lt!2540763))))

(declare-fun lt!2541025 () Unit!161924)

(declare-fun choose!54048 (List!68370 Context!13220) Unit!161924)

(assert (=> d!2209349 (= lt!2541025 (choose!54048 lt!2540763 lt!2540768))))

(declare-fun contains!20498 (List!68370 Context!13220) Bool)

(assert (=> d!2209349 (contains!20498 lt!2540763 lt!2540768)))

(assert (=> d!2209349 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!117 lt!2540763 lt!2540768) lt!2541025)))

(declare-fun bs!1879722 () Bool)

(assert (= bs!1879722 d!2209349))

(assert (=> bs!1879722 m!7788956))

(assert (=> bs!1879722 m!7788960))

(declare-fun m!7789224 () Bool)

(assert (=> bs!1879722 m!7789224))

(declare-fun m!7789226 () Bool)

(assert (=> bs!1879722 m!7789226))

(assert (=> b!7065698 d!2209349))

(declare-fun d!2209351 () Bool)

(assert (=> d!2209351 (= (flatMap!2540 lt!2540753 lambda!423690) (dynLambda!27725 lambda!423690 lt!2540783))))

(declare-fun lt!2541026 () Unit!161924)

(assert (=> d!2209351 (= lt!2541026 (choose!54043 lt!2540753 lt!2540783 lambda!423690))))

(assert (=> d!2209351 (= lt!2540753 (set.insert lt!2540783 (as set.empty (Set Context!13220))))))

(assert (=> d!2209351 (= (lemmaFlatMapOnSingletonSet!2049 lt!2540753 lt!2540783 lambda!423690) lt!2541026)))

(declare-fun b_lambda!269587 () Bool)

(assert (=> (not b_lambda!269587) (not d!2209351)))

(declare-fun bs!1879723 () Bool)

(assert (= bs!1879723 d!2209351))

(assert (=> bs!1879723 m!7788964))

(declare-fun m!7789228 () Bool)

(assert (=> bs!1879723 m!7789228))

(declare-fun m!7789230 () Bool)

(assert (=> bs!1879723 m!7789230))

(assert (=> bs!1879723 m!7788968))

(assert (=> b!7065718 d!2209351))

(assert (=> b!7065718 d!2209323))

(declare-fun d!2209353 () Bool)

(assert (=> d!2209353 (= (flatMap!2540 lt!2540753 lambda!423690) (choose!54047 lt!2540753 lambda!423690))))

(declare-fun bs!1879724 () Bool)

(assert (= bs!1879724 d!2209353))

(declare-fun m!7789232 () Bool)

(assert (=> bs!1879724 m!7789232))

(assert (=> b!7065718 d!2209353))

(assert (=> b!7065718 d!2209325))

(declare-fun bs!1879725 () Bool)

(declare-fun d!2209355 () Bool)

(assert (= bs!1879725 (and d!2209355 b!7065715)))

(declare-fun lambda!423769 () Int)

(assert (=> bs!1879725 (= lambda!423769 lambda!423690)))

(assert (=> d!2209355 true))

(assert (=> d!2209355 (= (derivationStepZipper!3064 lt!2540753 (h!74692 s!7408)) (flatMap!2540 lt!2540753 lambda!423769))))

(declare-fun bs!1879726 () Bool)

(assert (= bs!1879726 d!2209355))

(declare-fun m!7789234 () Bool)

(assert (=> bs!1879726 m!7789234))

(assert (=> b!7065718 d!2209355))

(declare-fun d!2209357 () Bool)

(declare-fun c!1317566 () Bool)

(assert (=> d!2209357 (= c!1317566 (isEmpty!39823 s!7408))))

(declare-fun e!4247944 () Bool)

(assert (=> d!2209357 (= (matchZipper!3154 lt!2540753 s!7408) e!4247944)))

(declare-fun b!7065934 () Bool)

(declare-fun nullableZipper!2681 ((Set Context!13220)) Bool)

(assert (=> b!7065934 (= e!4247944 (nullableZipper!2681 lt!2540753))))

(declare-fun b!7065935 () Bool)

(assert (=> b!7065935 (= e!4247944 (matchZipper!3154 (derivationStepZipper!3064 lt!2540753 (head!14387 s!7408)) (tail!13776 s!7408)))))

(assert (= (and d!2209357 c!1317566) b!7065934))

(assert (= (and d!2209357 (not c!1317566)) b!7065935))

(declare-fun m!7789236 () Bool)

(assert (=> d!2209357 m!7789236))

(declare-fun m!7789238 () Bool)

(assert (=> b!7065934 m!7789238))

(declare-fun m!7789240 () Bool)

(assert (=> b!7065935 m!7789240))

(assert (=> b!7065935 m!7789240))

(declare-fun m!7789242 () Bool)

(assert (=> b!7065935 m!7789242))

(declare-fun m!7789244 () Bool)

(assert (=> b!7065935 m!7789244))

(assert (=> b!7065935 m!7789242))

(assert (=> b!7065935 m!7789244))

(declare-fun m!7789246 () Bool)

(assert (=> b!7065935 m!7789246))

(assert (=> b!7065716 d!2209357))

(assert (=> b!7065716 d!2209323))

(declare-fun d!2209359 () Bool)

(assert (=> d!2209359 (forall!16561 (++!15725 (exprs!7110 lt!2540768) (exprs!7110 ct2!306)) lambda!423689)))

(declare-fun lt!2541027 () Unit!161924)

(assert (=> d!2209359 (= lt!2541027 (choose!54042 (exprs!7110 lt!2540768) (exprs!7110 ct2!306) lambda!423689))))

(assert (=> d!2209359 (forall!16561 (exprs!7110 lt!2540768) lambda!423689)))

(assert (=> d!2209359 (= (lemmaConcatPreservesForall!925 (exprs!7110 lt!2540768) (exprs!7110 ct2!306) lambda!423689) lt!2541027)))

(declare-fun bs!1879727 () Bool)

(assert (= bs!1879727 d!2209359))

(assert (=> bs!1879727 m!7788806))

(assert (=> bs!1879727 m!7788806))

(declare-fun m!7789248 () Bool)

(assert (=> bs!1879727 m!7789248))

(declare-fun m!7789250 () Bool)

(assert (=> bs!1879727 m!7789250))

(declare-fun m!7789252 () Bool)

(assert (=> bs!1879727 m!7789252))

(assert (=> b!7065715 d!2209359))

(declare-fun d!2209361 () Bool)

(assert (=> d!2209361 (= (flatMap!2540 lt!2540746 lambda!423690) (choose!54047 lt!2540746 lambda!423690))))

(declare-fun bs!1879728 () Bool)

(assert (= bs!1879728 d!2209361))

(declare-fun m!7789254 () Bool)

(assert (=> bs!1879728 m!7789254))

(assert (=> b!7065715 d!2209361))

(declare-fun d!2209363 () Bool)

(assert (=> d!2209363 (= (flatMap!2540 lt!2540746 lambda!423690) (dynLambda!27725 lambda!423690 lt!2540739))))

(declare-fun lt!2541028 () Unit!161924)

(assert (=> d!2209363 (= lt!2541028 (choose!54043 lt!2540746 lt!2540739 lambda!423690))))

(assert (=> d!2209363 (= lt!2540746 (set.insert lt!2540739 (as set.empty (Set Context!13220))))))

(assert (=> d!2209363 (= (lemmaFlatMapOnSingletonSet!2049 lt!2540746 lt!2540739 lambda!423690) lt!2541028)))

(declare-fun b_lambda!269589 () Bool)

(assert (=> (not b_lambda!269589) (not d!2209363)))

(declare-fun bs!1879729 () Bool)

(assert (= bs!1879729 d!2209363))

(assert (=> bs!1879729 m!7788822))

(declare-fun m!7789256 () Bool)

(assert (=> bs!1879729 m!7789256))

(declare-fun m!7789258 () Bool)

(assert (=> bs!1879729 m!7789258))

(assert (=> bs!1879729 m!7788862))

(assert (=> b!7065715 d!2209363))

(declare-fun b!7065936 () Bool)

(declare-fun e!4247947 () (Set Context!13220))

(declare-fun call!642129 () (Set Context!13220))

(assert (=> b!7065936 (= e!4247947 call!642129)))

(declare-fun d!2209365 () Bool)

(declare-fun c!1317568 () Bool)

(declare-fun e!4247946 () Bool)

(assert (=> d!2209365 (= c!1317568 e!4247946)))

(declare-fun res!2885292 () Bool)

(assert (=> d!2209365 (=> (not res!2885292) (not e!4247946))))

(assert (=> d!2209365 (= res!2885292 (is-Cons!68245 (exprs!7110 lt!2540739)))))

(declare-fun e!4247945 () (Set Context!13220))

(assert (=> d!2209365 (= (derivationStepZipperUp!2198 lt!2540739 (h!74692 s!7408)) e!4247945)))

(declare-fun b!7065937 () Bool)

(assert (=> b!7065937 (= e!4247946 (nullable!7297 (h!74693 (exprs!7110 lt!2540739))))))

(declare-fun b!7065938 () Bool)

(assert (=> b!7065938 (= e!4247945 e!4247947)))

(declare-fun c!1317567 () Bool)

(assert (=> b!7065938 (= c!1317567 (is-Cons!68245 (exprs!7110 lt!2540739)))))

(declare-fun bm!642124 () Bool)

(assert (=> bm!642124 (= call!642129 (derivationStepZipperDown!2248 (h!74693 (exprs!7110 lt!2540739)) (Context!13221 (t!382150 (exprs!7110 lt!2540739))) (h!74692 s!7408)))))

(declare-fun b!7065939 () Bool)

(assert (=> b!7065939 (= e!4247945 (set.union call!642129 (derivationStepZipperUp!2198 (Context!13221 (t!382150 (exprs!7110 lt!2540739))) (h!74692 s!7408))))))

(declare-fun b!7065940 () Bool)

(assert (=> b!7065940 (= e!4247947 (as set.empty (Set Context!13220)))))

(assert (= (and d!2209365 res!2885292) b!7065937))

(assert (= (and d!2209365 c!1317568) b!7065939))

(assert (= (and d!2209365 (not c!1317568)) b!7065938))

(assert (= (and b!7065938 c!1317567) b!7065936))

(assert (= (and b!7065938 (not c!1317567)) b!7065940))

(assert (= (or b!7065939 b!7065936) bm!642124))

(declare-fun m!7789260 () Bool)

(assert (=> b!7065937 m!7789260))

(declare-fun m!7789262 () Bool)

(assert (=> bm!642124 m!7789262))

(declare-fun m!7789264 () Bool)

(assert (=> b!7065939 m!7789264))

(assert (=> b!7065715 d!2209365))

(declare-fun bs!1879730 () Bool)

(declare-fun d!2209367 () Bool)

(assert (= bs!1879730 (and d!2209367 b!7065715)))

(declare-fun lambda!423770 () Int)

(assert (=> bs!1879730 (= lambda!423770 lambda!423690)))

(declare-fun bs!1879731 () Bool)

(assert (= bs!1879731 (and d!2209367 d!2209355)))

(assert (=> bs!1879731 (= lambda!423770 lambda!423769)))

(assert (=> d!2209367 true))

(assert (=> d!2209367 (= (derivationStepZipper!3064 lt!2540746 (h!74692 s!7408)) (flatMap!2540 lt!2540746 lambda!423770))))

(declare-fun bs!1879732 () Bool)

(assert (= bs!1879732 d!2209367))

(declare-fun m!7789266 () Bool)

(assert (=> bs!1879732 m!7789266))

(assert (=> b!7065715 d!2209367))

(declare-fun b!7065959 () Bool)

(declare-fun e!4247962 () Bool)

(declare-fun lt!2541035 () Option!16947)

(assert (=> b!7065959 (= e!4247962 (= (++!15726 (_1!37418 (get!23905 lt!2541035)) (_2!37418 (get!23905 lt!2541035))) s!7408))))

(declare-fun d!2209369 () Bool)

(declare-fun e!4247961 () Bool)

(assert (=> d!2209369 e!4247961))

(declare-fun res!2885304 () Bool)

(assert (=> d!2209369 (=> res!2885304 e!4247961)))

(assert (=> d!2209369 (= res!2885304 e!4247962)))

(declare-fun res!2885307 () Bool)

(assert (=> d!2209369 (=> (not res!2885307) (not e!4247962))))

(assert (=> d!2209369 (= res!2885307 (isDefined!13648 lt!2541035))))

(declare-fun e!4247959 () Option!16947)

(assert (=> d!2209369 (= lt!2541035 e!4247959)))

(declare-fun c!1317573 () Bool)

(declare-fun e!4247960 () Bool)

(assert (=> d!2209369 (= c!1317573 e!4247960)))

(declare-fun res!2885308 () Bool)

(assert (=> d!2209369 (=> (not res!2885308) (not e!4247960))))

(assert (=> d!2209369 (= res!2885308 (matchZipper!3154 (ite c!1317495 lt!2540750 lt!2540743) Nil!68244))))

(assert (=> d!2209369 (= (++!15726 Nil!68244 s!7408) s!7408)))

(assert (=> d!2209369 (= (findConcatSeparationZippers!463 (ite c!1317495 lt!2540750 lt!2540743) lt!2540781 Nil!68244 s!7408 s!7408) lt!2541035)))

(declare-fun b!7065960 () Bool)

(declare-fun lt!2541037 () Unit!161924)

(declare-fun lt!2541036 () Unit!161924)

(assert (=> b!7065960 (= lt!2541037 lt!2541036)))

(assert (=> b!7065960 (= (++!15726 (++!15726 Nil!68244 (Cons!68244 (h!74692 s!7408) Nil!68244)) (t!382149 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2967 (List!68368 C!35498 List!68368 List!68368) Unit!161924)

(assert (=> b!7065960 (= lt!2541036 (lemmaMoveElementToOtherListKeepsConcatEq!2967 Nil!68244 (h!74692 s!7408) (t!382149 s!7408) s!7408))))

(declare-fun e!4247958 () Option!16947)

(assert (=> b!7065960 (= e!4247958 (findConcatSeparationZippers!463 (ite c!1317495 lt!2540750 lt!2540743) lt!2540781 (++!15726 Nil!68244 (Cons!68244 (h!74692 s!7408) Nil!68244)) (t!382149 s!7408) s!7408))))

(declare-fun b!7065961 () Bool)

(declare-fun res!2885306 () Bool)

(assert (=> b!7065961 (=> (not res!2885306) (not e!4247962))))

(assert (=> b!7065961 (= res!2885306 (matchZipper!3154 (ite c!1317495 lt!2540750 lt!2540743) (_1!37418 (get!23905 lt!2541035))))))

(declare-fun b!7065962 () Bool)

(assert (=> b!7065962 (= e!4247961 (not (isDefined!13648 lt!2541035)))))

(declare-fun b!7065963 () Bool)

(assert (=> b!7065963 (= e!4247960 (matchZipper!3154 lt!2540781 s!7408))))

(declare-fun b!7065964 () Bool)

(assert (=> b!7065964 (= e!4247958 None!16946)))

(declare-fun b!7065965 () Bool)

(assert (=> b!7065965 (= e!4247959 (Some!16946 (tuple2!68231 Nil!68244 s!7408)))))

(declare-fun b!7065966 () Bool)

(declare-fun res!2885305 () Bool)

(assert (=> b!7065966 (=> (not res!2885305) (not e!4247962))))

(assert (=> b!7065966 (= res!2885305 (matchZipper!3154 lt!2540781 (_2!37418 (get!23905 lt!2541035))))))

(declare-fun b!7065967 () Bool)

(assert (=> b!7065967 (= e!4247959 e!4247958)))

(declare-fun c!1317574 () Bool)

(assert (=> b!7065967 (= c!1317574 (is-Nil!68244 s!7408))))

(assert (= (and d!2209369 res!2885308) b!7065963))

(assert (= (and d!2209369 c!1317573) b!7065965))

(assert (= (and d!2209369 (not c!1317573)) b!7065967))

(assert (= (and b!7065967 c!1317574) b!7065964))

(assert (= (and b!7065967 (not c!1317574)) b!7065960))

(assert (= (and d!2209369 res!2885307) b!7065961))

(assert (= (and b!7065961 res!2885306) b!7065966))

(assert (= (and b!7065966 res!2885305) b!7065959))

(assert (= (and d!2209369 (not res!2885304)) b!7065962))

(declare-fun m!7789268 () Bool)

(assert (=> b!7065963 m!7789268))

(declare-fun m!7789270 () Bool)

(assert (=> d!2209369 m!7789270))

(declare-fun m!7789272 () Bool)

(assert (=> d!2209369 m!7789272))

(declare-fun m!7789274 () Bool)

(assert (=> d!2209369 m!7789274))

(declare-fun m!7789276 () Bool)

(assert (=> b!7065961 m!7789276))

(declare-fun m!7789278 () Bool)

(assert (=> b!7065961 m!7789278))

(assert (=> b!7065962 m!7789270))

(assert (=> b!7065959 m!7789276))

(declare-fun m!7789280 () Bool)

(assert (=> b!7065959 m!7789280))

(declare-fun m!7789282 () Bool)

(assert (=> b!7065960 m!7789282))

(assert (=> b!7065960 m!7789282))

(declare-fun m!7789284 () Bool)

(assert (=> b!7065960 m!7789284))

(declare-fun m!7789286 () Bool)

(assert (=> b!7065960 m!7789286))

(assert (=> b!7065960 m!7789282))

(declare-fun m!7789288 () Bool)

(assert (=> b!7065960 m!7789288))

(assert (=> b!7065966 m!7789276))

(declare-fun m!7789290 () Bool)

(assert (=> b!7065966 m!7789290))

(assert (=> bm!642091 d!2209369))

(declare-fun d!2209371 () Bool)

(declare-fun c!1317575 () Bool)

(assert (=> d!2209371 (= c!1317575 (isEmpty!39823 s!7408))))

(declare-fun e!4247963 () Bool)

(assert (=> d!2209371 (= (matchZipper!3154 lt!2540762 s!7408) e!4247963)))

(declare-fun b!7065968 () Bool)

(assert (=> b!7065968 (= e!4247963 (nullableZipper!2681 lt!2540762))))

(declare-fun b!7065969 () Bool)

(assert (=> b!7065969 (= e!4247963 (matchZipper!3154 (derivationStepZipper!3064 lt!2540762 (head!14387 s!7408)) (tail!13776 s!7408)))))

(assert (= (and d!2209371 c!1317575) b!7065968))

(assert (= (and d!2209371 (not c!1317575)) b!7065969))

(assert (=> d!2209371 m!7789236))

(declare-fun m!7789292 () Bool)

(assert (=> b!7065968 m!7789292))

(assert (=> b!7065969 m!7789240))

(assert (=> b!7065969 m!7789240))

(declare-fun m!7789294 () Bool)

(assert (=> b!7065969 m!7789294))

(assert (=> b!7065969 m!7789244))

(assert (=> b!7065969 m!7789294))

(assert (=> b!7065969 m!7789244))

(declare-fun m!7789296 () Bool)

(assert (=> b!7065969 m!7789296))

(assert (=> start!685900 d!2209371))

(declare-fun bs!1879733 () Bool)

(declare-fun d!2209373 () Bool)

(assert (= bs!1879733 (and d!2209373 b!7065701)))

(declare-fun lambda!423775 () Int)

(assert (=> bs!1879733 (= lambda!423775 lambda!423688)))

(assert (=> d!2209373 true))

(assert (=> d!2209373 (= (appendTo!735 z1!570 ct2!306) (map!15954 z1!570 lambda!423775))))

(declare-fun bs!1879734 () Bool)

(assert (= bs!1879734 d!2209373))

(declare-fun m!7789298 () Bool)

(assert (=> bs!1879734 m!7789298))

(assert (=> start!685900 d!2209373))

(declare-fun bs!1879735 () Bool)

(declare-fun d!2209375 () Bool)

(assert (= bs!1879735 (and d!2209375 b!7065701)))

(declare-fun lambda!423778 () Int)

(assert (=> bs!1879735 (= lambda!423778 lambda!423689)))

(assert (=> d!2209375 (= (inv!86895 ct2!306) (forall!16561 (exprs!7110 ct2!306) lambda!423778))))

(declare-fun bs!1879736 () Bool)

(assert (= bs!1879736 d!2209375))

(declare-fun m!7789300 () Bool)

(assert (=> bs!1879736 m!7789300))

(assert (=> start!685900 d!2209375))

(declare-fun d!2209377 () Bool)

(declare-fun e!4247964 () Bool)

(assert (=> d!2209377 e!4247964))

(declare-fun res!2885309 () Bool)

(assert (=> d!2209377 (=> (not res!2885309) (not e!4247964))))

(declare-fun lt!2541040 () List!68370)

(assert (=> d!2209377 (= res!2885309 (noDuplicate!2710 lt!2541040))))

(assert (=> d!2209377 (= lt!2541040 (choose!54045 lt!2540762))))

(assert (=> d!2209377 (= (toList!10955 lt!2540762) lt!2541040)))

(declare-fun b!7065970 () Bool)

(assert (=> b!7065970 (= e!4247964 (= (content!13743 lt!2541040) lt!2540762))))

(assert (= (and d!2209377 res!2885309) b!7065970))

(declare-fun m!7789302 () Bool)

(assert (=> d!2209377 m!7789302))

(declare-fun m!7789304 () Bool)

(assert (=> d!2209377 m!7789304))

(declare-fun m!7789306 () Bool)

(assert (=> b!7065970 m!7789306))

(assert (=> b!7065714 d!2209377))

(declare-fun d!2209379 () Bool)

(declare-fun c!1317577 () Bool)

(assert (=> d!2209379 (= c!1317577 (isEmpty!39823 s!7408))))

(declare-fun e!4247965 () Bool)

(assert (=> d!2209379 (= (matchZipper!3154 lt!2540751 s!7408) e!4247965)))

(declare-fun b!7065971 () Bool)

(assert (=> b!7065971 (= e!4247965 (nullableZipper!2681 lt!2540751))))

(declare-fun b!7065972 () Bool)

(assert (=> b!7065972 (= e!4247965 (matchZipper!3154 (derivationStepZipper!3064 lt!2540751 (head!14387 s!7408)) (tail!13776 s!7408)))))

(assert (= (and d!2209379 c!1317577) b!7065971))

(assert (= (and d!2209379 (not c!1317577)) b!7065972))

(assert (=> d!2209379 m!7789236))

(declare-fun m!7789308 () Bool)

(assert (=> b!7065971 m!7789308))

(assert (=> b!7065972 m!7789240))

(assert (=> b!7065972 m!7789240))

(declare-fun m!7789310 () Bool)

(assert (=> b!7065972 m!7789310))

(assert (=> b!7065972 m!7789244))

(assert (=> b!7065972 m!7789310))

(assert (=> b!7065972 m!7789244))

(declare-fun m!7789312 () Bool)

(assert (=> b!7065972 m!7789312))

(assert (=> b!7065714 d!2209379))

(declare-fun bs!1879737 () Bool)

(declare-fun d!2209381 () Bool)

(assert (= bs!1879737 (and d!2209381 b!7065714)))

(declare-fun lambda!423781 () Int)

(assert (=> bs!1879737 (not (= lambda!423781 lambda!423687))))

(declare-fun bs!1879738 () Bool)

(assert (= bs!1879738 (and d!2209381 b!7065702)))

(assert (=> bs!1879738 (not (= lambda!423781 lambda!423691))))

(declare-fun bs!1879739 () Bool)

(assert (= bs!1879739 (and d!2209381 b!7065703)))

(assert (=> bs!1879739 (not (= lambda!423781 lambda!423692))))

(assert (=> d!2209381 true))

(declare-fun order!28371 () Int)

(declare-fun dynLambda!27727 (Int Int) Int)

(assert (=> d!2209381 (< (dynLambda!27727 order!28371 lambda!423687) (dynLambda!27727 order!28371 lambda!423781))))

(declare-fun forall!16562 (List!68370 Int) Bool)

(assert (=> d!2209381 (= (exists!3639 lt!2540778 lambda!423687) (not (forall!16562 lt!2540778 lambda!423781)))))

(declare-fun bs!1879740 () Bool)

(assert (= bs!1879740 d!2209381))

(declare-fun m!7789314 () Bool)

(assert (=> bs!1879740 m!7789314))

(assert (=> b!7065714 d!2209381))

(declare-fun d!2209383 () Bool)

(declare-fun e!4247968 () Bool)

(assert (=> d!2209383 e!4247968))

(declare-fun res!2885312 () Bool)

(assert (=> d!2209383 (=> (not res!2885312) (not e!4247968))))

(declare-fun lt!2541043 () Context!13220)

(declare-fun dynLambda!27728 (Int Context!13220) Bool)

(assert (=> d!2209383 (= res!2885312 (dynLambda!27728 lambda!423687 lt!2541043))))

(declare-fun getWitness!1700 (List!68370 Int) Context!13220)

(assert (=> d!2209383 (= lt!2541043 (getWitness!1700 (toList!10955 lt!2540762) lambda!423687))))

(assert (=> d!2209383 (exists!3638 lt!2540762 lambda!423687)))

(assert (=> d!2209383 (= (getWitness!1698 lt!2540762 lambda!423687) lt!2541043)))

(declare-fun b!7065977 () Bool)

(assert (=> b!7065977 (= e!4247968 (set.member lt!2541043 lt!2540762))))

(assert (= (and d!2209383 res!2885312) b!7065977))

(declare-fun b_lambda!269591 () Bool)

(assert (=> (not b_lambda!269591) (not d!2209383)))

(declare-fun m!7789316 () Bool)

(assert (=> d!2209383 m!7789316))

(assert (=> d!2209383 m!7788886))

(assert (=> d!2209383 m!7788886))

(declare-fun m!7789318 () Bool)

(assert (=> d!2209383 m!7789318))

(declare-fun m!7789320 () Bool)

(assert (=> d!2209383 m!7789320))

(declare-fun m!7789322 () Bool)

(assert (=> b!7065977 m!7789322))

(assert (=> b!7065714 d!2209383))

(declare-fun bs!1879741 () Bool)

(declare-fun d!2209385 () Bool)

(assert (= bs!1879741 (and d!2209385 b!7065714)))

(declare-fun lambda!423784 () Int)

(assert (=> bs!1879741 (= lambda!423784 lambda!423687)))

(declare-fun bs!1879742 () Bool)

(assert (= bs!1879742 (and d!2209385 b!7065702)))

(assert (=> bs!1879742 (not (= lambda!423784 lambda!423691))))

(declare-fun bs!1879743 () Bool)

(assert (= bs!1879743 (and d!2209385 b!7065703)))

(assert (=> bs!1879743 (= (= s!7408 (_1!37418 lt!2540740)) (= lambda!423784 lambda!423692))))

(declare-fun bs!1879744 () Bool)

(assert (= bs!1879744 (and d!2209385 d!2209381)))

(assert (=> bs!1879744 (not (= lambda!423784 lambda!423781))))

(assert (=> d!2209385 true))

(assert (=> d!2209385 (exists!3639 lt!2540778 lambda!423784)))

(declare-fun lt!2541046 () Unit!161924)

(declare-fun choose!54049 (List!68370 List!68368) Unit!161924)

(assert (=> d!2209385 (= lt!2541046 (choose!54049 lt!2540778 s!7408))))

(assert (=> d!2209385 (matchZipper!3154 (content!13743 lt!2540778) s!7408)))

(assert (=> d!2209385 (= (lemmaZipperMatchesExistsMatchingContext!535 lt!2540778 s!7408) lt!2541046)))

(declare-fun bs!1879745 () Bool)

(assert (= bs!1879745 d!2209385))

(declare-fun m!7789324 () Bool)

(assert (=> bs!1879745 m!7789324))

(declare-fun m!7789326 () Bool)

(assert (=> bs!1879745 m!7789326))

(declare-fun m!7789328 () Bool)

(assert (=> bs!1879745 m!7789328))

(assert (=> bs!1879745 m!7789328))

(declare-fun m!7789330 () Bool)

(assert (=> bs!1879745 m!7789330))

(assert (=> b!7065714 d!2209385))

(declare-fun d!2209387 () Bool)

(assert (=> d!2209387 (isDefined!13648 (findConcatSeparationZippers!463 (ite c!1317495 lt!2540750 lt!2540743) lt!2540781 Nil!68244 s!7408 s!7408))))

(declare-fun lt!2541049 () Unit!161924)

(declare-fun choose!54050 ((Set Context!13220) (Set Context!13220) List!68368 List!68368 List!68368 List!68368 List!68368) Unit!161924)

(assert (=> d!2209387 (= lt!2541049 (choose!54050 (ite c!1317495 lt!2540750 lt!2540743) lt!2540781 (_1!37418 lt!2540740) (_2!37418 lt!2540740) s!7408 Nil!68244 s!7408))))

(assert (=> d!2209387 (matchZipper!3154 (ite c!1317495 lt!2540750 lt!2540743) (_1!37418 lt!2540740))))

(assert (=> d!2209387 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!63 (ite c!1317495 lt!2540750 lt!2540743) lt!2540781 (_1!37418 lt!2540740) (_2!37418 lt!2540740) s!7408 Nil!68244 s!7408) lt!2541049)))

(declare-fun bs!1879746 () Bool)

(assert (= bs!1879746 d!2209387))

(assert (=> bs!1879746 m!7788962))

(assert (=> bs!1879746 m!7788962))

(declare-fun m!7789332 () Bool)

(assert (=> bs!1879746 m!7789332))

(declare-fun m!7789334 () Bool)

(assert (=> bs!1879746 m!7789334))

(declare-fun m!7789336 () Bool)

(assert (=> bs!1879746 m!7789336))

(assert (=> bm!642090 d!2209387))

(declare-fun d!2209389 () Bool)

(declare-fun isEmpty!39827 (Option!16947) Bool)

(assert (=> d!2209389 (= (isDefined!13648 call!642097) (not (isEmpty!39827 call!642097)))))

(declare-fun bs!1879747 () Bool)

(assert (= bs!1879747 d!2209389))

(declare-fun m!7789338 () Bool)

(assert (=> bs!1879747 m!7789338))

(assert (=> bm!642092 d!2209389))

(declare-fun d!2209391 () Bool)

(declare-fun c!1317580 () Bool)

(assert (=> d!2209391 (= c!1317580 (isEmpty!39823 (_2!37418 lt!2540740)))))

(declare-fun e!4247969 () Bool)

(assert (=> d!2209391 (= (matchZipper!3154 lt!2540781 (_2!37418 lt!2540740)) e!4247969)))

(declare-fun b!7065978 () Bool)

(assert (=> b!7065978 (= e!4247969 (nullableZipper!2681 lt!2540781))))

(declare-fun b!7065979 () Bool)

(assert (=> b!7065979 (= e!4247969 (matchZipper!3154 (derivationStepZipper!3064 lt!2540781 (head!14387 (_2!37418 lt!2540740))) (tail!13776 (_2!37418 lt!2540740))))))

(assert (= (and d!2209391 c!1317580) b!7065978))

(assert (= (and d!2209391 (not c!1317580)) b!7065979))

(declare-fun m!7789340 () Bool)

(assert (=> d!2209391 m!7789340))

(declare-fun m!7789342 () Bool)

(assert (=> b!7065978 m!7789342))

(declare-fun m!7789344 () Bool)

(assert (=> b!7065979 m!7789344))

(assert (=> b!7065979 m!7789344))

(declare-fun m!7789346 () Bool)

(assert (=> b!7065979 m!7789346))

(declare-fun m!7789348 () Bool)

(assert (=> b!7065979 m!7789348))

(assert (=> b!7065979 m!7789346))

(assert (=> b!7065979 m!7789348))

(declare-fun m!7789350 () Bool)

(assert (=> b!7065979 m!7789350))

(assert (=> b!7065710 d!2209391))

(declare-fun d!2209393 () Bool)

(assert (=> d!2209393 (= (isEmpty!39824 (exprs!7110 lt!2540768)) (is-Nil!68245 (exprs!7110 lt!2540768)))))

(assert (=> b!7065726 d!2209393))

(declare-fun d!2209395 () Bool)

(declare-fun lt!2541050 () Int)

(assert (=> d!2209395 (>= lt!2541050 0)))

(declare-fun e!4247970 () Int)

(assert (=> d!2209395 (= lt!2541050 e!4247970)))

(declare-fun c!1317581 () Bool)

(assert (=> d!2209395 (= c!1317581 (is-Cons!68246 (Cons!68246 lt!2540775 Nil!68246)))))

(assert (=> d!2209395 (= (zipperDepthTotal!579 (Cons!68246 lt!2540775 Nil!68246)) lt!2541050)))

(declare-fun b!7065980 () Bool)

(assert (=> b!7065980 (= e!4247970 (+ (contextDepthTotal!550 (h!74694 (Cons!68246 lt!2540775 Nil!68246))) (zipperDepthTotal!579 (t!382151 (Cons!68246 lt!2540775 Nil!68246)))))))

(declare-fun b!7065981 () Bool)

(assert (=> b!7065981 (= e!4247970 0)))

(assert (= (and d!2209395 c!1317581) b!7065980))

(assert (= (and d!2209395 (not c!1317581)) b!7065981))

(declare-fun m!7789352 () Bool)

(assert (=> b!7065980 m!7789352))

(declare-fun m!7789354 () Bool)

(assert (=> b!7065980 m!7789354))

(assert (=> b!7065707 d!2209395))

(declare-fun d!2209397 () Bool)

(declare-fun e!4247975 () Bool)

(assert (=> d!2209397 e!4247975))

(declare-fun res!2885318 () Bool)

(assert (=> d!2209397 (=> (not res!2885318) (not e!4247975))))

(declare-fun lt!2541053 () List!68368)

(declare-fun content!13746 (List!68368) (Set C!35498))

(assert (=> d!2209397 (= res!2885318 (= (content!13746 lt!2541053) (set.union (content!13746 (_1!37418 lt!2540740)) (content!13746 (_2!37418 lt!2540740)))))))

(declare-fun e!4247976 () List!68368)

(assert (=> d!2209397 (= lt!2541053 e!4247976)))

(declare-fun c!1317584 () Bool)

(assert (=> d!2209397 (= c!1317584 (is-Nil!68244 (_1!37418 lt!2540740)))))

(assert (=> d!2209397 (= (++!15726 (_1!37418 lt!2540740) (_2!37418 lt!2540740)) lt!2541053)))

(declare-fun b!7065991 () Bool)

(assert (=> b!7065991 (= e!4247976 (Cons!68244 (h!74692 (_1!37418 lt!2540740)) (++!15726 (t!382149 (_1!37418 lt!2540740)) (_2!37418 lt!2540740))))))

(declare-fun b!7065993 () Bool)

(assert (=> b!7065993 (= e!4247975 (or (not (= (_2!37418 lt!2540740) Nil!68244)) (= lt!2541053 (_1!37418 lt!2540740))))))

(declare-fun b!7065992 () Bool)

(declare-fun res!2885317 () Bool)

(assert (=> b!7065992 (=> (not res!2885317) (not e!4247975))))

(assert (=> b!7065992 (= res!2885317 (= (size!41188 lt!2541053) (+ (size!41188 (_1!37418 lt!2540740)) (size!41188 (_2!37418 lt!2540740)))))))

(declare-fun b!7065990 () Bool)

(assert (=> b!7065990 (= e!4247976 (_2!37418 lt!2540740))))

(assert (= (and d!2209397 c!1317584) b!7065990))

(assert (= (and d!2209397 (not c!1317584)) b!7065991))

(assert (= (and d!2209397 res!2885318) b!7065992))

(assert (= (and b!7065992 res!2885317) b!7065993))

(declare-fun m!7789356 () Bool)

(assert (=> d!2209397 m!7789356))

(declare-fun m!7789358 () Bool)

(assert (=> d!2209397 m!7789358))

(declare-fun m!7789360 () Bool)

(assert (=> d!2209397 m!7789360))

(declare-fun m!7789362 () Bool)

(assert (=> b!7065991 m!7789362))

(declare-fun m!7789364 () Bool)

(assert (=> b!7065992 m!7789364))

(assert (=> b!7065992 m!7789178))

(declare-fun m!7789366 () Bool)

(assert (=> b!7065992 m!7789366))

(assert (=> b!7065708 d!2209397))

(declare-fun d!2209399 () Bool)

(declare-fun nullableFct!2796 (Regex!17614) Bool)

(assert (=> d!2209399 (= (nullable!7297 (h!74693 (exprs!7110 lt!2540768))) (nullableFct!2796 (h!74693 (exprs!7110 lt!2540768))))))

(declare-fun bs!1879748 () Bool)

(assert (= bs!1879748 d!2209399))

(declare-fun m!7789368 () Bool)

(assert (=> bs!1879748 m!7789368))

(assert (=> b!7065723 d!2209399))

(declare-fun d!2209401 () Bool)

(assert (=> d!2209401 (= (tail!13777 (exprs!7110 lt!2540768)) (t!382150 (exprs!7110 lt!2540768)))))

(assert (=> b!7065723 d!2209401))

(declare-fun d!2209403 () Bool)

(declare-fun c!1317585 () Bool)

(assert (=> d!2209403 (= c!1317585 (isEmpty!39823 (t!382149 s!7408)))))

(declare-fun e!4247977 () Bool)

(assert (=> d!2209403 (= (matchZipper!3154 lt!2540749 (t!382149 s!7408)) e!4247977)))

(declare-fun b!7065994 () Bool)

(assert (=> b!7065994 (= e!4247977 (nullableZipper!2681 lt!2540749))))

(declare-fun b!7065995 () Bool)

(assert (=> b!7065995 (= e!4247977 (matchZipper!3154 (derivationStepZipper!3064 lt!2540749 (head!14387 (t!382149 s!7408))) (tail!13776 (t!382149 s!7408))))))

(assert (= (and d!2209403 c!1317585) b!7065994))

(assert (= (and d!2209403 (not c!1317585)) b!7065995))

(declare-fun m!7789370 () Bool)

(assert (=> d!2209403 m!7789370))

(declare-fun m!7789372 () Bool)

(assert (=> b!7065994 m!7789372))

(declare-fun m!7789374 () Bool)

(assert (=> b!7065995 m!7789374))

(assert (=> b!7065995 m!7789374))

(declare-fun m!7789376 () Bool)

(assert (=> b!7065995 m!7789376))

(declare-fun m!7789378 () Bool)

(assert (=> b!7065995 m!7789378))

(assert (=> b!7065995 m!7789376))

(assert (=> b!7065995 m!7789378))

(declare-fun m!7789380 () Bool)

(assert (=> b!7065995 m!7789380))

(assert (=> b!7065706 d!2209403))

(assert (=> b!7065706 d!2209323))

(assert (=> b!7065724 d!2209403))

(assert (=> b!7065724 d!2209323))

(declare-fun d!2209405 () Bool)

(assert (=> d!2209405 (= (get!23905 lt!2540786) (v!53240 lt!2540786))))

(assert (=> b!7065722 d!2209405))

(declare-fun d!2209407 () Bool)

(declare-fun c!1317586 () Bool)

(assert (=> d!2209407 (= c!1317586 (isEmpty!39823 (_1!37418 lt!2540740)))))

(declare-fun e!4247978 () Bool)

(assert (=> d!2209407 (= (matchZipper!3154 lt!2540756 (_1!37418 lt!2540740)) e!4247978)))

(declare-fun b!7065996 () Bool)

(assert (=> b!7065996 (= e!4247978 (nullableZipper!2681 lt!2540756))))

(declare-fun b!7065997 () Bool)

(assert (=> b!7065997 (= e!4247978 (matchZipper!3154 (derivationStepZipper!3064 lt!2540756 (head!14387 (_1!37418 lt!2540740))) (tail!13776 (_1!37418 lt!2540740))))))

(assert (= (and d!2209407 c!1317586) b!7065996))

(assert (= (and d!2209407 (not c!1317586)) b!7065997))

(assert (=> d!2209407 m!7788878))

(declare-fun m!7789382 () Bool)

(assert (=> b!7065996 m!7789382))

(assert (=> b!7065997 m!7789176))

(assert (=> b!7065997 m!7789176))

(declare-fun m!7789384 () Bool)

(assert (=> b!7065997 m!7789384))

(assert (=> b!7065997 m!7788920))

(assert (=> b!7065997 m!7789384))

(assert (=> b!7065997 m!7788920))

(declare-fun m!7789386 () Bool)

(assert (=> b!7065997 m!7789386))

(assert (=> b!7065722 d!2209407))

(declare-fun b!7065998 () Bool)

(declare-fun e!4247983 () Bool)

(declare-fun lt!2541054 () Option!16947)

(assert (=> b!7065998 (= e!4247983 (= (++!15726 (_1!37418 (get!23905 lt!2541054)) (_2!37418 (get!23905 lt!2541054))) s!7408))))

(declare-fun d!2209409 () Bool)

(declare-fun e!4247982 () Bool)

(assert (=> d!2209409 e!4247982))

(declare-fun res!2885319 () Bool)

(assert (=> d!2209409 (=> res!2885319 e!4247982)))

(assert (=> d!2209409 (= res!2885319 e!4247983)))

(declare-fun res!2885322 () Bool)

(assert (=> d!2209409 (=> (not res!2885322) (not e!4247983))))

(assert (=> d!2209409 (= res!2885322 (isDefined!13648 lt!2541054))))

(declare-fun e!4247980 () Option!16947)

(assert (=> d!2209409 (= lt!2541054 e!4247980)))

(declare-fun c!1317587 () Bool)

(declare-fun e!4247981 () Bool)

(assert (=> d!2209409 (= c!1317587 e!4247981)))

(declare-fun res!2885323 () Bool)

(assert (=> d!2209409 (=> (not res!2885323) (not e!4247981))))

(assert (=> d!2209409 (= res!2885323 (matchZipper!3154 lt!2540756 Nil!68244))))

(assert (=> d!2209409 (= (++!15726 Nil!68244 s!7408) s!7408)))

(assert (=> d!2209409 (= (findConcatSeparationZippers!463 lt!2540756 lt!2540781 Nil!68244 s!7408 s!7408) lt!2541054)))

(declare-fun b!7065999 () Bool)

(declare-fun lt!2541056 () Unit!161924)

(declare-fun lt!2541055 () Unit!161924)

(assert (=> b!7065999 (= lt!2541056 lt!2541055)))

(assert (=> b!7065999 (= (++!15726 (++!15726 Nil!68244 (Cons!68244 (h!74692 s!7408) Nil!68244)) (t!382149 s!7408)) s!7408)))

(assert (=> b!7065999 (= lt!2541055 (lemmaMoveElementToOtherListKeepsConcatEq!2967 Nil!68244 (h!74692 s!7408) (t!382149 s!7408) s!7408))))

(declare-fun e!4247979 () Option!16947)

(assert (=> b!7065999 (= e!4247979 (findConcatSeparationZippers!463 lt!2540756 lt!2540781 (++!15726 Nil!68244 (Cons!68244 (h!74692 s!7408) Nil!68244)) (t!382149 s!7408) s!7408))))

(declare-fun b!7066000 () Bool)

(declare-fun res!2885321 () Bool)

(assert (=> b!7066000 (=> (not res!2885321) (not e!4247983))))

(assert (=> b!7066000 (= res!2885321 (matchZipper!3154 lt!2540756 (_1!37418 (get!23905 lt!2541054))))))

(declare-fun b!7066001 () Bool)

(assert (=> b!7066001 (= e!4247982 (not (isDefined!13648 lt!2541054)))))

(declare-fun b!7066002 () Bool)

(assert (=> b!7066002 (= e!4247981 (matchZipper!3154 lt!2540781 s!7408))))

(declare-fun b!7066003 () Bool)

(assert (=> b!7066003 (= e!4247979 None!16946)))

(declare-fun b!7066004 () Bool)

(assert (=> b!7066004 (= e!4247980 (Some!16946 (tuple2!68231 Nil!68244 s!7408)))))

(declare-fun b!7066005 () Bool)

(declare-fun res!2885320 () Bool)

(assert (=> b!7066005 (=> (not res!2885320) (not e!4247983))))

(assert (=> b!7066005 (= res!2885320 (matchZipper!3154 lt!2540781 (_2!37418 (get!23905 lt!2541054))))))

(declare-fun b!7066006 () Bool)

(assert (=> b!7066006 (= e!4247980 e!4247979)))

(declare-fun c!1317588 () Bool)

(assert (=> b!7066006 (= c!1317588 (is-Nil!68244 s!7408))))

(assert (= (and d!2209409 res!2885323) b!7066002))

(assert (= (and d!2209409 c!1317587) b!7066004))

(assert (= (and d!2209409 (not c!1317587)) b!7066006))

(assert (= (and b!7066006 c!1317588) b!7066003))

(assert (= (and b!7066006 (not c!1317588)) b!7065999))

(assert (= (and d!2209409 res!2885322) b!7066000))

(assert (= (and b!7066000 res!2885321) b!7066005))

(assert (= (and b!7066005 res!2885320) b!7065998))

(assert (= (and d!2209409 (not res!2885319)) b!7066001))

(assert (=> b!7066002 m!7789268))

(declare-fun m!7789388 () Bool)

(assert (=> d!2209409 m!7789388))

(declare-fun m!7789390 () Bool)

(assert (=> d!2209409 m!7789390))

(assert (=> d!2209409 m!7789274))

(declare-fun m!7789392 () Bool)

(assert (=> b!7066000 m!7789392))

(declare-fun m!7789394 () Bool)

(assert (=> b!7066000 m!7789394))

(assert (=> b!7066001 m!7789388))

(assert (=> b!7065998 m!7789392))

(declare-fun m!7789396 () Bool)

(assert (=> b!7065998 m!7789396))

(assert (=> b!7065999 m!7789282))

(assert (=> b!7065999 m!7789282))

(assert (=> b!7065999 m!7789284))

(assert (=> b!7065999 m!7789286))

(assert (=> b!7065999 m!7789282))

(declare-fun m!7789398 () Bool)

(assert (=> b!7065999 m!7789398))

(assert (=> b!7066005 m!7789392))

(declare-fun m!7789400 () Bool)

(assert (=> b!7066005 m!7789400))

(assert (=> b!7065722 d!2209409))

(declare-fun d!2209411 () Bool)

(assert (=> d!2209411 (isDefined!13648 (findConcatSeparationZippers!463 lt!2540756 (set.insert ct2!306 (as set.empty (Set Context!13220))) Nil!68244 s!7408 s!7408))))

(declare-fun lt!2541059 () Unit!161924)

(declare-fun choose!54051 ((Set Context!13220) Context!13220 List!68368) Unit!161924)

(assert (=> d!2209411 (= lt!2541059 (choose!54051 lt!2540756 ct2!306 s!7408))))

(assert (=> d!2209411 (matchZipper!3154 (appendTo!735 lt!2540756 ct2!306) s!7408)))

(assert (=> d!2209411 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!451 lt!2540756 ct2!306 s!7408) lt!2541059)))

(declare-fun bs!1879749 () Bool)

(assert (= bs!1879749 d!2209411))

(declare-fun m!7789402 () Bool)

(assert (=> bs!1879749 m!7789402))

(declare-fun m!7789404 () Bool)

(assert (=> bs!1879749 m!7789404))

(declare-fun m!7789406 () Bool)

(assert (=> bs!1879749 m!7789406))

(assert (=> bs!1879749 m!7788832))

(declare-fun m!7789408 () Bool)

(assert (=> bs!1879749 m!7789408))

(assert (=> bs!1879749 m!7788832))

(assert (=> bs!1879749 m!7789402))

(assert (=> bs!1879749 m!7789408))

(declare-fun m!7789410 () Bool)

(assert (=> bs!1879749 m!7789410))

(assert (=> b!7065722 d!2209411))

(declare-fun d!2209413 () Bool)

(assert (=> d!2209413 (= (isDefined!13648 lt!2540786) (not (isEmpty!39827 lt!2540786)))))

(declare-fun bs!1879750 () Bool)

(assert (= bs!1879750 d!2209413))

(declare-fun m!7789412 () Bool)

(assert (=> bs!1879750 m!7789412))

(assert (=> b!7065722 d!2209413))

(declare-fun d!2209415 () Bool)

(declare-fun c!1317589 () Bool)

(assert (=> d!2209415 (= c!1317589 (isEmpty!39823 lt!2540748))))

(declare-fun e!4247984 () Bool)

(assert (=> d!2209415 (= (matchZipper!3154 lt!2540760 lt!2540748) e!4247984)))

(declare-fun b!7066007 () Bool)

(assert (=> b!7066007 (= e!4247984 (nullableZipper!2681 lt!2540760))))

(declare-fun b!7066008 () Bool)

(assert (=> b!7066008 (= e!4247984 (matchZipper!3154 (derivationStepZipper!3064 lt!2540760 (head!14387 lt!2540748)) (tail!13776 lt!2540748)))))

(assert (= (and d!2209415 c!1317589) b!7066007))

(assert (= (and d!2209415 (not c!1317589)) b!7066008))

(declare-fun m!7789414 () Bool)

(assert (=> d!2209415 m!7789414))

(declare-fun m!7789416 () Bool)

(assert (=> b!7066007 m!7789416))

(declare-fun m!7789418 () Bool)

(assert (=> b!7066008 m!7789418))

(assert (=> b!7066008 m!7789418))

(declare-fun m!7789420 () Bool)

(assert (=> b!7066008 m!7789420))

(declare-fun m!7789422 () Bool)

(assert (=> b!7066008 m!7789422))

(assert (=> b!7066008 m!7789420))

(assert (=> b!7066008 m!7789422))

(declare-fun m!7789424 () Bool)

(assert (=> b!7066008 m!7789424))

(assert (=> b!7065705 d!2209415))

(declare-fun d!2209417 () Bool)

(assert (=> d!2209417 (exists!3638 z1!570 lambda!423692)))

(declare-fun lt!2541062 () Unit!161924)

(declare-fun choose!54052 ((Set Context!13220) Context!13220 Int) Unit!161924)

(assert (=> d!2209417 (= lt!2541062 (choose!54052 z1!570 lt!2540768 lambda!423692))))

(assert (=> d!2209417 (set.member lt!2540768 z1!570)))

(assert (=> d!2209417 (= (lemmaContainsThenExists!146 z1!570 lt!2540768 lambda!423692) lt!2541062)))

(declare-fun bs!1879751 () Bool)

(assert (= bs!1879751 d!2209417))

(assert (=> bs!1879751 m!7788868))

(declare-fun m!7789426 () Bool)

(assert (=> bs!1879751 m!7789426))

(assert (=> bs!1879751 m!7788804))

(assert (=> b!7065703 d!2209417))

(declare-fun d!2209419 () Bool)

(declare-fun c!1317592 () Bool)

(assert (=> d!2209419 (= c!1317592 (is-Nil!68246 lt!2540763))))

(declare-fun e!4247988 () (Set Context!13220))

(assert (=> d!2209419 (= (content!13743 lt!2540763) e!4247988)))

(declare-fun b!7066013 () Bool)

(assert (=> b!7066013 (= e!4247988 (as set.empty (Set Context!13220)))))

(declare-fun b!7066014 () Bool)

(assert (=> b!7066014 (= e!4247988 (set.union (set.insert (h!74694 lt!2540763) (as set.empty (Set Context!13220))) (content!13743 (t!382151 lt!2540763))))))

(assert (= (and d!2209419 c!1317592) b!7066013))

(assert (= (and d!2209419 (not c!1317592)) b!7066014))

(declare-fun m!7789428 () Bool)

(assert (=> b!7066014 m!7789428))

(declare-fun m!7789430 () Bool)

(assert (=> b!7066014 m!7789430))

(assert (=> b!7065703 d!2209419))

(declare-fun d!2209421 () Bool)

(assert (=> d!2209421 (= (isEmpty!39823 (_1!37418 lt!2540740)) (is-Nil!68244 (_1!37418 lt!2540740)))))

(assert (=> b!7065703 d!2209421))

(declare-fun d!2209423 () Bool)

(declare-fun lt!2541065 () Bool)

(assert (=> d!2209423 (= lt!2541065 (exists!3639 (toList!10955 z1!570) lambda!423692))))

(declare-fun choose!54053 ((Set Context!13220) Int) Bool)

(assert (=> d!2209423 (= lt!2541065 (choose!54053 z1!570 lambda!423692))))

(assert (=> d!2209423 (= (exists!3638 z1!570 lambda!423692) lt!2541065)))

(declare-fun bs!1879752 () Bool)

(assert (= bs!1879752 d!2209423))

(assert (=> bs!1879752 m!7788944))

(assert (=> bs!1879752 m!7788944))

(declare-fun m!7789432 () Bool)

(assert (=> bs!1879752 m!7789432))

(declare-fun m!7789434 () Bool)

(assert (=> bs!1879752 m!7789434))

(assert (=> b!7065703 d!2209423))

(declare-fun d!2209425 () Bool)

(declare-fun c!1317593 () Bool)

(assert (=> d!2209425 (= c!1317593 (isEmpty!39823 (_1!37418 lt!2540740)))))

(declare-fun e!4247989 () Bool)

(assert (=> d!2209425 (= (matchZipper!3154 z1!570 (_1!37418 lt!2540740)) e!4247989)))

(declare-fun b!7066015 () Bool)

(assert (=> b!7066015 (= e!4247989 (nullableZipper!2681 z1!570))))

(declare-fun b!7066016 () Bool)

(assert (=> b!7066016 (= e!4247989 (matchZipper!3154 (derivationStepZipper!3064 z1!570 (head!14387 (_1!37418 lt!2540740))) (tail!13776 (_1!37418 lt!2540740))))))

(assert (= (and d!2209425 c!1317593) b!7066015))

(assert (= (and d!2209425 (not c!1317593)) b!7066016))

(assert (=> d!2209425 m!7788878))

(declare-fun m!7789436 () Bool)

(assert (=> b!7066015 m!7789436))

(assert (=> b!7066016 m!7789176))

(assert (=> b!7066016 m!7789176))

(declare-fun m!7789438 () Bool)

(assert (=> b!7066016 m!7789438))

(assert (=> b!7066016 m!7788920))

(assert (=> b!7066016 m!7789438))

(assert (=> b!7066016 m!7788920))

(declare-fun m!7789440 () Bool)

(assert (=> b!7066016 m!7789440))

(assert (=> b!7065703 d!2209425))

(declare-fun d!2209427 () Bool)

(declare-fun c!1317594 () Bool)

(assert (=> d!2209427 (= c!1317594 (isEmpty!39823 (_1!37418 lt!2540740)))))

(declare-fun e!4247990 () Bool)

(assert (=> d!2209427 (= (matchZipper!3154 (content!13743 lt!2540763) (_1!37418 lt!2540740)) e!4247990)))

(declare-fun b!7066017 () Bool)

(assert (=> b!7066017 (= e!4247990 (nullableZipper!2681 (content!13743 lt!2540763)))))

(declare-fun b!7066018 () Bool)

(assert (=> b!7066018 (= e!4247990 (matchZipper!3154 (derivationStepZipper!3064 (content!13743 lt!2540763) (head!14387 (_1!37418 lt!2540740))) (tail!13776 (_1!37418 lt!2540740))))))

(assert (= (and d!2209427 c!1317594) b!7066017))

(assert (= (and d!2209427 (not c!1317594)) b!7066018))

(assert (=> d!2209427 m!7788878))

(assert (=> b!7066017 m!7788872))

(declare-fun m!7789442 () Bool)

(assert (=> b!7066017 m!7789442))

(assert (=> b!7066018 m!7789176))

(assert (=> b!7066018 m!7788872))

(assert (=> b!7066018 m!7789176))

(declare-fun m!7789444 () Bool)

(assert (=> b!7066018 m!7789444))

(assert (=> b!7066018 m!7788920))

(assert (=> b!7066018 m!7789444))

(assert (=> b!7066018 m!7788920))

(declare-fun m!7789446 () Bool)

(assert (=> b!7066018 m!7789446))

(assert (=> b!7065703 d!2209427))

(declare-fun bs!1879753 () Bool)

(declare-fun d!2209429 () Bool)

(assert (= bs!1879753 (and d!2209429 b!7065714)))

(declare-fun lambda!423787 () Int)

(assert (=> bs!1879753 (= (= (_1!37418 lt!2540740) s!7408) (= lambda!423787 lambda!423687))))

(declare-fun bs!1879754 () Bool)

(assert (= bs!1879754 (and d!2209429 b!7065702)))

(assert (=> bs!1879754 (not (= lambda!423787 lambda!423691))))

(declare-fun bs!1879755 () Bool)

(assert (= bs!1879755 (and d!2209429 d!2209385)))

(assert (=> bs!1879755 (= (= (_1!37418 lt!2540740) s!7408) (= lambda!423787 lambda!423784))))

(declare-fun bs!1879756 () Bool)

(assert (= bs!1879756 (and d!2209429 d!2209381)))

(assert (=> bs!1879756 (not (= lambda!423787 lambda!423781))))

(declare-fun bs!1879757 () Bool)

(assert (= bs!1879757 (and d!2209429 b!7065703)))

(assert (=> bs!1879757 (= lambda!423787 lambda!423692)))

(assert (=> d!2209429 true))

(assert (=> d!2209429 (matchZipper!3154 (content!13743 lt!2540763) (_1!37418 lt!2540740))))

(declare-fun lt!2541068 () Unit!161924)

(declare-fun choose!54054 (List!68370 List!68368) Unit!161924)

(assert (=> d!2209429 (= lt!2541068 (choose!54054 lt!2540763 (_1!37418 lt!2540740)))))

(assert (=> d!2209429 (exists!3639 lt!2540763 lambda!423787)))

(assert (=> d!2209429 (= (lemmaExistsMatchingContextThenMatchingString!43 lt!2540763 (_1!37418 lt!2540740)) lt!2541068)))

(declare-fun bs!1879758 () Bool)

(assert (= bs!1879758 d!2209429))

(assert (=> bs!1879758 m!7788872))

(assert (=> bs!1879758 m!7788872))

(assert (=> bs!1879758 m!7788880))

(declare-fun m!7789448 () Bool)

(assert (=> bs!1879758 m!7789448))

(declare-fun m!7789450 () Bool)

(assert (=> bs!1879758 m!7789450))

(assert (=> b!7065703 d!2209429))

(assert (=> b!7065721 d!2209331))

(declare-fun d!2209431 () Bool)

(declare-fun c!1317597 () Bool)

(assert (=> d!2209431 (= c!1317597 (isEmpty!39823 lt!2540748))))

(declare-fun e!4247991 () Bool)

(assert (=> d!2209431 (= (matchZipper!3154 (set.union lt!2540742 lt!2540760) lt!2540748) e!4247991)))

(declare-fun b!7066019 () Bool)

(assert (=> b!7066019 (= e!4247991 (nullableZipper!2681 (set.union lt!2540742 lt!2540760)))))

(declare-fun b!7066020 () Bool)

(assert (=> b!7066020 (= e!4247991 (matchZipper!3154 (derivationStepZipper!3064 (set.union lt!2540742 lt!2540760) (head!14387 lt!2540748)) (tail!13776 lt!2540748)))))

(assert (= (and d!2209431 c!1317597) b!7066019))

(assert (= (and d!2209431 (not c!1317597)) b!7066020))

(assert (=> d!2209431 m!7789414))

(declare-fun m!7789452 () Bool)

(assert (=> b!7066019 m!7789452))

(assert (=> b!7066020 m!7789418))

(assert (=> b!7066020 m!7789418))

(declare-fun m!7789454 () Bool)

(assert (=> b!7066020 m!7789454))

(assert (=> b!7066020 m!7789422))

(assert (=> b!7066020 m!7789454))

(assert (=> b!7066020 m!7789422))

(declare-fun m!7789456 () Bool)

(assert (=> b!7066020 m!7789456))

(assert (=> b!7065721 d!2209431))

(declare-fun d!2209433 () Bool)

(assert (=> d!2209433 (= (flatMap!2540 lt!2540743 lambda!423690) (choose!54047 lt!2540743 lambda!423690))))

(declare-fun bs!1879759 () Bool)

(assert (= bs!1879759 d!2209433))

(declare-fun m!7789458 () Bool)

(assert (=> bs!1879759 m!7789458))

(assert (=> b!7065721 d!2209433))

(declare-fun d!2209435 () Bool)

(declare-fun e!4247994 () Bool)

(assert (=> d!2209435 (= (matchZipper!3154 (set.union lt!2540742 lt!2540760) lt!2540748) e!4247994)))

(declare-fun res!2885326 () Bool)

(assert (=> d!2209435 (=> res!2885326 e!4247994)))

(assert (=> d!2209435 (= res!2885326 (matchZipper!3154 lt!2540742 lt!2540748))))

(declare-fun lt!2541071 () Unit!161924)

(declare-fun choose!54055 ((Set Context!13220) (Set Context!13220) List!68368) Unit!161924)

(assert (=> d!2209435 (= lt!2541071 (choose!54055 lt!2540742 lt!2540760 lt!2540748))))

(assert (=> d!2209435 (= (lemmaZipperConcatMatchesSameAsBothZippers!1627 lt!2540742 lt!2540760 lt!2540748) lt!2541071)))

(declare-fun b!7066023 () Bool)

(assert (=> b!7066023 (= e!4247994 (matchZipper!3154 lt!2540760 lt!2540748))))

(assert (= (and d!2209435 (not res!2885326)) b!7066023))

(assert (=> d!2209435 m!7788918))

(assert (=> d!2209435 m!7788914))

(declare-fun m!7789460 () Bool)

(assert (=> d!2209435 m!7789460))

(assert (=> b!7066023 m!7788930))

(assert (=> b!7065721 d!2209435))

(assert (=> b!7065721 d!2209333))

(declare-fun d!2209437 () Bool)

(declare-fun c!1317598 () Bool)

(assert (=> d!2209437 (= c!1317598 (isEmpty!39823 lt!2540748))))

(declare-fun e!4247995 () Bool)

(assert (=> d!2209437 (= (matchZipper!3154 lt!2540742 lt!2540748) e!4247995)))

(declare-fun b!7066024 () Bool)

(assert (=> b!7066024 (= e!4247995 (nullableZipper!2681 lt!2540742))))

(declare-fun b!7066025 () Bool)

(assert (=> b!7066025 (= e!4247995 (matchZipper!3154 (derivationStepZipper!3064 lt!2540742 (head!14387 lt!2540748)) (tail!13776 lt!2540748)))))

(assert (= (and d!2209437 c!1317598) b!7066024))

(assert (= (and d!2209437 (not c!1317598)) b!7066025))

(assert (=> d!2209437 m!7789414))

(declare-fun m!7789462 () Bool)

(assert (=> b!7066024 m!7789462))

(assert (=> b!7066025 m!7789418))

(assert (=> b!7066025 m!7789418))

(declare-fun m!7789464 () Bool)

(assert (=> b!7066025 m!7789464))

(assert (=> b!7066025 m!7789422))

(assert (=> b!7066025 m!7789464))

(assert (=> b!7066025 m!7789422))

(declare-fun m!7789466 () Bool)

(assert (=> b!7066025 m!7789466))

(assert (=> b!7065721 d!2209437))

(assert (=> b!7065721 d!2209347))

(declare-fun d!2209439 () Bool)

(assert (=> d!2209439 (= (flatMap!2540 lt!2540743 lambda!423690) (dynLambda!27725 lambda!423690 lt!2540768))))

(declare-fun lt!2541072 () Unit!161924)

(assert (=> d!2209439 (= lt!2541072 (choose!54043 lt!2540743 lt!2540768 lambda!423690))))

(assert (=> d!2209439 (= lt!2540743 (set.insert lt!2540768 (as set.empty (Set Context!13220))))))

(assert (=> d!2209439 (= (lemmaFlatMapOnSingletonSet!2049 lt!2540743 lt!2540768 lambda!423690) lt!2541072)))

(declare-fun b_lambda!269593 () Bool)

(assert (=> (not b_lambda!269593) (not d!2209439)))

(declare-fun bs!1879760 () Bool)

(assert (= bs!1879760 d!2209439))

(assert (=> bs!1879760 m!7788922))

(declare-fun m!7789468 () Bool)

(assert (=> bs!1879760 m!7789468))

(declare-fun m!7789470 () Bool)

(assert (=> bs!1879760 m!7789470))

(assert (=> bs!1879760 m!7788846))

(assert (=> b!7065721 d!2209439))

(declare-fun d!2209441 () Bool)

(assert (=> d!2209441 (= (tail!13776 (_1!37418 lt!2540740)) (t!382149 (_1!37418 lt!2540740)))))

(assert (=> b!7065721 d!2209441))

(declare-fun c!1317602 () Bool)

(declare-fun c!1317603 () Bool)

(declare-fun bm!642125 () Bool)

(declare-fun call!642132 () List!68369)

(assert (=> bm!642125 (= call!642132 ($colon$colon!2642 (exprs!7110 lt!2540775) (ite (or c!1317603 c!1317602) (regTwo!35740 (h!74693 (exprs!7110 lt!2540768))) (h!74693 (exprs!7110 lt!2540768)))))))

(declare-fun b!7066026 () Bool)

(declare-fun e!4247999 () Bool)

(assert (=> b!7066026 (= c!1317603 e!4247999)))

(declare-fun res!2885327 () Bool)

(assert (=> b!7066026 (=> (not res!2885327) (not e!4247999))))

(assert (=> b!7066026 (= res!2885327 (is-Concat!26459 (h!74693 (exprs!7110 lt!2540768))))))

(declare-fun e!4248000 () (Set Context!13220))

(declare-fun e!4248001 () (Set Context!13220))

(assert (=> b!7066026 (= e!4248000 e!4248001)))

(declare-fun bm!642126 () Bool)

(declare-fun c!1317600 () Bool)

(declare-fun call!642133 () (Set Context!13220))

(declare-fun call!642134 () List!68369)

(assert (=> bm!642126 (= call!642133 (derivationStepZipperDown!2248 (ite c!1317600 (regOne!35741 (h!74693 (exprs!7110 lt!2540768))) (ite c!1317603 (regTwo!35740 (h!74693 (exprs!7110 lt!2540768))) (ite c!1317602 (regOne!35740 (h!74693 (exprs!7110 lt!2540768))) (reg!17943 (h!74693 (exprs!7110 lt!2540768)))))) (ite (or c!1317600 c!1317603) lt!2540775 (Context!13221 call!642134)) (h!74692 s!7408)))))

(declare-fun b!7066027 () Bool)

(declare-fun e!4247997 () (Set Context!13220))

(declare-fun call!642135 () (Set Context!13220))

(assert (=> b!7066027 (= e!4247997 call!642135)))

(declare-fun b!7066028 () Bool)

(declare-fun e!4247998 () (Set Context!13220))

(assert (=> b!7066028 (= e!4247998 (set.insert lt!2540775 (as set.empty (Set Context!13220))))))

(declare-fun b!7066029 () Bool)

(declare-fun call!642131 () (Set Context!13220))

(assert (=> b!7066029 (= e!4248000 (set.union call!642133 call!642131))))

(declare-fun b!7066030 () Bool)

(assert (=> b!7066030 (= e!4247998 e!4248000)))

(assert (=> b!7066030 (= c!1317600 (is-Union!17614 (h!74693 (exprs!7110 lt!2540768))))))

(declare-fun bm!642127 () Bool)

(assert (=> bm!642127 (= call!642134 call!642132)))

(declare-fun b!7066031 () Bool)

(declare-fun call!642130 () (Set Context!13220))

(assert (=> b!7066031 (= e!4248001 (set.union call!642131 call!642130))))

(declare-fun bm!642128 () Bool)

(assert (=> bm!642128 (= call!642131 (derivationStepZipperDown!2248 (ite c!1317600 (regTwo!35741 (h!74693 (exprs!7110 lt!2540768))) (regOne!35740 (h!74693 (exprs!7110 lt!2540768)))) (ite c!1317600 lt!2540775 (Context!13221 call!642132)) (h!74692 s!7408)))))

(declare-fun b!7066033 () Bool)

(declare-fun e!4247996 () (Set Context!13220))

(assert (=> b!7066033 (= e!4248001 e!4247996)))

(assert (=> b!7066033 (= c!1317602 (is-Concat!26459 (h!74693 (exprs!7110 lt!2540768))))))

(declare-fun b!7066034 () Bool)

(assert (=> b!7066034 (= e!4247997 (as set.empty (Set Context!13220)))))

(declare-fun bm!642129 () Bool)

(assert (=> bm!642129 (= call!642130 call!642133)))

(declare-fun b!7066035 () Bool)

(declare-fun c!1317599 () Bool)

(assert (=> b!7066035 (= c!1317599 (is-Star!17614 (h!74693 (exprs!7110 lt!2540768))))))

(assert (=> b!7066035 (= e!4247996 e!4247997)))

(declare-fun bm!642130 () Bool)

(assert (=> bm!642130 (= call!642135 call!642130)))

(declare-fun b!7066036 () Bool)

(assert (=> b!7066036 (= e!4247999 (nullable!7297 (regOne!35740 (h!74693 (exprs!7110 lt!2540768)))))))

(declare-fun b!7066032 () Bool)

(assert (=> b!7066032 (= e!4247996 call!642135)))

(declare-fun d!2209443 () Bool)

(declare-fun c!1317601 () Bool)

(assert (=> d!2209443 (= c!1317601 (and (is-ElementMatch!17614 (h!74693 (exprs!7110 lt!2540768))) (= (c!1317496 (h!74693 (exprs!7110 lt!2540768))) (h!74692 s!7408))))))

(assert (=> d!2209443 (= (derivationStepZipperDown!2248 (h!74693 (exprs!7110 lt!2540768)) lt!2540775 (h!74692 s!7408)) e!4247998)))

(assert (= (and d!2209443 c!1317601) b!7066028))

(assert (= (and d!2209443 (not c!1317601)) b!7066030))

(assert (= (and b!7066030 c!1317600) b!7066029))

(assert (= (and b!7066030 (not c!1317600)) b!7066026))

(assert (= (and b!7066026 res!2885327) b!7066036))

(assert (= (and b!7066026 c!1317603) b!7066031))

(assert (= (and b!7066026 (not c!1317603)) b!7066033))

(assert (= (and b!7066033 c!1317602) b!7066032))

(assert (= (and b!7066033 (not c!1317602)) b!7066035))

(assert (= (and b!7066035 c!1317599) b!7066027))

(assert (= (and b!7066035 (not c!1317599)) b!7066034))

(assert (= (or b!7066032 b!7066027) bm!642127))

(assert (= (or b!7066032 b!7066027) bm!642130))

(assert (= (or b!7066031 bm!642130) bm!642129))

(assert (= (or b!7066031 bm!642127) bm!642125))

(assert (= (or b!7066029 bm!642129) bm!642126))

(assert (= (or b!7066029 b!7066031) bm!642128))

(declare-fun m!7789472 () Bool)

(assert (=> bm!642128 m!7789472))

(assert (=> b!7066028 m!7788958))

(declare-fun m!7789474 () Bool)

(assert (=> bm!642126 m!7789474))

(declare-fun m!7789476 () Bool)

(assert (=> bm!642125 m!7789476))

(assert (=> b!7066036 m!7789146))

(assert (=> b!7065721 d!2209443))

(declare-fun b!7066037 () Bool)

(declare-fun e!4248004 () (Set Context!13220))

(declare-fun call!642136 () (Set Context!13220))

(assert (=> b!7066037 (= e!4248004 call!642136)))

(declare-fun d!2209445 () Bool)

(declare-fun c!1317605 () Bool)

(declare-fun e!4248003 () Bool)

(assert (=> d!2209445 (= c!1317605 e!4248003)))

(declare-fun res!2885328 () Bool)

(assert (=> d!2209445 (=> (not res!2885328) (not e!4248003))))

(assert (=> d!2209445 (= res!2885328 (is-Cons!68245 (exprs!7110 lt!2540768)))))

(declare-fun e!4248002 () (Set Context!13220))

(assert (=> d!2209445 (= (derivationStepZipperUp!2198 lt!2540768 (h!74692 s!7408)) e!4248002)))

(declare-fun b!7066038 () Bool)

(assert (=> b!7066038 (= e!4248003 (nullable!7297 (h!74693 (exprs!7110 lt!2540768))))))

(declare-fun b!7066039 () Bool)

(assert (=> b!7066039 (= e!4248002 e!4248004)))

(declare-fun c!1317604 () Bool)

(assert (=> b!7066039 (= c!1317604 (is-Cons!68245 (exprs!7110 lt!2540768)))))

(declare-fun bm!642131 () Bool)

(assert (=> bm!642131 (= call!642136 (derivationStepZipperDown!2248 (h!74693 (exprs!7110 lt!2540768)) (Context!13221 (t!382150 (exprs!7110 lt!2540768))) (h!74692 s!7408)))))

(declare-fun b!7066040 () Bool)

(assert (=> b!7066040 (= e!4248002 (set.union call!642136 (derivationStepZipperUp!2198 (Context!13221 (t!382150 (exprs!7110 lt!2540768))) (h!74692 s!7408))))))

(declare-fun b!7066041 () Bool)

(assert (=> b!7066041 (= e!4248004 (as set.empty (Set Context!13220)))))

(assert (= (and d!2209445 res!2885328) b!7066038))

(assert (= (and d!2209445 c!1317605) b!7066040))

(assert (= (and d!2209445 (not c!1317605)) b!7066039))

(assert (= (and b!7066039 c!1317604) b!7066037))

(assert (= (and b!7066039 (not c!1317604)) b!7066041))

(assert (= (or b!7066040 b!7066037) bm!642131))

(assert (=> b!7066038 m!7788940))

(declare-fun m!7789478 () Bool)

(assert (=> bm!642131 m!7789478))

(declare-fun m!7789480 () Bool)

(assert (=> b!7066040 m!7789480))

(assert (=> b!7065721 d!2209445))

(assert (=> b!7065704 d!2209403))

(declare-fun bs!1879761 () Bool)

(declare-fun d!2209447 () Bool)

(assert (= bs!1879761 (and d!2209447 b!7065701)))

(declare-fun lambda!423788 () Int)

(assert (=> bs!1879761 (= lambda!423788 lambda!423689)))

(declare-fun bs!1879762 () Bool)

(assert (= bs!1879762 (and d!2209447 d!2209375)))

(assert (=> bs!1879762 (= lambda!423788 lambda!423778)))

(assert (=> d!2209447 (= (inv!86895 setElem!50100) (forall!16561 (exprs!7110 setElem!50100) lambda!423788))))

(declare-fun bs!1879763 () Bool)

(assert (= bs!1879763 d!2209447))

(declare-fun m!7789482 () Bool)

(assert (=> bs!1879763 m!7789482))

(assert (=> setNonEmpty!50100 d!2209447))

(declare-fun d!2209449 () Bool)

(assert (=> d!2209449 (exists!3638 lt!2540756 lambda!423691)))

(declare-fun lt!2541073 () Unit!161924)

(assert (=> d!2209449 (= lt!2541073 (choose!54052 lt!2540756 lt!2540775 lambda!423691))))

(assert (=> d!2209449 (set.member lt!2540775 lt!2540756)))

(assert (=> d!2209449 (= (lemmaContainsThenExists!146 lt!2540756 lt!2540775 lambda!423691) lt!2541073)))

(declare-fun bs!1879764 () Bool)

(assert (= bs!1879764 d!2209449))

(assert (=> bs!1879764 m!7788844))

(declare-fun m!7789484 () Bool)

(assert (=> bs!1879764 m!7789484))

(declare-fun m!7789486 () Bool)

(assert (=> bs!1879764 m!7789486))

(assert (=> b!7065702 d!2209449))

(declare-fun d!2209451 () Bool)

(declare-fun e!4248005 () Bool)

(assert (=> d!2209451 e!4248005))

(declare-fun res!2885329 () Bool)

(assert (=> d!2209451 (=> (not res!2885329) (not e!4248005))))

(declare-fun lt!2541074 () Context!13220)

(assert (=> d!2209451 (= res!2885329 (dynLambda!27728 lambda!423691 lt!2541074))))

(assert (=> d!2209451 (= lt!2541074 (getWitness!1700 (toList!10955 lt!2540756) lambda!423691))))

(assert (=> d!2209451 (exists!3638 lt!2540756 lambda!423691)))

(assert (=> d!2209451 (= (getWitness!1698 lt!2540756 lambda!423691) lt!2541074)))

(declare-fun b!7066042 () Bool)

(assert (=> b!7066042 (= e!4248005 (set.member lt!2541074 lt!2540756))))

(assert (= (and d!2209451 res!2885329) b!7066042))

(declare-fun b_lambda!269595 () Bool)

(assert (=> (not b_lambda!269595) (not d!2209451)))

(declare-fun m!7789488 () Bool)

(assert (=> d!2209451 m!7789488))

(declare-fun m!7789490 () Bool)

(assert (=> d!2209451 m!7789490))

(assert (=> d!2209451 m!7789490))

(declare-fun m!7789492 () Bool)

(assert (=> d!2209451 m!7789492))

(assert (=> d!2209451 m!7788844))

(declare-fun m!7789494 () Bool)

(assert (=> b!7066042 m!7789494))

(assert (=> b!7065702 d!2209451))

(declare-fun d!2209453 () Bool)

(declare-fun lt!2541075 () Bool)

(assert (=> d!2209453 (= lt!2541075 (exists!3639 (toList!10955 lt!2540750) lambda!423691))))

(assert (=> d!2209453 (= lt!2541075 (choose!54053 lt!2540750 lambda!423691))))

(assert (=> d!2209453 (= (exists!3638 lt!2540750 lambda!423691) lt!2541075)))

(declare-fun bs!1879765 () Bool)

(assert (= bs!1879765 d!2209453))

(declare-fun m!7789496 () Bool)

(assert (=> bs!1879765 m!7789496))

(assert (=> bs!1879765 m!7789496))

(declare-fun m!7789498 () Bool)

(assert (=> bs!1879765 m!7789498))

(declare-fun m!7789500 () Bool)

(assert (=> bs!1879765 m!7789500))

(assert (=> b!7065702 d!2209453))

(declare-fun d!2209455 () Bool)

(assert (=> d!2209455 (exists!3638 lt!2540750 lambda!423691)))

(declare-fun lt!2541076 () Unit!161924)

(assert (=> d!2209455 (= lt!2541076 (choose!54052 lt!2540750 lt!2540768 lambda!423691))))

(assert (=> d!2209455 (set.member lt!2540768 lt!2540750)))

(assert (=> d!2209455 (= (lemmaContainsThenExists!146 lt!2540750 lt!2540768 lambda!423691) lt!2541076)))

(declare-fun bs!1879766 () Bool)

(assert (= bs!1879766 d!2209455))

(assert (=> bs!1879766 m!7788848))

(declare-fun m!7789502 () Bool)

(assert (=> bs!1879766 m!7789502))

(declare-fun m!7789504 () Bool)

(assert (=> bs!1879766 m!7789504))

(assert (=> b!7065702 d!2209455))

(declare-fun d!2209457 () Bool)

(declare-fun lt!2541077 () Bool)

(assert (=> d!2209457 (= lt!2541077 (exists!3639 (toList!10955 lt!2540756) lambda!423691))))

(assert (=> d!2209457 (= lt!2541077 (choose!54053 lt!2540756 lambda!423691))))

(assert (=> d!2209457 (= (exists!3638 lt!2540756 lambda!423691) lt!2541077)))

(declare-fun bs!1879767 () Bool)

(assert (= bs!1879767 d!2209457))

(assert (=> bs!1879767 m!7789490))

(assert (=> bs!1879767 m!7789490))

(declare-fun m!7789506 () Bool)

(assert (=> bs!1879767 m!7789506))

(declare-fun m!7789508 () Bool)

(assert (=> bs!1879767 m!7789508))

(assert (=> b!7065702 d!2209457))

(assert (=> b!7065720 d!2209359))

(assert (=> b!7065719 d!2209323))

(declare-fun d!2209459 () Bool)

(declare-fun c!1317606 () Bool)

(assert (=> d!2209459 (= c!1317606 (isEmpty!39823 (t!382149 s!7408)))))

(declare-fun e!4248006 () Bool)

(assert (=> d!2209459 (= (matchZipper!3154 lt!2540735 (t!382149 s!7408)) e!4248006)))

(declare-fun b!7066043 () Bool)

(assert (=> b!7066043 (= e!4248006 (nullableZipper!2681 lt!2540735))))

(declare-fun b!7066044 () Bool)

(assert (=> b!7066044 (= e!4248006 (matchZipper!3154 (derivationStepZipper!3064 lt!2540735 (head!14387 (t!382149 s!7408))) (tail!13776 (t!382149 s!7408))))))

(assert (= (and d!2209459 c!1317606) b!7066043))

(assert (= (and d!2209459 (not c!1317606)) b!7066044))

(assert (=> d!2209459 m!7789370))

(declare-fun m!7789510 () Bool)

(assert (=> b!7066043 m!7789510))

(assert (=> b!7066044 m!7789374))

(assert (=> b!7066044 m!7789374))

(declare-fun m!7789512 () Bool)

(assert (=> b!7066044 m!7789512))

(assert (=> b!7066044 m!7789378))

(assert (=> b!7066044 m!7789512))

(assert (=> b!7066044 m!7789378))

(declare-fun m!7789514 () Bool)

(assert (=> b!7066044 m!7789514))

(assert (=> b!7065719 d!2209459))

(declare-fun d!2209461 () Bool)

(declare-fun e!4248007 () Bool)

(assert (=> d!2209461 (= (matchZipper!3154 (set.union lt!2540769 lt!2540749) (t!382149 s!7408)) e!4248007)))

(declare-fun res!2885330 () Bool)

(assert (=> d!2209461 (=> res!2885330 e!4248007)))

(assert (=> d!2209461 (= res!2885330 (matchZipper!3154 lt!2540769 (t!382149 s!7408)))))

(declare-fun lt!2541078 () Unit!161924)

(assert (=> d!2209461 (= lt!2541078 (choose!54055 lt!2540769 lt!2540749 (t!382149 s!7408)))))

(assert (=> d!2209461 (= (lemmaZipperConcatMatchesSameAsBothZippers!1627 lt!2540769 lt!2540749 (t!382149 s!7408)) lt!2541078)))

(declare-fun b!7066045 () Bool)

(assert (=> b!7066045 (= e!4248007 (matchZipper!3154 lt!2540749 (t!382149 s!7408)))))

(assert (= (and d!2209461 (not res!2885330)) b!7066045))

(declare-fun m!7789516 () Bool)

(assert (=> d!2209461 m!7789516))

(assert (=> d!2209461 m!7788934))

(declare-fun m!7789518 () Bool)

(assert (=> d!2209461 m!7789518))

(assert (=> b!7066045 m!7788814))

(assert (=> b!7065719 d!2209461))

(declare-fun d!2209463 () Bool)

(declare-fun c!1317607 () Bool)

(assert (=> d!2209463 (= c!1317607 (isEmpty!39823 (t!382149 s!7408)))))

(declare-fun e!4248008 () Bool)

(assert (=> d!2209463 (= (matchZipper!3154 lt!2540769 (t!382149 s!7408)) e!4248008)))

(declare-fun b!7066046 () Bool)

(assert (=> b!7066046 (= e!4248008 (nullableZipper!2681 lt!2540769))))

(declare-fun b!7066047 () Bool)

(assert (=> b!7066047 (= e!4248008 (matchZipper!3154 (derivationStepZipper!3064 lt!2540769 (head!14387 (t!382149 s!7408))) (tail!13776 (t!382149 s!7408))))))

(assert (= (and d!2209463 c!1317607) b!7066046))

(assert (= (and d!2209463 (not c!1317607)) b!7066047))

(assert (=> d!2209463 m!7789370))

(declare-fun m!7789520 () Bool)

(assert (=> b!7066046 m!7789520))

(assert (=> b!7066047 m!7789374))

(assert (=> b!7066047 m!7789374))

(declare-fun m!7789522 () Bool)

(assert (=> b!7066047 m!7789522))

(assert (=> b!7066047 m!7789378))

(assert (=> b!7066047 m!7789522))

(assert (=> b!7066047 m!7789378))

(declare-fun m!7789524 () Bool)

(assert (=> b!7066047 m!7789524))

(assert (=> b!7065719 d!2209463))

(declare-fun d!2209465 () Bool)

(declare-fun c!1317608 () Bool)

(assert (=> d!2209465 (= c!1317608 (isEmpty!39823 (t!382149 s!7408)))))

(declare-fun e!4248009 () Bool)

(assert (=> d!2209465 (= (matchZipper!3154 lt!2540738 (t!382149 s!7408)) e!4248009)))

(declare-fun b!7066048 () Bool)

(assert (=> b!7066048 (= e!4248009 (nullableZipper!2681 lt!2540738))))

(declare-fun b!7066049 () Bool)

(assert (=> b!7066049 (= e!4248009 (matchZipper!3154 (derivationStepZipper!3064 lt!2540738 (head!14387 (t!382149 s!7408))) (tail!13776 (t!382149 s!7408))))))

(assert (= (and d!2209465 c!1317608) b!7066048))

(assert (= (and d!2209465 (not c!1317608)) b!7066049))

(assert (=> d!2209465 m!7789370))

(declare-fun m!7789526 () Bool)

(assert (=> b!7066048 m!7789526))

(assert (=> b!7066049 m!7789374))

(assert (=> b!7066049 m!7789374))

(declare-fun m!7789528 () Bool)

(assert (=> b!7066049 m!7789528))

(assert (=> b!7066049 m!7789378))

(assert (=> b!7066049 m!7789528))

(assert (=> b!7066049 m!7789378))

(declare-fun m!7789530 () Bool)

(assert (=> b!7066049 m!7789530))

(assert (=> b!7065719 d!2209465))

(declare-fun b!7066052 () Bool)

(declare-fun res!2885332 () Bool)

(declare-fun e!4248011 () Bool)

(assert (=> b!7066052 (=> (not res!2885332) (not e!4248011))))

(declare-fun lt!2541079 () List!68369)

(assert (=> b!7066052 (= res!2885332 (= (size!41187 lt!2541079) (+ (size!41187 (exprs!7110 lt!2540768)) (size!41187 (exprs!7110 ct2!306)))))))

(declare-fun d!2209467 () Bool)

(assert (=> d!2209467 e!4248011))

(declare-fun res!2885331 () Bool)

(assert (=> d!2209467 (=> (not res!2885331) (not e!4248011))))

(assert (=> d!2209467 (= res!2885331 (= (content!13745 lt!2541079) (set.union (content!13745 (exprs!7110 lt!2540768)) (content!13745 (exprs!7110 ct2!306)))))))

(declare-fun e!4248010 () List!68369)

(assert (=> d!2209467 (= lt!2541079 e!4248010)))

(declare-fun c!1317609 () Bool)

(assert (=> d!2209467 (= c!1317609 (is-Nil!68245 (exprs!7110 lt!2540768)))))

(assert (=> d!2209467 (= (++!15725 (exprs!7110 lt!2540768) (exprs!7110 ct2!306)) lt!2541079)))

(declare-fun b!7066050 () Bool)

(assert (=> b!7066050 (= e!4248010 (exprs!7110 ct2!306))))

(declare-fun b!7066053 () Bool)

(assert (=> b!7066053 (= e!4248011 (or (not (= (exprs!7110 ct2!306) Nil!68245)) (= lt!2541079 (exprs!7110 lt!2540768))))))

(declare-fun b!7066051 () Bool)

(assert (=> b!7066051 (= e!4248010 (Cons!68245 (h!74693 (exprs!7110 lt!2540768)) (++!15725 (t!382150 (exprs!7110 lt!2540768)) (exprs!7110 ct2!306))))))

(assert (= (and d!2209467 c!1317609) b!7066050))

(assert (= (and d!2209467 (not c!1317609)) b!7066051))

(assert (= (and d!2209467 res!2885331) b!7066052))

(assert (= (and b!7066052 res!2885332) b!7066053))

(declare-fun m!7789532 () Bool)

(assert (=> b!7066052 m!7789532))

(declare-fun m!7789534 () Bool)

(assert (=> b!7066052 m!7789534))

(assert (=> b!7066052 m!7789164))

(declare-fun m!7789536 () Bool)

(assert (=> d!2209467 m!7789536))

(declare-fun m!7789538 () Bool)

(assert (=> d!2209467 m!7789538))

(assert (=> d!2209467 m!7789170))

(declare-fun m!7789540 () Bool)

(assert (=> b!7066051 m!7789540))

(assert (=> b!7065701 d!2209467))

(assert (=> b!7065701 d!2209359))

(declare-fun d!2209469 () Bool)

(declare-fun e!4248014 () Bool)

(assert (=> d!2209469 e!4248014))

(declare-fun res!2885335 () Bool)

(assert (=> d!2209469 (=> (not res!2885335) (not e!4248014))))

(declare-fun lt!2541082 () Context!13220)

(assert (=> d!2209469 (= res!2885335 (= lt!2540732 (dynLambda!27726 lambda!423688 lt!2541082)))))

(declare-fun choose!54056 ((Set Context!13220) Int Context!13220) Context!13220)

(assert (=> d!2209469 (= lt!2541082 (choose!54056 z1!570 lambda!423688 lt!2540732))))

(assert (=> d!2209469 (set.member lt!2540732 (map!15954 z1!570 lambda!423688))))

(assert (=> d!2209469 (= (mapPost2!443 z1!570 lambda!423688 lt!2540732) lt!2541082)))

(declare-fun b!7066057 () Bool)

(assert (=> b!7066057 (= e!4248014 (set.member lt!2541082 z1!570))))

(assert (= (and d!2209469 res!2885335) b!7066057))

(declare-fun b_lambda!269597 () Bool)

(assert (=> (not b_lambda!269597) (not d!2209469)))

(declare-fun m!7789542 () Bool)

(assert (=> d!2209469 m!7789542))

(declare-fun m!7789544 () Bool)

(assert (=> d!2209469 m!7789544))

(declare-fun m!7789546 () Bool)

(assert (=> d!2209469 m!7789546))

(declare-fun m!7789548 () Bool)

(assert (=> d!2209469 m!7789548))

(declare-fun m!7789550 () Bool)

(assert (=> b!7066057 m!7789550))

(assert (=> b!7065701 d!2209469))

(declare-fun b!7066062 () Bool)

(declare-fun e!4248017 () Bool)

(declare-fun tp!1941545 () Bool)

(declare-fun tp!1941546 () Bool)

(assert (=> b!7066062 (= e!4248017 (and tp!1941545 tp!1941546))))

(assert (=> b!7065709 (= tp!1941528 e!4248017)))

(assert (= (and b!7065709 (is-Cons!68245 (exprs!7110 ct2!306))) b!7066062))

(declare-fun condSetEmpty!50106 () Bool)

(assert (=> setNonEmpty!50100 (= condSetEmpty!50106 (= setRest!50100 (as set.empty (Set Context!13220))))))

(declare-fun setRes!50106 () Bool)

(assert (=> setNonEmpty!50100 (= tp!1941525 setRes!50106)))

(declare-fun setIsEmpty!50106 () Bool)

(assert (=> setIsEmpty!50106 setRes!50106))

(declare-fun tp!1941551 () Bool)

(declare-fun setElem!50106 () Context!13220)

(declare-fun e!4248020 () Bool)

(declare-fun setNonEmpty!50106 () Bool)

(assert (=> setNonEmpty!50106 (= setRes!50106 (and tp!1941551 (inv!86895 setElem!50106) e!4248020))))

(declare-fun setRest!50106 () (Set Context!13220))

(assert (=> setNonEmpty!50106 (= setRest!50100 (set.union (set.insert setElem!50106 (as set.empty (Set Context!13220))) setRest!50106))))

(declare-fun b!7066067 () Bool)

(declare-fun tp!1941552 () Bool)

(assert (=> b!7066067 (= e!4248020 tp!1941552)))

(assert (= (and setNonEmpty!50100 condSetEmpty!50106) setIsEmpty!50106))

(assert (= (and setNonEmpty!50100 (not condSetEmpty!50106)) setNonEmpty!50106))

(assert (= setNonEmpty!50106 b!7066067))

(declare-fun m!7789552 () Bool)

(assert (=> setNonEmpty!50106 m!7789552))

(declare-fun b!7066068 () Bool)

(declare-fun e!4248021 () Bool)

(declare-fun tp!1941553 () Bool)

(declare-fun tp!1941554 () Bool)

(assert (=> b!7066068 (= e!4248021 (and tp!1941553 tp!1941554))))

(assert (=> b!7065725 (= tp!1941527 e!4248021)))

(assert (= (and b!7065725 (is-Cons!68245 (exprs!7110 setElem!50100))) b!7066068))

(declare-fun b!7066073 () Bool)

(declare-fun e!4248024 () Bool)

(declare-fun tp!1941557 () Bool)

(assert (=> b!7066073 (= e!4248024 (and tp_is_empty!44453 tp!1941557))))

(assert (=> b!7065712 (= tp!1941526 e!4248024)))

(assert (= (and b!7065712 (is-Cons!68244 (t!382149 s!7408))) b!7066073))

(declare-fun b_lambda!269599 () Bool)

(assert (= b_lambda!269589 (or b!7065715 b_lambda!269599)))

(declare-fun bs!1879768 () Bool)

(declare-fun d!2209471 () Bool)

(assert (= bs!1879768 (and d!2209471 b!7065715)))

(assert (=> bs!1879768 (= (dynLambda!27725 lambda!423690 lt!2540739) (derivationStepZipperUp!2198 lt!2540739 (h!74692 s!7408)))))

(assert (=> bs!1879768 m!7788824))

(assert (=> d!2209363 d!2209471))

(declare-fun b_lambda!269601 () Bool)

(assert (= b_lambda!269597 (or b!7065701 b_lambda!269601)))

(declare-fun bs!1879769 () Bool)

(declare-fun d!2209473 () Bool)

(assert (= bs!1879769 (and d!2209473 b!7065701)))

(declare-fun lt!2541083 () Unit!161924)

(assert (=> bs!1879769 (= lt!2541083 (lemmaConcatPreservesForall!925 (exprs!7110 lt!2541082) (exprs!7110 ct2!306) lambda!423689))))

(assert (=> bs!1879769 (= (dynLambda!27726 lambda!423688 lt!2541082) (Context!13221 (++!15725 (exprs!7110 lt!2541082) (exprs!7110 ct2!306))))))

(declare-fun m!7789554 () Bool)

(assert (=> bs!1879769 m!7789554))

(declare-fun m!7789556 () Bool)

(assert (=> bs!1879769 m!7789556))

(assert (=> d!2209469 d!2209473))

(declare-fun b_lambda!269603 () Bool)

(assert (= b_lambda!269593 (or b!7065715 b_lambda!269603)))

(declare-fun bs!1879770 () Bool)

(declare-fun d!2209475 () Bool)

(assert (= bs!1879770 (and d!2209475 b!7065715)))

(assert (=> bs!1879770 (= (dynLambda!27725 lambda!423690 lt!2540768) (derivationStepZipperUp!2198 lt!2540768 (h!74692 s!7408)))))

(assert (=> bs!1879770 m!7788902))

(assert (=> d!2209439 d!2209475))

(declare-fun b_lambda!269605 () Bool)

(assert (= b_lambda!269585 (or b!7065701 b_lambda!269605)))

(declare-fun bs!1879771 () Bool)

(declare-fun d!2209477 () Bool)

(assert (= bs!1879771 (and d!2209477 b!7065701)))

(declare-fun lt!2541084 () Unit!161924)

(assert (=> bs!1879771 (= lt!2541084 (lemmaConcatPreservesForall!925 (exprs!7110 lt!2540775) (exprs!7110 ct2!306) lambda!423689))))

(assert (=> bs!1879771 (= (dynLambda!27726 lambda!423688 lt!2540775) (Context!13221 (++!15725 (exprs!7110 lt!2540775) (exprs!7110 ct2!306))))))

(declare-fun m!7789558 () Bool)

(assert (=> bs!1879771 m!7789558))

(declare-fun m!7789560 () Bool)

(assert (=> bs!1879771 m!7789560))

(assert (=> d!2209343 d!2209477))

(declare-fun b_lambda!269607 () Bool)

(assert (= b_lambda!269595 (or b!7065702 b_lambda!269607)))

(declare-fun bs!1879772 () Bool)

(declare-fun d!2209479 () Bool)

(assert (= bs!1879772 (and d!2209479 b!7065702)))

(declare-fun nullableContext!113 (Context!13220) Bool)

(assert (=> bs!1879772 (= (dynLambda!27728 lambda!423691 lt!2541074) (nullableContext!113 lt!2541074))))

(declare-fun m!7789562 () Bool)

(assert (=> bs!1879772 m!7789562))

(assert (=> d!2209451 d!2209479))

(declare-fun b_lambda!269609 () Bool)

(assert (= b_lambda!269591 (or b!7065714 b_lambda!269609)))

(declare-fun bs!1879773 () Bool)

(declare-fun d!2209481 () Bool)

(assert (= bs!1879773 (and d!2209481 b!7065714)))

(assert (=> bs!1879773 (= (dynLambda!27728 lambda!423687 lt!2541043) (matchZipper!3154 (set.insert lt!2541043 (as set.empty (Set Context!13220))) s!7408))))

(declare-fun m!7789564 () Bool)

(assert (=> bs!1879773 m!7789564))

(assert (=> bs!1879773 m!7789564))

(declare-fun m!7789566 () Bool)

(assert (=> bs!1879773 m!7789566))

(assert (=> d!2209383 d!2209481))

(declare-fun b_lambda!269611 () Bool)

(assert (= b_lambda!269583 (or b!7065715 b_lambda!269611)))

(declare-fun bs!1879774 () Bool)

(declare-fun d!2209483 () Bool)

(assert (= bs!1879774 (and d!2209483 b!7065715)))

(assert (=> bs!1879774 (= (dynLambda!27725 lambda!423690 lt!2540775) (derivationStepZipperUp!2198 lt!2540775 (h!74692 s!7408)))))

(assert (=> bs!1879774 m!7788912))

(assert (=> d!2209333 d!2209483))

(declare-fun b_lambda!269613 () Bool)

(assert (= b_lambda!269587 (or b!7065715 b_lambda!269613)))

(declare-fun bs!1879775 () Bool)

(declare-fun d!2209485 () Bool)

(assert (= bs!1879775 (and d!2209485 b!7065715)))

(assert (=> bs!1879775 (= (dynLambda!27725 lambda!423690 lt!2540783) (derivationStepZipperUp!2198 lt!2540783 (h!74692 s!7408)))))

(assert (=> bs!1879775 m!7788858))

(assert (=> d!2209351 d!2209485))

(push 1)

(assert (not b!7066051))

(assert (not b!7065971))

(assert (not d!2209415))

(assert (not bm!642123))

(assert (not b!7065905))

(assert (not d!2209385))

(assert (not b_lambda!269605))

(assert (not d!2209425))

(assert (not b!7065935))

(assert (not b!7066016))

(assert (not d!2209379))

(assert (not b_lambda!269599))

(assert (not d!2209403))

(assert (not b!7065915))

(assert (not d!2209451))

(assert (not b!7066036))

(assert (not b!7065937))

(assert (not b_lambda!269603))

(assert (not d!2209409))

(assert (not bm!642117))

(assert (not bm!642131))

(assert (not d!2209391))

(assert (not b!7066038))

(assert (not d!2209465))

(assert (not d!2209429))

(assert (not b!7066062))

(assert (not d!2209371))

(assert (not b!7065909))

(assert (not d!2209389))

(assert (not bm!642125))

(assert (not d!2209437))

(assert (not bs!1879772))

(assert (not b!7066073))

(assert (not b!7065904))

(assert (not b!7065972))

(assert (not b!7066020))

(assert (not d!2209447))

(assert (not b!7065978))

(assert (not d!2209423))

(assert (not b!7065880))

(assert (not bm!642115))

(assert (not d!2209375))

(assert (not d!2209359))

(assert (not b!7066001))

(assert (not b!7065959))

(assert (not b!7066067))

(assert (not d!2209417))

(assert (not d!2209363))

(assert (not d!2209461))

(assert (not b!7065919))

(assert (not b!7065892))

(assert (not b_lambda!269607))

(assert (not bm!642126))

(assert (not b!7065934))

(assert (not d!2209413))

(assert (not b!7066047))

(assert (not b!7065866))

(assert (not b!7065878))

(assert (not b!7066014))

(assert (not b!7065926))

(assert (not d!2209467))

(assert (not b!7065966))

(assert (not bm!642128))

(assert (not d!2209431))

(assert (not b!7066046))

(assert (not b!7066044))

(assert (not d!2209459))

(assert (not d!2209433))

(assert (not d!2209387))

(assert (not b!7065980))

(assert (not b!7066023))

(assert (not b!7066052))

(assert (not b!7065907))

(assert (not b!7065991))

(assert (not b!7065995))

(assert (not b!7065968))

(assert (not b!7065903))

(assert (not b!7066040))

(assert (not b!7065961))

(assert (not b!7066049))

(assert (not b!7065979))

(assert (not d!2209355))

(assert (not b!7066007))

(assert (not d!2209361))

(assert (not d!2209427))

(assert (not bs!1879769))

(assert (not d!2209339))

(assert (not b!7065891))

(assert (not d!2209373))

(assert (not bs!1879770))

(assert (not d!2209435))

(assert (not b!7065969))

(assert (not b!7066015))

(assert (not bs!1879768))

(assert tp_is_empty!44453)

(assert (not d!2209449))

(assert (not d!2209455))

(assert (not b!7065963))

(assert (not b!7066048))

(assert (not b!7066045))

(assert (not bm!642124))

(assert (not d!2209407))

(assert (not b!7066018))

(assert (not b!7065939))

(assert (not bm!642114))

(assert (not b!7065962))

(assert (not d!2209349))

(assert (not d!2209357))

(assert (not b!7066025))

(assert (not d!2209463))

(assert (not d!2209323))

(assert (not d!2209347))

(assert (not b!7065970))

(assert (not d!2209397))

(assert (not d!2209453))

(assert (not b!7065994))

(assert (not b!7066017))

(assert (not b!7066043))

(assert (not b!7065960))

(assert (not d!2209411))

(assert (not d!2209369))

(assert (not d!2209327))

(assert (not setNonEmpty!50106))

(assert (not d!2209399))

(assert (not b_lambda!269613))

(assert (not d!2209469))

(assert (not b!7065997))

(assert (not b!7066024))

(assert (not bs!1879773))

(assert (not d!2209377))

(assert (not b!7065996))

(assert (not b_lambda!269601))

(assert (not b!7065998))

(assert (not d!2209343))

(assert (not d!2209353))

(assert (not b!7066068))

(assert (not d!2209335))

(assert (not d!2209457))

(assert (not b_lambda!269611))

(assert (not bs!1879775))

(assert (not b!7065924))

(assert (not b!7066005))

(assert (not d!2209439))

(assert (not bm!642122))

(assert (not b!7066000))

(assert (not d!2209351))

(assert (not d!2209333))

(assert (not b!7065999))

(assert (not bs!1879771))

(assert (not d!2209383))

(assert (not d!2209381))

(assert (not b!7066019))

(assert (not b_lambda!269609))

(assert (not b!7066002))

(assert (not b!7065992))

(assert (not d!2209367))

(assert (not bs!1879774))

(assert (not b!7066008))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

