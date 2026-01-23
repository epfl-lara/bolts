; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!682444 () Bool)

(assert start!682444)

(declare-fun b!7047783 () Bool)

(assert (=> b!7047783 true))

(declare-fun b!7047777 () Bool)

(assert (=> b!7047777 true))

(declare-fun b!7047773 () Bool)

(assert (=> b!7047773 true))

(declare-fun b!7047772 () Bool)

(declare-fun e!4236860 () Bool)

(declare-fun tp_is_empty!44253 () Bool)

(declare-fun tp!1938286 () Bool)

(assert (=> b!7047772 (= e!4236860 (and tp_is_empty!44253 tp!1938286))))

(declare-fun e!4236854 () Bool)

(declare-fun e!4236853 () Bool)

(assert (=> b!7047773 (= e!4236854 e!4236853)))

(declare-fun res!2877170 () Bool)

(assert (=> b!7047773 (=> res!2877170 e!4236853)))

(declare-datatypes ((C!35298 0))(
  ( (C!35299 (val!27351 Int)) )
))
(declare-datatypes ((Regex!17514 0))(
  ( (ElementMatch!17514 (c!1312500 C!35298)) (Concat!26359 (regOne!35540 Regex!17514) (regTwo!35540 Regex!17514)) (EmptyExpr!17514) (Star!17514 (reg!17843 Regex!17514)) (EmptyLang!17514) (Union!17514 (regOne!35541 Regex!17514) (regTwo!35541 Regex!17514)) )
))
(declare-datatypes ((List!68070 0))(
  ( (Nil!67946) (Cons!67946 (h!74394 Regex!17514) (t!381847 List!68070)) )
))
(declare-datatypes ((Context!13020 0))(
  ( (Context!13021 (exprs!7010 List!68070)) )
))
(declare-fun lt!2527884 () (Set Context!13020))

(declare-fun lt!2527895 () (Set Context!13020))

(declare-datatypes ((List!68071 0))(
  ( (Nil!67947) (Cons!67947 (h!74395 C!35298) (t!381848 List!68071)) )
))
(declare-fun s!7408 () List!68071)

(declare-fun derivationStepZipper!2970 ((Set Context!13020) C!35298) (Set Context!13020))

(assert (=> b!7047773 (= res!2877170 (not (= (derivationStepZipper!2970 lt!2527895 (h!74395 s!7408)) lt!2527884)))))

(declare-fun lt!2527903 () Context!13020)

(declare-fun lambda!418184 () Int)

(declare-fun flatMap!2461 ((Set Context!13020) Int) (Set Context!13020))

(declare-fun derivationStepZipperUp!2124 (Context!13020 C!35298) (Set Context!13020))

(assert (=> b!7047773 (= (flatMap!2461 lt!2527895 lambda!418184) (derivationStepZipperUp!2124 lt!2527903 (h!74395 s!7408)))))

(declare-datatypes ((Unit!161714 0))(
  ( (Unit!161715) )
))
(declare-fun lt!2527901 () Unit!161714)

(declare-fun lemmaFlatMapOnSingletonSet!1975 ((Set Context!13020) Context!13020 Int) Unit!161714)

(assert (=> b!7047773 (= lt!2527901 (lemmaFlatMapOnSingletonSet!1975 lt!2527895 lt!2527903 lambda!418184))))

(assert (=> b!7047773 (= lt!2527884 (derivationStepZipperUp!2124 lt!2527903 (h!74395 s!7408)))))

(declare-fun lambda!418183 () Int)

(declare-fun lt!2527894 () Context!13020)

(declare-fun ct2!306 () Context!13020)

(declare-fun lt!2527891 () Unit!161714)

(declare-fun lemmaConcatPreservesForall!835 (List!68070 List!68070 Int) Unit!161714)

(assert (=> b!7047773 (= lt!2527891 (lemmaConcatPreservesForall!835 (exprs!7010 lt!2527894) (exprs!7010 ct2!306) lambda!418183))))

(declare-fun b!7047774 () Bool)

(declare-fun res!2877171 () Bool)

(assert (=> b!7047774 (=> res!2877171 e!4236853)))

(assert (=> b!7047774 (= res!2877171 (not (is-Cons!67946 (exprs!7010 lt!2527894))))))

(declare-fun b!7047775 () Bool)

(declare-fun res!2877164 () Bool)

(declare-fun e!4236856 () Bool)

(assert (=> b!7047775 (=> res!2877164 e!4236856)))

(declare-fun lt!2527899 () (Set Context!13020))

(declare-datatypes ((tuple2!68158 0))(
  ( (tuple2!68159 (_1!37382 List!68071) (_2!37382 List!68071)) )
))
(declare-fun lt!2527897 () tuple2!68158)

(declare-fun matchZipper!3054 ((Set Context!13020) List!68071) Bool)

(assert (=> b!7047775 (= res!2877164 (not (matchZipper!3054 lt!2527899 (_2!37382 lt!2527897))))))

(declare-fun b!7047776 () Bool)

(declare-fun e!4236858 () Bool)

(declare-fun tp!1938289 () Bool)

(assert (=> b!7047776 (= e!4236858 tp!1938289)))

(declare-fun setIsEmpty!49505 () Bool)

(declare-fun setRes!49505 () Bool)

(assert (=> setIsEmpty!49505 setRes!49505))

(declare-fun e!4236857 () Bool)

(declare-fun e!4236861 () Bool)

(assert (=> b!7047777 (= e!4236857 e!4236861)))

(declare-fun res!2877172 () Bool)

(assert (=> b!7047777 (=> res!2877172 e!4236861)))

(declare-fun lt!2527893 () Context!13020)

(declare-fun z1!570 () (Set Context!13020))

(assert (=> b!7047777 (= res!2877172 (or (not (= lt!2527903 lt!2527893)) (not (set.member lt!2527894 z1!570))))))

(declare-fun ++!15599 (List!68070 List!68070) List!68070)

(assert (=> b!7047777 (= lt!2527903 (Context!13021 (++!15599 (exprs!7010 lt!2527894) (exprs!7010 ct2!306))))))

(declare-fun lt!2527883 () Unit!161714)

(assert (=> b!7047777 (= lt!2527883 (lemmaConcatPreservesForall!835 (exprs!7010 lt!2527894) (exprs!7010 ct2!306) lambda!418183))))

(declare-fun lambda!418182 () Int)

(declare-fun mapPost2!355 ((Set Context!13020) Int Context!13020) Context!13020)

(assert (=> b!7047777 (= lt!2527894 (mapPost2!355 z1!570 lambda!418182 lt!2527893))))

(declare-fun b!7047778 () Bool)

(declare-fun res!2877169 () Bool)

(assert (=> b!7047778 (=> res!2877169 e!4236856)))

(declare-fun ++!15600 (List!68071 List!68071) List!68071)

(assert (=> b!7047778 (= res!2877169 (not (= (++!15600 (_1!37382 lt!2527897) (_2!37382 lt!2527897)) (t!381848 s!7408))))))

(declare-fun b!7047779 () Bool)

(declare-fun res!2877175 () Bool)

(assert (=> b!7047779 (=> res!2877175 e!4236853)))

(declare-fun isEmpty!39663 (List!68070) Bool)

(assert (=> b!7047779 (= res!2877175 (isEmpty!39663 (exprs!7010 lt!2527894)))))

(declare-fun res!2877173 () Bool)

(declare-fun e!4236855 () Bool)

(assert (=> start!682444 (=> (not res!2877173) (not e!4236855))))

(declare-fun lt!2527885 () (Set Context!13020))

(assert (=> start!682444 (= res!2877173 (matchZipper!3054 lt!2527885 s!7408))))

(declare-fun appendTo!635 ((Set Context!13020) Context!13020) (Set Context!13020))

(assert (=> start!682444 (= lt!2527885 (appendTo!635 z1!570 ct2!306))))

(assert (=> start!682444 e!4236855))

(declare-fun condSetEmpty!49505 () Bool)

(assert (=> start!682444 (= condSetEmpty!49505 (= z1!570 (as set.empty (Set Context!13020))))))

(assert (=> start!682444 setRes!49505))

(declare-fun inv!86645 (Context!13020) Bool)

(assert (=> start!682444 (and (inv!86645 ct2!306) e!4236858)))

(assert (=> start!682444 e!4236860))

(declare-fun b!7047780 () Bool)

(declare-fun res!2877167 () Bool)

(assert (=> b!7047780 (=> (not res!2877167) (not e!4236855))))

(assert (=> b!7047780 (= res!2877167 (is-Cons!67947 s!7408))))

(declare-fun b!7047781 () Bool)

(declare-fun e!4236852 () Bool)

(declare-fun e!4236851 () Bool)

(assert (=> b!7047781 (= e!4236852 e!4236851)))

(declare-fun res!2877166 () Bool)

(assert (=> b!7047781 (=> res!2877166 e!4236851)))

(declare-fun lt!2527881 () (Set Context!13020))

(assert (=> b!7047781 (= res!2877166 (not (matchZipper!3054 lt!2527881 (t!381848 s!7408))))))

(declare-fun lt!2527896 () List!68070)

(declare-fun derivationStepZipperDown!2178 (Regex!17514 Context!13020 C!35298) (Set Context!13020))

(assert (=> b!7047781 (= lt!2527881 (derivationStepZipperDown!2178 (h!74394 (exprs!7010 lt!2527894)) (Context!13021 (++!15599 lt!2527896 (exprs!7010 ct2!306))) (h!74395 s!7408)))))

(declare-fun lt!2527908 () Unit!161714)

(assert (=> b!7047781 (= lt!2527908 (lemmaConcatPreservesForall!835 lt!2527896 (exprs!7010 ct2!306) lambda!418183))))

(declare-fun b!7047782 () Bool)

(assert (=> b!7047782 (= e!4236853 e!4236852)))

(declare-fun res!2877174 () Bool)

(assert (=> b!7047782 (=> res!2877174 e!4236852)))

(declare-fun nullable!7225 (Regex!17514) Bool)

(assert (=> b!7047782 (= res!2877174 (nullable!7225 (h!74394 (exprs!7010 lt!2527894))))))

(declare-fun lt!2527907 () Context!13020)

(assert (=> b!7047782 (= lt!2527907 (Context!13021 lt!2527896))))

(declare-fun tail!13640 (List!68070) List!68070)

(assert (=> b!7047782 (= lt!2527896 (tail!13640 (exprs!7010 lt!2527894)))))

(assert (=> b!7047783 (= e!4236855 (not e!4236857))))

(declare-fun res!2877165 () Bool)

(assert (=> b!7047783 (=> res!2877165 e!4236857)))

(declare-fun lt!2527889 () (Set Context!13020))

(assert (=> b!7047783 (= res!2877165 (not (matchZipper!3054 lt!2527889 s!7408)))))

(assert (=> b!7047783 (= lt!2527889 (set.insert lt!2527893 (as set.empty (Set Context!13020))))))

(declare-fun lambda!418181 () Int)

(declare-fun getWitness!1554 ((Set Context!13020) Int) Context!13020)

(assert (=> b!7047783 (= lt!2527893 (getWitness!1554 lt!2527885 lambda!418181))))

(declare-datatypes ((List!68072 0))(
  ( (Nil!67948) (Cons!67948 (h!74396 Context!13020) (t!381849 List!68072)) )
))
(declare-fun lt!2527882 () List!68072)

(declare-fun exists!3475 (List!68072 Int) Bool)

(assert (=> b!7047783 (exists!3475 lt!2527882 lambda!418181)))

(declare-fun lt!2527905 () Unit!161714)

(declare-fun lemmaZipperMatchesExistsMatchingContext!453 (List!68072 List!68071) Unit!161714)

(assert (=> b!7047783 (= lt!2527905 (lemmaZipperMatchesExistsMatchingContext!453 lt!2527882 s!7408))))

(declare-fun toList!10857 ((Set Context!13020)) List!68072)

(assert (=> b!7047783 (= lt!2527882 (toList!10857 lt!2527885))))

(declare-fun b!7047784 () Bool)

(assert (=> b!7047784 (= e!4236851 e!4236856)))

(declare-fun res!2877176 () Bool)

(assert (=> b!7047784 (=> res!2877176 e!4236856)))

(declare-fun lt!2527906 () (Set Context!13020))

(assert (=> b!7047784 (= res!2877176 (not (matchZipper!3054 lt!2527906 (_1!37382 lt!2527897))))))

(declare-datatypes ((Option!16911 0))(
  ( (None!16910) (Some!16910 (v!53200 tuple2!68158)) )
))
(declare-fun lt!2527888 () Option!16911)

(declare-fun get!23819 (Option!16911) tuple2!68158)

(assert (=> b!7047784 (= lt!2527897 (get!23819 lt!2527888))))

(declare-fun isDefined!13612 (Option!16911) Bool)

(assert (=> b!7047784 (isDefined!13612 lt!2527888)))

(declare-fun findConcatSeparationZippers!427 ((Set Context!13020) (Set Context!13020) List!68071 List!68071 List!68071) Option!16911)

(assert (=> b!7047784 (= lt!2527888 (findConcatSeparationZippers!427 lt!2527906 lt!2527899 Nil!67947 (t!381848 s!7408) (t!381848 s!7408)))))

(assert (=> b!7047784 (= lt!2527899 (set.insert ct2!306 (as set.empty (Set Context!13020))))))

(declare-fun lt!2527890 () Unit!161714)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!415 ((Set Context!13020) Context!13020 List!68071) Unit!161714)

(assert (=> b!7047784 (= lt!2527890 (lemmaConcatZipperMatchesStringThenFindConcatDefined!415 lt!2527906 ct2!306 (t!381848 s!7408)))))

(assert (=> b!7047784 (= lt!2527881 (appendTo!635 lt!2527906 ct2!306))))

(assert (=> b!7047784 (= lt!2527906 (derivationStepZipperDown!2178 (h!74394 (exprs!7010 lt!2527894)) lt!2527907 (h!74395 s!7408)))))

(declare-fun lt!2527900 () Unit!161714)

(assert (=> b!7047784 (= lt!2527900 (lemmaConcatPreservesForall!835 lt!2527896 (exprs!7010 ct2!306) lambda!418183))))

(declare-fun lt!2527898 () Unit!161714)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!91 (Context!13020 Regex!17514 C!35298 Context!13020) Unit!161714)

(assert (=> b!7047784 (= lt!2527898 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!91 lt!2527907 (h!74394 (exprs!7010 lt!2527894)) (h!74395 s!7408) ct2!306))))

(declare-fun lt!2527904 () (Set Context!13020))

(declare-fun b!7047785 () Bool)

(declare-fun lt!2527902 () (Set Context!13020))

(assert (=> b!7047785 (= e!4236856 (or (not (= lt!2527902 lt!2527904)) (= lt!2527902 lt!2527906)))))

(declare-fun lt!2527892 () (Set Context!13020))

(assert (=> b!7047785 (= (flatMap!2461 lt!2527892 lambda!418184) (derivationStepZipperUp!2124 lt!2527894 (h!74395 s!7408)))))

(declare-fun lt!2527887 () Unit!161714)

(assert (=> b!7047785 (= lt!2527887 (lemmaFlatMapOnSingletonSet!1975 lt!2527892 lt!2527894 lambda!418184))))

(assert (=> b!7047785 (= lt!2527904 (derivationStepZipperUp!2124 lt!2527894 (h!74395 s!7408)))))

(assert (=> b!7047785 (= lt!2527902 (derivationStepZipper!2970 lt!2527892 (h!74395 s!7408)))))

(assert (=> b!7047785 (= lt!2527892 (set.insert lt!2527894 (as set.empty (Set Context!13020))))))

(declare-fun b!7047786 () Bool)

(declare-fun res!2877163 () Bool)

(assert (=> b!7047786 (=> res!2877163 e!4236857)))

(assert (=> b!7047786 (= res!2877163 (not (set.member lt!2527893 lt!2527885)))))

(declare-fun b!7047787 () Bool)

(assert (=> b!7047787 (= e!4236861 e!4236854)))

(declare-fun res!2877168 () Bool)

(assert (=> b!7047787 (=> res!2877168 e!4236854)))

(assert (=> b!7047787 (= res!2877168 (not (= lt!2527895 lt!2527889)))))

(assert (=> b!7047787 (= lt!2527895 (set.insert lt!2527903 (as set.empty (Set Context!13020))))))

(declare-fun lt!2527886 () Unit!161714)

(assert (=> b!7047787 (= lt!2527886 (lemmaConcatPreservesForall!835 (exprs!7010 lt!2527894) (exprs!7010 ct2!306) lambda!418183))))

(declare-fun b!7047788 () Bool)

(declare-fun e!4236859 () Bool)

(declare-fun tp!1938287 () Bool)

(assert (=> b!7047788 (= e!4236859 tp!1938287)))

(declare-fun setNonEmpty!49505 () Bool)

(declare-fun tp!1938288 () Bool)

(declare-fun setElem!49505 () Context!13020)

(assert (=> setNonEmpty!49505 (= setRes!49505 (and tp!1938288 (inv!86645 setElem!49505) e!4236859))))

(declare-fun setRest!49505 () (Set Context!13020))

(assert (=> setNonEmpty!49505 (= z1!570 (set.union (set.insert setElem!49505 (as set.empty (Set Context!13020))) setRest!49505))))

(assert (= (and start!682444 res!2877173) b!7047780))

(assert (= (and b!7047780 res!2877167) b!7047783))

(assert (= (and b!7047783 (not res!2877165)) b!7047786))

(assert (= (and b!7047786 (not res!2877163)) b!7047777))

(assert (= (and b!7047777 (not res!2877172)) b!7047787))

(assert (= (and b!7047787 (not res!2877168)) b!7047773))

(assert (= (and b!7047773 (not res!2877170)) b!7047774))

(assert (= (and b!7047774 (not res!2877171)) b!7047779))

(assert (= (and b!7047779 (not res!2877175)) b!7047782))

(assert (= (and b!7047782 (not res!2877174)) b!7047781))

(assert (= (and b!7047781 (not res!2877166)) b!7047784))

(assert (= (and b!7047784 (not res!2877176)) b!7047775))

(assert (= (and b!7047775 (not res!2877164)) b!7047778))

(assert (= (and b!7047778 (not res!2877169)) b!7047785))

(assert (= (and start!682444 condSetEmpty!49505) setIsEmpty!49505))

(assert (= (and start!682444 (not condSetEmpty!49505)) setNonEmpty!49505))

(assert (= setNonEmpty!49505 b!7047788))

(assert (= start!682444 b!7047776))

(assert (= (and start!682444 (is-Cons!67947 s!7408)) b!7047772))

(declare-fun m!7762354 () Bool)

(assert (=> b!7047785 m!7762354))

(declare-fun m!7762356 () Bool)

(assert (=> b!7047785 m!7762356))

(declare-fun m!7762358 () Bool)

(assert (=> b!7047785 m!7762358))

(declare-fun m!7762360 () Bool)

(assert (=> b!7047785 m!7762360))

(declare-fun m!7762362 () Bool)

(assert (=> b!7047785 m!7762362))

(declare-fun m!7762364 () Bool)

(assert (=> b!7047781 m!7762364))

(declare-fun m!7762366 () Bool)

(assert (=> b!7047781 m!7762366))

(declare-fun m!7762368 () Bool)

(assert (=> b!7047781 m!7762368))

(declare-fun m!7762370 () Bool)

(assert (=> b!7047781 m!7762370))

(declare-fun m!7762372 () Bool)

(assert (=> start!682444 m!7762372))

(declare-fun m!7762374 () Bool)

(assert (=> start!682444 m!7762374))

(declare-fun m!7762376 () Bool)

(assert (=> start!682444 m!7762376))

(declare-fun m!7762378 () Bool)

(assert (=> b!7047778 m!7762378))

(declare-fun m!7762380 () Bool)

(assert (=> b!7047786 m!7762380))

(declare-fun m!7762382 () Bool)

(assert (=> b!7047779 m!7762382))

(declare-fun m!7762384 () Bool)

(assert (=> b!7047777 m!7762384))

(declare-fun m!7762386 () Bool)

(assert (=> b!7047777 m!7762386))

(declare-fun m!7762388 () Bool)

(assert (=> b!7047777 m!7762388))

(declare-fun m!7762390 () Bool)

(assert (=> b!7047777 m!7762390))

(declare-fun m!7762392 () Bool)

(assert (=> b!7047784 m!7762392))

(declare-fun m!7762394 () Bool)

(assert (=> b!7047784 m!7762394))

(declare-fun m!7762396 () Bool)

(assert (=> b!7047784 m!7762396))

(declare-fun m!7762398 () Bool)

(assert (=> b!7047784 m!7762398))

(declare-fun m!7762400 () Bool)

(assert (=> b!7047784 m!7762400))

(declare-fun m!7762402 () Bool)

(assert (=> b!7047784 m!7762402))

(declare-fun m!7762404 () Bool)

(assert (=> b!7047784 m!7762404))

(assert (=> b!7047784 m!7762370))

(declare-fun m!7762406 () Bool)

(assert (=> b!7047784 m!7762406))

(declare-fun m!7762408 () Bool)

(assert (=> b!7047784 m!7762408))

(declare-fun m!7762410 () Bool)

(assert (=> b!7047782 m!7762410))

(declare-fun m!7762412 () Bool)

(assert (=> b!7047782 m!7762412))

(declare-fun m!7762414 () Bool)

(assert (=> setNonEmpty!49505 m!7762414))

(declare-fun m!7762416 () Bool)

(assert (=> b!7047787 m!7762416))

(assert (=> b!7047787 m!7762388))

(declare-fun m!7762418 () Bool)

(assert (=> b!7047783 m!7762418))

(declare-fun m!7762420 () Bool)

(assert (=> b!7047783 m!7762420))

(declare-fun m!7762422 () Bool)

(assert (=> b!7047783 m!7762422))

(declare-fun m!7762424 () Bool)

(assert (=> b!7047783 m!7762424))

(declare-fun m!7762426 () Bool)

(assert (=> b!7047783 m!7762426))

(declare-fun m!7762428 () Bool)

(assert (=> b!7047783 m!7762428))

(assert (=> b!7047773 m!7762388))

(declare-fun m!7762430 () Bool)

(assert (=> b!7047773 m!7762430))

(declare-fun m!7762432 () Bool)

(assert (=> b!7047773 m!7762432))

(declare-fun m!7762434 () Bool)

(assert (=> b!7047773 m!7762434))

(declare-fun m!7762436 () Bool)

(assert (=> b!7047773 m!7762436))

(declare-fun m!7762438 () Bool)

(assert (=> b!7047775 m!7762438))

(push 1)

(assert (not b!7047777))

(assert (not b!7047785))

(assert (not b!7047784))

(assert (not b!7047778))

(assert (not b!7047782))

(assert tp_is_empty!44253)

(assert (not b!7047779))

(assert (not setNonEmpty!49505))

(assert (not b!7047788))

(assert (not b!7047772))

(assert (not b!7047773))

(assert (not b!7047776))

(assert (not b!7047781))

(assert (not b!7047783))

(assert (not b!7047787))

(assert (not start!682444))

(assert (not b!7047775))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2201401 () Bool)

(declare-fun choose!53603 ((Set Context!13020) Int) (Set Context!13020))

(assert (=> d!2201401 (= (flatMap!2461 lt!2527892 lambda!418184) (choose!53603 lt!2527892 lambda!418184))))

(declare-fun bs!1875166 () Bool)

(assert (= bs!1875166 d!2201401))

(declare-fun m!7762526 () Bool)

(assert (=> bs!1875166 m!7762526))

(assert (=> b!7047785 d!2201401))

(declare-fun e!4236902 () (Set Context!13020))

(declare-fun b!7047862 () Bool)

(declare-fun call!640382 () (Set Context!13020))

(assert (=> b!7047862 (= e!4236902 (set.union call!640382 (derivationStepZipperUp!2124 (Context!13021 (t!381847 (exprs!7010 lt!2527894))) (h!74395 s!7408))))))

(declare-fun b!7047863 () Bool)

(declare-fun e!4236903 () (Set Context!13020))

(assert (=> b!7047863 (= e!4236902 e!4236903)))

(declare-fun c!1312517 () Bool)

(assert (=> b!7047863 (= c!1312517 (is-Cons!67946 (exprs!7010 lt!2527894)))))

(declare-fun b!7047864 () Bool)

(declare-fun e!4236901 () Bool)

(assert (=> b!7047864 (= e!4236901 (nullable!7225 (h!74394 (exprs!7010 lt!2527894))))))

(declare-fun bm!640377 () Bool)

(assert (=> bm!640377 (= call!640382 (derivationStepZipperDown!2178 (h!74394 (exprs!7010 lt!2527894)) (Context!13021 (t!381847 (exprs!7010 lt!2527894))) (h!74395 s!7408)))))

(declare-fun b!7047865 () Bool)

(assert (=> b!7047865 (= e!4236903 call!640382)))

(declare-fun b!7047866 () Bool)

(assert (=> b!7047866 (= e!4236903 (as set.empty (Set Context!13020)))))

(declare-fun d!2201403 () Bool)

(declare-fun c!1312516 () Bool)

(assert (=> d!2201403 (= c!1312516 e!4236901)))

(declare-fun res!2877222 () Bool)

(assert (=> d!2201403 (=> (not res!2877222) (not e!4236901))))

(assert (=> d!2201403 (= res!2877222 (is-Cons!67946 (exprs!7010 lt!2527894)))))

(assert (=> d!2201403 (= (derivationStepZipperUp!2124 lt!2527894 (h!74395 s!7408)) e!4236902)))

(assert (= (and d!2201403 res!2877222) b!7047864))

(assert (= (and d!2201403 c!1312516) b!7047862))

(assert (= (and d!2201403 (not c!1312516)) b!7047863))

(assert (= (and b!7047863 c!1312517) b!7047865))

(assert (= (and b!7047863 (not c!1312517)) b!7047866))

(assert (= (or b!7047862 b!7047865) bm!640377))

(declare-fun m!7762528 () Bool)

(assert (=> b!7047862 m!7762528))

(assert (=> b!7047864 m!7762410))

(declare-fun m!7762530 () Bool)

(assert (=> bm!640377 m!7762530))

(assert (=> b!7047785 d!2201403))

(declare-fun d!2201405 () Bool)

(declare-fun dynLambda!27526 (Int Context!13020) (Set Context!13020))

(assert (=> d!2201405 (= (flatMap!2461 lt!2527892 lambda!418184) (dynLambda!27526 lambda!418184 lt!2527894))))

(declare-fun lt!2527997 () Unit!161714)

(declare-fun choose!53604 ((Set Context!13020) Context!13020 Int) Unit!161714)

(assert (=> d!2201405 (= lt!2527997 (choose!53604 lt!2527892 lt!2527894 lambda!418184))))

(assert (=> d!2201405 (= lt!2527892 (set.insert lt!2527894 (as set.empty (Set Context!13020))))))

(assert (=> d!2201405 (= (lemmaFlatMapOnSingletonSet!1975 lt!2527892 lt!2527894 lambda!418184) lt!2527997)))

(declare-fun b_lambda!267859 () Bool)

(assert (=> (not b_lambda!267859) (not d!2201405)))

(declare-fun bs!1875167 () Bool)

(assert (= bs!1875167 d!2201405))

(assert (=> bs!1875167 m!7762360))

(declare-fun m!7762532 () Bool)

(assert (=> bs!1875167 m!7762532))

(declare-fun m!7762534 () Bool)

(assert (=> bs!1875167 m!7762534))

(assert (=> bs!1875167 m!7762354))

(assert (=> b!7047785 d!2201405))

(declare-fun bs!1875168 () Bool)

(declare-fun d!2201407 () Bool)

(assert (= bs!1875168 (and d!2201407 b!7047773)))

(declare-fun lambda!418213 () Int)

(assert (=> bs!1875168 (= lambda!418213 lambda!418184)))

(assert (=> d!2201407 true))

(assert (=> d!2201407 (= (derivationStepZipper!2970 lt!2527892 (h!74395 s!7408)) (flatMap!2461 lt!2527892 lambda!418213))))

(declare-fun bs!1875169 () Bool)

(assert (= bs!1875169 d!2201407))

(declare-fun m!7762536 () Bool)

(assert (=> bs!1875169 m!7762536))

(assert (=> b!7047785 d!2201407))

(declare-fun d!2201409 () Bool)

(declare-fun c!1312522 () Bool)

(declare-fun isEmpty!39665 (List!68071) Bool)

(assert (=> d!2201409 (= c!1312522 (isEmpty!39665 (_2!37382 lt!2527897)))))

(declare-fun e!4236906 () Bool)

(assert (=> d!2201409 (= (matchZipper!3054 lt!2527899 (_2!37382 lt!2527897)) e!4236906)))

(declare-fun b!7047873 () Bool)

(declare-fun nullableZipper!2616 ((Set Context!13020)) Bool)

(assert (=> b!7047873 (= e!4236906 (nullableZipper!2616 lt!2527899))))

(declare-fun b!7047874 () Bool)

(declare-fun head!14313 (List!68071) C!35298)

(declare-fun tail!13642 (List!68071) List!68071)

(assert (=> b!7047874 (= e!4236906 (matchZipper!3054 (derivationStepZipper!2970 lt!2527899 (head!14313 (_2!37382 lt!2527897))) (tail!13642 (_2!37382 lt!2527897))))))

(assert (= (and d!2201409 c!1312522) b!7047873))

(assert (= (and d!2201409 (not c!1312522)) b!7047874))

(declare-fun m!7762538 () Bool)

(assert (=> d!2201409 m!7762538))

(declare-fun m!7762540 () Bool)

(assert (=> b!7047873 m!7762540))

(declare-fun m!7762542 () Bool)

(assert (=> b!7047874 m!7762542))

(assert (=> b!7047874 m!7762542))

(declare-fun m!7762544 () Bool)

(assert (=> b!7047874 m!7762544))

(declare-fun m!7762546 () Bool)

(assert (=> b!7047874 m!7762546))

(assert (=> b!7047874 m!7762544))

(assert (=> b!7047874 m!7762546))

(declare-fun m!7762548 () Bool)

(assert (=> b!7047874 m!7762548))

(assert (=> b!7047775 d!2201409))

(declare-fun d!2201411 () Bool)

(declare-fun forall!16449 (List!68070 Int) Bool)

(assert (=> d!2201411 (forall!16449 (++!15599 (exprs!7010 lt!2527894) (exprs!7010 ct2!306)) lambda!418183)))

(declare-fun lt!2528000 () Unit!161714)

(declare-fun choose!53605 (List!68070 List!68070 Int) Unit!161714)

(assert (=> d!2201411 (= lt!2528000 (choose!53605 (exprs!7010 lt!2527894) (exprs!7010 ct2!306) lambda!418183))))

(assert (=> d!2201411 (forall!16449 (exprs!7010 lt!2527894) lambda!418183)))

(assert (=> d!2201411 (= (lemmaConcatPreservesForall!835 (exprs!7010 lt!2527894) (exprs!7010 ct2!306) lambda!418183) lt!2528000)))

(declare-fun bs!1875170 () Bool)

(assert (= bs!1875170 d!2201411))

(assert (=> bs!1875170 m!7762386))

(assert (=> bs!1875170 m!7762386))

(declare-fun m!7762550 () Bool)

(assert (=> bs!1875170 m!7762550))

(declare-fun m!7762552 () Bool)

(assert (=> bs!1875170 m!7762552))

(declare-fun m!7762554 () Bool)

(assert (=> bs!1875170 m!7762554))

(assert (=> b!7047787 d!2201411))

(declare-fun d!2201413 () Bool)

(declare-fun e!4236912 () Bool)

(assert (=> d!2201413 e!4236912))

(declare-fun res!2877228 () Bool)

(assert (=> d!2201413 (=> (not res!2877228) (not e!4236912))))

(declare-fun lt!2528003 () List!68070)

(declare-fun content!13625 (List!68070) (Set Regex!17514))

(assert (=> d!2201413 (= res!2877228 (= (content!13625 lt!2528003) (set.union (content!13625 (exprs!7010 lt!2527894)) (content!13625 (exprs!7010 ct2!306)))))))

(declare-fun e!4236911 () List!68070)

(assert (=> d!2201413 (= lt!2528003 e!4236911)))

(declare-fun c!1312525 () Bool)

(assert (=> d!2201413 (= c!1312525 (is-Nil!67946 (exprs!7010 lt!2527894)))))

(assert (=> d!2201413 (= (++!15599 (exprs!7010 lt!2527894) (exprs!7010 ct2!306)) lt!2528003)))

(declare-fun b!7047883 () Bool)

(assert (=> b!7047883 (= e!4236911 (exprs!7010 ct2!306))))

(declare-fun b!7047886 () Bool)

(assert (=> b!7047886 (= e!4236912 (or (not (= (exprs!7010 ct2!306) Nil!67946)) (= lt!2528003 (exprs!7010 lt!2527894))))))

(declare-fun b!7047884 () Bool)

(assert (=> b!7047884 (= e!4236911 (Cons!67946 (h!74394 (exprs!7010 lt!2527894)) (++!15599 (t!381847 (exprs!7010 lt!2527894)) (exprs!7010 ct2!306))))))

(declare-fun b!7047885 () Bool)

(declare-fun res!2877227 () Bool)

(assert (=> b!7047885 (=> (not res!2877227) (not e!4236912))))

(declare-fun size!41120 (List!68070) Int)

(assert (=> b!7047885 (= res!2877227 (= (size!41120 lt!2528003) (+ (size!41120 (exprs!7010 lt!2527894)) (size!41120 (exprs!7010 ct2!306)))))))

(assert (= (and d!2201413 c!1312525) b!7047883))

(assert (= (and d!2201413 (not c!1312525)) b!7047884))

(assert (= (and d!2201413 res!2877228) b!7047885))

(assert (= (and b!7047885 res!2877227) b!7047886))

(declare-fun m!7762556 () Bool)

(assert (=> d!2201413 m!7762556))

(declare-fun m!7762558 () Bool)

(assert (=> d!2201413 m!7762558))

(declare-fun m!7762560 () Bool)

(assert (=> d!2201413 m!7762560))

(declare-fun m!7762562 () Bool)

(assert (=> b!7047884 m!7762562))

(declare-fun m!7762564 () Bool)

(assert (=> b!7047885 m!7762564))

(declare-fun m!7762566 () Bool)

(assert (=> b!7047885 m!7762566))

(declare-fun m!7762568 () Bool)

(assert (=> b!7047885 m!7762568))

(assert (=> b!7047777 d!2201413))

(assert (=> b!7047777 d!2201411))

(declare-fun d!2201415 () Bool)

(declare-fun e!4236915 () Bool)

(assert (=> d!2201415 e!4236915))

(declare-fun res!2877231 () Bool)

(assert (=> d!2201415 (=> (not res!2877231) (not e!4236915))))

(declare-fun lt!2528006 () Context!13020)

(declare-fun dynLambda!27527 (Int Context!13020) Context!13020)

(assert (=> d!2201415 (= res!2877231 (= lt!2527893 (dynLambda!27527 lambda!418182 lt!2528006)))))

(declare-fun choose!53606 ((Set Context!13020) Int Context!13020) Context!13020)

(assert (=> d!2201415 (= lt!2528006 (choose!53606 z1!570 lambda!418182 lt!2527893))))

(declare-fun map!15828 ((Set Context!13020) Int) (Set Context!13020))

(assert (=> d!2201415 (set.member lt!2527893 (map!15828 z1!570 lambda!418182))))

(assert (=> d!2201415 (= (mapPost2!355 z1!570 lambda!418182 lt!2527893) lt!2528006)))

(declare-fun b!7047890 () Bool)

(assert (=> b!7047890 (= e!4236915 (set.member lt!2528006 z1!570))))

(assert (= (and d!2201415 res!2877231) b!7047890))

(declare-fun b_lambda!267861 () Bool)

(assert (=> (not b_lambda!267861) (not d!2201415)))

(declare-fun m!7762570 () Bool)

(assert (=> d!2201415 m!7762570))

(declare-fun m!7762572 () Bool)

(assert (=> d!2201415 m!7762572))

(declare-fun m!7762574 () Bool)

(assert (=> d!2201415 m!7762574))

(declare-fun m!7762576 () Bool)

(assert (=> d!2201415 m!7762576))

(declare-fun m!7762578 () Bool)

(assert (=> b!7047890 m!7762578))

(assert (=> b!7047777 d!2201415))

(declare-fun bs!1875171 () Bool)

(declare-fun d!2201417 () Bool)

(assert (= bs!1875171 (and d!2201417 b!7047777)))

(declare-fun lambda!418216 () Int)

(assert (=> bs!1875171 (= lambda!418216 lambda!418183)))

(assert (=> d!2201417 (= (inv!86645 setElem!49505) (forall!16449 (exprs!7010 setElem!49505) lambda!418216))))

(declare-fun bs!1875172 () Bool)

(assert (= bs!1875172 d!2201417))

(declare-fun m!7762580 () Bool)

(assert (=> bs!1875172 m!7762580))

(assert (=> setNonEmpty!49505 d!2201417))

(declare-fun b!7047900 () Bool)

(declare-fun e!4236921 () List!68071)

(assert (=> b!7047900 (= e!4236921 (Cons!67947 (h!74395 (_1!37382 lt!2527897)) (++!15600 (t!381848 (_1!37382 lt!2527897)) (_2!37382 lt!2527897))))))

(declare-fun d!2201419 () Bool)

(declare-fun e!4236920 () Bool)

(assert (=> d!2201419 e!4236920))

(declare-fun res!2877236 () Bool)

(assert (=> d!2201419 (=> (not res!2877236) (not e!4236920))))

(declare-fun lt!2528009 () List!68071)

(declare-fun content!13626 (List!68071) (Set C!35298))

(assert (=> d!2201419 (= res!2877236 (= (content!13626 lt!2528009) (set.union (content!13626 (_1!37382 lt!2527897)) (content!13626 (_2!37382 lt!2527897)))))))

(assert (=> d!2201419 (= lt!2528009 e!4236921)))

(declare-fun c!1312528 () Bool)

(assert (=> d!2201419 (= c!1312528 (is-Nil!67947 (_1!37382 lt!2527897)))))

(assert (=> d!2201419 (= (++!15600 (_1!37382 lt!2527897) (_2!37382 lt!2527897)) lt!2528009)))

(declare-fun b!7047902 () Bool)

(assert (=> b!7047902 (= e!4236920 (or (not (= (_2!37382 lt!2527897) Nil!67947)) (= lt!2528009 (_1!37382 lt!2527897))))))

(declare-fun b!7047899 () Bool)

(assert (=> b!7047899 (= e!4236921 (_2!37382 lt!2527897))))

(declare-fun b!7047901 () Bool)

(declare-fun res!2877237 () Bool)

(assert (=> b!7047901 (=> (not res!2877237) (not e!4236920))))

(declare-fun size!41121 (List!68071) Int)

(assert (=> b!7047901 (= res!2877237 (= (size!41121 lt!2528009) (+ (size!41121 (_1!37382 lt!2527897)) (size!41121 (_2!37382 lt!2527897)))))))

(assert (= (and d!2201419 c!1312528) b!7047899))

(assert (= (and d!2201419 (not c!1312528)) b!7047900))

(assert (= (and d!2201419 res!2877236) b!7047901))

(assert (= (and b!7047901 res!2877237) b!7047902))

(declare-fun m!7762582 () Bool)

(assert (=> b!7047900 m!7762582))

(declare-fun m!7762584 () Bool)

(assert (=> d!2201419 m!7762584))

(declare-fun m!7762586 () Bool)

(assert (=> d!2201419 m!7762586))

(declare-fun m!7762588 () Bool)

(assert (=> d!2201419 m!7762588))

(declare-fun m!7762590 () Bool)

(assert (=> b!7047901 m!7762590))

(declare-fun m!7762592 () Bool)

(assert (=> b!7047901 m!7762592))

(declare-fun m!7762594 () Bool)

(assert (=> b!7047901 m!7762594))

(assert (=> b!7047778 d!2201419))

(declare-fun d!2201421 () Bool)

(assert (=> d!2201421 (= (isEmpty!39663 (exprs!7010 lt!2527894)) (is-Nil!67946 (exprs!7010 lt!2527894)))))

(assert (=> b!7047779 d!2201421))

(declare-fun d!2201423 () Bool)

(declare-fun c!1312529 () Bool)

(assert (=> d!2201423 (= c!1312529 (isEmpty!39665 (t!381848 s!7408)))))

(declare-fun e!4236922 () Bool)

(assert (=> d!2201423 (= (matchZipper!3054 lt!2527881 (t!381848 s!7408)) e!4236922)))

(declare-fun b!7047903 () Bool)

(assert (=> b!7047903 (= e!4236922 (nullableZipper!2616 lt!2527881))))

(declare-fun b!7047904 () Bool)

(assert (=> b!7047904 (= e!4236922 (matchZipper!3054 (derivationStepZipper!2970 lt!2527881 (head!14313 (t!381848 s!7408))) (tail!13642 (t!381848 s!7408))))))

(assert (= (and d!2201423 c!1312529) b!7047903))

(assert (= (and d!2201423 (not c!1312529)) b!7047904))

(declare-fun m!7762596 () Bool)

(assert (=> d!2201423 m!7762596))

(declare-fun m!7762598 () Bool)

(assert (=> b!7047903 m!7762598))

(declare-fun m!7762600 () Bool)

(assert (=> b!7047904 m!7762600))

(assert (=> b!7047904 m!7762600))

(declare-fun m!7762602 () Bool)

(assert (=> b!7047904 m!7762602))

(declare-fun m!7762604 () Bool)

(assert (=> b!7047904 m!7762604))

(assert (=> b!7047904 m!7762602))

(assert (=> b!7047904 m!7762604))

(declare-fun m!7762606 () Bool)

(assert (=> b!7047904 m!7762606))

(assert (=> b!7047781 d!2201423))

(declare-fun d!2201425 () Bool)

(declare-fun c!1312543 () Bool)

(assert (=> d!2201425 (= c!1312543 (and (is-ElementMatch!17514 (h!74394 (exprs!7010 lt!2527894))) (= (c!1312500 (h!74394 (exprs!7010 lt!2527894))) (h!74395 s!7408))))))

(declare-fun e!4236935 () (Set Context!13020))

(assert (=> d!2201425 (= (derivationStepZipperDown!2178 (h!74394 (exprs!7010 lt!2527894)) (Context!13021 (++!15599 lt!2527896 (exprs!7010 ct2!306))) (h!74395 s!7408)) e!4236935)))

(declare-fun call!640396 () List!68070)

(declare-fun c!1312540 () Bool)

(declare-fun bm!640390 () Bool)

(declare-fun c!1312544 () Bool)

(declare-fun $colon$colon!2609 (List!68070 Regex!17514) List!68070)

(assert (=> bm!640390 (= call!640396 ($colon$colon!2609 (exprs!7010 (Context!13021 (++!15599 lt!2527896 (exprs!7010 ct2!306)))) (ite (or c!1312544 c!1312540) (regTwo!35540 (h!74394 (exprs!7010 lt!2527894))) (h!74394 (exprs!7010 lt!2527894)))))))

(declare-fun b!7047927 () Bool)

(declare-fun e!4236936 () (Set Context!13020))

(declare-fun e!4236937 () (Set Context!13020))

(assert (=> b!7047927 (= e!4236936 e!4236937)))

(assert (=> b!7047927 (= c!1312540 (is-Concat!26359 (h!74394 (exprs!7010 lt!2527894))))))

(declare-fun bm!640391 () Bool)

(declare-fun call!640398 () List!68070)

(assert (=> bm!640391 (= call!640398 call!640396)))

(declare-fun b!7047928 () Bool)

(declare-fun e!4236938 () Bool)

(assert (=> b!7047928 (= e!4236938 (nullable!7225 (regOne!35540 (h!74394 (exprs!7010 lt!2527894)))))))

(declare-fun bm!640392 () Bool)

(declare-fun call!640399 () (Set Context!13020))

(declare-fun c!1312542 () Bool)

(assert (=> bm!640392 (= call!640399 (derivationStepZipperDown!2178 (ite c!1312542 (regTwo!35541 (h!74394 (exprs!7010 lt!2527894))) (regOne!35540 (h!74394 (exprs!7010 lt!2527894)))) (ite c!1312542 (Context!13021 (++!15599 lt!2527896 (exprs!7010 ct2!306))) (Context!13021 call!640396)) (h!74395 s!7408)))))

(declare-fun b!7047929 () Bool)

(declare-fun call!640395 () (Set Context!13020))

(assert (=> b!7047929 (= e!4236936 (set.union call!640399 call!640395))))

(declare-fun b!7047930 () Bool)

(declare-fun e!4236939 () (Set Context!13020))

(declare-fun call!640400 () (Set Context!13020))

(assert (=> b!7047930 (= e!4236939 call!640400)))

(declare-fun b!7047931 () Bool)

(declare-fun e!4236940 () (Set Context!13020))

(assert (=> b!7047931 (= e!4236935 e!4236940)))

(assert (=> b!7047931 (= c!1312542 (is-Union!17514 (h!74394 (exprs!7010 lt!2527894))))))

(declare-fun b!7047932 () Bool)

(assert (=> b!7047932 (= e!4236939 (as set.empty (Set Context!13020)))))

(declare-fun b!7047933 () Bool)

(assert (=> b!7047933 (= e!4236935 (set.insert (Context!13021 (++!15599 lt!2527896 (exprs!7010 ct2!306))) (as set.empty (Set Context!13020))))))

(declare-fun b!7047934 () Bool)

(assert (=> b!7047934 (= c!1312544 e!4236938)))

(declare-fun res!2877241 () Bool)

(assert (=> b!7047934 (=> (not res!2877241) (not e!4236938))))

(assert (=> b!7047934 (= res!2877241 (is-Concat!26359 (h!74394 (exprs!7010 lt!2527894))))))

(assert (=> b!7047934 (= e!4236940 e!4236936)))

(declare-fun bm!640393 () Bool)

(declare-fun call!640397 () (Set Context!13020))

(assert (=> bm!640393 (= call!640395 call!640397)))

(declare-fun b!7047935 () Bool)

(declare-fun c!1312541 () Bool)

(assert (=> b!7047935 (= c!1312541 (is-Star!17514 (h!74394 (exprs!7010 lt!2527894))))))

(assert (=> b!7047935 (= e!4236937 e!4236939)))

(declare-fun b!7047936 () Bool)

(assert (=> b!7047936 (= e!4236937 call!640400)))

(declare-fun bm!640394 () Bool)

(assert (=> bm!640394 (= call!640400 call!640395)))

(declare-fun bm!640395 () Bool)

(assert (=> bm!640395 (= call!640397 (derivationStepZipperDown!2178 (ite c!1312542 (regOne!35541 (h!74394 (exprs!7010 lt!2527894))) (ite c!1312544 (regTwo!35540 (h!74394 (exprs!7010 lt!2527894))) (ite c!1312540 (regOne!35540 (h!74394 (exprs!7010 lt!2527894))) (reg!17843 (h!74394 (exprs!7010 lt!2527894)))))) (ite (or c!1312542 c!1312544) (Context!13021 (++!15599 lt!2527896 (exprs!7010 ct2!306))) (Context!13021 call!640398)) (h!74395 s!7408)))))

(declare-fun b!7047937 () Bool)

(assert (=> b!7047937 (= e!4236940 (set.union call!640397 call!640399))))

(assert (= (and d!2201425 c!1312543) b!7047933))

(assert (= (and d!2201425 (not c!1312543)) b!7047931))

(assert (= (and b!7047931 c!1312542) b!7047937))

(assert (= (and b!7047931 (not c!1312542)) b!7047934))

(assert (= (and b!7047934 res!2877241) b!7047928))

(assert (= (and b!7047934 c!1312544) b!7047929))

(assert (= (and b!7047934 (not c!1312544)) b!7047927))

(assert (= (and b!7047927 c!1312540) b!7047936))

(assert (= (and b!7047927 (not c!1312540)) b!7047935))

(assert (= (and b!7047935 c!1312541) b!7047930))

(assert (= (and b!7047935 (not c!1312541)) b!7047932))

(assert (= (or b!7047936 b!7047930) bm!640391))

(assert (= (or b!7047936 b!7047930) bm!640394))

(assert (= (or b!7047929 bm!640394) bm!640393))

(assert (= (or b!7047929 bm!640391) bm!640390))

(assert (= (or b!7047937 bm!640393) bm!640395))

(assert (= (or b!7047937 b!7047929) bm!640392))

(declare-fun m!7762608 () Bool)

(assert (=> b!7047933 m!7762608))

(declare-fun m!7762610 () Bool)

(assert (=> bm!640390 m!7762610))

(declare-fun m!7762612 () Bool)

(assert (=> bm!640395 m!7762612))

(declare-fun m!7762614 () Bool)

(assert (=> bm!640392 m!7762614))

(declare-fun m!7762616 () Bool)

(assert (=> b!7047928 m!7762616))

(assert (=> b!7047781 d!2201425))

(declare-fun d!2201427 () Bool)

(declare-fun e!4236942 () Bool)

(assert (=> d!2201427 e!4236942))

(declare-fun res!2877243 () Bool)

(assert (=> d!2201427 (=> (not res!2877243) (not e!4236942))))

(declare-fun lt!2528010 () List!68070)

(assert (=> d!2201427 (= res!2877243 (= (content!13625 lt!2528010) (set.union (content!13625 lt!2527896) (content!13625 (exprs!7010 ct2!306)))))))

(declare-fun e!4236941 () List!68070)

(assert (=> d!2201427 (= lt!2528010 e!4236941)))

(declare-fun c!1312545 () Bool)

(assert (=> d!2201427 (= c!1312545 (is-Nil!67946 lt!2527896))))

(assert (=> d!2201427 (= (++!15599 lt!2527896 (exprs!7010 ct2!306)) lt!2528010)))

(declare-fun b!7047938 () Bool)

(assert (=> b!7047938 (= e!4236941 (exprs!7010 ct2!306))))

(declare-fun b!7047941 () Bool)

(assert (=> b!7047941 (= e!4236942 (or (not (= (exprs!7010 ct2!306) Nil!67946)) (= lt!2528010 lt!2527896)))))

(declare-fun b!7047939 () Bool)

(assert (=> b!7047939 (= e!4236941 (Cons!67946 (h!74394 lt!2527896) (++!15599 (t!381847 lt!2527896) (exprs!7010 ct2!306))))))

(declare-fun b!7047940 () Bool)

(declare-fun res!2877242 () Bool)

(assert (=> b!7047940 (=> (not res!2877242) (not e!4236942))))

(assert (=> b!7047940 (= res!2877242 (= (size!41120 lt!2528010) (+ (size!41120 lt!2527896) (size!41120 (exprs!7010 ct2!306)))))))

(assert (= (and d!2201427 c!1312545) b!7047938))

(assert (= (and d!2201427 (not c!1312545)) b!7047939))

(assert (= (and d!2201427 res!2877243) b!7047940))

(assert (= (and b!7047940 res!2877242) b!7047941))

(declare-fun m!7762618 () Bool)

(assert (=> d!2201427 m!7762618))

(declare-fun m!7762620 () Bool)

(assert (=> d!2201427 m!7762620))

(assert (=> d!2201427 m!7762560))

(declare-fun m!7762622 () Bool)

(assert (=> b!7047939 m!7762622))

(declare-fun m!7762624 () Bool)

(assert (=> b!7047940 m!7762624))

(declare-fun m!7762626 () Bool)

(assert (=> b!7047940 m!7762626))

(assert (=> b!7047940 m!7762568))

(assert (=> b!7047781 d!2201427))

(declare-fun d!2201429 () Bool)

(assert (=> d!2201429 (forall!16449 (++!15599 lt!2527896 (exprs!7010 ct2!306)) lambda!418183)))

(declare-fun lt!2528011 () Unit!161714)

(assert (=> d!2201429 (= lt!2528011 (choose!53605 lt!2527896 (exprs!7010 ct2!306) lambda!418183))))

(assert (=> d!2201429 (forall!16449 lt!2527896 lambda!418183)))

(assert (=> d!2201429 (= (lemmaConcatPreservesForall!835 lt!2527896 (exprs!7010 ct2!306) lambda!418183) lt!2528011)))

(declare-fun bs!1875173 () Bool)

(assert (= bs!1875173 d!2201429))

(assert (=> bs!1875173 m!7762366))

(assert (=> bs!1875173 m!7762366))

(declare-fun m!7762628 () Bool)

(assert (=> bs!1875173 m!7762628))

(declare-fun m!7762630 () Bool)

(assert (=> bs!1875173 m!7762630))

(declare-fun m!7762632 () Bool)

(assert (=> bs!1875173 m!7762632))

(assert (=> b!7047781 d!2201429))

(declare-fun d!2201431 () Bool)

(declare-fun nullableFct!2761 (Regex!17514) Bool)

(assert (=> d!2201431 (= (nullable!7225 (h!74394 (exprs!7010 lt!2527894))) (nullableFct!2761 (h!74394 (exprs!7010 lt!2527894))))))

(declare-fun bs!1875174 () Bool)

(assert (= bs!1875174 d!2201431))

(declare-fun m!7762634 () Bool)

(assert (=> bs!1875174 m!7762634))

(assert (=> b!7047782 d!2201431))

(declare-fun d!2201433 () Bool)

(assert (=> d!2201433 (= (tail!13640 (exprs!7010 lt!2527894)) (t!381847 (exprs!7010 lt!2527894)))))

(assert (=> b!7047782 d!2201433))

(declare-fun bs!1875175 () Bool)

(declare-fun d!2201435 () Bool)

(assert (= bs!1875175 (and d!2201435 b!7047783)))

(declare-fun lambda!418219 () Int)

(assert (=> bs!1875175 (= lambda!418219 lambda!418181)))

(assert (=> d!2201435 true))

(assert (=> d!2201435 (exists!3475 lt!2527882 lambda!418219)))

(declare-fun lt!2528014 () Unit!161714)

(declare-fun choose!53607 (List!68072 List!68071) Unit!161714)

(assert (=> d!2201435 (= lt!2528014 (choose!53607 lt!2527882 s!7408))))

(declare-fun content!13627 (List!68072) (Set Context!13020))

(assert (=> d!2201435 (matchZipper!3054 (content!13627 lt!2527882) s!7408)))

(assert (=> d!2201435 (= (lemmaZipperMatchesExistsMatchingContext!453 lt!2527882 s!7408) lt!2528014)))

(declare-fun bs!1875176 () Bool)

(assert (= bs!1875176 d!2201435))

(declare-fun m!7762636 () Bool)

(assert (=> bs!1875176 m!7762636))

(declare-fun m!7762638 () Bool)

(assert (=> bs!1875176 m!7762638))

(declare-fun m!7762640 () Bool)

(assert (=> bs!1875176 m!7762640))

(assert (=> bs!1875176 m!7762640))

(declare-fun m!7762642 () Bool)

(assert (=> bs!1875176 m!7762642))

(assert (=> b!7047783 d!2201435))

(declare-fun bs!1875177 () Bool)

(declare-fun d!2201437 () Bool)

(assert (= bs!1875177 (and d!2201437 b!7047783)))

(declare-fun lambda!418222 () Int)

(assert (=> bs!1875177 (not (= lambda!418222 lambda!418181))))

(declare-fun bs!1875178 () Bool)

(assert (= bs!1875178 (and d!2201437 d!2201435)))

(assert (=> bs!1875178 (not (= lambda!418222 lambda!418219))))

(assert (=> d!2201437 true))

(declare-fun order!28249 () Int)

(declare-fun dynLambda!27528 (Int Int) Int)

(assert (=> d!2201437 (< (dynLambda!27528 order!28249 lambda!418181) (dynLambda!27528 order!28249 lambda!418222))))

(declare-fun forall!16450 (List!68072 Int) Bool)

(assert (=> d!2201437 (= (exists!3475 lt!2527882 lambda!418181) (not (forall!16450 lt!2527882 lambda!418222)))))

(declare-fun bs!1875179 () Bool)

(assert (= bs!1875179 d!2201437))

(declare-fun m!7762644 () Bool)

(assert (=> bs!1875179 m!7762644))

(assert (=> b!7047783 d!2201437))

(declare-fun d!2201439 () Bool)

(declare-fun c!1312548 () Bool)

(assert (=> d!2201439 (= c!1312548 (isEmpty!39665 s!7408))))

(declare-fun e!4236943 () Bool)

(assert (=> d!2201439 (= (matchZipper!3054 lt!2527889 s!7408) e!4236943)))

(declare-fun b!7047944 () Bool)

(assert (=> b!7047944 (= e!4236943 (nullableZipper!2616 lt!2527889))))

(declare-fun b!7047945 () Bool)

(assert (=> b!7047945 (= e!4236943 (matchZipper!3054 (derivationStepZipper!2970 lt!2527889 (head!14313 s!7408)) (tail!13642 s!7408)))))

(assert (= (and d!2201439 c!1312548) b!7047944))

(assert (= (and d!2201439 (not c!1312548)) b!7047945))

(declare-fun m!7762646 () Bool)

(assert (=> d!2201439 m!7762646))

(declare-fun m!7762648 () Bool)

(assert (=> b!7047944 m!7762648))

(declare-fun m!7762650 () Bool)

(assert (=> b!7047945 m!7762650))

(assert (=> b!7047945 m!7762650))

(declare-fun m!7762652 () Bool)

(assert (=> b!7047945 m!7762652))

(declare-fun m!7762654 () Bool)

(assert (=> b!7047945 m!7762654))

(assert (=> b!7047945 m!7762652))

(assert (=> b!7047945 m!7762654))

(declare-fun m!7762656 () Bool)

(assert (=> b!7047945 m!7762656))

(assert (=> b!7047783 d!2201439))

(declare-fun d!2201441 () Bool)

(declare-fun e!4236946 () Bool)

(assert (=> d!2201441 e!4236946))

(declare-fun res!2877246 () Bool)

(assert (=> d!2201441 (=> (not res!2877246) (not e!4236946))))

(declare-fun lt!2528017 () List!68072)

(declare-fun noDuplicate!2661 (List!68072) Bool)

(assert (=> d!2201441 (= res!2877246 (noDuplicate!2661 lt!2528017))))

(declare-fun choose!53608 ((Set Context!13020)) List!68072)

(assert (=> d!2201441 (= lt!2528017 (choose!53608 lt!2527885))))

(assert (=> d!2201441 (= (toList!10857 lt!2527885) lt!2528017)))

(declare-fun b!7047948 () Bool)

(assert (=> b!7047948 (= e!4236946 (= (content!13627 lt!2528017) lt!2527885))))

(assert (= (and d!2201441 res!2877246) b!7047948))

(declare-fun m!7762658 () Bool)

(assert (=> d!2201441 m!7762658))

(declare-fun m!7762660 () Bool)

(assert (=> d!2201441 m!7762660))

(declare-fun m!7762662 () Bool)

(assert (=> b!7047948 m!7762662))

(assert (=> b!7047783 d!2201441))

(declare-fun d!2201443 () Bool)

(declare-fun e!4236949 () Bool)

(assert (=> d!2201443 e!4236949))

(declare-fun res!2877249 () Bool)

(assert (=> d!2201443 (=> (not res!2877249) (not e!4236949))))

(declare-fun lt!2528020 () Context!13020)

(declare-fun dynLambda!27529 (Int Context!13020) Bool)

(assert (=> d!2201443 (= res!2877249 (dynLambda!27529 lambda!418181 lt!2528020))))

(declare-fun getWitness!1556 (List!68072 Int) Context!13020)

(assert (=> d!2201443 (= lt!2528020 (getWitness!1556 (toList!10857 lt!2527885) lambda!418181))))

(declare-fun exists!3477 ((Set Context!13020) Int) Bool)

(assert (=> d!2201443 (exists!3477 lt!2527885 lambda!418181)))

(assert (=> d!2201443 (= (getWitness!1554 lt!2527885 lambda!418181) lt!2528020)))

(declare-fun b!7047951 () Bool)

(assert (=> b!7047951 (= e!4236949 (set.member lt!2528020 lt!2527885))))

(assert (= (and d!2201443 res!2877249) b!7047951))

(declare-fun b_lambda!267863 () Bool)

(assert (=> (not b_lambda!267863) (not d!2201443)))

(declare-fun m!7762664 () Bool)

(assert (=> d!2201443 m!7762664))

(assert (=> d!2201443 m!7762418))

(assert (=> d!2201443 m!7762418))

(declare-fun m!7762666 () Bool)

(assert (=> d!2201443 m!7762666))

(declare-fun m!7762668 () Bool)

(assert (=> d!2201443 m!7762668))

(declare-fun m!7762670 () Bool)

(assert (=> b!7047951 m!7762670))

(assert (=> b!7047783 d!2201443))

(declare-fun d!2201445 () Bool)

(assert (=> d!2201445 (= (flatMap!2461 lt!2527895 lambda!418184) (dynLambda!27526 lambda!418184 lt!2527903))))

(declare-fun lt!2528021 () Unit!161714)

(assert (=> d!2201445 (= lt!2528021 (choose!53604 lt!2527895 lt!2527903 lambda!418184))))

(assert (=> d!2201445 (= lt!2527895 (set.insert lt!2527903 (as set.empty (Set Context!13020))))))

(assert (=> d!2201445 (= (lemmaFlatMapOnSingletonSet!1975 lt!2527895 lt!2527903 lambda!418184) lt!2528021)))

(declare-fun b_lambda!267865 () Bool)

(assert (=> (not b_lambda!267865) (not d!2201445)))

(declare-fun bs!1875180 () Bool)

(assert (= bs!1875180 d!2201445))

(assert (=> bs!1875180 m!7762436))

(declare-fun m!7762672 () Bool)

(assert (=> bs!1875180 m!7762672))

(declare-fun m!7762674 () Bool)

(assert (=> bs!1875180 m!7762674))

(assert (=> bs!1875180 m!7762416))

(assert (=> b!7047773 d!2201445))

(declare-fun bs!1875181 () Bool)

(declare-fun d!2201447 () Bool)

(assert (= bs!1875181 (and d!2201447 b!7047773)))

(declare-fun lambda!418223 () Int)

(assert (=> bs!1875181 (= lambda!418223 lambda!418184)))

(declare-fun bs!1875182 () Bool)

(assert (= bs!1875182 (and d!2201447 d!2201407)))

(assert (=> bs!1875182 (= lambda!418223 lambda!418213)))

(assert (=> d!2201447 true))

(assert (=> d!2201447 (= (derivationStepZipper!2970 lt!2527895 (h!74395 s!7408)) (flatMap!2461 lt!2527895 lambda!418223))))

(declare-fun bs!1875183 () Bool)

(assert (= bs!1875183 d!2201447))

(declare-fun m!7762676 () Bool)

(assert (=> bs!1875183 m!7762676))

(assert (=> b!7047773 d!2201447))

(declare-fun e!4236951 () (Set Context!13020))

(declare-fun b!7047952 () Bool)

(declare-fun call!640401 () (Set Context!13020))

(assert (=> b!7047952 (= e!4236951 (set.union call!640401 (derivationStepZipperUp!2124 (Context!13021 (t!381847 (exprs!7010 lt!2527903))) (h!74395 s!7408))))))

(declare-fun b!7047953 () Bool)

(declare-fun e!4236952 () (Set Context!13020))

(assert (=> b!7047953 (= e!4236951 e!4236952)))

(declare-fun c!1312550 () Bool)

(assert (=> b!7047953 (= c!1312550 (is-Cons!67946 (exprs!7010 lt!2527903)))))

(declare-fun b!7047954 () Bool)

(declare-fun e!4236950 () Bool)

(assert (=> b!7047954 (= e!4236950 (nullable!7225 (h!74394 (exprs!7010 lt!2527903))))))

(declare-fun bm!640396 () Bool)

(assert (=> bm!640396 (= call!640401 (derivationStepZipperDown!2178 (h!74394 (exprs!7010 lt!2527903)) (Context!13021 (t!381847 (exprs!7010 lt!2527903))) (h!74395 s!7408)))))

(declare-fun b!7047955 () Bool)

(assert (=> b!7047955 (= e!4236952 call!640401)))

(declare-fun b!7047956 () Bool)

(assert (=> b!7047956 (= e!4236952 (as set.empty (Set Context!13020)))))

(declare-fun d!2201449 () Bool)

(declare-fun c!1312549 () Bool)

(assert (=> d!2201449 (= c!1312549 e!4236950)))

(declare-fun res!2877250 () Bool)

(assert (=> d!2201449 (=> (not res!2877250) (not e!4236950))))

(assert (=> d!2201449 (= res!2877250 (is-Cons!67946 (exprs!7010 lt!2527903)))))

(assert (=> d!2201449 (= (derivationStepZipperUp!2124 lt!2527903 (h!74395 s!7408)) e!4236951)))

(assert (= (and d!2201449 res!2877250) b!7047954))

(assert (= (and d!2201449 c!1312549) b!7047952))

(assert (= (and d!2201449 (not c!1312549)) b!7047953))

(assert (= (and b!7047953 c!1312550) b!7047955))

(assert (= (and b!7047953 (not c!1312550)) b!7047956))

(assert (= (or b!7047952 b!7047955) bm!640396))

(declare-fun m!7762678 () Bool)

(assert (=> b!7047952 m!7762678))

(declare-fun m!7762680 () Bool)

(assert (=> b!7047954 m!7762680))

(declare-fun m!7762682 () Bool)

(assert (=> bm!640396 m!7762682))

(assert (=> b!7047773 d!2201449))

(declare-fun d!2201451 () Bool)

(assert (=> d!2201451 (= (flatMap!2461 lt!2527895 lambda!418184) (choose!53603 lt!2527895 lambda!418184))))

(declare-fun bs!1875184 () Bool)

(assert (= bs!1875184 d!2201451))

(declare-fun m!7762684 () Bool)

(assert (=> bs!1875184 m!7762684))

(assert (=> b!7047773 d!2201451))

(assert (=> b!7047773 d!2201411))

(declare-fun d!2201453 () Bool)

(declare-fun c!1312551 () Bool)

(assert (=> d!2201453 (= c!1312551 (isEmpty!39665 s!7408))))

(declare-fun e!4236953 () Bool)

(assert (=> d!2201453 (= (matchZipper!3054 lt!2527885 s!7408) e!4236953)))

(declare-fun b!7047957 () Bool)

(assert (=> b!7047957 (= e!4236953 (nullableZipper!2616 lt!2527885))))

(declare-fun b!7047958 () Bool)

(assert (=> b!7047958 (= e!4236953 (matchZipper!3054 (derivationStepZipper!2970 lt!2527885 (head!14313 s!7408)) (tail!13642 s!7408)))))

(assert (= (and d!2201453 c!1312551) b!7047957))

(assert (= (and d!2201453 (not c!1312551)) b!7047958))

(assert (=> d!2201453 m!7762646))

(declare-fun m!7762686 () Bool)

(assert (=> b!7047957 m!7762686))

(assert (=> b!7047958 m!7762650))

(assert (=> b!7047958 m!7762650))

(declare-fun m!7762688 () Bool)

(assert (=> b!7047958 m!7762688))

(assert (=> b!7047958 m!7762654))

(assert (=> b!7047958 m!7762688))

(assert (=> b!7047958 m!7762654))

(declare-fun m!7762690 () Bool)

(assert (=> b!7047958 m!7762690))

(assert (=> start!682444 d!2201453))

(declare-fun bs!1875185 () Bool)

(declare-fun d!2201455 () Bool)

(assert (= bs!1875185 (and d!2201455 b!7047777)))

(declare-fun lambda!418228 () Int)

(assert (=> bs!1875185 (= lambda!418228 lambda!418182)))

(assert (=> d!2201455 true))

(assert (=> d!2201455 (= (appendTo!635 z1!570 ct2!306) (map!15828 z1!570 lambda!418228))))

(declare-fun bs!1875186 () Bool)

(assert (= bs!1875186 d!2201455))

(declare-fun m!7762692 () Bool)

(assert (=> bs!1875186 m!7762692))

(assert (=> start!682444 d!2201455))

(declare-fun bs!1875187 () Bool)

(declare-fun d!2201459 () Bool)

(assert (= bs!1875187 (and d!2201459 b!7047777)))

(declare-fun lambda!418229 () Int)

(assert (=> bs!1875187 (= lambda!418229 lambda!418183)))

(declare-fun bs!1875188 () Bool)

(assert (= bs!1875188 (and d!2201459 d!2201417)))

(assert (=> bs!1875188 (= lambda!418229 lambda!418216)))

(assert (=> d!2201459 (= (inv!86645 ct2!306) (forall!16449 (exprs!7010 ct2!306) lambda!418229))))

(declare-fun bs!1875189 () Bool)

(assert (= bs!1875189 d!2201459))

(declare-fun m!7762694 () Bool)

(assert (=> bs!1875189 m!7762694))

(assert (=> start!682444 d!2201459))

(declare-fun d!2201461 () Bool)

(declare-fun c!1312556 () Bool)

(assert (=> d!2201461 (= c!1312556 (and (is-ElementMatch!17514 (h!74394 (exprs!7010 lt!2527894))) (= (c!1312500 (h!74394 (exprs!7010 lt!2527894))) (h!74395 s!7408))))))

(declare-fun e!4236954 () (Set Context!13020))

(assert (=> d!2201461 (= (derivationStepZipperDown!2178 (h!74394 (exprs!7010 lt!2527894)) lt!2527907 (h!74395 s!7408)) e!4236954)))

(declare-fun call!640403 () List!68070)

(declare-fun c!1312553 () Bool)

(declare-fun bm!640397 () Bool)

(declare-fun c!1312557 () Bool)

(assert (=> bm!640397 (= call!640403 ($colon$colon!2609 (exprs!7010 lt!2527907) (ite (or c!1312557 c!1312553) (regTwo!35540 (h!74394 (exprs!7010 lt!2527894))) (h!74394 (exprs!7010 lt!2527894)))))))

(declare-fun b!7047959 () Bool)

(declare-fun e!4236955 () (Set Context!13020))

(declare-fun e!4236956 () (Set Context!13020))

(assert (=> b!7047959 (= e!4236955 e!4236956)))

(assert (=> b!7047959 (= c!1312553 (is-Concat!26359 (h!74394 (exprs!7010 lt!2527894))))))

(declare-fun bm!640398 () Bool)

(declare-fun call!640405 () List!68070)

(assert (=> bm!640398 (= call!640405 call!640403)))

(declare-fun b!7047960 () Bool)

(declare-fun e!4236957 () Bool)

(assert (=> b!7047960 (= e!4236957 (nullable!7225 (regOne!35540 (h!74394 (exprs!7010 lt!2527894)))))))

(declare-fun call!640406 () (Set Context!13020))

(declare-fun bm!640399 () Bool)

(declare-fun c!1312555 () Bool)

(assert (=> bm!640399 (= call!640406 (derivationStepZipperDown!2178 (ite c!1312555 (regTwo!35541 (h!74394 (exprs!7010 lt!2527894))) (regOne!35540 (h!74394 (exprs!7010 lt!2527894)))) (ite c!1312555 lt!2527907 (Context!13021 call!640403)) (h!74395 s!7408)))))

(declare-fun b!7047961 () Bool)

(declare-fun call!640402 () (Set Context!13020))

(assert (=> b!7047961 (= e!4236955 (set.union call!640406 call!640402))))

(declare-fun b!7047962 () Bool)

(declare-fun e!4236958 () (Set Context!13020))

(declare-fun call!640407 () (Set Context!13020))

(assert (=> b!7047962 (= e!4236958 call!640407)))

(declare-fun b!7047963 () Bool)

(declare-fun e!4236959 () (Set Context!13020))

(assert (=> b!7047963 (= e!4236954 e!4236959)))

(assert (=> b!7047963 (= c!1312555 (is-Union!17514 (h!74394 (exprs!7010 lt!2527894))))))

(declare-fun b!7047964 () Bool)

(assert (=> b!7047964 (= e!4236958 (as set.empty (Set Context!13020)))))

(declare-fun b!7047965 () Bool)

(assert (=> b!7047965 (= e!4236954 (set.insert lt!2527907 (as set.empty (Set Context!13020))))))

(declare-fun b!7047966 () Bool)

(assert (=> b!7047966 (= c!1312557 e!4236957)))

(declare-fun res!2877251 () Bool)

(assert (=> b!7047966 (=> (not res!2877251) (not e!4236957))))

(assert (=> b!7047966 (= res!2877251 (is-Concat!26359 (h!74394 (exprs!7010 lt!2527894))))))

(assert (=> b!7047966 (= e!4236959 e!4236955)))

(declare-fun bm!640400 () Bool)

(declare-fun call!640404 () (Set Context!13020))

(assert (=> bm!640400 (= call!640402 call!640404)))

(declare-fun b!7047967 () Bool)

(declare-fun c!1312554 () Bool)

(assert (=> b!7047967 (= c!1312554 (is-Star!17514 (h!74394 (exprs!7010 lt!2527894))))))

(assert (=> b!7047967 (= e!4236956 e!4236958)))

(declare-fun b!7047968 () Bool)

(assert (=> b!7047968 (= e!4236956 call!640407)))

(declare-fun bm!640401 () Bool)

(assert (=> bm!640401 (= call!640407 call!640402)))

(declare-fun bm!640402 () Bool)

(assert (=> bm!640402 (= call!640404 (derivationStepZipperDown!2178 (ite c!1312555 (regOne!35541 (h!74394 (exprs!7010 lt!2527894))) (ite c!1312557 (regTwo!35540 (h!74394 (exprs!7010 lt!2527894))) (ite c!1312553 (regOne!35540 (h!74394 (exprs!7010 lt!2527894))) (reg!17843 (h!74394 (exprs!7010 lt!2527894)))))) (ite (or c!1312555 c!1312557) lt!2527907 (Context!13021 call!640405)) (h!74395 s!7408)))))

(declare-fun b!7047969 () Bool)

(assert (=> b!7047969 (= e!4236959 (set.union call!640404 call!640406))))

(assert (= (and d!2201461 c!1312556) b!7047965))

(assert (= (and d!2201461 (not c!1312556)) b!7047963))

(assert (= (and b!7047963 c!1312555) b!7047969))

(assert (= (and b!7047963 (not c!1312555)) b!7047966))

(assert (= (and b!7047966 res!2877251) b!7047960))

(assert (= (and b!7047966 c!1312557) b!7047961))

(assert (= (and b!7047966 (not c!1312557)) b!7047959))

(assert (= (and b!7047959 c!1312553) b!7047968))

(assert (= (and b!7047959 (not c!1312553)) b!7047967))

(assert (= (and b!7047967 c!1312554) b!7047962))

(assert (= (and b!7047967 (not c!1312554)) b!7047964))

(assert (= (or b!7047968 b!7047962) bm!640398))

(assert (= (or b!7047968 b!7047962) bm!640401))

(assert (= (or b!7047961 bm!640401) bm!640400))

(assert (= (or b!7047961 bm!640398) bm!640397))

(assert (= (or b!7047969 bm!640400) bm!640402))

(assert (= (or b!7047969 b!7047961) bm!640399))

(declare-fun m!7762696 () Bool)

(assert (=> b!7047965 m!7762696))

(declare-fun m!7762698 () Bool)

(assert (=> bm!640397 m!7762698))

(declare-fun m!7762700 () Bool)

(assert (=> bm!640402 m!7762700))

(declare-fun m!7762702 () Bool)

(assert (=> bm!640399 m!7762702))

(assert (=> b!7047960 m!7762616))

(assert (=> b!7047784 d!2201461))

(declare-fun d!2201463 () Bool)

(declare-fun c!1312558 () Bool)

(assert (=> d!2201463 (= c!1312558 (isEmpty!39665 (_1!37382 lt!2527897)))))

(declare-fun e!4236960 () Bool)

(assert (=> d!2201463 (= (matchZipper!3054 lt!2527906 (_1!37382 lt!2527897)) e!4236960)))

(declare-fun b!7047970 () Bool)

(assert (=> b!7047970 (= e!4236960 (nullableZipper!2616 lt!2527906))))

(declare-fun b!7047971 () Bool)

(assert (=> b!7047971 (= e!4236960 (matchZipper!3054 (derivationStepZipper!2970 lt!2527906 (head!14313 (_1!37382 lt!2527897))) (tail!13642 (_1!37382 lt!2527897))))))

(assert (= (and d!2201463 c!1312558) b!7047970))

(assert (= (and d!2201463 (not c!1312558)) b!7047971))

(declare-fun m!7762704 () Bool)

(assert (=> d!2201463 m!7762704))

(declare-fun m!7762706 () Bool)

(assert (=> b!7047970 m!7762706))

(declare-fun m!7762708 () Bool)

(assert (=> b!7047971 m!7762708))

(assert (=> b!7047971 m!7762708))

(declare-fun m!7762710 () Bool)

(assert (=> b!7047971 m!7762710))

(declare-fun m!7762712 () Bool)

(assert (=> b!7047971 m!7762712))

(assert (=> b!7047971 m!7762710))

(assert (=> b!7047971 m!7762712))

(declare-fun m!7762714 () Bool)

(assert (=> b!7047971 m!7762714))

(assert (=> b!7047784 d!2201463))

(declare-fun d!2201465 () Bool)

(assert (=> d!2201465 (isDefined!13612 (findConcatSeparationZippers!427 lt!2527906 (set.insert ct2!306 (as set.empty (Set Context!13020))) Nil!67947 (t!381848 s!7408) (t!381848 s!7408)))))

(declare-fun lt!2528026 () Unit!161714)

(declare-fun choose!53609 ((Set Context!13020) Context!13020 List!68071) Unit!161714)

(assert (=> d!2201465 (= lt!2528026 (choose!53609 lt!2527906 ct2!306 (t!381848 s!7408)))))

(assert (=> d!2201465 (matchZipper!3054 (appendTo!635 lt!2527906 ct2!306) (t!381848 s!7408))))

(assert (=> d!2201465 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!415 lt!2527906 ct2!306 (t!381848 s!7408)) lt!2528026)))

(declare-fun bs!1875190 () Bool)

(assert (= bs!1875190 d!2201465))

(declare-fun m!7762716 () Bool)

(assert (=> bs!1875190 m!7762716))

(declare-fun m!7762718 () Bool)

(assert (=> bs!1875190 m!7762718))

(assert (=> bs!1875190 m!7762402))

(assert (=> bs!1875190 m!7762394))

(assert (=> bs!1875190 m!7762402))

(declare-fun m!7762720 () Bool)

(assert (=> bs!1875190 m!7762720))

(declare-fun m!7762722 () Bool)

(assert (=> bs!1875190 m!7762722))

(assert (=> bs!1875190 m!7762394))

(assert (=> bs!1875190 m!7762716))

(assert (=> b!7047784 d!2201465))

(declare-fun d!2201467 () Bool)

(assert (=> d!2201467 (= (get!23819 lt!2527888) (v!53200 lt!2527888))))

(assert (=> b!7047784 d!2201467))

(assert (=> b!7047784 d!2201429))

(declare-fun bs!1875193 () Bool)

(declare-fun d!2201469 () Bool)

(assert (= bs!1875193 (and d!2201469 b!7047777)))

(declare-fun lambda!418235 () Int)

(assert (=> bs!1875193 (= lambda!418235 lambda!418183)))

(declare-fun bs!1875194 () Bool)

(assert (= bs!1875194 (and d!2201469 d!2201417)))

(assert (=> bs!1875194 (= lambda!418235 lambda!418216)))

(declare-fun bs!1875195 () Bool)

(assert (= bs!1875195 (and d!2201469 d!2201459)))

(assert (=> bs!1875195 (= lambda!418235 lambda!418229)))

(assert (=> d!2201469 (= (derivationStepZipperDown!2178 (h!74394 (exprs!7010 lt!2527894)) (Context!13021 (++!15599 (exprs!7010 lt!2527907) (exprs!7010 ct2!306))) (h!74395 s!7408)) (appendTo!635 (derivationStepZipperDown!2178 (h!74394 (exprs!7010 lt!2527894)) lt!2527907 (h!74395 s!7408)) ct2!306))))

(declare-fun lt!2528032 () Unit!161714)

(assert (=> d!2201469 (= lt!2528032 (lemmaConcatPreservesForall!835 (exprs!7010 lt!2527907) (exprs!7010 ct2!306) lambda!418235))))

(declare-fun lt!2528031 () Unit!161714)

(declare-fun choose!53610 (Context!13020 Regex!17514 C!35298 Context!13020) Unit!161714)

(assert (=> d!2201469 (= lt!2528031 (choose!53610 lt!2527907 (h!74394 (exprs!7010 lt!2527894)) (h!74395 s!7408) ct2!306))))

(declare-fun validRegex!8953 (Regex!17514) Bool)

(assert (=> d!2201469 (validRegex!8953 (h!74394 (exprs!7010 lt!2527894)))))

(assert (=> d!2201469 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!91 lt!2527907 (h!74394 (exprs!7010 lt!2527894)) (h!74395 s!7408) ct2!306) lt!2528031)))

(declare-fun bs!1875196 () Bool)

(assert (= bs!1875196 d!2201469))

(declare-fun m!7762732 () Bool)

(assert (=> bs!1875196 m!7762732))

(declare-fun m!7762734 () Bool)

(assert (=> bs!1875196 m!7762734))

(declare-fun m!7762736 () Bool)

(assert (=> bs!1875196 m!7762736))

(declare-fun m!7762738 () Bool)

(assert (=> bs!1875196 m!7762738))

(declare-fun m!7762740 () Bool)

(assert (=> bs!1875196 m!7762740))

(assert (=> bs!1875196 m!7762408))

(assert (=> bs!1875196 m!7762408))

(declare-fun m!7762742 () Bool)

(assert (=> bs!1875196 m!7762742))

(assert (=> b!7047784 d!2201469))

(declare-fun bs!1875197 () Bool)

(declare-fun d!2201475 () Bool)

(assert (= bs!1875197 (and d!2201475 b!7047777)))

(declare-fun lambda!418236 () Int)

(assert (=> bs!1875197 (= lambda!418236 lambda!418182)))

(declare-fun bs!1875199 () Bool)

(assert (= bs!1875199 (and d!2201475 d!2201455)))

(assert (=> bs!1875199 (= lambda!418236 lambda!418228)))

(assert (=> d!2201475 true))

(assert (=> d!2201475 (= (appendTo!635 lt!2527906 ct2!306) (map!15828 lt!2527906 lambda!418236))))

(declare-fun bs!1875200 () Bool)

(assert (= bs!1875200 d!2201475))

(declare-fun m!7762746 () Bool)

(assert (=> bs!1875200 m!7762746))

(assert (=> b!7047784 d!2201475))

(declare-fun b!7048007 () Bool)

(declare-fun res!2877265 () Bool)

(declare-fun e!4236982 () Bool)

(assert (=> b!7048007 (=> (not res!2877265) (not e!4236982))))

(declare-fun lt!2528047 () Option!16911)

(assert (=> b!7048007 (= res!2877265 (matchZipper!3054 lt!2527906 (_1!37382 (get!23819 lt!2528047))))))

(declare-fun b!7048008 () Bool)

(declare-fun e!4236981 () Option!16911)

(declare-fun e!4236980 () Option!16911)

(assert (=> b!7048008 (= e!4236981 e!4236980)))

(declare-fun c!1312573 () Bool)

(assert (=> b!7048008 (= c!1312573 (is-Nil!67947 (t!381848 s!7408)))))

(declare-fun b!7048009 () Bool)

(declare-fun e!4236983 () Bool)

(assert (=> b!7048009 (= e!4236983 (not (isDefined!13612 lt!2528047)))))

(declare-fun b!7048010 () Bool)

(declare-fun e!4236984 () Bool)

(assert (=> b!7048010 (= e!4236984 (matchZipper!3054 lt!2527899 (t!381848 s!7408)))))

(declare-fun d!2201479 () Bool)

(assert (=> d!2201479 e!4236983))

(declare-fun res!2877266 () Bool)

(assert (=> d!2201479 (=> res!2877266 e!4236983)))

(assert (=> d!2201479 (= res!2877266 e!4236982)))

(declare-fun res!2877268 () Bool)

(assert (=> d!2201479 (=> (not res!2877268) (not e!4236982))))

(assert (=> d!2201479 (= res!2877268 (isDefined!13612 lt!2528047))))

(assert (=> d!2201479 (= lt!2528047 e!4236981)))

(declare-fun c!1312572 () Bool)

(assert (=> d!2201479 (= c!1312572 e!4236984)))

(declare-fun res!2877267 () Bool)

(assert (=> d!2201479 (=> (not res!2877267) (not e!4236984))))

(assert (=> d!2201479 (= res!2877267 (matchZipper!3054 lt!2527906 Nil!67947))))

(assert (=> d!2201479 (= (++!15600 Nil!67947 (t!381848 s!7408)) (t!381848 s!7408))))

(assert (=> d!2201479 (= (findConcatSeparationZippers!427 lt!2527906 lt!2527899 Nil!67947 (t!381848 s!7408) (t!381848 s!7408)) lt!2528047)))

(declare-fun b!7048011 () Bool)

(declare-fun lt!2528045 () Unit!161714)

(declare-fun lt!2528046 () Unit!161714)

(assert (=> b!7048011 (= lt!2528045 lt!2528046)))

(assert (=> b!7048011 (= (++!15600 (++!15600 Nil!67947 (Cons!67947 (h!74395 (t!381848 s!7408)) Nil!67947)) (t!381848 (t!381848 s!7408))) (t!381848 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2953 (List!68071 C!35298 List!68071 List!68071) Unit!161714)

(assert (=> b!7048011 (= lt!2528046 (lemmaMoveElementToOtherListKeepsConcatEq!2953 Nil!67947 (h!74395 (t!381848 s!7408)) (t!381848 (t!381848 s!7408)) (t!381848 s!7408)))))

(assert (=> b!7048011 (= e!4236980 (findConcatSeparationZippers!427 lt!2527906 lt!2527899 (++!15600 Nil!67947 (Cons!67947 (h!74395 (t!381848 s!7408)) Nil!67947)) (t!381848 (t!381848 s!7408)) (t!381848 s!7408)))))

(declare-fun b!7048012 () Bool)

(assert (=> b!7048012 (= e!4236981 (Some!16910 (tuple2!68159 Nil!67947 (t!381848 s!7408))))))

(declare-fun b!7048013 () Bool)

(assert (=> b!7048013 (= e!4236982 (= (++!15600 (_1!37382 (get!23819 lt!2528047)) (_2!37382 (get!23819 lt!2528047))) (t!381848 s!7408)))))

(declare-fun b!7048014 () Bool)

(assert (=> b!7048014 (= e!4236980 None!16910)))

(declare-fun b!7048015 () Bool)

(declare-fun res!2877269 () Bool)

(assert (=> b!7048015 (=> (not res!2877269) (not e!4236982))))

(assert (=> b!7048015 (= res!2877269 (matchZipper!3054 lt!2527899 (_2!37382 (get!23819 lt!2528047))))))

(assert (= (and d!2201479 res!2877267) b!7048010))

(assert (= (and d!2201479 c!1312572) b!7048012))

(assert (= (and d!2201479 (not c!1312572)) b!7048008))

(assert (= (and b!7048008 c!1312573) b!7048014))

(assert (= (and b!7048008 (not c!1312573)) b!7048011))

(assert (= (and d!2201479 res!2877268) b!7048007))

(assert (= (and b!7048007 res!2877265) b!7048015))

(assert (= (and b!7048015 res!2877269) b!7048013))

(assert (= (and d!2201479 (not res!2877266)) b!7048009))

(declare-fun m!7762758 () Bool)

(assert (=> b!7048009 m!7762758))

(declare-fun m!7762760 () Bool)

(assert (=> b!7048010 m!7762760))

(declare-fun m!7762762 () Bool)

(assert (=> b!7048013 m!7762762))

(declare-fun m!7762764 () Bool)

(assert (=> b!7048013 m!7762764))

(assert (=> b!7048015 m!7762762))

(declare-fun m!7762766 () Bool)

(assert (=> b!7048015 m!7762766))

(assert (=> d!2201479 m!7762758))

(declare-fun m!7762768 () Bool)

(assert (=> d!2201479 m!7762768))

(declare-fun m!7762770 () Bool)

(assert (=> d!2201479 m!7762770))

(assert (=> b!7048007 m!7762762))

(declare-fun m!7762772 () Bool)

(assert (=> b!7048007 m!7762772))

(declare-fun m!7762774 () Bool)

(assert (=> b!7048011 m!7762774))

(assert (=> b!7048011 m!7762774))

(declare-fun m!7762776 () Bool)

(assert (=> b!7048011 m!7762776))

(declare-fun m!7762778 () Bool)

(assert (=> b!7048011 m!7762778))

(assert (=> b!7048011 m!7762774))

(declare-fun m!7762780 () Bool)

(assert (=> b!7048011 m!7762780))

(assert (=> b!7047784 d!2201479))

(declare-fun d!2201485 () Bool)

(declare-fun isEmpty!39666 (Option!16911) Bool)

(assert (=> d!2201485 (= (isDefined!13612 lt!2527888) (not (isEmpty!39666 lt!2527888)))))

(declare-fun bs!1875203 () Bool)

(assert (= bs!1875203 d!2201485))

(declare-fun m!7762782 () Bool)

(assert (=> bs!1875203 m!7762782))

(assert (=> b!7047784 d!2201485))

(declare-fun b!7048024 () Bool)

(declare-fun e!4236989 () Bool)

(declare-fun tp!1938306 () Bool)

(declare-fun tp!1938307 () Bool)

(assert (=> b!7048024 (= e!4236989 (and tp!1938306 tp!1938307))))

(assert (=> b!7047776 (= tp!1938289 e!4236989)))

(assert (= (and b!7047776 (is-Cons!67946 (exprs!7010 ct2!306))) b!7048024))

(declare-fun b!7048029 () Bool)

(declare-fun e!4236992 () Bool)

(declare-fun tp!1938310 () Bool)

(assert (=> b!7048029 (= e!4236992 (and tp_is_empty!44253 tp!1938310))))

(assert (=> b!7047772 (= tp!1938286 e!4236992)))

(assert (= (and b!7047772 (is-Cons!67947 (t!381848 s!7408))) b!7048029))

(declare-fun b!7048030 () Bool)

(declare-fun e!4236993 () Bool)

(declare-fun tp!1938311 () Bool)

(declare-fun tp!1938312 () Bool)

(assert (=> b!7048030 (= e!4236993 (and tp!1938311 tp!1938312))))

(assert (=> b!7047788 (= tp!1938287 e!4236993)))

(assert (= (and b!7047788 (is-Cons!67946 (exprs!7010 setElem!49505))) b!7048030))

(declare-fun condSetEmpty!49511 () Bool)

(assert (=> setNonEmpty!49505 (= condSetEmpty!49511 (= setRest!49505 (as set.empty (Set Context!13020))))))

(declare-fun setRes!49511 () Bool)

(assert (=> setNonEmpty!49505 (= tp!1938288 setRes!49511)))

(declare-fun setIsEmpty!49511 () Bool)

(assert (=> setIsEmpty!49511 setRes!49511))

(declare-fun e!4236997 () Bool)

(declare-fun setElem!49511 () Context!13020)

(declare-fun tp!1938317 () Bool)

(declare-fun setNonEmpty!49511 () Bool)

(assert (=> setNonEmpty!49511 (= setRes!49511 (and tp!1938317 (inv!86645 setElem!49511) e!4236997))))

(declare-fun setRest!49511 () (Set Context!13020))

(assert (=> setNonEmpty!49511 (= setRest!49505 (set.union (set.insert setElem!49511 (as set.empty (Set Context!13020))) setRest!49511))))

(declare-fun b!7048037 () Bool)

(declare-fun tp!1938318 () Bool)

(assert (=> b!7048037 (= e!4236997 tp!1938318)))

(assert (= (and setNonEmpty!49505 condSetEmpty!49511) setIsEmpty!49511))

(assert (= (and setNonEmpty!49505 (not condSetEmpty!49511)) setNonEmpty!49511))

(assert (= setNonEmpty!49511 b!7048037))

(declare-fun m!7762796 () Bool)

(assert (=> setNonEmpty!49511 m!7762796))

(declare-fun b_lambda!267869 () Bool)

(assert (= b_lambda!267865 (or b!7047773 b_lambda!267869)))

(declare-fun bs!1875204 () Bool)

(declare-fun d!2201489 () Bool)

(assert (= bs!1875204 (and d!2201489 b!7047773)))

(assert (=> bs!1875204 (= (dynLambda!27526 lambda!418184 lt!2527903) (derivationStepZipperUp!2124 lt!2527903 (h!74395 s!7408)))))

(assert (=> bs!1875204 m!7762430))

(assert (=> d!2201445 d!2201489))

(declare-fun b_lambda!267871 () Bool)

(assert (= b_lambda!267859 (or b!7047773 b_lambda!267871)))

(declare-fun bs!1875205 () Bool)

(declare-fun d!2201491 () Bool)

(assert (= bs!1875205 (and d!2201491 b!7047773)))

(assert (=> bs!1875205 (= (dynLambda!27526 lambda!418184 lt!2527894) (derivationStepZipperUp!2124 lt!2527894 (h!74395 s!7408)))))

(assert (=> bs!1875205 m!7762356))

(assert (=> d!2201405 d!2201491))

(declare-fun b_lambda!267873 () Bool)

(assert (= b_lambda!267861 (or b!7047777 b_lambda!267873)))

(declare-fun bs!1875206 () Bool)

(declare-fun d!2201493 () Bool)

(assert (= bs!1875206 (and d!2201493 b!7047777)))

(declare-fun lt!2528048 () Unit!161714)

(assert (=> bs!1875206 (= lt!2528048 (lemmaConcatPreservesForall!835 (exprs!7010 lt!2528006) (exprs!7010 ct2!306) lambda!418183))))

(assert (=> bs!1875206 (= (dynLambda!27527 lambda!418182 lt!2528006) (Context!13021 (++!15599 (exprs!7010 lt!2528006) (exprs!7010 ct2!306))))))

(declare-fun m!7762798 () Bool)

(assert (=> bs!1875206 m!7762798))

(declare-fun m!7762800 () Bool)

(assert (=> bs!1875206 m!7762800))

(assert (=> d!2201415 d!2201493))

(declare-fun b_lambda!267875 () Bool)

(assert (= b_lambda!267863 (or b!7047783 b_lambda!267875)))

(declare-fun bs!1875207 () Bool)

(declare-fun d!2201495 () Bool)

(assert (= bs!1875207 (and d!2201495 b!7047783)))

(assert (=> bs!1875207 (= (dynLambda!27529 lambda!418181 lt!2528020) (matchZipper!3054 (set.insert lt!2528020 (as set.empty (Set Context!13020))) s!7408))))

(declare-fun m!7762802 () Bool)

(assert (=> bs!1875207 m!7762802))

(assert (=> bs!1875207 m!7762802))

(declare-fun m!7762804 () Bool)

(assert (=> bs!1875207 m!7762804))

(assert (=> d!2201443 d!2201495))

(push 1)

(assert (not b_lambda!267871))

(assert (not d!2201439))

(assert (not b!7047874))

(assert (not bm!640395))

(assert (not d!2201479))

(assert (not b!7048009))

(assert (not d!2201435))

(assert (not d!2201451))

(assert (not b!7048007))

(assert (not b!7047957))

(assert (not bm!640399))

(assert (not b!7047862))

(assert (not b!7047940))

(assert (not d!2201429))

(assert (not d!2201455))

(assert (not bm!640377))

(assert (not d!2201453))

(assert (not b!7047901))

(assert (not b_lambda!267873))

(assert (not b!7047971))

(assert (not d!2201447))

(assert (not b!7048015))

(assert (not d!2201459))

(assert (not b!7047864))

(assert (not b!7047903))

(assert (not b_lambda!267869))

(assert (not b!7047958))

(assert (not bm!640390))

(assert (not bm!640392))

(assert (not b!7047928))

(assert (not b!7047885))

(assert tp_is_empty!44253)

(assert (not b!7048013))

(assert (not bs!1875204))

(assert (not setNonEmpty!49511))

(assert (not d!2201465))

(assert (not d!2201401))

(assert (not bs!1875205))

(assert (not b!7048030))

(assert (not bs!1875207))

(assert (not b!7048029))

(assert (not b!7047948))

(assert (not d!2201443))

(assert (not d!2201445))

(assert (not b!7047944))

(assert (not b!7047939))

(assert (not d!2201405))

(assert (not b!7047945))

(assert (not b!7047884))

(assert (not d!2201417))

(assert (not b!7048024))

(assert (not b!7047970))

(assert (not d!2201441))

(assert (not b_lambda!267875))

(assert (not d!2201431))

(assert (not bm!640396))

(assert (not d!2201463))

(assert (not b!7048011))

(assert (not b!7048010))

(assert (not b!7047960))

(assert (not d!2201409))

(assert (not d!2201407))

(assert (not d!2201415))

(assert (not bm!640397))

(assert (not b!7047954))

(assert (not d!2201419))

(assert (not d!2201423))

(assert (not b!7047873))

(assert (not b!7047900))

(assert (not d!2201469))

(assert (not d!2201413))

(assert (not b!7047952))

(assert (not bs!1875206))

(assert (not d!2201475))

(assert (not d!2201411))

(assert (not bm!640402))

(assert (not b!7048037))

(assert (not d!2201437))

(assert (not b!7047904))

(assert (not d!2201427))

(assert (not d!2201485))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

