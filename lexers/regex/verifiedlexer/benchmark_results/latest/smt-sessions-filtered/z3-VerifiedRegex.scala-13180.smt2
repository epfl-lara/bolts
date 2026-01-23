; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!718952 () Bool)

(assert start!718952)

(declare-fun res!2972506 () Bool)

(declare-fun e!4409096 () Bool)

(assert (=> start!718952 (=> (not res!2972506) (not e!4409096))))

(declare-datatypes ((C!38772 0))(
  ( (C!38773 (val!29746 Int)) )
))
(declare-datatypes ((Regex!19249 0))(
  ( (ElementMatch!19249 (c!1368431 C!38772)) (Concat!28094 (regOne!39010 Regex!19249) (regTwo!39010 Regex!19249)) (EmptyExpr!19249) (Star!19249 (reg!19578 Regex!19249)) (EmptyLang!19249) (Union!19249 (regOne!39011 Regex!19249) (regTwo!39011 Regex!19249)) )
))
(declare-fun r1!2370 () Regex!19249)

(declare-fun validRegex!9845 (Regex!19249) Bool)

(assert (=> start!718952 (= res!2972506 (validRegex!9845 r1!2370))))

(assert (=> start!718952 e!4409096))

(declare-fun tp_is_empty!48743 () Bool)

(assert (=> start!718952 tp_is_empty!48743))

(declare-datatypes ((List!71745 0))(
  ( (Nil!71621) (Cons!71621 (h!78069 Regex!19249) (t!386194 List!71745)) )
))
(declare-datatypes ((Context!16378 0))(
  ( (Context!16379 (exprs!8689 List!71745)) )
))
(declare-fun cWitness!61 () Context!16378)

(declare-fun e!4409100 () Bool)

(declare-fun inv!91462 (Context!16378) Bool)

(assert (=> start!718952 (and (inv!91462 cWitness!61) e!4409100)))

(declare-fun ct1!282 () Context!16378)

(declare-fun e!4409098 () Bool)

(assert (=> start!718952 (and (inv!91462 ct1!282) e!4409098)))

(declare-fun e!4409095 () Bool)

(assert (=> start!718952 e!4409095))

(declare-fun ct2!378 () Context!16378)

(declare-fun e!4409094 () Bool)

(assert (=> start!718952 (and (inv!91462 ct2!378) e!4409094)))

(declare-fun b!7364326 () Bool)

(declare-fun res!2972504 () Bool)

(declare-fun e!4409093 () Bool)

(assert (=> b!7364326 (=> (not res!2972504) (not e!4409093))))

(assert (=> b!7364326 (= res!2972504 (validRegex!9845 (regTwo!39011 r1!2370)))))

(declare-fun b!7364327 () Bool)

(declare-fun e!4409097 () Bool)

(declare-fun e!4409099 () Bool)

(assert (=> b!7364327 (= e!4409097 e!4409099)))

(declare-fun res!2972503 () Bool)

(assert (=> b!7364327 (=> (not res!2972503) (not e!4409099))))

(declare-fun c!10362 () C!38772)

(get-info :version)

(assert (=> b!7364327 (= res!2972503 (and (or (not ((_ is ElementMatch!19249) r1!2370)) (not (= c!10362 (c!1368431 r1!2370)))) ((_ is Union!19249) r1!2370)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2614558 () (InoxSet Context!16378))

(declare-fun derivationStepZipperDown!3075 (Regex!19249 Context!16378 C!38772) (InoxSet Context!16378))

(declare-fun ++!17065 (List!71745 List!71745) List!71745)

(assert (=> b!7364327 (= lt!2614558 (derivationStepZipperDown!3075 r1!2370 (Context!16379 (++!17065 (exprs!8689 ct1!282) (exprs!8689 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165447 0))(
  ( (Unit!165448) )
))
(declare-fun lt!2614556 () Unit!165447)

(declare-fun lambda!457619 () Int)

(declare-fun lemmaConcatPreservesForall!1922 (List!71745 List!71745 Int) Unit!165447)

(assert (=> b!7364327 (= lt!2614556 (lemmaConcatPreservesForall!1922 (exprs!8689 ct1!282) (exprs!8689 ct2!378) lambda!457619))))

(declare-fun b!7364328 () Bool)

(assert (=> b!7364328 (= e!4409096 e!4409097)))

(declare-fun res!2972502 () Bool)

(assert (=> b!7364328 (=> (not res!2972502) (not e!4409097))))

(declare-fun lt!2614555 () (InoxSet Context!16378))

(assert (=> b!7364328 (= res!2972502 (select lt!2614555 cWitness!61))))

(assert (=> b!7364328 (= lt!2614555 (derivationStepZipperDown!3075 r1!2370 ct1!282 c!10362))))

(declare-fun b!7364329 () Bool)

(declare-fun tp!2092897 () Bool)

(assert (=> b!7364329 (= e!4409094 tp!2092897)))

(declare-fun b!7364330 () Bool)

(declare-fun tp!2092902 () Bool)

(assert (=> b!7364330 (= e!4409098 tp!2092902)))

(declare-fun b!7364331 () Bool)

(declare-fun tp!2092896 () Bool)

(assert (=> b!7364331 (= e!4409100 tp!2092896)))

(declare-fun b!7364332 () Bool)

(assert (=> b!7364332 (= e!4409095 tp_is_empty!48743)))

(declare-fun b!7364333 () Bool)

(declare-fun tp!2092901 () Bool)

(declare-fun tp!2092898 () Bool)

(assert (=> b!7364333 (= e!4409095 (and tp!2092901 tp!2092898))))

(declare-fun b!7364334 () Bool)

(assert (=> b!7364334 (= e!4409099 e!4409093)))

(declare-fun res!2972505 () Bool)

(assert (=> b!7364334 (=> (not res!2972505) (not e!4409093))))

(declare-fun lt!2614557 () (InoxSet Context!16378))

(declare-fun lt!2614559 () (InoxSet Context!16378))

(assert (=> b!7364334 (= res!2972505 (and (= lt!2614555 ((_ map or) lt!2614557 lt!2614559)) (not (select lt!2614557 cWitness!61))))))

(assert (=> b!7364334 (= lt!2614559 (derivationStepZipperDown!3075 (regTwo!39011 r1!2370) ct1!282 c!10362))))

(assert (=> b!7364334 (= lt!2614557 (derivationStepZipperDown!3075 (regOne!39011 r1!2370) ct1!282 c!10362))))

(declare-fun b!7364335 () Bool)

(declare-fun tp!2092899 () Bool)

(assert (=> b!7364335 (= e!4409095 tp!2092899)))

(declare-fun b!7364336 () Bool)

(declare-fun tp!2092900 () Bool)

(declare-fun tp!2092903 () Bool)

(assert (=> b!7364336 (= e!4409095 (and tp!2092900 tp!2092903))))

(declare-fun b!7364337 () Bool)

(assert (=> b!7364337 (= e!4409093 (not (select lt!2614559 cWitness!61)))))

(assert (= (and start!718952 res!2972506) b!7364328))

(assert (= (and b!7364328 res!2972502) b!7364327))

(assert (= (and b!7364327 res!2972503) b!7364334))

(assert (= (and b!7364334 res!2972505) b!7364326))

(assert (= (and b!7364326 res!2972504) b!7364337))

(assert (= start!718952 b!7364331))

(assert (= start!718952 b!7364330))

(assert (= (and start!718952 ((_ is ElementMatch!19249) r1!2370)) b!7364332))

(assert (= (and start!718952 ((_ is Concat!28094) r1!2370)) b!7364333))

(assert (= (and start!718952 ((_ is Star!19249) r1!2370)) b!7364335))

(assert (= (and start!718952 ((_ is Union!19249) r1!2370)) b!7364336))

(assert (= start!718952 b!7364329))

(declare-fun m!8020566 () Bool)

(assert (=> b!7364328 m!8020566))

(declare-fun m!8020568 () Bool)

(assert (=> b!7364328 m!8020568))

(declare-fun m!8020570 () Bool)

(assert (=> b!7364334 m!8020570))

(declare-fun m!8020572 () Bool)

(assert (=> b!7364334 m!8020572))

(declare-fun m!8020574 () Bool)

(assert (=> b!7364334 m!8020574))

(declare-fun m!8020576 () Bool)

(assert (=> b!7364327 m!8020576))

(declare-fun m!8020578 () Bool)

(assert (=> b!7364327 m!8020578))

(declare-fun m!8020580 () Bool)

(assert (=> b!7364327 m!8020580))

(declare-fun m!8020582 () Bool)

(assert (=> start!718952 m!8020582))

(declare-fun m!8020584 () Bool)

(assert (=> start!718952 m!8020584))

(declare-fun m!8020586 () Bool)

(assert (=> start!718952 m!8020586))

(declare-fun m!8020588 () Bool)

(assert (=> start!718952 m!8020588))

(declare-fun m!8020590 () Bool)

(assert (=> b!7364337 m!8020590))

(declare-fun m!8020592 () Bool)

(assert (=> b!7364326 m!8020592))

(check-sat (not b!7364326) (not b!7364329) tp_is_empty!48743 (not b!7364336) (not b!7364331) (not b!7364333) (not b!7364328) (not b!7364334) (not start!718952) (not b!7364335) (not b!7364330) (not b!7364327))
(check-sat)
