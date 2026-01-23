; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!719900 () Bool)

(assert start!719900)

(declare-fun b!7378488 () Bool)

(declare-fun e!4416814 () Bool)

(declare-fun e!4416820 () Bool)

(assert (=> b!7378488 (= e!4416814 e!4416820)))

(declare-fun res!2976316 () Bool)

(assert (=> b!7378488 (=> (not res!2976316) (not e!4416820))))

(declare-datatypes ((C!38896 0))(
  ( (C!38897 (val!29808 Int)) )
))
(declare-datatypes ((Regex!19311 0))(
  ( (ElementMatch!19311 (c!1371469 C!38896)) (Concat!28156 (regOne!39134 Regex!19311) (regTwo!39134 Regex!19311)) (EmptyExpr!19311) (Star!19311 (reg!19640 Regex!19311)) (EmptyLang!19311) (Union!19311 (regOne!39135 Regex!19311) (regTwo!39135 Regex!19311)) )
))
(declare-fun r1!2370 () Regex!19311)

(declare-fun c!10362 () C!38896)

(get-info :version)

(assert (=> b!7378488 (= res!2976316 (and (or (not ((_ is ElementMatch!19311) r1!2370)) (not (= c!10362 (c!1371469 r1!2370)))) (not ((_ is Union!19311) r1!2370))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!71807 0))(
  ( (Nil!71683) (Cons!71683 (h!78131 Regex!19311) (t!386292 List!71807)) )
))
(declare-datatypes ((Context!16502 0))(
  ( (Context!16503 (exprs!8751 List!71807)) )
))
(declare-fun lt!2616696 () (InoxSet Context!16502))

(declare-fun ct1!282 () Context!16502)

(declare-fun ct2!378 () Context!16502)

(declare-fun derivationStepZipperDown!3137 (Regex!19311 Context!16502 C!38896) (InoxSet Context!16502))

(declare-fun ++!17127 (List!71807 List!71807) List!71807)

(assert (=> b!7378488 (= lt!2616696 (derivationStepZipperDown!3137 r1!2370 (Context!16503 (++!17127 (exprs!8751 ct1!282) (exprs!8751 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165571 0))(
  ( (Unit!165572) )
))
(declare-fun lt!2616697 () Unit!165571)

(declare-fun lambda!458465 () Int)

(declare-fun lemmaConcatPreservesForall!1984 (List!71807 List!71807 Int) Unit!165571)

(assert (=> b!7378488 (= lt!2616697 (lemmaConcatPreservesForall!1984 (exprs!8751 ct1!282) (exprs!8751 ct2!378) lambda!458465))))

(declare-fun b!7378489 () Bool)

(declare-fun e!4416812 () Bool)

(declare-fun tp!2098301 () Bool)

(declare-fun tp!2098298 () Bool)

(assert (=> b!7378489 (= e!4416812 (and tp!2098301 tp!2098298))))

(declare-fun b!7378490 () Bool)

(declare-fun e!4416811 () Bool)

(declare-fun tp!2098299 () Bool)

(assert (=> b!7378490 (= e!4416811 tp!2098299)))

(declare-fun b!7378491 () Bool)

(declare-fun tp!2098297 () Bool)

(declare-fun tp!2098303 () Bool)

(assert (=> b!7378491 (= e!4416812 (and tp!2098297 tp!2098303))))

(declare-fun b!7378492 () Bool)

(declare-fun e!4416817 () Bool)

(assert (=> b!7378492 (= e!4416820 e!4416817)))

(declare-fun res!2976312 () Bool)

(assert (=> b!7378492 (=> (not res!2976312) (not e!4416817))))

(declare-fun lt!2616702 () (InoxSet Context!16502))

(declare-fun lt!2616694 () Context!16502)

(assert (=> b!7378492 (= res!2976312 (= lt!2616702 (derivationStepZipperDown!3137 (regOne!39134 r1!2370) lt!2616694 c!10362)))))

(declare-fun lt!2616692 () List!71807)

(assert (=> b!7378492 (= lt!2616694 (Context!16503 lt!2616692))))

(declare-fun $colon$colon!3293 (List!71807 Regex!19311) List!71807)

(assert (=> b!7378492 (= lt!2616692 ($colon$colon!3293 (exprs!8751 ct1!282) (regTwo!39134 r1!2370)))))

(declare-fun b!7378494 () Bool)

(declare-fun e!4416813 () Bool)

(assert (=> b!7378494 (= e!4416817 (not e!4416813))))

(declare-fun res!2976314 () Bool)

(assert (=> b!7378494 (=> res!2976314 e!4416813)))

(declare-fun lt!2616698 () Context!16502)

(assert (=> b!7378494 (= res!2976314 (not (select lt!2616696 lt!2616698)))))

(declare-fun cWitness!61 () Context!16502)

(declare-fun lt!2616699 () Unit!165571)

(assert (=> b!7378494 (= lt!2616699 (lemmaConcatPreservesForall!1984 (exprs!8751 cWitness!61) (exprs!8751 ct2!378) lambda!458465))))

(assert (=> b!7378494 (select (derivationStepZipperDown!3137 (regOne!39134 r1!2370) (Context!16503 (++!17127 lt!2616692 (exprs!8751 ct2!378))) c!10362) lt!2616698)))

(assert (=> b!7378494 (= lt!2616698 (Context!16503 (++!17127 (exprs!8751 cWitness!61) (exprs!8751 ct2!378))))))

(declare-fun lt!2616700 () Unit!165571)

(assert (=> b!7378494 (= lt!2616700 (lemmaConcatPreservesForall!1984 lt!2616692 (exprs!8751 ct2!378) lambda!458465))))

(declare-fun lt!2616693 () Unit!165571)

(assert (=> b!7378494 (= lt!2616693 (lemmaConcatPreservesForall!1984 (exprs!8751 cWitness!61) (exprs!8751 ct2!378) lambda!458465))))

(declare-fun lt!2616701 () Unit!165571)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!152 (Regex!19311 Context!16502 Context!16502 Context!16502 C!38896) Unit!165571)

(assert (=> b!7378494 (= lt!2616701 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!152 (regOne!39134 r1!2370) lt!2616694 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7378495 () Bool)

(declare-fun res!2976310 () Bool)

(assert (=> b!7378495 (=> (not res!2976310) (not e!4416820))))

(declare-fun e!4416819 () Bool)

(assert (=> b!7378495 (= res!2976310 e!4416819)))

(declare-fun res!2976313 () Bool)

(assert (=> b!7378495 (=> res!2976313 e!4416819)))

(assert (=> b!7378495 (= res!2976313 (not ((_ is Concat!28156) r1!2370)))))

(declare-fun b!7378496 () Bool)

(declare-fun e!4416816 () Bool)

(declare-fun tp!2098302 () Bool)

(assert (=> b!7378496 (= e!4416816 tp!2098302)))

(declare-fun b!7378497 () Bool)

(declare-fun nullable!8387 (Regex!19311) Bool)

(assert (=> b!7378497 (= e!4416819 (not (nullable!8387 (regOne!39134 r1!2370))))))

(declare-fun b!7378498 () Bool)

(declare-fun e!4416815 () Bool)

(declare-fun tp!2098296 () Bool)

(assert (=> b!7378498 (= e!4416815 tp!2098296)))

(declare-fun b!7378499 () Bool)

(declare-fun tp_is_empty!48867 () Bool)

(assert (=> b!7378499 (= e!4416812 tp_is_empty!48867)))

(declare-fun b!7378500 () Bool)

(declare-fun res!2976311 () Bool)

(assert (=> b!7378500 (=> (not res!2976311) (not e!4416820))))

(assert (=> b!7378500 (= res!2976311 ((_ is Concat!28156) r1!2370))))

(declare-fun b!7378501 () Bool)

(declare-fun e!4416818 () Bool)

(assert (=> b!7378501 (= e!4416818 e!4416814)))

(declare-fun res!2976318 () Bool)

(assert (=> b!7378501 (=> (not res!2976318) (not e!4416814))))

(assert (=> b!7378501 (= res!2976318 (select lt!2616702 cWitness!61))))

(assert (=> b!7378501 (= lt!2616702 (derivationStepZipperDown!3137 r1!2370 ct1!282 c!10362))))

(declare-fun b!7378502 () Bool)

(declare-fun tp!2098300 () Bool)

(assert (=> b!7378502 (= e!4416812 tp!2098300)))

(declare-fun b!7378503 () Bool)

(assert (=> b!7378503 (= e!4416813 true)))

(declare-fun lt!2616695 () Unit!165571)

(assert (=> b!7378503 (= lt!2616695 (lemmaConcatPreservesForall!1984 (exprs!8751 ct1!282) (exprs!8751 ct2!378) lambda!458465))))

(declare-fun lt!2616703 () Unit!165571)

(assert (=> b!7378503 (= lt!2616703 (lemmaConcatPreservesForall!1984 (exprs!8751 cWitness!61) (exprs!8751 ct2!378) lambda!458465))))

(declare-fun b!7378493 () Bool)

(declare-fun res!2976315 () Bool)

(assert (=> b!7378493 (=> (not res!2976315) (not e!4416820))))

(declare-fun validRegex!9907 (Regex!19311) Bool)

(assert (=> b!7378493 (= res!2976315 (validRegex!9907 (regTwo!39134 r1!2370)))))

(declare-fun res!2976317 () Bool)

(assert (=> start!719900 (=> (not res!2976317) (not e!4416818))))

(assert (=> start!719900 (= res!2976317 (validRegex!9907 r1!2370))))

(assert (=> start!719900 e!4416818))

(assert (=> start!719900 tp_is_empty!48867))

(declare-fun inv!91617 (Context!16502) Bool)

(assert (=> start!719900 (and (inv!91617 cWitness!61) e!4416816)))

(assert (=> start!719900 (and (inv!91617 ct1!282) e!4416811)))

(assert (=> start!719900 e!4416812))

(assert (=> start!719900 (and (inv!91617 ct2!378) e!4416815)))

(assert (= (and start!719900 res!2976317) b!7378501))

(assert (= (and b!7378501 res!2976318) b!7378488))

(assert (= (and b!7378488 res!2976316) b!7378495))

(assert (= (and b!7378495 (not res!2976313)) b!7378497))

(assert (= (and b!7378495 res!2976310) b!7378500))

(assert (= (and b!7378500 res!2976311) b!7378493))

(assert (= (and b!7378493 res!2976315) b!7378492))

(assert (= (and b!7378492 res!2976312) b!7378494))

(assert (= (and b!7378494 (not res!2976314)) b!7378503))

(assert (= start!719900 b!7378496))

(assert (= start!719900 b!7378490))

(assert (= (and start!719900 ((_ is ElementMatch!19311) r1!2370)) b!7378499))

(assert (= (and start!719900 ((_ is Concat!28156) r1!2370)) b!7378491))

(assert (= (and start!719900 ((_ is Star!19311) r1!2370)) b!7378502))

(assert (= (and start!719900 ((_ is Union!19311) r1!2370)) b!7378489))

(assert (= start!719900 b!7378498))

(declare-fun m!8029612 () Bool)

(assert (=> b!7378494 m!8029612))

(assert (=> b!7378494 m!8029612))

(declare-fun m!8029614 () Bool)

(assert (=> b!7378494 m!8029614))

(declare-fun m!8029616 () Bool)

(assert (=> b!7378494 m!8029616))

(declare-fun m!8029618 () Bool)

(assert (=> b!7378494 m!8029618))

(declare-fun m!8029620 () Bool)

(assert (=> b!7378494 m!8029620))

(declare-fun m!8029622 () Bool)

(assert (=> b!7378494 m!8029622))

(declare-fun m!8029624 () Bool)

(assert (=> b!7378494 m!8029624))

(declare-fun m!8029626 () Bool)

(assert (=> b!7378494 m!8029626))

(declare-fun m!8029628 () Bool)

(assert (=> b!7378488 m!8029628))

(declare-fun m!8029630 () Bool)

(assert (=> b!7378488 m!8029630))

(declare-fun m!8029632 () Bool)

(assert (=> b!7378488 m!8029632))

(declare-fun m!8029634 () Bool)

(assert (=> start!719900 m!8029634))

(declare-fun m!8029636 () Bool)

(assert (=> start!719900 m!8029636))

(declare-fun m!8029638 () Bool)

(assert (=> start!719900 m!8029638))

(declare-fun m!8029640 () Bool)

(assert (=> start!719900 m!8029640))

(declare-fun m!8029642 () Bool)

(assert (=> b!7378492 m!8029642))

(declare-fun m!8029644 () Bool)

(assert (=> b!7378492 m!8029644))

(declare-fun m!8029646 () Bool)

(assert (=> b!7378501 m!8029646))

(declare-fun m!8029648 () Bool)

(assert (=> b!7378501 m!8029648))

(assert (=> b!7378503 m!8029632))

(assert (=> b!7378503 m!8029612))

(declare-fun m!8029650 () Bool)

(assert (=> b!7378493 m!8029650))

(declare-fun m!8029652 () Bool)

(assert (=> b!7378497 m!8029652))

(check-sat tp_is_empty!48867 (not b!7378501) (not b!7378488) (not b!7378503) (not b!7378490) (not b!7378491) (not start!719900) (not b!7378493) (not b!7378489) (not b!7378498) (not b!7378496) (not b!7378492) (not b!7378502) (not b!7378497) (not b!7378494))
(check-sat)
