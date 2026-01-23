; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!704258 () Bool)

(assert start!704258)

(declare-fun b!7244303 () Bool)

(assert (=> b!7244303 true))

(declare-fun b!7244300 () Bool)

(assert (=> b!7244300 true))

(declare-fun b!7244296 () Bool)

(declare-fun e!4343478 () Bool)

(declare-fun e!4343469 () Bool)

(assert (=> b!7244296 (= e!4343478 e!4343469)))

(declare-fun res!2938656 () Bool)

(assert (=> b!7244296 (=> res!2938656 e!4343469)))

(declare-datatypes ((C!37450 0))(
  ( (C!37451 (val!28673 Int)) )
))
(declare-datatypes ((Regex!18588 0))(
  ( (ElementMatch!18588 (c!1345589 C!37450)) (Concat!27433 (regOne!37688 Regex!18588) (regTwo!37688 Regex!18588)) (EmptyExpr!18588) (Star!18588 (reg!18917 Regex!18588)) (EmptyLang!18588) (Union!18588 (regOne!37689 Regex!18588) (regTwo!37689 Regex!18588)) )
))
(declare-datatypes ((List!70361 0))(
  ( (Nil!70237) (Cons!70237 (h!76685 Regex!18588) (t!384412 List!70361)) )
))
(declare-datatypes ((Context!15056 0))(
  ( (Context!15057 (exprs!8028 List!70361)) )
))
(declare-fun lt!2581955 () (Set Context!15056))

(declare-fun lt!2581941 () (Set Context!15056))

(declare-fun lt!2581921 () (Set Context!15056))

(assert (=> b!7244296 (= res!2938656 (or (not (= lt!2581941 lt!2581955)) (not (= lt!2581921 lt!2581941))))))

(declare-fun lt!2581931 () (Set Context!15056))

(declare-fun lt!2581944 () (Set Context!15056))

(assert (=> b!7244296 (= lt!2581955 (set.union lt!2581931 lt!2581944))))

(declare-fun lt!2581938 () Context!15056)

(declare-datatypes ((List!70362 0))(
  ( (Nil!70238) (Cons!70238 (h!76686 C!37450) (t!384413 List!70362)) )
))
(declare-fun s1!1971 () List!70362)

(declare-fun derivationStepZipperUp!2442 (Context!15056 C!37450) (Set Context!15056))

(assert (=> b!7244296 (= lt!2581944 (derivationStepZipperUp!2442 lt!2581938 (h!76686 s1!1971)))))

(declare-fun b!7244297 () Bool)

(declare-fun e!4343476 () Bool)

(declare-fun tp_is_empty!46641 () Bool)

(declare-fun tp!2035981 () Bool)

(assert (=> b!7244297 (= e!4343476 (and tp_is_empty!46641 tp!2035981))))

(declare-fun b!7244298 () Bool)

(declare-fun e!4343475 () Bool)

(declare-fun e!4343474 () Bool)

(assert (=> b!7244298 (= e!4343475 e!4343474)))

(declare-fun res!2938647 () Bool)

(assert (=> b!7244298 (=> res!2938647 e!4343474)))

(declare-fun lt!2581924 () List!70361)

(declare-fun isEmpty!40462 (List!70361) Bool)

(assert (=> b!7244298 (= res!2938647 (isEmpty!40462 lt!2581924))))

(declare-fun lambda!442766 () Int)

(declare-datatypes ((Unit!163762 0))(
  ( (Unit!163763) )
))
(declare-fun lt!2581936 () Unit!163762)

(declare-fun ct1!232 () Context!15056)

(declare-fun ct2!328 () Context!15056)

(declare-fun lemmaConcatPreservesForall!1397 (List!70361 List!70361 Int) Unit!163762)

(assert (=> b!7244298 (= lt!2581936 (lemmaConcatPreservesForall!1397 (exprs!8028 ct1!232) (exprs!8028 ct2!328) lambda!442766))))

(declare-fun lt!2581929 () (Set Context!15056))

(declare-fun lt!2581952 () Context!15056)

(assert (=> b!7244298 (= lt!2581929 (derivationStepZipperUp!2442 lt!2581952 (h!76686 s1!1971)))))

(declare-fun lt!2581920 () Unit!163762)

(assert (=> b!7244298 (= lt!2581920 (lemmaConcatPreservesForall!1397 (exprs!8028 ct1!232) (exprs!8028 ct2!328) lambda!442766))))

(declare-fun derivationStepZipperDown!2612 (Regex!18588 Context!15056 C!37450) (Set Context!15056))

(assert (=> b!7244298 (= lt!2581931 (derivationStepZipperDown!2612 (h!76685 (exprs!8028 ct1!232)) lt!2581938 (h!76686 s1!1971)))))

(declare-fun tail!14255 (List!70361) List!70361)

(assert (=> b!7244298 (= lt!2581938 (Context!15057 (tail!14255 (exprs!8028 ct1!232))))))

(declare-fun b!7244299 () Bool)

(declare-fun e!4343470 () Bool)

(declare-fun e!4343477 () Bool)

(assert (=> b!7244299 (= e!4343470 e!4343477)))

(declare-fun res!2938652 () Bool)

(assert (=> b!7244299 (=> res!2938652 e!4343477)))

(declare-fun lt!2581922 () Bool)

(assert (=> b!7244299 (= res!2938652 (not lt!2581922))))

(declare-fun lt!2581942 () (Set Context!15056))

(declare-fun lt!2581934 () List!70362)

(declare-fun e!4343468 () Bool)

(declare-fun matchZipper!3498 ((Set Context!15056) List!70362) Bool)

(assert (=> b!7244299 (= (matchZipper!3498 lt!2581942 lt!2581934) e!4343468)))

(declare-fun res!2938649 () Bool)

(assert (=> b!7244299 (=> res!2938649 e!4343468)))

(declare-fun lt!2581939 () (Set Context!15056))

(assert (=> b!7244299 (= res!2938649 (matchZipper!3498 lt!2581939 lt!2581934))))

(declare-fun lt!2581926 () Unit!163762)

(declare-fun lt!2581953 () (Set Context!15056))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1707 ((Set Context!15056) (Set Context!15056) List!70362) Unit!163762)

(assert (=> b!7244299 (= lt!2581926 (lemmaZipperConcatMatchesSameAsBothZippers!1707 lt!2581939 lt!2581953 lt!2581934))))

(declare-fun lt!2581948 () Unit!163762)

(assert (=> b!7244299 (= lt!2581948 (lemmaConcatPreservesForall!1397 (exprs!8028 ct1!232) (exprs!8028 ct2!328) lambda!442766))))

(declare-fun lt!2581923 () Bool)

(assert (=> b!7244299 (= lt!2581923 lt!2581922)))

(declare-fun e!4343466 () Bool)

(assert (=> b!7244299 (= lt!2581922 e!4343466)))

(declare-fun res!2938650 () Bool)

(assert (=> b!7244299 (=> res!2938650 e!4343466)))

(declare-fun lt!2581950 () Bool)

(assert (=> b!7244299 (= res!2938650 lt!2581950)))

(assert (=> b!7244299 (= lt!2581923 (matchZipper!3498 lt!2581955 (t!384413 s1!1971)))))

(assert (=> b!7244299 (= lt!2581950 (matchZipper!3498 lt!2581931 (t!384413 s1!1971)))))

(declare-fun lt!2581937 () Unit!163762)

(assert (=> b!7244299 (= lt!2581937 (lemmaZipperConcatMatchesSameAsBothZippers!1707 lt!2581931 lt!2581944 (t!384413 s1!1971)))))

(assert (=> b!7244300 (= e!4343474 e!4343478)))

(declare-fun res!2938648 () Bool)

(assert (=> b!7244300 (=> res!2938648 e!4343478)))

(declare-fun nullable!7881 (Regex!18588) Bool)

(assert (=> b!7244300 (= res!2938648 (not (nullable!7881 (h!76685 (exprs!8028 ct1!232)))))))

(declare-fun lambda!442768 () Int)

(declare-fun lt!2581932 () (Set Context!15056))

(declare-fun flatMap!2776 ((Set Context!15056) Int) (Set Context!15056))

(assert (=> b!7244300 (= (flatMap!2776 lt!2581932 lambda!442768) (derivationStepZipperUp!2442 lt!2581952 (h!76686 s1!1971)))))

(declare-fun lt!2581935 () Unit!163762)

(declare-fun lemmaFlatMapOnSingletonSet!2199 ((Set Context!15056) Context!15056 Int) Unit!163762)

(assert (=> b!7244300 (= lt!2581935 (lemmaFlatMapOnSingletonSet!2199 lt!2581932 lt!2581952 lambda!442768))))

(declare-fun lt!2581956 () Unit!163762)

(assert (=> b!7244300 (= lt!2581956 (lemmaConcatPreservesForall!1397 (exprs!8028 ct1!232) (exprs!8028 ct2!328) lambda!442766))))

(declare-fun lt!2581946 () (Set Context!15056))

(assert (=> b!7244300 (= (flatMap!2776 lt!2581946 lambda!442768) (derivationStepZipperUp!2442 ct1!232 (h!76686 s1!1971)))))

(declare-fun lt!2581940 () Unit!163762)

(assert (=> b!7244300 (= lt!2581940 (lemmaFlatMapOnSingletonSet!2199 lt!2581946 ct1!232 lambda!442768))))

(declare-fun lt!2581933 () Context!15056)

(assert (=> b!7244300 (= lt!2581939 (derivationStepZipperDown!2612 (h!76685 (exprs!8028 ct1!232)) lt!2581933 (h!76686 s1!1971)))))

(assert (=> b!7244300 (= lt!2581933 (Context!15057 (tail!14255 lt!2581924)))))

(declare-fun b!7244301 () Bool)

(declare-fun e!4343473 () Bool)

(declare-fun e!4343465 () Bool)

(assert (=> b!7244301 (= e!4343473 e!4343465)))

(declare-fun res!2938659 () Bool)

(assert (=> b!7244301 (=> (not res!2938659) (not e!4343465))))

(assert (=> b!7244301 (= res!2938659 (and (not (is-Nil!70237 (exprs!8028 ct1!232))) (is-Cons!70238 s1!1971)))))

(assert (=> b!7244301 (= lt!2581932 (set.insert lt!2581952 (as set.empty (Set Context!15056))))))

(assert (=> b!7244301 (= lt!2581952 (Context!15057 lt!2581924))))

(declare-fun ++!16460 (List!70361 List!70361) List!70361)

(assert (=> b!7244301 (= lt!2581924 (++!16460 (exprs!8028 ct1!232) (exprs!8028 ct2!328)))))

(declare-fun lt!2581925 () Unit!163762)

(assert (=> b!7244301 (= lt!2581925 (lemmaConcatPreservesForall!1397 (exprs!8028 ct1!232) (exprs!8028 ct2!328) lambda!442766))))

(declare-fun b!7244302 () Bool)

(assert (=> b!7244302 (= e!4343466 (matchZipper!3498 lt!2581944 (t!384413 s1!1971)))))

(declare-fun e!4343467 () Bool)

(declare-fun e!4343471 () Bool)

(assert (=> b!7244303 (= e!4343467 (not e!4343471))))

(declare-fun res!2938655 () Bool)

(assert (=> b!7244303 (=> res!2938655 e!4343471)))

(declare-fun lambda!442767 () Int)

(declare-fun exists!4295 ((Set Context!15056) Int) Bool)

(assert (=> b!7244303 (= res!2938655 (not (exists!4295 lt!2581921 lambda!442767)))))

(declare-datatypes ((List!70363 0))(
  ( (Nil!70239) (Cons!70239 (h!76687 Context!15056) (t!384414 List!70363)) )
))
(declare-fun lt!2581943 () List!70363)

(declare-fun exists!4296 (List!70363 Int) Bool)

(assert (=> b!7244303 (exists!4296 lt!2581943 lambda!442767)))

(declare-fun lt!2581947 () Unit!163762)

(declare-fun lemmaZipperMatchesExistsMatchingContext!715 (List!70363 List!70362) Unit!163762)

(assert (=> b!7244303 (= lt!2581947 (lemmaZipperMatchesExistsMatchingContext!715 lt!2581943 (t!384413 s1!1971)))))

(declare-fun toList!11434 ((Set Context!15056)) List!70363)

(assert (=> b!7244303 (= lt!2581943 (toList!11434 lt!2581921))))

(declare-fun lt!2581927 () (Set Context!15056))

(declare-fun derivationStepZipper!3376 ((Set Context!15056) C!37450) (Set Context!15056))

(assert (=> b!7244303 (= lt!2581927 (derivationStepZipper!3376 lt!2581932 (h!76686 s1!1971)))))

(declare-fun b!7244304 () Bool)

(declare-fun e!4343464 () Bool)

(declare-fun tp!2035983 () Bool)

(assert (=> b!7244304 (= e!4343464 (and tp_is_empty!46641 tp!2035983))))

(declare-fun b!7244305 () Bool)

(declare-fun e!4343463 () Bool)

(declare-fun tp!2035984 () Bool)

(assert (=> b!7244305 (= e!4343463 tp!2035984)))

(declare-fun b!7244306 () Bool)

(assert (=> b!7244306 (= e!4343469 e!4343470)))

(declare-fun res!2938658 () Bool)

(assert (=> b!7244306 (=> res!2938658 e!4343470)))

(assert (=> b!7244306 (= res!2938658 (or (not (= lt!2581929 lt!2581942)) (not (= lt!2581927 lt!2581929))))))

(assert (=> b!7244306 (= lt!2581942 (set.union lt!2581939 lt!2581953))))

(assert (=> b!7244306 (= lt!2581953 (derivationStepZipperUp!2442 lt!2581933 (h!76686 s1!1971)))))

(declare-fun lt!2581951 () Unit!163762)

(assert (=> b!7244306 (= lt!2581951 (lemmaConcatPreservesForall!1397 (exprs!8028 ct1!232) (exprs!8028 ct2!328) lambda!442766))))

(declare-fun b!7244307 () Bool)

(assert (=> b!7244307 (= e!4343471 e!4343475)))

(declare-fun res!2938653 () Bool)

(assert (=> b!7244307 (=> res!2938653 e!4343475)))

(assert (=> b!7244307 (= res!2938653 (isEmpty!40462 (exprs!8028 ct1!232)))))

(assert (=> b!7244307 (= lt!2581941 (derivationStepZipperUp!2442 ct1!232 (h!76686 s1!1971)))))

(declare-fun lt!2581930 () Context!15056)

(declare-fun lt!2581945 () Unit!163762)

(assert (=> b!7244307 (= lt!2581945 (lemmaConcatPreservesForall!1397 (exprs!8028 lt!2581930) (exprs!8028 ct2!328) lambda!442766))))

(declare-fun lt!2581928 () List!70361)

(assert (=> b!7244307 (matchZipper!3498 (set.insert (Context!15057 lt!2581928) (as set.empty (Set Context!15056))) lt!2581934)))

(declare-fun s2!1849 () List!70362)

(declare-fun ++!16461 (List!70362 List!70362) List!70362)

(assert (=> b!7244307 (= lt!2581934 (++!16461 (t!384413 s1!1971) s2!1849))))

(assert (=> b!7244307 (= lt!2581928 (++!16460 (exprs!8028 lt!2581930) (exprs!8028 ct2!328)))))

(declare-fun lt!2581954 () Unit!163762)

(assert (=> b!7244307 (= lt!2581954 (lemmaConcatPreservesForall!1397 (exprs!8028 lt!2581930) (exprs!8028 ct2!328) lambda!442766))))

(declare-fun lt!2581949 () Unit!163762)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!361 (Context!15056 Context!15056 List!70362 List!70362) Unit!163762)

(assert (=> b!7244307 (= lt!2581949 (lemmaConcatenateContextMatchesConcatOfStrings!361 lt!2581930 ct2!328 (t!384413 s1!1971) s2!1849))))

(declare-fun getWitness!2139 ((Set Context!15056) Int) Context!15056)

(assert (=> b!7244307 (= lt!2581930 (getWitness!2139 lt!2581921 lambda!442767))))

(declare-fun b!7244308 () Bool)

(assert (=> b!7244308 (= e!4343465 e!4343467)))

(declare-fun res!2938651 () Bool)

(assert (=> b!7244308 (=> (not res!2938651) (not e!4343467))))

(assert (=> b!7244308 (= res!2938651 (matchZipper!3498 lt!2581921 (t!384413 s1!1971)))))

(assert (=> b!7244308 (= lt!2581921 (derivationStepZipper!3376 lt!2581946 (h!76686 s1!1971)))))

(declare-fun b!7244309 () Bool)

(declare-fun res!2938657 () Bool)

(assert (=> b!7244309 (=> (not res!2938657) (not e!4343473))))

(assert (=> b!7244309 (= res!2938657 (matchZipper!3498 (set.insert ct2!328 (as set.empty (Set Context!15056))) s2!1849))))

(declare-fun b!7244310 () Bool)

(assert (=> b!7244310 (= e!4343468 (matchZipper!3498 lt!2581953 lt!2581934))))

(declare-fun res!2938654 () Bool)

(assert (=> start!704258 (=> (not res!2938654) (not e!4343473))))

(assert (=> start!704258 (= res!2938654 (matchZipper!3498 lt!2581946 s1!1971))))

(assert (=> start!704258 (= lt!2581946 (set.insert ct1!232 (as set.empty (Set Context!15056))))))

(assert (=> start!704258 e!4343473))

(declare-fun inv!89481 (Context!15056) Bool)

(assert (=> start!704258 (and (inv!89481 ct1!232) e!4343463)))

(assert (=> start!704258 e!4343464))

(assert (=> start!704258 e!4343476))

(declare-fun e!4343472 () Bool)

(assert (=> start!704258 (and (inv!89481 ct2!328) e!4343472)))

(declare-fun b!7244311 () Bool)

(assert (=> b!7244311 (= e!4343477 (= (matchZipper!3498 lt!2581927 (t!384413 s1!1971)) (matchZipper!3498 lt!2581932 s1!1971)))))

(declare-fun b!7244312 () Bool)

(declare-fun tp!2035982 () Bool)

(assert (=> b!7244312 (= e!4343472 tp!2035982)))

(assert (= (and start!704258 res!2938654) b!7244309))

(assert (= (and b!7244309 res!2938657) b!7244301))

(assert (= (and b!7244301 res!2938659) b!7244308))

(assert (= (and b!7244308 res!2938651) b!7244303))

(assert (= (and b!7244303 (not res!2938655)) b!7244307))

(assert (= (and b!7244307 (not res!2938653)) b!7244298))

(assert (= (and b!7244298 (not res!2938647)) b!7244300))

(assert (= (and b!7244300 (not res!2938648)) b!7244296))

(assert (= (and b!7244296 (not res!2938656)) b!7244306))

(assert (= (and b!7244306 (not res!2938658)) b!7244299))

(assert (= (and b!7244299 (not res!2938650)) b!7244302))

(assert (= (and b!7244299 (not res!2938649)) b!7244310))

(assert (= (and b!7244299 (not res!2938652)) b!7244311))

(assert (= start!704258 b!7244305))

(assert (= (and start!704258 (is-Cons!70238 s1!1971)) b!7244304))

(assert (= (and start!704258 (is-Cons!70238 s2!1849)) b!7244297))

(assert (= start!704258 b!7244312))

(declare-fun m!7920076 () Bool)

(assert (=> b!7244306 m!7920076))

(declare-fun m!7920078 () Bool)

(assert (=> b!7244306 m!7920078))

(declare-fun m!7920080 () Bool)

(assert (=> b!7244303 m!7920080))

(declare-fun m!7920082 () Bool)

(assert (=> b!7244303 m!7920082))

(declare-fun m!7920084 () Bool)

(assert (=> b!7244303 m!7920084))

(declare-fun m!7920086 () Bool)

(assert (=> b!7244303 m!7920086))

(declare-fun m!7920088 () Bool)

(assert (=> b!7244303 m!7920088))

(declare-fun m!7920090 () Bool)

(assert (=> b!7244296 m!7920090))

(declare-fun m!7920092 () Bool)

(assert (=> b!7244311 m!7920092))

(declare-fun m!7920094 () Bool)

(assert (=> b!7244311 m!7920094))

(declare-fun m!7920096 () Bool)

(assert (=> b!7244309 m!7920096))

(assert (=> b!7244309 m!7920096))

(declare-fun m!7920098 () Bool)

(assert (=> b!7244309 m!7920098))

(declare-fun m!7920100 () Bool)

(assert (=> b!7244301 m!7920100))

(declare-fun m!7920102 () Bool)

(assert (=> b!7244301 m!7920102))

(assert (=> b!7244301 m!7920078))

(declare-fun m!7920104 () Bool)

(assert (=> b!7244310 m!7920104))

(declare-fun m!7920106 () Bool)

(assert (=> b!7244298 m!7920106))

(assert (=> b!7244298 m!7920078))

(declare-fun m!7920108 () Bool)

(assert (=> b!7244298 m!7920108))

(declare-fun m!7920110 () Bool)

(assert (=> b!7244298 m!7920110))

(assert (=> b!7244298 m!7920078))

(declare-fun m!7920112 () Bool)

(assert (=> b!7244298 m!7920112))

(declare-fun m!7920114 () Bool)

(assert (=> b!7244299 m!7920114))

(declare-fun m!7920116 () Bool)

(assert (=> b!7244299 m!7920116))

(declare-fun m!7920118 () Bool)

(assert (=> b!7244299 m!7920118))

(declare-fun m!7920120 () Bool)

(assert (=> b!7244299 m!7920120))

(declare-fun m!7920122 () Bool)

(assert (=> b!7244299 m!7920122))

(assert (=> b!7244299 m!7920078))

(declare-fun m!7920124 () Bool)

(assert (=> b!7244299 m!7920124))

(declare-fun m!7920126 () Bool)

(assert (=> start!704258 m!7920126))

(declare-fun m!7920128 () Bool)

(assert (=> start!704258 m!7920128))

(declare-fun m!7920130 () Bool)

(assert (=> start!704258 m!7920130))

(declare-fun m!7920132 () Bool)

(assert (=> start!704258 m!7920132))

(declare-fun m!7920134 () Bool)

(assert (=> b!7244302 m!7920134))

(declare-fun m!7920136 () Bool)

(assert (=> b!7244308 m!7920136))

(declare-fun m!7920138 () Bool)

(assert (=> b!7244308 m!7920138))

(declare-fun m!7920140 () Bool)

(assert (=> b!7244307 m!7920140))

(declare-fun m!7920142 () Bool)

(assert (=> b!7244307 m!7920142))

(declare-fun m!7920144 () Bool)

(assert (=> b!7244307 m!7920144))

(declare-fun m!7920146 () Bool)

(assert (=> b!7244307 m!7920146))

(declare-fun m!7920148 () Bool)

(assert (=> b!7244307 m!7920148))

(assert (=> b!7244307 m!7920146))

(declare-fun m!7920150 () Bool)

(assert (=> b!7244307 m!7920150))

(declare-fun m!7920152 () Bool)

(assert (=> b!7244307 m!7920152))

(declare-fun m!7920154 () Bool)

(assert (=> b!7244307 m!7920154))

(assert (=> b!7244307 m!7920140))

(declare-fun m!7920156 () Bool)

(assert (=> b!7244307 m!7920156))

(declare-fun m!7920158 () Bool)

(assert (=> b!7244300 m!7920158))

(declare-fun m!7920160 () Bool)

(assert (=> b!7244300 m!7920160))

(assert (=> b!7244300 m!7920148))

(assert (=> b!7244300 m!7920108))

(declare-fun m!7920162 () Bool)

(assert (=> b!7244300 m!7920162))

(declare-fun m!7920164 () Bool)

(assert (=> b!7244300 m!7920164))

(declare-fun m!7920166 () Bool)

(assert (=> b!7244300 m!7920166))

(declare-fun m!7920168 () Bool)

(assert (=> b!7244300 m!7920168))

(declare-fun m!7920170 () Bool)

(assert (=> b!7244300 m!7920170))

(assert (=> b!7244300 m!7920078))

(push 1)

(assert (not b!7244296))

(assert (not b!7244305))

(assert (not b!7244303))

(assert tp_is_empty!46641)

(assert (not start!704258))

(assert (not b!7244300))

(assert (not b!7244310))

(assert (not b!7244309))

(assert (not b!7244301))

(assert (not b!7244302))

(assert (not b!7244304))

(assert (not b!7244297))

(assert (not b!7244299))

(assert (not b!7244307))

(assert (not b!7244306))

(assert (not b!7244308))

(assert (not b!7244298))

(assert (not b!7244311))

(assert (not b!7244312))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1904672 () Bool)

(declare-fun d!2250889 () Bool)

(assert (= bs!1904672 (and d!2250889 b!7244303)))

(declare-fun lambda!442800 () Int)

(assert (=> bs!1904672 (= lambda!442800 lambda!442767)))

(assert (=> d!2250889 true))

(assert (=> d!2250889 (exists!4296 lt!2581943 lambda!442800)))

(declare-fun lt!2582070 () Unit!163762)

(declare-fun choose!55860 (List!70363 List!70362) Unit!163762)

(assert (=> d!2250889 (= lt!2582070 (choose!55860 lt!2581943 (t!384413 s1!1971)))))

(declare-fun content!14527 (List!70363) (Set Context!15056))

(assert (=> d!2250889 (matchZipper!3498 (content!14527 lt!2581943) (t!384413 s1!1971))))

(assert (=> d!2250889 (= (lemmaZipperMatchesExistsMatchingContext!715 lt!2581943 (t!384413 s1!1971)) lt!2582070)))

(declare-fun bs!1904673 () Bool)

(assert (= bs!1904673 d!2250889))

(declare-fun m!7920268 () Bool)

(assert (=> bs!1904673 m!7920268))

(declare-fun m!7920270 () Bool)

(assert (=> bs!1904673 m!7920270))

(declare-fun m!7920272 () Bool)

(assert (=> bs!1904673 m!7920272))

(assert (=> bs!1904673 m!7920272))

(declare-fun m!7920274 () Bool)

(assert (=> bs!1904673 m!7920274))

(assert (=> b!7244303 d!2250889))

(declare-fun d!2250891 () Bool)

(declare-fun lt!2582073 () Bool)

(assert (=> d!2250891 (= lt!2582073 (exists!4296 (toList!11434 lt!2581921) lambda!442767))))

(declare-fun choose!55861 ((Set Context!15056) Int) Bool)

(assert (=> d!2250891 (= lt!2582073 (choose!55861 lt!2581921 lambda!442767))))

(assert (=> d!2250891 (= (exists!4295 lt!2581921 lambda!442767) lt!2582073)))

(declare-fun bs!1904674 () Bool)

(assert (= bs!1904674 d!2250891))

(assert (=> bs!1904674 m!7920088))

(assert (=> bs!1904674 m!7920088))

(declare-fun m!7920276 () Bool)

(assert (=> bs!1904674 m!7920276))

(declare-fun m!7920278 () Bool)

(assert (=> bs!1904674 m!7920278))

(assert (=> b!7244303 d!2250891))

(declare-fun d!2250893 () Bool)

(declare-fun e!4343529 () Bool)

(assert (=> d!2250893 e!4343529))

(declare-fun res!2938701 () Bool)

(assert (=> d!2250893 (=> (not res!2938701) (not e!4343529))))

(declare-fun lt!2582076 () List!70363)

(declare-fun noDuplicate!2965 (List!70363) Bool)

(assert (=> d!2250893 (= res!2938701 (noDuplicate!2965 lt!2582076))))

(declare-fun choose!55862 ((Set Context!15056)) List!70363)

(assert (=> d!2250893 (= lt!2582076 (choose!55862 lt!2581921))))

(assert (=> d!2250893 (= (toList!11434 lt!2581921) lt!2582076)))

(declare-fun b!7244374 () Bool)

(assert (=> b!7244374 (= e!4343529 (= (content!14527 lt!2582076) lt!2581921))))

(assert (= (and d!2250893 res!2938701) b!7244374))

(declare-fun m!7920280 () Bool)

(assert (=> d!2250893 m!7920280))

(declare-fun m!7920282 () Bool)

(assert (=> d!2250893 m!7920282))

(declare-fun m!7920284 () Bool)

(assert (=> b!7244374 m!7920284))

(assert (=> b!7244303 d!2250893))

(declare-fun bs!1904675 () Bool)

(declare-fun d!2250895 () Bool)

(assert (= bs!1904675 (and d!2250895 b!7244300)))

(declare-fun lambda!442803 () Int)

(assert (=> bs!1904675 (= lambda!442803 lambda!442768)))

(assert (=> d!2250895 true))

(assert (=> d!2250895 (= (derivationStepZipper!3376 lt!2581932 (h!76686 s1!1971)) (flatMap!2776 lt!2581932 lambda!442803))))

(declare-fun bs!1904676 () Bool)

(assert (= bs!1904676 d!2250895))

(declare-fun m!7920286 () Bool)

(assert (=> bs!1904676 m!7920286))

(assert (=> b!7244303 d!2250895))

(declare-fun bs!1904677 () Bool)

(declare-fun d!2250897 () Bool)

(assert (= bs!1904677 (and d!2250897 b!7244303)))

(declare-fun lambda!442806 () Int)

(assert (=> bs!1904677 (not (= lambda!442806 lambda!442767))))

(declare-fun bs!1904678 () Bool)

(assert (= bs!1904678 (and d!2250897 d!2250889)))

(assert (=> bs!1904678 (not (= lambda!442806 lambda!442800))))

(assert (=> d!2250897 true))

(declare-fun order!28923 () Int)

(declare-fun dynLambda!28672 (Int Int) Int)

(assert (=> d!2250897 (< (dynLambda!28672 order!28923 lambda!442767) (dynLambda!28672 order!28923 lambda!442806))))

(declare-fun forall!17428 (List!70363 Int) Bool)

(assert (=> d!2250897 (= (exists!4296 lt!2581943 lambda!442767) (not (forall!17428 lt!2581943 lambda!442806)))))

(declare-fun bs!1904679 () Bool)

(assert (= bs!1904679 d!2250897))

(declare-fun m!7920288 () Bool)

(assert (=> bs!1904679 m!7920288))

(assert (=> b!7244303 d!2250897))

(declare-fun bm!659740 () Bool)

(declare-fun call!659745 () (Set Context!15056))

(assert (=> bm!659740 (= call!659745 (derivationStepZipperDown!2612 (h!76685 (exprs!8028 lt!2581933)) (Context!15057 (t!384412 (exprs!8028 lt!2581933))) (h!76686 s1!1971)))))

(declare-fun d!2250899 () Bool)

(declare-fun c!1345609 () Bool)

(declare-fun e!4343537 () Bool)

(assert (=> d!2250899 (= c!1345609 e!4343537)))

(declare-fun res!2938704 () Bool)

(assert (=> d!2250899 (=> (not res!2938704) (not e!4343537))))

(assert (=> d!2250899 (= res!2938704 (is-Cons!70237 (exprs!8028 lt!2581933)))))

(declare-fun e!4343536 () (Set Context!15056))

(assert (=> d!2250899 (= (derivationStepZipperUp!2442 lt!2581933 (h!76686 s1!1971)) e!4343536)))

(declare-fun b!7244389 () Bool)

(declare-fun e!4343538 () (Set Context!15056))

(assert (=> b!7244389 (= e!4343536 e!4343538)))

(declare-fun c!1345610 () Bool)

(assert (=> b!7244389 (= c!1345610 (is-Cons!70237 (exprs!8028 lt!2581933)))))

(declare-fun b!7244390 () Bool)

(assert (=> b!7244390 (= e!4343536 (set.union call!659745 (derivationStepZipperUp!2442 (Context!15057 (t!384412 (exprs!8028 lt!2581933))) (h!76686 s1!1971))))))

(declare-fun b!7244391 () Bool)

(assert (=> b!7244391 (= e!4343538 call!659745)))

(declare-fun b!7244392 () Bool)

(assert (=> b!7244392 (= e!4343538 (as set.empty (Set Context!15056)))))

(declare-fun b!7244393 () Bool)

(assert (=> b!7244393 (= e!4343537 (nullable!7881 (h!76685 (exprs!8028 lt!2581933))))))

(assert (= (and d!2250899 res!2938704) b!7244393))

(assert (= (and d!2250899 c!1345609) b!7244390))

(assert (= (and d!2250899 (not c!1345609)) b!7244389))

(assert (= (and b!7244389 c!1345610) b!7244391))

(assert (= (and b!7244389 (not c!1345610)) b!7244392))

(assert (= (or b!7244390 b!7244391) bm!659740))

(declare-fun m!7920290 () Bool)

(assert (=> bm!659740 m!7920290))

(declare-fun m!7920292 () Bool)

(assert (=> b!7244390 m!7920292))

(declare-fun m!7920294 () Bool)

(assert (=> b!7244393 m!7920294))

(assert (=> b!7244306 d!2250899))

(declare-fun d!2250901 () Bool)

(declare-fun forall!17429 (List!70361 Int) Bool)

(assert (=> d!2250901 (forall!17429 (++!16460 (exprs!8028 ct1!232) (exprs!8028 ct2!328)) lambda!442766)))

(declare-fun lt!2582079 () Unit!163762)

(declare-fun choose!55863 (List!70361 List!70361 Int) Unit!163762)

(assert (=> d!2250901 (= lt!2582079 (choose!55863 (exprs!8028 ct1!232) (exprs!8028 ct2!328) lambda!442766))))

(assert (=> d!2250901 (forall!17429 (exprs!8028 ct1!232) lambda!442766)))

(assert (=> d!2250901 (= (lemmaConcatPreservesForall!1397 (exprs!8028 ct1!232) (exprs!8028 ct2!328) lambda!442766) lt!2582079)))

(declare-fun bs!1904680 () Bool)

(assert (= bs!1904680 d!2250901))

(assert (=> bs!1904680 m!7920102))

(assert (=> bs!1904680 m!7920102))

(declare-fun m!7920296 () Bool)

(assert (=> bs!1904680 m!7920296))

(declare-fun m!7920298 () Bool)

(assert (=> bs!1904680 m!7920298))

(declare-fun m!7920300 () Bool)

(assert (=> bs!1904680 m!7920300))

(assert (=> b!7244306 d!2250901))

(declare-fun bm!659741 () Bool)

(declare-fun call!659746 () (Set Context!15056))

(assert (=> bm!659741 (= call!659746 (derivationStepZipperDown!2612 (h!76685 (exprs!8028 lt!2581938)) (Context!15057 (t!384412 (exprs!8028 lt!2581938))) (h!76686 s1!1971)))))

(declare-fun d!2250903 () Bool)

(declare-fun c!1345611 () Bool)

(declare-fun e!4343540 () Bool)

(assert (=> d!2250903 (= c!1345611 e!4343540)))

(declare-fun res!2938705 () Bool)

(assert (=> d!2250903 (=> (not res!2938705) (not e!4343540))))

(assert (=> d!2250903 (= res!2938705 (is-Cons!70237 (exprs!8028 lt!2581938)))))

(declare-fun e!4343539 () (Set Context!15056))

(assert (=> d!2250903 (= (derivationStepZipperUp!2442 lt!2581938 (h!76686 s1!1971)) e!4343539)))

(declare-fun b!7244394 () Bool)

(declare-fun e!4343541 () (Set Context!15056))

(assert (=> b!7244394 (= e!4343539 e!4343541)))

(declare-fun c!1345612 () Bool)

(assert (=> b!7244394 (= c!1345612 (is-Cons!70237 (exprs!8028 lt!2581938)))))

(declare-fun b!7244395 () Bool)

(assert (=> b!7244395 (= e!4343539 (set.union call!659746 (derivationStepZipperUp!2442 (Context!15057 (t!384412 (exprs!8028 lt!2581938))) (h!76686 s1!1971))))))

(declare-fun b!7244396 () Bool)

(assert (=> b!7244396 (= e!4343541 call!659746)))

(declare-fun b!7244397 () Bool)

(assert (=> b!7244397 (= e!4343541 (as set.empty (Set Context!15056)))))

(declare-fun b!7244398 () Bool)

(assert (=> b!7244398 (= e!4343540 (nullable!7881 (h!76685 (exprs!8028 lt!2581938))))))

(assert (= (and d!2250903 res!2938705) b!7244398))

(assert (= (and d!2250903 c!1345611) b!7244395))

(assert (= (and d!2250903 (not c!1345611)) b!7244394))

(assert (= (and b!7244394 c!1345612) b!7244396))

(assert (= (and b!7244394 (not c!1345612)) b!7244397))

(assert (= (or b!7244395 b!7244396) bm!659741))

(declare-fun m!7920302 () Bool)

(assert (=> bm!659741 m!7920302))

(declare-fun m!7920304 () Bool)

(assert (=> b!7244395 m!7920304))

(declare-fun m!7920306 () Bool)

(assert (=> b!7244398 m!7920306))

(assert (=> b!7244296 d!2250903))

(declare-fun d!2250905 () Bool)

(declare-fun e!4343544 () Bool)

(assert (=> d!2250905 e!4343544))

(declare-fun res!2938708 () Bool)

(assert (=> d!2250905 (=> (not res!2938708) (not e!4343544))))

(declare-fun lt!2582082 () Context!15056)

(declare-fun dynLambda!28673 (Int Context!15056) Bool)

(assert (=> d!2250905 (= res!2938708 (dynLambda!28673 lambda!442767 lt!2582082))))

(declare-fun getWitness!2141 (List!70363 Int) Context!15056)

(assert (=> d!2250905 (= lt!2582082 (getWitness!2141 (toList!11434 lt!2581921) lambda!442767))))

(assert (=> d!2250905 (exists!4295 lt!2581921 lambda!442767)))

(assert (=> d!2250905 (= (getWitness!2139 lt!2581921 lambda!442767) lt!2582082)))

(declare-fun b!7244401 () Bool)

(assert (=> b!7244401 (= e!4343544 (set.member lt!2582082 lt!2581921))))

(assert (= (and d!2250905 res!2938708) b!7244401))

(declare-fun b_lambda!277975 () Bool)

(assert (=> (not b_lambda!277975) (not d!2250905)))

(declare-fun m!7920308 () Bool)

(assert (=> d!2250905 m!7920308))

(assert (=> d!2250905 m!7920088))

(assert (=> d!2250905 m!7920088))

(declare-fun m!7920310 () Bool)

(assert (=> d!2250905 m!7920310))

(assert (=> d!2250905 m!7920080))

(declare-fun m!7920312 () Bool)

(assert (=> b!7244401 m!7920312))

(assert (=> b!7244307 d!2250905))

(declare-fun bs!1904681 () Bool)

(declare-fun d!2250907 () Bool)

(assert (= bs!1904681 (and d!2250907 b!7244301)))

(declare-fun lambda!442809 () Int)

(assert (=> bs!1904681 (= lambda!442809 lambda!442766)))

(assert (=> d!2250907 (matchZipper!3498 (set.insert (Context!15057 (++!16460 (exprs!8028 lt!2581930) (exprs!8028 ct2!328))) (as set.empty (Set Context!15056))) (++!16461 (t!384413 s1!1971) s2!1849))))

(declare-fun lt!2582088 () Unit!163762)

(assert (=> d!2250907 (= lt!2582088 (lemmaConcatPreservesForall!1397 (exprs!8028 lt!2581930) (exprs!8028 ct2!328) lambda!442809))))

(declare-fun lt!2582087 () Unit!163762)

(declare-fun choose!55864 (Context!15056 Context!15056 List!70362 List!70362) Unit!163762)

(assert (=> d!2250907 (= lt!2582087 (choose!55864 lt!2581930 ct2!328 (t!384413 s1!1971) s2!1849))))

(assert (=> d!2250907 (matchZipper!3498 (set.insert lt!2581930 (as set.empty (Set Context!15056))) (t!384413 s1!1971))))

(assert (=> d!2250907 (= (lemmaConcatenateContextMatchesConcatOfStrings!361 lt!2581930 ct2!328 (t!384413 s1!1971) s2!1849) lt!2582087)))

(declare-fun bs!1904682 () Bool)

(assert (= bs!1904682 d!2250907))

(assert (=> bs!1904682 m!7920154))

(declare-fun m!7920314 () Bool)

(assert (=> bs!1904682 m!7920314))

(declare-fun m!7920316 () Bool)

(assert (=> bs!1904682 m!7920316))

(assert (=> bs!1904682 m!7920152))

(assert (=> bs!1904682 m!7920314))

(declare-fun m!7920318 () Bool)

(assert (=> bs!1904682 m!7920318))

(assert (=> bs!1904682 m!7920316))

(assert (=> bs!1904682 m!7920154))

(declare-fun m!7920320 () Bool)

(assert (=> bs!1904682 m!7920320))

(declare-fun m!7920322 () Bool)

(assert (=> bs!1904682 m!7920322))

(declare-fun m!7920324 () Bool)

(assert (=> bs!1904682 m!7920324))

(assert (=> b!7244307 d!2250907))

(declare-fun d!2250909 () Bool)

(declare-fun c!1345615 () Bool)

(declare-fun isEmpty!40464 (List!70362) Bool)

(assert (=> d!2250909 (= c!1345615 (isEmpty!40464 lt!2581934))))

(declare-fun e!4343547 () Bool)

(assert (=> d!2250909 (= (matchZipper!3498 (set.insert (Context!15057 lt!2581928) (as set.empty (Set Context!15056))) lt!2581934) e!4343547)))

(declare-fun b!7244406 () Bool)

(declare-fun nullableZipper!2873 ((Set Context!15056)) Bool)

(assert (=> b!7244406 (= e!4343547 (nullableZipper!2873 (set.insert (Context!15057 lt!2581928) (as set.empty (Set Context!15056)))))))

(declare-fun b!7244407 () Bool)

(declare-fun head!14860 (List!70362) C!37450)

(declare-fun tail!14257 (List!70362) List!70362)

(assert (=> b!7244407 (= e!4343547 (matchZipper!3498 (derivationStepZipper!3376 (set.insert (Context!15057 lt!2581928) (as set.empty (Set Context!15056))) (head!14860 lt!2581934)) (tail!14257 lt!2581934)))))

(assert (= (and d!2250909 c!1345615) b!7244406))

(assert (= (and d!2250909 (not c!1345615)) b!7244407))

(declare-fun m!7920326 () Bool)

(assert (=> d!2250909 m!7920326))

(assert (=> b!7244406 m!7920140))

(declare-fun m!7920328 () Bool)

(assert (=> b!7244406 m!7920328))

(declare-fun m!7920330 () Bool)

(assert (=> b!7244407 m!7920330))

(assert (=> b!7244407 m!7920140))

(assert (=> b!7244407 m!7920330))

(declare-fun m!7920332 () Bool)

(assert (=> b!7244407 m!7920332))

(declare-fun m!7920334 () Bool)

(assert (=> b!7244407 m!7920334))

(assert (=> b!7244407 m!7920332))

(assert (=> b!7244407 m!7920334))

(declare-fun m!7920336 () Bool)

(assert (=> b!7244407 m!7920336))

(assert (=> b!7244307 d!2250909))

(declare-fun d!2250911 () Bool)

(assert (=> d!2250911 (= (isEmpty!40462 (exprs!8028 ct1!232)) (is-Nil!70237 (exprs!8028 ct1!232)))))

(assert (=> b!7244307 d!2250911))

(declare-fun b!7244418 () Bool)

(declare-fun res!2938713 () Bool)

(declare-fun e!4343552 () Bool)

(assert (=> b!7244418 (=> (not res!2938713) (not e!4343552))))

(declare-fun lt!2582091 () List!70361)

(declare-fun size!41655 (List!70361) Int)

(assert (=> b!7244418 (= res!2938713 (= (size!41655 lt!2582091) (+ (size!41655 (exprs!8028 lt!2581930)) (size!41655 (exprs!8028 ct2!328)))))))

(declare-fun b!7244417 () Bool)

(declare-fun e!4343553 () List!70361)

(assert (=> b!7244417 (= e!4343553 (Cons!70237 (h!76685 (exprs!8028 lt!2581930)) (++!16460 (t!384412 (exprs!8028 lt!2581930)) (exprs!8028 ct2!328))))))

(declare-fun b!7244416 () Bool)

(assert (=> b!7244416 (= e!4343553 (exprs!8028 ct2!328))))

(declare-fun d!2250913 () Bool)

(assert (=> d!2250913 e!4343552))

(declare-fun res!2938714 () Bool)

(assert (=> d!2250913 (=> (not res!2938714) (not e!4343552))))

(declare-fun content!14528 (List!70361) (Set Regex!18588))

(assert (=> d!2250913 (= res!2938714 (= (content!14528 lt!2582091) (set.union (content!14528 (exprs!8028 lt!2581930)) (content!14528 (exprs!8028 ct2!328)))))))

(assert (=> d!2250913 (= lt!2582091 e!4343553)))

(declare-fun c!1345618 () Bool)

(assert (=> d!2250913 (= c!1345618 (is-Nil!70237 (exprs!8028 lt!2581930)))))

(assert (=> d!2250913 (= (++!16460 (exprs!8028 lt!2581930) (exprs!8028 ct2!328)) lt!2582091)))

(declare-fun b!7244419 () Bool)

(assert (=> b!7244419 (= e!4343552 (or (not (= (exprs!8028 ct2!328) Nil!70237)) (= lt!2582091 (exprs!8028 lt!2581930))))))

(assert (= (and d!2250913 c!1345618) b!7244416))

(assert (= (and d!2250913 (not c!1345618)) b!7244417))

(assert (= (and d!2250913 res!2938714) b!7244418))

(assert (= (and b!7244418 res!2938713) b!7244419))

(declare-fun m!7920338 () Bool)

(assert (=> b!7244418 m!7920338))

(declare-fun m!7920340 () Bool)

(assert (=> b!7244418 m!7920340))

(declare-fun m!7920342 () Bool)

(assert (=> b!7244418 m!7920342))

(declare-fun m!7920344 () Bool)

(assert (=> b!7244417 m!7920344))

(declare-fun m!7920346 () Bool)

(assert (=> d!2250913 m!7920346))

(declare-fun m!7920348 () Bool)

(assert (=> d!2250913 m!7920348))

(declare-fun m!7920350 () Bool)

(assert (=> d!2250913 m!7920350))

(assert (=> b!7244307 d!2250913))

(declare-fun d!2250915 () Bool)

(declare-fun e!4343558 () Bool)

(assert (=> d!2250915 e!4343558))

(declare-fun res!2938720 () Bool)

(assert (=> d!2250915 (=> (not res!2938720) (not e!4343558))))

(declare-fun lt!2582094 () List!70362)

(declare-fun content!14529 (List!70362) (Set C!37450))

(assert (=> d!2250915 (= res!2938720 (= (content!14529 lt!2582094) (set.union (content!14529 (t!384413 s1!1971)) (content!14529 s2!1849))))))

(declare-fun e!4343559 () List!70362)

(assert (=> d!2250915 (= lt!2582094 e!4343559)))

(declare-fun c!1345621 () Bool)

(assert (=> d!2250915 (= c!1345621 (is-Nil!70238 (t!384413 s1!1971)))))

(assert (=> d!2250915 (= (++!16461 (t!384413 s1!1971) s2!1849) lt!2582094)))

(declare-fun b!7244429 () Bool)

(assert (=> b!7244429 (= e!4343559 (Cons!70238 (h!76686 (t!384413 s1!1971)) (++!16461 (t!384413 (t!384413 s1!1971)) s2!1849)))))

(declare-fun b!7244430 () Bool)

(declare-fun res!2938719 () Bool)

(assert (=> b!7244430 (=> (not res!2938719) (not e!4343558))))

(declare-fun size!41656 (List!70362) Int)

(assert (=> b!7244430 (= res!2938719 (= (size!41656 lt!2582094) (+ (size!41656 (t!384413 s1!1971)) (size!41656 s2!1849))))))

(declare-fun b!7244428 () Bool)

(assert (=> b!7244428 (= e!4343559 s2!1849)))

(declare-fun b!7244431 () Bool)

(assert (=> b!7244431 (= e!4343558 (or (not (= s2!1849 Nil!70238)) (= lt!2582094 (t!384413 s1!1971))))))

(assert (= (and d!2250915 c!1345621) b!7244428))

(assert (= (and d!2250915 (not c!1345621)) b!7244429))

(assert (= (and d!2250915 res!2938720) b!7244430))

(assert (= (and b!7244430 res!2938719) b!7244431))

(declare-fun m!7920352 () Bool)

(assert (=> d!2250915 m!7920352))

(declare-fun m!7920354 () Bool)

(assert (=> d!2250915 m!7920354))

(declare-fun m!7920356 () Bool)

(assert (=> d!2250915 m!7920356))

(declare-fun m!7920358 () Bool)

(assert (=> b!7244429 m!7920358))

(declare-fun m!7920360 () Bool)

(assert (=> b!7244430 m!7920360))

(declare-fun m!7920362 () Bool)

(assert (=> b!7244430 m!7920362))

(declare-fun m!7920364 () Bool)

(assert (=> b!7244430 m!7920364))

(assert (=> b!7244307 d!2250915))

(declare-fun bm!659742 () Bool)

(declare-fun call!659747 () (Set Context!15056))

(assert (=> bm!659742 (= call!659747 (derivationStepZipperDown!2612 (h!76685 (exprs!8028 ct1!232)) (Context!15057 (t!384412 (exprs!8028 ct1!232))) (h!76686 s1!1971)))))

(declare-fun d!2250917 () Bool)

(declare-fun c!1345622 () Bool)

(declare-fun e!4343561 () Bool)

(assert (=> d!2250917 (= c!1345622 e!4343561)))

(declare-fun res!2938721 () Bool)

(assert (=> d!2250917 (=> (not res!2938721) (not e!4343561))))

(assert (=> d!2250917 (= res!2938721 (is-Cons!70237 (exprs!8028 ct1!232)))))

(declare-fun e!4343560 () (Set Context!15056))

(assert (=> d!2250917 (= (derivationStepZipperUp!2442 ct1!232 (h!76686 s1!1971)) e!4343560)))

(declare-fun b!7244432 () Bool)

(declare-fun e!4343562 () (Set Context!15056))

(assert (=> b!7244432 (= e!4343560 e!4343562)))

(declare-fun c!1345623 () Bool)

(assert (=> b!7244432 (= c!1345623 (is-Cons!70237 (exprs!8028 ct1!232)))))

(declare-fun b!7244433 () Bool)

(assert (=> b!7244433 (= e!4343560 (set.union call!659747 (derivationStepZipperUp!2442 (Context!15057 (t!384412 (exprs!8028 ct1!232))) (h!76686 s1!1971))))))

(declare-fun b!7244434 () Bool)

(assert (=> b!7244434 (= e!4343562 call!659747)))

(declare-fun b!7244435 () Bool)

(assert (=> b!7244435 (= e!4343562 (as set.empty (Set Context!15056)))))

(declare-fun b!7244436 () Bool)

(assert (=> b!7244436 (= e!4343561 (nullable!7881 (h!76685 (exprs!8028 ct1!232))))))

(assert (= (and d!2250917 res!2938721) b!7244436))

(assert (= (and d!2250917 c!1345622) b!7244433))

(assert (= (and d!2250917 (not c!1345622)) b!7244432))

(assert (= (and b!7244432 c!1345623) b!7244434))

(assert (= (and b!7244432 (not c!1345623)) b!7244435))

(assert (= (or b!7244433 b!7244434) bm!659742))

(declare-fun m!7920366 () Bool)

(assert (=> bm!659742 m!7920366))

(declare-fun m!7920368 () Bool)

(assert (=> b!7244433 m!7920368))

(assert (=> b!7244436 m!7920170))

(assert (=> b!7244307 d!2250917))

(declare-fun d!2250919 () Bool)

(assert (=> d!2250919 (forall!17429 (++!16460 (exprs!8028 lt!2581930) (exprs!8028 ct2!328)) lambda!442766)))

(declare-fun lt!2582095 () Unit!163762)

(assert (=> d!2250919 (= lt!2582095 (choose!55863 (exprs!8028 lt!2581930) (exprs!8028 ct2!328) lambda!442766))))

(assert (=> d!2250919 (forall!17429 (exprs!8028 lt!2581930) lambda!442766)))

(assert (=> d!2250919 (= (lemmaConcatPreservesForall!1397 (exprs!8028 lt!2581930) (exprs!8028 ct2!328) lambda!442766) lt!2582095)))

(declare-fun bs!1904683 () Bool)

(assert (= bs!1904683 d!2250919))

(assert (=> bs!1904683 m!7920152))

(assert (=> bs!1904683 m!7920152))

(declare-fun m!7920370 () Bool)

(assert (=> bs!1904683 m!7920370))

(declare-fun m!7920372 () Bool)

(assert (=> bs!1904683 m!7920372))

(declare-fun m!7920374 () Bool)

(assert (=> bs!1904683 m!7920374))

(assert (=> b!7244307 d!2250919))

(declare-fun d!2250921 () Bool)

(declare-fun c!1345624 () Bool)

(assert (=> d!2250921 (= c!1345624 (isEmpty!40464 s1!1971))))

(declare-fun e!4343563 () Bool)

(assert (=> d!2250921 (= (matchZipper!3498 lt!2581946 s1!1971) e!4343563)))

(declare-fun b!7244437 () Bool)

(assert (=> b!7244437 (= e!4343563 (nullableZipper!2873 lt!2581946))))

(declare-fun b!7244438 () Bool)

(assert (=> b!7244438 (= e!4343563 (matchZipper!3498 (derivationStepZipper!3376 lt!2581946 (head!14860 s1!1971)) (tail!14257 s1!1971)))))

(assert (= (and d!2250921 c!1345624) b!7244437))

(assert (= (and d!2250921 (not c!1345624)) b!7244438))

(declare-fun m!7920376 () Bool)

(assert (=> d!2250921 m!7920376))

(declare-fun m!7920378 () Bool)

(assert (=> b!7244437 m!7920378))

(declare-fun m!7920380 () Bool)

(assert (=> b!7244438 m!7920380))

(assert (=> b!7244438 m!7920380))

(declare-fun m!7920382 () Bool)

(assert (=> b!7244438 m!7920382))

(declare-fun m!7920384 () Bool)

(assert (=> b!7244438 m!7920384))

(assert (=> b!7244438 m!7920382))

(assert (=> b!7244438 m!7920384))

(declare-fun m!7920386 () Bool)

(assert (=> b!7244438 m!7920386))

(assert (=> start!704258 d!2250921))

(declare-fun bs!1904684 () Bool)

(declare-fun d!2250923 () Bool)

(assert (= bs!1904684 (and d!2250923 b!7244301)))

(declare-fun lambda!442812 () Int)

(assert (=> bs!1904684 (= lambda!442812 lambda!442766)))

(declare-fun bs!1904685 () Bool)

(assert (= bs!1904685 (and d!2250923 d!2250907)))

(assert (=> bs!1904685 (= lambda!442812 lambda!442809)))

(assert (=> d!2250923 (= (inv!89481 ct1!232) (forall!17429 (exprs!8028 ct1!232) lambda!442812))))

(declare-fun bs!1904686 () Bool)

(assert (= bs!1904686 d!2250923))

(declare-fun m!7920388 () Bool)

(assert (=> bs!1904686 m!7920388))

(assert (=> start!704258 d!2250923))

(declare-fun bs!1904687 () Bool)

(declare-fun d!2250925 () Bool)

(assert (= bs!1904687 (and d!2250925 b!7244301)))

(declare-fun lambda!442813 () Int)

(assert (=> bs!1904687 (= lambda!442813 lambda!442766)))

(declare-fun bs!1904688 () Bool)

(assert (= bs!1904688 (and d!2250925 d!2250907)))

(assert (=> bs!1904688 (= lambda!442813 lambda!442809)))

(declare-fun bs!1904689 () Bool)

(assert (= bs!1904689 (and d!2250925 d!2250923)))

(assert (=> bs!1904689 (= lambda!442813 lambda!442812)))

(assert (=> d!2250925 (= (inv!89481 ct2!328) (forall!17429 (exprs!8028 ct2!328) lambda!442813))))

(declare-fun bs!1904690 () Bool)

(assert (= bs!1904690 d!2250925))

(declare-fun m!7920390 () Bool)

(assert (=> bs!1904690 m!7920390))

(assert (=> start!704258 d!2250925))

(declare-fun d!2250927 () Bool)

(declare-fun c!1345625 () Bool)

(assert (=> d!2250927 (= c!1345625 (isEmpty!40464 (t!384413 s1!1971)))))

(declare-fun e!4343564 () Bool)

(assert (=> d!2250927 (= (matchZipper!3498 lt!2581921 (t!384413 s1!1971)) e!4343564)))

(declare-fun b!7244439 () Bool)

(assert (=> b!7244439 (= e!4343564 (nullableZipper!2873 lt!2581921))))

(declare-fun b!7244440 () Bool)

(assert (=> b!7244440 (= e!4343564 (matchZipper!3498 (derivationStepZipper!3376 lt!2581921 (head!14860 (t!384413 s1!1971))) (tail!14257 (t!384413 s1!1971))))))

(assert (= (and d!2250927 c!1345625) b!7244439))

(assert (= (and d!2250927 (not c!1345625)) b!7244440))

(declare-fun m!7920392 () Bool)

(assert (=> d!2250927 m!7920392))

(declare-fun m!7920394 () Bool)

(assert (=> b!7244439 m!7920394))

(declare-fun m!7920396 () Bool)

(assert (=> b!7244440 m!7920396))

(assert (=> b!7244440 m!7920396))

(declare-fun m!7920398 () Bool)

(assert (=> b!7244440 m!7920398))

(declare-fun m!7920400 () Bool)

(assert (=> b!7244440 m!7920400))

(assert (=> b!7244440 m!7920398))

(assert (=> b!7244440 m!7920400))

(declare-fun m!7920402 () Bool)

(assert (=> b!7244440 m!7920402))

(assert (=> b!7244308 d!2250927))

(declare-fun bs!1904691 () Bool)

(declare-fun d!2250929 () Bool)

(assert (= bs!1904691 (and d!2250929 b!7244300)))

(declare-fun lambda!442814 () Int)

(assert (=> bs!1904691 (= lambda!442814 lambda!442768)))

(declare-fun bs!1904692 () Bool)

(assert (= bs!1904692 (and d!2250929 d!2250895)))

(assert (=> bs!1904692 (= lambda!442814 lambda!442803)))

(assert (=> d!2250929 true))

(assert (=> d!2250929 (= (derivationStepZipper!3376 lt!2581946 (h!76686 s1!1971)) (flatMap!2776 lt!2581946 lambda!442814))))

(declare-fun bs!1904693 () Bool)

(assert (= bs!1904693 d!2250929))

(declare-fun m!7920404 () Bool)

(assert (=> bs!1904693 m!7920404))

(assert (=> b!7244308 d!2250929))

(declare-fun bm!659743 () Bool)

(declare-fun call!659748 () (Set Context!15056))

(assert (=> bm!659743 (= call!659748 (derivationStepZipperDown!2612 (h!76685 (exprs!8028 lt!2581952)) (Context!15057 (t!384412 (exprs!8028 lt!2581952))) (h!76686 s1!1971)))))

(declare-fun d!2250931 () Bool)

(declare-fun c!1345626 () Bool)

(declare-fun e!4343566 () Bool)

(assert (=> d!2250931 (= c!1345626 e!4343566)))

(declare-fun res!2938722 () Bool)

(assert (=> d!2250931 (=> (not res!2938722) (not e!4343566))))

(assert (=> d!2250931 (= res!2938722 (is-Cons!70237 (exprs!8028 lt!2581952)))))

(declare-fun e!4343565 () (Set Context!15056))

(assert (=> d!2250931 (= (derivationStepZipperUp!2442 lt!2581952 (h!76686 s1!1971)) e!4343565)))

(declare-fun b!7244441 () Bool)

(declare-fun e!4343567 () (Set Context!15056))

(assert (=> b!7244441 (= e!4343565 e!4343567)))

(declare-fun c!1345627 () Bool)

(assert (=> b!7244441 (= c!1345627 (is-Cons!70237 (exprs!8028 lt!2581952)))))

(declare-fun b!7244442 () Bool)

(assert (=> b!7244442 (= e!4343565 (set.union call!659748 (derivationStepZipperUp!2442 (Context!15057 (t!384412 (exprs!8028 lt!2581952))) (h!76686 s1!1971))))))

(declare-fun b!7244443 () Bool)

(assert (=> b!7244443 (= e!4343567 call!659748)))

(declare-fun b!7244444 () Bool)

(assert (=> b!7244444 (= e!4343567 (as set.empty (Set Context!15056)))))

(declare-fun b!7244445 () Bool)

(assert (=> b!7244445 (= e!4343566 (nullable!7881 (h!76685 (exprs!8028 lt!2581952))))))

(assert (= (and d!2250931 res!2938722) b!7244445))

(assert (= (and d!2250931 c!1345626) b!7244442))

(assert (= (and d!2250931 (not c!1345626)) b!7244441))

(assert (= (and b!7244441 c!1345627) b!7244443))

(assert (= (and b!7244441 (not c!1345627)) b!7244444))

(assert (= (or b!7244442 b!7244443) bm!659743))

(declare-fun m!7920406 () Bool)

(assert (=> bm!659743 m!7920406))

(declare-fun m!7920408 () Bool)

(assert (=> b!7244442 m!7920408))

(declare-fun m!7920410 () Bool)

(assert (=> b!7244445 m!7920410))

(assert (=> b!7244298 d!2250931))

(declare-fun d!2250933 () Bool)

(assert (=> d!2250933 (= (tail!14255 (exprs!8028 ct1!232)) (t!384412 (exprs!8028 ct1!232)))))

(assert (=> b!7244298 d!2250933))

(declare-fun b!7244468 () Bool)

(declare-fun e!4343583 () (Set Context!15056))

(declare-fun call!659764 () (Set Context!15056))

(declare-fun call!659766 () (Set Context!15056))

(assert (=> b!7244468 (= e!4343583 (set.union call!659764 call!659766))))

(declare-fun b!7244469 () Bool)

(declare-fun c!1345639 () Bool)

(assert (=> b!7244469 (= c!1345639 (is-Star!18588 (h!76685 (exprs!8028 ct1!232))))))

(declare-fun e!4343580 () (Set Context!15056))

(declare-fun e!4343584 () (Set Context!15056))

(assert (=> b!7244469 (= e!4343580 e!4343584)))

(declare-fun b!7244470 () Bool)

(declare-fun e!4343585 () (Set Context!15056))

(assert (=> b!7244470 (= e!4343585 e!4343583)))

(declare-fun c!1345642 () Bool)

(assert (=> b!7244470 (= c!1345642 (is-Union!18588 (h!76685 (exprs!8028 ct1!232))))))

(declare-fun bm!659756 () Bool)

(declare-fun call!659765 () List!70361)

(declare-fun call!659762 () List!70361)

(assert (=> bm!659756 (= call!659765 call!659762)))

(declare-fun b!7244471 () Bool)

(declare-fun e!4343581 () (Set Context!15056))

(assert (=> b!7244471 (= e!4343581 e!4343580)))

(declare-fun c!1345638 () Bool)

(assert (=> b!7244471 (= c!1345638 (is-Concat!27433 (h!76685 (exprs!8028 ct1!232))))))

(declare-fun c!1345641 () Bool)

(declare-fun bm!659757 () Bool)

(declare-fun $colon$colon!2901 (List!70361 Regex!18588) List!70361)

(assert (=> bm!659757 (= call!659762 ($colon$colon!2901 (exprs!8028 lt!2581938) (ite (or c!1345641 c!1345638) (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (h!76685 (exprs!8028 ct1!232)))))))

(declare-fun b!7244472 () Bool)

(declare-fun e!4343582 () Bool)

(assert (=> b!7244472 (= c!1345641 e!4343582)))

(declare-fun res!2938725 () Bool)

(assert (=> b!7244472 (=> (not res!2938725) (not e!4343582))))

(assert (=> b!7244472 (= res!2938725 (is-Concat!27433 (h!76685 (exprs!8028 ct1!232))))))

(assert (=> b!7244472 (= e!4343583 e!4343581)))

(declare-fun b!7244473 () Bool)

(assert (=> b!7244473 (= e!4343584 (as set.empty (Set Context!15056)))))

(declare-fun bm!659758 () Bool)

(declare-fun call!659761 () (Set Context!15056))

(declare-fun call!659763 () (Set Context!15056))

(assert (=> bm!659758 (= call!659761 call!659763)))

(declare-fun bm!659759 () Bool)

(assert (=> bm!659759 (= call!659763 call!659764)))

(declare-fun d!2250935 () Bool)

(declare-fun c!1345640 () Bool)

(assert (=> d!2250935 (= c!1345640 (and (is-ElementMatch!18588 (h!76685 (exprs!8028 ct1!232))) (= (c!1345589 (h!76685 (exprs!8028 ct1!232))) (h!76686 s1!1971))))))

(assert (=> d!2250935 (= (derivationStepZipperDown!2612 (h!76685 (exprs!8028 ct1!232)) lt!2581938 (h!76686 s1!1971)) e!4343585)))

(declare-fun b!7244474 () Bool)

(assert (=> b!7244474 (= e!4343580 call!659761)))

(declare-fun b!7244475 () Bool)

(assert (=> b!7244475 (= e!4343582 (nullable!7881 (regOne!37688 (h!76685 (exprs!8028 ct1!232)))))))

(declare-fun bm!659760 () Bool)

(assert (=> bm!659760 (= call!659764 (derivationStepZipperDown!2612 (ite c!1345642 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345641 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345638 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232)))))) (ite (or c!1345642 c!1345641) lt!2581938 (Context!15057 call!659765)) (h!76686 s1!1971)))))

(declare-fun b!7244476 () Bool)

(assert (=> b!7244476 (= e!4343585 (set.insert lt!2581938 (as set.empty (Set Context!15056))))))

(declare-fun b!7244477 () Bool)

(assert (=> b!7244477 (= e!4343584 call!659761)))

(declare-fun b!7244478 () Bool)

(assert (=> b!7244478 (= e!4343581 (set.union call!659766 call!659763))))

(declare-fun bm!659761 () Bool)

(assert (=> bm!659761 (= call!659766 (derivationStepZipperDown!2612 (ite c!1345642 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232)))) (ite c!1345642 lt!2581938 (Context!15057 call!659762)) (h!76686 s1!1971)))))

(assert (= (and d!2250935 c!1345640) b!7244476))

(assert (= (and d!2250935 (not c!1345640)) b!7244470))

(assert (= (and b!7244470 c!1345642) b!7244468))

(assert (= (and b!7244470 (not c!1345642)) b!7244472))

(assert (= (and b!7244472 res!2938725) b!7244475))

(assert (= (and b!7244472 c!1345641) b!7244478))

(assert (= (and b!7244472 (not c!1345641)) b!7244471))

(assert (= (and b!7244471 c!1345638) b!7244474))

(assert (= (and b!7244471 (not c!1345638)) b!7244469))

(assert (= (and b!7244469 c!1345639) b!7244477))

(assert (= (and b!7244469 (not c!1345639)) b!7244473))

(assert (= (or b!7244474 b!7244477) bm!659756))

(assert (= (or b!7244474 b!7244477) bm!659758))

(assert (= (or b!7244478 bm!659756) bm!659757))

(assert (= (or b!7244478 bm!659758) bm!659759))

(assert (= (or b!7244468 b!7244478) bm!659761))

(assert (= (or b!7244468 bm!659759) bm!659760))

(declare-fun m!7920412 () Bool)

(assert (=> bm!659761 m!7920412))

(declare-fun m!7920414 () Bool)

(assert (=> bm!659760 m!7920414))

(declare-fun m!7920416 () Bool)

(assert (=> b!7244476 m!7920416))

(declare-fun m!7920418 () Bool)

(assert (=> b!7244475 m!7920418))

(declare-fun m!7920420 () Bool)

(assert (=> bm!659757 m!7920420))

(assert (=> b!7244298 d!2250935))

(assert (=> b!7244298 d!2250901))

(declare-fun d!2250937 () Bool)

(assert (=> d!2250937 (= (isEmpty!40462 lt!2581924) (is-Nil!70237 lt!2581924))))

(assert (=> b!7244298 d!2250937))

(declare-fun d!2250939 () Bool)

(declare-fun c!1345643 () Bool)

(assert (=> d!2250939 (= c!1345643 (isEmpty!40464 s2!1849))))

(declare-fun e!4343586 () Bool)

(assert (=> d!2250939 (= (matchZipper!3498 (set.insert ct2!328 (as set.empty (Set Context!15056))) s2!1849) e!4343586)))

(declare-fun b!7244479 () Bool)

(assert (=> b!7244479 (= e!4343586 (nullableZipper!2873 (set.insert ct2!328 (as set.empty (Set Context!15056)))))))

(declare-fun b!7244480 () Bool)

(assert (=> b!7244480 (= e!4343586 (matchZipper!3498 (derivationStepZipper!3376 (set.insert ct2!328 (as set.empty (Set Context!15056))) (head!14860 s2!1849)) (tail!14257 s2!1849)))))

(assert (= (and d!2250939 c!1345643) b!7244479))

(assert (= (and d!2250939 (not c!1345643)) b!7244480))

(declare-fun m!7920422 () Bool)

(assert (=> d!2250939 m!7920422))

(assert (=> b!7244479 m!7920096))

(declare-fun m!7920424 () Bool)

(assert (=> b!7244479 m!7920424))

(declare-fun m!7920426 () Bool)

(assert (=> b!7244480 m!7920426))

(assert (=> b!7244480 m!7920096))

(assert (=> b!7244480 m!7920426))

(declare-fun m!7920428 () Bool)

(assert (=> b!7244480 m!7920428))

(declare-fun m!7920430 () Bool)

(assert (=> b!7244480 m!7920430))

(assert (=> b!7244480 m!7920428))

(assert (=> b!7244480 m!7920430))

(declare-fun m!7920432 () Bool)

(assert (=> b!7244480 m!7920432))

(assert (=> b!7244309 d!2250939))

(declare-fun d!2250941 () Bool)

(declare-fun c!1345644 () Bool)

(assert (=> d!2250941 (= c!1345644 (isEmpty!40464 lt!2581934))))

(declare-fun e!4343587 () Bool)

(assert (=> d!2250941 (= (matchZipper!3498 lt!2581939 lt!2581934) e!4343587)))

(declare-fun b!7244481 () Bool)

(assert (=> b!7244481 (= e!4343587 (nullableZipper!2873 lt!2581939))))

(declare-fun b!7244482 () Bool)

(assert (=> b!7244482 (= e!4343587 (matchZipper!3498 (derivationStepZipper!3376 lt!2581939 (head!14860 lt!2581934)) (tail!14257 lt!2581934)))))

(assert (= (and d!2250941 c!1345644) b!7244481))

(assert (= (and d!2250941 (not c!1345644)) b!7244482))

(assert (=> d!2250941 m!7920326))

(declare-fun m!7920434 () Bool)

(assert (=> b!7244481 m!7920434))

(assert (=> b!7244482 m!7920330))

(assert (=> b!7244482 m!7920330))

(declare-fun m!7920436 () Bool)

(assert (=> b!7244482 m!7920436))

(assert (=> b!7244482 m!7920334))

(assert (=> b!7244482 m!7920436))

(assert (=> b!7244482 m!7920334))

(declare-fun m!7920438 () Bool)

(assert (=> b!7244482 m!7920438))

(assert (=> b!7244299 d!2250941))

(declare-fun d!2250943 () Bool)

(declare-fun c!1345645 () Bool)

(assert (=> d!2250943 (= c!1345645 (isEmpty!40464 (t!384413 s1!1971)))))

(declare-fun e!4343588 () Bool)

(assert (=> d!2250943 (= (matchZipper!3498 lt!2581931 (t!384413 s1!1971)) e!4343588)))

(declare-fun b!7244483 () Bool)

(assert (=> b!7244483 (= e!4343588 (nullableZipper!2873 lt!2581931))))

(declare-fun b!7244484 () Bool)

(assert (=> b!7244484 (= e!4343588 (matchZipper!3498 (derivationStepZipper!3376 lt!2581931 (head!14860 (t!384413 s1!1971))) (tail!14257 (t!384413 s1!1971))))))

(assert (= (and d!2250943 c!1345645) b!7244483))

(assert (= (and d!2250943 (not c!1345645)) b!7244484))

(assert (=> d!2250943 m!7920392))

(declare-fun m!7920440 () Bool)

(assert (=> b!7244483 m!7920440))

(assert (=> b!7244484 m!7920396))

(assert (=> b!7244484 m!7920396))

(declare-fun m!7920442 () Bool)

(assert (=> b!7244484 m!7920442))

(assert (=> b!7244484 m!7920400))

(assert (=> b!7244484 m!7920442))

(assert (=> b!7244484 m!7920400))

(declare-fun m!7920444 () Bool)

(assert (=> b!7244484 m!7920444))

(assert (=> b!7244299 d!2250943))

(declare-fun e!4343591 () Bool)

(declare-fun d!2250945 () Bool)

(assert (=> d!2250945 (= (matchZipper!3498 (set.union lt!2581939 lt!2581953) lt!2581934) e!4343591)))

(declare-fun res!2938728 () Bool)

(assert (=> d!2250945 (=> res!2938728 e!4343591)))

(assert (=> d!2250945 (= res!2938728 (matchZipper!3498 lt!2581939 lt!2581934))))

(declare-fun lt!2582098 () Unit!163762)

(declare-fun choose!55865 ((Set Context!15056) (Set Context!15056) List!70362) Unit!163762)

(assert (=> d!2250945 (= lt!2582098 (choose!55865 lt!2581939 lt!2581953 lt!2581934))))

(assert (=> d!2250945 (= (lemmaZipperConcatMatchesSameAsBothZippers!1707 lt!2581939 lt!2581953 lt!2581934) lt!2582098)))

(declare-fun b!7244487 () Bool)

(assert (=> b!7244487 (= e!4343591 (matchZipper!3498 lt!2581953 lt!2581934))))

(assert (= (and d!2250945 (not res!2938728)) b!7244487))

(declare-fun m!7920446 () Bool)

(assert (=> d!2250945 m!7920446))

(assert (=> d!2250945 m!7920116))

(declare-fun m!7920448 () Bool)

(assert (=> d!2250945 m!7920448))

(assert (=> b!7244487 m!7920104))

(assert (=> b!7244299 d!2250945))

(assert (=> b!7244299 d!2250901))

(declare-fun d!2250947 () Bool)

(declare-fun c!1345646 () Bool)

(assert (=> d!2250947 (= c!1345646 (isEmpty!40464 (t!384413 s1!1971)))))

(declare-fun e!4343592 () Bool)

(assert (=> d!2250947 (= (matchZipper!3498 lt!2581955 (t!384413 s1!1971)) e!4343592)))

(declare-fun b!7244488 () Bool)

(assert (=> b!7244488 (= e!4343592 (nullableZipper!2873 lt!2581955))))

(declare-fun b!7244489 () Bool)

(assert (=> b!7244489 (= e!4343592 (matchZipper!3498 (derivationStepZipper!3376 lt!2581955 (head!14860 (t!384413 s1!1971))) (tail!14257 (t!384413 s1!1971))))))

(assert (= (and d!2250947 c!1345646) b!7244488))

(assert (= (and d!2250947 (not c!1345646)) b!7244489))

(assert (=> d!2250947 m!7920392))

(declare-fun m!7920450 () Bool)

(assert (=> b!7244488 m!7920450))

(assert (=> b!7244489 m!7920396))

(assert (=> b!7244489 m!7920396))

(declare-fun m!7920452 () Bool)

(assert (=> b!7244489 m!7920452))

(assert (=> b!7244489 m!7920400))

(assert (=> b!7244489 m!7920452))

(assert (=> b!7244489 m!7920400))

(declare-fun m!7920454 () Bool)

(assert (=> b!7244489 m!7920454))

(assert (=> b!7244299 d!2250947))

(declare-fun d!2250949 () Bool)

(declare-fun e!4343593 () Bool)

(assert (=> d!2250949 (= (matchZipper!3498 (set.union lt!2581931 lt!2581944) (t!384413 s1!1971)) e!4343593)))

(declare-fun res!2938729 () Bool)

(assert (=> d!2250949 (=> res!2938729 e!4343593)))

(assert (=> d!2250949 (= res!2938729 (matchZipper!3498 lt!2581931 (t!384413 s1!1971)))))

(declare-fun lt!2582099 () Unit!163762)

(assert (=> d!2250949 (= lt!2582099 (choose!55865 lt!2581931 lt!2581944 (t!384413 s1!1971)))))

(assert (=> d!2250949 (= (lemmaZipperConcatMatchesSameAsBothZippers!1707 lt!2581931 lt!2581944 (t!384413 s1!1971)) lt!2582099)))

(declare-fun b!7244490 () Bool)

(assert (=> b!7244490 (= e!4343593 (matchZipper!3498 lt!2581944 (t!384413 s1!1971)))))

(assert (= (and d!2250949 (not res!2938729)) b!7244490))

(declare-fun m!7920456 () Bool)

(assert (=> d!2250949 m!7920456))

(assert (=> d!2250949 m!7920118))

(declare-fun m!7920458 () Bool)

(assert (=> d!2250949 m!7920458))

(assert (=> b!7244490 m!7920134))

(assert (=> b!7244299 d!2250949))

(declare-fun d!2250951 () Bool)

(declare-fun c!1345647 () Bool)

(assert (=> d!2250951 (= c!1345647 (isEmpty!40464 lt!2581934))))

(declare-fun e!4343594 () Bool)

(assert (=> d!2250951 (= (matchZipper!3498 lt!2581942 lt!2581934) e!4343594)))

(declare-fun b!7244491 () Bool)

(assert (=> b!7244491 (= e!4343594 (nullableZipper!2873 lt!2581942))))

(declare-fun b!7244492 () Bool)

(assert (=> b!7244492 (= e!4343594 (matchZipper!3498 (derivationStepZipper!3376 lt!2581942 (head!14860 lt!2581934)) (tail!14257 lt!2581934)))))

(assert (= (and d!2250951 c!1345647) b!7244491))

(assert (= (and d!2250951 (not c!1345647)) b!7244492))

(assert (=> d!2250951 m!7920326))

(declare-fun m!7920460 () Bool)

(assert (=> b!7244491 m!7920460))

(assert (=> b!7244492 m!7920330))

(assert (=> b!7244492 m!7920330))

(declare-fun m!7920462 () Bool)

(assert (=> b!7244492 m!7920462))

(assert (=> b!7244492 m!7920334))

(assert (=> b!7244492 m!7920462))

(assert (=> b!7244492 m!7920334))

(declare-fun m!7920464 () Bool)

(assert (=> b!7244492 m!7920464))

(assert (=> b!7244299 d!2250951))

(declare-fun d!2250953 () Bool)

(declare-fun c!1345648 () Bool)

(assert (=> d!2250953 (= c!1345648 (isEmpty!40464 lt!2581934))))

(declare-fun e!4343595 () Bool)

(assert (=> d!2250953 (= (matchZipper!3498 lt!2581953 lt!2581934) e!4343595)))

(declare-fun b!7244493 () Bool)

(assert (=> b!7244493 (= e!4343595 (nullableZipper!2873 lt!2581953))))

(declare-fun b!7244494 () Bool)

(assert (=> b!7244494 (= e!4343595 (matchZipper!3498 (derivationStepZipper!3376 lt!2581953 (head!14860 lt!2581934)) (tail!14257 lt!2581934)))))

(assert (= (and d!2250953 c!1345648) b!7244493))

(assert (= (and d!2250953 (not c!1345648)) b!7244494))

(assert (=> d!2250953 m!7920326))

(declare-fun m!7920466 () Bool)

(assert (=> b!7244493 m!7920466))

(assert (=> b!7244494 m!7920330))

(assert (=> b!7244494 m!7920330))

(declare-fun m!7920468 () Bool)

(assert (=> b!7244494 m!7920468))

(assert (=> b!7244494 m!7920334))

(assert (=> b!7244494 m!7920468))

(assert (=> b!7244494 m!7920334))

(declare-fun m!7920470 () Bool)

(assert (=> b!7244494 m!7920470))

(assert (=> b!7244310 d!2250953))

(declare-fun d!2250955 () Bool)

(assert (=> d!2250955 (= (tail!14255 lt!2581924) (t!384412 lt!2581924))))

(assert (=> b!7244300 d!2250955))

(declare-fun d!2250957 () Bool)

(declare-fun dynLambda!28674 (Int Context!15056) (Set Context!15056))

(assert (=> d!2250957 (= (flatMap!2776 lt!2581946 lambda!442768) (dynLambda!28674 lambda!442768 ct1!232))))

(declare-fun lt!2582102 () Unit!163762)

(declare-fun choose!55866 ((Set Context!15056) Context!15056 Int) Unit!163762)

(assert (=> d!2250957 (= lt!2582102 (choose!55866 lt!2581946 ct1!232 lambda!442768))))

(assert (=> d!2250957 (= lt!2581946 (set.insert ct1!232 (as set.empty (Set Context!15056))))))

(assert (=> d!2250957 (= (lemmaFlatMapOnSingletonSet!2199 lt!2581946 ct1!232 lambda!442768) lt!2582102)))

(declare-fun b_lambda!277977 () Bool)

(assert (=> (not b_lambda!277977) (not d!2250957)))

(declare-fun bs!1904694 () Bool)

(assert (= bs!1904694 d!2250957))

(assert (=> bs!1904694 m!7920166))

(declare-fun m!7920472 () Bool)

(assert (=> bs!1904694 m!7920472))

(declare-fun m!7920474 () Bool)

(assert (=> bs!1904694 m!7920474))

(assert (=> bs!1904694 m!7920128))

(assert (=> b!7244300 d!2250957))

(declare-fun d!2250959 () Bool)

(declare-fun nullableFct!3091 (Regex!18588) Bool)

(assert (=> d!2250959 (= (nullable!7881 (h!76685 (exprs!8028 ct1!232))) (nullableFct!3091 (h!76685 (exprs!8028 ct1!232))))))

(declare-fun bs!1904695 () Bool)

(assert (= bs!1904695 d!2250959))

(declare-fun m!7920476 () Bool)

(assert (=> bs!1904695 m!7920476))

(assert (=> b!7244300 d!2250959))

(assert (=> b!7244300 d!2250901))

(declare-fun b!7244495 () Bool)

(declare-fun e!4343599 () (Set Context!15056))

(declare-fun call!659770 () (Set Context!15056))

(declare-fun call!659772 () (Set Context!15056))

(assert (=> b!7244495 (= e!4343599 (set.union call!659770 call!659772))))

(declare-fun b!7244496 () Bool)

(declare-fun c!1345650 () Bool)

(assert (=> b!7244496 (= c!1345650 (is-Star!18588 (h!76685 (exprs!8028 ct1!232))))))

(declare-fun e!4343596 () (Set Context!15056))

(declare-fun e!4343600 () (Set Context!15056))

(assert (=> b!7244496 (= e!4343596 e!4343600)))

(declare-fun b!7244497 () Bool)

(declare-fun e!4343601 () (Set Context!15056))

(assert (=> b!7244497 (= e!4343601 e!4343599)))

(declare-fun c!1345653 () Bool)

(assert (=> b!7244497 (= c!1345653 (is-Union!18588 (h!76685 (exprs!8028 ct1!232))))))

(declare-fun bm!659762 () Bool)

(declare-fun call!659771 () List!70361)

(declare-fun call!659768 () List!70361)

(assert (=> bm!659762 (= call!659771 call!659768)))

(declare-fun b!7244498 () Bool)

(declare-fun e!4343597 () (Set Context!15056))

(assert (=> b!7244498 (= e!4343597 e!4343596)))

(declare-fun c!1345649 () Bool)

(assert (=> b!7244498 (= c!1345649 (is-Concat!27433 (h!76685 (exprs!8028 ct1!232))))))

(declare-fun c!1345652 () Bool)

(declare-fun bm!659763 () Bool)

(assert (=> bm!659763 (= call!659768 ($colon$colon!2901 (exprs!8028 lt!2581933) (ite (or c!1345652 c!1345649) (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (h!76685 (exprs!8028 ct1!232)))))))

(declare-fun b!7244499 () Bool)

(declare-fun e!4343598 () Bool)

(assert (=> b!7244499 (= c!1345652 e!4343598)))

(declare-fun res!2938730 () Bool)

(assert (=> b!7244499 (=> (not res!2938730) (not e!4343598))))

(assert (=> b!7244499 (= res!2938730 (is-Concat!27433 (h!76685 (exprs!8028 ct1!232))))))

(assert (=> b!7244499 (= e!4343599 e!4343597)))

(declare-fun b!7244500 () Bool)

(assert (=> b!7244500 (= e!4343600 (as set.empty (Set Context!15056)))))

(declare-fun bm!659764 () Bool)

(declare-fun call!659767 () (Set Context!15056))

(declare-fun call!659769 () (Set Context!15056))

(assert (=> bm!659764 (= call!659767 call!659769)))

(declare-fun bm!659765 () Bool)

(assert (=> bm!659765 (= call!659769 call!659770)))

(declare-fun d!2250961 () Bool)

(declare-fun c!1345651 () Bool)

(assert (=> d!2250961 (= c!1345651 (and (is-ElementMatch!18588 (h!76685 (exprs!8028 ct1!232))) (= (c!1345589 (h!76685 (exprs!8028 ct1!232))) (h!76686 s1!1971))))))

(assert (=> d!2250961 (= (derivationStepZipperDown!2612 (h!76685 (exprs!8028 ct1!232)) lt!2581933 (h!76686 s1!1971)) e!4343601)))

(declare-fun b!7244501 () Bool)

(assert (=> b!7244501 (= e!4343596 call!659767)))

(declare-fun b!7244502 () Bool)

(assert (=> b!7244502 (= e!4343598 (nullable!7881 (regOne!37688 (h!76685 (exprs!8028 ct1!232)))))))

(declare-fun bm!659766 () Bool)

(assert (=> bm!659766 (= call!659770 (derivationStepZipperDown!2612 (ite c!1345653 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345652 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345649 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232)))))) (ite (or c!1345653 c!1345652) lt!2581933 (Context!15057 call!659771)) (h!76686 s1!1971)))))

(declare-fun b!7244503 () Bool)

(assert (=> b!7244503 (= e!4343601 (set.insert lt!2581933 (as set.empty (Set Context!15056))))))

(declare-fun b!7244504 () Bool)

(assert (=> b!7244504 (= e!4343600 call!659767)))

(declare-fun b!7244505 () Bool)

(assert (=> b!7244505 (= e!4343597 (set.union call!659772 call!659769))))

(declare-fun bm!659767 () Bool)

(assert (=> bm!659767 (= call!659772 (derivationStepZipperDown!2612 (ite c!1345653 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232)))) (ite c!1345653 lt!2581933 (Context!15057 call!659768)) (h!76686 s1!1971)))))

(assert (= (and d!2250961 c!1345651) b!7244503))

(assert (= (and d!2250961 (not c!1345651)) b!7244497))

(assert (= (and b!7244497 c!1345653) b!7244495))

(assert (= (and b!7244497 (not c!1345653)) b!7244499))

(assert (= (and b!7244499 res!2938730) b!7244502))

(assert (= (and b!7244499 c!1345652) b!7244505))

(assert (= (and b!7244499 (not c!1345652)) b!7244498))

(assert (= (and b!7244498 c!1345649) b!7244501))

(assert (= (and b!7244498 (not c!1345649)) b!7244496))

(assert (= (and b!7244496 c!1345650) b!7244504))

(assert (= (and b!7244496 (not c!1345650)) b!7244500))

(assert (= (or b!7244501 b!7244504) bm!659762))

(assert (= (or b!7244501 b!7244504) bm!659764))

(assert (= (or b!7244505 bm!659762) bm!659763))

(assert (= (or b!7244505 bm!659764) bm!659765))

(assert (= (or b!7244495 b!7244505) bm!659767))

(assert (= (or b!7244495 bm!659765) bm!659766))

(declare-fun m!7920478 () Bool)

(assert (=> bm!659767 m!7920478))

(declare-fun m!7920480 () Bool)

(assert (=> bm!659766 m!7920480))

(declare-fun m!7920482 () Bool)

(assert (=> b!7244503 m!7920482))

(assert (=> b!7244502 m!7920418))

(declare-fun m!7920484 () Bool)

(assert (=> bm!659763 m!7920484))

(assert (=> b!7244300 d!2250961))

(assert (=> b!7244300 d!2250917))

(declare-fun d!2250963 () Bool)

(declare-fun choose!55867 ((Set Context!15056) Int) (Set Context!15056))

(assert (=> d!2250963 (= (flatMap!2776 lt!2581932 lambda!442768) (choose!55867 lt!2581932 lambda!442768))))

(declare-fun bs!1904696 () Bool)

(assert (= bs!1904696 d!2250963))

(declare-fun m!7920486 () Bool)

(assert (=> bs!1904696 m!7920486))

(assert (=> b!7244300 d!2250963))

(assert (=> b!7244300 d!2250931))

(declare-fun d!2250965 () Bool)

(assert (=> d!2250965 (= (flatMap!2776 lt!2581932 lambda!442768) (dynLambda!28674 lambda!442768 lt!2581952))))

(declare-fun lt!2582103 () Unit!163762)

(assert (=> d!2250965 (= lt!2582103 (choose!55866 lt!2581932 lt!2581952 lambda!442768))))

(assert (=> d!2250965 (= lt!2581932 (set.insert lt!2581952 (as set.empty (Set Context!15056))))))

(assert (=> d!2250965 (= (lemmaFlatMapOnSingletonSet!2199 lt!2581932 lt!2581952 lambda!442768) lt!2582103)))

(declare-fun b_lambda!277979 () Bool)

(assert (=> (not b_lambda!277979) (not d!2250965)))

(declare-fun bs!1904697 () Bool)

(assert (= bs!1904697 d!2250965))

(assert (=> bs!1904697 m!7920162))

(declare-fun m!7920488 () Bool)

(assert (=> bs!1904697 m!7920488))

(declare-fun m!7920490 () Bool)

(assert (=> bs!1904697 m!7920490))

(assert (=> bs!1904697 m!7920100))

(assert (=> b!7244300 d!2250965))

(declare-fun d!2250967 () Bool)

(assert (=> d!2250967 (= (flatMap!2776 lt!2581946 lambda!442768) (choose!55867 lt!2581946 lambda!442768))))

(declare-fun bs!1904698 () Bool)

(assert (= bs!1904698 d!2250967))

(declare-fun m!7920492 () Bool)

(assert (=> bs!1904698 m!7920492))

(assert (=> b!7244300 d!2250967))

(declare-fun d!2250969 () Bool)

(declare-fun c!1345654 () Bool)

(assert (=> d!2250969 (= c!1345654 (isEmpty!40464 (t!384413 s1!1971)))))

(declare-fun e!4343602 () Bool)

(assert (=> d!2250969 (= (matchZipper!3498 lt!2581927 (t!384413 s1!1971)) e!4343602)))

(declare-fun b!7244506 () Bool)

(assert (=> b!7244506 (= e!4343602 (nullableZipper!2873 lt!2581927))))

(declare-fun b!7244507 () Bool)

(assert (=> b!7244507 (= e!4343602 (matchZipper!3498 (derivationStepZipper!3376 lt!2581927 (head!14860 (t!384413 s1!1971))) (tail!14257 (t!384413 s1!1971))))))

(assert (= (and d!2250969 c!1345654) b!7244506))

(assert (= (and d!2250969 (not c!1345654)) b!7244507))

(assert (=> d!2250969 m!7920392))

(declare-fun m!7920494 () Bool)

(assert (=> b!7244506 m!7920494))

(assert (=> b!7244507 m!7920396))

(assert (=> b!7244507 m!7920396))

(declare-fun m!7920496 () Bool)

(assert (=> b!7244507 m!7920496))

(assert (=> b!7244507 m!7920400))

(assert (=> b!7244507 m!7920496))

(assert (=> b!7244507 m!7920400))

(declare-fun m!7920498 () Bool)

(assert (=> b!7244507 m!7920498))

(assert (=> b!7244311 d!2250969))

(declare-fun d!2250971 () Bool)

(declare-fun c!1345655 () Bool)

(assert (=> d!2250971 (= c!1345655 (isEmpty!40464 s1!1971))))

(declare-fun e!4343603 () Bool)

(assert (=> d!2250971 (= (matchZipper!3498 lt!2581932 s1!1971) e!4343603)))

(declare-fun b!7244508 () Bool)

(assert (=> b!7244508 (= e!4343603 (nullableZipper!2873 lt!2581932))))

(declare-fun b!7244509 () Bool)

(assert (=> b!7244509 (= e!4343603 (matchZipper!3498 (derivationStepZipper!3376 lt!2581932 (head!14860 s1!1971)) (tail!14257 s1!1971)))))

(assert (= (and d!2250971 c!1345655) b!7244508))

(assert (= (and d!2250971 (not c!1345655)) b!7244509))

(assert (=> d!2250971 m!7920376))

(declare-fun m!7920500 () Bool)

(assert (=> b!7244508 m!7920500))

(assert (=> b!7244509 m!7920380))

(assert (=> b!7244509 m!7920380))

(declare-fun m!7920502 () Bool)

(assert (=> b!7244509 m!7920502))

(assert (=> b!7244509 m!7920384))

(assert (=> b!7244509 m!7920502))

(assert (=> b!7244509 m!7920384))

(declare-fun m!7920504 () Bool)

(assert (=> b!7244509 m!7920504))

(assert (=> b!7244311 d!2250971))

(declare-fun b!7244512 () Bool)

(declare-fun res!2938731 () Bool)

(declare-fun e!4343604 () Bool)

(assert (=> b!7244512 (=> (not res!2938731) (not e!4343604))))

(declare-fun lt!2582104 () List!70361)

(assert (=> b!7244512 (= res!2938731 (= (size!41655 lt!2582104) (+ (size!41655 (exprs!8028 ct1!232)) (size!41655 (exprs!8028 ct2!328)))))))

(declare-fun b!7244511 () Bool)

(declare-fun e!4343605 () List!70361)

(assert (=> b!7244511 (= e!4343605 (Cons!70237 (h!76685 (exprs!8028 ct1!232)) (++!16460 (t!384412 (exprs!8028 ct1!232)) (exprs!8028 ct2!328))))))

(declare-fun b!7244510 () Bool)

(assert (=> b!7244510 (= e!4343605 (exprs!8028 ct2!328))))

(declare-fun d!2250973 () Bool)

(assert (=> d!2250973 e!4343604))

(declare-fun res!2938732 () Bool)

(assert (=> d!2250973 (=> (not res!2938732) (not e!4343604))))

(assert (=> d!2250973 (= res!2938732 (= (content!14528 lt!2582104) (set.union (content!14528 (exprs!8028 ct1!232)) (content!14528 (exprs!8028 ct2!328)))))))

(assert (=> d!2250973 (= lt!2582104 e!4343605)))

(declare-fun c!1345656 () Bool)

(assert (=> d!2250973 (= c!1345656 (is-Nil!70237 (exprs!8028 ct1!232)))))

(assert (=> d!2250973 (= (++!16460 (exprs!8028 ct1!232) (exprs!8028 ct2!328)) lt!2582104)))

(declare-fun b!7244513 () Bool)

(assert (=> b!7244513 (= e!4343604 (or (not (= (exprs!8028 ct2!328) Nil!70237)) (= lt!2582104 (exprs!8028 ct1!232))))))

(assert (= (and d!2250973 c!1345656) b!7244510))

(assert (= (and d!2250973 (not c!1345656)) b!7244511))

(assert (= (and d!2250973 res!2938732) b!7244512))

(assert (= (and b!7244512 res!2938731) b!7244513))

(declare-fun m!7920506 () Bool)

(assert (=> b!7244512 m!7920506))

(declare-fun m!7920508 () Bool)

(assert (=> b!7244512 m!7920508))

(assert (=> b!7244512 m!7920342))

(declare-fun m!7920510 () Bool)

(assert (=> b!7244511 m!7920510))

(declare-fun m!7920512 () Bool)

(assert (=> d!2250973 m!7920512))

(declare-fun m!7920514 () Bool)

(assert (=> d!2250973 m!7920514))

(assert (=> d!2250973 m!7920350))

(assert (=> b!7244301 d!2250973))

(assert (=> b!7244301 d!2250901))

(declare-fun d!2250975 () Bool)

(declare-fun c!1345657 () Bool)

(assert (=> d!2250975 (= c!1345657 (isEmpty!40464 (t!384413 s1!1971)))))

(declare-fun e!4343606 () Bool)

(assert (=> d!2250975 (= (matchZipper!3498 lt!2581944 (t!384413 s1!1971)) e!4343606)))

(declare-fun b!7244514 () Bool)

(assert (=> b!7244514 (= e!4343606 (nullableZipper!2873 lt!2581944))))

(declare-fun b!7244515 () Bool)

(assert (=> b!7244515 (= e!4343606 (matchZipper!3498 (derivationStepZipper!3376 lt!2581944 (head!14860 (t!384413 s1!1971))) (tail!14257 (t!384413 s1!1971))))))

(assert (= (and d!2250975 c!1345657) b!7244514))

(assert (= (and d!2250975 (not c!1345657)) b!7244515))

(assert (=> d!2250975 m!7920392))

(declare-fun m!7920516 () Bool)

(assert (=> b!7244514 m!7920516))

(assert (=> b!7244515 m!7920396))

(assert (=> b!7244515 m!7920396))

(declare-fun m!7920518 () Bool)

(assert (=> b!7244515 m!7920518))

(assert (=> b!7244515 m!7920400))

(assert (=> b!7244515 m!7920518))

(assert (=> b!7244515 m!7920400))

(declare-fun m!7920520 () Bool)

(assert (=> b!7244515 m!7920520))

(assert (=> b!7244302 d!2250975))

(declare-fun b!7244520 () Bool)

(declare-fun e!4343609 () Bool)

(declare-fun tp!2035999 () Bool)

(assert (=> b!7244520 (= e!4343609 (and tp_is_empty!46641 tp!2035999))))

(assert (=> b!7244304 (= tp!2035983 e!4343609)))

(assert (= (and b!7244304 (is-Cons!70238 (t!384413 s1!1971))) b!7244520))

(declare-fun b!7244525 () Bool)

(declare-fun e!4343612 () Bool)

(declare-fun tp!2036004 () Bool)

(declare-fun tp!2036005 () Bool)

(assert (=> b!7244525 (= e!4343612 (and tp!2036004 tp!2036005))))

(assert (=> b!7244305 (= tp!2035984 e!4343612)))

(assert (= (and b!7244305 (is-Cons!70237 (exprs!8028 ct1!232))) b!7244525))

(declare-fun b!7244526 () Bool)

(declare-fun e!4343613 () Bool)

(declare-fun tp!2036006 () Bool)

(declare-fun tp!2036007 () Bool)

(assert (=> b!7244526 (= e!4343613 (and tp!2036006 tp!2036007))))

(assert (=> b!7244312 (= tp!2035982 e!4343613)))

(assert (= (and b!7244312 (is-Cons!70237 (exprs!8028 ct2!328))) b!7244526))

(declare-fun b!7244527 () Bool)

(declare-fun e!4343614 () Bool)

(declare-fun tp!2036008 () Bool)

(assert (=> b!7244527 (= e!4343614 (and tp_is_empty!46641 tp!2036008))))

(assert (=> b!7244297 (= tp!2035981 e!4343614)))

(assert (= (and b!7244297 (is-Cons!70238 (t!384413 s2!1849))) b!7244527))

(declare-fun b_lambda!277981 () Bool)

(assert (= b_lambda!277977 (or b!7244300 b_lambda!277981)))

(declare-fun bs!1904699 () Bool)

(declare-fun d!2250977 () Bool)

(assert (= bs!1904699 (and d!2250977 b!7244300)))

(assert (=> bs!1904699 (= (dynLambda!28674 lambda!442768 ct1!232) (derivationStepZipperUp!2442 ct1!232 (h!76686 s1!1971)))))

(assert (=> bs!1904699 m!7920148))

(assert (=> d!2250957 d!2250977))

(declare-fun b_lambda!277983 () Bool)

(assert (= b_lambda!277975 (or b!7244303 b_lambda!277983)))

(declare-fun bs!1904700 () Bool)

(declare-fun d!2250979 () Bool)

(assert (= bs!1904700 (and d!2250979 b!7244303)))

(assert (=> bs!1904700 (= (dynLambda!28673 lambda!442767 lt!2582082) (matchZipper!3498 (set.insert lt!2582082 (as set.empty (Set Context!15056))) (t!384413 s1!1971)))))

(declare-fun m!7920522 () Bool)

(assert (=> bs!1904700 m!7920522))

(assert (=> bs!1904700 m!7920522))

(declare-fun m!7920524 () Bool)

(assert (=> bs!1904700 m!7920524))

(assert (=> d!2250905 d!2250979))

(declare-fun b_lambda!277985 () Bool)

(assert (= b_lambda!277979 (or b!7244300 b_lambda!277985)))

(declare-fun bs!1904701 () Bool)

(declare-fun d!2250981 () Bool)

(assert (= bs!1904701 (and d!2250981 b!7244300)))

(assert (=> bs!1904701 (= (dynLambda!28674 lambda!442768 lt!2581952) (derivationStepZipperUp!2442 lt!2581952 (h!76686 s1!1971)))))

(assert (=> bs!1904701 m!7920108))

(assert (=> d!2250965 d!2250981))

(push 1)

(assert (not b!7244525))

(assert (not bm!659757))

(assert (not b!7244390))

(assert (not b!7244527))

(assert (not d!2250949))

(assert (not b!7244430))

(assert (not b!7244438))

(assert (not b!7244442))

(assert (not b!7244493))

(assert (not b!7244437))

(assert (not b!7244479))

(assert (not b!7244436))

(assert (not d!2250905))

(assert (not d!2250967))

(assert (not b!7244507))

(assert (not b!7244511))

(assert (not bm!659761))

(assert (not b!7244395))

(assert (not b!7244489))

(assert (not b!7244515))

(assert (not bm!659767))

(assert (not bm!659766))

(assert (not d!2250915))

(assert (not d!2250943))

(assert (not bm!659742))

(assert (not b!7244506))

(assert (not b!7244439))

(assert (not d!2250895))

(assert (not b!7244417))

(assert (not b!7244512))

(assert (not b!7244475))

(assert (not b!7244433))

(assert (not d!2250889))

(assert (not b!7244492))

(assert (not bm!659743))

(assert (not d!2250963))

(assert (not b!7244440))

(assert (not bs!1904701))

(assert (not b!7244490))

(assert (not d!2250957))

(assert (not d!2250941))

(assert (not bm!659763))

(assert (not b!7244429))

(assert (not d!2250909))

(assert tp_is_empty!46641)

(assert (not b!7244480))

(assert (not d!2250945))

(assert (not d!2250929))

(assert (not b!7244418))

(assert (not bs!1904700))

(assert (not d!2250951))

(assert (not b!7244488))

(assert (not b!7244406))

(assert (not bs!1904699))

(assert (not b!7244520))

(assert (not d!2250907))

(assert (not b_lambda!277981))

(assert (not d!2250897))

(assert (not d!2250925))

(assert (not d!2250947))

(assert (not b!7244491))

(assert (not b!7244407))

(assert (not d!2250923))

(assert (not bm!659741))

(assert (not b_lambda!277985))

(assert (not b_lambda!277983))

(assert (not d!2250939))

(assert (not d!2250927))

(assert (not d!2250973))

(assert (not d!2250893))

(assert (not b!7244445))

(assert (not d!2250919))

(assert (not b!7244502))

(assert (not d!2250891))

(assert (not d!2250913))

(assert (not b!7244398))

(assert (not b!7244526))

(assert (not d!2250901))

(assert (not b!7244484))

(assert (not b!7244509))

(assert (not d!2250971))

(assert (not d!2250965))

(assert (not b!7244483))

(assert (not b!7244393))

(assert (not d!2250953))

(assert (not b!7244508))

(assert (not b!7244487))

(assert (not b!7244494))

(assert (not b!7244514))

(assert (not b!7244374))

(assert (not d!2250969))

(assert (not d!2250959))

(assert (not bm!659760))

(assert (not b!7244481))

(assert (not d!2250975))

(assert (not b!7244482))

(assert (not d!2250921))

(assert (not bm!659740))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7244684 () Bool)

(declare-fun e!4343706 () (Set Context!15056))

(declare-fun call!659806 () (Set Context!15056))

(declare-fun call!659808 () (Set Context!15056))

(assert (=> b!7244684 (= e!4343706 (set.union call!659806 call!659808))))

(declare-fun b!7244685 () Bool)

(declare-fun c!1345716 () Bool)

(assert (=> b!7244685 (= c!1345716 (is-Star!18588 (h!76685 (exprs!8028 lt!2581933))))))

(declare-fun e!4343703 () (Set Context!15056))

(declare-fun e!4343707 () (Set Context!15056))

(assert (=> b!7244685 (= e!4343703 e!4343707)))

(declare-fun b!7244686 () Bool)

(declare-fun e!4343708 () (Set Context!15056))

(assert (=> b!7244686 (= e!4343708 e!4343706)))

(declare-fun c!1345719 () Bool)

(assert (=> b!7244686 (= c!1345719 (is-Union!18588 (h!76685 (exprs!8028 lt!2581933))))))

(declare-fun bm!659798 () Bool)

(declare-fun call!659807 () List!70361)

(declare-fun call!659804 () List!70361)

(assert (=> bm!659798 (= call!659807 call!659804)))

(declare-fun b!7244687 () Bool)

(declare-fun e!4343704 () (Set Context!15056))

(assert (=> b!7244687 (= e!4343704 e!4343703)))

(declare-fun c!1345715 () Bool)

(assert (=> b!7244687 (= c!1345715 (is-Concat!27433 (h!76685 (exprs!8028 lt!2581933))))))

(declare-fun bm!659799 () Bool)

(declare-fun c!1345718 () Bool)

(assert (=> bm!659799 (= call!659804 ($colon$colon!2901 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581933)))) (ite (or c!1345718 c!1345715) (regTwo!37688 (h!76685 (exprs!8028 lt!2581933))) (h!76685 (exprs!8028 lt!2581933)))))))

(declare-fun b!7244688 () Bool)

(declare-fun e!4343705 () Bool)

(assert (=> b!7244688 (= c!1345718 e!4343705)))

(declare-fun res!2938767 () Bool)

(assert (=> b!7244688 (=> (not res!2938767) (not e!4343705))))

(assert (=> b!7244688 (= res!2938767 (is-Concat!27433 (h!76685 (exprs!8028 lt!2581933))))))

(assert (=> b!7244688 (= e!4343706 e!4343704)))

(declare-fun b!7244689 () Bool)

(assert (=> b!7244689 (= e!4343707 (as set.empty (Set Context!15056)))))

(declare-fun bm!659800 () Bool)

(declare-fun call!659803 () (Set Context!15056))

(declare-fun call!659805 () (Set Context!15056))

(assert (=> bm!659800 (= call!659803 call!659805)))

(declare-fun bm!659801 () Bool)

(assert (=> bm!659801 (= call!659805 call!659806)))

(declare-fun d!2251077 () Bool)

(declare-fun c!1345717 () Bool)

(assert (=> d!2251077 (= c!1345717 (and (is-ElementMatch!18588 (h!76685 (exprs!8028 lt!2581933))) (= (c!1345589 (h!76685 (exprs!8028 lt!2581933))) (h!76686 s1!1971))))))

(assert (=> d!2251077 (= (derivationStepZipperDown!2612 (h!76685 (exprs!8028 lt!2581933)) (Context!15057 (t!384412 (exprs!8028 lt!2581933))) (h!76686 s1!1971)) e!4343708)))

(declare-fun b!7244690 () Bool)

(assert (=> b!7244690 (= e!4343703 call!659803)))

(declare-fun b!7244691 () Bool)

(assert (=> b!7244691 (= e!4343705 (nullable!7881 (regOne!37688 (h!76685 (exprs!8028 lt!2581933)))))))

(declare-fun bm!659802 () Bool)

(assert (=> bm!659802 (= call!659806 (derivationStepZipperDown!2612 (ite c!1345719 (regOne!37689 (h!76685 (exprs!8028 lt!2581933))) (ite c!1345718 (regTwo!37688 (h!76685 (exprs!8028 lt!2581933))) (ite c!1345715 (regOne!37688 (h!76685 (exprs!8028 lt!2581933))) (reg!18917 (h!76685 (exprs!8028 lt!2581933)))))) (ite (or c!1345719 c!1345718) (Context!15057 (t!384412 (exprs!8028 lt!2581933))) (Context!15057 call!659807)) (h!76686 s1!1971)))))

(declare-fun b!7244692 () Bool)

(assert (=> b!7244692 (= e!4343708 (set.insert (Context!15057 (t!384412 (exprs!8028 lt!2581933))) (as set.empty (Set Context!15056))))))

(declare-fun b!7244693 () Bool)

(assert (=> b!7244693 (= e!4343707 call!659803)))

(declare-fun b!7244694 () Bool)

(assert (=> b!7244694 (= e!4343704 (set.union call!659808 call!659805))))

(declare-fun bm!659803 () Bool)

(assert (=> bm!659803 (= call!659808 (derivationStepZipperDown!2612 (ite c!1345719 (regTwo!37689 (h!76685 (exprs!8028 lt!2581933))) (regOne!37688 (h!76685 (exprs!8028 lt!2581933)))) (ite c!1345719 (Context!15057 (t!384412 (exprs!8028 lt!2581933))) (Context!15057 call!659804)) (h!76686 s1!1971)))))

(assert (= (and d!2251077 c!1345717) b!7244692))

(assert (= (and d!2251077 (not c!1345717)) b!7244686))

(assert (= (and b!7244686 c!1345719) b!7244684))

(assert (= (and b!7244686 (not c!1345719)) b!7244688))

(assert (= (and b!7244688 res!2938767) b!7244691))

(assert (= (and b!7244688 c!1345718) b!7244694))

(assert (= (and b!7244688 (not c!1345718)) b!7244687))

(assert (= (and b!7244687 c!1345715) b!7244690))

(assert (= (and b!7244687 (not c!1345715)) b!7244685))

(assert (= (and b!7244685 c!1345716) b!7244693))

(assert (= (and b!7244685 (not c!1345716)) b!7244689))

(assert (= (or b!7244690 b!7244693) bm!659798))

(assert (= (or b!7244690 b!7244693) bm!659800))

(assert (= (or b!7244694 bm!659798) bm!659799))

(assert (= (or b!7244694 bm!659800) bm!659801))

(assert (= (or b!7244684 b!7244694) bm!659803))

(assert (= (or b!7244684 bm!659801) bm!659802))

(declare-fun m!7920784 () Bool)

(assert (=> bm!659803 m!7920784))

(declare-fun m!7920786 () Bool)

(assert (=> bm!659802 m!7920786))

(declare-fun m!7920788 () Bool)

(assert (=> b!7244692 m!7920788))

(declare-fun m!7920790 () Bool)

(assert (=> b!7244691 m!7920790))

(declare-fun m!7920792 () Bool)

(assert (=> bm!659799 m!7920792))

(assert (=> bm!659740 d!2251077))

(declare-fun bs!1904732 () Bool)

(declare-fun d!2251079 () Bool)

(assert (= bs!1904732 (and d!2251079 b!7244303)))

(declare-fun lambda!442834 () Int)

(assert (=> bs!1904732 (not (= lambda!442834 lambda!442767))))

(declare-fun bs!1904733 () Bool)

(assert (= bs!1904733 (and d!2251079 d!2250889)))

(assert (=> bs!1904733 (not (= lambda!442834 lambda!442800))))

(declare-fun bs!1904734 () Bool)

(assert (= bs!1904734 (and d!2251079 d!2250897)))

(assert (=> bs!1904734 (not (= lambda!442834 lambda!442806))))

(assert (=> d!2251079 (= (nullableZipper!2873 lt!2581946) (exists!4295 lt!2581946 lambda!442834))))

(declare-fun bs!1904735 () Bool)

(assert (= bs!1904735 d!2251079))

(declare-fun m!7920794 () Bool)

(assert (=> bs!1904735 m!7920794))

(assert (=> b!7244437 d!2251079))

(declare-fun bs!1904736 () Bool)

(declare-fun d!2251081 () Bool)

(assert (= bs!1904736 (and d!2251081 b!7244303)))

(declare-fun lambda!442835 () Int)

(assert (=> bs!1904736 (not (= lambda!442835 lambda!442767))))

(declare-fun bs!1904737 () Bool)

(assert (= bs!1904737 (and d!2251081 d!2250889)))

(assert (=> bs!1904737 (not (= lambda!442835 lambda!442800))))

(declare-fun bs!1904738 () Bool)

(assert (= bs!1904738 (and d!2251081 d!2250897)))

(assert (=> bs!1904738 (not (= lambda!442835 lambda!442806))))

(declare-fun bs!1904739 () Bool)

(assert (= bs!1904739 (and d!2251081 d!2251079)))

(assert (=> bs!1904739 (= lambda!442835 lambda!442834)))

(assert (=> d!2251081 (= (nullableZipper!2873 lt!2581921) (exists!4295 lt!2581921 lambda!442835))))

(declare-fun bs!1904740 () Bool)

(assert (= bs!1904740 d!2251081))

(declare-fun m!7920796 () Bool)

(assert (=> bs!1904740 m!7920796))

(assert (=> b!7244439 d!2251081))

(declare-fun d!2251083 () Bool)

(declare-fun res!2938772 () Bool)

(declare-fun e!4343713 () Bool)

(assert (=> d!2251083 (=> res!2938772 e!4343713)))

(assert (=> d!2251083 (= res!2938772 (is-Nil!70239 lt!2581943))))

(assert (=> d!2251083 (= (forall!17428 lt!2581943 lambda!442806) e!4343713)))

(declare-fun b!7244699 () Bool)

(declare-fun e!4343714 () Bool)

(assert (=> b!7244699 (= e!4343713 e!4343714)))

(declare-fun res!2938773 () Bool)

(assert (=> b!7244699 (=> (not res!2938773) (not e!4343714))))

(assert (=> b!7244699 (= res!2938773 (dynLambda!28673 lambda!442806 (h!76687 lt!2581943)))))

(declare-fun b!7244700 () Bool)

(assert (=> b!7244700 (= e!4343714 (forall!17428 (t!384414 lt!2581943) lambda!442806))))

(assert (= (and d!2251083 (not res!2938772)) b!7244699))

(assert (= (and b!7244699 res!2938773) b!7244700))

(declare-fun b_lambda!277999 () Bool)

(assert (=> (not b_lambda!277999) (not b!7244699)))

(declare-fun m!7920798 () Bool)

(assert (=> b!7244699 m!7920798))

(declare-fun m!7920800 () Bool)

(assert (=> b!7244700 m!7920800))

(assert (=> d!2250897 d!2251083))

(declare-fun d!2251085 () Bool)

(assert (=> d!2251085 (= (isEmpty!40464 lt!2581934) (is-Nil!70238 lt!2581934))))

(assert (=> d!2250953 d!2251085))

(declare-fun bs!1904741 () Bool)

(declare-fun d!2251087 () Bool)

(assert (= bs!1904741 (and d!2251087 d!2251079)))

(declare-fun lambda!442836 () Int)

(assert (=> bs!1904741 (= lambda!442836 lambda!442834)))

(declare-fun bs!1904742 () Bool)

(assert (= bs!1904742 (and d!2251087 d!2250897)))

(assert (=> bs!1904742 (not (= lambda!442836 lambda!442806))))

(declare-fun bs!1904743 () Bool)

(assert (= bs!1904743 (and d!2251087 d!2251081)))

(assert (=> bs!1904743 (= lambda!442836 lambda!442835)))

(declare-fun bs!1904744 () Bool)

(assert (= bs!1904744 (and d!2251087 b!7244303)))

(assert (=> bs!1904744 (not (= lambda!442836 lambda!442767))))

(declare-fun bs!1904745 () Bool)

(assert (= bs!1904745 (and d!2251087 d!2250889)))

(assert (=> bs!1904745 (not (= lambda!442836 lambda!442800))))

(assert (=> d!2251087 (= (nullableZipper!2873 lt!2581932) (exists!4295 lt!2581932 lambda!442836))))

(declare-fun bs!1904746 () Bool)

(assert (= bs!1904746 d!2251087))

(declare-fun m!7920802 () Bool)

(assert (=> bs!1904746 m!7920802))

(assert (=> b!7244508 d!2251087))

(declare-fun d!2251089 () Bool)

(declare-fun c!1345722 () Bool)

(assert (=> d!2251089 (= c!1345722 (isEmpty!40464 (tail!14257 lt!2581934)))))

(declare-fun e!4343715 () Bool)

(assert (=> d!2251089 (= (matchZipper!3498 (derivationStepZipper!3376 (set.insert (Context!15057 lt!2581928) (as set.empty (Set Context!15056))) (head!14860 lt!2581934)) (tail!14257 lt!2581934)) e!4343715)))

(declare-fun b!7244701 () Bool)

(assert (=> b!7244701 (= e!4343715 (nullableZipper!2873 (derivationStepZipper!3376 (set.insert (Context!15057 lt!2581928) (as set.empty (Set Context!15056))) (head!14860 lt!2581934))))))

(declare-fun b!7244702 () Bool)

(assert (=> b!7244702 (= e!4343715 (matchZipper!3498 (derivationStepZipper!3376 (derivationStepZipper!3376 (set.insert (Context!15057 lt!2581928) (as set.empty (Set Context!15056))) (head!14860 lt!2581934)) (head!14860 (tail!14257 lt!2581934))) (tail!14257 (tail!14257 lt!2581934))))))

(assert (= (and d!2251089 c!1345722) b!7244701))

(assert (= (and d!2251089 (not c!1345722)) b!7244702))

(assert (=> d!2251089 m!7920334))

(declare-fun m!7920804 () Bool)

(assert (=> d!2251089 m!7920804))

(assert (=> b!7244701 m!7920332))

(declare-fun m!7920806 () Bool)

(assert (=> b!7244701 m!7920806))

(assert (=> b!7244702 m!7920334))

(declare-fun m!7920808 () Bool)

(assert (=> b!7244702 m!7920808))

(assert (=> b!7244702 m!7920332))

(assert (=> b!7244702 m!7920808))

(declare-fun m!7920810 () Bool)

(assert (=> b!7244702 m!7920810))

(assert (=> b!7244702 m!7920334))

(declare-fun m!7920812 () Bool)

(assert (=> b!7244702 m!7920812))

(assert (=> b!7244702 m!7920810))

(assert (=> b!7244702 m!7920812))

(declare-fun m!7920814 () Bool)

(assert (=> b!7244702 m!7920814))

(assert (=> b!7244407 d!2251089))

(declare-fun bs!1904747 () Bool)

(declare-fun d!2251091 () Bool)

(assert (= bs!1904747 (and d!2251091 b!7244300)))

(declare-fun lambda!442837 () Int)

(assert (=> bs!1904747 (= (= (head!14860 lt!2581934) (h!76686 s1!1971)) (= lambda!442837 lambda!442768))))

(declare-fun bs!1904748 () Bool)

(assert (= bs!1904748 (and d!2251091 d!2250895)))

(assert (=> bs!1904748 (= (= (head!14860 lt!2581934) (h!76686 s1!1971)) (= lambda!442837 lambda!442803))))

(declare-fun bs!1904749 () Bool)

(assert (= bs!1904749 (and d!2251091 d!2250929)))

(assert (=> bs!1904749 (= (= (head!14860 lt!2581934) (h!76686 s1!1971)) (= lambda!442837 lambda!442814))))

(assert (=> d!2251091 true))

(assert (=> d!2251091 (= (derivationStepZipper!3376 (set.insert (Context!15057 lt!2581928) (as set.empty (Set Context!15056))) (head!14860 lt!2581934)) (flatMap!2776 (set.insert (Context!15057 lt!2581928) (as set.empty (Set Context!15056))) lambda!442837))))

(declare-fun bs!1904750 () Bool)

(assert (= bs!1904750 d!2251091))

(assert (=> bs!1904750 m!7920140))

(declare-fun m!7920816 () Bool)

(assert (=> bs!1904750 m!7920816))

(assert (=> b!7244407 d!2251091))

(declare-fun d!2251093 () Bool)

(assert (=> d!2251093 (= (head!14860 lt!2581934) (h!76686 lt!2581934))))

(assert (=> b!7244407 d!2251093))

(declare-fun d!2251095 () Bool)

(assert (=> d!2251095 (= (tail!14257 lt!2581934) (t!384413 lt!2581934))))

(assert (=> b!7244407 d!2251095))

(declare-fun bm!659804 () Bool)

(declare-fun call!659809 () (Set Context!15056))

(assert (=> bm!659804 (= call!659809 (derivationStepZipperDown!2612 (h!76685 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581938))))) (Context!15057 (t!384412 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581938)))))) (h!76686 s1!1971)))))

(declare-fun d!2251097 () Bool)

(declare-fun c!1345723 () Bool)

(declare-fun e!4343717 () Bool)

(assert (=> d!2251097 (= c!1345723 e!4343717)))

(declare-fun res!2938774 () Bool)

(assert (=> d!2251097 (=> (not res!2938774) (not e!4343717))))

(assert (=> d!2251097 (= res!2938774 (is-Cons!70237 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581938))))))))

(declare-fun e!4343716 () (Set Context!15056))

(assert (=> d!2251097 (= (derivationStepZipperUp!2442 (Context!15057 (t!384412 (exprs!8028 lt!2581938))) (h!76686 s1!1971)) e!4343716)))

(declare-fun b!7244703 () Bool)

(declare-fun e!4343718 () (Set Context!15056))

(assert (=> b!7244703 (= e!4343716 e!4343718)))

(declare-fun c!1345724 () Bool)

(assert (=> b!7244703 (= c!1345724 (is-Cons!70237 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581938))))))))

(declare-fun b!7244704 () Bool)

(assert (=> b!7244704 (= e!4343716 (set.union call!659809 (derivationStepZipperUp!2442 (Context!15057 (t!384412 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581938)))))) (h!76686 s1!1971))))))

(declare-fun b!7244705 () Bool)

(assert (=> b!7244705 (= e!4343718 call!659809)))

(declare-fun b!7244706 () Bool)

(assert (=> b!7244706 (= e!4343718 (as set.empty (Set Context!15056)))))

(declare-fun b!7244707 () Bool)

(assert (=> b!7244707 (= e!4343717 (nullable!7881 (h!76685 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581938)))))))))

(assert (= (and d!2251097 res!2938774) b!7244707))

(assert (= (and d!2251097 c!1345723) b!7244704))

(assert (= (and d!2251097 (not c!1345723)) b!7244703))

(assert (= (and b!7244703 c!1345724) b!7244705))

(assert (= (and b!7244703 (not c!1345724)) b!7244706))

(assert (= (or b!7244704 b!7244705) bm!659804))

(declare-fun m!7920818 () Bool)

(assert (=> bm!659804 m!7920818))

(declare-fun m!7920820 () Bool)

(assert (=> b!7244704 m!7920820))

(declare-fun m!7920822 () Bool)

(assert (=> b!7244707 m!7920822))

(assert (=> b!7244395 d!2251097))

(declare-fun d!2251099 () Bool)

(declare-fun lt!2582144 () Int)

(assert (=> d!2251099 (>= lt!2582144 0)))

(declare-fun e!4343721 () Int)

(assert (=> d!2251099 (= lt!2582144 e!4343721)))

(declare-fun c!1345727 () Bool)

(assert (=> d!2251099 (= c!1345727 (is-Nil!70237 lt!2582104))))

(assert (=> d!2251099 (= (size!41655 lt!2582104) lt!2582144)))

(declare-fun b!7244712 () Bool)

(assert (=> b!7244712 (= e!4343721 0)))

(declare-fun b!7244713 () Bool)

(assert (=> b!7244713 (= e!4343721 (+ 1 (size!41655 (t!384412 lt!2582104))))))

(assert (= (and d!2251099 c!1345727) b!7244712))

(assert (= (and d!2251099 (not c!1345727)) b!7244713))

(declare-fun m!7920824 () Bool)

(assert (=> b!7244713 m!7920824))

(assert (=> b!7244512 d!2251099))

(declare-fun d!2251101 () Bool)

(declare-fun lt!2582145 () Int)

(assert (=> d!2251101 (>= lt!2582145 0)))

(declare-fun e!4343722 () Int)

(assert (=> d!2251101 (= lt!2582145 e!4343722)))

(declare-fun c!1345728 () Bool)

(assert (=> d!2251101 (= c!1345728 (is-Nil!70237 (exprs!8028 ct1!232)))))

(assert (=> d!2251101 (= (size!41655 (exprs!8028 ct1!232)) lt!2582145)))

(declare-fun b!7244714 () Bool)

(assert (=> b!7244714 (= e!4343722 0)))

(declare-fun b!7244715 () Bool)

(assert (=> b!7244715 (= e!4343722 (+ 1 (size!41655 (t!384412 (exprs!8028 ct1!232)))))))

(assert (= (and d!2251101 c!1345728) b!7244714))

(assert (= (and d!2251101 (not c!1345728)) b!7244715))

(declare-fun m!7920826 () Bool)

(assert (=> b!7244715 m!7920826))

(assert (=> b!7244512 d!2251101))

(declare-fun d!2251103 () Bool)

(declare-fun lt!2582146 () Int)

(assert (=> d!2251103 (>= lt!2582146 0)))

(declare-fun e!4343723 () Int)

(assert (=> d!2251103 (= lt!2582146 e!4343723)))

(declare-fun c!1345729 () Bool)

(assert (=> d!2251103 (= c!1345729 (is-Nil!70237 (exprs!8028 ct2!328)))))

(assert (=> d!2251103 (= (size!41655 (exprs!8028 ct2!328)) lt!2582146)))

(declare-fun b!7244716 () Bool)

(assert (=> b!7244716 (= e!4343723 0)))

(declare-fun b!7244717 () Bool)

(assert (=> b!7244717 (= e!4343723 (+ 1 (size!41655 (t!384412 (exprs!8028 ct2!328)))))))

(assert (= (and d!2251103 c!1345729) b!7244716))

(assert (= (and d!2251103 (not c!1345729)) b!7244717))

(declare-fun m!7920828 () Bool)

(assert (=> b!7244717 m!7920828))

(assert (=> b!7244512 d!2251103))

(declare-fun bs!1904751 () Bool)

(declare-fun d!2251105 () Bool)

(assert (= bs!1904751 (and d!2251105 d!2251079)))

(declare-fun lambda!442838 () Int)

(assert (=> bs!1904751 (= lambda!442838 lambda!442834)))

(declare-fun bs!1904752 () Bool)

(assert (= bs!1904752 (and d!2251105 d!2251087)))

(assert (=> bs!1904752 (= lambda!442838 lambda!442836)))

(declare-fun bs!1904753 () Bool)

(assert (= bs!1904753 (and d!2251105 d!2250897)))

(assert (=> bs!1904753 (not (= lambda!442838 lambda!442806))))

(declare-fun bs!1904754 () Bool)

(assert (= bs!1904754 (and d!2251105 d!2251081)))

(assert (=> bs!1904754 (= lambda!442838 lambda!442835)))

(declare-fun bs!1904755 () Bool)

(assert (= bs!1904755 (and d!2251105 b!7244303)))

(assert (=> bs!1904755 (not (= lambda!442838 lambda!442767))))

(declare-fun bs!1904756 () Bool)

(assert (= bs!1904756 (and d!2251105 d!2250889)))

(assert (=> bs!1904756 (not (= lambda!442838 lambda!442800))))

(assert (=> d!2251105 (= (nullableZipper!2873 lt!2581931) (exists!4295 lt!2581931 lambda!442838))))

(declare-fun bs!1904757 () Bool)

(assert (= bs!1904757 d!2251105))

(declare-fun m!7920830 () Bool)

(assert (=> bs!1904757 m!7920830))

(assert (=> b!7244483 d!2251105))

(declare-fun d!2251107 () Bool)

(declare-fun c!1345732 () Bool)

(assert (=> d!2251107 (= c!1345732 (is-Nil!70237 lt!2582091))))

(declare-fun e!4343726 () (Set Regex!18588))

(assert (=> d!2251107 (= (content!14528 lt!2582091) e!4343726)))

(declare-fun b!7244722 () Bool)

(assert (=> b!7244722 (= e!4343726 (as set.empty (Set Regex!18588)))))

(declare-fun b!7244723 () Bool)

(assert (=> b!7244723 (= e!4343726 (set.union (set.insert (h!76685 lt!2582091) (as set.empty (Set Regex!18588))) (content!14528 (t!384412 lt!2582091))))))

(assert (= (and d!2251107 c!1345732) b!7244722))

(assert (= (and d!2251107 (not c!1345732)) b!7244723))

(declare-fun m!7920832 () Bool)

(assert (=> b!7244723 m!7920832))

(declare-fun m!7920834 () Bool)

(assert (=> b!7244723 m!7920834))

(assert (=> d!2250913 d!2251107))

(declare-fun d!2251109 () Bool)

(declare-fun c!1345733 () Bool)

(assert (=> d!2251109 (= c!1345733 (is-Nil!70237 (exprs!8028 lt!2581930)))))

(declare-fun e!4343727 () (Set Regex!18588))

(assert (=> d!2251109 (= (content!14528 (exprs!8028 lt!2581930)) e!4343727)))

(declare-fun b!7244724 () Bool)

(assert (=> b!7244724 (= e!4343727 (as set.empty (Set Regex!18588)))))

(declare-fun b!7244725 () Bool)

(assert (=> b!7244725 (= e!4343727 (set.union (set.insert (h!76685 (exprs!8028 lt!2581930)) (as set.empty (Set Regex!18588))) (content!14528 (t!384412 (exprs!8028 lt!2581930)))))))

(assert (= (and d!2251109 c!1345733) b!7244724))

(assert (= (and d!2251109 (not c!1345733)) b!7244725))

(declare-fun m!7920836 () Bool)

(assert (=> b!7244725 m!7920836))

(declare-fun m!7920838 () Bool)

(assert (=> b!7244725 m!7920838))

(assert (=> d!2250913 d!2251109))

(declare-fun d!2251111 () Bool)

(declare-fun c!1345734 () Bool)

(assert (=> d!2251111 (= c!1345734 (is-Nil!70237 (exprs!8028 ct2!328)))))

(declare-fun e!4343728 () (Set Regex!18588))

(assert (=> d!2251111 (= (content!14528 (exprs!8028 ct2!328)) e!4343728)))

(declare-fun b!7244726 () Bool)

(assert (=> b!7244726 (= e!4343728 (as set.empty (Set Regex!18588)))))

(declare-fun b!7244727 () Bool)

(assert (=> b!7244727 (= e!4343728 (set.union (set.insert (h!76685 (exprs!8028 ct2!328)) (as set.empty (Set Regex!18588))) (content!14528 (t!384412 (exprs!8028 ct2!328)))))))

(assert (= (and d!2251111 c!1345734) b!7244726))

(assert (= (and d!2251111 (not c!1345734)) b!7244727))

(declare-fun m!7920840 () Bool)

(assert (=> b!7244727 m!7920840))

(declare-fun m!7920842 () Bool)

(assert (=> b!7244727 m!7920842))

(assert (=> d!2250913 d!2251111))

(declare-fun b!7244728 () Bool)

(declare-fun e!4343732 () (Set Context!15056))

(declare-fun call!659813 () (Set Context!15056))

(declare-fun call!659815 () (Set Context!15056))

(assert (=> b!7244728 (= e!4343732 (set.union call!659813 call!659815))))

(declare-fun b!7244729 () Bool)

(declare-fun c!1345736 () Bool)

(assert (=> b!7244729 (= c!1345736 (is-Star!18588 (h!76685 (exprs!8028 lt!2581938))))))

(declare-fun e!4343729 () (Set Context!15056))

(declare-fun e!4343733 () (Set Context!15056))

(assert (=> b!7244729 (= e!4343729 e!4343733)))

(declare-fun b!7244730 () Bool)

(declare-fun e!4343734 () (Set Context!15056))

(assert (=> b!7244730 (= e!4343734 e!4343732)))

(declare-fun c!1345739 () Bool)

(assert (=> b!7244730 (= c!1345739 (is-Union!18588 (h!76685 (exprs!8028 lt!2581938))))))

(declare-fun bm!659805 () Bool)

(declare-fun call!659814 () List!70361)

(declare-fun call!659811 () List!70361)

(assert (=> bm!659805 (= call!659814 call!659811)))

(declare-fun b!7244731 () Bool)

(declare-fun e!4343730 () (Set Context!15056))

(assert (=> b!7244731 (= e!4343730 e!4343729)))

(declare-fun c!1345735 () Bool)

(assert (=> b!7244731 (= c!1345735 (is-Concat!27433 (h!76685 (exprs!8028 lt!2581938))))))

(declare-fun bm!659806 () Bool)

(declare-fun c!1345738 () Bool)

(assert (=> bm!659806 (= call!659811 ($colon$colon!2901 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581938)))) (ite (or c!1345738 c!1345735) (regTwo!37688 (h!76685 (exprs!8028 lt!2581938))) (h!76685 (exprs!8028 lt!2581938)))))))

(declare-fun b!7244732 () Bool)

(declare-fun e!4343731 () Bool)

(assert (=> b!7244732 (= c!1345738 e!4343731)))

(declare-fun res!2938775 () Bool)

(assert (=> b!7244732 (=> (not res!2938775) (not e!4343731))))

(assert (=> b!7244732 (= res!2938775 (is-Concat!27433 (h!76685 (exprs!8028 lt!2581938))))))

(assert (=> b!7244732 (= e!4343732 e!4343730)))

(declare-fun b!7244733 () Bool)

(assert (=> b!7244733 (= e!4343733 (as set.empty (Set Context!15056)))))

(declare-fun bm!659807 () Bool)

(declare-fun call!659810 () (Set Context!15056))

(declare-fun call!659812 () (Set Context!15056))

(assert (=> bm!659807 (= call!659810 call!659812)))

(declare-fun bm!659808 () Bool)

(assert (=> bm!659808 (= call!659812 call!659813)))

(declare-fun d!2251113 () Bool)

(declare-fun c!1345737 () Bool)

(assert (=> d!2251113 (= c!1345737 (and (is-ElementMatch!18588 (h!76685 (exprs!8028 lt!2581938))) (= (c!1345589 (h!76685 (exprs!8028 lt!2581938))) (h!76686 s1!1971))))))

(assert (=> d!2251113 (= (derivationStepZipperDown!2612 (h!76685 (exprs!8028 lt!2581938)) (Context!15057 (t!384412 (exprs!8028 lt!2581938))) (h!76686 s1!1971)) e!4343734)))

(declare-fun b!7244734 () Bool)

(assert (=> b!7244734 (= e!4343729 call!659810)))

(declare-fun b!7244735 () Bool)

(assert (=> b!7244735 (= e!4343731 (nullable!7881 (regOne!37688 (h!76685 (exprs!8028 lt!2581938)))))))

(declare-fun bm!659809 () Bool)

(assert (=> bm!659809 (= call!659813 (derivationStepZipperDown!2612 (ite c!1345739 (regOne!37689 (h!76685 (exprs!8028 lt!2581938))) (ite c!1345738 (regTwo!37688 (h!76685 (exprs!8028 lt!2581938))) (ite c!1345735 (regOne!37688 (h!76685 (exprs!8028 lt!2581938))) (reg!18917 (h!76685 (exprs!8028 lt!2581938)))))) (ite (or c!1345739 c!1345738) (Context!15057 (t!384412 (exprs!8028 lt!2581938))) (Context!15057 call!659814)) (h!76686 s1!1971)))))

(declare-fun b!7244736 () Bool)

(assert (=> b!7244736 (= e!4343734 (set.insert (Context!15057 (t!384412 (exprs!8028 lt!2581938))) (as set.empty (Set Context!15056))))))

(declare-fun b!7244737 () Bool)

(assert (=> b!7244737 (= e!4343733 call!659810)))

(declare-fun b!7244738 () Bool)

(assert (=> b!7244738 (= e!4343730 (set.union call!659815 call!659812))))

(declare-fun bm!659810 () Bool)

(assert (=> bm!659810 (= call!659815 (derivationStepZipperDown!2612 (ite c!1345739 (regTwo!37689 (h!76685 (exprs!8028 lt!2581938))) (regOne!37688 (h!76685 (exprs!8028 lt!2581938)))) (ite c!1345739 (Context!15057 (t!384412 (exprs!8028 lt!2581938))) (Context!15057 call!659811)) (h!76686 s1!1971)))))

(assert (= (and d!2251113 c!1345737) b!7244736))

(assert (= (and d!2251113 (not c!1345737)) b!7244730))

(assert (= (and b!7244730 c!1345739) b!7244728))

(assert (= (and b!7244730 (not c!1345739)) b!7244732))

(assert (= (and b!7244732 res!2938775) b!7244735))

(assert (= (and b!7244732 c!1345738) b!7244738))

(assert (= (and b!7244732 (not c!1345738)) b!7244731))

(assert (= (and b!7244731 c!1345735) b!7244734))

(assert (= (and b!7244731 (not c!1345735)) b!7244729))

(assert (= (and b!7244729 c!1345736) b!7244737))

(assert (= (and b!7244729 (not c!1345736)) b!7244733))

(assert (= (or b!7244734 b!7244737) bm!659805))

(assert (= (or b!7244734 b!7244737) bm!659807))

(assert (= (or b!7244738 bm!659805) bm!659806))

(assert (= (or b!7244738 bm!659807) bm!659808))

(assert (= (or b!7244728 b!7244738) bm!659810))

(assert (= (or b!7244728 bm!659808) bm!659809))

(declare-fun m!7920844 () Bool)

(assert (=> bm!659810 m!7920844))

(declare-fun m!7920846 () Bool)

(assert (=> bm!659809 m!7920846))

(declare-fun m!7920848 () Bool)

(assert (=> b!7244736 m!7920848))

(declare-fun m!7920850 () Bool)

(assert (=> b!7244735 m!7920850))

(declare-fun m!7920852 () Bool)

(assert (=> bm!659806 m!7920852))

(assert (=> bm!659741 d!2251113))

(declare-fun d!2251115 () Bool)

(declare-fun res!2938780 () Bool)

(declare-fun e!4343739 () Bool)

(assert (=> d!2251115 (=> res!2938780 e!4343739)))

(assert (=> d!2251115 (= res!2938780 (is-Nil!70237 (exprs!8028 ct1!232)))))

(assert (=> d!2251115 (= (forall!17429 (exprs!8028 ct1!232) lambda!442812) e!4343739)))

(declare-fun b!7244743 () Bool)

(declare-fun e!4343740 () Bool)

(assert (=> b!7244743 (= e!4343739 e!4343740)))

(declare-fun res!2938781 () Bool)

(assert (=> b!7244743 (=> (not res!2938781) (not e!4343740))))

(declare-fun dynLambda!28678 (Int Regex!18588) Bool)

(assert (=> b!7244743 (= res!2938781 (dynLambda!28678 lambda!442812 (h!76685 (exprs!8028 ct1!232))))))

(declare-fun b!7244744 () Bool)

(assert (=> b!7244744 (= e!4343740 (forall!17429 (t!384412 (exprs!8028 ct1!232)) lambda!442812))))

(assert (= (and d!2251115 (not res!2938780)) b!7244743))

(assert (= (and b!7244743 res!2938781) b!7244744))

(declare-fun b_lambda!278001 () Bool)

(assert (=> (not b_lambda!278001) (not b!7244743)))

(declare-fun m!7920854 () Bool)

(assert (=> b!7244743 m!7920854))

(declare-fun m!7920856 () Bool)

(assert (=> b!7244744 m!7920856))

(assert (=> d!2250923 d!2251115))

(declare-fun d!2251117 () Bool)

(assert (=> d!2251117 (= (nullable!7881 (h!76685 (exprs!8028 lt!2581952))) (nullableFct!3091 (h!76685 (exprs!8028 lt!2581952))))))

(declare-fun bs!1904758 () Bool)

(assert (= bs!1904758 d!2251117))

(declare-fun m!7920858 () Bool)

(assert (=> bs!1904758 m!7920858))

(assert (=> b!7244445 d!2251117))

(declare-fun d!2251119 () Bool)

(declare-fun e!4343741 () Bool)

(assert (=> d!2251119 e!4343741))

(declare-fun res!2938783 () Bool)

(assert (=> d!2251119 (=> (not res!2938783) (not e!4343741))))

(declare-fun lt!2582147 () List!70362)

(assert (=> d!2251119 (= res!2938783 (= (content!14529 lt!2582147) (set.union (content!14529 (t!384413 (t!384413 s1!1971))) (content!14529 s2!1849))))))

(declare-fun e!4343742 () List!70362)

(assert (=> d!2251119 (= lt!2582147 e!4343742)))

(declare-fun c!1345740 () Bool)

(assert (=> d!2251119 (= c!1345740 (is-Nil!70238 (t!384413 (t!384413 s1!1971))))))

(assert (=> d!2251119 (= (++!16461 (t!384413 (t!384413 s1!1971)) s2!1849) lt!2582147)))

(declare-fun b!7244746 () Bool)

(assert (=> b!7244746 (= e!4343742 (Cons!70238 (h!76686 (t!384413 (t!384413 s1!1971))) (++!16461 (t!384413 (t!384413 (t!384413 s1!1971))) s2!1849)))))

(declare-fun b!7244747 () Bool)

(declare-fun res!2938782 () Bool)

(assert (=> b!7244747 (=> (not res!2938782) (not e!4343741))))

(assert (=> b!7244747 (= res!2938782 (= (size!41656 lt!2582147) (+ (size!41656 (t!384413 (t!384413 s1!1971))) (size!41656 s2!1849))))))

(declare-fun b!7244745 () Bool)

(assert (=> b!7244745 (= e!4343742 s2!1849)))

(declare-fun b!7244748 () Bool)

(assert (=> b!7244748 (= e!4343741 (or (not (= s2!1849 Nil!70238)) (= lt!2582147 (t!384413 (t!384413 s1!1971)))))))

(assert (= (and d!2251119 c!1345740) b!7244745))

(assert (= (and d!2251119 (not c!1345740)) b!7244746))

(assert (= (and d!2251119 res!2938783) b!7244747))

(assert (= (and b!7244747 res!2938782) b!7244748))

(declare-fun m!7920860 () Bool)

(assert (=> d!2251119 m!7920860))

(declare-fun m!7920862 () Bool)

(assert (=> d!2251119 m!7920862))

(assert (=> d!2251119 m!7920356))

(declare-fun m!7920864 () Bool)

(assert (=> b!7244746 m!7920864))

(declare-fun m!7920866 () Bool)

(assert (=> b!7244747 m!7920866))

(declare-fun m!7920868 () Bool)

(assert (=> b!7244747 m!7920868))

(assert (=> b!7244747 m!7920364))

(assert (=> b!7244429 d!2251119))

(declare-fun d!2251121 () Bool)

(assert (=> d!2251121 (= (flatMap!2776 lt!2581946 lambda!442814) (choose!55867 lt!2581946 lambda!442814))))

(declare-fun bs!1904759 () Bool)

(assert (= bs!1904759 d!2251121))

(declare-fun m!7920870 () Bool)

(assert (=> bs!1904759 m!7920870))

(assert (=> d!2250929 d!2251121))

(declare-fun d!2251123 () Bool)

(declare-fun res!2938784 () Bool)

(declare-fun e!4343743 () Bool)

(assert (=> d!2251123 (=> res!2938784 e!4343743)))

(assert (=> d!2251123 (= res!2938784 (is-Nil!70237 (++!16460 (exprs!8028 ct1!232) (exprs!8028 ct2!328))))))

(assert (=> d!2251123 (= (forall!17429 (++!16460 (exprs!8028 ct1!232) (exprs!8028 ct2!328)) lambda!442766) e!4343743)))

(declare-fun b!7244749 () Bool)

(declare-fun e!4343744 () Bool)

(assert (=> b!7244749 (= e!4343743 e!4343744)))

(declare-fun res!2938785 () Bool)

(assert (=> b!7244749 (=> (not res!2938785) (not e!4343744))))

(assert (=> b!7244749 (= res!2938785 (dynLambda!28678 lambda!442766 (h!76685 (++!16460 (exprs!8028 ct1!232) (exprs!8028 ct2!328)))))))

(declare-fun b!7244750 () Bool)

(assert (=> b!7244750 (= e!4343744 (forall!17429 (t!384412 (++!16460 (exprs!8028 ct1!232) (exprs!8028 ct2!328))) lambda!442766))))

(assert (= (and d!2251123 (not res!2938784)) b!7244749))

(assert (= (and b!7244749 res!2938785) b!7244750))

(declare-fun b_lambda!278003 () Bool)

(assert (=> (not b_lambda!278003) (not b!7244749)))

(declare-fun m!7920872 () Bool)

(assert (=> b!7244749 m!7920872))

(declare-fun m!7920874 () Bool)

(assert (=> b!7244750 m!7920874))

(assert (=> d!2250901 d!2251123))

(assert (=> d!2250901 d!2250973))

(declare-fun d!2251125 () Bool)

(assert (=> d!2251125 (forall!17429 (++!16460 (exprs!8028 ct1!232) (exprs!8028 ct2!328)) lambda!442766)))

(assert (=> d!2251125 true))

(declare-fun _$78!738 () Unit!163762)

(assert (=> d!2251125 (= (choose!55863 (exprs!8028 ct1!232) (exprs!8028 ct2!328) lambda!442766) _$78!738)))

(declare-fun bs!1904760 () Bool)

(assert (= bs!1904760 d!2251125))

(assert (=> bs!1904760 m!7920102))

(assert (=> bs!1904760 m!7920102))

(assert (=> bs!1904760 m!7920296))

(assert (=> d!2250901 d!2251125))

(declare-fun d!2251127 () Bool)

(declare-fun res!2938786 () Bool)

(declare-fun e!4343745 () Bool)

(assert (=> d!2251127 (=> res!2938786 e!4343745)))

(assert (=> d!2251127 (= res!2938786 (is-Nil!70237 (exprs!8028 ct1!232)))))

(assert (=> d!2251127 (= (forall!17429 (exprs!8028 ct1!232) lambda!442766) e!4343745)))

(declare-fun b!7244751 () Bool)

(declare-fun e!4343746 () Bool)

(assert (=> b!7244751 (= e!4343745 e!4343746)))

(declare-fun res!2938787 () Bool)

(assert (=> b!7244751 (=> (not res!2938787) (not e!4343746))))

(assert (=> b!7244751 (= res!2938787 (dynLambda!28678 lambda!442766 (h!76685 (exprs!8028 ct1!232))))))

(declare-fun b!7244752 () Bool)

(assert (=> b!7244752 (= e!4343746 (forall!17429 (t!384412 (exprs!8028 ct1!232)) lambda!442766))))

(assert (= (and d!2251127 (not res!2938786)) b!7244751))

(assert (= (and b!7244751 res!2938787) b!7244752))

(declare-fun b_lambda!278005 () Bool)

(assert (=> (not b_lambda!278005) (not b!7244751)))

(declare-fun m!7920876 () Bool)

(assert (=> b!7244751 m!7920876))

(declare-fun m!7920878 () Bool)

(assert (=> b!7244752 m!7920878))

(assert (=> d!2250901 d!2251127))

(declare-fun b!7244767 () Bool)

(declare-fun e!4343760 () Bool)

(declare-fun e!4343762 () Bool)

(assert (=> b!7244767 (= e!4343760 e!4343762)))

(declare-fun res!2938801 () Bool)

(declare-fun call!659820 () Bool)

(assert (=> b!7244767 (= res!2938801 call!659820)))

(assert (=> b!7244767 (=> res!2938801 e!4343762)))

(declare-fun b!7244768 () Bool)

(declare-fun e!4343763 () Bool)

(assert (=> b!7244768 (= e!4343763 e!4343760)))

(declare-fun c!1345743 () Bool)

(assert (=> b!7244768 (= c!1345743 (is-Union!18588 (h!76685 (exprs!8028 ct1!232))))))

(declare-fun b!7244769 () Bool)

(declare-fun e!4343761 () Bool)

(assert (=> b!7244769 (= e!4343761 e!4343763)))

(declare-fun res!2938802 () Bool)

(assert (=> b!7244769 (=> res!2938802 e!4343763)))

(assert (=> b!7244769 (= res!2938802 (is-Star!18588 (h!76685 (exprs!8028 ct1!232))))))

(declare-fun d!2251129 () Bool)

(declare-fun res!2938799 () Bool)

(declare-fun e!4343764 () Bool)

(assert (=> d!2251129 (=> res!2938799 e!4343764)))

(assert (=> d!2251129 (= res!2938799 (is-EmptyExpr!18588 (h!76685 (exprs!8028 ct1!232))))))

(assert (=> d!2251129 (= (nullableFct!3091 (h!76685 (exprs!8028 ct1!232))) e!4343764)))

(declare-fun bm!659815 () Bool)

(assert (=> bm!659815 (= call!659820 (nullable!7881 (ite c!1345743 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))))))

(declare-fun b!7244770 () Bool)

(declare-fun call!659821 () Bool)

(assert (=> b!7244770 (= e!4343762 call!659821)))

(declare-fun b!7244771 () Bool)

(assert (=> b!7244771 (= e!4343764 e!4343761)))

(declare-fun res!2938798 () Bool)

(assert (=> b!7244771 (=> (not res!2938798) (not e!4343761))))

(assert (=> b!7244771 (= res!2938798 (and (not (is-EmptyLang!18588 (h!76685 (exprs!8028 ct1!232)))) (not (is-ElementMatch!18588 (h!76685 (exprs!8028 ct1!232))))))))

(declare-fun b!7244772 () Bool)

(declare-fun e!4343759 () Bool)

(assert (=> b!7244772 (= e!4343759 call!659821)))

(declare-fun b!7244773 () Bool)

(assert (=> b!7244773 (= e!4343760 e!4343759)))

(declare-fun res!2938800 () Bool)

(assert (=> b!7244773 (= res!2938800 call!659820)))

(assert (=> b!7244773 (=> (not res!2938800) (not e!4343759))))

(declare-fun bm!659816 () Bool)

(assert (=> bm!659816 (= call!659821 (nullable!7881 (ite c!1345743 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regTwo!37688 (h!76685 (exprs!8028 ct1!232))))))))

(assert (= (and d!2251129 (not res!2938799)) b!7244771))

(assert (= (and b!7244771 res!2938798) b!7244769))

(assert (= (and b!7244769 (not res!2938802)) b!7244768))

(assert (= (and b!7244768 c!1345743) b!7244767))

(assert (= (and b!7244768 (not c!1345743)) b!7244773))

(assert (= (and b!7244767 (not res!2938801)) b!7244770))

(assert (= (and b!7244773 res!2938800) b!7244772))

(assert (= (or b!7244770 b!7244772) bm!659816))

(assert (= (or b!7244767 b!7244773) bm!659815))

(declare-fun m!7920880 () Bool)

(assert (=> bm!659815 m!7920880))

(declare-fun m!7920882 () Bool)

(assert (=> bm!659816 m!7920882))

(assert (=> d!2250959 d!2251129))

(declare-fun d!2251131 () Bool)

(declare-fun c!1345744 () Bool)

(assert (=> d!2251131 (= c!1345744 (isEmpty!40464 (tail!14257 (t!384413 s1!1971))))))

(declare-fun e!4343765 () Bool)

(assert (=> d!2251131 (= (matchZipper!3498 (derivationStepZipper!3376 lt!2581944 (head!14860 (t!384413 s1!1971))) (tail!14257 (t!384413 s1!1971))) e!4343765)))

(declare-fun b!7244774 () Bool)

(assert (=> b!7244774 (= e!4343765 (nullableZipper!2873 (derivationStepZipper!3376 lt!2581944 (head!14860 (t!384413 s1!1971)))))))

(declare-fun b!7244775 () Bool)

(assert (=> b!7244775 (= e!4343765 (matchZipper!3498 (derivationStepZipper!3376 (derivationStepZipper!3376 lt!2581944 (head!14860 (t!384413 s1!1971))) (head!14860 (tail!14257 (t!384413 s1!1971)))) (tail!14257 (tail!14257 (t!384413 s1!1971)))))))

(assert (= (and d!2251131 c!1345744) b!7244774))

(assert (= (and d!2251131 (not c!1345744)) b!7244775))

(assert (=> d!2251131 m!7920400))

(declare-fun m!7920884 () Bool)

(assert (=> d!2251131 m!7920884))

(assert (=> b!7244774 m!7920518))

(declare-fun m!7920886 () Bool)

(assert (=> b!7244774 m!7920886))

(assert (=> b!7244775 m!7920400))

(declare-fun m!7920888 () Bool)

(assert (=> b!7244775 m!7920888))

(assert (=> b!7244775 m!7920518))

(assert (=> b!7244775 m!7920888))

(declare-fun m!7920890 () Bool)

(assert (=> b!7244775 m!7920890))

(assert (=> b!7244775 m!7920400))

(declare-fun m!7920892 () Bool)

(assert (=> b!7244775 m!7920892))

(assert (=> b!7244775 m!7920890))

(assert (=> b!7244775 m!7920892))

(declare-fun m!7920894 () Bool)

(assert (=> b!7244775 m!7920894))

(assert (=> b!7244515 d!2251131))

(declare-fun bs!1904761 () Bool)

(declare-fun d!2251133 () Bool)

(assert (= bs!1904761 (and d!2251133 b!7244300)))

(declare-fun lambda!442839 () Int)

(assert (=> bs!1904761 (= (= (head!14860 (t!384413 s1!1971)) (h!76686 s1!1971)) (= lambda!442839 lambda!442768))))

(declare-fun bs!1904762 () Bool)

(assert (= bs!1904762 (and d!2251133 d!2250895)))

(assert (=> bs!1904762 (= (= (head!14860 (t!384413 s1!1971)) (h!76686 s1!1971)) (= lambda!442839 lambda!442803))))

(declare-fun bs!1904763 () Bool)

(assert (= bs!1904763 (and d!2251133 d!2250929)))

(assert (=> bs!1904763 (= (= (head!14860 (t!384413 s1!1971)) (h!76686 s1!1971)) (= lambda!442839 lambda!442814))))

(declare-fun bs!1904764 () Bool)

(assert (= bs!1904764 (and d!2251133 d!2251091)))

(assert (=> bs!1904764 (= (= (head!14860 (t!384413 s1!1971)) (head!14860 lt!2581934)) (= lambda!442839 lambda!442837))))

(assert (=> d!2251133 true))

(assert (=> d!2251133 (= (derivationStepZipper!3376 lt!2581944 (head!14860 (t!384413 s1!1971))) (flatMap!2776 lt!2581944 lambda!442839))))

(declare-fun bs!1904765 () Bool)

(assert (= bs!1904765 d!2251133))

(declare-fun m!7920896 () Bool)

(assert (=> bs!1904765 m!7920896))

(assert (=> b!7244515 d!2251133))

(declare-fun d!2251135 () Bool)

(assert (=> d!2251135 (= (head!14860 (t!384413 s1!1971)) (h!76686 (t!384413 s1!1971)))))

(assert (=> b!7244515 d!2251135))

(declare-fun d!2251137 () Bool)

(assert (=> d!2251137 (= (tail!14257 (t!384413 s1!1971)) (t!384413 (t!384413 s1!1971)))))

(assert (=> b!7244515 d!2251137))

(declare-fun d!2251139 () Bool)

(declare-fun c!1345745 () Bool)

(assert (=> d!2251139 (= c!1345745 (isEmpty!40464 (tail!14257 lt!2581934)))))

(declare-fun e!4343766 () Bool)

(assert (=> d!2251139 (= (matchZipper!3498 (derivationStepZipper!3376 lt!2581942 (head!14860 lt!2581934)) (tail!14257 lt!2581934)) e!4343766)))

(declare-fun b!7244776 () Bool)

(assert (=> b!7244776 (= e!4343766 (nullableZipper!2873 (derivationStepZipper!3376 lt!2581942 (head!14860 lt!2581934))))))

(declare-fun b!7244777 () Bool)

(assert (=> b!7244777 (= e!4343766 (matchZipper!3498 (derivationStepZipper!3376 (derivationStepZipper!3376 lt!2581942 (head!14860 lt!2581934)) (head!14860 (tail!14257 lt!2581934))) (tail!14257 (tail!14257 lt!2581934))))))

(assert (= (and d!2251139 c!1345745) b!7244776))

(assert (= (and d!2251139 (not c!1345745)) b!7244777))

(assert (=> d!2251139 m!7920334))

(assert (=> d!2251139 m!7920804))

(assert (=> b!7244776 m!7920462))

(declare-fun m!7920898 () Bool)

(assert (=> b!7244776 m!7920898))

(assert (=> b!7244777 m!7920334))

(assert (=> b!7244777 m!7920808))

(assert (=> b!7244777 m!7920462))

(assert (=> b!7244777 m!7920808))

(declare-fun m!7920900 () Bool)

(assert (=> b!7244777 m!7920900))

(assert (=> b!7244777 m!7920334))

(assert (=> b!7244777 m!7920812))

(assert (=> b!7244777 m!7920900))

(assert (=> b!7244777 m!7920812))

(declare-fun m!7920902 () Bool)

(assert (=> b!7244777 m!7920902))

(assert (=> b!7244492 d!2251139))

(declare-fun bs!1904766 () Bool)

(declare-fun d!2251141 () Bool)

(assert (= bs!1904766 (and d!2251141 d!2250929)))

(declare-fun lambda!442840 () Int)

(assert (=> bs!1904766 (= (= (head!14860 lt!2581934) (h!76686 s1!1971)) (= lambda!442840 lambda!442814))))

(declare-fun bs!1904767 () Bool)

(assert (= bs!1904767 (and d!2251141 d!2251091)))

(assert (=> bs!1904767 (= lambda!442840 lambda!442837)))

(declare-fun bs!1904768 () Bool)

(assert (= bs!1904768 (and d!2251141 d!2250895)))

(assert (=> bs!1904768 (= (= (head!14860 lt!2581934) (h!76686 s1!1971)) (= lambda!442840 lambda!442803))))

(declare-fun bs!1904769 () Bool)

(assert (= bs!1904769 (and d!2251141 b!7244300)))

(assert (=> bs!1904769 (= (= (head!14860 lt!2581934) (h!76686 s1!1971)) (= lambda!442840 lambda!442768))))

(declare-fun bs!1904770 () Bool)

(assert (= bs!1904770 (and d!2251141 d!2251133)))

(assert (=> bs!1904770 (= (= (head!14860 lt!2581934) (head!14860 (t!384413 s1!1971))) (= lambda!442840 lambda!442839))))

(assert (=> d!2251141 true))

(assert (=> d!2251141 (= (derivationStepZipper!3376 lt!2581942 (head!14860 lt!2581934)) (flatMap!2776 lt!2581942 lambda!442840))))

(declare-fun bs!1904771 () Bool)

(assert (= bs!1904771 d!2251141))

(declare-fun m!7920904 () Bool)

(assert (=> bs!1904771 m!7920904))

(assert (=> b!7244492 d!2251141))

(assert (=> b!7244492 d!2251093))

(assert (=> b!7244492 d!2251095))

(declare-fun bs!1904772 () Bool)

(declare-fun d!2251143 () Bool)

(assert (= bs!1904772 (and d!2251143 d!2251079)))

(declare-fun lambda!442841 () Int)

(assert (=> bs!1904772 (= lambda!442841 lambda!442834)))

(declare-fun bs!1904773 () Bool)

(assert (= bs!1904773 (and d!2251143 d!2251087)))

(assert (=> bs!1904773 (= lambda!442841 lambda!442836)))

(declare-fun bs!1904774 () Bool)

(assert (= bs!1904774 (and d!2251143 d!2250897)))

(assert (=> bs!1904774 (not (= lambda!442841 lambda!442806))))

(declare-fun bs!1904775 () Bool)

(assert (= bs!1904775 (and d!2251143 d!2251081)))

(assert (=> bs!1904775 (= lambda!442841 lambda!442835)))

(declare-fun bs!1904776 () Bool)

(assert (= bs!1904776 (and d!2251143 d!2251105)))

(assert (=> bs!1904776 (= lambda!442841 lambda!442838)))

(declare-fun bs!1904777 () Bool)

(assert (= bs!1904777 (and d!2251143 b!7244303)))

(assert (=> bs!1904777 (not (= lambda!442841 lambda!442767))))

(declare-fun bs!1904778 () Bool)

(assert (= bs!1904778 (and d!2251143 d!2250889)))

(assert (=> bs!1904778 (not (= lambda!442841 lambda!442800))))

(assert (=> d!2251143 (= (nullableZipper!2873 lt!2581942) (exists!4295 lt!2581942 lambda!442841))))

(declare-fun bs!1904779 () Bool)

(assert (= bs!1904779 d!2251143))

(declare-fun m!7920906 () Bool)

(assert (=> bs!1904779 m!7920906))

(assert (=> b!7244491 d!2251143))

(declare-fun d!2251145 () Bool)

(declare-fun c!1345746 () Bool)

(assert (=> d!2251145 (= c!1345746 (isEmpty!40464 (tail!14257 (t!384413 s1!1971))))))

(declare-fun e!4343767 () Bool)

(assert (=> d!2251145 (= (matchZipper!3498 (derivationStepZipper!3376 lt!2581955 (head!14860 (t!384413 s1!1971))) (tail!14257 (t!384413 s1!1971))) e!4343767)))

(declare-fun b!7244778 () Bool)

(assert (=> b!7244778 (= e!4343767 (nullableZipper!2873 (derivationStepZipper!3376 lt!2581955 (head!14860 (t!384413 s1!1971)))))))

(declare-fun b!7244779 () Bool)

(assert (=> b!7244779 (= e!4343767 (matchZipper!3498 (derivationStepZipper!3376 (derivationStepZipper!3376 lt!2581955 (head!14860 (t!384413 s1!1971))) (head!14860 (tail!14257 (t!384413 s1!1971)))) (tail!14257 (tail!14257 (t!384413 s1!1971)))))))

(assert (= (and d!2251145 c!1345746) b!7244778))

(assert (= (and d!2251145 (not c!1345746)) b!7244779))

(assert (=> d!2251145 m!7920400))

(assert (=> d!2251145 m!7920884))

(assert (=> b!7244778 m!7920452))

(declare-fun m!7920908 () Bool)

(assert (=> b!7244778 m!7920908))

(assert (=> b!7244779 m!7920400))

(assert (=> b!7244779 m!7920888))

(assert (=> b!7244779 m!7920452))

(assert (=> b!7244779 m!7920888))

(declare-fun m!7920910 () Bool)

(assert (=> b!7244779 m!7920910))

(assert (=> b!7244779 m!7920400))

(assert (=> b!7244779 m!7920892))

(assert (=> b!7244779 m!7920910))

(assert (=> b!7244779 m!7920892))

(declare-fun m!7920912 () Bool)

(assert (=> b!7244779 m!7920912))

(assert (=> b!7244489 d!2251145))

(declare-fun bs!1904780 () Bool)

(declare-fun d!2251147 () Bool)

(assert (= bs!1904780 (and d!2251147 d!2251141)))

(declare-fun lambda!442842 () Int)

(assert (=> bs!1904780 (= (= (head!14860 (t!384413 s1!1971)) (head!14860 lt!2581934)) (= lambda!442842 lambda!442840))))

(declare-fun bs!1904781 () Bool)

(assert (= bs!1904781 (and d!2251147 d!2250929)))

(assert (=> bs!1904781 (= (= (head!14860 (t!384413 s1!1971)) (h!76686 s1!1971)) (= lambda!442842 lambda!442814))))

(declare-fun bs!1904782 () Bool)

(assert (= bs!1904782 (and d!2251147 d!2251091)))

(assert (=> bs!1904782 (= (= (head!14860 (t!384413 s1!1971)) (head!14860 lt!2581934)) (= lambda!442842 lambda!442837))))

(declare-fun bs!1904783 () Bool)

(assert (= bs!1904783 (and d!2251147 d!2250895)))

(assert (=> bs!1904783 (= (= (head!14860 (t!384413 s1!1971)) (h!76686 s1!1971)) (= lambda!442842 lambda!442803))))

(declare-fun bs!1904784 () Bool)

(assert (= bs!1904784 (and d!2251147 b!7244300)))

(assert (=> bs!1904784 (= (= (head!14860 (t!384413 s1!1971)) (h!76686 s1!1971)) (= lambda!442842 lambda!442768))))

(declare-fun bs!1904785 () Bool)

(assert (= bs!1904785 (and d!2251147 d!2251133)))

(assert (=> bs!1904785 (= lambda!442842 lambda!442839)))

(assert (=> d!2251147 true))

(assert (=> d!2251147 (= (derivationStepZipper!3376 lt!2581955 (head!14860 (t!384413 s1!1971))) (flatMap!2776 lt!2581955 lambda!442842))))

(declare-fun bs!1904786 () Bool)

(assert (= bs!1904786 d!2251147))

(declare-fun m!7920914 () Bool)

(assert (=> bs!1904786 m!7920914))

(assert (=> b!7244489 d!2251147))

(assert (=> b!7244489 d!2251135))

(assert (=> b!7244489 d!2251137))

(assert (=> d!2250965 d!2250963))

(declare-fun d!2251149 () Bool)

(assert (=> d!2251149 (= (flatMap!2776 lt!2581932 lambda!442768) (dynLambda!28674 lambda!442768 lt!2581952))))

(assert (=> d!2251149 true))

(declare-fun _$13!4564 () Unit!163762)

(assert (=> d!2251149 (= (choose!55866 lt!2581932 lt!2581952 lambda!442768) _$13!4564)))

(declare-fun b_lambda!278007 () Bool)

(assert (=> (not b_lambda!278007) (not d!2251149)))

(declare-fun bs!1904787 () Bool)

(assert (= bs!1904787 d!2251149))

(assert (=> bs!1904787 m!7920162))

(assert (=> bs!1904787 m!7920488))

(assert (=> d!2250965 d!2251149))

(declare-fun bm!659817 () Bool)

(declare-fun call!659822 () (Set Context!15056))

(assert (=> bm!659817 (= call!659822 (derivationStepZipperDown!2612 (h!76685 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581952))))) (Context!15057 (t!384412 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581952)))))) (h!76686 s1!1971)))))

(declare-fun d!2251151 () Bool)

(declare-fun c!1345747 () Bool)

(declare-fun e!4343769 () Bool)

(assert (=> d!2251151 (= c!1345747 e!4343769)))

(declare-fun res!2938803 () Bool)

(assert (=> d!2251151 (=> (not res!2938803) (not e!4343769))))

(assert (=> d!2251151 (= res!2938803 (is-Cons!70237 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581952))))))))

(declare-fun e!4343768 () (Set Context!15056))

(assert (=> d!2251151 (= (derivationStepZipperUp!2442 (Context!15057 (t!384412 (exprs!8028 lt!2581952))) (h!76686 s1!1971)) e!4343768)))

(declare-fun b!7244780 () Bool)

(declare-fun e!4343770 () (Set Context!15056))

(assert (=> b!7244780 (= e!4343768 e!4343770)))

(declare-fun c!1345748 () Bool)

(assert (=> b!7244780 (= c!1345748 (is-Cons!70237 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581952))))))))

(declare-fun b!7244781 () Bool)

(assert (=> b!7244781 (= e!4343768 (set.union call!659822 (derivationStepZipperUp!2442 (Context!15057 (t!384412 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581952)))))) (h!76686 s1!1971))))))

(declare-fun b!7244782 () Bool)

(assert (=> b!7244782 (= e!4343770 call!659822)))

(declare-fun b!7244783 () Bool)

(assert (=> b!7244783 (= e!4343770 (as set.empty (Set Context!15056)))))

(declare-fun b!7244784 () Bool)

(assert (=> b!7244784 (= e!4343769 (nullable!7881 (h!76685 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581952)))))))))

(assert (= (and d!2251151 res!2938803) b!7244784))

(assert (= (and d!2251151 c!1345747) b!7244781))

(assert (= (and d!2251151 (not c!1345747)) b!7244780))

(assert (= (and b!7244780 c!1345748) b!7244782))

(assert (= (and b!7244780 (not c!1345748)) b!7244783))

(assert (= (or b!7244781 b!7244782) bm!659817))

(declare-fun m!7920916 () Bool)

(assert (=> bm!659817 m!7920916))

(declare-fun m!7920918 () Bool)

(assert (=> b!7244781 m!7920918))

(declare-fun m!7920920 () Bool)

(assert (=> b!7244784 m!7920920))

(assert (=> b!7244442 d!2251151))

(declare-fun b!7244785 () Bool)

(declare-fun e!4343774 () (Set Context!15056))

(declare-fun call!659826 () (Set Context!15056))

(declare-fun call!659828 () (Set Context!15056))

(assert (=> b!7244785 (= e!4343774 (set.union call!659826 call!659828))))

(declare-fun b!7244786 () Bool)

(declare-fun c!1345750 () Bool)

(assert (=> b!7244786 (= c!1345750 (is-Star!18588 (ite c!1345653 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345652 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345649 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))))))

(declare-fun e!4343771 () (Set Context!15056))

(declare-fun e!4343775 () (Set Context!15056))

(assert (=> b!7244786 (= e!4343771 e!4343775)))

(declare-fun b!7244787 () Bool)

(declare-fun e!4343776 () (Set Context!15056))

(assert (=> b!7244787 (= e!4343776 e!4343774)))

(declare-fun c!1345753 () Bool)

(assert (=> b!7244787 (= c!1345753 (is-Union!18588 (ite c!1345653 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345652 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345649 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))))))

(declare-fun bm!659818 () Bool)

(declare-fun call!659827 () List!70361)

(declare-fun call!659824 () List!70361)

(assert (=> bm!659818 (= call!659827 call!659824)))

(declare-fun b!7244788 () Bool)

(declare-fun e!4343772 () (Set Context!15056))

(assert (=> b!7244788 (= e!4343772 e!4343771)))

(declare-fun c!1345749 () Bool)

(assert (=> b!7244788 (= c!1345749 (is-Concat!27433 (ite c!1345653 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345652 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345649 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))))))

(declare-fun c!1345752 () Bool)

(declare-fun bm!659819 () Bool)

(assert (=> bm!659819 (= call!659824 ($colon$colon!2901 (exprs!8028 (ite (or c!1345653 c!1345652) lt!2581933 (Context!15057 call!659771))) (ite (or c!1345752 c!1345749) (regTwo!37688 (ite c!1345653 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345652 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345649 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))) (ite c!1345653 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345652 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345649 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232)))))))))))

(declare-fun b!7244789 () Bool)

(declare-fun e!4343773 () Bool)

(assert (=> b!7244789 (= c!1345752 e!4343773)))

(declare-fun res!2938804 () Bool)

(assert (=> b!7244789 (=> (not res!2938804) (not e!4343773))))

(assert (=> b!7244789 (= res!2938804 (is-Concat!27433 (ite c!1345653 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345652 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345649 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))))))

(assert (=> b!7244789 (= e!4343774 e!4343772)))

(declare-fun b!7244790 () Bool)

(assert (=> b!7244790 (= e!4343775 (as set.empty (Set Context!15056)))))

(declare-fun bm!659820 () Bool)

(declare-fun call!659823 () (Set Context!15056))

(declare-fun call!659825 () (Set Context!15056))

(assert (=> bm!659820 (= call!659823 call!659825)))

(declare-fun bm!659821 () Bool)

(assert (=> bm!659821 (= call!659825 call!659826)))

(declare-fun d!2251153 () Bool)

(declare-fun c!1345751 () Bool)

(assert (=> d!2251153 (= c!1345751 (and (is-ElementMatch!18588 (ite c!1345653 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345652 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345649 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))) (= (c!1345589 (ite c!1345653 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345652 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345649 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))) (h!76686 s1!1971))))))

(assert (=> d!2251153 (= (derivationStepZipperDown!2612 (ite c!1345653 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345652 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345649 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232)))))) (ite (or c!1345653 c!1345652) lt!2581933 (Context!15057 call!659771)) (h!76686 s1!1971)) e!4343776)))

(declare-fun b!7244791 () Bool)

(assert (=> b!7244791 (= e!4343771 call!659823)))

(declare-fun b!7244792 () Bool)

(assert (=> b!7244792 (= e!4343773 (nullable!7881 (regOne!37688 (ite c!1345653 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345652 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345649 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232)))))))))))

(declare-fun bm!659822 () Bool)

(assert (=> bm!659822 (= call!659826 (derivationStepZipperDown!2612 (ite c!1345753 (regOne!37689 (ite c!1345653 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345652 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345649 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))) (ite c!1345752 (regTwo!37688 (ite c!1345653 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345652 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345649 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))) (ite c!1345749 (regOne!37688 (ite c!1345653 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345652 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345649 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))) (reg!18917 (ite c!1345653 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345652 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345649 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232)))))))))) (ite (or c!1345753 c!1345752) (ite (or c!1345653 c!1345652) lt!2581933 (Context!15057 call!659771)) (Context!15057 call!659827)) (h!76686 s1!1971)))))

(declare-fun b!7244793 () Bool)

(assert (=> b!7244793 (= e!4343776 (set.insert (ite (or c!1345653 c!1345652) lt!2581933 (Context!15057 call!659771)) (as set.empty (Set Context!15056))))))

(declare-fun b!7244794 () Bool)

(assert (=> b!7244794 (= e!4343775 call!659823)))

(declare-fun b!7244795 () Bool)

(assert (=> b!7244795 (= e!4343772 (set.union call!659828 call!659825))))

(declare-fun bm!659823 () Bool)

(assert (=> bm!659823 (= call!659828 (derivationStepZipperDown!2612 (ite c!1345753 (regTwo!37689 (ite c!1345653 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345652 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345649 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))) (regOne!37688 (ite c!1345653 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345652 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345649 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232)))))))) (ite c!1345753 (ite (or c!1345653 c!1345652) lt!2581933 (Context!15057 call!659771)) (Context!15057 call!659824)) (h!76686 s1!1971)))))

(assert (= (and d!2251153 c!1345751) b!7244793))

(assert (= (and d!2251153 (not c!1345751)) b!7244787))

(assert (= (and b!7244787 c!1345753) b!7244785))

(assert (= (and b!7244787 (not c!1345753)) b!7244789))

(assert (= (and b!7244789 res!2938804) b!7244792))

(assert (= (and b!7244789 c!1345752) b!7244795))

(assert (= (and b!7244789 (not c!1345752)) b!7244788))

(assert (= (and b!7244788 c!1345749) b!7244791))

(assert (= (and b!7244788 (not c!1345749)) b!7244786))

(assert (= (and b!7244786 c!1345750) b!7244794))

(assert (= (and b!7244786 (not c!1345750)) b!7244790))

(assert (= (or b!7244791 b!7244794) bm!659818))

(assert (= (or b!7244791 b!7244794) bm!659820))

(assert (= (or b!7244795 bm!659818) bm!659819))

(assert (= (or b!7244795 bm!659820) bm!659821))

(assert (= (or b!7244785 b!7244795) bm!659823))

(assert (= (or b!7244785 bm!659821) bm!659822))

(declare-fun m!7920922 () Bool)

(assert (=> bm!659823 m!7920922))

(declare-fun m!7920924 () Bool)

(assert (=> bm!659822 m!7920924))

(declare-fun m!7920926 () Bool)

(assert (=> b!7244793 m!7920926))

(declare-fun m!7920928 () Bool)

(assert (=> b!7244792 m!7920928))

(declare-fun m!7920930 () Bool)

(assert (=> bm!659819 m!7920930))

(assert (=> bm!659766 d!2251153))

(declare-fun d!2251155 () Bool)

(declare-fun c!1345754 () Bool)

(assert (=> d!2251155 (= c!1345754 (isEmpty!40464 (tail!14257 (t!384413 s1!1971))))))

(declare-fun e!4343777 () Bool)

(assert (=> d!2251155 (= (matchZipper!3498 (derivationStepZipper!3376 lt!2581927 (head!14860 (t!384413 s1!1971))) (tail!14257 (t!384413 s1!1971))) e!4343777)))

(declare-fun b!7244796 () Bool)

(assert (=> b!7244796 (= e!4343777 (nullableZipper!2873 (derivationStepZipper!3376 lt!2581927 (head!14860 (t!384413 s1!1971)))))))

(declare-fun b!7244797 () Bool)

(assert (=> b!7244797 (= e!4343777 (matchZipper!3498 (derivationStepZipper!3376 (derivationStepZipper!3376 lt!2581927 (head!14860 (t!384413 s1!1971))) (head!14860 (tail!14257 (t!384413 s1!1971)))) (tail!14257 (tail!14257 (t!384413 s1!1971)))))))

(assert (= (and d!2251155 c!1345754) b!7244796))

(assert (= (and d!2251155 (not c!1345754)) b!7244797))

(assert (=> d!2251155 m!7920400))

(assert (=> d!2251155 m!7920884))

(assert (=> b!7244796 m!7920496))

(declare-fun m!7920932 () Bool)

(assert (=> b!7244796 m!7920932))

(assert (=> b!7244797 m!7920400))

(assert (=> b!7244797 m!7920888))

(assert (=> b!7244797 m!7920496))

(assert (=> b!7244797 m!7920888))

(declare-fun m!7920934 () Bool)

(assert (=> b!7244797 m!7920934))

(assert (=> b!7244797 m!7920400))

(assert (=> b!7244797 m!7920892))

(assert (=> b!7244797 m!7920934))

(assert (=> b!7244797 m!7920892))

(declare-fun m!7920936 () Bool)

(assert (=> b!7244797 m!7920936))

(assert (=> b!7244507 d!2251155))

(declare-fun bs!1904788 () Bool)

(declare-fun d!2251157 () Bool)

(assert (= bs!1904788 (and d!2251157 d!2251141)))

(declare-fun lambda!442843 () Int)

(assert (=> bs!1904788 (= (= (head!14860 (t!384413 s1!1971)) (head!14860 lt!2581934)) (= lambda!442843 lambda!442840))))

(declare-fun bs!1904789 () Bool)

(assert (= bs!1904789 (and d!2251157 d!2250929)))

(assert (=> bs!1904789 (= (= (head!14860 (t!384413 s1!1971)) (h!76686 s1!1971)) (= lambda!442843 lambda!442814))))

(declare-fun bs!1904790 () Bool)

(assert (= bs!1904790 (and d!2251157 d!2251091)))

(assert (=> bs!1904790 (= (= (head!14860 (t!384413 s1!1971)) (head!14860 lt!2581934)) (= lambda!442843 lambda!442837))))

(declare-fun bs!1904791 () Bool)

(assert (= bs!1904791 (and d!2251157 d!2250895)))

(assert (=> bs!1904791 (= (= (head!14860 (t!384413 s1!1971)) (h!76686 s1!1971)) (= lambda!442843 lambda!442803))))

(declare-fun bs!1904792 () Bool)

(assert (= bs!1904792 (and d!2251157 d!2251147)))

(assert (=> bs!1904792 (= lambda!442843 lambda!442842)))

(declare-fun bs!1904793 () Bool)

(assert (= bs!1904793 (and d!2251157 b!7244300)))

(assert (=> bs!1904793 (= (= (head!14860 (t!384413 s1!1971)) (h!76686 s1!1971)) (= lambda!442843 lambda!442768))))

(declare-fun bs!1904794 () Bool)

(assert (= bs!1904794 (and d!2251157 d!2251133)))

(assert (=> bs!1904794 (= lambda!442843 lambda!442839)))

(assert (=> d!2251157 true))

(assert (=> d!2251157 (= (derivationStepZipper!3376 lt!2581927 (head!14860 (t!384413 s1!1971))) (flatMap!2776 lt!2581927 lambda!442843))))

(declare-fun bs!1904795 () Bool)

(assert (= bs!1904795 d!2251157))

(declare-fun m!7920938 () Bool)

(assert (=> bs!1904795 m!7920938))

(assert (=> b!7244507 d!2251157))

(assert (=> b!7244507 d!2251135))

(assert (=> b!7244507 d!2251137))

(declare-fun bs!1904796 () Bool)

(declare-fun d!2251159 () Bool)

(assert (= bs!1904796 (and d!2251159 d!2251079)))

(declare-fun lambda!442844 () Int)

(assert (=> bs!1904796 (= lambda!442844 lambda!442834)))

(declare-fun bs!1904797 () Bool)

(assert (= bs!1904797 (and d!2251159 d!2251087)))

(assert (=> bs!1904797 (= lambda!442844 lambda!442836)))

(declare-fun bs!1904798 () Bool)

(assert (= bs!1904798 (and d!2251159 d!2250897)))

(assert (=> bs!1904798 (not (= lambda!442844 lambda!442806))))

(declare-fun bs!1904799 () Bool)

(assert (= bs!1904799 (and d!2251159 d!2251143)))

(assert (=> bs!1904799 (= lambda!442844 lambda!442841)))

(declare-fun bs!1904800 () Bool)

(assert (= bs!1904800 (and d!2251159 d!2251081)))

(assert (=> bs!1904800 (= lambda!442844 lambda!442835)))

(declare-fun bs!1904801 () Bool)

(assert (= bs!1904801 (and d!2251159 d!2251105)))

(assert (=> bs!1904801 (= lambda!442844 lambda!442838)))

(declare-fun bs!1904802 () Bool)

(assert (= bs!1904802 (and d!2251159 b!7244303)))

(assert (=> bs!1904802 (not (= lambda!442844 lambda!442767))))

(declare-fun bs!1904803 () Bool)

(assert (= bs!1904803 (and d!2251159 d!2250889)))

(assert (=> bs!1904803 (not (= lambda!442844 lambda!442800))))

(assert (=> d!2251159 (= (nullableZipper!2873 (set.insert ct2!328 (as set.empty (Set Context!15056)))) (exists!4295 (set.insert ct2!328 (as set.empty (Set Context!15056))) lambda!442844))))

(declare-fun bs!1904804 () Bool)

(assert (= bs!1904804 d!2251159))

(assert (=> bs!1904804 m!7920096))

(declare-fun m!7920940 () Bool)

(assert (=> bs!1904804 m!7920940))

(assert (=> b!7244479 d!2251159))

(declare-fun b!7244798 () Bool)

(declare-fun e!4343781 () (Set Context!15056))

(declare-fun call!659832 () (Set Context!15056))

(declare-fun call!659834 () (Set Context!15056))

(assert (=> b!7244798 (= e!4343781 (set.union call!659832 call!659834))))

(declare-fun b!7244799 () Bool)

(declare-fun c!1345756 () Bool)

(assert (=> b!7244799 (= c!1345756 (is-Star!18588 (h!76685 (exprs!8028 lt!2581952))))))

(declare-fun e!4343778 () (Set Context!15056))

(declare-fun e!4343782 () (Set Context!15056))

(assert (=> b!7244799 (= e!4343778 e!4343782)))

(declare-fun b!7244800 () Bool)

(declare-fun e!4343783 () (Set Context!15056))

(assert (=> b!7244800 (= e!4343783 e!4343781)))

(declare-fun c!1345759 () Bool)

(assert (=> b!7244800 (= c!1345759 (is-Union!18588 (h!76685 (exprs!8028 lt!2581952))))))

(declare-fun bm!659824 () Bool)

(declare-fun call!659833 () List!70361)

(declare-fun call!659830 () List!70361)

(assert (=> bm!659824 (= call!659833 call!659830)))

(declare-fun b!7244801 () Bool)

(declare-fun e!4343779 () (Set Context!15056))

(assert (=> b!7244801 (= e!4343779 e!4343778)))

(declare-fun c!1345755 () Bool)

(assert (=> b!7244801 (= c!1345755 (is-Concat!27433 (h!76685 (exprs!8028 lt!2581952))))))

(declare-fun c!1345758 () Bool)

(declare-fun bm!659825 () Bool)

(assert (=> bm!659825 (= call!659830 ($colon$colon!2901 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581952)))) (ite (or c!1345758 c!1345755) (regTwo!37688 (h!76685 (exprs!8028 lt!2581952))) (h!76685 (exprs!8028 lt!2581952)))))))

(declare-fun b!7244802 () Bool)

(declare-fun e!4343780 () Bool)

(assert (=> b!7244802 (= c!1345758 e!4343780)))

(declare-fun res!2938805 () Bool)

(assert (=> b!7244802 (=> (not res!2938805) (not e!4343780))))

(assert (=> b!7244802 (= res!2938805 (is-Concat!27433 (h!76685 (exprs!8028 lt!2581952))))))

(assert (=> b!7244802 (= e!4343781 e!4343779)))

(declare-fun b!7244803 () Bool)

(assert (=> b!7244803 (= e!4343782 (as set.empty (Set Context!15056)))))

(declare-fun bm!659826 () Bool)

(declare-fun call!659829 () (Set Context!15056))

(declare-fun call!659831 () (Set Context!15056))

(assert (=> bm!659826 (= call!659829 call!659831)))

(declare-fun bm!659827 () Bool)

(assert (=> bm!659827 (= call!659831 call!659832)))

(declare-fun d!2251161 () Bool)

(declare-fun c!1345757 () Bool)

(assert (=> d!2251161 (= c!1345757 (and (is-ElementMatch!18588 (h!76685 (exprs!8028 lt!2581952))) (= (c!1345589 (h!76685 (exprs!8028 lt!2581952))) (h!76686 s1!1971))))))

(assert (=> d!2251161 (= (derivationStepZipperDown!2612 (h!76685 (exprs!8028 lt!2581952)) (Context!15057 (t!384412 (exprs!8028 lt!2581952))) (h!76686 s1!1971)) e!4343783)))

(declare-fun b!7244804 () Bool)

(assert (=> b!7244804 (= e!4343778 call!659829)))

(declare-fun b!7244805 () Bool)

(assert (=> b!7244805 (= e!4343780 (nullable!7881 (regOne!37688 (h!76685 (exprs!8028 lt!2581952)))))))

(declare-fun bm!659828 () Bool)

(assert (=> bm!659828 (= call!659832 (derivationStepZipperDown!2612 (ite c!1345759 (regOne!37689 (h!76685 (exprs!8028 lt!2581952))) (ite c!1345758 (regTwo!37688 (h!76685 (exprs!8028 lt!2581952))) (ite c!1345755 (regOne!37688 (h!76685 (exprs!8028 lt!2581952))) (reg!18917 (h!76685 (exprs!8028 lt!2581952)))))) (ite (or c!1345759 c!1345758) (Context!15057 (t!384412 (exprs!8028 lt!2581952))) (Context!15057 call!659833)) (h!76686 s1!1971)))))

(declare-fun b!7244806 () Bool)

(assert (=> b!7244806 (= e!4343783 (set.insert (Context!15057 (t!384412 (exprs!8028 lt!2581952))) (as set.empty (Set Context!15056))))))

(declare-fun b!7244807 () Bool)

(assert (=> b!7244807 (= e!4343782 call!659829)))

(declare-fun b!7244808 () Bool)

(assert (=> b!7244808 (= e!4343779 (set.union call!659834 call!659831))))

(declare-fun bm!659829 () Bool)

(assert (=> bm!659829 (= call!659834 (derivationStepZipperDown!2612 (ite c!1345759 (regTwo!37689 (h!76685 (exprs!8028 lt!2581952))) (regOne!37688 (h!76685 (exprs!8028 lt!2581952)))) (ite c!1345759 (Context!15057 (t!384412 (exprs!8028 lt!2581952))) (Context!15057 call!659830)) (h!76686 s1!1971)))))

(assert (= (and d!2251161 c!1345757) b!7244806))

(assert (= (and d!2251161 (not c!1345757)) b!7244800))

(assert (= (and b!7244800 c!1345759) b!7244798))

(assert (= (and b!7244800 (not c!1345759)) b!7244802))

(assert (= (and b!7244802 res!2938805) b!7244805))

(assert (= (and b!7244802 c!1345758) b!7244808))

(assert (= (and b!7244802 (not c!1345758)) b!7244801))

(assert (= (and b!7244801 c!1345755) b!7244804))

(assert (= (and b!7244801 (not c!1345755)) b!7244799))

(assert (= (and b!7244799 c!1345756) b!7244807))

(assert (= (and b!7244799 (not c!1345756)) b!7244803))

(assert (= (or b!7244804 b!7244807) bm!659824))

(assert (= (or b!7244804 b!7244807) bm!659826))

(assert (= (or b!7244808 bm!659824) bm!659825))

(assert (= (or b!7244808 bm!659826) bm!659827))

(assert (= (or b!7244798 b!7244808) bm!659829))

(assert (= (or b!7244798 bm!659827) bm!659828))

(declare-fun m!7920942 () Bool)

(assert (=> bm!659829 m!7920942))

(declare-fun m!7920944 () Bool)

(assert (=> bm!659828 m!7920944))

(declare-fun m!7920946 () Bool)

(assert (=> b!7244806 m!7920946))

(declare-fun m!7920948 () Bool)

(assert (=> b!7244805 m!7920948))

(declare-fun m!7920950 () Bool)

(assert (=> bm!659825 m!7920950))

(assert (=> bm!659743 d!2251161))

(declare-fun b!7244809 () Bool)

(declare-fun e!4343787 () (Set Context!15056))

(declare-fun call!659838 () (Set Context!15056))

(declare-fun call!659840 () (Set Context!15056))

(assert (=> b!7244809 (= e!4343787 (set.union call!659838 call!659840))))

(declare-fun b!7244810 () Bool)

(declare-fun c!1345761 () Bool)

(assert (=> b!7244810 (= c!1345761 (is-Star!18588 (ite c!1345642 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))))))

(declare-fun e!4343784 () (Set Context!15056))

(declare-fun e!4343788 () (Set Context!15056))

(assert (=> b!7244810 (= e!4343784 e!4343788)))

(declare-fun b!7244811 () Bool)

(declare-fun e!4343789 () (Set Context!15056))

(assert (=> b!7244811 (= e!4343789 e!4343787)))

(declare-fun c!1345764 () Bool)

(assert (=> b!7244811 (= c!1345764 (is-Union!18588 (ite c!1345642 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))))))

(declare-fun bm!659830 () Bool)

(declare-fun call!659839 () List!70361)

(declare-fun call!659836 () List!70361)

(assert (=> bm!659830 (= call!659839 call!659836)))

(declare-fun b!7244812 () Bool)

(declare-fun e!4343785 () (Set Context!15056))

(assert (=> b!7244812 (= e!4343785 e!4343784)))

(declare-fun c!1345760 () Bool)

(assert (=> b!7244812 (= c!1345760 (is-Concat!27433 (ite c!1345642 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))))))

(declare-fun c!1345763 () Bool)

(declare-fun bm!659831 () Bool)

(assert (=> bm!659831 (= call!659836 ($colon$colon!2901 (exprs!8028 (ite c!1345642 lt!2581938 (Context!15057 call!659762))) (ite (or c!1345763 c!1345760) (regTwo!37688 (ite c!1345642 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))) (ite c!1345642 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232)))))))))

(declare-fun b!7244813 () Bool)

(declare-fun e!4343786 () Bool)

(assert (=> b!7244813 (= c!1345763 e!4343786)))

(declare-fun res!2938806 () Bool)

(assert (=> b!7244813 (=> (not res!2938806) (not e!4343786))))

(assert (=> b!7244813 (= res!2938806 (is-Concat!27433 (ite c!1345642 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))))))

(assert (=> b!7244813 (= e!4343787 e!4343785)))

(declare-fun b!7244814 () Bool)

(assert (=> b!7244814 (= e!4343788 (as set.empty (Set Context!15056)))))

(declare-fun bm!659832 () Bool)

(declare-fun call!659835 () (Set Context!15056))

(declare-fun call!659837 () (Set Context!15056))

(assert (=> bm!659832 (= call!659835 call!659837)))

(declare-fun bm!659833 () Bool)

(assert (=> bm!659833 (= call!659837 call!659838)))

(declare-fun d!2251163 () Bool)

(declare-fun c!1345762 () Bool)

(assert (=> d!2251163 (= c!1345762 (and (is-ElementMatch!18588 (ite c!1345642 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))) (= (c!1345589 (ite c!1345642 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))) (h!76686 s1!1971))))))

(assert (=> d!2251163 (= (derivationStepZipperDown!2612 (ite c!1345642 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232)))) (ite c!1345642 lt!2581938 (Context!15057 call!659762)) (h!76686 s1!1971)) e!4343789)))

(declare-fun b!7244815 () Bool)

(assert (=> b!7244815 (= e!4343784 call!659835)))

(declare-fun b!7244816 () Bool)

(assert (=> b!7244816 (= e!4343786 (nullable!7881 (regOne!37688 (ite c!1345642 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232)))))))))

(declare-fun bm!659834 () Bool)

(assert (=> bm!659834 (= call!659838 (derivationStepZipperDown!2612 (ite c!1345764 (regOne!37689 (ite c!1345642 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))) (ite c!1345763 (regTwo!37688 (ite c!1345642 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))) (ite c!1345760 (regOne!37688 (ite c!1345642 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))) (reg!18917 (ite c!1345642 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232)))))))) (ite (or c!1345764 c!1345763) (ite c!1345642 lt!2581938 (Context!15057 call!659762)) (Context!15057 call!659839)) (h!76686 s1!1971)))))

(declare-fun b!7244817 () Bool)

(assert (=> b!7244817 (= e!4343789 (set.insert (ite c!1345642 lt!2581938 (Context!15057 call!659762)) (as set.empty (Set Context!15056))))))

(declare-fun b!7244818 () Bool)

(assert (=> b!7244818 (= e!4343788 call!659835)))

(declare-fun b!7244819 () Bool)

(assert (=> b!7244819 (= e!4343785 (set.union call!659840 call!659837))))

(declare-fun bm!659835 () Bool)

(assert (=> bm!659835 (= call!659840 (derivationStepZipperDown!2612 (ite c!1345764 (regTwo!37689 (ite c!1345642 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))) (regOne!37688 (ite c!1345642 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232)))))) (ite c!1345764 (ite c!1345642 lt!2581938 (Context!15057 call!659762)) (Context!15057 call!659836)) (h!76686 s1!1971)))))

(assert (= (and d!2251163 c!1345762) b!7244817))

(assert (= (and d!2251163 (not c!1345762)) b!7244811))

(assert (= (and b!7244811 c!1345764) b!7244809))

(assert (= (and b!7244811 (not c!1345764)) b!7244813))

(assert (= (and b!7244813 res!2938806) b!7244816))

(assert (= (and b!7244813 c!1345763) b!7244819))

(assert (= (and b!7244813 (not c!1345763)) b!7244812))

(assert (= (and b!7244812 c!1345760) b!7244815))

(assert (= (and b!7244812 (not c!1345760)) b!7244810))

(assert (= (and b!7244810 c!1345761) b!7244818))

(assert (= (and b!7244810 (not c!1345761)) b!7244814))

(assert (= (or b!7244815 b!7244818) bm!659830))

(assert (= (or b!7244815 b!7244818) bm!659832))

(assert (= (or b!7244819 bm!659830) bm!659831))

(assert (= (or b!7244819 bm!659832) bm!659833))

(assert (= (or b!7244809 b!7244819) bm!659835))

(assert (= (or b!7244809 bm!659833) bm!659834))

(declare-fun m!7920952 () Bool)

(assert (=> bm!659835 m!7920952))

(declare-fun m!7920954 () Bool)

(assert (=> bm!659834 m!7920954))

(declare-fun m!7920956 () Bool)

(assert (=> b!7244817 m!7920956))

(declare-fun m!7920958 () Bool)

(assert (=> b!7244816 m!7920958))

(declare-fun m!7920960 () Bool)

(assert (=> bm!659831 m!7920960))

(assert (=> bm!659761 d!2251163))

(declare-fun d!2251165 () Bool)

(declare-fun c!1345765 () Bool)

(assert (=> d!2251165 (= c!1345765 (is-Nil!70237 lt!2582104))))

(declare-fun e!4343790 () (Set Regex!18588))

(assert (=> d!2251165 (= (content!14528 lt!2582104) e!4343790)))

(declare-fun b!7244820 () Bool)

(assert (=> b!7244820 (= e!4343790 (as set.empty (Set Regex!18588)))))

(declare-fun b!7244821 () Bool)

(assert (=> b!7244821 (= e!4343790 (set.union (set.insert (h!76685 lt!2582104) (as set.empty (Set Regex!18588))) (content!14528 (t!384412 lt!2582104))))))

(assert (= (and d!2251165 c!1345765) b!7244820))

(assert (= (and d!2251165 (not c!1345765)) b!7244821))

(declare-fun m!7920962 () Bool)

(assert (=> b!7244821 m!7920962))

(declare-fun m!7920964 () Bool)

(assert (=> b!7244821 m!7920964))

(assert (=> d!2250973 d!2251165))

(declare-fun d!2251167 () Bool)

(declare-fun c!1345766 () Bool)

(assert (=> d!2251167 (= c!1345766 (is-Nil!70237 (exprs!8028 ct1!232)))))

(declare-fun e!4343791 () (Set Regex!18588))

(assert (=> d!2251167 (= (content!14528 (exprs!8028 ct1!232)) e!4343791)))

(declare-fun b!7244822 () Bool)

(assert (=> b!7244822 (= e!4343791 (as set.empty (Set Regex!18588)))))

(declare-fun b!7244823 () Bool)

(assert (=> b!7244823 (= e!4343791 (set.union (set.insert (h!76685 (exprs!8028 ct1!232)) (as set.empty (Set Regex!18588))) (content!14528 (t!384412 (exprs!8028 ct1!232)))))))

(assert (= (and d!2251167 c!1345766) b!7244822))

(assert (= (and d!2251167 (not c!1345766)) b!7244823))

(declare-fun m!7920966 () Bool)

(assert (=> b!7244823 m!7920966))

(declare-fun m!7920968 () Bool)

(assert (=> b!7244823 m!7920968))

(assert (=> d!2250973 d!2251167))

(assert (=> d!2250973 d!2251111))

(declare-fun d!2251169 () Bool)

(declare-fun res!2938807 () Bool)

(declare-fun e!4343792 () Bool)

(assert (=> d!2251169 (=> res!2938807 e!4343792)))

(assert (=> d!2251169 (= res!2938807 (is-Nil!70237 (++!16460 (exprs!8028 lt!2581930) (exprs!8028 ct2!328))))))

(assert (=> d!2251169 (= (forall!17429 (++!16460 (exprs!8028 lt!2581930) (exprs!8028 ct2!328)) lambda!442766) e!4343792)))

(declare-fun b!7244824 () Bool)

(declare-fun e!4343793 () Bool)

(assert (=> b!7244824 (= e!4343792 e!4343793)))

(declare-fun res!2938808 () Bool)

(assert (=> b!7244824 (=> (not res!2938808) (not e!4343793))))

(assert (=> b!7244824 (= res!2938808 (dynLambda!28678 lambda!442766 (h!76685 (++!16460 (exprs!8028 lt!2581930) (exprs!8028 ct2!328)))))))

(declare-fun b!7244825 () Bool)

(assert (=> b!7244825 (= e!4343793 (forall!17429 (t!384412 (++!16460 (exprs!8028 lt!2581930) (exprs!8028 ct2!328))) lambda!442766))))

(assert (= (and d!2251169 (not res!2938807)) b!7244824))

(assert (= (and b!7244824 res!2938808) b!7244825))

(declare-fun b_lambda!278009 () Bool)

(assert (=> (not b_lambda!278009) (not b!7244824)))

(declare-fun m!7920970 () Bool)

(assert (=> b!7244824 m!7920970))

(declare-fun m!7920972 () Bool)

(assert (=> b!7244825 m!7920972))

(assert (=> d!2250919 d!2251169))

(assert (=> d!2250919 d!2250913))

(declare-fun d!2251171 () Bool)

(assert (=> d!2251171 (forall!17429 (++!16460 (exprs!8028 lt!2581930) (exprs!8028 ct2!328)) lambda!442766)))

(assert (=> d!2251171 true))

(declare-fun _$78!739 () Unit!163762)

(assert (=> d!2251171 (= (choose!55863 (exprs!8028 lt!2581930) (exprs!8028 ct2!328) lambda!442766) _$78!739)))

(declare-fun bs!1904805 () Bool)

(assert (= bs!1904805 d!2251171))

(assert (=> bs!1904805 m!7920152))

(assert (=> bs!1904805 m!7920152))

(assert (=> bs!1904805 m!7920370))

(assert (=> d!2250919 d!2251171))

(declare-fun d!2251173 () Bool)

(declare-fun res!2938809 () Bool)

(declare-fun e!4343794 () Bool)

(assert (=> d!2251173 (=> res!2938809 e!4343794)))

(assert (=> d!2251173 (= res!2938809 (is-Nil!70237 (exprs!8028 lt!2581930)))))

(assert (=> d!2251173 (= (forall!17429 (exprs!8028 lt!2581930) lambda!442766) e!4343794)))

(declare-fun b!7244826 () Bool)

(declare-fun e!4343795 () Bool)

(assert (=> b!7244826 (= e!4343794 e!4343795)))

(declare-fun res!2938810 () Bool)

(assert (=> b!7244826 (=> (not res!2938810) (not e!4343795))))

(assert (=> b!7244826 (= res!2938810 (dynLambda!28678 lambda!442766 (h!76685 (exprs!8028 lt!2581930))))))

(declare-fun b!7244827 () Bool)

(assert (=> b!7244827 (= e!4343795 (forall!17429 (t!384412 (exprs!8028 lt!2581930)) lambda!442766))))

(assert (= (and d!2251173 (not res!2938809)) b!7244826))

(assert (= (and b!7244826 res!2938810) b!7244827))

(declare-fun b_lambda!278011 () Bool)

(assert (=> (not b_lambda!278011) (not b!7244826)))

(declare-fun m!7920974 () Bool)

(assert (=> b!7244826 m!7920974))

(declare-fun m!7920976 () Bool)

(assert (=> b!7244827 m!7920976))

(assert (=> d!2250919 d!2251173))

(declare-fun d!2251175 () Bool)

(declare-fun lt!2582148 () Int)

(assert (=> d!2251175 (>= lt!2582148 0)))

(declare-fun e!4343796 () Int)

(assert (=> d!2251175 (= lt!2582148 e!4343796)))

(declare-fun c!1345767 () Bool)

(assert (=> d!2251175 (= c!1345767 (is-Nil!70237 lt!2582091))))

(assert (=> d!2251175 (= (size!41655 lt!2582091) lt!2582148)))

(declare-fun b!7244828 () Bool)

(assert (=> b!7244828 (= e!4343796 0)))

(declare-fun b!7244829 () Bool)

(assert (=> b!7244829 (= e!4343796 (+ 1 (size!41655 (t!384412 lt!2582091))))))

(assert (= (and d!2251175 c!1345767) b!7244828))

(assert (= (and d!2251175 (not c!1345767)) b!7244829))

(declare-fun m!7920978 () Bool)

(assert (=> b!7244829 m!7920978))

(assert (=> b!7244418 d!2251175))

(declare-fun d!2251177 () Bool)

(declare-fun lt!2582149 () Int)

(assert (=> d!2251177 (>= lt!2582149 0)))

(declare-fun e!4343797 () Int)

(assert (=> d!2251177 (= lt!2582149 e!4343797)))

(declare-fun c!1345768 () Bool)

(assert (=> d!2251177 (= c!1345768 (is-Nil!70237 (exprs!8028 lt!2581930)))))

(assert (=> d!2251177 (= (size!41655 (exprs!8028 lt!2581930)) lt!2582149)))

(declare-fun b!7244830 () Bool)

(assert (=> b!7244830 (= e!4343797 0)))

(declare-fun b!7244831 () Bool)

(assert (=> b!7244831 (= e!4343797 (+ 1 (size!41655 (t!384412 (exprs!8028 lt!2581930)))))))

(assert (= (and d!2251177 c!1345768) b!7244830))

(assert (= (and d!2251177 (not c!1345768)) b!7244831))

(declare-fun m!7920980 () Bool)

(assert (=> b!7244831 m!7920980))

(assert (=> b!7244418 d!2251177))

(assert (=> b!7244418 d!2251103))

(declare-fun d!2251179 () Bool)

(assert (=> d!2251179 (= (isEmpty!40464 (t!384413 s1!1971)) (is-Nil!70238 (t!384413 s1!1971)))))

(assert (=> d!2250947 d!2251179))

(declare-fun d!2251181 () Bool)

(declare-fun c!1345769 () Bool)

(assert (=> d!2251181 (= c!1345769 (isEmpty!40464 (t!384413 s1!1971)))))

(declare-fun e!4343798 () Bool)

(assert (=> d!2251181 (= (matchZipper!3498 (set.insert lt!2582082 (as set.empty (Set Context!15056))) (t!384413 s1!1971)) e!4343798)))

(declare-fun b!7244832 () Bool)

(assert (=> b!7244832 (= e!4343798 (nullableZipper!2873 (set.insert lt!2582082 (as set.empty (Set Context!15056)))))))

(declare-fun b!7244833 () Bool)

(assert (=> b!7244833 (= e!4343798 (matchZipper!3498 (derivationStepZipper!3376 (set.insert lt!2582082 (as set.empty (Set Context!15056))) (head!14860 (t!384413 s1!1971))) (tail!14257 (t!384413 s1!1971))))))

(assert (= (and d!2251181 c!1345769) b!7244832))

(assert (= (and d!2251181 (not c!1345769)) b!7244833))

(assert (=> d!2251181 m!7920392))

(assert (=> b!7244832 m!7920522))

(declare-fun m!7920982 () Bool)

(assert (=> b!7244832 m!7920982))

(assert (=> b!7244833 m!7920396))

(assert (=> b!7244833 m!7920522))

(assert (=> b!7244833 m!7920396))

(declare-fun m!7920984 () Bool)

(assert (=> b!7244833 m!7920984))

(assert (=> b!7244833 m!7920400))

(assert (=> b!7244833 m!7920984))

(assert (=> b!7244833 m!7920400))

(declare-fun m!7920986 () Bool)

(assert (=> b!7244833 m!7920986))

(assert (=> bs!1904700 d!2251181))

(declare-fun d!2251183 () Bool)

(declare-fun c!1345770 () Bool)

(assert (=> d!2251183 (= c!1345770 (isEmpty!40464 (tail!14257 lt!2581934)))))

(declare-fun e!4343799 () Bool)

(assert (=> d!2251183 (= (matchZipper!3498 (derivationStepZipper!3376 lt!2581939 (head!14860 lt!2581934)) (tail!14257 lt!2581934)) e!4343799)))

(declare-fun b!7244834 () Bool)

(assert (=> b!7244834 (= e!4343799 (nullableZipper!2873 (derivationStepZipper!3376 lt!2581939 (head!14860 lt!2581934))))))

(declare-fun b!7244835 () Bool)

(assert (=> b!7244835 (= e!4343799 (matchZipper!3498 (derivationStepZipper!3376 (derivationStepZipper!3376 lt!2581939 (head!14860 lt!2581934)) (head!14860 (tail!14257 lt!2581934))) (tail!14257 (tail!14257 lt!2581934))))))

(assert (= (and d!2251183 c!1345770) b!7244834))

(assert (= (and d!2251183 (not c!1345770)) b!7244835))

(assert (=> d!2251183 m!7920334))

(assert (=> d!2251183 m!7920804))

(assert (=> b!7244834 m!7920436))

(declare-fun m!7920988 () Bool)

(assert (=> b!7244834 m!7920988))

(assert (=> b!7244835 m!7920334))

(assert (=> b!7244835 m!7920808))

(assert (=> b!7244835 m!7920436))

(assert (=> b!7244835 m!7920808))

(declare-fun m!7920990 () Bool)

(assert (=> b!7244835 m!7920990))

(assert (=> b!7244835 m!7920334))

(assert (=> b!7244835 m!7920812))

(assert (=> b!7244835 m!7920990))

(assert (=> b!7244835 m!7920812))

(declare-fun m!7920992 () Bool)

(assert (=> b!7244835 m!7920992))

(assert (=> b!7244482 d!2251183))

(declare-fun bs!1904806 () Bool)

(declare-fun d!2251185 () Bool)

(assert (= bs!1904806 (and d!2251185 d!2251141)))

(declare-fun lambda!442845 () Int)

(assert (=> bs!1904806 (= lambda!442845 lambda!442840)))

(declare-fun bs!1904807 () Bool)

(assert (= bs!1904807 (and d!2251185 d!2250929)))

(assert (=> bs!1904807 (= (= (head!14860 lt!2581934) (h!76686 s1!1971)) (= lambda!442845 lambda!442814))))

(declare-fun bs!1904808 () Bool)

(assert (= bs!1904808 (and d!2251185 d!2251157)))

(assert (=> bs!1904808 (= (= (head!14860 lt!2581934) (head!14860 (t!384413 s1!1971))) (= lambda!442845 lambda!442843))))

(declare-fun bs!1904809 () Bool)

(assert (= bs!1904809 (and d!2251185 d!2251091)))

(assert (=> bs!1904809 (= lambda!442845 lambda!442837)))

(declare-fun bs!1904810 () Bool)

(assert (= bs!1904810 (and d!2251185 d!2250895)))

(assert (=> bs!1904810 (= (= (head!14860 lt!2581934) (h!76686 s1!1971)) (= lambda!442845 lambda!442803))))

(declare-fun bs!1904811 () Bool)

(assert (= bs!1904811 (and d!2251185 d!2251147)))

(assert (=> bs!1904811 (= (= (head!14860 lt!2581934) (head!14860 (t!384413 s1!1971))) (= lambda!442845 lambda!442842))))

(declare-fun bs!1904812 () Bool)

(assert (= bs!1904812 (and d!2251185 b!7244300)))

(assert (=> bs!1904812 (= (= (head!14860 lt!2581934) (h!76686 s1!1971)) (= lambda!442845 lambda!442768))))

(declare-fun bs!1904813 () Bool)

(assert (= bs!1904813 (and d!2251185 d!2251133)))

(assert (=> bs!1904813 (= (= (head!14860 lt!2581934) (head!14860 (t!384413 s1!1971))) (= lambda!442845 lambda!442839))))

(assert (=> d!2251185 true))

(assert (=> d!2251185 (= (derivationStepZipper!3376 lt!2581939 (head!14860 lt!2581934)) (flatMap!2776 lt!2581939 lambda!442845))))

(declare-fun bs!1904814 () Bool)

(assert (= bs!1904814 d!2251185))

(declare-fun m!7920994 () Bool)

(assert (=> bs!1904814 m!7920994))

(assert (=> b!7244482 d!2251185))

(assert (=> b!7244482 d!2251093))

(assert (=> b!7244482 d!2251095))

(assert (=> d!2250969 d!2251179))

(declare-fun b!7244836 () Bool)

(declare-fun e!4343803 () (Set Context!15056))

(declare-fun call!659844 () (Set Context!15056))

(declare-fun call!659846 () (Set Context!15056))

(assert (=> b!7244836 (= e!4343803 (set.union call!659844 call!659846))))

(declare-fun c!1345772 () Bool)

(declare-fun b!7244837 () Bool)

(assert (=> b!7244837 (= c!1345772 (is-Star!18588 (ite c!1345642 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345641 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345638 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))))))

(declare-fun e!4343800 () (Set Context!15056))

(declare-fun e!4343804 () (Set Context!15056))

(assert (=> b!7244837 (= e!4343800 e!4343804)))

(declare-fun b!7244838 () Bool)

(declare-fun e!4343805 () (Set Context!15056))

(assert (=> b!7244838 (= e!4343805 e!4343803)))

(declare-fun c!1345775 () Bool)

(assert (=> b!7244838 (= c!1345775 (is-Union!18588 (ite c!1345642 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345641 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345638 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))))))

(declare-fun bm!659836 () Bool)

(declare-fun call!659845 () List!70361)

(declare-fun call!659842 () List!70361)

(assert (=> bm!659836 (= call!659845 call!659842)))

(declare-fun b!7244839 () Bool)

(declare-fun e!4343801 () (Set Context!15056))

(assert (=> b!7244839 (= e!4343801 e!4343800)))

(declare-fun c!1345771 () Bool)

(assert (=> b!7244839 (= c!1345771 (is-Concat!27433 (ite c!1345642 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345641 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345638 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))))))

(declare-fun c!1345774 () Bool)

(declare-fun bm!659837 () Bool)

(assert (=> bm!659837 (= call!659842 ($colon$colon!2901 (exprs!8028 (ite (or c!1345642 c!1345641) lt!2581938 (Context!15057 call!659765))) (ite (or c!1345774 c!1345771) (regTwo!37688 (ite c!1345642 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345641 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345638 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))) (ite c!1345642 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345641 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345638 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232)))))))))))

(declare-fun b!7244840 () Bool)

(declare-fun e!4343802 () Bool)

(assert (=> b!7244840 (= c!1345774 e!4343802)))

(declare-fun res!2938811 () Bool)

(assert (=> b!7244840 (=> (not res!2938811) (not e!4343802))))

(assert (=> b!7244840 (= res!2938811 (is-Concat!27433 (ite c!1345642 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345641 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345638 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))))))

(assert (=> b!7244840 (= e!4343803 e!4343801)))

(declare-fun b!7244841 () Bool)

(assert (=> b!7244841 (= e!4343804 (as set.empty (Set Context!15056)))))

(declare-fun bm!659838 () Bool)

(declare-fun call!659841 () (Set Context!15056))

(declare-fun call!659843 () (Set Context!15056))

(assert (=> bm!659838 (= call!659841 call!659843)))

(declare-fun bm!659839 () Bool)

(assert (=> bm!659839 (= call!659843 call!659844)))

(declare-fun c!1345773 () Bool)

(declare-fun d!2251187 () Bool)

(assert (=> d!2251187 (= c!1345773 (and (is-ElementMatch!18588 (ite c!1345642 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345641 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345638 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))) (= (c!1345589 (ite c!1345642 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345641 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345638 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))) (h!76686 s1!1971))))))

(assert (=> d!2251187 (= (derivationStepZipperDown!2612 (ite c!1345642 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345641 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345638 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232)))))) (ite (or c!1345642 c!1345641) lt!2581938 (Context!15057 call!659765)) (h!76686 s1!1971)) e!4343805)))

(declare-fun b!7244842 () Bool)

(assert (=> b!7244842 (= e!4343800 call!659841)))

(declare-fun b!7244843 () Bool)

(assert (=> b!7244843 (= e!4343802 (nullable!7881 (regOne!37688 (ite c!1345642 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345641 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345638 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232)))))))))))

(declare-fun bm!659840 () Bool)

(assert (=> bm!659840 (= call!659844 (derivationStepZipperDown!2612 (ite c!1345775 (regOne!37689 (ite c!1345642 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345641 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345638 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))) (ite c!1345774 (regTwo!37688 (ite c!1345642 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345641 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345638 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))) (ite c!1345771 (regOne!37688 (ite c!1345642 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345641 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345638 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))) (reg!18917 (ite c!1345642 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345641 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345638 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232)))))))))) (ite (or c!1345775 c!1345774) (ite (or c!1345642 c!1345641) lt!2581938 (Context!15057 call!659765)) (Context!15057 call!659845)) (h!76686 s1!1971)))))

(declare-fun b!7244844 () Bool)

(assert (=> b!7244844 (= e!4343805 (set.insert (ite (or c!1345642 c!1345641) lt!2581938 (Context!15057 call!659765)) (as set.empty (Set Context!15056))))))

(declare-fun b!7244845 () Bool)

(assert (=> b!7244845 (= e!4343804 call!659841)))

(declare-fun b!7244846 () Bool)

(assert (=> b!7244846 (= e!4343801 (set.union call!659846 call!659843))))

(declare-fun bm!659841 () Bool)

(assert (=> bm!659841 (= call!659846 (derivationStepZipperDown!2612 (ite c!1345775 (regTwo!37689 (ite c!1345642 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345641 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345638 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232))))))) (regOne!37688 (ite c!1345642 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345641 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345638 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232)))))))) (ite c!1345775 (ite (or c!1345642 c!1345641) lt!2581938 (Context!15057 call!659765)) (Context!15057 call!659842)) (h!76686 s1!1971)))))

(assert (= (and d!2251187 c!1345773) b!7244844))

(assert (= (and d!2251187 (not c!1345773)) b!7244838))

(assert (= (and b!7244838 c!1345775) b!7244836))

(assert (= (and b!7244838 (not c!1345775)) b!7244840))

(assert (= (and b!7244840 res!2938811) b!7244843))

(assert (= (and b!7244840 c!1345774) b!7244846))

(assert (= (and b!7244840 (not c!1345774)) b!7244839))

(assert (= (and b!7244839 c!1345771) b!7244842))

(assert (= (and b!7244839 (not c!1345771)) b!7244837))

(assert (= (and b!7244837 c!1345772) b!7244845))

(assert (= (and b!7244837 (not c!1345772)) b!7244841))

(assert (= (or b!7244842 b!7244845) bm!659836))

(assert (= (or b!7244842 b!7244845) bm!659838))

(assert (= (or b!7244846 bm!659836) bm!659837))

(assert (= (or b!7244846 bm!659838) bm!659839))

(assert (= (or b!7244836 b!7244846) bm!659841))

(assert (= (or b!7244836 bm!659839) bm!659840))

(declare-fun m!7920996 () Bool)

(assert (=> bm!659841 m!7920996))

(declare-fun m!7920998 () Bool)

(assert (=> bm!659840 m!7920998))

(declare-fun m!7921000 () Bool)

(assert (=> b!7244844 m!7921000))

(declare-fun m!7921002 () Bool)

(assert (=> b!7244843 m!7921002))

(declare-fun m!7921004 () Bool)

(assert (=> bm!659837 m!7921004))

(assert (=> bm!659760 d!2251187))

(declare-fun bs!1904815 () Bool)

(declare-fun d!2251189 () Bool)

(assert (= bs!1904815 (and d!2251189 d!2251079)))

(declare-fun lambda!442846 () Int)

(assert (=> bs!1904815 (not (= lambda!442846 lambda!442834))))

(declare-fun bs!1904816 () Bool)

(assert (= bs!1904816 (and d!2251189 d!2251087)))

(assert (=> bs!1904816 (not (= lambda!442846 lambda!442836))))

(declare-fun bs!1904817 () Bool)

(assert (= bs!1904817 (and d!2251189 d!2250897)))

(assert (=> bs!1904817 (= lambda!442846 lambda!442806)))

(declare-fun bs!1904818 () Bool)

(assert (= bs!1904818 (and d!2251189 d!2251143)))

(assert (=> bs!1904818 (not (= lambda!442846 lambda!442841))))

(declare-fun bs!1904819 () Bool)

(assert (= bs!1904819 (and d!2251189 d!2251159)))

(assert (=> bs!1904819 (not (= lambda!442846 lambda!442844))))

(declare-fun bs!1904820 () Bool)

(assert (= bs!1904820 (and d!2251189 d!2251081)))

(assert (=> bs!1904820 (not (= lambda!442846 lambda!442835))))

(declare-fun bs!1904821 () Bool)

(assert (= bs!1904821 (and d!2251189 d!2251105)))

(assert (=> bs!1904821 (not (= lambda!442846 lambda!442838))))

(declare-fun bs!1904822 () Bool)

(assert (= bs!1904822 (and d!2251189 b!7244303)))

(assert (=> bs!1904822 (not (= lambda!442846 lambda!442767))))

(declare-fun bs!1904823 () Bool)

(assert (= bs!1904823 (and d!2251189 d!2250889)))

(assert (=> bs!1904823 (not (= lambda!442846 lambda!442800))))

(assert (=> d!2251189 true))

(assert (=> d!2251189 (< (dynLambda!28672 order!28923 lambda!442767) (dynLambda!28672 order!28923 lambda!442846))))

(assert (=> d!2251189 (= (exists!4296 (toList!11434 lt!2581921) lambda!442767) (not (forall!17428 (toList!11434 lt!2581921) lambda!442846)))))

(declare-fun bs!1904824 () Bool)

(assert (= bs!1904824 d!2251189))

(assert (=> bs!1904824 m!7920088))

(declare-fun m!7921006 () Bool)

(assert (=> bs!1904824 m!7921006))

(assert (=> d!2250891 d!2251189))

(assert (=> d!2250891 d!2250893))

(declare-fun d!2251191 () Bool)

(declare-fun res!2938814 () Bool)

(assert (=> d!2251191 (= res!2938814 (exists!4296 (toList!11434 lt!2581921) lambda!442767))))

(assert (=> d!2251191 true))

(assert (=> d!2251191 (= (choose!55861 lt!2581921 lambda!442767) res!2938814)))

(declare-fun bs!1904825 () Bool)

(assert (= bs!1904825 d!2251191))

(assert (=> bs!1904825 m!7920088))

(assert (=> bs!1904825 m!7920088))

(assert (=> bs!1904825 m!7920276))

(assert (=> d!2250891 d!2251191))

(declare-fun d!2251193 () Bool)

(declare-fun c!1345778 () Bool)

(assert (=> d!2251193 (= c!1345778 (is-Nil!70238 lt!2582094))))

(declare-fun e!4343808 () (Set C!37450))

(assert (=> d!2251193 (= (content!14529 lt!2582094) e!4343808)))

(declare-fun b!7244851 () Bool)

(assert (=> b!7244851 (= e!4343808 (as set.empty (Set C!37450)))))

(declare-fun b!7244852 () Bool)

(assert (=> b!7244852 (= e!4343808 (set.union (set.insert (h!76686 lt!2582094) (as set.empty (Set C!37450))) (content!14529 (t!384413 lt!2582094))))))

(assert (= (and d!2251193 c!1345778) b!7244851))

(assert (= (and d!2251193 (not c!1345778)) b!7244852))

(declare-fun m!7921008 () Bool)

(assert (=> b!7244852 m!7921008))

(declare-fun m!7921010 () Bool)

(assert (=> b!7244852 m!7921010))

(assert (=> d!2250915 d!2251193))

(declare-fun d!2251195 () Bool)

(declare-fun c!1345779 () Bool)

(assert (=> d!2251195 (= c!1345779 (is-Nil!70238 (t!384413 s1!1971)))))

(declare-fun e!4343809 () (Set C!37450))

(assert (=> d!2251195 (= (content!14529 (t!384413 s1!1971)) e!4343809)))

(declare-fun b!7244853 () Bool)

(assert (=> b!7244853 (= e!4343809 (as set.empty (Set C!37450)))))

(declare-fun b!7244854 () Bool)

(assert (=> b!7244854 (= e!4343809 (set.union (set.insert (h!76686 (t!384413 s1!1971)) (as set.empty (Set C!37450))) (content!14529 (t!384413 (t!384413 s1!1971)))))))

(assert (= (and d!2251195 c!1345779) b!7244853))

(assert (= (and d!2251195 (not c!1345779)) b!7244854))

(declare-fun m!7921012 () Bool)

(assert (=> b!7244854 m!7921012))

(assert (=> b!7244854 m!7920862))

(assert (=> d!2250915 d!2251195))

(declare-fun d!2251197 () Bool)

(declare-fun c!1345780 () Bool)

(assert (=> d!2251197 (= c!1345780 (is-Nil!70238 s2!1849))))

(declare-fun e!4343810 () (Set C!37450))

(assert (=> d!2251197 (= (content!14529 s2!1849) e!4343810)))

(declare-fun b!7244855 () Bool)

(assert (=> b!7244855 (= e!4343810 (as set.empty (Set C!37450)))))

(declare-fun b!7244856 () Bool)

(assert (=> b!7244856 (= e!4343810 (set.union (set.insert (h!76686 s2!1849) (as set.empty (Set C!37450))) (content!14529 (t!384413 s2!1849))))))

(assert (= (and d!2251197 c!1345780) b!7244855))

(assert (= (and d!2251197 (not c!1345780)) b!7244856))

(declare-fun m!7921014 () Bool)

(assert (=> b!7244856 m!7921014))

(declare-fun m!7921016 () Bool)

(assert (=> b!7244856 m!7921016))

(assert (=> d!2250915 d!2251197))

(declare-fun d!2251199 () Bool)

(declare-fun c!1345781 () Bool)

(assert (=> d!2251199 (= c!1345781 (isEmpty!40464 (tail!14257 lt!2581934)))))

(declare-fun e!4343811 () Bool)

(assert (=> d!2251199 (= (matchZipper!3498 (derivationStepZipper!3376 lt!2581953 (head!14860 lt!2581934)) (tail!14257 lt!2581934)) e!4343811)))

(declare-fun b!7244857 () Bool)

(assert (=> b!7244857 (= e!4343811 (nullableZipper!2873 (derivationStepZipper!3376 lt!2581953 (head!14860 lt!2581934))))))

(declare-fun b!7244858 () Bool)

(assert (=> b!7244858 (= e!4343811 (matchZipper!3498 (derivationStepZipper!3376 (derivationStepZipper!3376 lt!2581953 (head!14860 lt!2581934)) (head!14860 (tail!14257 lt!2581934))) (tail!14257 (tail!14257 lt!2581934))))))

(assert (= (and d!2251199 c!1345781) b!7244857))

(assert (= (and d!2251199 (not c!1345781)) b!7244858))

(assert (=> d!2251199 m!7920334))

(assert (=> d!2251199 m!7920804))

(assert (=> b!7244857 m!7920468))

(declare-fun m!7921018 () Bool)

(assert (=> b!7244857 m!7921018))

(assert (=> b!7244858 m!7920334))

(assert (=> b!7244858 m!7920808))

(assert (=> b!7244858 m!7920468))

(assert (=> b!7244858 m!7920808))

(declare-fun m!7921020 () Bool)

(assert (=> b!7244858 m!7921020))

(assert (=> b!7244858 m!7920334))

(assert (=> b!7244858 m!7920812))

(assert (=> b!7244858 m!7921020))

(assert (=> b!7244858 m!7920812))

(declare-fun m!7921022 () Bool)

(assert (=> b!7244858 m!7921022))

(assert (=> b!7244494 d!2251199))

(declare-fun bs!1904826 () Bool)

(declare-fun d!2251201 () Bool)

(assert (= bs!1904826 (and d!2251201 d!2251141)))

(declare-fun lambda!442847 () Int)

(assert (=> bs!1904826 (= lambda!442847 lambda!442840)))

(declare-fun bs!1904827 () Bool)

(assert (= bs!1904827 (and d!2251201 d!2251185)))

(assert (=> bs!1904827 (= lambda!442847 lambda!442845)))

(declare-fun bs!1904828 () Bool)

(assert (= bs!1904828 (and d!2251201 d!2250929)))

(assert (=> bs!1904828 (= (= (head!14860 lt!2581934) (h!76686 s1!1971)) (= lambda!442847 lambda!442814))))

(declare-fun bs!1904829 () Bool)

(assert (= bs!1904829 (and d!2251201 d!2251157)))

(assert (=> bs!1904829 (= (= (head!14860 lt!2581934) (head!14860 (t!384413 s1!1971))) (= lambda!442847 lambda!442843))))

(declare-fun bs!1904830 () Bool)

(assert (= bs!1904830 (and d!2251201 d!2251091)))

(assert (=> bs!1904830 (= lambda!442847 lambda!442837)))

(declare-fun bs!1904831 () Bool)

(assert (= bs!1904831 (and d!2251201 d!2250895)))

(assert (=> bs!1904831 (= (= (head!14860 lt!2581934) (h!76686 s1!1971)) (= lambda!442847 lambda!442803))))

(declare-fun bs!1904832 () Bool)

(assert (= bs!1904832 (and d!2251201 d!2251147)))

(assert (=> bs!1904832 (= (= (head!14860 lt!2581934) (head!14860 (t!384413 s1!1971))) (= lambda!442847 lambda!442842))))

(declare-fun bs!1904833 () Bool)

(assert (= bs!1904833 (and d!2251201 b!7244300)))

(assert (=> bs!1904833 (= (= (head!14860 lt!2581934) (h!76686 s1!1971)) (= lambda!442847 lambda!442768))))

(declare-fun bs!1904834 () Bool)

(assert (= bs!1904834 (and d!2251201 d!2251133)))

(assert (=> bs!1904834 (= (= (head!14860 lt!2581934) (head!14860 (t!384413 s1!1971))) (= lambda!442847 lambda!442839))))

(assert (=> d!2251201 true))

(assert (=> d!2251201 (= (derivationStepZipper!3376 lt!2581953 (head!14860 lt!2581934)) (flatMap!2776 lt!2581953 lambda!442847))))

(declare-fun bs!1904835 () Bool)

(assert (= bs!1904835 d!2251201))

(declare-fun m!7921024 () Bool)

(assert (=> bs!1904835 m!7921024))

(assert (=> b!7244494 d!2251201))

(assert (=> b!7244494 d!2251093))

(assert (=> b!7244494 d!2251095))

(declare-fun bm!659842 () Bool)

(declare-fun call!659847 () (Set Context!15056))

(assert (=> bm!659842 (= call!659847 (derivationStepZipperDown!2612 (h!76685 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581933))))) (Context!15057 (t!384412 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581933)))))) (h!76686 s1!1971)))))

(declare-fun d!2251203 () Bool)

(declare-fun c!1345782 () Bool)

(declare-fun e!4343813 () Bool)

(assert (=> d!2251203 (= c!1345782 e!4343813)))

(declare-fun res!2938815 () Bool)

(assert (=> d!2251203 (=> (not res!2938815) (not e!4343813))))

(assert (=> d!2251203 (= res!2938815 (is-Cons!70237 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581933))))))))

(declare-fun e!4343812 () (Set Context!15056))

(assert (=> d!2251203 (= (derivationStepZipperUp!2442 (Context!15057 (t!384412 (exprs!8028 lt!2581933))) (h!76686 s1!1971)) e!4343812)))

(declare-fun b!7244859 () Bool)

(declare-fun e!4343814 () (Set Context!15056))

(assert (=> b!7244859 (= e!4343812 e!4343814)))

(declare-fun c!1345783 () Bool)

(assert (=> b!7244859 (= c!1345783 (is-Cons!70237 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581933))))))))

(declare-fun b!7244860 () Bool)

(assert (=> b!7244860 (= e!4343812 (set.union call!659847 (derivationStepZipperUp!2442 (Context!15057 (t!384412 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581933)))))) (h!76686 s1!1971))))))

(declare-fun b!7244861 () Bool)

(assert (=> b!7244861 (= e!4343814 call!659847)))

(declare-fun b!7244862 () Bool)

(assert (=> b!7244862 (= e!4343814 (as set.empty (Set Context!15056)))))

(declare-fun b!7244863 () Bool)

(assert (=> b!7244863 (= e!4343813 (nullable!7881 (h!76685 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 lt!2581933)))))))))

(assert (= (and d!2251203 res!2938815) b!7244863))

(assert (= (and d!2251203 c!1345782) b!7244860))

(assert (= (and d!2251203 (not c!1345782)) b!7244859))

(assert (= (and b!7244859 c!1345783) b!7244861))

(assert (= (and b!7244859 (not c!1345783)) b!7244862))

(assert (= (or b!7244860 b!7244861) bm!659842))

(declare-fun m!7921026 () Bool)

(assert (=> bm!659842 m!7921026))

(declare-fun m!7921028 () Bool)

(assert (=> b!7244860 m!7921028))

(declare-fun m!7921030 () Bool)

(assert (=> b!7244863 m!7921030))

(assert (=> b!7244390 d!2251203))

(assert (=> b!7244436 d!2250959))

(assert (=> d!2250941 d!2251085))

(assert (=> b!7244487 d!2250953))

(declare-fun d!2251205 () Bool)

(declare-fun c!1345784 () Bool)

(assert (=> d!2251205 (= c!1345784 (isEmpty!40464 (tail!14257 s1!1971)))))

(declare-fun e!4343815 () Bool)

(assert (=> d!2251205 (= (matchZipper!3498 (derivationStepZipper!3376 lt!2581946 (head!14860 s1!1971)) (tail!14257 s1!1971)) e!4343815)))

(declare-fun b!7244864 () Bool)

(assert (=> b!7244864 (= e!4343815 (nullableZipper!2873 (derivationStepZipper!3376 lt!2581946 (head!14860 s1!1971))))))

(declare-fun b!7244865 () Bool)

(assert (=> b!7244865 (= e!4343815 (matchZipper!3498 (derivationStepZipper!3376 (derivationStepZipper!3376 lt!2581946 (head!14860 s1!1971)) (head!14860 (tail!14257 s1!1971))) (tail!14257 (tail!14257 s1!1971))))))

(assert (= (and d!2251205 c!1345784) b!7244864))

(assert (= (and d!2251205 (not c!1345784)) b!7244865))

(assert (=> d!2251205 m!7920384))

(declare-fun m!7921032 () Bool)

(assert (=> d!2251205 m!7921032))

(assert (=> b!7244864 m!7920382))

(declare-fun m!7921034 () Bool)

(assert (=> b!7244864 m!7921034))

(assert (=> b!7244865 m!7920384))

(declare-fun m!7921036 () Bool)

(assert (=> b!7244865 m!7921036))

(assert (=> b!7244865 m!7920382))

(assert (=> b!7244865 m!7921036))

(declare-fun m!7921038 () Bool)

(assert (=> b!7244865 m!7921038))

(assert (=> b!7244865 m!7920384))

(declare-fun m!7921040 () Bool)

(assert (=> b!7244865 m!7921040))

(assert (=> b!7244865 m!7921038))

(assert (=> b!7244865 m!7921040))

(declare-fun m!7921042 () Bool)

(assert (=> b!7244865 m!7921042))

(assert (=> b!7244438 d!2251205))

(declare-fun bs!1904836 () Bool)

(declare-fun d!2251207 () Bool)

(assert (= bs!1904836 (and d!2251207 d!2251201)))

(declare-fun lambda!442848 () Int)

(assert (=> bs!1904836 (= (= (head!14860 s1!1971) (head!14860 lt!2581934)) (= lambda!442848 lambda!442847))))

(declare-fun bs!1904837 () Bool)

(assert (= bs!1904837 (and d!2251207 d!2251141)))

(assert (=> bs!1904837 (= (= (head!14860 s1!1971) (head!14860 lt!2581934)) (= lambda!442848 lambda!442840))))

(declare-fun bs!1904838 () Bool)

(assert (= bs!1904838 (and d!2251207 d!2251185)))

(assert (=> bs!1904838 (= (= (head!14860 s1!1971) (head!14860 lt!2581934)) (= lambda!442848 lambda!442845))))

(declare-fun bs!1904839 () Bool)

(assert (= bs!1904839 (and d!2251207 d!2250929)))

(assert (=> bs!1904839 (= (= (head!14860 s1!1971) (h!76686 s1!1971)) (= lambda!442848 lambda!442814))))

(declare-fun bs!1904840 () Bool)

(assert (= bs!1904840 (and d!2251207 d!2251157)))

(assert (=> bs!1904840 (= (= (head!14860 s1!1971) (head!14860 (t!384413 s1!1971))) (= lambda!442848 lambda!442843))))

(declare-fun bs!1904841 () Bool)

(assert (= bs!1904841 (and d!2251207 d!2251091)))

(assert (=> bs!1904841 (= (= (head!14860 s1!1971) (head!14860 lt!2581934)) (= lambda!442848 lambda!442837))))

(declare-fun bs!1904842 () Bool)

(assert (= bs!1904842 (and d!2251207 d!2250895)))

(assert (=> bs!1904842 (= (= (head!14860 s1!1971) (h!76686 s1!1971)) (= lambda!442848 lambda!442803))))

(declare-fun bs!1904843 () Bool)

(assert (= bs!1904843 (and d!2251207 d!2251147)))

(assert (=> bs!1904843 (= (= (head!14860 s1!1971) (head!14860 (t!384413 s1!1971))) (= lambda!442848 lambda!442842))))

(declare-fun bs!1904844 () Bool)

(assert (= bs!1904844 (and d!2251207 b!7244300)))

(assert (=> bs!1904844 (= (= (head!14860 s1!1971) (h!76686 s1!1971)) (= lambda!442848 lambda!442768))))

(declare-fun bs!1904845 () Bool)

(assert (= bs!1904845 (and d!2251207 d!2251133)))

(assert (=> bs!1904845 (= (= (head!14860 s1!1971) (head!14860 (t!384413 s1!1971))) (= lambda!442848 lambda!442839))))

(assert (=> d!2251207 true))

(assert (=> d!2251207 (= (derivationStepZipper!3376 lt!2581946 (head!14860 s1!1971)) (flatMap!2776 lt!2581946 lambda!442848))))

(declare-fun bs!1904846 () Bool)

(assert (= bs!1904846 d!2251207))

(declare-fun m!7921044 () Bool)

(assert (=> bs!1904846 m!7921044))

(assert (=> b!7244438 d!2251207))

(declare-fun d!2251209 () Bool)

(assert (=> d!2251209 (= (head!14860 s1!1971) (h!76686 s1!1971))))

(assert (=> b!7244438 d!2251209))

(declare-fun d!2251211 () Bool)

(assert (=> d!2251211 (= (tail!14257 s1!1971) (t!384413 s1!1971))))

(assert (=> b!7244438 d!2251211))

(declare-fun d!2251213 () Bool)

(assert (=> d!2251213 (= (nullable!7881 (h!76685 (exprs!8028 lt!2581938))) (nullableFct!3091 (h!76685 (exprs!8028 lt!2581938))))))

(declare-fun bs!1904847 () Bool)

(assert (= bs!1904847 d!2251213))

(declare-fun m!7921046 () Bool)

(assert (=> bs!1904847 m!7921046))

(assert (=> b!7244398 d!2251213))

(declare-fun d!2251215 () Bool)

(declare-fun c!1345785 () Bool)

(assert (=> d!2251215 (= c!1345785 (isEmpty!40464 (tail!14257 s1!1971)))))

(declare-fun e!4343816 () Bool)

(assert (=> d!2251215 (= (matchZipper!3498 (derivationStepZipper!3376 lt!2581932 (head!14860 s1!1971)) (tail!14257 s1!1971)) e!4343816)))

(declare-fun b!7244866 () Bool)

(assert (=> b!7244866 (= e!4343816 (nullableZipper!2873 (derivationStepZipper!3376 lt!2581932 (head!14860 s1!1971))))))

(declare-fun b!7244867 () Bool)

(assert (=> b!7244867 (= e!4343816 (matchZipper!3498 (derivationStepZipper!3376 (derivationStepZipper!3376 lt!2581932 (head!14860 s1!1971)) (head!14860 (tail!14257 s1!1971))) (tail!14257 (tail!14257 s1!1971))))))

(assert (= (and d!2251215 c!1345785) b!7244866))

(assert (= (and d!2251215 (not c!1345785)) b!7244867))

(assert (=> d!2251215 m!7920384))

(assert (=> d!2251215 m!7921032))

(assert (=> b!7244866 m!7920502))

(declare-fun m!7921048 () Bool)

(assert (=> b!7244866 m!7921048))

(assert (=> b!7244867 m!7920384))

(assert (=> b!7244867 m!7921036))

(assert (=> b!7244867 m!7920502))

(assert (=> b!7244867 m!7921036))

(declare-fun m!7921050 () Bool)

(assert (=> b!7244867 m!7921050))

(assert (=> b!7244867 m!7920384))

(assert (=> b!7244867 m!7921040))

(assert (=> b!7244867 m!7921050))

(assert (=> b!7244867 m!7921040))

(declare-fun m!7921052 () Bool)

(assert (=> b!7244867 m!7921052))

(assert (=> b!7244509 d!2251215))

(declare-fun bs!1904848 () Bool)

(declare-fun d!2251217 () Bool)

(assert (= bs!1904848 (and d!2251217 d!2251201)))

(declare-fun lambda!442849 () Int)

(assert (=> bs!1904848 (= (= (head!14860 s1!1971) (head!14860 lt!2581934)) (= lambda!442849 lambda!442847))))

(declare-fun bs!1904849 () Bool)

(assert (= bs!1904849 (and d!2251217 d!2251185)))

(assert (=> bs!1904849 (= (= (head!14860 s1!1971) (head!14860 lt!2581934)) (= lambda!442849 lambda!442845))))

(declare-fun bs!1904850 () Bool)

(assert (= bs!1904850 (and d!2251217 d!2250929)))

(assert (=> bs!1904850 (= (= (head!14860 s1!1971) (h!76686 s1!1971)) (= lambda!442849 lambda!442814))))

(declare-fun bs!1904851 () Bool)

(assert (= bs!1904851 (and d!2251217 d!2251157)))

(assert (=> bs!1904851 (= (= (head!14860 s1!1971) (head!14860 (t!384413 s1!1971))) (= lambda!442849 lambda!442843))))

(declare-fun bs!1904852 () Bool)

(assert (= bs!1904852 (and d!2251217 d!2251091)))

(assert (=> bs!1904852 (= (= (head!14860 s1!1971) (head!14860 lt!2581934)) (= lambda!442849 lambda!442837))))

(declare-fun bs!1904853 () Bool)

(assert (= bs!1904853 (and d!2251217 d!2250895)))

(assert (=> bs!1904853 (= (= (head!14860 s1!1971) (h!76686 s1!1971)) (= lambda!442849 lambda!442803))))

(declare-fun bs!1904854 () Bool)

(assert (= bs!1904854 (and d!2251217 d!2251147)))

(assert (=> bs!1904854 (= (= (head!14860 s1!1971) (head!14860 (t!384413 s1!1971))) (= lambda!442849 lambda!442842))))

(declare-fun bs!1904855 () Bool)

(assert (= bs!1904855 (and d!2251217 b!7244300)))

(assert (=> bs!1904855 (= (= (head!14860 s1!1971) (h!76686 s1!1971)) (= lambda!442849 lambda!442768))))

(declare-fun bs!1904856 () Bool)

(assert (= bs!1904856 (and d!2251217 d!2251133)))

(assert (=> bs!1904856 (= (= (head!14860 s1!1971) (head!14860 (t!384413 s1!1971))) (= lambda!442849 lambda!442839))))

(declare-fun bs!1904857 () Bool)

(assert (= bs!1904857 (and d!2251217 d!2251141)))

(assert (=> bs!1904857 (= (= (head!14860 s1!1971) (head!14860 lt!2581934)) (= lambda!442849 lambda!442840))))

(declare-fun bs!1904858 () Bool)

(assert (= bs!1904858 (and d!2251217 d!2251207)))

(assert (=> bs!1904858 (= lambda!442849 lambda!442848)))

(assert (=> d!2251217 true))

(assert (=> d!2251217 (= (derivationStepZipper!3376 lt!2581932 (head!14860 s1!1971)) (flatMap!2776 lt!2581932 lambda!442849))))

(declare-fun bs!1904859 () Bool)

(assert (= bs!1904859 d!2251217))

(declare-fun m!7921054 () Bool)

(assert (=> bs!1904859 m!7921054))

(assert (=> b!7244509 d!2251217))

(assert (=> b!7244509 d!2251209))

(assert (=> b!7244509 d!2251211))

(declare-fun d!2251219 () Bool)

(declare-fun c!1345786 () Bool)

(assert (=> d!2251219 (= c!1345786 (isEmpty!40464 (tail!14257 (t!384413 s1!1971))))))

(declare-fun e!4343817 () Bool)

(assert (=> d!2251219 (= (matchZipper!3498 (derivationStepZipper!3376 lt!2581921 (head!14860 (t!384413 s1!1971))) (tail!14257 (t!384413 s1!1971))) e!4343817)))

(declare-fun b!7244868 () Bool)

(assert (=> b!7244868 (= e!4343817 (nullableZipper!2873 (derivationStepZipper!3376 lt!2581921 (head!14860 (t!384413 s1!1971)))))))

(declare-fun b!7244869 () Bool)

(assert (=> b!7244869 (= e!4343817 (matchZipper!3498 (derivationStepZipper!3376 (derivationStepZipper!3376 lt!2581921 (head!14860 (t!384413 s1!1971))) (head!14860 (tail!14257 (t!384413 s1!1971)))) (tail!14257 (tail!14257 (t!384413 s1!1971)))))))

(assert (= (and d!2251219 c!1345786) b!7244868))

(assert (= (and d!2251219 (not c!1345786)) b!7244869))

(assert (=> d!2251219 m!7920400))

(assert (=> d!2251219 m!7920884))

(assert (=> b!7244868 m!7920398))

(declare-fun m!7921056 () Bool)

(assert (=> b!7244868 m!7921056))

(assert (=> b!7244869 m!7920400))

(assert (=> b!7244869 m!7920888))

(assert (=> b!7244869 m!7920398))

(assert (=> b!7244869 m!7920888))

(declare-fun m!7921058 () Bool)

(assert (=> b!7244869 m!7921058))

(assert (=> b!7244869 m!7920400))

(assert (=> b!7244869 m!7920892))

(assert (=> b!7244869 m!7921058))

(assert (=> b!7244869 m!7920892))

(declare-fun m!7921060 () Bool)

(assert (=> b!7244869 m!7921060))

(assert (=> b!7244440 d!2251219))

(declare-fun bs!1904860 () Bool)

(declare-fun d!2251221 () Bool)

(assert (= bs!1904860 (and d!2251221 d!2251201)))

(declare-fun lambda!442850 () Int)

(assert (=> bs!1904860 (= (= (head!14860 (t!384413 s1!1971)) (head!14860 lt!2581934)) (= lambda!442850 lambda!442847))))

(declare-fun bs!1904861 () Bool)

(assert (= bs!1904861 (and d!2251221 d!2251185)))

(assert (=> bs!1904861 (= (= (head!14860 (t!384413 s1!1971)) (head!14860 lt!2581934)) (= lambda!442850 lambda!442845))))

(declare-fun bs!1904862 () Bool)

(assert (= bs!1904862 (and d!2251221 d!2250929)))

(assert (=> bs!1904862 (= (= (head!14860 (t!384413 s1!1971)) (h!76686 s1!1971)) (= lambda!442850 lambda!442814))))

(declare-fun bs!1904863 () Bool)

(assert (= bs!1904863 (and d!2251221 d!2251157)))

(assert (=> bs!1904863 (= lambda!442850 lambda!442843)))

(declare-fun bs!1904864 () Bool)

(assert (= bs!1904864 (and d!2251221 d!2251091)))

(assert (=> bs!1904864 (= (= (head!14860 (t!384413 s1!1971)) (head!14860 lt!2581934)) (= lambda!442850 lambda!442837))))

(declare-fun bs!1904865 () Bool)

(assert (= bs!1904865 (and d!2251221 d!2251217)))

(assert (=> bs!1904865 (= (= (head!14860 (t!384413 s1!1971)) (head!14860 s1!1971)) (= lambda!442850 lambda!442849))))

(declare-fun bs!1904866 () Bool)

(assert (= bs!1904866 (and d!2251221 d!2250895)))

(assert (=> bs!1904866 (= (= (head!14860 (t!384413 s1!1971)) (h!76686 s1!1971)) (= lambda!442850 lambda!442803))))

(declare-fun bs!1904867 () Bool)

(assert (= bs!1904867 (and d!2251221 d!2251147)))

(assert (=> bs!1904867 (= lambda!442850 lambda!442842)))

(declare-fun bs!1904868 () Bool)

(assert (= bs!1904868 (and d!2251221 b!7244300)))

(assert (=> bs!1904868 (= (= (head!14860 (t!384413 s1!1971)) (h!76686 s1!1971)) (= lambda!442850 lambda!442768))))

(declare-fun bs!1904869 () Bool)

(assert (= bs!1904869 (and d!2251221 d!2251133)))

(assert (=> bs!1904869 (= lambda!442850 lambda!442839)))

(declare-fun bs!1904870 () Bool)

(assert (= bs!1904870 (and d!2251221 d!2251141)))

(assert (=> bs!1904870 (= (= (head!14860 (t!384413 s1!1971)) (head!14860 lt!2581934)) (= lambda!442850 lambda!442840))))

(declare-fun bs!1904871 () Bool)

(assert (= bs!1904871 (and d!2251221 d!2251207)))

(assert (=> bs!1904871 (= (= (head!14860 (t!384413 s1!1971)) (head!14860 s1!1971)) (= lambda!442850 lambda!442848))))

(assert (=> d!2251221 true))

(assert (=> d!2251221 (= (derivationStepZipper!3376 lt!2581921 (head!14860 (t!384413 s1!1971))) (flatMap!2776 lt!2581921 lambda!442850))))

(declare-fun bs!1904872 () Bool)

(assert (= bs!1904872 d!2251221))

(declare-fun m!7921062 () Bool)

(assert (=> bs!1904872 m!7921062))

(assert (=> b!7244440 d!2251221))

(assert (=> b!7244440 d!2251135))

(assert (=> b!7244440 d!2251137))

(declare-fun d!2251223 () Bool)

(assert (=> d!2251223 true))

(declare-fun setRes!53563 () Bool)

(assert (=> d!2251223 setRes!53563))

(declare-fun condSetEmpty!53563 () Bool)

(declare-fun res!2938818 () (Set Context!15056))

(assert (=> d!2251223 (= condSetEmpty!53563 (= res!2938818 (as set.empty (Set Context!15056))))))

(assert (=> d!2251223 (= (choose!55867 lt!2581946 lambda!442768) res!2938818)))

(declare-fun setIsEmpty!53563 () Bool)

(assert (=> setIsEmpty!53563 setRes!53563))

(declare-fun setElem!53563 () Context!15056)

(declare-fun e!4343820 () Bool)

(declare-fun tp!2036026 () Bool)

(declare-fun setNonEmpty!53563 () Bool)

(assert (=> setNonEmpty!53563 (= setRes!53563 (and tp!2036026 (inv!89481 setElem!53563) e!4343820))))

(declare-fun setRest!53563 () (Set Context!15056))

(assert (=> setNonEmpty!53563 (= res!2938818 (set.union (set.insert setElem!53563 (as set.empty (Set Context!15056))) setRest!53563))))

(declare-fun b!7244872 () Bool)

(declare-fun tp!2036025 () Bool)

(assert (=> b!7244872 (= e!4343820 tp!2036025)))

(assert (= (and d!2251223 condSetEmpty!53563) setIsEmpty!53563))

(assert (= (and d!2251223 (not condSetEmpty!53563)) setNonEmpty!53563))

(assert (= setNonEmpty!53563 b!7244872))

(declare-fun m!7921064 () Bool)

(assert (=> setNonEmpty!53563 m!7921064))

(assert (=> d!2250967 d!2251223))

(declare-fun bs!1904873 () Bool)

(declare-fun d!2251225 () Bool)

(assert (= bs!1904873 (and d!2251225 d!2251189)))

(declare-fun lambda!442851 () Int)

(assert (=> bs!1904873 (= (= lambda!442800 lambda!442767) (= lambda!442851 lambda!442846))))

(declare-fun bs!1904874 () Bool)

(assert (= bs!1904874 (and d!2251225 d!2251079)))

(assert (=> bs!1904874 (not (= lambda!442851 lambda!442834))))

(declare-fun bs!1904875 () Bool)

(assert (= bs!1904875 (and d!2251225 d!2251087)))

(assert (=> bs!1904875 (not (= lambda!442851 lambda!442836))))

(declare-fun bs!1904876 () Bool)

(assert (= bs!1904876 (and d!2251225 d!2250897)))

(assert (=> bs!1904876 (= (= lambda!442800 lambda!442767) (= lambda!442851 lambda!442806))))

(declare-fun bs!1904877 () Bool)

(assert (= bs!1904877 (and d!2251225 d!2251143)))

(assert (=> bs!1904877 (not (= lambda!442851 lambda!442841))))

(declare-fun bs!1904878 () Bool)

(assert (= bs!1904878 (and d!2251225 d!2251159)))

(assert (=> bs!1904878 (not (= lambda!442851 lambda!442844))))

(declare-fun bs!1904879 () Bool)

(assert (= bs!1904879 (and d!2251225 d!2251081)))

(assert (=> bs!1904879 (not (= lambda!442851 lambda!442835))))

(declare-fun bs!1904880 () Bool)

(assert (= bs!1904880 (and d!2251225 d!2251105)))

(assert (=> bs!1904880 (not (= lambda!442851 lambda!442838))))

(declare-fun bs!1904881 () Bool)

(assert (= bs!1904881 (and d!2251225 b!7244303)))

(assert (=> bs!1904881 (not (= lambda!442851 lambda!442767))))

(declare-fun bs!1904882 () Bool)

(assert (= bs!1904882 (and d!2251225 d!2250889)))

(assert (=> bs!1904882 (not (= lambda!442851 lambda!442800))))

(assert (=> d!2251225 true))

(assert (=> d!2251225 (< (dynLambda!28672 order!28923 lambda!442800) (dynLambda!28672 order!28923 lambda!442851))))

(assert (=> d!2251225 (= (exists!4296 lt!2581943 lambda!442800) (not (forall!17428 lt!2581943 lambda!442851)))))

(declare-fun bs!1904883 () Bool)

(assert (= bs!1904883 d!2251225))

(declare-fun m!7921066 () Bool)

(assert (=> bs!1904883 m!7921066))

(assert (=> d!2250889 d!2251225))

(declare-fun bs!1904884 () Bool)

(declare-fun d!2251227 () Bool)

(assert (= bs!1904884 (and d!2251227 d!2251189)))

(declare-fun lambda!442854 () Int)

(assert (=> bs!1904884 (not (= lambda!442854 lambda!442846))))

(declare-fun bs!1904885 () Bool)

(assert (= bs!1904885 (and d!2251227 d!2251087)))

(assert (=> bs!1904885 (not (= lambda!442854 lambda!442836))))

(declare-fun bs!1904886 () Bool)

(assert (= bs!1904886 (and d!2251227 d!2250897)))

(assert (=> bs!1904886 (not (= lambda!442854 lambda!442806))))

(declare-fun bs!1904887 () Bool)

(assert (= bs!1904887 (and d!2251227 d!2251143)))

(assert (=> bs!1904887 (not (= lambda!442854 lambda!442841))))

(declare-fun bs!1904888 () Bool)

(assert (= bs!1904888 (and d!2251227 d!2251159)))

(assert (=> bs!1904888 (not (= lambda!442854 lambda!442844))))

(declare-fun bs!1904889 () Bool)

(assert (= bs!1904889 (and d!2251227 d!2251225)))

(assert (=> bs!1904889 (not (= lambda!442854 lambda!442851))))

(declare-fun bs!1904890 () Bool)

(assert (= bs!1904890 (and d!2251227 d!2251079)))

(assert (=> bs!1904890 (not (= lambda!442854 lambda!442834))))

(declare-fun bs!1904891 () Bool)

(assert (= bs!1904891 (and d!2251227 d!2251081)))

(assert (=> bs!1904891 (not (= lambda!442854 lambda!442835))))

(declare-fun bs!1904892 () Bool)

(assert (= bs!1904892 (and d!2251227 d!2251105)))

(assert (=> bs!1904892 (not (= lambda!442854 lambda!442838))))

(declare-fun bs!1904893 () Bool)

(assert (= bs!1904893 (and d!2251227 b!7244303)))

(assert (=> bs!1904893 (= lambda!442854 lambda!442767)))

(declare-fun bs!1904894 () Bool)

(assert (= bs!1904894 (and d!2251227 d!2250889)))

(assert (=> bs!1904894 (= lambda!442854 lambda!442800)))

(assert (=> d!2251227 true))

(assert (=> d!2251227 (exists!4296 lt!2581943 lambda!442854)))

(assert (=> d!2251227 true))

(declare-fun _$60!1207 () Unit!163762)

(assert (=> d!2251227 (= (choose!55860 lt!2581943 (t!384413 s1!1971)) _$60!1207)))

(declare-fun bs!1904895 () Bool)

(assert (= bs!1904895 d!2251227))

(declare-fun m!7921068 () Bool)

(assert (=> bs!1904895 m!7921068))

(assert (=> d!2250889 d!2251227))

(declare-fun d!2251229 () Bool)

(declare-fun c!1345789 () Bool)

(assert (=> d!2251229 (= c!1345789 (isEmpty!40464 (t!384413 s1!1971)))))

(declare-fun e!4343821 () Bool)

(assert (=> d!2251229 (= (matchZipper!3498 (content!14527 lt!2581943) (t!384413 s1!1971)) e!4343821)))

(declare-fun b!7244873 () Bool)

(assert (=> b!7244873 (= e!4343821 (nullableZipper!2873 (content!14527 lt!2581943)))))

(declare-fun b!7244874 () Bool)

(assert (=> b!7244874 (= e!4343821 (matchZipper!3498 (derivationStepZipper!3376 (content!14527 lt!2581943) (head!14860 (t!384413 s1!1971))) (tail!14257 (t!384413 s1!1971))))))

(assert (= (and d!2251229 c!1345789) b!7244873))

(assert (= (and d!2251229 (not c!1345789)) b!7244874))

(assert (=> d!2251229 m!7920392))

(assert (=> b!7244873 m!7920272))

(declare-fun m!7921070 () Bool)

(assert (=> b!7244873 m!7921070))

(assert (=> b!7244874 m!7920396))

(assert (=> b!7244874 m!7920272))

(assert (=> b!7244874 m!7920396))

(declare-fun m!7921072 () Bool)

(assert (=> b!7244874 m!7921072))

(assert (=> b!7244874 m!7920400))

(assert (=> b!7244874 m!7921072))

(assert (=> b!7244874 m!7920400))

(declare-fun m!7921074 () Bool)

(assert (=> b!7244874 m!7921074))

(assert (=> d!2250889 d!2251229))

(declare-fun d!2251231 () Bool)

(declare-fun c!1345792 () Bool)

(assert (=> d!2251231 (= c!1345792 (is-Nil!70239 lt!2581943))))

(declare-fun e!4343824 () (Set Context!15056))

(assert (=> d!2251231 (= (content!14527 lt!2581943) e!4343824)))

(declare-fun b!7244879 () Bool)

(assert (=> b!7244879 (= e!4343824 (as set.empty (Set Context!15056)))))

(declare-fun b!7244880 () Bool)

(assert (=> b!7244880 (= e!4343824 (set.union (set.insert (h!76687 lt!2581943) (as set.empty (Set Context!15056))) (content!14527 (t!384414 lt!2581943))))))

(assert (= (and d!2251231 c!1345792) b!7244879))

(assert (= (and d!2251231 (not c!1345792)) b!7244880))

(declare-fun m!7921076 () Bool)

(assert (=> b!7244880 m!7921076))

(declare-fun m!7921078 () Bool)

(assert (=> b!7244880 m!7921078))

(assert (=> d!2250889 d!2251231))

(declare-fun bm!659843 () Bool)

(declare-fun call!659848 () (Set Context!15056))

(assert (=> bm!659843 (= call!659848 (derivationStepZipperDown!2612 (h!76685 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 ct1!232))))) (Context!15057 (t!384412 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 ct1!232)))))) (h!76686 s1!1971)))))

(declare-fun d!2251233 () Bool)

(declare-fun c!1345793 () Bool)

(declare-fun e!4343826 () Bool)

(assert (=> d!2251233 (= c!1345793 e!4343826)))

(declare-fun res!2938819 () Bool)

(assert (=> d!2251233 (=> (not res!2938819) (not e!4343826))))

(assert (=> d!2251233 (= res!2938819 (is-Cons!70237 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 ct1!232))))))))

(declare-fun e!4343825 () (Set Context!15056))

(assert (=> d!2251233 (= (derivationStepZipperUp!2442 (Context!15057 (t!384412 (exprs!8028 ct1!232))) (h!76686 s1!1971)) e!4343825)))

(declare-fun b!7244881 () Bool)

(declare-fun e!4343827 () (Set Context!15056))

(assert (=> b!7244881 (= e!4343825 e!4343827)))

(declare-fun c!1345794 () Bool)

(assert (=> b!7244881 (= c!1345794 (is-Cons!70237 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 ct1!232))))))))

(declare-fun b!7244882 () Bool)

(assert (=> b!7244882 (= e!4343825 (set.union call!659848 (derivationStepZipperUp!2442 (Context!15057 (t!384412 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 ct1!232)))))) (h!76686 s1!1971))))))

(declare-fun b!7244883 () Bool)

(assert (=> b!7244883 (= e!4343827 call!659848)))

(declare-fun b!7244884 () Bool)

(assert (=> b!7244884 (= e!4343827 (as set.empty (Set Context!15056)))))

(declare-fun b!7244885 () Bool)

(assert (=> b!7244885 (= e!4343826 (nullable!7881 (h!76685 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 ct1!232)))))))))

(assert (= (and d!2251233 res!2938819) b!7244885))

(assert (= (and d!2251233 c!1345793) b!7244882))

(assert (= (and d!2251233 (not c!1345793)) b!7244881))

(assert (= (and b!7244881 c!1345794) b!7244883))

(assert (= (and b!7244881 (not c!1345794)) b!7244884))

(assert (= (or b!7244882 b!7244883) bm!659843))

(declare-fun m!7921080 () Bool)

(assert (=> bm!659843 m!7921080))

(declare-fun m!7921082 () Bool)

(assert (=> b!7244882 m!7921082))

(declare-fun m!7921084 () Bool)

(assert (=> b!7244885 m!7921084))

(assert (=> b!7244433 d!2251233))

(declare-fun d!2251235 () Bool)

(assert (=> d!2251235 (= (flatMap!2776 lt!2581932 lambda!442803) (choose!55867 lt!2581932 lambda!442803))))

(declare-fun bs!1904896 () Bool)

(assert (= bs!1904896 d!2251235))

(declare-fun m!7921086 () Bool)

(assert (=> bs!1904896 m!7921086))

(assert (=> d!2250895 d!2251235))

(declare-fun d!2251237 () Bool)

(assert (=> d!2251237 (= ($colon$colon!2901 (exprs!8028 lt!2581938) (ite (or c!1345641 c!1345638) (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (h!76685 (exprs!8028 ct1!232)))) (Cons!70237 (ite (or c!1345641 c!1345638) (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (h!76685 (exprs!8028 ct1!232))) (exprs!8028 lt!2581938)))))

(assert (=> bm!659757 d!2251237))

(declare-fun d!2251239 () Bool)

(declare-fun c!1345795 () Bool)

(assert (=> d!2251239 (= c!1345795 (isEmpty!40464 (t!384413 s1!1971)))))

(declare-fun e!4343828 () Bool)

(assert (=> d!2251239 (= (matchZipper!3498 (set.union lt!2581931 lt!2581944) (t!384413 s1!1971)) e!4343828)))

(declare-fun b!7244886 () Bool)

(assert (=> b!7244886 (= e!4343828 (nullableZipper!2873 (set.union lt!2581931 lt!2581944)))))

(declare-fun b!7244887 () Bool)

(assert (=> b!7244887 (= e!4343828 (matchZipper!3498 (derivationStepZipper!3376 (set.union lt!2581931 lt!2581944) (head!14860 (t!384413 s1!1971))) (tail!14257 (t!384413 s1!1971))))))

(assert (= (and d!2251239 c!1345795) b!7244886))

(assert (= (and d!2251239 (not c!1345795)) b!7244887))

(assert (=> d!2251239 m!7920392))

(declare-fun m!7921088 () Bool)

(assert (=> b!7244886 m!7921088))

(assert (=> b!7244887 m!7920396))

(assert (=> b!7244887 m!7920396))

(declare-fun m!7921090 () Bool)

(assert (=> b!7244887 m!7921090))

(assert (=> b!7244887 m!7920400))

(assert (=> b!7244887 m!7921090))

(assert (=> b!7244887 m!7920400))

(declare-fun m!7921092 () Bool)

(assert (=> b!7244887 m!7921092))

(assert (=> d!2250949 d!2251239))

(assert (=> d!2250949 d!2250943))

(declare-fun d!2251241 () Bool)

(declare-fun e!4343831 () Bool)

(assert (=> d!2251241 (= (matchZipper!3498 (set.union lt!2581931 lt!2581944) (t!384413 s1!1971)) e!4343831)))

(declare-fun res!2938822 () Bool)

(assert (=> d!2251241 (=> res!2938822 e!4343831)))

(assert (=> d!2251241 (= res!2938822 (matchZipper!3498 lt!2581931 (t!384413 s1!1971)))))

(assert (=> d!2251241 true))

(declare-fun _$48!2533 () Unit!163762)

(assert (=> d!2251241 (= (choose!55865 lt!2581931 lt!2581944 (t!384413 s1!1971)) _$48!2533)))

(declare-fun b!7244890 () Bool)

(assert (=> b!7244890 (= e!4343831 (matchZipper!3498 lt!2581944 (t!384413 s1!1971)))))

(assert (= (and d!2251241 (not res!2938822)) b!7244890))

(assert (=> d!2251241 m!7920456))

(assert (=> d!2251241 m!7920118))

(assert (=> b!7244890 m!7920134))

(assert (=> d!2250949 d!2251241))

(declare-fun bs!1904897 () Bool)

(declare-fun d!2251243 () Bool)

(assert (= bs!1904897 (and d!2251243 d!2251189)))

(declare-fun lambda!442855 () Int)

(assert (=> bs!1904897 (not (= lambda!442855 lambda!442846))))

(declare-fun bs!1904898 () Bool)

(assert (= bs!1904898 (and d!2251243 d!2251087)))

(assert (=> bs!1904898 (= lambda!442855 lambda!442836)))

(declare-fun bs!1904899 () Bool)

(assert (= bs!1904899 (and d!2251243 d!2250897)))

(assert (=> bs!1904899 (not (= lambda!442855 lambda!442806))))

(declare-fun bs!1904900 () Bool)

(assert (= bs!1904900 (and d!2251243 d!2251143)))

(assert (=> bs!1904900 (= lambda!442855 lambda!442841)))

(declare-fun bs!1904901 () Bool)

(assert (= bs!1904901 (and d!2251243 d!2251159)))

(assert (=> bs!1904901 (= lambda!442855 lambda!442844)))

(declare-fun bs!1904902 () Bool)

(assert (= bs!1904902 (and d!2251243 d!2251227)))

(assert (=> bs!1904902 (not (= lambda!442855 lambda!442854))))

(declare-fun bs!1904903 () Bool)

(assert (= bs!1904903 (and d!2251243 d!2251225)))

(assert (=> bs!1904903 (not (= lambda!442855 lambda!442851))))

(declare-fun bs!1904904 () Bool)

(assert (= bs!1904904 (and d!2251243 d!2251079)))

(assert (=> bs!1904904 (= lambda!442855 lambda!442834)))

(declare-fun bs!1904905 () Bool)

(assert (= bs!1904905 (and d!2251243 d!2251081)))

(assert (=> bs!1904905 (= lambda!442855 lambda!442835)))

(declare-fun bs!1904906 () Bool)

(assert (= bs!1904906 (and d!2251243 d!2251105)))

(assert (=> bs!1904906 (= lambda!442855 lambda!442838)))

(declare-fun bs!1904907 () Bool)

(assert (= bs!1904907 (and d!2251243 b!7244303)))

(assert (=> bs!1904907 (not (= lambda!442855 lambda!442767))))

(declare-fun bs!1904908 () Bool)

(assert (= bs!1904908 (and d!2251243 d!2250889)))

(assert (=> bs!1904908 (not (= lambda!442855 lambda!442800))))

(assert (=> d!2251243 (= (nullableZipper!2873 (set.insert (Context!15057 lt!2581928) (as set.empty (Set Context!15056)))) (exists!4295 (set.insert (Context!15057 lt!2581928) (as set.empty (Set Context!15056))) lambda!442855))))

(declare-fun bs!1904909 () Bool)

(assert (= bs!1904909 d!2251243))

(assert (=> bs!1904909 m!7920140))

(declare-fun m!7921094 () Bool)

(assert (=> bs!1904909 m!7921094))

(assert (=> b!7244406 d!2251243))

(declare-fun b!7244891 () Bool)

(declare-fun e!4343835 () (Set Context!15056))

(declare-fun call!659852 () (Set Context!15056))

(declare-fun call!659854 () (Set Context!15056))

(assert (=> b!7244891 (= e!4343835 (set.union call!659852 call!659854))))

(declare-fun b!7244892 () Bool)

(declare-fun c!1345797 () Bool)

(assert (=> b!7244892 (= c!1345797 (is-Star!18588 (h!76685 (exprs!8028 ct1!232))))))

(declare-fun e!4343832 () (Set Context!15056))

(declare-fun e!4343836 () (Set Context!15056))

(assert (=> b!7244892 (= e!4343832 e!4343836)))

(declare-fun b!7244893 () Bool)

(declare-fun e!4343837 () (Set Context!15056))

(assert (=> b!7244893 (= e!4343837 e!4343835)))

(declare-fun c!1345800 () Bool)

(assert (=> b!7244893 (= c!1345800 (is-Union!18588 (h!76685 (exprs!8028 ct1!232))))))

(declare-fun bm!659844 () Bool)

(declare-fun call!659853 () List!70361)

(declare-fun call!659850 () List!70361)

(assert (=> bm!659844 (= call!659853 call!659850)))

(declare-fun b!7244894 () Bool)

(declare-fun e!4343833 () (Set Context!15056))

(assert (=> b!7244894 (= e!4343833 e!4343832)))

(declare-fun c!1345796 () Bool)

(assert (=> b!7244894 (= c!1345796 (is-Concat!27433 (h!76685 (exprs!8028 ct1!232))))))

(declare-fun bm!659845 () Bool)

(declare-fun c!1345799 () Bool)

(assert (=> bm!659845 (= call!659850 ($colon$colon!2901 (exprs!8028 (Context!15057 (t!384412 (exprs!8028 ct1!232)))) (ite (or c!1345799 c!1345796) (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (h!76685 (exprs!8028 ct1!232)))))))

(declare-fun b!7244895 () Bool)

(declare-fun e!4343834 () Bool)

(assert (=> b!7244895 (= c!1345799 e!4343834)))

(declare-fun res!2938823 () Bool)

(assert (=> b!7244895 (=> (not res!2938823) (not e!4343834))))

(assert (=> b!7244895 (= res!2938823 (is-Concat!27433 (h!76685 (exprs!8028 ct1!232))))))

(assert (=> b!7244895 (= e!4343835 e!4343833)))

(declare-fun b!7244896 () Bool)

(assert (=> b!7244896 (= e!4343836 (as set.empty (Set Context!15056)))))

(declare-fun bm!659846 () Bool)

(declare-fun call!659849 () (Set Context!15056))

(declare-fun call!659851 () (Set Context!15056))

(assert (=> bm!659846 (= call!659849 call!659851)))

(declare-fun bm!659847 () Bool)

(assert (=> bm!659847 (= call!659851 call!659852)))

(declare-fun d!2251245 () Bool)

(declare-fun c!1345798 () Bool)

(assert (=> d!2251245 (= c!1345798 (and (is-ElementMatch!18588 (h!76685 (exprs!8028 ct1!232))) (= (c!1345589 (h!76685 (exprs!8028 ct1!232))) (h!76686 s1!1971))))))

(assert (=> d!2251245 (= (derivationStepZipperDown!2612 (h!76685 (exprs!8028 ct1!232)) (Context!15057 (t!384412 (exprs!8028 ct1!232))) (h!76686 s1!1971)) e!4343837)))

(declare-fun b!7244897 () Bool)

(assert (=> b!7244897 (= e!4343832 call!659849)))

(declare-fun b!7244898 () Bool)

(assert (=> b!7244898 (= e!4343834 (nullable!7881 (regOne!37688 (h!76685 (exprs!8028 ct1!232)))))))

(declare-fun bm!659848 () Bool)

(assert (=> bm!659848 (= call!659852 (derivationStepZipperDown!2612 (ite c!1345800 (regOne!37689 (h!76685 (exprs!8028 ct1!232))) (ite c!1345799 (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (ite c!1345796 (regOne!37688 (h!76685 (exprs!8028 ct1!232))) (reg!18917 (h!76685 (exprs!8028 ct1!232)))))) (ite (or c!1345800 c!1345799) (Context!15057 (t!384412 (exprs!8028 ct1!232))) (Context!15057 call!659853)) (h!76686 s1!1971)))))

(declare-fun b!7244899 () Bool)

(assert (=> b!7244899 (= e!4343837 (set.insert (Context!15057 (t!384412 (exprs!8028 ct1!232))) (as set.empty (Set Context!15056))))))

(declare-fun b!7244900 () Bool)

(assert (=> b!7244900 (= e!4343836 call!659849)))

(declare-fun b!7244901 () Bool)

(assert (=> b!7244901 (= e!4343833 (set.union call!659854 call!659851))))

(declare-fun bm!659849 () Bool)

(assert (=> bm!659849 (= call!659854 (derivationStepZipperDown!2612 (ite c!1345800 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232)))) (ite c!1345800 (Context!15057 (t!384412 (exprs!8028 ct1!232))) (Context!15057 call!659850)) (h!76686 s1!1971)))))

(assert (= (and d!2251245 c!1345798) b!7244899))

(assert (= (and d!2251245 (not c!1345798)) b!7244893))

(assert (= (and b!7244893 c!1345800) b!7244891))

(assert (= (and b!7244893 (not c!1345800)) b!7244895))

(assert (= (and b!7244895 res!2938823) b!7244898))

(assert (= (and b!7244895 c!1345799) b!7244901))

(assert (= (and b!7244895 (not c!1345799)) b!7244894))

(assert (= (and b!7244894 c!1345796) b!7244897))

(assert (= (and b!7244894 (not c!1345796)) b!7244892))

(assert (= (and b!7244892 c!1345797) b!7244900))

(assert (= (and b!7244892 (not c!1345797)) b!7244896))

(assert (= (or b!7244897 b!7244900) bm!659844))

(assert (= (or b!7244897 b!7244900) bm!659846))

(assert (= (or b!7244901 bm!659844) bm!659845))

(assert (= (or b!7244901 bm!659846) bm!659847))

(assert (= (or b!7244891 b!7244901) bm!659849))

(assert (= (or b!7244891 bm!659847) bm!659848))

(declare-fun m!7921096 () Bool)

(assert (=> bm!659849 m!7921096))

(declare-fun m!7921098 () Bool)

(assert (=> bm!659848 m!7921098))

(declare-fun m!7921100 () Bool)

(assert (=> b!7244899 m!7921100))

(assert (=> b!7244898 m!7920418))

(declare-fun m!7921102 () Bool)

(assert (=> bm!659845 m!7921102))

(assert (=> bm!659742 d!2251245))

(declare-fun d!2251247 () Bool)

(declare-fun res!2938828 () Bool)

(declare-fun e!4343842 () Bool)

(assert (=> d!2251247 (=> res!2938828 e!4343842)))

(assert (=> d!2251247 (= res!2938828 (is-Nil!70239 lt!2582076))))

(assert (=> d!2251247 (= (noDuplicate!2965 lt!2582076) e!4343842)))

(declare-fun b!7244906 () Bool)

(declare-fun e!4343843 () Bool)

(assert (=> b!7244906 (= e!4343842 e!4343843)))

(declare-fun res!2938829 () Bool)

(assert (=> b!7244906 (=> (not res!2938829) (not e!4343843))))

(declare-fun contains!20739 (List!70363 Context!15056) Bool)

(assert (=> b!7244906 (= res!2938829 (not (contains!20739 (t!384414 lt!2582076) (h!76687 lt!2582076))))))

(declare-fun b!7244907 () Bool)

(assert (=> b!7244907 (= e!4343843 (noDuplicate!2965 (t!384414 lt!2582076)))))

(assert (= (and d!2251247 (not res!2938828)) b!7244906))

(assert (= (and b!7244906 res!2938829) b!7244907))

(declare-fun m!7921104 () Bool)

(assert (=> b!7244906 m!7921104))

(declare-fun m!7921106 () Bool)

(assert (=> b!7244907 m!7921106))

(assert (=> d!2250893 d!2251247))

(declare-fun d!2251249 () Bool)

(declare-fun e!4343852 () Bool)

(assert (=> d!2251249 e!4343852))

(declare-fun res!2938835 () Bool)

(assert (=> d!2251249 (=> (not res!2938835) (not e!4343852))))

(declare-fun res!2938834 () List!70363)

(assert (=> d!2251249 (= res!2938835 (noDuplicate!2965 res!2938834))))

(declare-fun e!4343851 () Bool)

(assert (=> d!2251249 e!4343851))

(assert (=> d!2251249 (= (choose!55862 lt!2581921) res!2938834)))

(declare-fun b!7244915 () Bool)

(declare-fun e!4343850 () Bool)

(declare-fun tp!2036032 () Bool)

(assert (=> b!7244915 (= e!4343850 tp!2036032)))

(declare-fun b!7244914 () Bool)

(declare-fun tp!2036031 () Bool)

(assert (=> b!7244914 (= e!4343851 (and (inv!89481 (h!76687 res!2938834)) e!4343850 tp!2036031))))

(declare-fun b!7244916 () Bool)

(assert (=> b!7244916 (= e!4343852 (= (content!14527 res!2938834) lt!2581921))))

(assert (= b!7244914 b!7244915))

(assert (= (and d!2251249 (is-Cons!70239 res!2938834)) b!7244914))

(assert (= (and d!2251249 res!2938835) b!7244916))

(declare-fun m!7921108 () Bool)

(assert (=> d!2251249 m!7921108))

(declare-fun m!7921110 () Bool)

(assert (=> b!7244914 m!7921110))

(declare-fun m!7921112 () Bool)

(assert (=> b!7244916 m!7921112))

(assert (=> d!2250893 d!2251249))

(declare-fun d!2251251 () Bool)

(assert (=> d!2251251 (= (isEmpty!40464 s1!1971) (is-Nil!70238 s1!1971))))

(assert (=> d!2250921 d!2251251))

(declare-fun d!2251253 () Bool)

(declare-fun c!1345801 () Bool)

(assert (=> d!2251253 (= c!1345801 (isEmpty!40464 (tail!14257 (t!384413 s1!1971))))))

(declare-fun e!4343853 () Bool)

(assert (=> d!2251253 (= (matchZipper!3498 (derivationStepZipper!3376 lt!2581931 (head!14860 (t!384413 s1!1971))) (tail!14257 (t!384413 s1!1971))) e!4343853)))

(declare-fun b!7244917 () Bool)

(assert (=> b!7244917 (= e!4343853 (nullableZipper!2873 (derivationStepZipper!3376 lt!2581931 (head!14860 (t!384413 s1!1971)))))))

(declare-fun b!7244918 () Bool)

(assert (=> b!7244918 (= e!4343853 (matchZipper!3498 (derivationStepZipper!3376 (derivationStepZipper!3376 lt!2581931 (head!14860 (t!384413 s1!1971))) (head!14860 (tail!14257 (t!384413 s1!1971)))) (tail!14257 (tail!14257 (t!384413 s1!1971)))))))

(assert (= (and d!2251253 c!1345801) b!7244917))

(assert (= (and d!2251253 (not c!1345801)) b!7244918))

(assert (=> d!2251253 m!7920400))

(assert (=> d!2251253 m!7920884))

(assert (=> b!7244917 m!7920442))

(declare-fun m!7921114 () Bool)

(assert (=> b!7244917 m!7921114))

(assert (=> b!7244918 m!7920400))

(assert (=> b!7244918 m!7920888))

(assert (=> b!7244918 m!7920442))

(assert (=> b!7244918 m!7920888))

(declare-fun m!7921116 () Bool)

(assert (=> b!7244918 m!7921116))

(assert (=> b!7244918 m!7920400))

(assert (=> b!7244918 m!7920892))

(assert (=> b!7244918 m!7921116))

(assert (=> b!7244918 m!7920892))

(declare-fun m!7921118 () Bool)

(assert (=> b!7244918 m!7921118))

(assert (=> b!7244484 d!2251253))

(declare-fun bs!1904910 () Bool)

(declare-fun d!2251255 () Bool)

(assert (= bs!1904910 (and d!2251255 d!2251221)))

(declare-fun lambda!442856 () Int)

(assert (=> bs!1904910 (= lambda!442856 lambda!442850)))

(declare-fun bs!1904911 () Bool)

(assert (= bs!1904911 (and d!2251255 d!2251201)))

(assert (=> bs!1904911 (= (= (head!14860 (t!384413 s1!1971)) (head!14860 lt!2581934)) (= lambda!442856 lambda!442847))))

(declare-fun bs!1904912 () Bool)

(assert (= bs!1904912 (and d!2251255 d!2251185)))

(assert (=> bs!1904912 (= (= (head!14860 (t!384413 s1!1971)) (head!14860 lt!2581934)) (= lambda!442856 lambda!442845))))

(declare-fun bs!1904913 () Bool)

(assert (= bs!1904913 (and d!2251255 d!2250929)))

(assert (=> bs!1904913 (= (= (head!14860 (t!384413 s1!1971)) (h!76686 s1!1971)) (= lambda!442856 lambda!442814))))

(declare-fun bs!1904914 () Bool)

(assert (= bs!1904914 (and d!2251255 d!2251157)))

(assert (=> bs!1904914 (= lambda!442856 lambda!442843)))

(declare-fun bs!1904915 () Bool)

(assert (= bs!1904915 (and d!2251255 d!2251091)))

(assert (=> bs!1904915 (= (= (head!14860 (t!384413 s1!1971)) (head!14860 lt!2581934)) (= lambda!442856 lambda!442837))))

(declare-fun bs!1904916 () Bool)

(assert (= bs!1904916 (and d!2251255 d!2251217)))

(assert (=> bs!1904916 (= (= (head!14860 (t!384413 s1!1971)) (head!14860 s1!1971)) (= lambda!442856 lambda!442849))))

(declare-fun bs!1904917 () Bool)

(assert (= bs!1904917 (and d!2251255 d!2250895)))

(assert (=> bs!1904917 (= (= (head!14860 (t!384413 s1!1971)) (h!76686 s1!1971)) (= lambda!442856 lambda!442803))))

(declare-fun bs!1904918 () Bool)

(assert (= bs!1904918 (and d!2251255 d!2251147)))

(assert (=> bs!1904918 (= lambda!442856 lambda!442842)))

(declare-fun bs!1904919 () Bool)

(assert (= bs!1904919 (and d!2251255 b!7244300)))

(assert (=> bs!1904919 (= (= (head!14860 (t!384413 s1!1971)) (h!76686 s1!1971)) (= lambda!442856 lambda!442768))))

(declare-fun bs!1904920 () Bool)

(assert (= bs!1904920 (and d!2251255 d!2251133)))

(assert (=> bs!1904920 (= lambda!442856 lambda!442839)))

(declare-fun bs!1904921 () Bool)

(assert (= bs!1904921 (and d!2251255 d!2251141)))

(assert (=> bs!1904921 (= (= (head!14860 (t!384413 s1!1971)) (head!14860 lt!2581934)) (= lambda!442856 lambda!442840))))

(declare-fun bs!1904922 () Bool)

(assert (= bs!1904922 (and d!2251255 d!2251207)))

(assert (=> bs!1904922 (= (= (head!14860 (t!384413 s1!1971)) (head!14860 s1!1971)) (= lambda!442856 lambda!442848))))

(assert (=> d!2251255 true))

(assert (=> d!2251255 (= (derivationStepZipper!3376 lt!2581931 (head!14860 (t!384413 s1!1971))) (flatMap!2776 lt!2581931 lambda!442856))))

(declare-fun bs!1904923 () Bool)

(assert (= bs!1904923 d!2251255))

(declare-fun m!7921120 () Bool)

(assert (=> bs!1904923 m!7921120))

(assert (=> b!7244484 d!2251255))

(assert (=> b!7244484 d!2251135))

(assert (=> b!7244484 d!2251137))

(assert (=> d!2250927 d!2251179))

(assert (=> d!2250971 d!2251251))

(assert (=> d!2250957 d!2250967))

(declare-fun d!2251257 () Bool)

(assert (=> d!2251257 (= (flatMap!2776 lt!2581946 lambda!442768) (dynLambda!28674 lambda!442768 ct1!232))))

(assert (=> d!2251257 true))

(declare-fun _$13!4565 () Unit!163762)

(assert (=> d!2251257 (= (choose!55866 lt!2581946 ct1!232 lambda!442768) _$13!4565)))

(declare-fun b_lambda!278013 () Bool)

(assert (=> (not b_lambda!278013) (not d!2251257)))

(declare-fun bs!1904924 () Bool)

(assert (= bs!1904924 d!2251257))

(assert (=> bs!1904924 m!7920166))

(assert (=> bs!1904924 m!7920472))

(assert (=> d!2250957 d!2251257))

(declare-fun b!7244921 () Bool)

(declare-fun res!2938836 () Bool)

(declare-fun e!4343854 () Bool)

(assert (=> b!7244921 (=> (not res!2938836) (not e!4343854))))

(declare-fun lt!2582150 () List!70361)

(assert (=> b!7244921 (= res!2938836 (= (size!41655 lt!2582150) (+ (size!41655 (t!384412 (exprs!8028 ct1!232))) (size!41655 (exprs!8028 ct2!328)))))))

(declare-fun b!7244920 () Bool)

(declare-fun e!4343855 () List!70361)

(assert (=> b!7244920 (= e!4343855 (Cons!70237 (h!76685 (t!384412 (exprs!8028 ct1!232))) (++!16460 (t!384412 (t!384412 (exprs!8028 ct1!232))) (exprs!8028 ct2!328))))))

(declare-fun b!7244919 () Bool)

(assert (=> b!7244919 (= e!4343855 (exprs!8028 ct2!328))))

(declare-fun d!2251259 () Bool)

(assert (=> d!2251259 e!4343854))

(declare-fun res!2938837 () Bool)

(assert (=> d!2251259 (=> (not res!2938837) (not e!4343854))))

(assert (=> d!2251259 (= res!2938837 (= (content!14528 lt!2582150) (set.union (content!14528 (t!384412 (exprs!8028 ct1!232))) (content!14528 (exprs!8028 ct2!328)))))))

(assert (=> d!2251259 (= lt!2582150 e!4343855)))

(declare-fun c!1345802 () Bool)

(assert (=> d!2251259 (= c!1345802 (is-Nil!70237 (t!384412 (exprs!8028 ct1!232))))))

(assert (=> d!2251259 (= (++!16460 (t!384412 (exprs!8028 ct1!232)) (exprs!8028 ct2!328)) lt!2582150)))

(declare-fun b!7244922 () Bool)

(assert (=> b!7244922 (= e!4343854 (or (not (= (exprs!8028 ct2!328) Nil!70237)) (= lt!2582150 (t!384412 (exprs!8028 ct1!232)))))))

(assert (= (and d!2251259 c!1345802) b!7244919))

(assert (= (and d!2251259 (not c!1345802)) b!7244920))

(assert (= (and d!2251259 res!2938837) b!7244921))

(assert (= (and b!7244921 res!2938836) b!7244922))

(declare-fun m!7921122 () Bool)

(assert (=> b!7244921 m!7921122))

(assert (=> b!7244921 m!7920826))

(assert (=> b!7244921 m!7920342))

(declare-fun m!7921124 () Bool)

(assert (=> b!7244920 m!7921124))

(declare-fun m!7921126 () Bool)

(assert (=> d!2251259 m!7921126))

(assert (=> d!2251259 m!7920968))

(assert (=> d!2251259 m!7920350))

(assert (=> b!7244511 d!2251259))

(assert (=> bs!1904701 d!2250931))

(declare-fun d!2251261 () Bool)

(declare-fun lt!2582153 () Int)

(assert (=> d!2251261 (>= lt!2582153 0)))

(declare-fun e!4343858 () Int)

(assert (=> d!2251261 (= lt!2582153 e!4343858)))

(declare-fun c!1345805 () Bool)

(assert (=> d!2251261 (= c!1345805 (is-Nil!70238 lt!2582094))))

(assert (=> d!2251261 (= (size!41656 lt!2582094) lt!2582153)))

(declare-fun b!7244927 () Bool)

(assert (=> b!7244927 (= e!4343858 0)))

(declare-fun b!7244928 () Bool)

(assert (=> b!7244928 (= e!4343858 (+ 1 (size!41656 (t!384413 lt!2582094))))))

(assert (= (and d!2251261 c!1345805) b!7244927))

(assert (= (and d!2251261 (not c!1345805)) b!7244928))

(declare-fun m!7921128 () Bool)

(assert (=> b!7244928 m!7921128))

(assert (=> b!7244430 d!2251261))

(declare-fun d!2251263 () Bool)

(declare-fun lt!2582154 () Int)

(assert (=> d!2251263 (>= lt!2582154 0)))

(declare-fun e!4343859 () Int)

(assert (=> d!2251263 (= lt!2582154 e!4343859)))

(declare-fun c!1345806 () Bool)

(assert (=> d!2251263 (= c!1345806 (is-Nil!70238 (t!384413 s1!1971)))))

(assert (=> d!2251263 (= (size!41656 (t!384413 s1!1971)) lt!2582154)))

(declare-fun b!7244929 () Bool)

(assert (=> b!7244929 (= e!4343859 0)))

(declare-fun b!7244930 () Bool)

(assert (=> b!7244930 (= e!4343859 (+ 1 (size!41656 (t!384413 (t!384413 s1!1971)))))))

(assert (= (and d!2251263 c!1345806) b!7244929))

(assert (= (and d!2251263 (not c!1345806)) b!7244930))

(assert (=> b!7244930 m!7920868))

(assert (=> b!7244430 d!2251263))

(declare-fun d!2251265 () Bool)

(declare-fun lt!2582155 () Int)

(assert (=> d!2251265 (>= lt!2582155 0)))

(declare-fun e!4343860 () Int)

(assert (=> d!2251265 (= lt!2582155 e!4343860)))

(declare-fun c!1345807 () Bool)

(assert (=> d!2251265 (= c!1345807 (is-Nil!70238 s2!1849))))

(assert (=> d!2251265 (= (size!41656 s2!1849) lt!2582155)))

(declare-fun b!7244931 () Bool)

(assert (=> b!7244931 (= e!4343860 0)))

(declare-fun b!7244932 () Bool)

(assert (=> b!7244932 (= e!4343860 (+ 1 (size!41656 (t!384413 s2!1849))))))

(assert (= (and d!2251265 c!1345807) b!7244931))

(assert (= (and d!2251265 (not c!1345807)) b!7244932))

(declare-fun m!7921130 () Bool)

(assert (=> b!7244932 m!7921130))

(assert (=> b!7244430 d!2251265))

(declare-fun b!7244933 () Bool)

(declare-fun e!4343864 () (Set Context!15056))

(declare-fun call!659858 () (Set Context!15056))

(declare-fun call!659860 () (Set Context!15056))

(assert (=> b!7244933 (= e!4343864 (set.union call!659858 call!659860))))

(declare-fun b!7244934 () Bool)

(declare-fun c!1345809 () Bool)

(assert (=> b!7244934 (= c!1345809 (is-Star!18588 (ite c!1345653 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))))))

(declare-fun e!4343861 () (Set Context!15056))

(declare-fun e!4343865 () (Set Context!15056))

(assert (=> b!7244934 (= e!4343861 e!4343865)))

(declare-fun b!7244935 () Bool)

(declare-fun e!4343866 () (Set Context!15056))

(assert (=> b!7244935 (= e!4343866 e!4343864)))

(declare-fun c!1345812 () Bool)

(assert (=> b!7244935 (= c!1345812 (is-Union!18588 (ite c!1345653 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))))))

(declare-fun bm!659850 () Bool)

(declare-fun call!659859 () List!70361)

(declare-fun call!659856 () List!70361)

(assert (=> bm!659850 (= call!659859 call!659856)))

(declare-fun b!7244936 () Bool)

(declare-fun e!4343862 () (Set Context!15056))

(assert (=> b!7244936 (= e!4343862 e!4343861)))

(declare-fun c!1345808 () Bool)

(assert (=> b!7244936 (= c!1345808 (is-Concat!27433 (ite c!1345653 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))))))

(declare-fun c!1345811 () Bool)

(declare-fun bm!659851 () Bool)

(assert (=> bm!659851 (= call!659856 ($colon$colon!2901 (exprs!8028 (ite c!1345653 lt!2581933 (Context!15057 call!659768))) (ite (or c!1345811 c!1345808) (regTwo!37688 (ite c!1345653 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))) (ite c!1345653 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232)))))))))

(declare-fun b!7244937 () Bool)

(declare-fun e!4343863 () Bool)

(assert (=> b!7244937 (= c!1345811 e!4343863)))

(declare-fun res!2938838 () Bool)

(assert (=> b!7244937 (=> (not res!2938838) (not e!4343863))))

(assert (=> b!7244937 (= res!2938838 (is-Concat!27433 (ite c!1345653 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))))))

(assert (=> b!7244937 (= e!4343864 e!4343862)))

(declare-fun b!7244938 () Bool)

(assert (=> b!7244938 (= e!4343865 (as set.empty (Set Context!15056)))))

(declare-fun bm!659852 () Bool)

(declare-fun call!659855 () (Set Context!15056))

(declare-fun call!659857 () (Set Context!15056))

(assert (=> bm!659852 (= call!659855 call!659857)))

(declare-fun bm!659853 () Bool)

(assert (=> bm!659853 (= call!659857 call!659858)))

(declare-fun c!1345810 () Bool)

(declare-fun d!2251267 () Bool)

(assert (=> d!2251267 (= c!1345810 (and (is-ElementMatch!18588 (ite c!1345653 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))) (= (c!1345589 (ite c!1345653 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))) (h!76686 s1!1971))))))

(assert (=> d!2251267 (= (derivationStepZipperDown!2612 (ite c!1345653 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232)))) (ite c!1345653 lt!2581933 (Context!15057 call!659768)) (h!76686 s1!1971)) e!4343866)))

(declare-fun b!7244939 () Bool)

(assert (=> b!7244939 (= e!4343861 call!659855)))

(declare-fun b!7244940 () Bool)

(assert (=> b!7244940 (= e!4343863 (nullable!7881 (regOne!37688 (ite c!1345653 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232)))))))))

(declare-fun bm!659854 () Bool)

(assert (=> bm!659854 (= call!659858 (derivationStepZipperDown!2612 (ite c!1345812 (regOne!37689 (ite c!1345653 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))) (ite c!1345811 (regTwo!37688 (ite c!1345653 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))) (ite c!1345808 (regOne!37688 (ite c!1345653 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))) (reg!18917 (ite c!1345653 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232)))))))) (ite (or c!1345812 c!1345811) (ite c!1345653 lt!2581933 (Context!15057 call!659768)) (Context!15057 call!659859)) (h!76686 s1!1971)))))

(declare-fun b!7244941 () Bool)

(assert (=> b!7244941 (= e!4343866 (set.insert (ite c!1345653 lt!2581933 (Context!15057 call!659768)) (as set.empty (Set Context!15056))))))

(declare-fun b!7244942 () Bool)

(assert (=> b!7244942 (= e!4343865 call!659855)))

(declare-fun b!7244943 () Bool)

(assert (=> b!7244943 (= e!4343862 (set.union call!659860 call!659857))))

(declare-fun bm!659855 () Bool)

(assert (=> bm!659855 (= call!659860 (derivationStepZipperDown!2612 (ite c!1345812 (regTwo!37689 (ite c!1345653 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232))))) (regOne!37688 (ite c!1345653 (regTwo!37689 (h!76685 (exprs!8028 ct1!232))) (regOne!37688 (h!76685 (exprs!8028 ct1!232)))))) (ite c!1345812 (ite c!1345653 lt!2581933 (Context!15057 call!659768)) (Context!15057 call!659856)) (h!76686 s1!1971)))))

(assert (= (and d!2251267 c!1345810) b!7244941))

(assert (= (and d!2251267 (not c!1345810)) b!7244935))

(assert (= (and b!7244935 c!1345812) b!7244933))

(assert (= (and b!7244935 (not c!1345812)) b!7244937))

(assert (= (and b!7244937 res!2938838) b!7244940))

(assert (= (and b!7244937 c!1345811) b!7244943))

(assert (= (and b!7244937 (not c!1345811)) b!7244936))

(assert (= (and b!7244936 c!1345808) b!7244939))

(assert (= (and b!7244936 (not c!1345808)) b!7244934))

(assert (= (and b!7244934 c!1345809) b!7244942))

(assert (= (and b!7244934 (not c!1345809)) b!7244938))

(assert (= (or b!7244939 b!7244942) bm!659850))

(assert (= (or b!7244939 b!7244942) bm!659852))

(assert (= (or b!7244943 bm!659850) bm!659851))

(assert (= (or b!7244943 bm!659852) bm!659853))

(assert (= (or b!7244933 b!7244943) bm!659855))

(assert (= (or b!7244933 bm!659853) bm!659854))

(declare-fun m!7921132 () Bool)

(assert (=> bm!659855 m!7921132))

(declare-fun m!7921134 () Bool)

(assert (=> bm!659854 m!7921134))

(declare-fun m!7921136 () Bool)

(assert (=> b!7244941 m!7921136))

(declare-fun m!7921138 () Bool)

(assert (=> b!7244940 m!7921138))

(declare-fun m!7921140 () Bool)

(assert (=> bm!659851 m!7921140))

(assert (=> bm!659767 d!2251267))

(assert (=> d!2250943 d!2251179))

(declare-fun d!2251269 () Bool)

(declare-fun c!1345813 () Bool)

(assert (=> d!2251269 (= c!1345813 (isEmpty!40464 (++!16461 (t!384413 s1!1971) s2!1849)))))

(declare-fun e!4343867 () Bool)

(assert (=> d!2251269 (= (matchZipper!3498 (set.insert (Context!15057 (++!16460 (exprs!8028 lt!2581930) (exprs!8028 ct2!328))) (as set.empty (Set Context!15056))) (++!16461 (t!384413 s1!1971) s2!1849)) e!4343867)))

(declare-fun b!7244944 () Bool)

(assert (=> b!7244944 (= e!4343867 (nullableZipper!2873 (set.insert (Context!15057 (++!16460 (exprs!8028 lt!2581930) (exprs!8028 ct2!328))) (as set.empty (Set Context!15056)))))))

(declare-fun b!7244945 () Bool)

(assert (=> b!7244945 (= e!4343867 (matchZipper!3498 (derivationStepZipper!3376 (set.insert (Context!15057 (++!16460 (exprs!8028 lt!2581930) (exprs!8028 ct2!328))) (as set.empty (Set Context!15056))) (head!14860 (++!16461 (t!384413 s1!1971) s2!1849))) (tail!14257 (++!16461 (t!384413 s1!1971) s2!1849))))))

(assert (= (and d!2251269 c!1345813) b!7244944))

(assert (= (and d!2251269 (not c!1345813)) b!7244945))

(assert (=> d!2251269 m!7920154))

(declare-fun m!7921142 () Bool)

(assert (=> d!2251269 m!7921142))

(assert (=> b!7244944 m!7920316))

(declare-fun m!7921144 () Bool)

(assert (=> b!7244944 m!7921144))

(assert (=> b!7244945 m!7920154))

(declare-fun m!7921146 () Bool)

(assert (=> b!7244945 m!7921146))

(assert (=> b!7244945 m!7920316))

(assert (=> b!7244945 m!7921146))

(declare-fun m!7921148 () Bool)

(assert (=> b!7244945 m!7921148))

(assert (=> b!7244945 m!7920154))

(declare-fun m!7921150 () Bool)

(assert (=> b!7244945 m!7921150))

(assert (=> b!7244945 m!7921148))

(assert (=> b!7244945 m!7921150))

(declare-fun m!7921152 () Bool)

(assert (=> b!7244945 m!7921152))

(assert (=> d!2250907 d!2251269))

(declare-fun d!2251271 () Bool)

(assert (=> d!2251271 (forall!17429 (++!16460 (exprs!8028 lt!2581930) (exprs!8028 ct2!328)) lambda!442809)))

(declare-fun lt!2582156 () Unit!163762)

(assert (=> d!2251271 (= lt!2582156 (choose!55863 (exprs!8028 lt!2581930) (exprs!8028 ct2!328) lambda!442809))))

(assert (=> d!2251271 (forall!17429 (exprs!8028 lt!2581930) lambda!442809)))

(assert (=> d!2251271 (= (lemmaConcatPreservesForall!1397 (exprs!8028 lt!2581930) (exprs!8028 ct2!328) lambda!442809) lt!2582156)))

(declare-fun bs!1904925 () Bool)

(assert (= bs!1904925 d!2251271))

(assert (=> bs!1904925 m!7920152))

(assert (=> bs!1904925 m!7920152))

(declare-fun m!7921154 () Bool)

(assert (=> bs!1904925 m!7921154))

(declare-fun m!7921156 () Bool)

(assert (=> bs!1904925 m!7921156))

(declare-fun m!7921158 () Bool)

(assert (=> bs!1904925 m!7921158))

(assert (=> d!2250907 d!2251271))

(assert (=> d!2250907 d!2250913))

(assert (=> d!2250907 d!2250915))

(declare-fun d!2251273 () Bool)

(declare-fun c!1345814 () Bool)

(assert (=> d!2251273 (= c!1345814 (isEmpty!40464 (t!384413 s1!1971)))))

(declare-fun e!4343868 () Bool)

(assert (=> d!2251273 (= (matchZipper!3498 (set.insert lt!2581930 (as set.empty (Set Context!15056))) (t!384413 s1!1971)) e!4343868)))

(declare-fun b!7244946 () Bool)

(assert (=> b!7244946 (= e!4343868 (nullableZipper!2873 (set.insert lt!2581930 (as set.empty (Set Context!15056)))))))

(declare-fun b!7244947 () Bool)

(assert (=> b!7244947 (= e!4343868 (matchZipper!3498 (derivationStepZipper!3376 (set.insert lt!2581930 (as set.empty (Set Context!15056))) (head!14860 (t!384413 s1!1971))) (tail!14257 (t!384413 s1!1971))))))

(assert (= (and d!2251273 c!1345814) b!7244946))

(assert (= (and d!2251273 (not c!1345814)) b!7244947))

(assert (=> d!2251273 m!7920392))

(assert (=> b!7244946 m!7920314))

(declare-fun m!7921160 () Bool)

(assert (=> b!7244946 m!7921160))

(assert (=> b!7244947 m!7920396))

(assert (=> b!7244947 m!7920314))

(assert (=> b!7244947 m!7920396))

(declare-fun m!7921162 () Bool)

(assert (=> b!7244947 m!7921162))

(assert (=> b!7244947 m!7920400))

(assert (=> b!7244947 m!7921162))

(assert (=> b!7244947 m!7920400))

(declare-fun m!7921164 () Bool)

(assert (=> b!7244947 m!7921164))

(assert (=> d!2250907 d!2251273))

(declare-fun bs!1904926 () Bool)

(declare-fun d!2251275 () Bool)

(assert (= bs!1904926 (and d!2251275 b!7244301)))

(declare-fun lambda!442859 () Int)

(assert (=> bs!1904926 (= lambda!442859 lambda!442766)))

(declare-fun bs!1904927 () Bool)

(assert (= bs!1904927 (and d!2251275 d!2250907)))

(assert (=> bs!1904927 (= lambda!442859 lambda!442809)))

(declare-fun bs!1904928 () Bool)

(assert (= bs!1904928 (and d!2251275 d!2250923)))

(assert (=> bs!1904928 (= lambda!442859 lambda!442812)))

(declare-fun bs!1904929 () Bool)

(assert (= bs!1904929 (and d!2251275 d!2250925)))

(assert (=> bs!1904929 (= lambda!442859 lambda!442813)))

(assert (=> d!2251275 (matchZipper!3498 (set.insert (Context!15057 (++!16460 (exprs!8028 lt!2581930) (exprs!8028 ct2!328))) (as set.empty (Set Context!15056))) (++!16461 (t!384413 s1!1971) s2!1849))))

(declare-fun lt!2582159 () Unit!163762)

(assert (=> d!2251275 (= lt!2582159 (lemmaConcatPreservesForall!1397 (exprs!8028 lt!2581930) (exprs!8028 ct2!328) lambda!442859))))

(assert (=> d!2251275 true))

(declare-fun _$56!491 () Unit!163762)

(assert (=> d!2251275 (= (choose!55864 lt!2581930 ct2!328 (t!384413 s1!1971) s2!1849) _$56!491)))

(declare-fun bs!1904930 () Bool)

(assert (= bs!1904930 d!2251275))

(declare-fun m!7921166 () Bool)

(assert (=> bs!1904930 m!7921166))

(assert (=> bs!1904930 m!7920154))

(assert (=> bs!1904930 m!7920316))

(assert (=> bs!1904930 m!7920154))

(assert (=> bs!1904930 m!7920320))

(assert (=> bs!1904930 m!7920316))

(assert (=> bs!1904930 m!7920152))

(assert (=> d!2250907 d!2251275))

(declare-fun bs!1904931 () Bool)

(declare-fun d!2251277 () Bool)

(assert (= bs!1904931 (and d!2251277 d!2251189)))

(declare-fun lambda!442860 () Int)

(assert (=> bs!1904931 (not (= lambda!442860 lambda!442846))))

(declare-fun bs!1904932 () Bool)

(assert (= bs!1904932 (and d!2251277 d!2251087)))

(assert (=> bs!1904932 (= lambda!442860 lambda!442836)))

(declare-fun bs!1904933 () Bool)

(assert (= bs!1904933 (and d!2251277 d!2250897)))

(assert (=> bs!1904933 (not (= lambda!442860 lambda!442806))))

(declare-fun bs!1904934 () Bool)

(assert (= bs!1904934 (and d!2251277 d!2251143)))

(assert (=> bs!1904934 (= lambda!442860 lambda!442841)))

(declare-fun bs!1904935 () Bool)

(assert (= bs!1904935 (and d!2251277 d!2251159)))

(assert (=> bs!1904935 (= lambda!442860 lambda!442844)))

(declare-fun bs!1904936 () Bool)

(assert (= bs!1904936 (and d!2251277 d!2251227)))

(assert (=> bs!1904936 (not (= lambda!442860 lambda!442854))))

(declare-fun bs!1904937 () Bool)

(assert (= bs!1904937 (and d!2251277 d!2251225)))

(assert (=> bs!1904937 (not (= lambda!442860 lambda!442851))))

(declare-fun bs!1904938 () Bool)

(assert (= bs!1904938 (and d!2251277 d!2251079)))

(assert (=> bs!1904938 (= lambda!442860 lambda!442834)))

(declare-fun bs!1904939 () Bool)

(assert (= bs!1904939 (and d!2251277 d!2251081)))

(assert (=> bs!1904939 (= lambda!442860 lambda!442835)))

(declare-fun bs!1904940 () Bool)

(assert (= bs!1904940 (and d!2251277 d!2251105)))

(assert (=> bs!1904940 (= lambda!442860 lambda!442838)))

(declare-fun bs!1904941 () Bool)

(assert (= bs!1904941 (and d!2251277 d!2251243)))

(assert (=> bs!1904941 (= lambda!442860 lambda!442855)))

(declare-fun bs!1904942 () Bool)

(assert (= bs!1904942 (and d!2251277 b!7244303)))

(assert (=> bs!1904942 (not (= lambda!442860 lambda!442767))))

(declare-fun bs!1904943 () Bool)

(assert (= bs!1904943 (and d!2251277 d!2250889)))

(assert (=> bs!1904943 (not (= lambda!442860 lambda!442800))))

(assert (=> d!2251277 (= (nullableZipper!2873 lt!2581944) (exists!4295 lt!2581944 lambda!442860))))

(declare-fun bs!1904944 () Bool)

(assert (= bs!1904944 d!2251277))

(declare-fun m!7921168 () Bool)

(assert (=> bs!1904944 m!7921168))

(assert (=> b!7244514 d!2251277))

(declare-fun d!2251279 () Bool)

(declare-fun c!1345815 () Bool)

(assert (=> d!2251279 (= c!1345815 (is-Nil!70239 lt!2582076))))

(declare-fun e!4343869 () (Set Context!15056))

(assert (=> d!2251279 (= (content!14527 lt!2582076) e!4343869)))

(declare-fun b!7244948 () Bool)

(assert (=> b!7244948 (= e!4343869 (as set.empty (Set Context!15056)))))

(declare-fun b!7244949 () Bool)

(assert (=> b!7244949 (= e!4343869 (set.union (set.insert (h!76687 lt!2582076) (as set.empty (Set Context!15056))) (content!14527 (t!384414 lt!2582076))))))

(assert (= (and d!2251279 c!1345815) b!7244948))

(assert (= (and d!2251279 (not c!1345815)) b!7244949))

(declare-fun m!7921170 () Bool)

(assert (=> b!7244949 m!7921170))

(declare-fun m!7921172 () Bool)

(assert (=> b!7244949 m!7921172))

(assert (=> b!7244374 d!2251279))

(declare-fun bs!1904945 () Bool)

(declare-fun d!2251281 () Bool)

(assert (= bs!1904945 (and d!2251281 d!2251277)))

(declare-fun lambda!442861 () Int)

(assert (=> bs!1904945 (= lambda!442861 lambda!442860)))

(declare-fun bs!1904946 () Bool)

(assert (= bs!1904946 (and d!2251281 d!2251189)))

(assert (=> bs!1904946 (not (= lambda!442861 lambda!442846))))

(declare-fun bs!1904947 () Bool)

(assert (= bs!1904947 (and d!2251281 d!2251087)))

(assert (=> bs!1904947 (= lambda!442861 lambda!442836)))

(declare-fun bs!1904948 () Bool)

(assert (= bs!1904948 (and d!2251281 d!2250897)))

(assert (=> bs!1904948 (not (= lambda!442861 lambda!442806))))

(declare-fun bs!1904949 () Bool)

(assert (= bs!1904949 (and d!2251281 d!2251143)))

(assert (=> bs!1904949 (= lambda!442861 lambda!442841)))

(declare-fun bs!1904950 () Bool)

(assert (= bs!1904950 (and d!2251281 d!2251159)))

(assert (=> bs!1904950 (= lambda!442861 lambda!442844)))

(declare-fun bs!1904951 () Bool)

(assert (= bs!1904951 (and d!2251281 d!2251227)))

(assert (=> bs!1904951 (not (= lambda!442861 lambda!442854))))

(declare-fun bs!1904952 () Bool)

(assert (= bs!1904952 (and d!2251281 d!2251225)))

(assert (=> bs!1904952 (not (= lambda!442861 lambda!442851))))

(declare-fun bs!1904953 () Bool)

(assert (= bs!1904953 (and d!2251281 d!2251079)))

(assert (=> bs!1904953 (= lambda!442861 lambda!442834)))

(declare-fun bs!1904954 () Bool)

(assert (= bs!1904954 (and d!2251281 d!2251081)))

(assert (=> bs!1904954 (= lambda!442861 lambda!442835)))

(declare-fun bs!1904955 () Bool)

(assert (= bs!1904955 (and d!2251281 d!2251105)))

(assert (=> bs!1904955 (= lambda!442861 lambda!442838)))

(declare-fun bs!1904956 () Bool)

(assert (= bs!1904956 (and d!2251281 d!2251243)))

(assert (=> bs!1904956 (= lambda!442861 lambda!442855)))

(declare-fun bs!1904957 () Bool)

(assert (= bs!1904957 (and d!2251281 b!7244303)))

(assert (=> bs!1904957 (not (= lambda!442861 lambda!442767))))

(declare-fun bs!1904958 () Bool)

(assert (= bs!1904958 (and d!2251281 d!2250889)))

(assert (=> bs!1904958 (not (= lambda!442861 lambda!442800))))

(assert (=> d!2251281 (= (nullableZipper!2873 lt!2581955) (exists!4295 lt!2581955 lambda!442861))))

(declare-fun bs!1904959 () Bool)

(assert (= bs!1904959 d!2251281))

(declare-fun m!7921174 () Bool)

(assert (=> bs!1904959 m!7921174))

(assert (=> b!7244488 d!2251281))

(declare-fun d!2251283 () Bool)

(declare-fun c!1345816 () Bool)

(assert (=> d!2251283 (= c!1345816 (isEmpty!40464 (tail!14257 s2!1849)))))

(declare-fun e!4343870 () Bool)

(assert (=> d!2251283 (= (matchZipper!3498 (derivationStepZipper!3376 (set.insert ct2!328 (as set.empty (Set Context!15056))) (head!14860 s2!1849)) (tail!14257 s2!1849)) e!4343870)))

(declare-fun b!7244950 () Bool)

(assert (=> b!7244950 (= e!4343870 (nullableZipper!2873 (derivationStepZipper!3376 (set.insert ct2!328 (as set.empty (Set Context!15056))) (head!14860 s2!1849))))))

(declare-fun b!7244951 () Bool)

(assert (=> b!7244951 (= e!4343870 (matchZipper!3498 (derivationStepZipper!3376 (derivationStepZipper!3376 (set.insert ct2!328 (as set.empty (Set Context!15056))) (head!14860 s2!1849)) (head!14860 (tail!14257 s2!1849))) (tail!14257 (tail!14257 s2!1849))))))

(assert (= (and d!2251283 c!1345816) b!7244950))

(assert (= (and d!2251283 (not c!1345816)) b!7244951))

(assert (=> d!2251283 m!7920430))

(declare-fun m!7921176 () Bool)

(assert (=> d!2251283 m!7921176))

(assert (=> b!7244950 m!7920428))

(declare-fun m!7921178 () Bool)

(assert (=> b!7244950 m!7921178))

(assert (=> b!7244951 m!7920430))

(declare-fun m!7921180 () Bool)

(assert (=> b!7244951 m!7921180))

(assert (=> b!7244951 m!7920428))

(assert (=> b!7244951 m!7921180))

(declare-fun m!7921182 () Bool)

(assert (=> b!7244951 m!7921182))

(assert (=> b!7244951 m!7920430))

(declare-fun m!7921184 () Bool)

(assert (=> b!7244951 m!7921184))

(assert (=> b!7244951 m!7921182))

(assert (=> b!7244951 m!7921184))

(declare-fun m!7921186 () Bool)

(assert (=> b!7244951 m!7921186))

(assert (=> b!7244480 d!2251283))

(declare-fun bs!1904960 () Bool)

(declare-fun d!2251285 () Bool)

(assert (= bs!1904960 (and d!2251285 d!2251221)))

(declare-fun lambda!442862 () Int)

(assert (=> bs!1904960 (= (= (head!14860 s2!1849) (head!14860 (t!384413 s1!1971))) (= lambda!442862 lambda!442850))))

(declare-fun bs!1904961 () Bool)

(assert (= bs!1904961 (and d!2251285 d!2251201)))

(assert (=> bs!1904961 (= (= (head!14860 s2!1849) (head!14860 lt!2581934)) (= lambda!442862 lambda!442847))))

(declare-fun bs!1904962 () Bool)

(assert (= bs!1904962 (and d!2251285 d!2251185)))

(assert (=> bs!1904962 (= (= (head!14860 s2!1849) (head!14860 lt!2581934)) (= lambda!442862 lambda!442845))))

(declare-fun bs!1904963 () Bool)

(assert (= bs!1904963 (and d!2251285 d!2250929)))

(assert (=> bs!1904963 (= (= (head!14860 s2!1849) (h!76686 s1!1971)) (= lambda!442862 lambda!442814))))

(declare-fun bs!1904964 () Bool)

(assert (= bs!1904964 (and d!2251285 d!2251157)))

(assert (=> bs!1904964 (= (= (head!14860 s2!1849) (head!14860 (t!384413 s1!1971))) (= lambda!442862 lambda!442843))))

(declare-fun bs!1904965 () Bool)

(assert (= bs!1904965 (and d!2251285 d!2251255)))

(assert (=> bs!1904965 (= (= (head!14860 s2!1849) (head!14860 (t!384413 s1!1971))) (= lambda!442862 lambda!442856))))

(declare-fun bs!1904966 () Bool)

(assert (= bs!1904966 (and d!2251285 d!2251091)))

(assert (=> bs!1904966 (= (= (head!14860 s2!1849) (head!14860 lt!2581934)) (= lambda!442862 lambda!442837))))

(declare-fun bs!1904967 () Bool)

(assert (= bs!1904967 (and d!2251285 d!2251217)))

(assert (=> bs!1904967 (= (= (head!14860 s2!1849) (head!14860 s1!1971)) (= lambda!442862 lambda!442849))))

(declare-fun bs!1904968 () Bool)

(assert (= bs!1904968 (and d!2251285 d!2250895)))

(assert (=> bs!1904968 (= (= (head!14860 s2!1849) (h!76686 s1!1971)) (= lambda!442862 lambda!442803))))

(declare-fun bs!1904969 () Bool)

(assert (= bs!1904969 (and d!2251285 d!2251147)))

(assert (=> bs!1904969 (= (= (head!14860 s2!1849) (head!14860 (t!384413 s1!1971))) (= lambda!442862 lambda!442842))))

(declare-fun bs!1904970 () Bool)

(assert (= bs!1904970 (and d!2251285 b!7244300)))

(assert (=> bs!1904970 (= (= (head!14860 s2!1849) (h!76686 s1!1971)) (= lambda!442862 lambda!442768))))

(declare-fun bs!1904971 () Bool)

(assert (= bs!1904971 (and d!2251285 d!2251133)))

(assert (=> bs!1904971 (= (= (head!14860 s2!1849) (head!14860 (t!384413 s1!1971))) (= lambda!442862 lambda!442839))))

(declare-fun bs!1904972 () Bool)

(assert (= bs!1904972 (and d!2251285 d!2251141)))

(assert (=> bs!1904972 (= (= (head!14860 s2!1849) (head!14860 lt!2581934)) (= lambda!442862 lambda!442840))))

(declare-fun bs!1904973 () Bool)

(assert (= bs!1904973 (and d!2251285 d!2251207)))

(assert (=> bs!1904973 (= (= (head!14860 s2!1849) (head!14860 s1!1971)) (= lambda!442862 lambda!442848))))

(assert (=> d!2251285 true))

(assert (=> d!2251285 (= (derivationStepZipper!3376 (set.insert ct2!328 (as set.empty (Set Context!15056))) (head!14860 s2!1849)) (flatMap!2776 (set.insert ct2!328 (as set.empty (Set Context!15056))) lambda!442862))))

(declare-fun bs!1904974 () Bool)

(assert (= bs!1904974 d!2251285))

(assert (=> bs!1904974 m!7920096))

(declare-fun m!7921188 () Bool)

(assert (=> bs!1904974 m!7921188))

(assert (=> b!7244480 d!2251285))

(declare-fun d!2251287 () Bool)

(assert (=> d!2251287 (= (head!14860 s2!1849) (h!76686 s2!1849))))

(assert (=> b!7244480 d!2251287))

(declare-fun d!2251289 () Bool)

(assert (=> d!2251289 (= (tail!14257 s2!1849) (t!384413 s2!1849))))

(assert (=> b!7244480 d!2251289))

(assert (=> d!2250975 d!2251179))

(declare-fun b!7244964 () Bool)

(declare-fun e!4343879 () Bool)

(assert (=> b!7244964 (= e!4343879 (dynLambda!28673 lambda!442767 (h!76687 (toList!11434 lt!2581921))))))

(declare-fun b!7244965 () Bool)

(declare-fun e!4343882 () Context!15056)

(assert (=> b!7244965 (= e!4343882 (getWitness!2141 (t!384414 (toList!11434 lt!2581921)) lambda!442767))))

(declare-fun b!7244966 () Bool)

(declare-fun e!4343880 () Bool)

(declare-fun lt!2582164 () Context!15056)

(assert (=> b!7244966 (= e!4343880 (contains!20739 (toList!11434 lt!2581921) lt!2582164))))

(declare-fun d!2251291 () Bool)

(assert (=> d!2251291 e!4343880))

(declare-fun res!2938844 () Bool)

(assert (=> d!2251291 (=> (not res!2938844) (not e!4343880))))

(assert (=> d!2251291 (= res!2938844 (dynLambda!28673 lambda!442767 lt!2582164))))

(declare-fun e!4343881 () Context!15056)

(assert (=> d!2251291 (= lt!2582164 e!4343881)))

(declare-fun c!1345821 () Bool)

(assert (=> d!2251291 (= c!1345821 e!4343879)))

(declare-fun res!2938843 () Bool)

(assert (=> d!2251291 (=> (not res!2938843) (not e!4343879))))

(assert (=> d!2251291 (= res!2938843 (is-Cons!70239 (toList!11434 lt!2581921)))))

(assert (=> d!2251291 (exists!4296 (toList!11434 lt!2581921) lambda!442767)))

(assert (=> d!2251291 (= (getWitness!2141 (toList!11434 lt!2581921) lambda!442767) lt!2582164)))

(declare-fun b!7244967 () Bool)

(declare-fun lt!2582165 () Unit!163762)

(declare-fun Unit!163766 () Unit!163762)

(assert (=> b!7244967 (= lt!2582165 Unit!163766)))

(assert (=> b!7244967 false))

(declare-fun head!14862 (List!70363) Context!15056)

(assert (=> b!7244967 (= e!4343882 (head!14862 (toList!11434 lt!2581921)))))

(declare-fun b!7244968 () Bool)

(assert (=> b!7244968 (= e!4343881 e!4343882)))

(declare-fun c!1345822 () Bool)

(assert (=> b!7244968 (= c!1345822 (is-Cons!70239 (toList!11434 lt!2581921)))))

(declare-fun b!7244969 () Bool)

(assert (=> b!7244969 (= e!4343881 (h!76687 (toList!11434 lt!2581921)))))

(assert (= (and d!2251291 res!2938843) b!7244964))

(assert (= (and d!2251291 c!1345821) b!7244969))

(assert (= (and d!2251291 (not c!1345821)) b!7244968))

(assert (= (and b!7244968 c!1345822) b!7244965))

(assert (= (and b!7244968 (not c!1345822)) b!7244967))

(assert (= (and d!2251291 res!2938844) b!7244966))

(declare-fun b_lambda!278015 () Bool)

(assert (=> (not b_lambda!278015) (not b!7244964)))

(declare-fun b_lambda!278017 () Bool)

(assert (=> (not b_lambda!278017) (not d!2251291)))

(assert (=> b!7244967 m!7920088))

(declare-fun m!7921190 () Bool)

(assert (=> b!7244967 m!7921190))

(declare-fun m!7921192 () Bool)

(assert (=> d!2251291 m!7921192))

(assert (=> d!2251291 m!7920088))

(assert (=> d!2251291 m!7920276))

(declare-fun m!7921194 () Bool)

(assert (=> b!7244965 m!7921194))

(assert (=> b!7244966 m!7920088))

(declare-fun m!7921196 () Bool)

(assert (=> b!7244966 m!7921196))

(declare-fun m!7921198 () Bool)

(assert (=> b!7244964 m!7921198))

(assert (=> d!2250905 d!2251291))

(assert (=> d!2250905 d!2250893))

(assert (=> d!2250905 d!2250891))

(declare-fun d!2251293 () Bool)

(declare-fun res!2938845 () Bool)

(declare-fun e!4343883 () Bool)

(assert (=> d!2251293 (=> res!2938845 e!4343883)))

(assert (=> d!2251293 (= res!2938845 (is-Nil!70237 (exprs!8028 ct2!328)))))

(assert (=> d!2251293 (= (forall!17429 (exprs!8028 ct2!328) lambda!442813) e!4343883)))

(declare-fun b!7244970 () Bool)

(declare-fun e!4343884 () Bool)

(assert (=> b!7244970 (= e!4343883 e!4343884)))

(declare-fun res!2938846 () Bool)

(assert (=> b!7244970 (=> (not res!2938846) (not e!4343884))))

(assert (=> b!7244970 (= res!2938846 (dynLambda!28678 lambda!442813 (h!76685 (exprs!8028 ct2!328))))))

(declare-fun b!7244971 () Bool)

(assert (=> b!7244971 (= e!4343884 (forall!17429 (t!384412 (exprs!8028 ct2!328)) lambda!442813))))

(assert (= (and d!2251293 (not res!2938845)) b!7244970))

(assert (= (and b!7244970 res!2938846) b!7244971))

(declare-fun b_lambda!278019 () Bool)

(assert (=> (not b_lambda!278019) (not b!7244970)))

(declare-fun m!7921200 () Bool)

(assert (=> b!7244970 m!7921200))

(declare-fun m!7921202 () Bool)

(assert (=> b!7244971 m!7921202))

(assert (=> d!2250925 d!2251293))

(declare-fun d!2251295 () Bool)

(assert (=> d!2251295 (= (nullable!7881 (regOne!37688 (h!76685 (exprs!8028 ct1!232)))) (nullableFct!3091 (regOne!37688 (h!76685 (exprs!8028 ct1!232)))))))

(declare-fun bs!1904975 () Bool)

(assert (= bs!1904975 d!2251295))

(declare-fun m!7921204 () Bool)

(assert (=> bs!1904975 m!7921204))

(assert (=> b!7244502 d!2251295))

(assert (=> d!2250951 d!2251085))

(declare-fun bs!1904976 () Bool)

(declare-fun d!2251297 () Bool)

(assert (= bs!1904976 (and d!2251297 d!2251277)))

(declare-fun lambda!442863 () Int)

(assert (=> bs!1904976 (= lambda!442863 lambda!442860)))

(declare-fun bs!1904977 () Bool)

(assert (= bs!1904977 (and d!2251297 d!2251189)))

(assert (=> bs!1904977 (not (= lambda!442863 lambda!442846))))

(declare-fun bs!1904978 () Bool)

(assert (= bs!1904978 (and d!2251297 d!2251087)))

(assert (=> bs!1904978 (= lambda!442863 lambda!442836)))

(declare-fun bs!1904979 () Bool)

(assert (= bs!1904979 (and d!2251297 d!2250897)))

(assert (=> bs!1904979 (not (= lambda!442863 lambda!442806))))

(declare-fun bs!1904980 () Bool)

(assert (= bs!1904980 (and d!2251297 d!2251143)))

(assert (=> bs!1904980 (= lambda!442863 lambda!442841)))

(declare-fun bs!1904981 () Bool)

(assert (= bs!1904981 (and d!2251297 d!2251159)))

(assert (=> bs!1904981 (= lambda!442863 lambda!442844)))

(declare-fun bs!1904982 () Bool)

(assert (= bs!1904982 (and d!2251297 d!2251281)))

(assert (=> bs!1904982 (= lambda!442863 lambda!442861)))

(declare-fun bs!1904983 () Bool)

(assert (= bs!1904983 (and d!2251297 d!2251227)))

(assert (=> bs!1904983 (not (= lambda!442863 lambda!442854))))

(declare-fun bs!1904984 () Bool)

(assert (= bs!1904984 (and d!2251297 d!2251225)))

(assert (=> bs!1904984 (not (= lambda!442863 lambda!442851))))

(declare-fun bs!1904985 () Bool)

(assert (= bs!1904985 (and d!2251297 d!2251079)))

(assert (=> bs!1904985 (= lambda!442863 lambda!442834)))

(declare-fun bs!1904986 () Bool)

(assert (= bs!1904986 (and d!2251297 d!2251081)))

(assert (=> bs!1904986 (= lambda!442863 lambda!442835)))

(declare-fun bs!1904987 () Bool)

(assert (= bs!1904987 (and d!2251297 d!2251105)))

(assert (=> bs!1904987 (= lambda!442863 lambda!442838)))

(declare-fun bs!1904988 () Bool)

(assert (= bs!1904988 (and d!2251297 d!2251243)))

(assert (=> bs!1904988 (= lambda!442863 lambda!442855)))

(declare-fun bs!1904989 () Bool)

(assert (= bs!1904989 (and d!2251297 b!7244303)))

(assert (=> bs!1904989 (not (= lambda!442863 lambda!442767))))

(declare-fun bs!1904990 () Bool)

(assert (= bs!1904990 (and d!2251297 d!2250889)))

(assert (=> bs!1904990 (not (= lambda!442863 lambda!442800))))

(assert (=> d!2251297 (= (nullableZipper!2873 lt!2581927) (exists!4295 lt!2581927 lambda!442863))))

(declare-fun bs!1904991 () Bool)

(assert (= bs!1904991 d!2251297))

(declare-fun m!7921206 () Bool)

(assert (=> bs!1904991 m!7921206))

(assert (=> b!7244506 d!2251297))

(declare-fun b!7244974 () Bool)

(declare-fun res!2938847 () Bool)

(declare-fun e!4343885 () Bool)

(assert (=> b!7244974 (=> (not res!2938847) (not e!4343885))))

(declare-fun lt!2582166 () List!70361)

(assert (=> b!7244974 (= res!2938847 (= (size!41655 lt!2582166) (+ (size!41655 (t!384412 (exprs!8028 lt!2581930))) (size!41655 (exprs!8028 ct2!328)))))))

(declare-fun b!7244973 () Bool)

(declare-fun e!4343886 () List!70361)

(assert (=> b!7244973 (= e!4343886 (Cons!70237 (h!76685 (t!384412 (exprs!8028 lt!2581930))) (++!16460 (t!384412 (t!384412 (exprs!8028 lt!2581930))) (exprs!8028 ct2!328))))))

(declare-fun b!7244972 () Bool)

(assert (=> b!7244972 (= e!4343886 (exprs!8028 ct2!328))))

(declare-fun d!2251299 () Bool)

(assert (=> d!2251299 e!4343885))

(declare-fun res!2938848 () Bool)

(assert (=> d!2251299 (=> (not res!2938848) (not e!4343885))))

(assert (=> d!2251299 (= res!2938848 (= (content!14528 lt!2582166) (set.union (content!14528 (t!384412 (exprs!8028 lt!2581930))) (content!14528 (exprs!8028 ct2!328)))))))

(assert (=> d!2251299 (= lt!2582166 e!4343886)))

(declare-fun c!1345823 () Bool)

(assert (=> d!2251299 (= c!1345823 (is-Nil!70237 (t!384412 (exprs!8028 lt!2581930))))))

(assert (=> d!2251299 (= (++!16460 (t!384412 (exprs!8028 lt!2581930)) (exprs!8028 ct2!328)) lt!2582166)))

(declare-fun b!7244975 () Bool)

(assert (=> b!7244975 (= e!4343885 (or (not (= (exprs!8028 ct2!328) Nil!70237)) (= lt!2582166 (t!384412 (exprs!8028 lt!2581930)))))))

(assert (= (and d!2251299 c!1345823) b!7244972))

(assert (= (and d!2251299 (not c!1345823)) b!7244973))

(assert (= (and d!2251299 res!2938848) b!7244974))

(assert (= (and b!7244974 res!2938847) b!7244975))

(declare-fun m!7921208 () Bool)

(assert (=> b!7244974 m!7921208))

(assert (=> b!7244974 m!7920980))

(assert (=> b!7244974 m!7920342))

(declare-fun m!7921210 () Bool)

(assert (=> b!7244973 m!7921210))

(declare-fun m!7921212 () Bool)

(assert (=> d!2251299 m!7921212))

(assert (=> d!2251299 m!7920838))

(assert (=> d!2251299 m!7920350))

(assert (=> b!7244417 d!2251299))

(declare-fun bs!1904992 () Bool)

(declare-fun d!2251301 () Bool)

(assert (= bs!1904992 (and d!2251301 d!2251277)))

(declare-fun lambda!442864 () Int)

(assert (=> bs!1904992 (= lambda!442864 lambda!442860)))

(declare-fun bs!1904993 () Bool)

(assert (= bs!1904993 (and d!2251301 d!2251189)))

(assert (=> bs!1904993 (not (= lambda!442864 lambda!442846))))

(declare-fun bs!1904994 () Bool)

(assert (= bs!1904994 (and d!2251301 d!2251297)))

(assert (=> bs!1904994 (= lambda!442864 lambda!442863)))

(declare-fun bs!1904995 () Bool)

(assert (= bs!1904995 (and d!2251301 d!2251087)))

(assert (=> bs!1904995 (= lambda!442864 lambda!442836)))

(declare-fun bs!1904996 () Bool)

(assert (= bs!1904996 (and d!2251301 d!2250897)))

(assert (=> bs!1904996 (not (= lambda!442864 lambda!442806))))

(declare-fun bs!1904997 () Bool)

(assert (= bs!1904997 (and d!2251301 d!2251143)))

(assert (=> bs!1904997 (= lambda!442864 lambda!442841)))

(declare-fun bs!1904998 () Bool)

(assert (= bs!1904998 (and d!2251301 d!2251159)))

(assert (=> bs!1904998 (= lambda!442864 lambda!442844)))

(declare-fun bs!1904999 () Bool)

(assert (= bs!1904999 (and d!2251301 d!2251281)))

(assert (=> bs!1904999 (= lambda!442864 lambda!442861)))

(declare-fun bs!1905000 () Bool)

(assert (= bs!1905000 (and d!2251301 d!2251227)))

(assert (=> bs!1905000 (not (= lambda!442864 lambda!442854))))

(declare-fun bs!1905001 () Bool)

(assert (= bs!1905001 (and d!2251301 d!2251225)))

(assert (=> bs!1905001 (not (= lambda!442864 lambda!442851))))

(declare-fun bs!1905002 () Bool)

(assert (= bs!1905002 (and d!2251301 d!2251079)))

(assert (=> bs!1905002 (= lambda!442864 lambda!442834)))

(declare-fun bs!1905003 () Bool)

(assert (= bs!1905003 (and d!2251301 d!2251081)))

(assert (=> bs!1905003 (= lambda!442864 lambda!442835)))

(declare-fun bs!1905004 () Bool)

(assert (= bs!1905004 (and d!2251301 d!2251105)))

(assert (=> bs!1905004 (= lambda!442864 lambda!442838)))

(declare-fun bs!1905005 () Bool)

(assert (= bs!1905005 (and d!2251301 d!2251243)))

(assert (=> bs!1905005 (= lambda!442864 lambda!442855)))

(declare-fun bs!1905006 () Bool)

(assert (= bs!1905006 (and d!2251301 b!7244303)))

(assert (=> bs!1905006 (not (= lambda!442864 lambda!442767))))

(declare-fun bs!1905007 () Bool)

(assert (= bs!1905007 (and d!2251301 d!2250889)))

(assert (=> bs!1905007 (not (= lambda!442864 lambda!442800))))

(assert (=> d!2251301 (= (nullableZipper!2873 lt!2581939) (exists!4295 lt!2581939 lambda!442864))))

(declare-fun bs!1905008 () Bool)

(assert (= bs!1905008 d!2251301))

(declare-fun m!7921214 () Bool)

(assert (=> bs!1905008 m!7921214))

(assert (=> b!7244481 d!2251301))

(declare-fun d!2251303 () Bool)

(assert (=> d!2251303 (= (nullable!7881 (h!76685 (exprs!8028 lt!2581933))) (nullableFct!3091 (h!76685 (exprs!8028 lt!2581933))))))

(declare-fun bs!1905009 () Bool)

(assert (= bs!1905009 d!2251303))

(declare-fun m!7921216 () Bool)

(assert (=> bs!1905009 m!7921216))

(assert (=> b!7244393 d!2251303))

(declare-fun d!2251305 () Bool)

(assert (=> d!2251305 (= (isEmpty!40464 s2!1849) (is-Nil!70238 s2!1849))))

(assert (=> d!2250939 d!2251305))

(assert (=> bs!1904699 d!2250917))

(declare-fun d!2251307 () Bool)

(declare-fun c!1345824 () Bool)

(assert (=> d!2251307 (= c!1345824 (isEmpty!40464 lt!2581934))))

(declare-fun e!4343887 () Bool)

(assert (=> d!2251307 (= (matchZipper!3498 (set.union lt!2581939 lt!2581953) lt!2581934) e!4343887)))

(declare-fun b!7244976 () Bool)

(assert (=> b!7244976 (= e!4343887 (nullableZipper!2873 (set.union lt!2581939 lt!2581953)))))

(declare-fun b!7244977 () Bool)

(assert (=> b!7244977 (= e!4343887 (matchZipper!3498 (derivationStepZipper!3376 (set.union lt!2581939 lt!2581953) (head!14860 lt!2581934)) (tail!14257 lt!2581934)))))

(assert (= (and d!2251307 c!1345824) b!7244976))

(assert (= (and d!2251307 (not c!1345824)) b!7244977))

(assert (=> d!2251307 m!7920326))

(declare-fun m!7921218 () Bool)

(assert (=> b!7244976 m!7921218))

(assert (=> b!7244977 m!7920330))

(assert (=> b!7244977 m!7920330))

(declare-fun m!7921220 () Bool)

(assert (=> b!7244977 m!7921220))

(assert (=> b!7244977 m!7920334))

(assert (=> b!7244977 m!7921220))

(assert (=> b!7244977 m!7920334))

(declare-fun m!7921222 () Bool)

(assert (=> b!7244977 m!7921222))

(assert (=> d!2250945 d!2251307))

(assert (=> d!2250945 d!2250941))

(declare-fun d!2251309 () Bool)

(declare-fun e!4343888 () Bool)

(assert (=> d!2251309 (= (matchZipper!3498 (set.union lt!2581939 lt!2581953) lt!2581934) e!4343888)))

(declare-fun res!2938849 () Bool)

(assert (=> d!2251309 (=> res!2938849 e!4343888)))

(assert (=> d!2251309 (= res!2938849 (matchZipper!3498 lt!2581939 lt!2581934))))

(assert (=> d!2251309 true))

(declare-fun _$48!2534 () Unit!163762)

(assert (=> d!2251309 (= (choose!55865 lt!2581939 lt!2581953 lt!2581934) _$48!2534)))

(declare-fun b!7244978 () Bool)

(assert (=> b!7244978 (= e!4343888 (matchZipper!3498 lt!2581953 lt!2581934))))

(assert (= (and d!2251309 (not res!2938849)) b!7244978))

(assert (=> d!2251309 m!7920446))

(assert (=> d!2251309 m!7920116))

(assert (=> b!7244978 m!7920104))

(assert (=> d!2250945 d!2251309))

(assert (=> b!7244475 d!2251295))

(assert (=> d!2250909 d!2251085))

(declare-fun d!2251311 () Bool)

(assert (=> d!2251311 true))

(declare-fun setRes!53564 () Bool)

(assert (=> d!2251311 setRes!53564))

(declare-fun condSetEmpty!53564 () Bool)

(declare-fun res!2938850 () (Set Context!15056))

(assert (=> d!2251311 (= condSetEmpty!53564 (= res!2938850 (as set.empty (Set Context!15056))))))

(assert (=> d!2251311 (= (choose!55867 lt!2581932 lambda!442768) res!2938850)))

(declare-fun setIsEmpty!53564 () Bool)

(assert (=> setIsEmpty!53564 setRes!53564))

(declare-fun setNonEmpty!53564 () Bool)

(declare-fun tp!2036034 () Bool)

(declare-fun e!4343889 () Bool)

(declare-fun setElem!53564 () Context!15056)

(assert (=> setNonEmpty!53564 (= setRes!53564 (and tp!2036034 (inv!89481 setElem!53564) e!4343889))))

(declare-fun setRest!53564 () (Set Context!15056))

(assert (=> setNonEmpty!53564 (= res!2938850 (set.union (set.insert setElem!53564 (as set.empty (Set Context!15056))) setRest!53564))))

(declare-fun b!7244979 () Bool)

(declare-fun tp!2036033 () Bool)

(assert (=> b!7244979 (= e!4343889 tp!2036033)))

(assert (= (and d!2251311 condSetEmpty!53564) setIsEmpty!53564))

(assert (= (and d!2251311 (not condSetEmpty!53564)) setNonEmpty!53564))

(assert (= setNonEmpty!53564 b!7244979))

(declare-fun m!7921224 () Bool)

(assert (=> setNonEmpty!53564 m!7921224))

(assert (=> d!2250963 d!2251311))

(declare-fun d!2251313 () Bool)

(assert (=> d!2251313 (= ($colon$colon!2901 (exprs!8028 lt!2581933) (ite (or c!1345652 c!1345649) (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (h!76685 (exprs!8028 ct1!232)))) (Cons!70237 (ite (or c!1345652 c!1345649) (regTwo!37688 (h!76685 (exprs!8028 ct1!232))) (h!76685 (exprs!8028 ct1!232))) (exprs!8028 lt!2581933)))))

(assert (=> bm!659763 d!2251313))

(declare-fun bs!1905010 () Bool)

(declare-fun d!2251315 () Bool)

(assert (= bs!1905010 (and d!2251315 d!2251277)))

(declare-fun lambda!442865 () Int)

(assert (=> bs!1905010 (= lambda!442865 lambda!442860)))

(declare-fun bs!1905011 () Bool)

(assert (= bs!1905011 (and d!2251315 d!2251189)))

(assert (=> bs!1905011 (not (= lambda!442865 lambda!442846))))

(declare-fun bs!1905012 () Bool)

(assert (= bs!1905012 (and d!2251315 d!2251297)))

(assert (=> bs!1905012 (= lambda!442865 lambda!442863)))

(declare-fun bs!1905013 () Bool)

(assert (= bs!1905013 (and d!2251315 d!2251087)))

(assert (=> bs!1905013 (= lambda!442865 lambda!442836)))

(declare-fun bs!1905014 () Bool)

(assert (= bs!1905014 (and d!2251315 d!2250897)))

(assert (=> bs!1905014 (not (= lambda!442865 lambda!442806))))

(declare-fun bs!1905015 () Bool)

(assert (= bs!1905015 (and d!2251315 d!2251143)))

(assert (=> bs!1905015 (= lambda!442865 lambda!442841)))

(declare-fun bs!1905016 () Bool)

(assert (= bs!1905016 (and d!2251315 d!2251159)))

(assert (=> bs!1905016 (= lambda!442865 lambda!442844)))

(declare-fun bs!1905017 () Bool)

(assert (= bs!1905017 (and d!2251315 d!2251281)))

(assert (=> bs!1905017 (= lambda!442865 lambda!442861)))

(declare-fun bs!1905018 () Bool)

(assert (= bs!1905018 (and d!2251315 d!2251227)))

(assert (=> bs!1905018 (not (= lambda!442865 lambda!442854))))

(declare-fun bs!1905019 () Bool)

(assert (= bs!1905019 (and d!2251315 d!2251301)))

(assert (=> bs!1905019 (= lambda!442865 lambda!442864)))

(declare-fun bs!1905020 () Bool)

(assert (= bs!1905020 (and d!2251315 d!2251225)))

(assert (=> bs!1905020 (not (= lambda!442865 lambda!442851))))

(declare-fun bs!1905021 () Bool)

(assert (= bs!1905021 (and d!2251315 d!2251079)))

(assert (=> bs!1905021 (= lambda!442865 lambda!442834)))

(declare-fun bs!1905022 () Bool)

(assert (= bs!1905022 (and d!2251315 d!2251081)))

(assert (=> bs!1905022 (= lambda!442865 lambda!442835)))

(declare-fun bs!1905023 () Bool)

(assert (= bs!1905023 (and d!2251315 d!2251105)))

(assert (=> bs!1905023 (= lambda!442865 lambda!442838)))

(declare-fun bs!1905024 () Bool)

(assert (= bs!1905024 (and d!2251315 d!2251243)))

(assert (=> bs!1905024 (= lambda!442865 lambda!442855)))

(declare-fun bs!1905025 () Bool)

(assert (= bs!1905025 (and d!2251315 b!7244303)))

(assert (=> bs!1905025 (not (= lambda!442865 lambda!442767))))

(declare-fun bs!1905026 () Bool)

(assert (= bs!1905026 (and d!2251315 d!2250889)))

(assert (=> bs!1905026 (not (= lambda!442865 lambda!442800))))

(assert (=> d!2251315 (= (nullableZipper!2873 lt!2581953) (exists!4295 lt!2581953 lambda!442865))))

(declare-fun bs!1905027 () Bool)

(assert (= bs!1905027 d!2251315))

(declare-fun m!7921226 () Bool)

(assert (=> bs!1905027 m!7921226))

(assert (=> b!7244493 d!2251315))

(assert (=> b!7244490 d!2250975))

(declare-fun b!7244980 () Bool)

(declare-fun e!4343890 () Bool)

(declare-fun tp!2036035 () Bool)

(assert (=> b!7244980 (= e!4343890 (and tp_is_empty!46641 tp!2036035))))

(assert (=> b!7244527 (= tp!2036008 e!4343890)))

(assert (= (and b!7244527 (is-Cons!70238 (t!384413 (t!384413 s2!1849)))) b!7244980))

(declare-fun b!7244993 () Bool)

(declare-fun e!4343893 () Bool)

(declare-fun tp!2036046 () Bool)

(assert (=> b!7244993 (= e!4343893 tp!2036046)))

(declare-fun b!7244994 () Bool)

(declare-fun tp!2036048 () Bool)

(declare-fun tp!2036050 () Bool)

(assert (=> b!7244994 (= e!4343893 (and tp!2036048 tp!2036050))))

(declare-fun b!7244991 () Bool)

(assert (=> b!7244991 (= e!4343893 tp_is_empty!46641)))

(declare-fun b!7244992 () Bool)

(declare-fun tp!2036049 () Bool)

(declare-fun tp!2036047 () Bool)

(assert (=> b!7244992 (= e!4343893 (and tp!2036049 tp!2036047))))

(assert (=> b!7244525 (= tp!2036004 e!4343893)))

(assert (= (and b!7244525 (is-ElementMatch!18588 (h!76685 (exprs!8028 ct1!232)))) b!7244991))

(assert (= (and b!7244525 (is-Concat!27433 (h!76685 (exprs!8028 ct1!232)))) b!7244992))

(assert (= (and b!7244525 (is-Star!18588 (h!76685 (exprs!8028 ct1!232)))) b!7244993))

(assert (= (and b!7244525 (is-Union!18588 (h!76685 (exprs!8028 ct1!232)))) b!7244994))

(declare-fun b!7244995 () Bool)

(declare-fun e!4343894 () Bool)

(declare-fun tp!2036051 () Bool)

(declare-fun tp!2036052 () Bool)

(assert (=> b!7244995 (= e!4343894 (and tp!2036051 tp!2036052))))

(assert (=> b!7244525 (= tp!2036005 e!4343894)))

(assert (= (and b!7244525 (is-Cons!70237 (t!384412 (exprs!8028 ct1!232)))) b!7244995))

(declare-fun b!7244998 () Bool)

(declare-fun e!4343895 () Bool)

(declare-fun tp!2036053 () Bool)

(assert (=> b!7244998 (= e!4343895 tp!2036053)))

(declare-fun b!7244999 () Bool)

(declare-fun tp!2036055 () Bool)

(declare-fun tp!2036057 () Bool)

(assert (=> b!7244999 (= e!4343895 (and tp!2036055 tp!2036057))))

(declare-fun b!7244996 () Bool)

(assert (=> b!7244996 (= e!4343895 tp_is_empty!46641)))

(declare-fun b!7244997 () Bool)

(declare-fun tp!2036056 () Bool)

(declare-fun tp!2036054 () Bool)

(assert (=> b!7244997 (= e!4343895 (and tp!2036056 tp!2036054))))

(assert (=> b!7244526 (= tp!2036006 e!4343895)))

(assert (= (and b!7244526 (is-ElementMatch!18588 (h!76685 (exprs!8028 ct2!328)))) b!7244996))

(assert (= (and b!7244526 (is-Concat!27433 (h!76685 (exprs!8028 ct2!328)))) b!7244997))

(assert (= (and b!7244526 (is-Star!18588 (h!76685 (exprs!8028 ct2!328)))) b!7244998))

(assert (= (and b!7244526 (is-Union!18588 (h!76685 (exprs!8028 ct2!328)))) b!7244999))

(declare-fun b!7245000 () Bool)

(declare-fun e!4343896 () Bool)

(declare-fun tp!2036058 () Bool)

(declare-fun tp!2036059 () Bool)

(assert (=> b!7245000 (= e!4343896 (and tp!2036058 tp!2036059))))

(assert (=> b!7244526 (= tp!2036007 e!4343896)))

(assert (= (and b!7244526 (is-Cons!70237 (t!384412 (exprs!8028 ct2!328)))) b!7245000))

(declare-fun b!7245001 () Bool)

(declare-fun e!4343897 () Bool)

(declare-fun tp!2036060 () Bool)

(assert (=> b!7245001 (= e!4343897 (and tp_is_empty!46641 tp!2036060))))

(assert (=> b!7244520 (= tp!2035999 e!4343897)))

(assert (= (and b!7244520 (is-Cons!70238 (t!384413 (t!384413 s1!1971)))) b!7245001))

(declare-fun b_lambda!278021 () Bool)

(assert (= b_lambda!278003 (or b!7244301 b_lambda!278021)))

(declare-fun bs!1905028 () Bool)

(declare-fun d!2251317 () Bool)

(assert (= bs!1905028 (and d!2251317 b!7244301)))

(declare-fun validRegex!9537 (Regex!18588) Bool)

(assert (=> bs!1905028 (= (dynLambda!28678 lambda!442766 (h!76685 (++!16460 (exprs!8028 ct1!232) (exprs!8028 ct2!328)))) (validRegex!9537 (h!76685 (++!16460 (exprs!8028 ct1!232) (exprs!8028 ct2!328)))))))

(declare-fun m!7921228 () Bool)

(assert (=> bs!1905028 m!7921228))

(assert (=> b!7244749 d!2251317))

(declare-fun b_lambda!278023 () Bool)

(assert (= b_lambda!277999 (or d!2250897 b_lambda!278023)))

(declare-fun bs!1905029 () Bool)

(declare-fun d!2251319 () Bool)

(assert (= bs!1905029 (and d!2251319 d!2250897)))

(assert (=> bs!1905029 (= (dynLambda!28673 lambda!442806 (h!76687 lt!2581943)) (not (dynLambda!28673 lambda!442767 (h!76687 lt!2581943))))))

(declare-fun b_lambda!278043 () Bool)

(assert (=> (not b_lambda!278043) (not bs!1905029)))

(declare-fun m!7921230 () Bool)

(assert (=> bs!1905029 m!7921230))

(assert (=> b!7244699 d!2251319))

(declare-fun b_lambda!278025 () Bool)

(assert (= b_lambda!278017 (or b!7244303 b_lambda!278025)))

(declare-fun bs!1905030 () Bool)

(declare-fun d!2251321 () Bool)

(assert (= bs!1905030 (and d!2251321 b!7244303)))

(assert (=> bs!1905030 (= (dynLambda!28673 lambda!442767 lt!2582164) (matchZipper!3498 (set.insert lt!2582164 (as set.empty (Set Context!15056))) (t!384413 s1!1971)))))

(declare-fun m!7921232 () Bool)

(assert (=> bs!1905030 m!7921232))

(assert (=> bs!1905030 m!7921232))

(declare-fun m!7921234 () Bool)

(assert (=> bs!1905030 m!7921234))

(assert (=> d!2251291 d!2251321))

(declare-fun b_lambda!278027 () Bool)

(assert (= b_lambda!278009 (or b!7244301 b_lambda!278027)))

(declare-fun bs!1905031 () Bool)

(declare-fun d!2251323 () Bool)

(assert (= bs!1905031 (and d!2251323 b!7244301)))

(assert (=> bs!1905031 (= (dynLambda!28678 lambda!442766 (h!76685 (++!16460 (exprs!8028 lt!2581930) (exprs!8028 ct2!328)))) (validRegex!9537 (h!76685 (++!16460 (exprs!8028 lt!2581930) (exprs!8028 ct2!328)))))))

(declare-fun m!7921236 () Bool)

(assert (=> bs!1905031 m!7921236))

(assert (=> b!7244824 d!2251323))

(declare-fun b_lambda!278029 () Bool)

(assert (= b_lambda!278007 (or b!7244300 b_lambda!278029)))

(assert (=> d!2251149 d!2250981))

(declare-fun b_lambda!278031 () Bool)

(assert (= b_lambda!278001 (or d!2250923 b_lambda!278031)))

(declare-fun bs!1905032 () Bool)

(declare-fun d!2251325 () Bool)

(assert (= bs!1905032 (and d!2251325 d!2250923)))

(assert (=> bs!1905032 (= (dynLambda!28678 lambda!442812 (h!76685 (exprs!8028 ct1!232))) (validRegex!9537 (h!76685 (exprs!8028 ct1!232))))))

(declare-fun m!7921238 () Bool)

(assert (=> bs!1905032 m!7921238))

(assert (=> b!7244743 d!2251325))

(declare-fun b_lambda!278033 () Bool)

(assert (= b_lambda!278011 (or b!7244301 b_lambda!278033)))

(declare-fun bs!1905033 () Bool)

(declare-fun d!2251327 () Bool)

(assert (= bs!1905033 (and d!2251327 b!7244301)))

(assert (=> bs!1905033 (= (dynLambda!28678 lambda!442766 (h!76685 (exprs!8028 lt!2581930))) (validRegex!9537 (h!76685 (exprs!8028 lt!2581930))))))

(declare-fun m!7921240 () Bool)

(assert (=> bs!1905033 m!7921240))

(assert (=> b!7244826 d!2251327))

(declare-fun b_lambda!278035 () Bool)

(assert (= b_lambda!278015 (or b!7244303 b_lambda!278035)))

(declare-fun bs!1905034 () Bool)

(declare-fun d!2251329 () Bool)

(assert (= bs!1905034 (and d!2251329 b!7244303)))

(assert (=> bs!1905034 (= (dynLambda!28673 lambda!442767 (h!76687 (toList!11434 lt!2581921))) (matchZipper!3498 (set.insert (h!76687 (toList!11434 lt!2581921)) (as set.empty (Set Context!15056))) (t!384413 s1!1971)))))

(declare-fun m!7921242 () Bool)

(assert (=> bs!1905034 m!7921242))

(assert (=> bs!1905034 m!7921242))

(declare-fun m!7921244 () Bool)

(assert (=> bs!1905034 m!7921244))

(assert (=> b!7244964 d!2251329))

(declare-fun b_lambda!278037 () Bool)

(assert (= b_lambda!278005 (or b!7244301 b_lambda!278037)))

(declare-fun bs!1905035 () Bool)

(declare-fun d!2251331 () Bool)

(assert (= bs!1905035 (and d!2251331 b!7244301)))

(assert (=> bs!1905035 (= (dynLambda!28678 lambda!442766 (h!76685 (exprs!8028 ct1!232))) (validRegex!9537 (h!76685 (exprs!8028 ct1!232))))))

(assert (=> bs!1905035 m!7921238))

(assert (=> b!7244751 d!2251331))

(declare-fun b_lambda!278039 () Bool)

(assert (= b_lambda!278019 (or d!2250925 b_lambda!278039)))

(declare-fun bs!1905036 () Bool)

(declare-fun d!2251333 () Bool)

(assert (= bs!1905036 (and d!2251333 d!2250925)))

(assert (=> bs!1905036 (= (dynLambda!28678 lambda!442813 (h!76685 (exprs!8028 ct2!328))) (validRegex!9537 (h!76685 (exprs!8028 ct2!328))))))

(declare-fun m!7921246 () Bool)

(assert (=> bs!1905036 m!7921246))

(assert (=> b!7244970 d!2251333))

(declare-fun b_lambda!278041 () Bool)

(assert (= b_lambda!278013 (or b!7244300 b_lambda!278041)))

(assert (=> d!2251257 d!2250977))

(push 1)

(assert (not d!2251207))

(assert (not b!7244744))

(assert (not b!7244825))

(assert (not bm!659855))

(assert (not bm!659825))

(assert (not d!2251183))

(assert (not b!7244752))

(assert (not b!7244973))

(assert (not bm!659802))

(assert (not b!7244796))

(assert (not b!7244747))

(assert (not d!2251171))

(assert (not d!2251259))

(assert (not d!2251205))

(assert (not d!2251297))

(assert (not b!7244823))

(assert (not d!2251227))

(assert (not b!7244999))

(assert (not bm!659834))

(assert (not b!7244993))

(assert (not b_lambda!278033))

(assert (not d!2251215))

(assert (not b!7244792))

(assert (not b!7244872))

(assert (not d!2251185))

(assert (not b!7244907))

(assert (not b!7244691))

(assert (not d!2251143))

(assert (not b!7244921))

(assert (not d!2251273))

(assert (not b!7244827))

(assert (not d!2251281))

(assert (not b!7244715))

(assert (not b!7245001))

(assert (not d!2251139))

(assert (not bm!659817))

(assert (not b!7244886))

(assert (not d!2251133))

(assert (not d!2251229))

(assert (not d!2251145))

(assert (not b!7244829))

(assert (not b!7244920))

(assert (not bm!659803))

(assert (not d!2251081))

(assert (not d!2251217))

(assert (not setNonEmpty!53564))

(assert (not b!7244932))

(assert (not bm!659840))

(assert (not d!2251301))

(assert (not b!7244928))

(assert (not b!7244832))

(assert (not b!7244979))

(assert (not d!2251201))

(assert (not b_lambda!278027))

(assert (not b!7244946))

(assert (not d!2251283))

(assert (not b_lambda!278041))

(assert (not bm!659842))

(assert (not b_lambda!278039))

(assert (not b_lambda!278029))

(assert (not b!7244978))

(assert (not b!7244797))

(assert (not d!2251299))

(assert (not bs!1905030))

(assert (not b!7244713))

(assert (not d!2251191))

(assert (not b!7244994))

(assert (not b!7244856))

(assert (not d!2251239))

(assert (not b!7244906))

(assert (not b!7244858))

(assert (not b!7244781))

(assert (not b!7244835))

(assert (not d!2251295))

(assert (not b!7244880))

(assert (not bs!1905034))

(assert (not b!7244702))

(assert (not d!2251157))

(assert (not b!7244916))

(assert (not b_lambda!278025))

(assert (not d!2251155))

(assert (not d!2251243))

(assert (not b!7244700))

(assert (not b!7244914))

(assert (not d!2251253))

(assert (not b!7244995))

(assert (not b!7244915))

(assert (not bm!659835))

(assert (not bm!659837))

(assert (not d!2251213))

(assert (not b!7244887))

(assert (not bs!1905035))

(assert (not b!7244885))

(assert (not b!7244965))

(assert (not b!7244944))

(assert (not d!2251119))

(assert (not b!7244707))

(assert (not d!2251159))

(assert (not b!7244971))

(assert (not bm!659815))

(assert (not bm!659849))

(assert (not b!7244947))

(assert (not b!7244821))

(assert (not b_lambda!278021))

(assert (not bm!659831))

(assert (not b_lambda!278031))

(assert (not b!7244863))

(assert (not bm!659828))

(assert (not b!7244967))

(assert (not bs!1905031))

(assert (not bm!659823))

(assert (not d!2251291))

(assert (not d!2251189))

(assert (not b!7244890))

(assert (not d!2251241))

(assert tp_is_empty!46641)

(assert (not b!7244704))

(assert (not b!7244930))

(assert (not b_lambda!278035))

(assert (not b!7244723))

(assert (not b!7244779))

(assert (not d!2251235))

(assert (not d!2251285))

(assert (not d!2251105))

(assert (not b!7244874))

(assert (not bm!659799))

(assert (not d!2251255))

(assert (not b_lambda!277981))

(assert (not d!2251089))

(assert (not b!7244966))

(assert (not b_lambda!278023))

(assert (not b!7244717))

(assert (not setNonEmpty!53563))

(assert (not b!7244843))

(assert (not b!7244949))

(assert (not b!7244805))

(assert (not bm!659810))

(assert (not b!7244816))

(assert (not b_lambda!277985))

(assert (not b!7244950))

(assert (not b_lambda!277983))

(assert (not b!7244831))

(assert (not b!7244868))

(assert (not b!7244918))

(assert (not b!7244774))

(assert (not b!7244852))

(assert (not d!2251309))

(assert (not d!2251131))

(assert (not b!7244833))

(assert (not d!2251199))

(assert (not b!7244854))

(assert (not bm!659804))

(assert (not d!2251079))

(assert (not b!7244784))

(assert (not b!7244778))

(assert (not bm!659841))

(assert (not d!2251121))

(assert (not bm!659806))

(assert (not b!7244976))

(assert (not d!2251315))

(assert (not bm!659822))

(assert (not d!2251275))

(assert (not b!7244776))

(assert (not b!7244725))

(assert (not b!7244727))

(assert (not bm!659851))

(assert (not d!2251091))

(assert (not b!7244746))

(assert (not b!7244864))

(assert (not b!7244873))

(assert (not b!7244974))

(assert (not bm!659816))

(assert (not bs!1905032))

(assert (not b!7244834))

(assert (not b!7244951))

(assert (not b!7244866))

(assert (not d!2251125))

(assert (not b!7244735))

(assert (not d!2251141))

(assert (not b!7244701))

(assert (not d!2251087))

(assert (not b!7244775))

(assert (not bm!659845))

(assert (not d!2251249))

(assert (not bm!659843))

(assert (not b!7244980))

(assert (not b!7244998))

(assert (not b!7244750))

(assert (not b!7244882))

(assert (not d!2251221))

(assert (not d!2251269))

(assert (not d!2251219))

(assert (not b!7244860))

(assert (not b!7244940))

(assert (not b!7244857))

(assert (not bm!659809))

(assert (not d!2251303))

(assert (not b!7244945))

(assert (not b_lambda!278037))

(assert (not b!7244865))

(assert (not bm!659848))

(assert (not bm!659819))

(assert (not d!2251271))

(assert (not bm!659829))

(assert (not d!2251257))

(assert (not d!2251277))

(assert (not b!7244898))

(assert (not d!2251117))

(assert (not b!7244977))

(assert (not b!7244867))

(assert (not d!2251307))

(assert (not b!7244997))

(assert (not d!2251225))

(assert (not b!7244777))

(assert (not d!2251149))

(assert (not bs!1905036))

(assert (not b_lambda!278043))

(assert (not bs!1905033))

(assert (not b!7244992))

(assert (not bm!659854))

(assert (not b!7244869))

(assert (not d!2251181))

(assert (not d!2251147))

(assert (not b!7244917))

(assert (not b!7245000))

(assert (not bs!1905028))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

