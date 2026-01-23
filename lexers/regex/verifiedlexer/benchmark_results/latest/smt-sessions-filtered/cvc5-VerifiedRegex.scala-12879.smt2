; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!711248 () Bool)

(assert start!711248)

(declare-fun b!7296101 () Bool)

(assert (=> b!7296101 true))

(declare-fun b!7296100 () Bool)

(declare-fun e!4369969 () Bool)

(declare-fun e!4369968 () Bool)

(assert (=> b!7296100 (= e!4369969 e!4369968)))

(declare-fun res!2951055 () Bool)

(assert (=> b!7296100 (=> res!2951055 e!4369968)))

(declare-datatypes ((C!38006 0))(
  ( (C!38007 (val!28951 Int)) )
))
(declare-datatypes ((Regex!18866 0))(
  ( (ElementMatch!18866 (c!1356071 C!38006)) (Concat!27711 (regOne!38244 Regex!18866) (regTwo!38244 Regex!18866)) (EmptyExpr!18866) (Star!18866 (reg!19195 Regex!18866)) (EmptyLang!18866) (Union!18866 (regOne!38245 Regex!18866) (regTwo!38245 Regex!18866)) )
))
(declare-datatypes ((List!71049 0))(
  ( (Nil!70925) (Cons!70925 (h!77373 Regex!18866) (t!385125 List!71049)) )
))
(declare-datatypes ((Context!15612 0))(
  ( (Context!15613 (exprs!8306 List!71049)) )
))
(declare-fun ct1!250 () Context!15612)

(declare-fun nullable!8043 (Regex!18866) Bool)

(assert (=> b!7296100 (= res!2951055 (not (nullable!8043 (h!77373 (exprs!8306 ct1!250)))))))

(declare-fun lt!2598078 () (Set Context!15612))

(declare-datatypes ((List!71050 0))(
  ( (Nil!70926) (Cons!70926 (h!77374 C!38006) (t!385126 List!71050)) )
))
(declare-fun s!7854 () List!71050)

(declare-fun derivationStepZipperUp!2616 (Context!15612 C!38006) (Set Context!15612))

(assert (=> b!7296100 (= lt!2598078 (derivationStepZipperUp!2616 ct1!250 (h!77374 s!7854)))))

(declare-fun lt!2598073 () Context!15612)

(declare-fun lt!2598084 () List!71049)

(assert (=> b!7296100 (= lt!2598073 (Context!15613 lt!2598084))))

(declare-fun tail!14583 (List!71049) List!71049)

(assert (=> b!7296100 (= lt!2598084 (tail!14583 (exprs!8306 ct1!250)))))

(declare-fun e!4369967 () Bool)

(assert (=> b!7296101 (= e!4369967 (not e!4369969))))

(declare-fun res!2951060 () Bool)

(assert (=> b!7296101 (=> res!2951060 e!4369969)))

(declare-fun lt!2598083 () (Set Context!15612))

(declare-fun lt!2598068 () (Set Context!15612))

(declare-fun derivationStepZipper!3599 ((Set Context!15612) C!38006) (Set Context!15612))

(assert (=> b!7296101 (= res!2951060 (not (= lt!2598068 (derivationStepZipper!3599 lt!2598083 (h!77374 s!7854)))))))

(declare-datatypes ((Unit!164330 0))(
  ( (Unit!164331) )
))
(declare-fun lt!2598072 () Unit!164330)

(declare-fun lambda!450422 () Int)

(declare-fun ct2!346 () Context!15612)

(declare-fun lemmaConcatPreservesForall!1613 (List!71049 List!71049 Int) Unit!164330)

(assert (=> b!7296101 (= lt!2598072 (lemmaConcatPreservesForall!1613 (exprs!8306 ct1!250) (exprs!8306 ct2!346) lambda!450422))))

(declare-fun lambda!450423 () Int)

(declare-fun lt!2598082 () Context!15612)

(declare-fun flatMap!2961 ((Set Context!15612) Int) (Set Context!15612))

(assert (=> b!7296101 (= (flatMap!2961 lt!2598083 lambda!450423) (derivationStepZipperUp!2616 lt!2598082 (h!77374 s!7854)))))

(declare-fun lt!2598070 () Unit!164330)

(declare-fun lemmaFlatMapOnSingletonSet!2359 ((Set Context!15612) Context!15612 Int) Unit!164330)

(assert (=> b!7296101 (= lt!2598070 (lemmaFlatMapOnSingletonSet!2359 lt!2598083 lt!2598082 lambda!450423))))

(assert (=> b!7296101 (= lt!2598083 (set.insert lt!2598082 (as set.empty (Set Context!15612))))))

(declare-fun lt!2598071 () Unit!164330)

(assert (=> b!7296101 (= lt!2598071 (lemmaConcatPreservesForall!1613 (exprs!8306 ct1!250) (exprs!8306 ct2!346) lambda!450422))))

(declare-fun lt!2598086 () Unit!164330)

(assert (=> b!7296101 (= lt!2598086 (lemmaConcatPreservesForall!1613 (exprs!8306 ct1!250) (exprs!8306 ct2!346) lambda!450422))))

(declare-fun lt!2598081 () (Set Context!15612))

(assert (=> b!7296101 (= (flatMap!2961 lt!2598081 lambda!450423) (derivationStepZipperUp!2616 ct1!250 (h!77374 s!7854)))))

(declare-fun lt!2598074 () Unit!164330)

(assert (=> b!7296101 (= lt!2598074 (lemmaFlatMapOnSingletonSet!2359 lt!2598081 ct1!250 lambda!450423))))

(assert (=> b!7296101 (= lt!2598081 (set.insert ct1!250 (as set.empty (Set Context!15612))))))

(assert (=> b!7296101 (= lt!2598068 (derivationStepZipperUp!2616 lt!2598082 (h!77374 s!7854)))))

(declare-fun ++!16756 (List!71049 List!71049) List!71049)

(assert (=> b!7296101 (= lt!2598082 (Context!15613 (++!16756 (exprs!8306 ct1!250) (exprs!8306 ct2!346))))))

(declare-fun lt!2598075 () Unit!164330)

(assert (=> b!7296101 (= lt!2598075 (lemmaConcatPreservesForall!1613 (exprs!8306 ct1!250) (exprs!8306 ct2!346) lambda!450422))))

(declare-fun b!7296102 () Bool)

(declare-fun res!2951054 () Bool)

(assert (=> b!7296102 (=> (not res!2951054) (not e!4369967))))

(declare-fun nullableContext!356 (Context!15612) Bool)

(assert (=> b!7296102 (= res!2951054 (nullableContext!356 ct1!250))))

(declare-fun b!7296103 () Bool)

(declare-fun e!4369971 () Bool)

(assert (=> b!7296103 (= e!4369968 e!4369971)))

(declare-fun res!2951062 () Bool)

(assert (=> b!7296103 (=> res!2951062 e!4369971)))

(declare-fun lt!2598077 () Context!15612)

(declare-fun derivationStepZipperDown!2772 (Regex!18866 Context!15612 C!38006) (Set Context!15612))

(assert (=> b!7296103 (= res!2951062 (not (= lt!2598068 (set.union (derivationStepZipperDown!2772 (h!77373 (exprs!8306 ct1!250)) lt!2598077 (h!77374 s!7854)) (derivationStepZipperUp!2616 lt!2598077 (h!77374 s!7854))))))))

(assert (=> b!7296103 (= lt!2598077 (Context!15613 (++!16756 lt!2598084 (exprs!8306 ct2!346))))))

(declare-fun lt!2598079 () Unit!164330)

(assert (=> b!7296103 (= lt!2598079 (lemmaConcatPreservesForall!1613 lt!2598084 (exprs!8306 ct2!346) lambda!450422))))

(declare-fun lt!2598080 () Unit!164330)

(assert (=> b!7296103 (= lt!2598080 (lemmaConcatPreservesForall!1613 lt!2598084 (exprs!8306 ct2!346) lambda!450422))))

(declare-fun b!7296104 () Bool)

(declare-fun res!2951061 () Bool)

(assert (=> b!7296104 (=> (not res!2951061) (not e!4369967))))

(assert (=> b!7296104 (= res!2951061 (is-Cons!70926 s!7854))))

(declare-fun b!7296105 () Bool)

(declare-fun res!2951058 () Bool)

(assert (=> b!7296105 (=> res!2951058 e!4369969)))

(assert (=> b!7296105 (= res!2951058 (not (is-Cons!70925 (exprs!8306 ct1!250))))))

(declare-fun b!7296106 () Bool)

(declare-fun e!4369970 () Bool)

(declare-fun tp_is_empty!47197 () Bool)

(declare-fun tp!2062385 () Bool)

(assert (=> b!7296106 (= e!4369970 (and tp_is_empty!47197 tp!2062385))))

(declare-fun b!7296108 () Bool)

(declare-fun e!4369972 () Bool)

(declare-fun tp!2062383 () Bool)

(assert (=> b!7296108 (= e!4369972 tp!2062383)))

(declare-fun b!7296109 () Bool)

(declare-fun res!2951059 () Bool)

(assert (=> b!7296109 (=> res!2951059 e!4369969)))

(declare-fun isEmpty!40800 (List!71049) Bool)

(assert (=> b!7296109 (= res!2951059 (isEmpty!40800 (exprs!8306 ct1!250)))))

(declare-fun b!7296110 () Bool)

(declare-fun e!4369973 () Bool)

(declare-fun tp!2062384 () Bool)

(assert (=> b!7296110 (= e!4369973 tp!2062384)))

(declare-fun b!7296111 () Bool)

(assert (=> b!7296111 (= e!4369971 true)))

(declare-fun lt!2598069 () Unit!164330)

(assert (=> b!7296111 (= lt!2598069 (lemmaConcatPreservesForall!1613 lt!2598084 (exprs!8306 ct2!346) lambda!450422))))

(declare-fun matchZipper!3770 ((Set Context!15612) List!71050) Bool)

(assert (=> b!7296111 (matchZipper!3770 (set.insert lt!2598077 (as set.empty (Set Context!15612))) s!7854)))

(declare-fun lt!2598085 () Unit!164330)

(assert (=> b!7296111 (= lt!2598085 (lemmaConcatPreservesForall!1613 lt!2598084 (exprs!8306 ct2!346) lambda!450422))))

(declare-fun lt!2598076 () Unit!164330)

(declare-fun lemmaPrependingNullableCtxStillMatches!49 (Context!15612 Context!15612 List!71050) Unit!164330)

(assert (=> b!7296111 (= lt!2598076 (lemmaPrependingNullableCtxStillMatches!49 lt!2598073 ct2!346 s!7854))))

(declare-fun res!2951056 () Bool)

(assert (=> start!711248 (=> (not res!2951056) (not e!4369967))))

(assert (=> start!711248 (= res!2951056 (matchZipper!3770 (set.insert ct2!346 (as set.empty (Set Context!15612))) s!7854))))

(assert (=> start!711248 e!4369967))

(declare-fun inv!90176 (Context!15612) Bool)

(assert (=> start!711248 (and (inv!90176 ct2!346) e!4369972)))

(assert (=> start!711248 e!4369970))

(assert (=> start!711248 (and (inv!90176 ct1!250) e!4369973)))

(declare-fun b!7296107 () Bool)

(declare-fun res!2951057 () Bool)

(assert (=> b!7296107 (=> res!2951057 e!4369968)))

(assert (=> b!7296107 (= res!2951057 (not (= lt!2598078 (set.union (derivationStepZipperDown!2772 (h!77373 (exprs!8306 ct1!250)) lt!2598073 (h!77374 s!7854)) (derivationStepZipperUp!2616 lt!2598073 (h!77374 s!7854))))))))

(assert (= (and start!711248 res!2951056) b!7296102))

(assert (= (and b!7296102 res!2951054) b!7296104))

(assert (= (and b!7296104 res!2951061) b!7296101))

(assert (= (and b!7296101 (not res!2951060)) b!7296105))

(assert (= (and b!7296105 (not res!2951058)) b!7296109))

(assert (= (and b!7296109 (not res!2951059)) b!7296100))

(assert (= (and b!7296100 (not res!2951055)) b!7296107))

(assert (= (and b!7296107 (not res!2951057)) b!7296103))

(assert (= (and b!7296103 (not res!2951062)) b!7296111))

(assert (= start!711248 b!7296108))

(assert (= (and start!711248 (is-Cons!70926 s!7854)) b!7296106))

(assert (= start!711248 b!7296110))

(declare-fun m!7967822 () Bool)

(assert (=> start!711248 m!7967822))

(assert (=> start!711248 m!7967822))

(declare-fun m!7967824 () Bool)

(assert (=> start!711248 m!7967824))

(declare-fun m!7967826 () Bool)

(assert (=> start!711248 m!7967826))

(declare-fun m!7967828 () Bool)

(assert (=> start!711248 m!7967828))

(declare-fun m!7967830 () Bool)

(assert (=> b!7296109 m!7967830))

(declare-fun m!7967832 () Bool)

(assert (=> b!7296103 m!7967832))

(declare-fun m!7967834 () Bool)

(assert (=> b!7296103 m!7967834))

(declare-fun m!7967836 () Bool)

(assert (=> b!7296103 m!7967836))

(assert (=> b!7296103 m!7967836))

(declare-fun m!7967838 () Bool)

(assert (=> b!7296103 m!7967838))

(declare-fun m!7967840 () Bool)

(assert (=> b!7296107 m!7967840))

(declare-fun m!7967842 () Bool)

(assert (=> b!7296107 m!7967842))

(declare-fun m!7967844 () Bool)

(assert (=> b!7296102 m!7967844))

(declare-fun m!7967846 () Bool)

(assert (=> b!7296100 m!7967846))

(declare-fun m!7967848 () Bool)

(assert (=> b!7296100 m!7967848))

(declare-fun m!7967850 () Bool)

(assert (=> b!7296100 m!7967850))

(declare-fun m!7967852 () Bool)

(assert (=> b!7296101 m!7967852))

(declare-fun m!7967854 () Bool)

(assert (=> b!7296101 m!7967854))

(declare-fun m!7967856 () Bool)

(assert (=> b!7296101 m!7967856))

(declare-fun m!7967858 () Bool)

(assert (=> b!7296101 m!7967858))

(assert (=> b!7296101 m!7967858))

(assert (=> b!7296101 m!7967848))

(declare-fun m!7967860 () Bool)

(assert (=> b!7296101 m!7967860))

(assert (=> b!7296101 m!7967858))

(declare-fun m!7967862 () Bool)

(assert (=> b!7296101 m!7967862))

(declare-fun m!7967864 () Bool)

(assert (=> b!7296101 m!7967864))

(declare-fun m!7967866 () Bool)

(assert (=> b!7296101 m!7967866))

(declare-fun m!7967868 () Bool)

(assert (=> b!7296101 m!7967868))

(assert (=> b!7296101 m!7967858))

(declare-fun m!7967870 () Bool)

(assert (=> b!7296101 m!7967870))

(declare-fun m!7967872 () Bool)

(assert (=> b!7296111 m!7967872))

(declare-fun m!7967874 () Bool)

(assert (=> b!7296111 m!7967874))

(assert (=> b!7296111 m!7967836))

(assert (=> b!7296111 m!7967872))

(declare-fun m!7967876 () Bool)

(assert (=> b!7296111 m!7967876))

(assert (=> b!7296111 m!7967836))

(push 1)

(assert (not b!7296110))

(assert (not b!7296100))

(assert (not b!7296103))

(assert (not b!7296111))

(assert (not start!711248))

(assert (not b!7296109))

(assert (not b!7296107))

(assert (not b!7296102))

(assert (not b!7296106))

(assert (not b!7296101))

(assert (not b!7296108))

(assert tp_is_empty!47197)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

