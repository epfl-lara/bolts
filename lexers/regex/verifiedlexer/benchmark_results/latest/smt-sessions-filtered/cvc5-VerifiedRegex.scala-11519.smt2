; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!631456 () Bool)

(assert start!631456)

(declare-fun b!6373814 () Bool)

(assert (=> b!6373814 true))

(assert (=> b!6373814 true))

(declare-fun lambda!351337 () Int)

(declare-fun lambda!351336 () Int)

(assert (=> b!6373814 (not (= lambda!351337 lambda!351336))))

(assert (=> b!6373814 true))

(assert (=> b!6373814 true))

(declare-fun b!6373798 () Bool)

(assert (=> b!6373798 true))

(declare-fun b!6373796 () Bool)

(declare-fun res!2621942 () Bool)

(declare-fun e!3869558 () Bool)

(assert (=> b!6373796 (=> (not res!2621942) (not e!3869558))))

(declare-datatypes ((C!32838 0))(
  ( (C!32839 (val!26121 Int)) )
))
(declare-datatypes ((Regex!16284 0))(
  ( (ElementMatch!16284 (c!1160893 C!32838)) (Concat!25129 (regOne!33080 Regex!16284) (regTwo!33080 Regex!16284)) (EmptyExpr!16284) (Star!16284 (reg!16613 Regex!16284)) (EmptyLang!16284) (Union!16284 (regOne!33081 Regex!16284) (regTwo!33081 Regex!16284)) )
))
(declare-datatypes ((List!65151 0))(
  ( (Nil!65027) (Cons!65027 (h!71475 Regex!16284) (t!378753 List!65151)) )
))
(declare-datatypes ((Context!11336 0))(
  ( (Context!11337 (exprs!6168 List!65151)) )
))
(declare-fun z!1189 () (Set Context!11336))

(declare-datatypes ((List!65152 0))(
  ( (Nil!65028) (Cons!65028 (h!71476 Context!11336) (t!378754 List!65152)) )
))
(declare-fun zl!343 () List!65152)

(declare-fun toList!10068 ((Set Context!11336)) List!65152)

(assert (=> b!6373796 (= res!2621942 (= (toList!10068 z!1189) zl!343))))

(declare-fun e!3869559 () Bool)

(declare-fun e!3869555 () Bool)

(assert (=> b!6373798 (= e!3869559 e!3869555)))

(declare-fun res!2621944 () Bool)

(assert (=> b!6373798 (=> res!2621944 e!3869555)))

(declare-fun r!7292 () Regex!16284)

(declare-datatypes ((List!65153 0))(
  ( (Nil!65029) (Cons!65029 (h!71477 C!32838) (t!378755 List!65153)) )
))
(declare-fun s!2326 () List!65153)

(assert (=> b!6373798 (= res!2621944 (or (and (is-ElementMatch!16284 (regOne!33080 r!7292)) (= (c!1160893 (regOne!33080 r!7292)) (h!71477 s!2326))) (is-Union!16284 (regOne!33080 r!7292))))))

(declare-datatypes ((Unit!158467 0))(
  ( (Unit!158468) )
))
(declare-fun lt!2368690 () Unit!158467)

(declare-fun e!3869557 () Unit!158467)

(assert (=> b!6373798 (= lt!2368690 e!3869557)))

(declare-fun c!1160892 () Bool)

(declare-fun nullable!6277 (Regex!16284) Bool)

(assert (=> b!6373798 (= c!1160892 (nullable!6277 (h!71475 (exprs!6168 (h!71476 zl!343)))))))

(declare-fun lambda!351338 () Int)

(declare-fun flatMap!1789 ((Set Context!11336) Int) (Set Context!11336))

(declare-fun derivationStepZipperUp!1458 (Context!11336 C!32838) (Set Context!11336))

(assert (=> b!6373798 (= (flatMap!1789 z!1189 lambda!351338) (derivationStepZipperUp!1458 (h!71476 zl!343) (h!71477 s!2326)))))

(declare-fun lt!2368684 () Unit!158467)

(declare-fun lemmaFlatMapOnSingletonSet!1315 ((Set Context!11336) Context!11336 Int) Unit!158467)

(assert (=> b!6373798 (= lt!2368684 (lemmaFlatMapOnSingletonSet!1315 z!1189 (h!71476 zl!343) lambda!351338))))

(declare-fun lt!2368687 () (Set Context!11336))

(declare-fun lt!2368688 () Context!11336)

(assert (=> b!6373798 (= lt!2368687 (derivationStepZipperUp!1458 lt!2368688 (h!71477 s!2326)))))

(declare-fun lt!2368672 () (Set Context!11336))

(declare-fun derivationStepZipperDown!1532 (Regex!16284 Context!11336 C!32838) (Set Context!11336))

(assert (=> b!6373798 (= lt!2368672 (derivationStepZipperDown!1532 (h!71475 (exprs!6168 (h!71476 zl!343))) lt!2368688 (h!71477 s!2326)))))

(assert (=> b!6373798 (= lt!2368688 (Context!11337 (t!378753 (exprs!6168 (h!71476 zl!343)))))))

(declare-fun lt!2368674 () (Set Context!11336))

(assert (=> b!6373798 (= lt!2368674 (derivationStepZipperUp!1458 (Context!11337 (Cons!65027 (h!71475 (exprs!6168 (h!71476 zl!343))) (t!378753 (exprs!6168 (h!71476 zl!343))))) (h!71477 s!2326)))))

(declare-fun setRes!43467 () Bool)

(declare-fun setElem!43467 () Context!11336)

(declare-fun e!3869562 () Bool)

(declare-fun tp!1774367 () Bool)

(declare-fun setNonEmpty!43467 () Bool)

(declare-fun inv!83958 (Context!11336) Bool)

(assert (=> setNonEmpty!43467 (= setRes!43467 (and tp!1774367 (inv!83958 setElem!43467) e!3869562))))

(declare-fun setRest!43467 () (Set Context!11336))

(assert (=> setNonEmpty!43467 (= z!1189 (set.union (set.insert setElem!43467 (as set.empty (Set Context!11336))) setRest!43467))))

(declare-fun b!6373799 () Bool)

(declare-fun res!2621955 () Bool)

(assert (=> b!6373799 (=> res!2621955 e!3869559)))

(declare-fun isEmpty!37147 (List!65151) Bool)

(assert (=> b!6373799 (= res!2621955 (isEmpty!37147 (t!378753 (exprs!6168 (h!71476 zl!343)))))))

(declare-fun b!6373800 () Bool)

(declare-fun res!2621957 () Bool)

(declare-fun e!3869564 () Bool)

(assert (=> b!6373800 (=> res!2621957 e!3869564)))

(declare-fun isEmpty!37148 (List!65152) Bool)

(assert (=> b!6373800 (= res!2621957 (not (isEmpty!37148 (t!378754 zl!343))))))

(declare-fun b!6373801 () Bool)

(declare-fun res!2621947 () Bool)

(assert (=> b!6373801 (=> res!2621947 e!3869555)))

(assert (=> b!6373801 (= res!2621947 (or (is-Concat!25129 (regOne!33080 r!7292)) (not (is-Star!16284 (regOne!33080 r!7292)))))))

(declare-fun b!6373802 () Bool)

(declare-fun e!3869561 () Bool)

(declare-fun tp!1774365 () Bool)

(declare-fun tp!1774372 () Bool)

(assert (=> b!6373802 (= e!3869561 (and tp!1774365 tp!1774372))))

(declare-fun b!6373803 () Bool)

(declare-fun Unit!158469 () Unit!158467)

(assert (=> b!6373803 (= e!3869557 Unit!158469)))

(declare-fun lt!2368678 () Unit!158467)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1115 ((Set Context!11336) (Set Context!11336) List!65153) Unit!158467)

(assert (=> b!6373803 (= lt!2368678 (lemmaZipperConcatMatchesSameAsBothZippers!1115 lt!2368672 lt!2368687 (t!378755 s!2326)))))

(declare-fun res!2621946 () Bool)

(declare-fun matchZipper!2296 ((Set Context!11336) List!65153) Bool)

(assert (=> b!6373803 (= res!2621946 (matchZipper!2296 lt!2368672 (t!378755 s!2326)))))

(declare-fun e!3869549 () Bool)

(assert (=> b!6373803 (=> res!2621946 e!3869549)))

(assert (=> b!6373803 (= (matchZipper!2296 (set.union lt!2368672 lt!2368687) (t!378755 s!2326)) e!3869549)))

(declare-fun b!6373804 () Bool)

(declare-fun res!2621952 () Bool)

(assert (=> b!6373804 (=> res!2621952 e!3869564)))

(declare-fun generalisedConcat!1881 (List!65151) Regex!16284)

(assert (=> b!6373804 (= res!2621952 (not (= r!7292 (generalisedConcat!1881 (exprs!6168 (h!71476 zl!343))))))))

(declare-fun b!6373805 () Bool)

(declare-fun res!2621949 () Bool)

(assert (=> b!6373805 (=> res!2621949 e!3869564)))

(assert (=> b!6373805 (= res!2621949 (not (is-Cons!65027 (exprs!6168 (h!71476 zl!343)))))))

(declare-fun b!6373806 () Bool)

(declare-fun e!3869563 () Bool)

(declare-fun e!3869552 () Bool)

(declare-fun tp!1774364 () Bool)

(assert (=> b!6373806 (= e!3869563 (and (inv!83958 (h!71476 zl!343)) e!3869552 tp!1774364))))

(declare-fun b!6373807 () Bool)

(declare-fun res!2621941 () Bool)

(assert (=> b!6373807 (=> res!2621941 e!3869564)))

(declare-fun generalisedUnion!2128 (List!65151) Regex!16284)

(declare-fun unfocusZipperList!1705 (List!65152) List!65151)

(assert (=> b!6373807 (= res!2621941 (not (= r!7292 (generalisedUnion!2128 (unfocusZipperList!1705 zl!343)))))))

(declare-fun res!2621954 () Bool)

(assert (=> start!631456 (=> (not res!2621954) (not e!3869558))))

(declare-fun validRegex!8020 (Regex!16284) Bool)

(assert (=> start!631456 (= res!2621954 (validRegex!8020 r!7292))))

(assert (=> start!631456 e!3869558))

(assert (=> start!631456 e!3869561))

(declare-fun condSetEmpty!43467 () Bool)

(assert (=> start!631456 (= condSetEmpty!43467 (= z!1189 (as set.empty (Set Context!11336))))))

(assert (=> start!631456 setRes!43467))

(assert (=> start!631456 e!3869563))

(declare-fun e!3869553 () Bool)

(assert (=> start!631456 e!3869553))

(declare-fun b!6373797 () Bool)

(declare-fun e!3869550 () Bool)

(assert (=> b!6373797 (= e!3869550 (nullable!6277 (regOne!33080 (regOne!33080 r!7292))))))

(declare-fun b!6373808 () Bool)

(declare-fun e!3869560 () Bool)

(declare-fun lt!2368676 () Context!11336)

(assert (=> b!6373808 (= e!3869560 (inv!83958 lt!2368676))))

(declare-fun lt!2368682 () Context!11336)

(declare-fun lt!2368686 () (Set Context!11336))

(assert (=> b!6373808 (= (flatMap!1789 lt!2368686 lambda!351338) (derivationStepZipperUp!1458 lt!2368682 (h!71477 s!2326)))))

(declare-fun lt!2368693 () Unit!158467)

(assert (=> b!6373808 (= lt!2368693 (lemmaFlatMapOnSingletonSet!1315 lt!2368686 lt!2368682 lambda!351338))))

(declare-fun lt!2368671 () (Set Context!11336))

(assert (=> b!6373808 (= lt!2368671 (derivationStepZipperUp!1458 lt!2368676 (h!71477 s!2326)))))

(declare-fun lt!2368668 () (Set Context!11336))

(assert (=> b!6373808 (= lt!2368668 (derivationStepZipperUp!1458 lt!2368682 (h!71477 s!2326)))))

(assert (=> b!6373808 (= lt!2368686 (set.insert lt!2368682 (as set.empty (Set Context!11336))))))

(assert (=> b!6373808 (= lt!2368682 (Context!11337 (Cons!65027 (reg!16613 (regOne!33080 r!7292)) Nil!65027)))))

(declare-fun b!6373809 () Bool)

(declare-fun res!2621951 () Bool)

(assert (=> b!6373809 (=> res!2621951 e!3869560)))

(declare-fun lt!2368670 () Regex!16284)

(declare-fun lt!2368681 () Context!11336)

(declare-fun unfocusZipper!2026 (List!65152) Regex!16284)

(assert (=> b!6373809 (= res!2621951 (not (= (unfocusZipper!2026 (Cons!65028 lt!2368681 Nil!65028)) (Concat!25129 (reg!16613 (regOne!33080 r!7292)) lt!2368670))))))

(declare-fun b!6373810 () Bool)

(declare-fun tp!1774363 () Bool)

(assert (=> b!6373810 (= e!3869552 tp!1774363)))

(declare-fun b!6373811 () Bool)

(declare-fun e!3869556 () Bool)

(assert (=> b!6373811 (= e!3869556 e!3869560)))

(declare-fun res!2621950 () Bool)

(assert (=> b!6373811 (=> res!2621950 e!3869560)))

(assert (=> b!6373811 (= res!2621950 (not (= r!7292 lt!2368670)))))

(declare-fun lt!2368685 () Regex!16284)

(assert (=> b!6373811 (= lt!2368670 (Concat!25129 lt!2368685 (regTwo!33080 r!7292)))))

(declare-fun b!6373812 () Bool)

(declare-fun tp!1774370 () Bool)

(assert (=> b!6373812 (= e!3869562 tp!1774370)))

(declare-fun b!6373813 () Bool)

(declare-fun e!3869551 () Bool)

(assert (=> b!6373813 (= e!3869558 e!3869551)))

(declare-fun res!2621956 () Bool)

(assert (=> b!6373813 (=> (not res!2621956) (not e!3869551))))

(declare-fun lt!2368669 () Regex!16284)

(assert (=> b!6373813 (= res!2621956 (= r!7292 lt!2368669))))

(assert (=> b!6373813 (= lt!2368669 (unfocusZipper!2026 zl!343))))

(assert (=> b!6373814 (= e!3869564 e!3869559)))

(declare-fun res!2621948 () Bool)

(assert (=> b!6373814 (=> res!2621948 e!3869559)))

(declare-fun lt!2368683 () Bool)

(declare-fun lt!2368673 () Bool)

(assert (=> b!6373814 (= res!2621948 (or (not (= lt!2368683 lt!2368673)) (is-Nil!65029 s!2326)))))

(declare-fun Exists!3354 (Int) Bool)

(assert (=> b!6373814 (= (Exists!3354 lambda!351336) (Exists!3354 lambda!351337))))

(declare-fun lt!2368667 () Unit!158467)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1891 (Regex!16284 Regex!16284 List!65153) Unit!158467)

(assert (=> b!6373814 (= lt!2368667 (lemmaExistCutMatchRandMatchRSpecEquivalent!1891 (regOne!33080 r!7292) (regTwo!33080 r!7292) s!2326))))

(assert (=> b!6373814 (= lt!2368673 (Exists!3354 lambda!351336))))

(declare-datatypes ((tuple2!66526 0))(
  ( (tuple2!66527 (_1!36566 List!65153) (_2!36566 List!65153)) )
))
(declare-datatypes ((Option!16175 0))(
  ( (None!16174) (Some!16174 (v!52343 tuple2!66526)) )
))
(declare-fun isDefined!12878 (Option!16175) Bool)

(declare-fun findConcatSeparation!2589 (Regex!16284 Regex!16284 List!65153 List!65153 List!65153) Option!16175)

(assert (=> b!6373814 (= lt!2368673 (isDefined!12878 (findConcatSeparation!2589 (regOne!33080 r!7292) (regTwo!33080 r!7292) Nil!65029 s!2326 s!2326)))))

(declare-fun lt!2368677 () Unit!158467)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2353 (Regex!16284 Regex!16284 List!65153) Unit!158467)

(assert (=> b!6373814 (= lt!2368677 (lemmaFindConcatSeparationEquivalentToExists!2353 (regOne!33080 r!7292) (regTwo!33080 r!7292) s!2326))))

(declare-fun setIsEmpty!43467 () Bool)

(assert (=> setIsEmpty!43467 setRes!43467))

(declare-fun b!6373815 () Bool)

(assert (=> b!6373815 (= e!3869549 (matchZipper!2296 lt!2368687 (t!378755 s!2326)))))

(declare-fun b!6373816 () Bool)

(declare-fun tp!1774369 () Bool)

(declare-fun tp!1774371 () Bool)

(assert (=> b!6373816 (= e!3869561 (and tp!1774369 tp!1774371))))

(declare-fun b!6373817 () Bool)

(declare-fun tp!1774366 () Bool)

(assert (=> b!6373817 (= e!3869561 tp!1774366)))

(declare-fun b!6373818 () Bool)

(declare-fun res!2621961 () Bool)

(assert (=> b!6373818 (=> res!2621961 e!3869564)))

(assert (=> b!6373818 (= res!2621961 (or (is-EmptyExpr!16284 r!7292) (is-EmptyLang!16284 r!7292) (is-ElementMatch!16284 r!7292) (is-Union!16284 r!7292) (not (is-Concat!25129 r!7292))))))

(declare-fun b!6373819 () Bool)

(declare-fun e!3869554 () Bool)

(assert (=> b!6373819 (= e!3869554 e!3869556)))

(declare-fun res!2621959 () Bool)

(assert (=> b!6373819 (=> res!2621959 e!3869556)))

(declare-fun lt!2368691 () (Set Context!11336))

(declare-fun lt!2368680 () (Set Context!11336))

(assert (=> b!6373819 (= res!2621959 (not (= lt!2368691 lt!2368680)))))

(declare-fun lt!2368679 () (Set Context!11336))

(assert (=> b!6373819 (= (flatMap!1789 lt!2368679 lambda!351338) (derivationStepZipperUp!1458 lt!2368681 (h!71477 s!2326)))))

(declare-fun lt!2368692 () Unit!158467)

(assert (=> b!6373819 (= lt!2368692 (lemmaFlatMapOnSingletonSet!1315 lt!2368679 lt!2368681 lambda!351338))))

(declare-fun lt!2368694 () (Set Context!11336))

(assert (=> b!6373819 (= lt!2368694 (derivationStepZipperUp!1458 lt!2368681 (h!71477 s!2326)))))

(declare-fun derivationStepZipper!2250 ((Set Context!11336) C!32838) (Set Context!11336))

(assert (=> b!6373819 (= lt!2368691 (derivationStepZipper!2250 lt!2368679 (h!71477 s!2326)))))

(assert (=> b!6373819 (= lt!2368679 (set.insert lt!2368681 (as set.empty (Set Context!11336))))))

(declare-fun lt!2368675 () List!65151)

(assert (=> b!6373819 (= lt!2368681 (Context!11337 (Cons!65027 (reg!16613 (regOne!33080 r!7292)) lt!2368675)))))

(declare-fun b!6373820 () Bool)

(declare-fun res!2621958 () Bool)

(assert (=> b!6373820 (=> res!2621958 e!3869556)))

(assert (=> b!6373820 (= res!2621958 (not (= lt!2368669 r!7292)))))

(declare-fun b!6373821 () Bool)

(declare-fun res!2621945 () Bool)

(assert (=> b!6373821 (=> res!2621945 e!3869556)))

(assert (=> b!6373821 (= res!2621945 (not (= (matchZipper!2296 lt!2368679 s!2326) (matchZipper!2296 lt!2368691 (t!378755 s!2326)))))))

(declare-fun b!6373822 () Bool)

(declare-fun tp_is_empty!41821 () Bool)

(assert (=> b!6373822 (= e!3869561 tp_is_empty!41821)))

(declare-fun b!6373823 () Bool)

(declare-fun res!2621960 () Bool)

(assert (=> b!6373823 (=> res!2621960 e!3869555)))

(assert (=> b!6373823 (= res!2621960 e!3869550)))

(declare-fun res!2621953 () Bool)

(assert (=> b!6373823 (=> (not res!2621953) (not e!3869550))))

(assert (=> b!6373823 (= res!2621953 (is-Concat!25129 (regOne!33080 r!7292)))))

(declare-fun b!6373824 () Bool)

(declare-fun tp!1774368 () Bool)

(assert (=> b!6373824 (= e!3869553 (and tp_is_empty!41821 tp!1774368))))

(declare-fun b!6373825 () Bool)

(assert (=> b!6373825 (= e!3869555 e!3869554)))

(declare-fun res!2621962 () Bool)

(assert (=> b!6373825 (=> res!2621962 e!3869554)))

(assert (=> b!6373825 (= res!2621962 (not (= lt!2368672 lt!2368680)))))

(assert (=> b!6373825 (= lt!2368680 (derivationStepZipperDown!1532 (reg!16613 (regOne!33080 r!7292)) lt!2368676 (h!71477 s!2326)))))

(assert (=> b!6373825 (= lt!2368676 (Context!11337 lt!2368675))))

(assert (=> b!6373825 (= lt!2368675 (Cons!65027 lt!2368685 (t!378753 (exprs!6168 (h!71476 zl!343)))))))

(assert (=> b!6373825 (= lt!2368685 (Star!16284 (reg!16613 (regOne!33080 r!7292))))))

(declare-fun b!6373826 () Bool)

(assert (=> b!6373826 (= e!3869551 (not e!3869564))))

(declare-fun res!2621943 () Bool)

(assert (=> b!6373826 (=> res!2621943 e!3869564)))

(assert (=> b!6373826 (= res!2621943 (not (is-Cons!65028 zl!343)))))

(declare-fun matchRSpec!3385 (Regex!16284 List!65153) Bool)

(assert (=> b!6373826 (= lt!2368683 (matchRSpec!3385 r!7292 s!2326))))

(declare-fun matchR!8467 (Regex!16284 List!65153) Bool)

(assert (=> b!6373826 (= lt!2368683 (matchR!8467 r!7292 s!2326))))

(declare-fun lt!2368689 () Unit!158467)

(declare-fun mainMatchTheorem!3385 (Regex!16284 List!65153) Unit!158467)

(assert (=> b!6373826 (= lt!2368689 (mainMatchTheorem!3385 r!7292 s!2326))))

(declare-fun b!6373827 () Bool)

(declare-fun Unit!158470 () Unit!158467)

(assert (=> b!6373827 (= e!3869557 Unit!158470)))

(assert (= (and start!631456 res!2621954) b!6373796))

(assert (= (and b!6373796 res!2621942) b!6373813))

(assert (= (and b!6373813 res!2621956) b!6373826))

(assert (= (and b!6373826 (not res!2621943)) b!6373800))

(assert (= (and b!6373800 (not res!2621957)) b!6373804))

(assert (= (and b!6373804 (not res!2621952)) b!6373805))

(assert (= (and b!6373805 (not res!2621949)) b!6373807))

(assert (= (and b!6373807 (not res!2621941)) b!6373818))

(assert (= (and b!6373818 (not res!2621961)) b!6373814))

(assert (= (and b!6373814 (not res!2621948)) b!6373799))

(assert (= (and b!6373799 (not res!2621955)) b!6373798))

(assert (= (and b!6373798 c!1160892) b!6373803))

(assert (= (and b!6373798 (not c!1160892)) b!6373827))

(assert (= (and b!6373803 (not res!2621946)) b!6373815))

(assert (= (and b!6373798 (not res!2621944)) b!6373823))

(assert (= (and b!6373823 res!2621953) b!6373797))

(assert (= (and b!6373823 (not res!2621960)) b!6373801))

(assert (= (and b!6373801 (not res!2621947)) b!6373825))

(assert (= (and b!6373825 (not res!2621962)) b!6373819))

(assert (= (and b!6373819 (not res!2621959)) b!6373821))

(assert (= (and b!6373821 (not res!2621945)) b!6373820))

(assert (= (and b!6373820 (not res!2621958)) b!6373811))

(assert (= (and b!6373811 (not res!2621950)) b!6373809))

(assert (= (and b!6373809 (not res!2621951)) b!6373808))

(assert (= (and start!631456 (is-ElementMatch!16284 r!7292)) b!6373822))

(assert (= (and start!631456 (is-Concat!25129 r!7292)) b!6373816))

(assert (= (and start!631456 (is-Star!16284 r!7292)) b!6373817))

(assert (= (and start!631456 (is-Union!16284 r!7292)) b!6373802))

(assert (= (and start!631456 condSetEmpty!43467) setIsEmpty!43467))

(assert (= (and start!631456 (not condSetEmpty!43467)) setNonEmpty!43467))

(assert (= setNonEmpty!43467 b!6373812))

(assert (= b!6373806 b!6373810))

(assert (= (and start!631456 (is-Cons!65028 zl!343)) b!6373806))

(assert (= (and start!631456 (is-Cons!65029 s!2326)) b!6373824))

(declare-fun m!7175900 () Bool)

(assert (=> b!6373803 m!7175900))

(declare-fun m!7175902 () Bool)

(assert (=> b!6373803 m!7175902))

(declare-fun m!7175904 () Bool)

(assert (=> b!6373803 m!7175904))

(declare-fun m!7175906 () Bool)

(assert (=> b!6373796 m!7175906))

(declare-fun m!7175908 () Bool)

(assert (=> b!6373826 m!7175908))

(declare-fun m!7175910 () Bool)

(assert (=> b!6373826 m!7175910))

(declare-fun m!7175912 () Bool)

(assert (=> b!6373826 m!7175912))

(declare-fun m!7175914 () Bool)

(assert (=> b!6373819 m!7175914))

(declare-fun m!7175916 () Bool)

(assert (=> b!6373819 m!7175916))

(declare-fun m!7175918 () Bool)

(assert (=> b!6373819 m!7175918))

(declare-fun m!7175920 () Bool)

(assert (=> b!6373819 m!7175920))

(declare-fun m!7175922 () Bool)

(assert (=> b!6373819 m!7175922))

(declare-fun m!7175924 () Bool)

(assert (=> b!6373809 m!7175924))

(declare-fun m!7175926 () Bool)

(assert (=> b!6373814 m!7175926))

(declare-fun m!7175928 () Bool)

(assert (=> b!6373814 m!7175928))

(declare-fun m!7175930 () Bool)

(assert (=> b!6373814 m!7175930))

(declare-fun m!7175932 () Bool)

(assert (=> b!6373814 m!7175932))

(declare-fun m!7175934 () Bool)

(assert (=> b!6373814 m!7175934))

(assert (=> b!6373814 m!7175926))

(assert (=> b!6373814 m!7175928))

(declare-fun m!7175936 () Bool)

(assert (=> b!6373814 m!7175936))

(declare-fun m!7175938 () Bool)

(assert (=> b!6373798 m!7175938))

(declare-fun m!7175940 () Bool)

(assert (=> b!6373798 m!7175940))

(declare-fun m!7175942 () Bool)

(assert (=> b!6373798 m!7175942))

(declare-fun m!7175944 () Bool)

(assert (=> b!6373798 m!7175944))

(declare-fun m!7175946 () Bool)

(assert (=> b!6373798 m!7175946))

(declare-fun m!7175948 () Bool)

(assert (=> b!6373798 m!7175948))

(declare-fun m!7175950 () Bool)

(assert (=> b!6373798 m!7175950))

(declare-fun m!7175952 () Bool)

(assert (=> b!6373815 m!7175952))

(declare-fun m!7175954 () Bool)

(assert (=> b!6373799 m!7175954))

(declare-fun m!7175956 () Bool)

(assert (=> b!6373808 m!7175956))

(declare-fun m!7175958 () Bool)

(assert (=> b!6373808 m!7175958))

(declare-fun m!7175960 () Bool)

(assert (=> b!6373808 m!7175960))

(declare-fun m!7175962 () Bool)

(assert (=> b!6373808 m!7175962))

(declare-fun m!7175964 () Bool)

(assert (=> b!6373808 m!7175964))

(declare-fun m!7175966 () Bool)

(assert (=> b!6373808 m!7175966))

(declare-fun m!7175968 () Bool)

(assert (=> b!6373807 m!7175968))

(assert (=> b!6373807 m!7175968))

(declare-fun m!7175970 () Bool)

(assert (=> b!6373807 m!7175970))

(declare-fun m!7175972 () Bool)

(assert (=> start!631456 m!7175972))

(declare-fun m!7175974 () Bool)

(assert (=> setNonEmpty!43467 m!7175974))

(declare-fun m!7175976 () Bool)

(assert (=> b!6373821 m!7175976))

(declare-fun m!7175978 () Bool)

(assert (=> b!6373821 m!7175978))

(declare-fun m!7175980 () Bool)

(assert (=> b!6373813 m!7175980))

(declare-fun m!7175982 () Bool)

(assert (=> b!6373825 m!7175982))

(declare-fun m!7175984 () Bool)

(assert (=> b!6373797 m!7175984))

(declare-fun m!7175986 () Bool)

(assert (=> b!6373800 m!7175986))

(declare-fun m!7175988 () Bool)

(assert (=> b!6373806 m!7175988))

(declare-fun m!7175990 () Bool)

(assert (=> b!6373804 m!7175990))

(push 1)

(assert (not start!631456))

(assert (not b!6373821))

(assert (not b!6373819))

(assert (not b!6373809))

(assert (not b!6373803))

(assert (not b!6373826))

(assert (not b!6373810))

(assert (not b!6373825))

(assert (not b!6373804))

(assert (not b!6373807))

(assert tp_is_empty!41821)

(assert (not b!6373824))

(assert (not b!6373812))

(assert (not setNonEmpty!43467))

(assert (not b!6373814))

(assert (not b!6373815))

(assert (not b!6373796))

(assert (not b!6373798))

(assert (not b!6373799))

(assert (not b!6373817))

(assert (not b!6373800))

(assert (not b!6373797))

(assert (not b!6373816))

(assert (not b!6373813))

(assert (not b!6373808))

(assert (not b!6373802))

(assert (not b!6373806))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1998972 () Bool)

(declare-fun lt!2368781 () Regex!16284)

(assert (=> d!1998972 (validRegex!8020 lt!2368781)))

(assert (=> d!1998972 (= lt!2368781 (generalisedUnion!2128 (unfocusZipperList!1705 zl!343)))))

(assert (=> d!1998972 (= (unfocusZipper!2026 zl!343) lt!2368781)))

(declare-fun bs!1596162 () Bool)

(assert (= bs!1596162 d!1998972))

(declare-fun m!7176084 () Bool)

(assert (=> bs!1596162 m!7176084))

(assert (=> bs!1596162 m!7175968))

(assert (=> bs!1596162 m!7175968))

(assert (=> bs!1596162 m!7175970))

(assert (=> b!6373813 d!1998972))

(declare-fun b!6373968 () Bool)

(declare-fun e!3869633 () Bool)

(assert (=> b!6373968 (= e!3869633 (isEmpty!37147 (t!378753 (exprs!6168 (h!71476 zl!343)))))))

(declare-fun b!6373969 () Bool)

(declare-fun e!3869632 () Bool)

(declare-fun e!3869634 () Bool)

(assert (=> b!6373969 (= e!3869632 e!3869634)))

(declare-fun c!1160916 () Bool)

(assert (=> b!6373969 (= c!1160916 (isEmpty!37147 (exprs!6168 (h!71476 zl!343))))))

(declare-fun b!6373970 () Bool)

(declare-fun e!3869631 () Regex!16284)

(declare-fun e!3869635 () Regex!16284)

(assert (=> b!6373970 (= e!3869631 e!3869635)))

(declare-fun c!1160913 () Bool)

(assert (=> b!6373970 (= c!1160913 (is-Cons!65027 (exprs!6168 (h!71476 zl!343))))))

(declare-fun b!6373971 () Bool)

(declare-fun e!3869636 () Bool)

(declare-fun lt!2368784 () Regex!16284)

(declare-fun head!13060 (List!65151) Regex!16284)

(assert (=> b!6373971 (= e!3869636 (= lt!2368784 (head!13060 (exprs!6168 (h!71476 zl!343)))))))

(declare-fun b!6373972 () Bool)

(assert (=> b!6373972 (= e!3869631 (h!71475 (exprs!6168 (h!71476 zl!343))))))

(declare-fun b!6373973 () Bool)

(assert (=> b!6373973 (= e!3869635 EmptyExpr!16284)))

(declare-fun b!6373974 () Bool)

(declare-fun isConcat!1209 (Regex!16284) Bool)

(assert (=> b!6373974 (= e!3869636 (isConcat!1209 lt!2368784))))

(declare-fun b!6373975 () Bool)

(declare-fun isEmptyExpr!1686 (Regex!16284) Bool)

(assert (=> b!6373975 (= e!3869634 (isEmptyExpr!1686 lt!2368784))))

(declare-fun b!6373976 () Bool)

(assert (=> b!6373976 (= e!3869635 (Concat!25129 (h!71475 (exprs!6168 (h!71476 zl!343))) (generalisedConcat!1881 (t!378753 (exprs!6168 (h!71476 zl!343))))))))

(declare-fun b!6373977 () Bool)

(assert (=> b!6373977 (= e!3869634 e!3869636)))

(declare-fun c!1160915 () Bool)

(declare-fun tail!12145 (List!65151) List!65151)

(assert (=> b!6373977 (= c!1160915 (isEmpty!37147 (tail!12145 (exprs!6168 (h!71476 zl!343)))))))

(declare-fun d!1998974 () Bool)

(assert (=> d!1998974 e!3869632))

(declare-fun res!2622045 () Bool)

(assert (=> d!1998974 (=> (not res!2622045) (not e!3869632))))

(assert (=> d!1998974 (= res!2622045 (validRegex!8020 lt!2368784))))

(assert (=> d!1998974 (= lt!2368784 e!3869631)))

(declare-fun c!1160914 () Bool)

(assert (=> d!1998974 (= c!1160914 e!3869633)))

(declare-fun res!2622046 () Bool)

(assert (=> d!1998974 (=> (not res!2622046) (not e!3869633))))

(assert (=> d!1998974 (= res!2622046 (is-Cons!65027 (exprs!6168 (h!71476 zl!343))))))

(declare-fun lambda!351356 () Int)

(declare-fun forall!15462 (List!65151 Int) Bool)

(assert (=> d!1998974 (forall!15462 (exprs!6168 (h!71476 zl!343)) lambda!351356)))

(assert (=> d!1998974 (= (generalisedConcat!1881 (exprs!6168 (h!71476 zl!343))) lt!2368784)))

(assert (= (and d!1998974 res!2622046) b!6373968))

(assert (= (and d!1998974 c!1160914) b!6373972))

(assert (= (and d!1998974 (not c!1160914)) b!6373970))

(assert (= (and b!6373970 c!1160913) b!6373976))

(assert (= (and b!6373970 (not c!1160913)) b!6373973))

(assert (= (and d!1998974 res!2622045) b!6373969))

(assert (= (and b!6373969 c!1160916) b!6373975))

(assert (= (and b!6373969 (not c!1160916)) b!6373977))

(assert (= (and b!6373977 c!1160915) b!6373971))

(assert (= (and b!6373977 (not c!1160915)) b!6373974))

(declare-fun m!7176086 () Bool)

(assert (=> b!6373971 m!7176086))

(declare-fun m!7176088 () Bool)

(assert (=> d!1998974 m!7176088))

(declare-fun m!7176090 () Bool)

(assert (=> d!1998974 m!7176090))

(declare-fun m!7176092 () Bool)

(assert (=> b!6373975 m!7176092))

(assert (=> b!6373968 m!7175954))

(declare-fun m!7176094 () Bool)

(assert (=> b!6373969 m!7176094))

(declare-fun m!7176096 () Bool)

(assert (=> b!6373974 m!7176096))

(declare-fun m!7176098 () Bool)

(assert (=> b!6373977 m!7176098))

(assert (=> b!6373977 m!7176098))

(declare-fun m!7176100 () Bool)

(assert (=> b!6373977 m!7176100))

(declare-fun m!7176102 () Bool)

(assert (=> b!6373976 m!7176102))

(assert (=> b!6373804 d!1998974))

(declare-fun d!1998976 () Bool)

(declare-fun e!3869639 () Bool)

(assert (=> d!1998976 (= (matchZipper!2296 (set.union lt!2368672 lt!2368687) (t!378755 s!2326)) e!3869639)))

(declare-fun res!2622049 () Bool)

(assert (=> d!1998976 (=> res!2622049 e!3869639)))

(assert (=> d!1998976 (= res!2622049 (matchZipper!2296 lt!2368672 (t!378755 s!2326)))))

(declare-fun lt!2368787 () Unit!158467)

(declare-fun choose!47371 ((Set Context!11336) (Set Context!11336) List!65153) Unit!158467)

(assert (=> d!1998976 (= lt!2368787 (choose!47371 lt!2368672 lt!2368687 (t!378755 s!2326)))))

(assert (=> d!1998976 (= (lemmaZipperConcatMatchesSameAsBothZippers!1115 lt!2368672 lt!2368687 (t!378755 s!2326)) lt!2368787)))

(declare-fun b!6373980 () Bool)

(assert (=> b!6373980 (= e!3869639 (matchZipper!2296 lt!2368687 (t!378755 s!2326)))))

(assert (= (and d!1998976 (not res!2622049)) b!6373980))

(assert (=> d!1998976 m!7175904))

(assert (=> d!1998976 m!7175902))

(declare-fun m!7176104 () Bool)

(assert (=> d!1998976 m!7176104))

(assert (=> b!6373980 m!7175952))

(assert (=> b!6373803 d!1998976))

(declare-fun d!1998978 () Bool)

(declare-fun c!1160919 () Bool)

(declare-fun isEmpty!37151 (List!65153) Bool)

(assert (=> d!1998978 (= c!1160919 (isEmpty!37151 (t!378755 s!2326)))))

(declare-fun e!3869642 () Bool)

(assert (=> d!1998978 (= (matchZipper!2296 lt!2368672 (t!378755 s!2326)) e!3869642)))

(declare-fun b!6373985 () Bool)

(declare-fun nullableZipper!2050 ((Set Context!11336)) Bool)

(assert (=> b!6373985 (= e!3869642 (nullableZipper!2050 lt!2368672))))

(declare-fun b!6373986 () Bool)

(declare-fun head!13061 (List!65153) C!32838)

(declare-fun tail!12146 (List!65153) List!65153)

(assert (=> b!6373986 (= e!3869642 (matchZipper!2296 (derivationStepZipper!2250 lt!2368672 (head!13061 (t!378755 s!2326))) (tail!12146 (t!378755 s!2326))))))

(assert (= (and d!1998978 c!1160919) b!6373985))

(assert (= (and d!1998978 (not c!1160919)) b!6373986))

(declare-fun m!7176106 () Bool)

(assert (=> d!1998978 m!7176106))

(declare-fun m!7176108 () Bool)

(assert (=> b!6373985 m!7176108))

(declare-fun m!7176110 () Bool)

(assert (=> b!6373986 m!7176110))

(assert (=> b!6373986 m!7176110))

(declare-fun m!7176112 () Bool)

(assert (=> b!6373986 m!7176112))

(declare-fun m!7176114 () Bool)

(assert (=> b!6373986 m!7176114))

(assert (=> b!6373986 m!7176112))

(assert (=> b!6373986 m!7176114))

(declare-fun m!7176116 () Bool)

(assert (=> b!6373986 m!7176116))

(assert (=> b!6373803 d!1998978))

(declare-fun d!1998980 () Bool)

(declare-fun c!1160920 () Bool)

(assert (=> d!1998980 (= c!1160920 (isEmpty!37151 (t!378755 s!2326)))))

(declare-fun e!3869643 () Bool)

(assert (=> d!1998980 (= (matchZipper!2296 (set.union lt!2368672 lt!2368687) (t!378755 s!2326)) e!3869643)))

(declare-fun b!6373987 () Bool)

(assert (=> b!6373987 (= e!3869643 (nullableZipper!2050 (set.union lt!2368672 lt!2368687)))))

(declare-fun b!6373988 () Bool)

(assert (=> b!6373988 (= e!3869643 (matchZipper!2296 (derivationStepZipper!2250 (set.union lt!2368672 lt!2368687) (head!13061 (t!378755 s!2326))) (tail!12146 (t!378755 s!2326))))))

(assert (= (and d!1998980 c!1160920) b!6373987))

(assert (= (and d!1998980 (not c!1160920)) b!6373988))

(assert (=> d!1998980 m!7176106))

(declare-fun m!7176118 () Bool)

(assert (=> b!6373987 m!7176118))

(assert (=> b!6373988 m!7176110))

(assert (=> b!6373988 m!7176110))

(declare-fun m!7176120 () Bool)

(assert (=> b!6373988 m!7176120))

(assert (=> b!6373988 m!7176114))

(assert (=> b!6373988 m!7176120))

(assert (=> b!6373988 m!7176114))

(declare-fun m!7176122 () Bool)

(assert (=> b!6373988 m!7176122))

(assert (=> b!6373803 d!1998980))

(declare-fun b!6374007 () Bool)

(declare-fun res!2622062 () Bool)

(declare-fun e!3869654 () Bool)

(assert (=> b!6374007 (=> (not res!2622062) (not e!3869654))))

(declare-fun lt!2368795 () Option!16175)

(declare-fun get!22511 (Option!16175) tuple2!66526)

(assert (=> b!6374007 (= res!2622062 (matchR!8467 (regTwo!33080 r!7292) (_2!36566 (get!22511 lt!2368795))))))

(declare-fun b!6374009 () Bool)

(declare-fun lt!2368796 () Unit!158467)

(declare-fun lt!2368794 () Unit!158467)

(assert (=> b!6374009 (= lt!2368796 lt!2368794)))

(declare-fun ++!14353 (List!65153 List!65153) List!65153)

(assert (=> b!6374009 (= (++!14353 (++!14353 Nil!65029 (Cons!65029 (h!71477 s!2326) Nil!65029)) (t!378755 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2448 (List!65153 C!32838 List!65153 List!65153) Unit!158467)

(assert (=> b!6374009 (= lt!2368794 (lemmaMoveElementToOtherListKeepsConcatEq!2448 Nil!65029 (h!71477 s!2326) (t!378755 s!2326) s!2326))))

(declare-fun e!3869655 () Option!16175)

(assert (=> b!6374009 (= e!3869655 (findConcatSeparation!2589 (regOne!33080 r!7292) (regTwo!33080 r!7292) (++!14353 Nil!65029 (Cons!65029 (h!71477 s!2326) Nil!65029)) (t!378755 s!2326) s!2326))))

(declare-fun b!6374010 () Bool)

(assert (=> b!6374010 (= e!3869654 (= (++!14353 (_1!36566 (get!22511 lt!2368795)) (_2!36566 (get!22511 lt!2368795))) s!2326))))

(declare-fun b!6374011 () Bool)

(declare-fun e!3869657 () Bool)

(assert (=> b!6374011 (= e!3869657 (not (isDefined!12878 lt!2368795)))))

(declare-fun b!6374012 () Bool)

(assert (=> b!6374012 (= e!3869655 None!16174)))

(declare-fun b!6374013 () Bool)

(declare-fun res!2622061 () Bool)

(assert (=> b!6374013 (=> (not res!2622061) (not e!3869654))))

(assert (=> b!6374013 (= res!2622061 (matchR!8467 (regOne!33080 r!7292) (_1!36566 (get!22511 lt!2368795))))))

(declare-fun b!6374014 () Bool)

(declare-fun e!3869658 () Option!16175)

(assert (=> b!6374014 (= e!3869658 e!3869655)))

(declare-fun c!1160925 () Bool)

(assert (=> b!6374014 (= c!1160925 (is-Nil!65029 s!2326))))

(declare-fun b!6374015 () Bool)

(declare-fun e!3869656 () Bool)

(assert (=> b!6374015 (= e!3869656 (matchR!8467 (regTwo!33080 r!7292) s!2326))))

(declare-fun b!6374008 () Bool)

(assert (=> b!6374008 (= e!3869658 (Some!16174 (tuple2!66527 Nil!65029 s!2326)))))

(declare-fun d!1998982 () Bool)

(assert (=> d!1998982 e!3869657))

(declare-fun res!2622060 () Bool)

(assert (=> d!1998982 (=> res!2622060 e!3869657)))

(assert (=> d!1998982 (= res!2622060 e!3869654)))

(declare-fun res!2622064 () Bool)

(assert (=> d!1998982 (=> (not res!2622064) (not e!3869654))))

(assert (=> d!1998982 (= res!2622064 (isDefined!12878 lt!2368795))))

(assert (=> d!1998982 (= lt!2368795 e!3869658)))

(declare-fun c!1160926 () Bool)

(assert (=> d!1998982 (= c!1160926 e!3869656)))

(declare-fun res!2622063 () Bool)

(assert (=> d!1998982 (=> (not res!2622063) (not e!3869656))))

(assert (=> d!1998982 (= res!2622063 (matchR!8467 (regOne!33080 r!7292) Nil!65029))))

(assert (=> d!1998982 (validRegex!8020 (regOne!33080 r!7292))))

(assert (=> d!1998982 (= (findConcatSeparation!2589 (regOne!33080 r!7292) (regTwo!33080 r!7292) Nil!65029 s!2326 s!2326) lt!2368795)))

(assert (= (and d!1998982 res!2622063) b!6374015))

(assert (= (and d!1998982 c!1160926) b!6374008))

(assert (= (and d!1998982 (not c!1160926)) b!6374014))

(assert (= (and b!6374014 c!1160925) b!6374012))

(assert (= (and b!6374014 (not c!1160925)) b!6374009))

(assert (= (and d!1998982 res!2622064) b!6374013))

(assert (= (and b!6374013 res!2622061) b!6374007))

(assert (= (and b!6374007 res!2622062) b!6374010))

(assert (= (and d!1998982 (not res!2622060)) b!6374011))

(declare-fun m!7176124 () Bool)

(assert (=> b!6374009 m!7176124))

(assert (=> b!6374009 m!7176124))

(declare-fun m!7176126 () Bool)

(assert (=> b!6374009 m!7176126))

(declare-fun m!7176128 () Bool)

(assert (=> b!6374009 m!7176128))

(assert (=> b!6374009 m!7176124))

(declare-fun m!7176130 () Bool)

(assert (=> b!6374009 m!7176130))

(declare-fun m!7176132 () Bool)

(assert (=> b!6374013 m!7176132))

(declare-fun m!7176134 () Bool)

(assert (=> b!6374013 m!7176134))

(assert (=> b!6374007 m!7176132))

(declare-fun m!7176136 () Bool)

(assert (=> b!6374007 m!7176136))

(declare-fun m!7176138 () Bool)

(assert (=> d!1998982 m!7176138))

(declare-fun m!7176140 () Bool)

(assert (=> d!1998982 m!7176140))

(declare-fun m!7176142 () Bool)

(assert (=> d!1998982 m!7176142))

(declare-fun m!7176144 () Bool)

(assert (=> b!6374015 m!7176144))

(assert (=> b!6374011 m!7176138))

(assert (=> b!6374010 m!7176132))

(declare-fun m!7176146 () Bool)

(assert (=> b!6374010 m!7176146))

(assert (=> b!6373814 d!1998982))

(declare-fun d!1998984 () Bool)

(declare-fun choose!47372 (Int) Bool)

(assert (=> d!1998984 (= (Exists!3354 lambda!351336) (choose!47372 lambda!351336))))

(declare-fun bs!1596163 () Bool)

(assert (= bs!1596163 d!1998984))

(declare-fun m!7176148 () Bool)

(assert (=> bs!1596163 m!7176148))

(assert (=> b!6373814 d!1998984))

(declare-fun d!1998986 () Bool)

(assert (=> d!1998986 (= (Exists!3354 lambda!351337) (choose!47372 lambda!351337))))

(declare-fun bs!1596164 () Bool)

(assert (= bs!1596164 d!1998986))

(declare-fun m!7176150 () Bool)

(assert (=> bs!1596164 m!7176150))

(assert (=> b!6373814 d!1998986))

(declare-fun bs!1596165 () Bool)

(declare-fun d!1998988 () Bool)

(assert (= bs!1596165 (and d!1998988 b!6373814)))

(declare-fun lambda!351359 () Int)

(assert (=> bs!1596165 (= lambda!351359 lambda!351336)))

(assert (=> bs!1596165 (not (= lambda!351359 lambda!351337))))

(assert (=> d!1998988 true))

(assert (=> d!1998988 true))

(assert (=> d!1998988 true))

(assert (=> d!1998988 (= (isDefined!12878 (findConcatSeparation!2589 (regOne!33080 r!7292) (regTwo!33080 r!7292) Nil!65029 s!2326 s!2326)) (Exists!3354 lambda!351359))))

(declare-fun lt!2368799 () Unit!158467)

(declare-fun choose!47373 (Regex!16284 Regex!16284 List!65153) Unit!158467)

(assert (=> d!1998988 (= lt!2368799 (choose!47373 (regOne!33080 r!7292) (regTwo!33080 r!7292) s!2326))))

(assert (=> d!1998988 (validRegex!8020 (regOne!33080 r!7292))))

(assert (=> d!1998988 (= (lemmaFindConcatSeparationEquivalentToExists!2353 (regOne!33080 r!7292) (regTwo!33080 r!7292) s!2326) lt!2368799)))

(declare-fun bs!1596166 () Bool)

(assert (= bs!1596166 d!1998988))

(assert (=> bs!1596166 m!7175928))

(declare-fun m!7176152 () Bool)

(assert (=> bs!1596166 m!7176152))

(assert (=> bs!1596166 m!7175928))

(assert (=> bs!1596166 m!7175930))

(declare-fun m!7176154 () Bool)

(assert (=> bs!1596166 m!7176154))

(assert (=> bs!1596166 m!7176142))

(assert (=> b!6373814 d!1998988))

(declare-fun bs!1596167 () Bool)

(declare-fun d!1998990 () Bool)

(assert (= bs!1596167 (and d!1998990 b!6373814)))

(declare-fun lambda!351364 () Int)

(assert (=> bs!1596167 (= lambda!351364 lambda!351336)))

(assert (=> bs!1596167 (not (= lambda!351364 lambda!351337))))

(declare-fun bs!1596168 () Bool)

(assert (= bs!1596168 (and d!1998990 d!1998988)))

(assert (=> bs!1596168 (= lambda!351364 lambda!351359)))

(assert (=> d!1998990 true))

(assert (=> d!1998990 true))

(assert (=> d!1998990 true))

(declare-fun lambda!351365 () Int)

(assert (=> bs!1596167 (not (= lambda!351365 lambda!351336))))

(assert (=> bs!1596167 (= lambda!351365 lambda!351337)))

(assert (=> bs!1596168 (not (= lambda!351365 lambda!351359))))

(declare-fun bs!1596169 () Bool)

(assert (= bs!1596169 d!1998990))

(assert (=> bs!1596169 (not (= lambda!351365 lambda!351364))))

(assert (=> d!1998990 true))

(assert (=> d!1998990 true))

(assert (=> d!1998990 true))

(assert (=> d!1998990 (= (Exists!3354 lambda!351364) (Exists!3354 lambda!351365))))

(declare-fun lt!2368802 () Unit!158467)

(declare-fun choose!47374 (Regex!16284 Regex!16284 List!65153) Unit!158467)

(assert (=> d!1998990 (= lt!2368802 (choose!47374 (regOne!33080 r!7292) (regTwo!33080 r!7292) s!2326))))

(assert (=> d!1998990 (validRegex!8020 (regOne!33080 r!7292))))

(assert (=> d!1998990 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1891 (regOne!33080 r!7292) (regTwo!33080 r!7292) s!2326) lt!2368802)))

(declare-fun m!7176156 () Bool)

(assert (=> bs!1596169 m!7176156))

(declare-fun m!7176158 () Bool)

(assert (=> bs!1596169 m!7176158))

(declare-fun m!7176160 () Bool)

(assert (=> bs!1596169 m!7176160))

(assert (=> bs!1596169 m!7176142))

(assert (=> b!6373814 d!1998990))

(declare-fun d!1998992 () Bool)

(declare-fun isEmpty!37152 (Option!16175) Bool)

(assert (=> d!1998992 (= (isDefined!12878 (findConcatSeparation!2589 (regOne!33080 r!7292) (regTwo!33080 r!7292) Nil!65029 s!2326 s!2326)) (not (isEmpty!37152 (findConcatSeparation!2589 (regOne!33080 r!7292) (regTwo!33080 r!7292) Nil!65029 s!2326 s!2326))))))

(declare-fun bs!1596170 () Bool)

(assert (= bs!1596170 d!1998992))

(assert (=> bs!1596170 m!7175928))

(declare-fun m!7176162 () Bool)

(assert (=> bs!1596170 m!7176162))

(assert (=> b!6373814 d!1998992))

(declare-fun d!1998994 () Bool)

(assert (=> d!1998994 (= (isEmpty!37148 (t!378754 zl!343)) (is-Nil!65028 (t!378754 zl!343)))))

(assert (=> b!6373800 d!1998994))

(declare-fun d!1998996 () Bool)

(assert (=> d!1998996 (= (isEmpty!37147 (t!378753 (exprs!6168 (h!71476 zl!343)))) (is-Nil!65027 (t!378753 (exprs!6168 (h!71476 zl!343)))))))

(assert (=> b!6373799 d!1998996))

(declare-fun b!6374046 () Bool)

(declare-fun res!2622089 () Bool)

(declare-fun e!3869683 () Bool)

(assert (=> b!6374046 (=> (not res!2622089) (not e!3869683))))

(declare-fun call!544428 () Bool)

(assert (=> b!6374046 (= res!2622089 call!544428)))

(declare-fun e!3869685 () Bool)

(assert (=> b!6374046 (= e!3869685 e!3869683)))

(declare-fun b!6374047 () Bool)

(declare-fun e!3869680 () Bool)

(declare-fun e!3869679 () Bool)

(assert (=> b!6374047 (= e!3869680 e!3869679)))

(declare-fun res!2622088 () Bool)

(assert (=> b!6374047 (= res!2622088 (not (nullable!6277 (reg!16613 r!7292))))))

(assert (=> b!6374047 (=> (not res!2622088) (not e!3869679))))

(declare-fun bm!544422 () Bool)

(declare-fun call!544429 () Bool)

(declare-fun c!1160932 () Bool)

(assert (=> bm!544422 (= call!544429 (validRegex!8020 (ite c!1160932 (regTwo!33081 r!7292) (regTwo!33080 r!7292))))))

(declare-fun bm!544423 () Bool)

(declare-fun call!544427 () Bool)

(assert (=> bm!544423 (= call!544428 call!544427)))

(declare-fun b!6374048 () Bool)

(assert (=> b!6374048 (= e!3869680 e!3869685)))

(assert (=> b!6374048 (= c!1160932 (is-Union!16284 r!7292))))

(declare-fun c!1160931 () Bool)

(declare-fun bm!544424 () Bool)

(assert (=> bm!544424 (= call!544427 (validRegex!8020 (ite c!1160931 (reg!16613 r!7292) (ite c!1160932 (regOne!33081 r!7292) (regOne!33080 r!7292)))))))

(declare-fun b!6374049 () Bool)

(declare-fun e!3869681 () Bool)

(declare-fun e!3869684 () Bool)

(assert (=> b!6374049 (= e!3869681 e!3869684)))

(declare-fun res!2622091 () Bool)

(assert (=> b!6374049 (=> (not res!2622091) (not e!3869684))))

(assert (=> b!6374049 (= res!2622091 call!544428)))

(declare-fun b!6374050 () Bool)

(declare-fun res!2622087 () Bool)

(assert (=> b!6374050 (=> res!2622087 e!3869681)))

(assert (=> b!6374050 (= res!2622087 (not (is-Concat!25129 r!7292)))))

(assert (=> b!6374050 (= e!3869685 e!3869681)))

(declare-fun b!6374051 () Bool)

(assert (=> b!6374051 (= e!3869684 call!544429)))

(declare-fun b!6374053 () Bool)

(declare-fun e!3869682 () Bool)

(assert (=> b!6374053 (= e!3869682 e!3869680)))

(assert (=> b!6374053 (= c!1160931 (is-Star!16284 r!7292))))

(declare-fun b!6374054 () Bool)

(assert (=> b!6374054 (= e!3869683 call!544429)))

(declare-fun b!6374052 () Bool)

(assert (=> b!6374052 (= e!3869679 call!544427)))

(declare-fun d!1998998 () Bool)

(declare-fun res!2622090 () Bool)

(assert (=> d!1998998 (=> res!2622090 e!3869682)))

(assert (=> d!1998998 (= res!2622090 (is-ElementMatch!16284 r!7292))))

(assert (=> d!1998998 (= (validRegex!8020 r!7292) e!3869682)))

(assert (= (and d!1998998 (not res!2622090)) b!6374053))

(assert (= (and b!6374053 c!1160931) b!6374047))

(assert (= (and b!6374053 (not c!1160931)) b!6374048))

(assert (= (and b!6374047 res!2622088) b!6374052))

(assert (= (and b!6374048 c!1160932) b!6374046))

(assert (= (and b!6374048 (not c!1160932)) b!6374050))

(assert (= (and b!6374046 res!2622089) b!6374054))

(assert (= (and b!6374050 (not res!2622087)) b!6374049))

(assert (= (and b!6374049 res!2622091) b!6374051))

(assert (= (or b!6374054 b!6374051) bm!544422))

(assert (= (or b!6374046 b!6374049) bm!544423))

(assert (= (or b!6374052 bm!544423) bm!544424))

(declare-fun m!7176164 () Bool)

(assert (=> b!6374047 m!7176164))

(declare-fun m!7176166 () Bool)

(assert (=> bm!544422 m!7176166))

(declare-fun m!7176168 () Bool)

(assert (=> bm!544424 m!7176168))

(assert (=> start!631456 d!1998998))

(declare-fun d!1999000 () Bool)

(declare-fun c!1160933 () Bool)

(assert (=> d!1999000 (= c!1160933 (isEmpty!37151 s!2326))))

(declare-fun e!3869686 () Bool)

(assert (=> d!1999000 (= (matchZipper!2296 lt!2368679 s!2326) e!3869686)))

(declare-fun b!6374055 () Bool)

(assert (=> b!6374055 (= e!3869686 (nullableZipper!2050 lt!2368679))))

(declare-fun b!6374056 () Bool)

(assert (=> b!6374056 (= e!3869686 (matchZipper!2296 (derivationStepZipper!2250 lt!2368679 (head!13061 s!2326)) (tail!12146 s!2326)))))

(assert (= (and d!1999000 c!1160933) b!6374055))

(assert (= (and d!1999000 (not c!1160933)) b!6374056))

(declare-fun m!7176170 () Bool)

(assert (=> d!1999000 m!7176170))

(declare-fun m!7176172 () Bool)

(assert (=> b!6374055 m!7176172))

(declare-fun m!7176174 () Bool)

(assert (=> b!6374056 m!7176174))

(assert (=> b!6374056 m!7176174))

(declare-fun m!7176176 () Bool)

(assert (=> b!6374056 m!7176176))

(declare-fun m!7176178 () Bool)

(assert (=> b!6374056 m!7176178))

(assert (=> b!6374056 m!7176176))

(assert (=> b!6374056 m!7176178))

(declare-fun m!7176180 () Bool)

(assert (=> b!6374056 m!7176180))

(assert (=> b!6373821 d!1999000))

(declare-fun d!1999002 () Bool)

(declare-fun c!1160934 () Bool)

(assert (=> d!1999002 (= c!1160934 (isEmpty!37151 (t!378755 s!2326)))))

(declare-fun e!3869687 () Bool)

(assert (=> d!1999002 (= (matchZipper!2296 lt!2368691 (t!378755 s!2326)) e!3869687)))

(declare-fun b!6374057 () Bool)

(assert (=> b!6374057 (= e!3869687 (nullableZipper!2050 lt!2368691))))

(declare-fun b!6374058 () Bool)

(assert (=> b!6374058 (= e!3869687 (matchZipper!2296 (derivationStepZipper!2250 lt!2368691 (head!13061 (t!378755 s!2326))) (tail!12146 (t!378755 s!2326))))))

(assert (= (and d!1999002 c!1160934) b!6374057))

(assert (= (and d!1999002 (not c!1160934)) b!6374058))

(assert (=> d!1999002 m!7176106))

(declare-fun m!7176182 () Bool)

(assert (=> b!6374057 m!7176182))

(assert (=> b!6374058 m!7176110))

(assert (=> b!6374058 m!7176110))

(declare-fun m!7176184 () Bool)

(assert (=> b!6374058 m!7176184))

(assert (=> b!6374058 m!7176114))

(assert (=> b!6374058 m!7176184))

(assert (=> b!6374058 m!7176114))

(declare-fun m!7176186 () Bool)

(assert (=> b!6374058 m!7176186))

(assert (=> b!6373821 d!1999002))

(declare-fun b!6374069 () Bool)

(declare-fun e!3869696 () (Set Context!11336))

(declare-fun e!3869695 () (Set Context!11336))

(assert (=> b!6374069 (= e!3869696 e!3869695)))

(declare-fun c!1160940 () Bool)

(assert (=> b!6374069 (= c!1160940 (is-Cons!65027 (exprs!6168 lt!2368688)))))

(declare-fun b!6374070 () Bool)

(declare-fun call!544432 () (Set Context!11336))

(assert (=> b!6374070 (= e!3869696 (set.union call!544432 (derivationStepZipperUp!1458 (Context!11337 (t!378753 (exprs!6168 lt!2368688))) (h!71477 s!2326))))))

(declare-fun b!6374071 () Bool)

(assert (=> b!6374071 (= e!3869695 call!544432)))

(declare-fun b!6374072 () Bool)

(declare-fun e!3869694 () Bool)

(assert (=> b!6374072 (= e!3869694 (nullable!6277 (h!71475 (exprs!6168 lt!2368688))))))

(declare-fun bm!544427 () Bool)

(assert (=> bm!544427 (= call!544432 (derivationStepZipperDown!1532 (h!71475 (exprs!6168 lt!2368688)) (Context!11337 (t!378753 (exprs!6168 lt!2368688))) (h!71477 s!2326)))))

(declare-fun b!6374073 () Bool)

(assert (=> b!6374073 (= e!3869695 (as set.empty (Set Context!11336)))))

(declare-fun d!1999004 () Bool)

(declare-fun c!1160939 () Bool)

(assert (=> d!1999004 (= c!1160939 e!3869694)))

(declare-fun res!2622094 () Bool)

(assert (=> d!1999004 (=> (not res!2622094) (not e!3869694))))

(assert (=> d!1999004 (= res!2622094 (is-Cons!65027 (exprs!6168 lt!2368688)))))

(assert (=> d!1999004 (= (derivationStepZipperUp!1458 lt!2368688 (h!71477 s!2326)) e!3869696)))

(assert (= (and d!1999004 res!2622094) b!6374072))

(assert (= (and d!1999004 c!1160939) b!6374070))

(assert (= (and d!1999004 (not c!1160939)) b!6374069))

(assert (= (and b!6374069 c!1160940) b!6374071))

(assert (= (and b!6374069 (not c!1160940)) b!6374073))

(assert (= (or b!6374070 b!6374071) bm!544427))

(declare-fun m!7176188 () Bool)

(assert (=> b!6374070 m!7176188))

(declare-fun m!7176190 () Bool)

(assert (=> b!6374072 m!7176190))

(declare-fun m!7176192 () Bool)

(assert (=> bm!544427 m!7176192))

(assert (=> b!6373798 d!1999004))

(declare-fun d!1999006 () Bool)

(declare-fun nullableFct!2223 (Regex!16284) Bool)

(assert (=> d!1999006 (= (nullable!6277 (h!71475 (exprs!6168 (h!71476 zl!343)))) (nullableFct!2223 (h!71475 (exprs!6168 (h!71476 zl!343)))))))

(declare-fun bs!1596171 () Bool)

(assert (= bs!1596171 d!1999006))

(declare-fun m!7176194 () Bool)

(assert (=> bs!1596171 m!7176194))

(assert (=> b!6373798 d!1999006))

(declare-fun b!6374074 () Bool)

(declare-fun e!3869699 () (Set Context!11336))

(declare-fun e!3869698 () (Set Context!11336))

(assert (=> b!6374074 (= e!3869699 e!3869698)))

(declare-fun c!1160942 () Bool)

(assert (=> b!6374074 (= c!1160942 (is-Cons!65027 (exprs!6168 (Context!11337 (Cons!65027 (h!71475 (exprs!6168 (h!71476 zl!343))) (t!378753 (exprs!6168 (h!71476 zl!343))))))))))

(declare-fun call!544433 () (Set Context!11336))

(declare-fun b!6374075 () Bool)

(assert (=> b!6374075 (= e!3869699 (set.union call!544433 (derivationStepZipperUp!1458 (Context!11337 (t!378753 (exprs!6168 (Context!11337 (Cons!65027 (h!71475 (exprs!6168 (h!71476 zl!343))) (t!378753 (exprs!6168 (h!71476 zl!343)))))))) (h!71477 s!2326))))))

(declare-fun b!6374076 () Bool)

(assert (=> b!6374076 (= e!3869698 call!544433)))

(declare-fun b!6374077 () Bool)

(declare-fun e!3869697 () Bool)

(assert (=> b!6374077 (= e!3869697 (nullable!6277 (h!71475 (exprs!6168 (Context!11337 (Cons!65027 (h!71475 (exprs!6168 (h!71476 zl!343))) (t!378753 (exprs!6168 (h!71476 zl!343)))))))))))

(declare-fun bm!544428 () Bool)

(assert (=> bm!544428 (= call!544433 (derivationStepZipperDown!1532 (h!71475 (exprs!6168 (Context!11337 (Cons!65027 (h!71475 (exprs!6168 (h!71476 zl!343))) (t!378753 (exprs!6168 (h!71476 zl!343))))))) (Context!11337 (t!378753 (exprs!6168 (Context!11337 (Cons!65027 (h!71475 (exprs!6168 (h!71476 zl!343))) (t!378753 (exprs!6168 (h!71476 zl!343)))))))) (h!71477 s!2326)))))

(declare-fun b!6374078 () Bool)

(assert (=> b!6374078 (= e!3869698 (as set.empty (Set Context!11336)))))

(declare-fun d!1999008 () Bool)

(declare-fun c!1160941 () Bool)

(assert (=> d!1999008 (= c!1160941 e!3869697)))

(declare-fun res!2622095 () Bool)

(assert (=> d!1999008 (=> (not res!2622095) (not e!3869697))))

(assert (=> d!1999008 (= res!2622095 (is-Cons!65027 (exprs!6168 (Context!11337 (Cons!65027 (h!71475 (exprs!6168 (h!71476 zl!343))) (t!378753 (exprs!6168 (h!71476 zl!343))))))))))

(assert (=> d!1999008 (= (derivationStepZipperUp!1458 (Context!11337 (Cons!65027 (h!71475 (exprs!6168 (h!71476 zl!343))) (t!378753 (exprs!6168 (h!71476 zl!343))))) (h!71477 s!2326)) e!3869699)))

(assert (= (and d!1999008 res!2622095) b!6374077))

(assert (= (and d!1999008 c!1160941) b!6374075))

(assert (= (and d!1999008 (not c!1160941)) b!6374074))

(assert (= (and b!6374074 c!1160942) b!6374076))

(assert (= (and b!6374074 (not c!1160942)) b!6374078))

(assert (= (or b!6374075 b!6374076) bm!544428))

(declare-fun m!7176196 () Bool)

(assert (=> b!6374075 m!7176196))

(declare-fun m!7176198 () Bool)

(assert (=> b!6374077 m!7176198))

(declare-fun m!7176200 () Bool)

(assert (=> bm!544428 m!7176200))

(assert (=> b!6373798 d!1999008))

(declare-fun d!1999010 () Bool)

(declare-fun choose!47375 ((Set Context!11336) Int) (Set Context!11336))

(assert (=> d!1999010 (= (flatMap!1789 z!1189 lambda!351338) (choose!47375 z!1189 lambda!351338))))

(declare-fun bs!1596172 () Bool)

(assert (= bs!1596172 d!1999010))

(declare-fun m!7176202 () Bool)

(assert (=> bs!1596172 m!7176202))

(assert (=> b!6373798 d!1999010))

(declare-fun b!6374079 () Bool)

(declare-fun e!3869702 () (Set Context!11336))

(declare-fun e!3869701 () (Set Context!11336))

(assert (=> b!6374079 (= e!3869702 e!3869701)))

(declare-fun c!1160944 () Bool)

(assert (=> b!6374079 (= c!1160944 (is-Cons!65027 (exprs!6168 (h!71476 zl!343))))))

(declare-fun b!6374080 () Bool)

(declare-fun call!544434 () (Set Context!11336))

(assert (=> b!6374080 (= e!3869702 (set.union call!544434 (derivationStepZipperUp!1458 (Context!11337 (t!378753 (exprs!6168 (h!71476 zl!343)))) (h!71477 s!2326))))))

(declare-fun b!6374081 () Bool)

(assert (=> b!6374081 (= e!3869701 call!544434)))

(declare-fun b!6374082 () Bool)

(declare-fun e!3869700 () Bool)

(assert (=> b!6374082 (= e!3869700 (nullable!6277 (h!71475 (exprs!6168 (h!71476 zl!343)))))))

(declare-fun bm!544429 () Bool)

(assert (=> bm!544429 (= call!544434 (derivationStepZipperDown!1532 (h!71475 (exprs!6168 (h!71476 zl!343))) (Context!11337 (t!378753 (exprs!6168 (h!71476 zl!343)))) (h!71477 s!2326)))))

(declare-fun b!6374083 () Bool)

(assert (=> b!6374083 (= e!3869701 (as set.empty (Set Context!11336)))))

(declare-fun d!1999012 () Bool)

(declare-fun c!1160943 () Bool)

(assert (=> d!1999012 (= c!1160943 e!3869700)))

(declare-fun res!2622096 () Bool)

(assert (=> d!1999012 (=> (not res!2622096) (not e!3869700))))

(assert (=> d!1999012 (= res!2622096 (is-Cons!65027 (exprs!6168 (h!71476 zl!343))))))

(assert (=> d!1999012 (= (derivationStepZipperUp!1458 (h!71476 zl!343) (h!71477 s!2326)) e!3869702)))

(assert (= (and d!1999012 res!2622096) b!6374082))

(assert (= (and d!1999012 c!1160943) b!6374080))

(assert (= (and d!1999012 (not c!1160943)) b!6374079))

(assert (= (and b!6374079 c!1160944) b!6374081))

(assert (= (and b!6374079 (not c!1160944)) b!6374083))

(assert (= (or b!6374080 b!6374081) bm!544429))

(declare-fun m!7176204 () Bool)

(assert (=> b!6374080 m!7176204))

(assert (=> b!6374082 m!7175946))

(declare-fun m!7176206 () Bool)

(assert (=> bm!544429 m!7176206))

(assert (=> b!6373798 d!1999012))

(declare-fun b!6374106 () Bool)

(declare-fun c!1160956 () Bool)

(declare-fun e!3869716 () Bool)

(assert (=> b!6374106 (= c!1160956 e!3869716)))

(declare-fun res!2622099 () Bool)

(assert (=> b!6374106 (=> (not res!2622099) (not e!3869716))))

(assert (=> b!6374106 (= res!2622099 (is-Concat!25129 (h!71475 (exprs!6168 (h!71476 zl!343)))))))

(declare-fun e!3869718 () (Set Context!11336))

(declare-fun e!3869720 () (Set Context!11336))

(assert (=> b!6374106 (= e!3869718 e!3869720)))

(declare-fun b!6374107 () Bool)

(declare-fun c!1160959 () Bool)

(assert (=> b!6374107 (= c!1160959 (is-Star!16284 (h!71475 (exprs!6168 (h!71476 zl!343)))))))

(declare-fun e!3869715 () (Set Context!11336))

(declare-fun e!3869717 () (Set Context!11336))

(assert (=> b!6374107 (= e!3869715 e!3869717)))

(declare-fun b!6374108 () Bool)

(declare-fun call!544451 () (Set Context!11336))

(assert (=> b!6374108 (= e!3869715 call!544451)))

(declare-fun b!6374109 () Bool)

(declare-fun e!3869719 () (Set Context!11336))

(assert (=> b!6374109 (= e!3869719 (set.insert lt!2368688 (as set.empty (Set Context!11336))))))

(declare-fun b!6374110 () Bool)

(declare-fun call!544452 () (Set Context!11336))

(declare-fun call!544448 () (Set Context!11336))

(assert (=> b!6374110 (= e!3869718 (set.union call!544452 call!544448))))

(declare-fun b!6374111 () Bool)

(assert (=> b!6374111 (= e!3869720 e!3869715)))

(declare-fun c!1160957 () Bool)

(assert (=> b!6374111 (= c!1160957 (is-Concat!25129 (h!71475 (exprs!6168 (h!71476 zl!343)))))))

(declare-fun bm!544442 () Bool)

(declare-fun call!544449 () (Set Context!11336))

(assert (=> bm!544442 (= call!544451 call!544449)))

(declare-fun bm!544443 () Bool)

(declare-fun call!544447 () List!65151)

(declare-fun $colon$colon!2145 (List!65151 Regex!16284) List!65151)

(assert (=> bm!544443 (= call!544447 ($colon$colon!2145 (exprs!6168 lt!2368688) (ite (or c!1160956 c!1160957) (regTwo!33080 (h!71475 (exprs!6168 (h!71476 zl!343)))) (h!71475 (exprs!6168 (h!71476 zl!343))))))))

(declare-fun b!6374112 () Bool)

(assert (=> b!6374112 (= e!3869717 call!544451)))

(declare-fun b!6374113 () Bool)

(assert (=> b!6374113 (= e!3869716 (nullable!6277 (regOne!33080 (h!71475 (exprs!6168 (h!71476 zl!343))))))))

(declare-fun d!1999014 () Bool)

(declare-fun c!1160955 () Bool)

(assert (=> d!1999014 (= c!1160955 (and (is-ElementMatch!16284 (h!71475 (exprs!6168 (h!71476 zl!343)))) (= (c!1160893 (h!71475 (exprs!6168 (h!71476 zl!343)))) (h!71477 s!2326))))))

(assert (=> d!1999014 (= (derivationStepZipperDown!1532 (h!71475 (exprs!6168 (h!71476 zl!343))) lt!2368688 (h!71477 s!2326)) e!3869719)))

(declare-fun bm!544444 () Bool)

(declare-fun call!544450 () List!65151)

(assert (=> bm!544444 (= call!544450 call!544447)))

(declare-fun b!6374114 () Bool)

(assert (=> b!6374114 (= e!3869717 (as set.empty (Set Context!11336)))))

(declare-fun bm!544445 () Bool)

(declare-fun c!1160958 () Bool)

(assert (=> bm!544445 (= call!544452 (derivationStepZipperDown!1532 (ite c!1160958 (regOne!33081 (h!71475 (exprs!6168 (h!71476 zl!343)))) (ite c!1160956 (regTwo!33080 (h!71475 (exprs!6168 (h!71476 zl!343)))) (ite c!1160957 (regOne!33080 (h!71475 (exprs!6168 (h!71476 zl!343)))) (reg!16613 (h!71475 (exprs!6168 (h!71476 zl!343))))))) (ite (or c!1160958 c!1160956) lt!2368688 (Context!11337 call!544450)) (h!71477 s!2326)))))

(declare-fun b!6374115 () Bool)

(assert (=> b!6374115 (= e!3869719 e!3869718)))

(assert (=> b!6374115 (= c!1160958 (is-Union!16284 (h!71475 (exprs!6168 (h!71476 zl!343)))))))

(declare-fun bm!544446 () Bool)

(assert (=> bm!544446 (= call!544448 (derivationStepZipperDown!1532 (ite c!1160958 (regTwo!33081 (h!71475 (exprs!6168 (h!71476 zl!343)))) (regOne!33080 (h!71475 (exprs!6168 (h!71476 zl!343))))) (ite c!1160958 lt!2368688 (Context!11337 call!544447)) (h!71477 s!2326)))))

(declare-fun b!6374116 () Bool)

(assert (=> b!6374116 (= e!3869720 (set.union call!544448 call!544449))))

(declare-fun bm!544447 () Bool)

(assert (=> bm!544447 (= call!544449 call!544452)))

(assert (= (and d!1999014 c!1160955) b!6374109))

(assert (= (and d!1999014 (not c!1160955)) b!6374115))

(assert (= (and b!6374115 c!1160958) b!6374110))

(assert (= (and b!6374115 (not c!1160958)) b!6374106))

(assert (= (and b!6374106 res!2622099) b!6374113))

(assert (= (and b!6374106 c!1160956) b!6374116))

(assert (= (and b!6374106 (not c!1160956)) b!6374111))

(assert (= (and b!6374111 c!1160957) b!6374108))

(assert (= (and b!6374111 (not c!1160957)) b!6374107))

(assert (= (and b!6374107 c!1160959) b!6374112))

(assert (= (and b!6374107 (not c!1160959)) b!6374114))

(assert (= (or b!6374108 b!6374112) bm!544444))

(assert (= (or b!6374108 b!6374112) bm!544442))

(assert (= (or b!6374116 bm!544444) bm!544443))

(assert (= (or b!6374116 bm!544442) bm!544447))

(assert (= (or b!6374110 b!6374116) bm!544446))

(assert (= (or b!6374110 bm!544447) bm!544445))

(declare-fun m!7176208 () Bool)

(assert (=> bm!544445 m!7176208))

(declare-fun m!7176210 () Bool)

(assert (=> b!6374109 m!7176210))

(declare-fun m!7176212 () Bool)

(assert (=> b!6374113 m!7176212))

(declare-fun m!7176214 () Bool)

(assert (=> bm!544443 m!7176214))

(declare-fun m!7176216 () Bool)

(assert (=> bm!544446 m!7176216))

(assert (=> b!6373798 d!1999014))

(declare-fun d!1999016 () Bool)

(declare-fun dynLambda!25800 (Int Context!11336) (Set Context!11336))

(assert (=> d!1999016 (= (flatMap!1789 z!1189 lambda!351338) (dynLambda!25800 lambda!351338 (h!71476 zl!343)))))

(declare-fun lt!2368805 () Unit!158467)

(declare-fun choose!47376 ((Set Context!11336) Context!11336 Int) Unit!158467)

(assert (=> d!1999016 (= lt!2368805 (choose!47376 z!1189 (h!71476 zl!343) lambda!351338))))

(assert (=> d!1999016 (= z!1189 (set.insert (h!71476 zl!343) (as set.empty (Set Context!11336))))))

(assert (=> d!1999016 (= (lemmaFlatMapOnSingletonSet!1315 z!1189 (h!71476 zl!343) lambda!351338) lt!2368805)))

(declare-fun b_lambda!242221 () Bool)

(assert (=> (not b_lambda!242221) (not d!1999016)))

(declare-fun bs!1596173 () Bool)

(assert (= bs!1596173 d!1999016))

(assert (=> bs!1596173 m!7175948))

(declare-fun m!7176218 () Bool)

(assert (=> bs!1596173 m!7176218))

(declare-fun m!7176220 () Bool)

(assert (=> bs!1596173 m!7176220))

(declare-fun m!7176222 () Bool)

(assert (=> bs!1596173 m!7176222))

(assert (=> b!6373798 d!1999016))

(declare-fun bs!1596174 () Bool)

(declare-fun d!1999018 () Bool)

(assert (= bs!1596174 (and d!1999018 d!1998974)))

(declare-fun lambda!351368 () Int)

(assert (=> bs!1596174 (= lambda!351368 lambda!351356)))

(assert (=> d!1999018 (= (inv!83958 lt!2368676) (forall!15462 (exprs!6168 lt!2368676) lambda!351368))))

(declare-fun bs!1596175 () Bool)

(assert (= bs!1596175 d!1999018))

(declare-fun m!7176224 () Bool)

(assert (=> bs!1596175 m!7176224))

(assert (=> b!6373808 d!1999018))

(declare-fun d!1999020 () Bool)

(assert (=> d!1999020 (= (flatMap!1789 lt!2368686 lambda!351338) (choose!47375 lt!2368686 lambda!351338))))

(declare-fun bs!1596176 () Bool)

(assert (= bs!1596176 d!1999020))

(declare-fun m!7176226 () Bool)

(assert (=> bs!1596176 m!7176226))

(assert (=> b!6373808 d!1999020))

(declare-fun d!1999022 () Bool)

(assert (=> d!1999022 (= (flatMap!1789 lt!2368686 lambda!351338) (dynLambda!25800 lambda!351338 lt!2368682))))

(declare-fun lt!2368806 () Unit!158467)

(assert (=> d!1999022 (= lt!2368806 (choose!47376 lt!2368686 lt!2368682 lambda!351338))))

(assert (=> d!1999022 (= lt!2368686 (set.insert lt!2368682 (as set.empty (Set Context!11336))))))

(assert (=> d!1999022 (= (lemmaFlatMapOnSingletonSet!1315 lt!2368686 lt!2368682 lambda!351338) lt!2368806)))

(declare-fun b_lambda!242223 () Bool)

(assert (=> (not b_lambda!242223) (not d!1999022)))

(declare-fun bs!1596177 () Bool)

(assert (= bs!1596177 d!1999022))

(assert (=> bs!1596177 m!7175958))

(declare-fun m!7176228 () Bool)

(assert (=> bs!1596177 m!7176228))

(declare-fun m!7176230 () Bool)

(assert (=> bs!1596177 m!7176230))

(assert (=> bs!1596177 m!7175956))

(assert (=> b!6373808 d!1999022))

(declare-fun b!6374117 () Bool)

(declare-fun e!3869723 () (Set Context!11336))

(declare-fun e!3869722 () (Set Context!11336))

(assert (=> b!6374117 (= e!3869723 e!3869722)))

(declare-fun c!1160961 () Bool)

(assert (=> b!6374117 (= c!1160961 (is-Cons!65027 (exprs!6168 lt!2368676)))))

(declare-fun call!544453 () (Set Context!11336))

(declare-fun b!6374118 () Bool)

(assert (=> b!6374118 (= e!3869723 (set.union call!544453 (derivationStepZipperUp!1458 (Context!11337 (t!378753 (exprs!6168 lt!2368676))) (h!71477 s!2326))))))

(declare-fun b!6374119 () Bool)

(assert (=> b!6374119 (= e!3869722 call!544453)))

(declare-fun b!6374120 () Bool)

(declare-fun e!3869721 () Bool)

(assert (=> b!6374120 (= e!3869721 (nullable!6277 (h!71475 (exprs!6168 lt!2368676))))))

(declare-fun bm!544448 () Bool)

(assert (=> bm!544448 (= call!544453 (derivationStepZipperDown!1532 (h!71475 (exprs!6168 lt!2368676)) (Context!11337 (t!378753 (exprs!6168 lt!2368676))) (h!71477 s!2326)))))

(declare-fun b!6374121 () Bool)

(assert (=> b!6374121 (= e!3869722 (as set.empty (Set Context!11336)))))

(declare-fun d!1999024 () Bool)

(declare-fun c!1160960 () Bool)

(assert (=> d!1999024 (= c!1160960 e!3869721)))

(declare-fun res!2622100 () Bool)

(assert (=> d!1999024 (=> (not res!2622100) (not e!3869721))))

(assert (=> d!1999024 (= res!2622100 (is-Cons!65027 (exprs!6168 lt!2368676)))))

(assert (=> d!1999024 (= (derivationStepZipperUp!1458 lt!2368676 (h!71477 s!2326)) e!3869723)))

(assert (= (and d!1999024 res!2622100) b!6374120))

(assert (= (and d!1999024 c!1160960) b!6374118))

(assert (= (and d!1999024 (not c!1160960)) b!6374117))

(assert (= (and b!6374117 c!1160961) b!6374119))

(assert (= (and b!6374117 (not c!1160961)) b!6374121))

(assert (= (or b!6374118 b!6374119) bm!544448))

(declare-fun m!7176232 () Bool)

(assert (=> b!6374118 m!7176232))

(declare-fun m!7176234 () Bool)

(assert (=> b!6374120 m!7176234))

(declare-fun m!7176236 () Bool)

(assert (=> bm!544448 m!7176236))

(assert (=> b!6373808 d!1999024))

(declare-fun b!6374122 () Bool)

(declare-fun e!3869726 () (Set Context!11336))

(declare-fun e!3869725 () (Set Context!11336))

(assert (=> b!6374122 (= e!3869726 e!3869725)))

(declare-fun c!1160963 () Bool)

(assert (=> b!6374122 (= c!1160963 (is-Cons!65027 (exprs!6168 lt!2368682)))))

(declare-fun b!6374123 () Bool)

(declare-fun call!544454 () (Set Context!11336))

(assert (=> b!6374123 (= e!3869726 (set.union call!544454 (derivationStepZipperUp!1458 (Context!11337 (t!378753 (exprs!6168 lt!2368682))) (h!71477 s!2326))))))

(declare-fun b!6374124 () Bool)

(assert (=> b!6374124 (= e!3869725 call!544454)))

(declare-fun b!6374125 () Bool)

(declare-fun e!3869724 () Bool)

(assert (=> b!6374125 (= e!3869724 (nullable!6277 (h!71475 (exprs!6168 lt!2368682))))))

(declare-fun bm!544449 () Bool)

(assert (=> bm!544449 (= call!544454 (derivationStepZipperDown!1532 (h!71475 (exprs!6168 lt!2368682)) (Context!11337 (t!378753 (exprs!6168 lt!2368682))) (h!71477 s!2326)))))

(declare-fun b!6374126 () Bool)

(assert (=> b!6374126 (= e!3869725 (as set.empty (Set Context!11336)))))

(declare-fun d!1999026 () Bool)

(declare-fun c!1160962 () Bool)

(assert (=> d!1999026 (= c!1160962 e!3869724)))

(declare-fun res!2622101 () Bool)

(assert (=> d!1999026 (=> (not res!2622101) (not e!3869724))))

(assert (=> d!1999026 (= res!2622101 (is-Cons!65027 (exprs!6168 lt!2368682)))))

(assert (=> d!1999026 (= (derivationStepZipperUp!1458 lt!2368682 (h!71477 s!2326)) e!3869726)))

(assert (= (and d!1999026 res!2622101) b!6374125))

(assert (= (and d!1999026 c!1160962) b!6374123))

(assert (= (and d!1999026 (not c!1160962)) b!6374122))

(assert (= (and b!6374122 c!1160963) b!6374124))

(assert (= (and b!6374122 (not c!1160963)) b!6374126))

(assert (= (or b!6374123 b!6374124) bm!544449))

(declare-fun m!7176238 () Bool)

(assert (=> b!6374123 m!7176238))

(declare-fun m!7176240 () Bool)

(assert (=> b!6374125 m!7176240))

(declare-fun m!7176242 () Bool)

(assert (=> bm!544449 m!7176242))

(assert (=> b!6373808 d!1999026))

(declare-fun bs!1596178 () Bool)

(declare-fun d!1999028 () Bool)

(assert (= bs!1596178 (and d!1999028 d!1998974)))

(declare-fun lambda!351371 () Int)

(assert (=> bs!1596178 (= lambda!351371 lambda!351356)))

(declare-fun bs!1596179 () Bool)

(assert (= bs!1596179 (and d!1999028 d!1999018)))

(assert (=> bs!1596179 (= lambda!351371 lambda!351368)))

(declare-fun b!6374147 () Bool)

(declare-fun e!3869742 () Regex!16284)

(assert (=> b!6374147 (= e!3869742 (Union!16284 (h!71475 (unfocusZipperList!1705 zl!343)) (generalisedUnion!2128 (t!378753 (unfocusZipperList!1705 zl!343)))))))

(declare-fun b!6374148 () Bool)

(declare-fun e!3869743 () Bool)

(declare-fun lt!2368809 () Regex!16284)

(declare-fun isUnion!1122 (Regex!16284) Bool)

(assert (=> b!6374148 (= e!3869743 (isUnion!1122 lt!2368809))))

(declare-fun b!6374149 () Bool)

(assert (=> b!6374149 (= e!3869743 (= lt!2368809 (head!13060 (unfocusZipperList!1705 zl!343))))))

(declare-fun b!6374150 () Bool)

(declare-fun e!3869744 () Regex!16284)

(assert (=> b!6374150 (= e!3869744 e!3869742)))

(declare-fun c!1160974 () Bool)

(assert (=> b!6374150 (= c!1160974 (is-Cons!65027 (unfocusZipperList!1705 zl!343)))))

(declare-fun b!6374151 () Bool)

(assert (=> b!6374151 (= e!3869744 (h!71475 (unfocusZipperList!1705 zl!343)))))

(declare-fun b!6374152 () Bool)

(declare-fun e!3869739 () Bool)

(assert (=> b!6374152 (= e!3869739 (isEmpty!37147 (t!378753 (unfocusZipperList!1705 zl!343))))))

(declare-fun b!6374153 () Bool)

(declare-fun e!3869740 () Bool)

(declare-fun e!3869741 () Bool)

(assert (=> b!6374153 (= e!3869740 e!3869741)))

(declare-fun c!1160973 () Bool)

(assert (=> b!6374153 (= c!1160973 (isEmpty!37147 (unfocusZipperList!1705 zl!343)))))

(assert (=> d!1999028 e!3869740))

(declare-fun res!2622107 () Bool)

(assert (=> d!1999028 (=> (not res!2622107) (not e!3869740))))

(assert (=> d!1999028 (= res!2622107 (validRegex!8020 lt!2368809))))

(assert (=> d!1999028 (= lt!2368809 e!3869744)))

(declare-fun c!1160975 () Bool)

(assert (=> d!1999028 (= c!1160975 e!3869739)))

(declare-fun res!2622106 () Bool)

(assert (=> d!1999028 (=> (not res!2622106) (not e!3869739))))

(assert (=> d!1999028 (= res!2622106 (is-Cons!65027 (unfocusZipperList!1705 zl!343)))))

(assert (=> d!1999028 (forall!15462 (unfocusZipperList!1705 zl!343) lambda!351371)))

(assert (=> d!1999028 (= (generalisedUnion!2128 (unfocusZipperList!1705 zl!343)) lt!2368809)))

(declare-fun b!6374154 () Bool)

(declare-fun isEmptyLang!1692 (Regex!16284) Bool)

(assert (=> b!6374154 (= e!3869741 (isEmptyLang!1692 lt!2368809))))

(declare-fun b!6374155 () Bool)

(assert (=> b!6374155 (= e!3869741 e!3869743)))

(declare-fun c!1160972 () Bool)

(assert (=> b!6374155 (= c!1160972 (isEmpty!37147 (tail!12145 (unfocusZipperList!1705 zl!343))))))

(declare-fun b!6374156 () Bool)

(assert (=> b!6374156 (= e!3869742 EmptyLang!16284)))

(assert (= (and d!1999028 res!2622106) b!6374152))

(assert (= (and d!1999028 c!1160975) b!6374151))

(assert (= (and d!1999028 (not c!1160975)) b!6374150))

(assert (= (and b!6374150 c!1160974) b!6374147))

(assert (= (and b!6374150 (not c!1160974)) b!6374156))

(assert (= (and d!1999028 res!2622107) b!6374153))

(assert (= (and b!6374153 c!1160973) b!6374154))

(assert (= (and b!6374153 (not c!1160973)) b!6374155))

(assert (= (and b!6374155 c!1160972) b!6374149))

(assert (= (and b!6374155 (not c!1160972)) b!6374148))

(declare-fun m!7176244 () Bool)

(assert (=> b!6374154 m!7176244))

(declare-fun m!7176246 () Bool)

(assert (=> b!6374147 m!7176246))

(assert (=> b!6374153 m!7175968))

(declare-fun m!7176248 () Bool)

(assert (=> b!6374153 m!7176248))

(declare-fun m!7176250 () Bool)

(assert (=> d!1999028 m!7176250))

(assert (=> d!1999028 m!7175968))

(declare-fun m!7176252 () Bool)

(assert (=> d!1999028 m!7176252))

(declare-fun m!7176254 () Bool)

(assert (=> b!6374148 m!7176254))

(declare-fun m!7176256 () Bool)

(assert (=> b!6374152 m!7176256))

(assert (=> b!6374149 m!7175968))

(declare-fun m!7176258 () Bool)

(assert (=> b!6374149 m!7176258))

(assert (=> b!6374155 m!7175968))

(declare-fun m!7176260 () Bool)

(assert (=> b!6374155 m!7176260))

(assert (=> b!6374155 m!7176260))

(declare-fun m!7176262 () Bool)

(assert (=> b!6374155 m!7176262))

(assert (=> b!6373807 d!1999028))

(declare-fun bs!1596180 () Bool)

(declare-fun d!1999030 () Bool)

(assert (= bs!1596180 (and d!1999030 d!1998974)))

(declare-fun lambda!351374 () Int)

(assert (=> bs!1596180 (= lambda!351374 lambda!351356)))

(declare-fun bs!1596181 () Bool)

(assert (= bs!1596181 (and d!1999030 d!1999018)))

(assert (=> bs!1596181 (= lambda!351374 lambda!351368)))

(declare-fun bs!1596182 () Bool)

(assert (= bs!1596182 (and d!1999030 d!1999028)))

(assert (=> bs!1596182 (= lambda!351374 lambda!351371)))

(declare-fun lt!2368812 () List!65151)

(assert (=> d!1999030 (forall!15462 lt!2368812 lambda!351374)))

(declare-fun e!3869747 () List!65151)

(assert (=> d!1999030 (= lt!2368812 e!3869747)))

(declare-fun c!1160978 () Bool)

(assert (=> d!1999030 (= c!1160978 (is-Cons!65028 zl!343))))

(assert (=> d!1999030 (= (unfocusZipperList!1705 zl!343) lt!2368812)))

(declare-fun b!6374161 () Bool)

(assert (=> b!6374161 (= e!3869747 (Cons!65027 (generalisedConcat!1881 (exprs!6168 (h!71476 zl!343))) (unfocusZipperList!1705 (t!378754 zl!343))))))

(declare-fun b!6374162 () Bool)

(assert (=> b!6374162 (= e!3869747 Nil!65027)))

(assert (= (and d!1999030 c!1160978) b!6374161))

(assert (= (and d!1999030 (not c!1160978)) b!6374162))

(declare-fun m!7176264 () Bool)

(assert (=> d!1999030 m!7176264))

(assert (=> b!6374161 m!7175990))

(declare-fun m!7176266 () Bool)

(assert (=> b!6374161 m!7176266))

(assert (=> b!6373807 d!1999030))

(declare-fun d!1999032 () Bool)

(declare-fun lt!2368813 () Regex!16284)

(assert (=> d!1999032 (validRegex!8020 lt!2368813)))

(assert (=> d!1999032 (= lt!2368813 (generalisedUnion!2128 (unfocusZipperList!1705 (Cons!65028 lt!2368681 Nil!65028))))))

(assert (=> d!1999032 (= (unfocusZipper!2026 (Cons!65028 lt!2368681 Nil!65028)) lt!2368813)))

(declare-fun bs!1596183 () Bool)

(assert (= bs!1596183 d!1999032))

(declare-fun m!7176268 () Bool)

(assert (=> bs!1596183 m!7176268))

(declare-fun m!7176270 () Bool)

(assert (=> bs!1596183 m!7176270))

(assert (=> bs!1596183 m!7176270))

(declare-fun m!7176272 () Bool)

(assert (=> bs!1596183 m!7176272))

(assert (=> b!6373809 d!1999032))

(declare-fun d!1999034 () Bool)

(assert (=> d!1999034 (= (flatMap!1789 lt!2368679 lambda!351338) (choose!47375 lt!2368679 lambda!351338))))

(declare-fun bs!1596184 () Bool)

(assert (= bs!1596184 d!1999034))

(declare-fun m!7176274 () Bool)

(assert (=> bs!1596184 m!7176274))

(assert (=> b!6373819 d!1999034))

(declare-fun b!6374163 () Bool)

(declare-fun e!3869750 () (Set Context!11336))

(declare-fun e!3869749 () (Set Context!11336))

(assert (=> b!6374163 (= e!3869750 e!3869749)))

(declare-fun c!1160980 () Bool)

(assert (=> b!6374163 (= c!1160980 (is-Cons!65027 (exprs!6168 lt!2368681)))))

(declare-fun b!6374164 () Bool)

(declare-fun call!544455 () (Set Context!11336))

(assert (=> b!6374164 (= e!3869750 (set.union call!544455 (derivationStepZipperUp!1458 (Context!11337 (t!378753 (exprs!6168 lt!2368681))) (h!71477 s!2326))))))

(declare-fun b!6374165 () Bool)

(assert (=> b!6374165 (= e!3869749 call!544455)))

(declare-fun b!6374166 () Bool)

(declare-fun e!3869748 () Bool)

(assert (=> b!6374166 (= e!3869748 (nullable!6277 (h!71475 (exprs!6168 lt!2368681))))))

(declare-fun bm!544450 () Bool)

(assert (=> bm!544450 (= call!544455 (derivationStepZipperDown!1532 (h!71475 (exprs!6168 lt!2368681)) (Context!11337 (t!378753 (exprs!6168 lt!2368681))) (h!71477 s!2326)))))

(declare-fun b!6374167 () Bool)

(assert (=> b!6374167 (= e!3869749 (as set.empty (Set Context!11336)))))

(declare-fun d!1999036 () Bool)

(declare-fun c!1160979 () Bool)

(assert (=> d!1999036 (= c!1160979 e!3869748)))

(declare-fun res!2622108 () Bool)

(assert (=> d!1999036 (=> (not res!2622108) (not e!3869748))))

(assert (=> d!1999036 (= res!2622108 (is-Cons!65027 (exprs!6168 lt!2368681)))))

(assert (=> d!1999036 (= (derivationStepZipperUp!1458 lt!2368681 (h!71477 s!2326)) e!3869750)))

(assert (= (and d!1999036 res!2622108) b!6374166))

(assert (= (and d!1999036 c!1160979) b!6374164))

(assert (= (and d!1999036 (not c!1160979)) b!6374163))

(assert (= (and b!6374163 c!1160980) b!6374165))

(assert (= (and b!6374163 (not c!1160980)) b!6374167))

(assert (= (or b!6374164 b!6374165) bm!544450))

(declare-fun m!7176276 () Bool)

(assert (=> b!6374164 m!7176276))

(declare-fun m!7176278 () Bool)

(assert (=> b!6374166 m!7176278))

(declare-fun m!7176280 () Bool)

(assert (=> bm!544450 m!7176280))

(assert (=> b!6373819 d!1999036))

(declare-fun d!1999038 () Bool)

(assert (=> d!1999038 (= (flatMap!1789 lt!2368679 lambda!351338) (dynLambda!25800 lambda!351338 lt!2368681))))

(declare-fun lt!2368814 () Unit!158467)

(assert (=> d!1999038 (= lt!2368814 (choose!47376 lt!2368679 lt!2368681 lambda!351338))))

(assert (=> d!1999038 (= lt!2368679 (set.insert lt!2368681 (as set.empty (Set Context!11336))))))

(assert (=> d!1999038 (= (lemmaFlatMapOnSingletonSet!1315 lt!2368679 lt!2368681 lambda!351338) lt!2368814)))

(declare-fun b_lambda!242225 () Bool)

(assert (=> (not b_lambda!242225) (not d!1999038)))

(declare-fun bs!1596185 () Bool)

(assert (= bs!1596185 d!1999038))

(assert (=> bs!1596185 m!7175920))

(declare-fun m!7176282 () Bool)

(assert (=> bs!1596185 m!7176282))

(declare-fun m!7176284 () Bool)

(assert (=> bs!1596185 m!7176284))

(assert (=> bs!1596185 m!7175916))

(assert (=> b!6373819 d!1999038))

(declare-fun bs!1596186 () Bool)

(declare-fun d!1999040 () Bool)

(assert (= bs!1596186 (and d!1999040 b!6373798)))

(declare-fun lambda!351377 () Int)

(assert (=> bs!1596186 (= lambda!351377 lambda!351338)))

(assert (=> d!1999040 true))

(assert (=> d!1999040 (= (derivationStepZipper!2250 lt!2368679 (h!71477 s!2326)) (flatMap!1789 lt!2368679 lambda!351377))))

(declare-fun bs!1596187 () Bool)

(assert (= bs!1596187 d!1999040))

(declare-fun m!7176286 () Bool)

(assert (=> bs!1596187 m!7176286))

(assert (=> b!6373819 d!1999040))

(declare-fun bs!1596188 () Bool)

(declare-fun d!1999042 () Bool)

(assert (= bs!1596188 (and d!1999042 d!1998974)))

(declare-fun lambda!351378 () Int)

(assert (=> bs!1596188 (= lambda!351378 lambda!351356)))

(declare-fun bs!1596189 () Bool)

(assert (= bs!1596189 (and d!1999042 d!1999018)))

(assert (=> bs!1596189 (= lambda!351378 lambda!351368)))

(declare-fun bs!1596190 () Bool)

(assert (= bs!1596190 (and d!1999042 d!1999028)))

(assert (=> bs!1596190 (= lambda!351378 lambda!351371)))

(declare-fun bs!1596191 () Bool)

(assert (= bs!1596191 (and d!1999042 d!1999030)))

(assert (=> bs!1596191 (= lambda!351378 lambda!351374)))

(assert (=> d!1999042 (= (inv!83958 setElem!43467) (forall!15462 (exprs!6168 setElem!43467) lambda!351378))))

(declare-fun bs!1596192 () Bool)

(assert (= bs!1596192 d!1999042))

(declare-fun m!7176288 () Bool)

(assert (=> bs!1596192 m!7176288))

(assert (=> setNonEmpty!43467 d!1999042))

(declare-fun d!1999044 () Bool)

(declare-fun c!1160983 () Bool)

(assert (=> d!1999044 (= c!1160983 (isEmpty!37151 (t!378755 s!2326)))))

(declare-fun e!3869751 () Bool)

(assert (=> d!1999044 (= (matchZipper!2296 lt!2368687 (t!378755 s!2326)) e!3869751)))

(declare-fun b!6374170 () Bool)

(assert (=> b!6374170 (= e!3869751 (nullableZipper!2050 lt!2368687))))

(declare-fun b!6374171 () Bool)

(assert (=> b!6374171 (= e!3869751 (matchZipper!2296 (derivationStepZipper!2250 lt!2368687 (head!13061 (t!378755 s!2326))) (tail!12146 (t!378755 s!2326))))))

(assert (= (and d!1999044 c!1160983) b!6374170))

(assert (= (and d!1999044 (not c!1160983)) b!6374171))

(assert (=> d!1999044 m!7176106))

(declare-fun m!7176290 () Bool)

(assert (=> b!6374170 m!7176290))

(assert (=> b!6374171 m!7176110))

(assert (=> b!6374171 m!7176110))

(declare-fun m!7176292 () Bool)

(assert (=> b!6374171 m!7176292))

(assert (=> b!6374171 m!7176114))

(assert (=> b!6374171 m!7176292))

(assert (=> b!6374171 m!7176114))

(declare-fun m!7176294 () Bool)

(assert (=> b!6374171 m!7176294))

(assert (=> b!6373815 d!1999044))

(declare-fun b!6374172 () Bool)

(declare-fun c!1160985 () Bool)

(declare-fun e!3869753 () Bool)

(assert (=> b!6374172 (= c!1160985 e!3869753)))

(declare-fun res!2622109 () Bool)

(assert (=> b!6374172 (=> (not res!2622109) (not e!3869753))))

(assert (=> b!6374172 (= res!2622109 (is-Concat!25129 (reg!16613 (regOne!33080 r!7292))))))

(declare-fun e!3869755 () (Set Context!11336))

(declare-fun e!3869757 () (Set Context!11336))

(assert (=> b!6374172 (= e!3869755 e!3869757)))

(declare-fun b!6374173 () Bool)

(declare-fun c!1160988 () Bool)

(assert (=> b!6374173 (= c!1160988 (is-Star!16284 (reg!16613 (regOne!33080 r!7292))))))

(declare-fun e!3869752 () (Set Context!11336))

(declare-fun e!3869754 () (Set Context!11336))

(assert (=> b!6374173 (= e!3869752 e!3869754)))

(declare-fun b!6374174 () Bool)

(declare-fun call!544460 () (Set Context!11336))

(assert (=> b!6374174 (= e!3869752 call!544460)))

(declare-fun b!6374175 () Bool)

(declare-fun e!3869756 () (Set Context!11336))

(assert (=> b!6374175 (= e!3869756 (set.insert lt!2368676 (as set.empty (Set Context!11336))))))

(declare-fun b!6374176 () Bool)

(declare-fun call!544461 () (Set Context!11336))

(declare-fun call!544457 () (Set Context!11336))

(assert (=> b!6374176 (= e!3869755 (set.union call!544461 call!544457))))

(declare-fun b!6374177 () Bool)

(assert (=> b!6374177 (= e!3869757 e!3869752)))

(declare-fun c!1160986 () Bool)

(assert (=> b!6374177 (= c!1160986 (is-Concat!25129 (reg!16613 (regOne!33080 r!7292))))))

(declare-fun bm!544451 () Bool)

(declare-fun call!544458 () (Set Context!11336))

(assert (=> bm!544451 (= call!544460 call!544458)))

(declare-fun call!544456 () List!65151)

(declare-fun bm!544452 () Bool)

(assert (=> bm!544452 (= call!544456 ($colon$colon!2145 (exprs!6168 lt!2368676) (ite (or c!1160985 c!1160986) (regTwo!33080 (reg!16613 (regOne!33080 r!7292))) (reg!16613 (regOne!33080 r!7292)))))))

(declare-fun b!6374178 () Bool)

(assert (=> b!6374178 (= e!3869754 call!544460)))

(declare-fun b!6374179 () Bool)

(assert (=> b!6374179 (= e!3869753 (nullable!6277 (regOne!33080 (reg!16613 (regOne!33080 r!7292)))))))

(declare-fun d!1999048 () Bool)

(declare-fun c!1160984 () Bool)

(assert (=> d!1999048 (= c!1160984 (and (is-ElementMatch!16284 (reg!16613 (regOne!33080 r!7292))) (= (c!1160893 (reg!16613 (regOne!33080 r!7292))) (h!71477 s!2326))))))

(assert (=> d!1999048 (= (derivationStepZipperDown!1532 (reg!16613 (regOne!33080 r!7292)) lt!2368676 (h!71477 s!2326)) e!3869756)))

(declare-fun bm!544453 () Bool)

(declare-fun call!544459 () List!65151)

(assert (=> bm!544453 (= call!544459 call!544456)))

(declare-fun b!6374180 () Bool)

(assert (=> b!6374180 (= e!3869754 (as set.empty (Set Context!11336)))))

(declare-fun c!1160987 () Bool)

(declare-fun bm!544454 () Bool)

(assert (=> bm!544454 (= call!544461 (derivationStepZipperDown!1532 (ite c!1160987 (regOne!33081 (reg!16613 (regOne!33080 r!7292))) (ite c!1160985 (regTwo!33080 (reg!16613 (regOne!33080 r!7292))) (ite c!1160986 (regOne!33080 (reg!16613 (regOne!33080 r!7292))) (reg!16613 (reg!16613 (regOne!33080 r!7292)))))) (ite (or c!1160987 c!1160985) lt!2368676 (Context!11337 call!544459)) (h!71477 s!2326)))))

(declare-fun b!6374181 () Bool)

(assert (=> b!6374181 (= e!3869756 e!3869755)))

(assert (=> b!6374181 (= c!1160987 (is-Union!16284 (reg!16613 (regOne!33080 r!7292))))))

(declare-fun bm!544455 () Bool)

(assert (=> bm!544455 (= call!544457 (derivationStepZipperDown!1532 (ite c!1160987 (regTwo!33081 (reg!16613 (regOne!33080 r!7292))) (regOne!33080 (reg!16613 (regOne!33080 r!7292)))) (ite c!1160987 lt!2368676 (Context!11337 call!544456)) (h!71477 s!2326)))))

(declare-fun b!6374182 () Bool)

(assert (=> b!6374182 (= e!3869757 (set.union call!544457 call!544458))))

(declare-fun bm!544456 () Bool)

(assert (=> bm!544456 (= call!544458 call!544461)))

(assert (= (and d!1999048 c!1160984) b!6374175))

(assert (= (and d!1999048 (not c!1160984)) b!6374181))

(assert (= (and b!6374181 c!1160987) b!6374176))

(assert (= (and b!6374181 (not c!1160987)) b!6374172))

(assert (= (and b!6374172 res!2622109) b!6374179))

(assert (= (and b!6374172 c!1160985) b!6374182))

(assert (= (and b!6374172 (not c!1160985)) b!6374177))

(assert (= (and b!6374177 c!1160986) b!6374174))

(assert (= (and b!6374177 (not c!1160986)) b!6374173))

(assert (= (and b!6374173 c!1160988) b!6374178))

(assert (= (and b!6374173 (not c!1160988)) b!6374180))

(assert (= (or b!6374174 b!6374178) bm!544453))

(assert (= (or b!6374174 b!6374178) bm!544451))

(assert (= (or b!6374182 bm!544453) bm!544452))

(assert (= (or b!6374182 bm!544451) bm!544456))

(assert (= (or b!6374176 b!6374182) bm!544455))

(assert (= (or b!6374176 bm!544456) bm!544454))

(declare-fun m!7176296 () Bool)

(assert (=> bm!544454 m!7176296))

(declare-fun m!7176298 () Bool)

(assert (=> b!6374175 m!7176298))

(declare-fun m!7176300 () Bool)

(assert (=> b!6374179 m!7176300))

(declare-fun m!7176302 () Bool)

(assert (=> bm!544452 m!7176302))

(declare-fun m!7176304 () Bool)

(assert (=> bm!544455 m!7176304))

(assert (=> b!6373825 d!1999048))

(declare-fun d!1999050 () Bool)

(assert (=> d!1999050 (= (nullable!6277 (regOne!33080 (regOne!33080 r!7292))) (nullableFct!2223 (regOne!33080 (regOne!33080 r!7292))))))

(declare-fun bs!1596193 () Bool)

(assert (= bs!1596193 d!1999050))

(declare-fun m!7176306 () Bool)

(assert (=> bs!1596193 m!7176306))

(assert (=> b!6373797 d!1999050))

(declare-fun d!1999052 () Bool)

(declare-fun e!3869760 () Bool)

(assert (=> d!1999052 e!3869760))

(declare-fun res!2622112 () Bool)

(assert (=> d!1999052 (=> (not res!2622112) (not e!3869760))))

(declare-fun lt!2368817 () List!65152)

(declare-fun noDuplicate!2115 (List!65152) Bool)

(assert (=> d!1999052 (= res!2622112 (noDuplicate!2115 lt!2368817))))

(declare-fun choose!47380 ((Set Context!11336)) List!65152)

(assert (=> d!1999052 (= lt!2368817 (choose!47380 z!1189))))

(assert (=> d!1999052 (= (toList!10068 z!1189) lt!2368817)))

(declare-fun b!6374185 () Bool)

(declare-fun content!12298 (List!65152) (Set Context!11336))

(assert (=> b!6374185 (= e!3869760 (= (content!12298 lt!2368817) z!1189))))

(assert (= (and d!1999052 res!2622112) b!6374185))

(declare-fun m!7176308 () Bool)

(assert (=> d!1999052 m!7176308))

(declare-fun m!7176310 () Bool)

(assert (=> d!1999052 m!7176310))

(declare-fun m!7176312 () Bool)

(assert (=> b!6374185 m!7176312))

(assert (=> b!6373796 d!1999052))

(declare-fun bs!1596196 () Bool)

(declare-fun b!6374227 () Bool)

(assert (= bs!1596196 (and b!6374227 b!6373814)))

(declare-fun lambda!351386 () Int)

(assert (=> bs!1596196 (not (= lambda!351386 lambda!351336))))

(declare-fun bs!1596197 () Bool)

(assert (= bs!1596197 (and b!6374227 d!1998990)))

(assert (=> bs!1596197 (not (= lambda!351386 lambda!351364))))

(declare-fun bs!1596198 () Bool)

(assert (= bs!1596198 (and b!6374227 d!1998988)))

(assert (=> bs!1596198 (not (= lambda!351386 lambda!351359))))

(assert (=> bs!1596197 (not (= lambda!351386 lambda!351365))))

(assert (=> bs!1596196 (not (= lambda!351386 lambda!351337))))

(assert (=> b!6374227 true))

(assert (=> b!6374227 true))

(declare-fun bs!1596199 () Bool)

(declare-fun b!6374223 () Bool)

(assert (= bs!1596199 (and b!6374223 b!6373814)))

(declare-fun lambda!351387 () Int)

(assert (=> bs!1596199 (not (= lambda!351387 lambda!351336))))

(declare-fun bs!1596200 () Bool)

(assert (= bs!1596200 (and b!6374223 d!1998990)))

(assert (=> bs!1596200 (not (= lambda!351387 lambda!351364))))

(declare-fun bs!1596201 () Bool)

(assert (= bs!1596201 (and b!6374223 d!1998988)))

(assert (=> bs!1596201 (not (= lambda!351387 lambda!351359))))

(assert (=> bs!1596200 (= lambda!351387 lambda!351365)))

(declare-fun bs!1596202 () Bool)

(assert (= bs!1596202 (and b!6374223 b!6374227)))

(assert (=> bs!1596202 (not (= lambda!351387 lambda!351386))))

(assert (=> bs!1596199 (= lambda!351387 lambda!351337)))

(assert (=> b!6374223 true))

(assert (=> b!6374223 true))

(declare-fun b!6374220 () Bool)

(declare-fun e!3869779 () Bool)

(declare-fun e!3869781 () Bool)

(assert (=> b!6374220 (= e!3869779 e!3869781)))

(declare-fun res!2622130 () Bool)

(assert (=> b!6374220 (= res!2622130 (matchRSpec!3385 (regOne!33081 r!7292) s!2326))))

(assert (=> b!6374220 (=> res!2622130 e!3869781)))

(declare-fun b!6374221 () Bool)

(declare-fun e!3869782 () Bool)

(declare-fun e!3869784 () Bool)

(assert (=> b!6374221 (= e!3869782 e!3869784)))

(declare-fun res!2622131 () Bool)

(assert (=> b!6374221 (= res!2622131 (not (is-EmptyLang!16284 r!7292)))))

(assert (=> b!6374221 (=> (not res!2622131) (not e!3869784))))

(declare-fun b!6374222 () Bool)

(declare-fun e!3869780 () Bool)

(assert (=> b!6374222 (= e!3869780 (= s!2326 (Cons!65029 (c!1160893 r!7292) Nil!65029)))))

(declare-fun e!3869783 () Bool)

(declare-fun call!544466 () Bool)

(assert (=> b!6374223 (= e!3869783 call!544466)))

(declare-fun bm!544461 () Bool)

(declare-fun call!544467 () Bool)

(assert (=> bm!544461 (= call!544467 (isEmpty!37151 s!2326))))

(declare-fun bm!544462 () Bool)

(declare-fun c!1161000 () Bool)

(assert (=> bm!544462 (= call!544466 (Exists!3354 (ite c!1161000 lambda!351386 lambda!351387)))))

(declare-fun d!1999056 () Bool)

(declare-fun c!1160997 () Bool)

(assert (=> d!1999056 (= c!1160997 (is-EmptyExpr!16284 r!7292))))

(assert (=> d!1999056 (= (matchRSpec!3385 r!7292 s!2326) e!3869782)))

(declare-fun b!6374226 () Bool)

(declare-fun c!1160999 () Bool)

(assert (=> b!6374226 (= c!1160999 (is-Union!16284 r!7292))))

(assert (=> b!6374226 (= e!3869780 e!3869779)))

(declare-fun e!3869785 () Bool)

(assert (=> b!6374227 (= e!3869785 call!544466)))

(declare-fun b!6374228 () Bool)

(assert (=> b!6374228 (= e!3869781 (matchRSpec!3385 (regTwo!33081 r!7292) s!2326))))

(declare-fun b!6374229 () Bool)

(declare-fun c!1160998 () Bool)

(assert (=> b!6374229 (= c!1160998 (is-ElementMatch!16284 r!7292))))

(assert (=> b!6374229 (= e!3869784 e!3869780)))

(declare-fun b!6374230 () Bool)

(declare-fun res!2622129 () Bool)

(assert (=> b!6374230 (=> res!2622129 e!3869785)))

(assert (=> b!6374230 (= res!2622129 call!544467)))

(assert (=> b!6374230 (= e!3869783 e!3869785)))

(declare-fun b!6374231 () Bool)

(assert (=> b!6374231 (= e!3869779 e!3869783)))

(assert (=> b!6374231 (= c!1161000 (is-Star!16284 r!7292))))

(declare-fun b!6374232 () Bool)

(assert (=> b!6374232 (= e!3869782 call!544467)))

(assert (= (and d!1999056 c!1160997) b!6374232))

(assert (= (and d!1999056 (not c!1160997)) b!6374221))

(assert (= (and b!6374221 res!2622131) b!6374229))

(assert (= (and b!6374229 c!1160998) b!6374222))

(assert (= (and b!6374229 (not c!1160998)) b!6374226))

(assert (= (and b!6374226 c!1160999) b!6374220))

(assert (= (and b!6374226 (not c!1160999)) b!6374231))

(assert (= (and b!6374220 (not res!2622130)) b!6374228))

(assert (= (and b!6374231 c!1161000) b!6374230))

(assert (= (and b!6374231 (not c!1161000)) b!6374223))

(assert (= (and b!6374230 (not res!2622129)) b!6374227))

(assert (= (or b!6374227 b!6374223) bm!544462))

(assert (= (or b!6374232 b!6374230) bm!544461))

(declare-fun m!7176320 () Bool)

(assert (=> b!6374220 m!7176320))

(assert (=> bm!544461 m!7176170))

(declare-fun m!7176322 () Bool)

(assert (=> bm!544462 m!7176322))

(declare-fun m!7176324 () Bool)

(assert (=> b!6374228 m!7176324))

(assert (=> b!6373826 d!1999056))

(declare-fun b!6374280 () Bool)

(declare-fun e!3869816 () Bool)

(declare-fun e!3869819 () Bool)

(assert (=> b!6374280 (= e!3869816 e!3869819)))

(declare-fun res!2622156 () Bool)

(assert (=> b!6374280 (=> res!2622156 e!3869819)))

(declare-fun call!544474 () Bool)

(assert (=> b!6374280 (= res!2622156 call!544474)))

(declare-fun b!6374281 () Bool)

(declare-fun res!2622162 () Bool)

(declare-fun e!3869817 () Bool)

(assert (=> b!6374281 (=> (not res!2622162) (not e!3869817))))

(assert (=> b!6374281 (= res!2622162 (not call!544474))))

(declare-fun b!6374282 () Bool)

(declare-fun e!3869818 () Bool)

(declare-fun lt!2368826 () Bool)

(assert (=> b!6374282 (= e!3869818 (not lt!2368826))))

(declare-fun b!6374283 () Bool)

(declare-fun e!3869815 () Bool)

(assert (=> b!6374283 (= e!3869815 e!3869818)))

(declare-fun c!1161016 () Bool)

(assert (=> b!6374283 (= c!1161016 (is-EmptyLang!16284 r!7292))))

(declare-fun b!6374285 () Bool)

(declare-fun res!2622161 () Bool)

(assert (=> b!6374285 (=> (not res!2622161) (not e!3869817))))

(assert (=> b!6374285 (= res!2622161 (isEmpty!37151 (tail!12146 s!2326)))))

(declare-fun b!6374286 () Bool)

(declare-fun e!3869820 () Bool)

(assert (=> b!6374286 (= e!3869820 (nullable!6277 r!7292))))

(declare-fun b!6374287 () Bool)

(declare-fun res!2622160 () Bool)

(assert (=> b!6374287 (=> res!2622160 e!3869819)))

(assert (=> b!6374287 (= res!2622160 (not (isEmpty!37151 (tail!12146 s!2326))))))

(declare-fun bm!544469 () Bool)

(assert (=> bm!544469 (= call!544474 (isEmpty!37151 s!2326))))

(declare-fun b!6374288 () Bool)

(declare-fun derivativeStep!4989 (Regex!16284 C!32838) Regex!16284)

(assert (=> b!6374288 (= e!3869820 (matchR!8467 (derivativeStep!4989 r!7292 (head!13061 s!2326)) (tail!12146 s!2326)))))

(declare-fun b!6374289 () Bool)

(assert (=> b!6374289 (= e!3869817 (= (head!13061 s!2326) (c!1160893 r!7292)))))

(declare-fun d!1999062 () Bool)

(assert (=> d!1999062 e!3869815))

(declare-fun c!1161015 () Bool)

(assert (=> d!1999062 (= c!1161015 (is-EmptyExpr!16284 r!7292))))

(assert (=> d!1999062 (= lt!2368826 e!3869820)))

(declare-fun c!1161017 () Bool)

(assert (=> d!1999062 (= c!1161017 (isEmpty!37151 s!2326))))

(assert (=> d!1999062 (validRegex!8020 r!7292)))

(assert (=> d!1999062 (= (matchR!8467 r!7292 s!2326) lt!2368826)))

(declare-fun b!6374284 () Bool)

(assert (=> b!6374284 (= e!3869819 (not (= (head!13061 s!2326) (c!1160893 r!7292))))))

(declare-fun b!6374290 () Bool)

(assert (=> b!6374290 (= e!3869815 (= lt!2368826 call!544474))))

(declare-fun b!6374291 () Bool)

(declare-fun e!3869821 () Bool)

(assert (=> b!6374291 (= e!3869821 e!3869816)))

(declare-fun res!2622157 () Bool)

(assert (=> b!6374291 (=> (not res!2622157) (not e!3869816))))

(assert (=> b!6374291 (= res!2622157 (not lt!2368826))))

(declare-fun b!6374292 () Bool)

(declare-fun res!2622158 () Bool)

(assert (=> b!6374292 (=> res!2622158 e!3869821)))

(assert (=> b!6374292 (= res!2622158 e!3869817)))

(declare-fun res!2622155 () Bool)

(assert (=> b!6374292 (=> (not res!2622155) (not e!3869817))))

(assert (=> b!6374292 (= res!2622155 lt!2368826)))

(declare-fun b!6374293 () Bool)

(declare-fun res!2622159 () Bool)

(assert (=> b!6374293 (=> res!2622159 e!3869821)))

(assert (=> b!6374293 (= res!2622159 (not (is-ElementMatch!16284 r!7292)))))

(assert (=> b!6374293 (= e!3869818 e!3869821)))

(assert (= (and d!1999062 c!1161017) b!6374286))

(assert (= (and d!1999062 (not c!1161017)) b!6374288))

(assert (= (and d!1999062 c!1161015) b!6374290))

(assert (= (and d!1999062 (not c!1161015)) b!6374283))

(assert (= (and b!6374283 c!1161016) b!6374282))

(assert (= (and b!6374283 (not c!1161016)) b!6374293))

(assert (= (and b!6374293 (not res!2622159)) b!6374292))

(assert (= (and b!6374292 res!2622155) b!6374281))

(assert (= (and b!6374281 res!2622162) b!6374285))

(assert (= (and b!6374285 res!2622161) b!6374289))

(assert (= (and b!6374292 (not res!2622158)) b!6374291))

(assert (= (and b!6374291 res!2622157) b!6374280))

(assert (= (and b!6374280 (not res!2622156)) b!6374287))

(assert (= (and b!6374287 (not res!2622160)) b!6374284))

(assert (= (or b!6374290 b!6374280 b!6374281) bm!544469))

(assert (=> d!1999062 m!7176170))

(assert (=> d!1999062 m!7175972))

(assert (=> b!6374288 m!7176174))

(assert (=> b!6374288 m!7176174))

(declare-fun m!7176348 () Bool)

(assert (=> b!6374288 m!7176348))

(assert (=> b!6374288 m!7176178))

(assert (=> b!6374288 m!7176348))

(assert (=> b!6374288 m!7176178))

(declare-fun m!7176350 () Bool)

(assert (=> b!6374288 m!7176350))

(declare-fun m!7176352 () Bool)

(assert (=> b!6374286 m!7176352))

(assert (=> bm!544469 m!7176170))

(assert (=> b!6374287 m!7176178))

(assert (=> b!6374287 m!7176178))

(declare-fun m!7176354 () Bool)

(assert (=> b!6374287 m!7176354))

(assert (=> b!6374285 m!7176178))

(assert (=> b!6374285 m!7176178))

(assert (=> b!6374285 m!7176354))

(assert (=> b!6374289 m!7176174))

(assert (=> b!6374284 m!7176174))

(assert (=> b!6373826 d!1999062))

(declare-fun d!1999074 () Bool)

(assert (=> d!1999074 (= (matchR!8467 r!7292 s!2326) (matchRSpec!3385 r!7292 s!2326))))

(declare-fun lt!2368829 () Unit!158467)

(declare-fun choose!47382 (Regex!16284 List!65153) Unit!158467)

(assert (=> d!1999074 (= lt!2368829 (choose!47382 r!7292 s!2326))))

(assert (=> d!1999074 (validRegex!8020 r!7292)))

(assert (=> d!1999074 (= (mainMatchTheorem!3385 r!7292 s!2326) lt!2368829)))

(declare-fun bs!1596206 () Bool)

(assert (= bs!1596206 d!1999074))

(assert (=> bs!1596206 m!7175910))

(assert (=> bs!1596206 m!7175908))

(declare-fun m!7176356 () Bool)

(assert (=> bs!1596206 m!7176356))

(assert (=> bs!1596206 m!7175972))

(assert (=> b!6373826 d!1999074))

(declare-fun bs!1596207 () Bool)

(declare-fun d!1999076 () Bool)

(assert (= bs!1596207 (and d!1999076 d!1999030)))

(declare-fun lambda!351389 () Int)

(assert (=> bs!1596207 (= lambda!351389 lambda!351374)))

(declare-fun bs!1596208 () Bool)

(assert (= bs!1596208 (and d!1999076 d!1999042)))

(assert (=> bs!1596208 (= lambda!351389 lambda!351378)))

(declare-fun bs!1596209 () Bool)

(assert (= bs!1596209 (and d!1999076 d!1998974)))

(assert (=> bs!1596209 (= lambda!351389 lambda!351356)))

(declare-fun bs!1596210 () Bool)

(assert (= bs!1596210 (and d!1999076 d!1999028)))

(assert (=> bs!1596210 (= lambda!351389 lambda!351371)))

(declare-fun bs!1596211 () Bool)

(assert (= bs!1596211 (and d!1999076 d!1999018)))

(assert (=> bs!1596211 (= lambda!351389 lambda!351368)))

(assert (=> d!1999076 (= (inv!83958 (h!71476 zl!343)) (forall!15462 (exprs!6168 (h!71476 zl!343)) lambda!351389))))

(declare-fun bs!1596212 () Bool)

(assert (= bs!1596212 d!1999076))

(declare-fun m!7176358 () Bool)

(assert (=> bs!1596212 m!7176358))

(assert (=> b!6373806 d!1999076))

(declare-fun b!6374319 () Bool)

(declare-fun e!3869832 () Bool)

(declare-fun tp!1774413 () Bool)

(declare-fun tp!1774416 () Bool)

(assert (=> b!6374319 (= e!3869832 (and tp!1774413 tp!1774416))))

(declare-fun b!6374318 () Bool)

(assert (=> b!6374318 (= e!3869832 tp_is_empty!41821)))

(declare-fun b!6374321 () Bool)

(declare-fun tp!1774417 () Bool)

(declare-fun tp!1774415 () Bool)

(assert (=> b!6374321 (= e!3869832 (and tp!1774417 tp!1774415))))

(assert (=> b!6373817 (= tp!1774366 e!3869832)))

(declare-fun b!6374320 () Bool)

(declare-fun tp!1774414 () Bool)

(assert (=> b!6374320 (= e!3869832 tp!1774414)))

(assert (= (and b!6373817 (is-ElementMatch!16284 (reg!16613 r!7292))) b!6374318))

(assert (= (and b!6373817 (is-Concat!25129 (reg!16613 r!7292))) b!6374319))

(assert (= (and b!6373817 (is-Star!16284 (reg!16613 r!7292))) b!6374320))

(assert (= (and b!6373817 (is-Union!16284 (reg!16613 r!7292))) b!6374321))

(declare-fun b!6374331 () Bool)

(declare-fun e!3869837 () Bool)

(declare-fun tp!1774418 () Bool)

(declare-fun tp!1774421 () Bool)

(assert (=> b!6374331 (= e!3869837 (and tp!1774418 tp!1774421))))

(declare-fun b!6374330 () Bool)

(assert (=> b!6374330 (= e!3869837 tp_is_empty!41821)))

(declare-fun b!6374333 () Bool)

(declare-fun tp!1774422 () Bool)

(declare-fun tp!1774420 () Bool)

(assert (=> b!6374333 (= e!3869837 (and tp!1774422 tp!1774420))))

(assert (=> b!6373802 (= tp!1774365 e!3869837)))

(declare-fun b!6374332 () Bool)

(declare-fun tp!1774419 () Bool)

(assert (=> b!6374332 (= e!3869837 tp!1774419)))

(assert (= (and b!6373802 (is-ElementMatch!16284 (regOne!33081 r!7292))) b!6374330))

(assert (= (and b!6373802 (is-Concat!25129 (regOne!33081 r!7292))) b!6374331))

(assert (= (and b!6373802 (is-Star!16284 (regOne!33081 r!7292))) b!6374332))

(assert (= (and b!6373802 (is-Union!16284 (regOne!33081 r!7292))) b!6374333))

(declare-fun b!6374335 () Bool)

(declare-fun e!3869838 () Bool)

(declare-fun tp!1774423 () Bool)

(declare-fun tp!1774426 () Bool)

(assert (=> b!6374335 (= e!3869838 (and tp!1774423 tp!1774426))))

(declare-fun b!6374334 () Bool)

(assert (=> b!6374334 (= e!3869838 tp_is_empty!41821)))

(declare-fun b!6374337 () Bool)

(declare-fun tp!1774427 () Bool)

(declare-fun tp!1774425 () Bool)

(assert (=> b!6374337 (= e!3869838 (and tp!1774427 tp!1774425))))

(assert (=> b!6373802 (= tp!1774372 e!3869838)))

(declare-fun b!6374336 () Bool)

(declare-fun tp!1774424 () Bool)

(assert (=> b!6374336 (= e!3869838 tp!1774424)))

(assert (= (and b!6373802 (is-ElementMatch!16284 (regTwo!33081 r!7292))) b!6374334))

(assert (= (and b!6373802 (is-Concat!25129 (regTwo!33081 r!7292))) b!6374335))

(assert (= (and b!6373802 (is-Star!16284 (regTwo!33081 r!7292))) b!6374336))

(assert (= (and b!6373802 (is-Union!16284 (regTwo!33081 r!7292))) b!6374337))

(declare-fun b!6374342 () Bool)

(declare-fun e!3869841 () Bool)

(declare-fun tp!1774430 () Bool)

(assert (=> b!6374342 (= e!3869841 (and tp_is_empty!41821 tp!1774430))))

(assert (=> b!6373824 (= tp!1774368 e!3869841)))

(assert (= (and b!6373824 (is-Cons!65029 (t!378755 s!2326))) b!6374342))

(declare-fun condSetEmpty!43473 () Bool)

(assert (=> setNonEmpty!43467 (= condSetEmpty!43473 (= setRest!43467 (as set.empty (Set Context!11336))))))

(declare-fun setRes!43473 () Bool)

(assert (=> setNonEmpty!43467 (= tp!1774367 setRes!43473)))

(declare-fun setIsEmpty!43473 () Bool)

(assert (=> setIsEmpty!43473 setRes!43473))

(declare-fun e!3869844 () Bool)

(declare-fun setElem!43473 () Context!11336)

(declare-fun setNonEmpty!43473 () Bool)

(declare-fun tp!1774435 () Bool)

(assert (=> setNonEmpty!43473 (= setRes!43473 (and tp!1774435 (inv!83958 setElem!43473) e!3869844))))

(declare-fun setRest!43473 () (Set Context!11336))

(assert (=> setNonEmpty!43473 (= setRest!43467 (set.union (set.insert setElem!43473 (as set.empty (Set Context!11336))) setRest!43473))))

(declare-fun b!6374347 () Bool)

(declare-fun tp!1774436 () Bool)

(assert (=> b!6374347 (= e!3869844 tp!1774436)))

(assert (= (and setNonEmpty!43467 condSetEmpty!43473) setIsEmpty!43473))

(assert (= (and setNonEmpty!43467 (not condSetEmpty!43473)) setNonEmpty!43473))

(assert (= setNonEmpty!43473 b!6374347))

(declare-fun m!7176360 () Bool)

(assert (=> setNonEmpty!43473 m!7176360))

(declare-fun b!6374352 () Bool)

(declare-fun e!3869847 () Bool)

(declare-fun tp!1774441 () Bool)

(declare-fun tp!1774442 () Bool)

(assert (=> b!6374352 (= e!3869847 (and tp!1774441 tp!1774442))))

(assert (=> b!6373810 (= tp!1774363 e!3869847)))

(assert (= (and b!6373810 (is-Cons!65027 (exprs!6168 (h!71476 zl!343)))) b!6374352))

(declare-fun b!6374354 () Bool)

(declare-fun e!3869848 () Bool)

(declare-fun tp!1774443 () Bool)

(declare-fun tp!1774446 () Bool)

(assert (=> b!6374354 (= e!3869848 (and tp!1774443 tp!1774446))))

(declare-fun b!6374353 () Bool)

(assert (=> b!6374353 (= e!3869848 tp_is_empty!41821)))

(declare-fun b!6374356 () Bool)

(declare-fun tp!1774447 () Bool)

(declare-fun tp!1774445 () Bool)

(assert (=> b!6374356 (= e!3869848 (and tp!1774447 tp!1774445))))

(assert (=> b!6373816 (= tp!1774369 e!3869848)))

(declare-fun b!6374355 () Bool)

(declare-fun tp!1774444 () Bool)

(assert (=> b!6374355 (= e!3869848 tp!1774444)))

(assert (= (and b!6373816 (is-ElementMatch!16284 (regOne!33080 r!7292))) b!6374353))

(assert (= (and b!6373816 (is-Concat!25129 (regOne!33080 r!7292))) b!6374354))

(assert (= (and b!6373816 (is-Star!16284 (regOne!33080 r!7292))) b!6374355))

(assert (= (and b!6373816 (is-Union!16284 (regOne!33080 r!7292))) b!6374356))

(declare-fun b!6374358 () Bool)

(declare-fun e!3869849 () Bool)

(declare-fun tp!1774448 () Bool)

(declare-fun tp!1774451 () Bool)

(assert (=> b!6374358 (= e!3869849 (and tp!1774448 tp!1774451))))

(declare-fun b!6374357 () Bool)

(assert (=> b!6374357 (= e!3869849 tp_is_empty!41821)))

(declare-fun b!6374360 () Bool)

(declare-fun tp!1774452 () Bool)

(declare-fun tp!1774450 () Bool)

(assert (=> b!6374360 (= e!3869849 (and tp!1774452 tp!1774450))))

(assert (=> b!6373816 (= tp!1774371 e!3869849)))

(declare-fun b!6374359 () Bool)

(declare-fun tp!1774449 () Bool)

(assert (=> b!6374359 (= e!3869849 tp!1774449)))

(assert (= (and b!6373816 (is-ElementMatch!16284 (regTwo!33080 r!7292))) b!6374357))

(assert (= (and b!6373816 (is-Concat!25129 (regTwo!33080 r!7292))) b!6374358))

(assert (= (and b!6373816 (is-Star!16284 (regTwo!33080 r!7292))) b!6374359))

(assert (= (and b!6373816 (is-Union!16284 (regTwo!33080 r!7292))) b!6374360))

(declare-fun b!6374361 () Bool)

(declare-fun e!3869850 () Bool)

(declare-fun tp!1774453 () Bool)

(declare-fun tp!1774454 () Bool)

(assert (=> b!6374361 (= e!3869850 (and tp!1774453 tp!1774454))))

(assert (=> b!6373812 (= tp!1774370 e!3869850)))

(assert (= (and b!6373812 (is-Cons!65027 (exprs!6168 setElem!43467))) b!6374361))

(declare-fun b!6374369 () Bool)

(declare-fun e!3869856 () Bool)

(declare-fun tp!1774459 () Bool)

(assert (=> b!6374369 (= e!3869856 tp!1774459)))

(declare-fun e!3869855 () Bool)

(declare-fun tp!1774460 () Bool)

(declare-fun b!6374368 () Bool)

(assert (=> b!6374368 (= e!3869855 (and (inv!83958 (h!71476 (t!378754 zl!343))) e!3869856 tp!1774460))))

(assert (=> b!6373806 (= tp!1774364 e!3869855)))

(assert (= b!6374368 b!6374369))

(assert (= (and b!6373806 (is-Cons!65028 (t!378754 zl!343))) b!6374368))

(declare-fun m!7176362 () Bool)

(assert (=> b!6374368 m!7176362))

(declare-fun b_lambda!242229 () Bool)

(assert (= b_lambda!242221 (or b!6373798 b_lambda!242229)))

(declare-fun bs!1596213 () Bool)

(declare-fun d!1999078 () Bool)

(assert (= bs!1596213 (and d!1999078 b!6373798)))

(assert (=> bs!1596213 (= (dynLambda!25800 lambda!351338 (h!71476 zl!343)) (derivationStepZipperUp!1458 (h!71476 zl!343) (h!71477 s!2326)))))

(assert (=> bs!1596213 m!7175940))

(assert (=> d!1999016 d!1999078))

(declare-fun b_lambda!242231 () Bool)

(assert (= b_lambda!242225 (or b!6373798 b_lambda!242231)))

(declare-fun bs!1596214 () Bool)

(declare-fun d!1999080 () Bool)

(assert (= bs!1596214 (and d!1999080 b!6373798)))

(assert (=> bs!1596214 (= (dynLambda!25800 lambda!351338 lt!2368681) (derivationStepZipperUp!1458 lt!2368681 (h!71477 s!2326)))))

(assert (=> bs!1596214 m!7175922))

(assert (=> d!1999038 d!1999080))

(declare-fun b_lambda!242233 () Bool)

(assert (= b_lambda!242223 (or b!6373798 b_lambda!242233)))

(declare-fun bs!1596215 () Bool)

(declare-fun d!1999082 () Bool)

(assert (= bs!1596215 (and d!1999082 b!6373798)))

(assert (=> bs!1596215 (= (dynLambda!25800 lambda!351338 lt!2368682) (derivationStepZipperUp!1458 lt!2368682 (h!71477 s!2326)))))

(assert (=> bs!1596215 m!7175964))

(assert (=> d!1999022 d!1999082))

(push 1)

(assert (not b!6374335))

(assert (not d!1999040))

(assert (not bm!544427))

(assert (not bm!544450))

(assert (not d!1999016))

(assert (not d!1999076))

(assert (not b!6374220))

(assert (not b!6374055))

(assert (not bm!544455))

(assert (not b!6374320))

(assert (not b!6374077))

(assert (not bm!544452))

(assert (not bm!544454))

(assert (not b!6373980))

(assert (not d!1998974))

(assert (not b!6374361))

(assert (not bm!544445))

(assert (not b!6373976))

(assert (not b!6374007))

(assert (not b!6374149))

(assert (not b!6374009))

(assert (not b!6374072))

(assert (not bs!1596215))

(assert (not b!6374321))

(assert (not bm!544428))

(assert (not b!6374347))

(assert (not b!6374356))

(assert (not b!6374286))

(assert (not b!6373988))

(assert (not bm!544461))

(assert (not b!6374368))

(assert (not b!6374015))

(assert (not bm!544443))

(assert (not bm!544462))

(assert (not b!6374075))

(assert (not d!1998990))

(assert (not d!1999030))

(assert (not b!6374369))

(assert (not d!1999006))

(assert (not bm!544446))

(assert (not bm!544424))

(assert (not b!6374153))

(assert (not d!1999028))

(assert (not b_lambda!242233))

(assert (not d!1999020))

(assert (not d!1999022))

(assert (not b!6374333))

(assert (not b!6374337))

(assert (not b!6374154))

(assert (not b!6374355))

(assert (not b!6373975))

(assert (not b!6373968))

(assert (not b!6374164))

(assert (not b!6374319))

(assert (not b!6374179))

(assert (not d!1999050))

(assert (not b!6373986))

(assert (not d!1999052))

(assert (not b!6374011))

(assert (not d!1998992))

(assert (not b!6374360))

(assert (not d!1999018))

(assert (not d!1999032))

(assert (not b!6374170))

(assert (not d!1999000))

(assert (not b_lambda!242231))

(assert (not d!1999002))

(assert (not bm!544449))

(assert (not setNonEmpty!43473))

(assert (not d!1999038))

(assert (not b!6374147))

(assert (not b!6373974))

(assert (not d!1998978))

(assert (not d!1998986))

(assert (not bm!544448))

(assert (not b!6374148))

(assert (not b!6374070))

(assert (not b!6374332))

(assert (not b!6374359))

(assert (not d!1999034))

(assert (not b!6374289))

(assert (not d!1998982))

(assert (not b!6374336))

(assert (not b!6374284))

(assert (not d!1999074))

(assert (not b!6374013))

(assert (not d!1998988))

(assert (not b!6374228))

(assert (not b!6374342))

(assert (not b!6374171))

(assert (not b!6374123))

(assert (not b!6374288))

(assert (not bs!1596213))

(assert (not b!6373977))

(assert (not b!6374118))

(assert (not b!6374058))

(assert (not b!6374010))

(assert (not b!6374113))

(assert (not b!6374152))

(assert (not d!1999010))

(assert (not b!6373969))

(assert (not d!1998984))

(assert (not b!6374352))

(assert (not bm!544429))

(assert (not b!6374057))

(assert (not bm!544422))

(assert (not b!6374166))

(assert tp_is_empty!41821)

(assert (not b!6373987))

(assert (not b!6374287))

(assert (not b!6373985))

(assert (not b!6373971))

(assert (not b!6374161))

(assert (not d!1998980))

(assert (not bm!544469))

(assert (not b_lambda!242229))

(assert (not b!6374285))

(assert (not b!6374155))

(assert (not d!1999042))

(assert (not b!6374331))

(assert (not d!1998972))

(assert (not d!1999044))

(assert (not b!6374125))

(assert (not d!1998976))

(assert (not b!6374358))

(assert (not b!6374120))

(assert (not bs!1596214))

(assert (not b!6374082))

(assert (not b!6374080))

(assert (not b!6374056))

(assert (not d!1999062))

(assert (not b!6374185))

(assert (not b!6374354))

(assert (not b!6374047))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

