; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!717572 () Bool)

(assert start!717572)

(declare-fun b!7347868 () Bool)

(declare-fun res!2967652 () Bool)

(declare-fun e!4399703 () Bool)

(assert (=> b!7347868 (=> (not res!2967652) (not e!4399703))))

(declare-datatypes ((C!38576 0))(
  ( (C!38577 (val!29648 Int)) )
))
(declare-datatypes ((Regex!19151 0))(
  ( (ElementMatch!19151 (c!1365029 C!38576)) (Concat!27996 (regOne!38814 Regex!19151) (regTwo!38814 Regex!19151)) (EmptyExpr!19151) (Star!19151 (reg!19480 Regex!19151)) (EmptyLang!19151) (Union!19151 (regOne!38815 Regex!19151) (regTwo!38815 Regex!19151)) )
))
(declare-fun r1!2370 () Regex!19151)

(declare-fun nullable!8242 (Regex!19151) Bool)

(assert (=> b!7347868 (= res!2967652 (nullable!8242 (regOne!38814 r1!2370)))))

(declare-fun b!7347869 () Bool)

(declare-fun e!4399699 () Bool)

(declare-fun tp!2086866 () Bool)

(declare-fun tp!2086869 () Bool)

(assert (=> b!7347869 (= e!4399699 (and tp!2086866 tp!2086869))))

(declare-fun b!7347870 () Bool)

(declare-fun e!4399702 () Bool)

(declare-fun tp!2086870 () Bool)

(assert (=> b!7347870 (= e!4399702 tp!2086870)))

(declare-fun res!2967653 () Bool)

(declare-fun e!4399704 () Bool)

(assert (=> start!717572 (=> (not res!2967653) (not e!4399704))))

(declare-fun validRegex!9747 (Regex!19151) Bool)

(assert (=> start!717572 (= res!2967653 (validRegex!9747 r1!2370))))

(assert (=> start!717572 e!4399704))

(declare-fun tp_is_empty!48547 () Bool)

(assert (=> start!717572 tp_is_empty!48547))

(declare-datatypes ((List!71647 0))(
  ( (Nil!71523) (Cons!71523 (h!77971 Regex!19151) (t!386054 List!71647)) )
))
(declare-datatypes ((Context!16182 0))(
  ( (Context!16183 (exprs!8591 List!71647)) )
))
(declare-fun cWitness!61 () Context!16182)

(declare-fun e!4399700 () Bool)

(declare-fun inv!91217 (Context!16182) Bool)

(assert (=> start!717572 (and (inv!91217 cWitness!61) e!4399700)))

(declare-fun ct1!282 () Context!16182)

(assert (=> start!717572 (and (inv!91217 ct1!282) e!4399702)))

(assert (=> start!717572 e!4399699))

(declare-fun ct2!378 () Context!16182)

(declare-fun e!4399701 () Bool)

(assert (=> start!717572 (and (inv!91217 ct2!378) e!4399701)))

(declare-fun b!7347871 () Bool)

(declare-fun res!2967655 () Bool)

(assert (=> b!7347871 (=> (not res!2967655) (not e!4399704))))

(declare-fun c!10362 () C!38576)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperDown!2977 (Regex!19151 Context!16182 C!38576) (InoxSet Context!16182))

(assert (=> b!7347871 (= res!2967655 (select (derivationStepZipperDown!2977 r1!2370 ct1!282 c!10362) cWitness!61))))

(declare-fun b!7347872 () Bool)

(declare-fun tp!2086871 () Bool)

(assert (=> b!7347872 (= e!4399701 tp!2086871)))

(declare-fun b!7347873 () Bool)

(declare-fun tp!2086867 () Bool)

(declare-fun tp!2086865 () Bool)

(assert (=> b!7347873 (= e!4399699 (and tp!2086867 tp!2086865))))

(declare-fun b!7347874 () Bool)

(assert (=> b!7347874 (= e!4399704 e!4399703)))

(declare-fun res!2967654 () Bool)

(assert (=> b!7347874 (=> (not res!2967654) (not e!4399703))))

(get-info :version)

(assert (=> b!7347874 (= res!2967654 (and (or (not ((_ is ElementMatch!19151) r1!2370)) (not (= c!10362 (c!1365029 r1!2370)))) (not ((_ is Union!19151) r1!2370)) ((_ is Concat!27996) r1!2370)))))

(declare-fun lt!2611563 () (InoxSet Context!16182))

(declare-fun ++!16969 (List!71647 List!71647) List!71647)

(assert (=> b!7347874 (= lt!2611563 (derivationStepZipperDown!2977 r1!2370 (Context!16183 (++!16969 (exprs!8591 ct1!282) (exprs!8591 ct2!378))) c!10362))))

(declare-fun lambda!456269 () Int)

(declare-datatypes ((Unit!165255 0))(
  ( (Unit!165256) )
))
(declare-fun lt!2611561 () Unit!165255)

(declare-fun lemmaConcatPreservesForall!1826 (List!71647 List!71647 Int) Unit!165255)

(assert (=> b!7347874 (= lt!2611561 (lemmaConcatPreservesForall!1826 (exprs!8591 ct1!282) (exprs!8591 ct2!378) lambda!456269))))

(declare-fun b!7347875 () Bool)

(assert (=> b!7347875 (= e!4399703 false)))

(declare-fun lt!2611562 () (InoxSet Context!16182))

(assert (=> b!7347875 (= lt!2611562 (derivationStepZipperDown!2977 (regTwo!38814 r1!2370) ct1!282 c!10362))))

(declare-fun lt!2611560 () (InoxSet Context!16182))

(declare-fun $colon$colon!3149 (List!71647 Regex!19151) List!71647)

(assert (=> b!7347875 (= lt!2611560 (derivationStepZipperDown!2977 (regOne!38814 r1!2370) (Context!16183 ($colon$colon!3149 (exprs!8591 ct1!282) (regTwo!38814 r1!2370))) c!10362))))

(declare-fun b!7347876 () Bool)

(declare-fun tp!2086868 () Bool)

(assert (=> b!7347876 (= e!4399699 tp!2086868)))

(declare-fun b!7347877 () Bool)

(assert (=> b!7347877 (= e!4399699 tp_is_empty!48547)))

(declare-fun b!7347878 () Bool)

(declare-fun tp!2086864 () Bool)

(assert (=> b!7347878 (= e!4399700 tp!2086864)))

(declare-fun b!7347879 () Bool)

(declare-fun res!2967656 () Bool)

(assert (=> b!7347879 (=> (not res!2967656) (not e!4399703))))

(assert (=> b!7347879 (= res!2967656 (validRegex!9747 (regTwo!38814 r1!2370)))))

(assert (= (and start!717572 res!2967653) b!7347871))

(assert (= (and b!7347871 res!2967655) b!7347874))

(assert (= (and b!7347874 res!2967654) b!7347868))

(assert (= (and b!7347868 res!2967652) b!7347879))

(assert (= (and b!7347879 res!2967656) b!7347875))

(assert (= start!717572 b!7347878))

(assert (= start!717572 b!7347870))

(assert (= (and start!717572 ((_ is ElementMatch!19151) r1!2370)) b!7347877))

(assert (= (and start!717572 ((_ is Concat!27996) r1!2370)) b!7347869))

(assert (= (and start!717572 ((_ is Star!19151) r1!2370)) b!7347876))

(assert (= (and start!717572 ((_ is Union!19151) r1!2370)) b!7347873))

(assert (= start!717572 b!7347872))

(declare-fun m!8009870 () Bool)

(assert (=> b!7347868 m!8009870))

(declare-fun m!8009872 () Bool)

(assert (=> b!7347879 m!8009872))

(declare-fun m!8009874 () Bool)

(assert (=> b!7347875 m!8009874))

(declare-fun m!8009876 () Bool)

(assert (=> b!7347875 m!8009876))

(declare-fun m!8009878 () Bool)

(assert (=> b!7347875 m!8009878))

(declare-fun m!8009880 () Bool)

(assert (=> b!7347874 m!8009880))

(declare-fun m!8009882 () Bool)

(assert (=> b!7347874 m!8009882))

(declare-fun m!8009884 () Bool)

(assert (=> b!7347874 m!8009884))

(declare-fun m!8009886 () Bool)

(assert (=> b!7347871 m!8009886))

(declare-fun m!8009888 () Bool)

(assert (=> b!7347871 m!8009888))

(declare-fun m!8009890 () Bool)

(assert (=> start!717572 m!8009890))

(declare-fun m!8009892 () Bool)

(assert (=> start!717572 m!8009892))

(declare-fun m!8009894 () Bool)

(assert (=> start!717572 m!8009894))

(declare-fun m!8009896 () Bool)

(assert (=> start!717572 m!8009896))

(check-sat (not b!7347879) (not b!7347875) tp_is_empty!48547 (not start!717572) (not b!7347872) (not b!7347869) (not b!7347871) (not b!7347874) (not b!7347868) (not b!7347870) (not b!7347876) (not b!7347878) (not b!7347873))
(check-sat)
