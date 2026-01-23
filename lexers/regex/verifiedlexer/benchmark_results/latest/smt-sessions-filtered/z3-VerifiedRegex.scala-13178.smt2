; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!718924 () Bool)

(assert start!718924)

(declare-fun b!7363879 () Bool)

(declare-fun e!4408840 () Bool)

(declare-fun tp!2092710 () Bool)

(declare-fun tp!2092717 () Bool)

(assert (=> b!7363879 (= e!4408840 (and tp!2092710 tp!2092717))))

(declare-fun b!7363880 () Bool)

(declare-fun e!4408835 () Bool)

(declare-fun e!4408838 () Bool)

(assert (=> b!7363880 (= e!4408835 e!4408838)))

(declare-fun res!2972378 () Bool)

(assert (=> b!7363880 (=> (not res!2972378) (not e!4408838))))

(declare-datatypes ((C!38764 0))(
  ( (C!38765 (val!29742 Int)) )
))
(declare-datatypes ((Regex!19245 0))(
  ( (ElementMatch!19245 (c!1368345 C!38764)) (Concat!28090 (regOne!39002 Regex!19245) (regTwo!39002 Regex!19245)) (EmptyExpr!19245) (Star!19245 (reg!19574 Regex!19245)) (EmptyLang!19245) (Union!19245 (regOne!39003 Regex!19245) (regTwo!39003 Regex!19245)) )
))
(declare-fun r1!2370 () Regex!19245)

(declare-fun c!10362 () C!38764)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!71741 0))(
  ( (Nil!71617) (Cons!71617 (h!78065 Regex!19245) (t!386190 List!71741)) )
))
(declare-datatypes ((Context!16370 0))(
  ( (Context!16371 (exprs!8685 List!71741)) )
))
(declare-fun lt!2614492 () (InoxSet Context!16370))

(declare-fun lt!2614489 () (InoxSet Context!16370))

(declare-fun ct1!282 () Context!16370)

(declare-fun derivationStepZipperDown!3071 (Regex!19245 Context!16370 C!38764) (InoxSet Context!16370))

(assert (=> b!7363880 (= res!2972378 (= lt!2614489 ((_ map or) lt!2614492 (derivationStepZipperDown!3071 (regTwo!39003 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7363880 (= lt!2614492 (derivationStepZipperDown!3071 (regOne!39003 r1!2370) ct1!282 c!10362))))

(declare-fun b!7363881 () Bool)

(declare-fun e!4408832 () Bool)

(declare-fun tp!2092711 () Bool)

(assert (=> b!7363881 (= e!4408832 tp!2092711)))

(declare-fun b!7363882 () Bool)

(declare-fun e!4408833 () Bool)

(declare-fun e!4408839 () Bool)

(assert (=> b!7363882 (= e!4408833 e!4408839)))

(declare-fun res!2972381 () Bool)

(assert (=> b!7363882 (=> (not res!2972381) (not e!4408839))))

(declare-fun cWitness!61 () Context!16370)

(assert (=> b!7363882 (= res!2972381 (select lt!2614489 cWitness!61))))

(assert (=> b!7363882 (= lt!2614489 (derivationStepZipperDown!3071 r1!2370 ct1!282 c!10362))))

(declare-fun b!7363883 () Bool)

(declare-fun e!4408834 () Bool)

(assert (=> b!7363883 (= e!4408838 (not e!4408834))))

(declare-fun res!2972382 () Bool)

(assert (=> b!7363883 (=> res!2972382 e!4408834)))

(declare-fun lt!2614486 () Context!16370)

(declare-fun lt!2614491 () (InoxSet Context!16370))

(assert (=> b!7363883 (= res!2972382 (not (select lt!2614491 lt!2614486)))))

(declare-datatypes ((Unit!165439 0))(
  ( (Unit!165440) )
))
(declare-fun lt!2614488 () Unit!165439)

(declare-fun ct2!378 () Context!16370)

(declare-fun lambda!457597 () Int)

(declare-fun lemmaConcatPreservesForall!1918 (List!71741 List!71741 Int) Unit!165439)

(assert (=> b!7363883 (= lt!2614488 (lemmaConcatPreservesForall!1918 (exprs!8685 cWitness!61) (exprs!8685 ct2!378) lambda!457597))))

(declare-fun lt!2614493 () Context!16370)

(assert (=> b!7363883 (select (derivationStepZipperDown!3071 (regOne!39003 r1!2370) lt!2614493 c!10362) lt!2614486)))

(declare-fun ++!17061 (List!71741 List!71741) List!71741)

(assert (=> b!7363883 (= lt!2614486 (Context!16371 (++!17061 (exprs!8685 cWitness!61) (exprs!8685 ct2!378))))))

(declare-fun lt!2614490 () Unit!165439)

(assert (=> b!7363883 (= lt!2614490 (lemmaConcatPreservesForall!1918 (exprs!8685 ct1!282) (exprs!8685 ct2!378) lambda!457597))))

(declare-fun lt!2614485 () Unit!165439)

(assert (=> b!7363883 (= lt!2614485 (lemmaConcatPreservesForall!1918 (exprs!8685 cWitness!61) (exprs!8685 ct2!378) lambda!457597))))

(declare-fun lt!2614484 () Unit!165439)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!120 (Regex!19245 Context!16370 Context!16370 Context!16370 C!38764) Unit!165439)

(assert (=> b!7363883 (= lt!2614484 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!120 (regOne!39003 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7363884 () Bool)

(assert (=> b!7363884 (= e!4408834 true)))

(declare-fun lt!2614487 () Unit!165439)

(assert (=> b!7363884 (= lt!2614487 (lemmaConcatPreservesForall!1918 (exprs!8685 ct1!282) (exprs!8685 ct2!378) lambda!457597))))

(declare-fun lt!2614482 () Unit!165439)

(assert (=> b!7363884 (= lt!2614482 (lemmaConcatPreservesForall!1918 (exprs!8685 cWitness!61) (exprs!8685 ct2!378) lambda!457597))))

(declare-fun b!7363885 () Bool)

(declare-fun tp_is_empty!48735 () Bool)

(assert (=> b!7363885 (= e!4408840 tp_is_empty!48735)))

(declare-fun b!7363886 () Bool)

(declare-fun tp!2092712 () Bool)

(declare-fun tp!2092715 () Bool)

(assert (=> b!7363886 (= e!4408840 (and tp!2092712 tp!2092715))))

(declare-fun b!7363887 () Bool)

(declare-fun e!4408836 () Bool)

(declare-fun tp!2092714 () Bool)

(assert (=> b!7363887 (= e!4408836 tp!2092714)))

(declare-fun b!7363888 () Bool)

(declare-fun res!2972379 () Bool)

(assert (=> b!7363888 (=> (not res!2972379) (not e!4408838))))

(assert (=> b!7363888 (= res!2972379 (select lt!2614492 cWitness!61))))

(declare-fun res!2972377 () Bool)

(assert (=> start!718924 (=> (not res!2972377) (not e!4408833))))

(declare-fun validRegex!9841 (Regex!19245) Bool)

(assert (=> start!718924 (= res!2972377 (validRegex!9841 r1!2370))))

(assert (=> start!718924 e!4408833))

(assert (=> start!718924 tp_is_empty!48735))

(declare-fun inv!91452 (Context!16370) Bool)

(assert (=> start!718924 (and (inv!91452 cWitness!61) e!4408832)))

(assert (=> start!718924 (and (inv!91452 ct1!282) e!4408836)))

(assert (=> start!718924 e!4408840))

(declare-fun e!4408837 () Bool)

(assert (=> start!718924 (and (inv!91452 ct2!378) e!4408837)))

(declare-fun b!7363889 () Bool)

(assert (=> b!7363889 (= e!4408839 e!4408835)))

(declare-fun res!2972380 () Bool)

(assert (=> b!7363889 (=> (not res!2972380) (not e!4408835))))

(get-info :version)

(assert (=> b!7363889 (= res!2972380 (and (or (not ((_ is ElementMatch!19245) r1!2370)) (not (= c!10362 (c!1368345 r1!2370)))) ((_ is Union!19245) r1!2370)))))

(assert (=> b!7363889 (= lt!2614491 (derivationStepZipperDown!3071 r1!2370 lt!2614493 c!10362))))

(assert (=> b!7363889 (= lt!2614493 (Context!16371 (++!17061 (exprs!8685 ct1!282) (exprs!8685 ct2!378))))))

(declare-fun lt!2614483 () Unit!165439)

(assert (=> b!7363889 (= lt!2614483 (lemmaConcatPreservesForall!1918 (exprs!8685 ct1!282) (exprs!8685 ct2!378) lambda!457597))))

(declare-fun b!7363890 () Bool)

(declare-fun tp!2092713 () Bool)

(assert (=> b!7363890 (= e!4408840 tp!2092713)))

(declare-fun b!7363891 () Bool)

(declare-fun tp!2092716 () Bool)

(assert (=> b!7363891 (= e!4408837 tp!2092716)))

(assert (= (and start!718924 res!2972377) b!7363882))

(assert (= (and b!7363882 res!2972381) b!7363889))

(assert (= (and b!7363889 res!2972380) b!7363880))

(assert (= (and b!7363880 res!2972378) b!7363888))

(assert (= (and b!7363888 res!2972379) b!7363883))

(assert (= (and b!7363883 (not res!2972382)) b!7363884))

(assert (= start!718924 b!7363881))

(assert (= start!718924 b!7363887))

(assert (= (and start!718924 ((_ is ElementMatch!19245) r1!2370)) b!7363885))

(assert (= (and start!718924 ((_ is Concat!28090) r1!2370)) b!7363886))

(assert (= (and start!718924 ((_ is Star!19245) r1!2370)) b!7363890))

(assert (= (and start!718924 ((_ is Union!19245) r1!2370)) b!7363879))

(assert (= start!718924 b!7363891))

(declare-fun m!8020306 () Bool)

(assert (=> start!718924 m!8020306))

(declare-fun m!8020308 () Bool)

(assert (=> start!718924 m!8020308))

(declare-fun m!8020310 () Bool)

(assert (=> start!718924 m!8020310))

(declare-fun m!8020312 () Bool)

(assert (=> start!718924 m!8020312))

(declare-fun m!8020314 () Bool)

(assert (=> b!7363882 m!8020314))

(declare-fun m!8020316 () Bool)

(assert (=> b!7363882 m!8020316))

(declare-fun m!8020318 () Bool)

(assert (=> b!7363889 m!8020318))

(declare-fun m!8020320 () Bool)

(assert (=> b!7363889 m!8020320))

(declare-fun m!8020322 () Bool)

(assert (=> b!7363889 m!8020322))

(assert (=> b!7363884 m!8020322))

(declare-fun m!8020324 () Bool)

(assert (=> b!7363884 m!8020324))

(declare-fun m!8020326 () Bool)

(assert (=> b!7363883 m!8020326))

(assert (=> b!7363883 m!8020322))

(assert (=> b!7363883 m!8020324))

(declare-fun m!8020328 () Bool)

(assert (=> b!7363883 m!8020328))

(declare-fun m!8020330 () Bool)

(assert (=> b!7363883 m!8020330))

(declare-fun m!8020332 () Bool)

(assert (=> b!7363883 m!8020332))

(assert (=> b!7363883 m!8020324))

(declare-fun m!8020334 () Bool)

(assert (=> b!7363883 m!8020334))

(declare-fun m!8020336 () Bool)

(assert (=> b!7363880 m!8020336))

(declare-fun m!8020338 () Bool)

(assert (=> b!7363880 m!8020338))

(declare-fun m!8020340 () Bool)

(assert (=> b!7363888 m!8020340))

(check-sat (not b!7363889) (not b!7363879) (not b!7363881) (not b!7363886) (not b!7363882) tp_is_empty!48735 (not b!7363880) (not b!7363884) (not b!7363883) (not b!7363890) (not start!718924) (not b!7363887) (not b!7363891))
(check-sat)
