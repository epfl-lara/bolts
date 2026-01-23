; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!718116 () Bool)

(assert start!718116)

(declare-fun b!7353961 () Bool)

(declare-fun res!2969620 () Bool)

(declare-fun e!4403174 () Bool)

(assert (=> b!7353961 (=> (not res!2969620) (not e!4403174))))

(declare-datatypes ((C!38640 0))(
  ( (C!38641 (val!29680 Int)) )
))
(declare-datatypes ((Regex!19183 0))(
  ( (ElementMatch!19183 (c!1366297 C!38640)) (Concat!28028 (regOne!38878 Regex!19183) (regTwo!38878 Regex!19183)) (EmptyExpr!19183) (Star!19183 (reg!19512 Regex!19183)) (EmptyLang!19183) (Union!19183 (regOne!38879 Regex!19183) (regTwo!38879 Regex!19183)) )
))
(declare-fun r1!2370 () Regex!19183)

(get-info :version)

(assert (=> b!7353961 (= res!2969620 (and (not ((_ is Concat!28028) r1!2370)) ((_ is Star!19183) r1!2370)))))

(declare-fun b!7353962 () Bool)

(declare-fun e!4403172 () Bool)

(assert (=> b!7353962 (= e!4403174 e!4403172)))

(declare-fun res!2969614 () Bool)

(assert (=> b!7353962 (=> (not res!2969614) (not e!4403172))))

(declare-fun lt!2612779 () Regex!19183)

(declare-fun validRegex!9779 (Regex!19183) Bool)

(assert (=> b!7353962 (= res!2969614 (validRegex!9779 lt!2612779))))

(assert (=> b!7353962 (= lt!2612779 (Star!19183 (reg!19512 r1!2370)))))

(declare-fun b!7353963 () Bool)

(declare-fun e!4403166 () Bool)

(declare-fun tp!2088892 () Bool)

(assert (=> b!7353963 (= e!4403166 tp!2088892)))

(declare-fun res!2969618 () Bool)

(declare-fun e!4403173 () Bool)

(assert (=> start!718116 (=> (not res!2969618) (not e!4403173))))

(assert (=> start!718116 (= res!2969618 (validRegex!9779 r1!2370))))

(assert (=> start!718116 e!4403173))

(declare-fun tp_is_empty!48611 () Bool)

(assert (=> start!718116 tp_is_empty!48611))

(declare-datatypes ((List!71679 0))(
  ( (Nil!71555) (Cons!71555 (h!78003 Regex!19183) (t!386110 List!71679)) )
))
(declare-datatypes ((Context!16246 0))(
  ( (Context!16247 (exprs!8623 List!71679)) )
))
(declare-fun cWitness!61 () Context!16246)

(declare-fun e!4403168 () Bool)

(declare-fun inv!91297 (Context!16246) Bool)

(assert (=> start!718116 (and (inv!91297 cWitness!61) e!4403168)))

(declare-fun ct1!282 () Context!16246)

(declare-fun e!4403167 () Bool)

(assert (=> start!718116 (and (inv!91297 ct1!282) e!4403167)))

(assert (=> start!718116 e!4403166))

(declare-fun ct2!378 () Context!16246)

(declare-fun e!4403169 () Bool)

(assert (=> start!718116 (and (inv!91297 ct2!378) e!4403169)))

(declare-fun b!7353964 () Bool)

(declare-fun tp!2088897 () Bool)

(assert (=> b!7353964 (= e!4403169 tp!2088897)))

(declare-fun b!7353965 () Bool)

(declare-fun e!4403170 () Bool)

(assert (=> b!7353965 (= e!4403173 e!4403170)))

(declare-fun res!2969615 () Bool)

(assert (=> b!7353965 (=> (not res!2969615) (not e!4403170))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2612781 () (InoxSet Context!16246))

(assert (=> b!7353965 (= res!2969615 (select lt!2612781 cWitness!61))))

(declare-fun c!10362 () C!38640)

(declare-fun derivationStepZipperDown!3009 (Regex!19183 Context!16246 C!38640) (InoxSet Context!16246))

(assert (=> b!7353965 (= lt!2612781 (derivationStepZipperDown!3009 r1!2370 ct1!282 c!10362))))

(declare-fun b!7353966 () Bool)

(declare-fun tp!2088899 () Bool)

(assert (=> b!7353966 (= e!4403168 tp!2088899)))

(declare-fun b!7353967 () Bool)

(declare-fun tp!2088895 () Bool)

(assert (=> b!7353967 (= e!4403167 tp!2088895)))

(declare-fun b!7353968 () Bool)

(declare-fun res!2969619 () Bool)

(assert (=> b!7353968 (=> (not res!2969619) (not e!4403174))))

(declare-fun e!4403171 () Bool)

(assert (=> b!7353968 (= res!2969619 e!4403171)))

(declare-fun res!2969617 () Bool)

(assert (=> b!7353968 (=> res!2969617 e!4403171)))

(assert (=> b!7353968 (= res!2969617 (not ((_ is Concat!28028) r1!2370)))))

(declare-fun b!7353969 () Bool)

(assert (=> b!7353969 (= e!4403166 tp_is_empty!48611)))

(declare-fun b!7353970 () Bool)

(assert (=> b!7353970 (= e!4403170 e!4403174)))

(declare-fun res!2969613 () Bool)

(assert (=> b!7353970 (=> (not res!2969613) (not e!4403174))))

(assert (=> b!7353970 (= res!2969613 (and (or (not ((_ is ElementMatch!19183) r1!2370)) (not (= c!10362 (c!1366297 r1!2370)))) (not ((_ is Union!19183) r1!2370))))))

(declare-fun lt!2612780 () (InoxSet Context!16246))

(declare-fun ++!17001 (List!71679 List!71679) List!71679)

(assert (=> b!7353970 (= lt!2612780 (derivationStepZipperDown!3009 r1!2370 (Context!16247 (++!17001 (exprs!8623 ct1!282) (exprs!8623 ct2!378))) c!10362))))

(declare-fun lambda!456817 () Int)

(declare-datatypes ((Unit!165319 0))(
  ( (Unit!165320) )
))
(declare-fun lt!2612778 () Unit!165319)

(declare-fun lemmaConcatPreservesForall!1858 (List!71679 List!71679 Int) Unit!165319)

(assert (=> b!7353970 (= lt!2612778 (lemmaConcatPreservesForall!1858 (exprs!8623 ct1!282) (exprs!8623 ct2!378) lambda!456817))))

(declare-fun b!7353971 () Bool)

(declare-fun tp!2088894 () Bool)

(declare-fun tp!2088898 () Bool)

(assert (=> b!7353971 (= e!4403166 (and tp!2088894 tp!2088898))))

(declare-fun b!7353972 () Bool)

(assert (=> b!7353972 (= e!4403172 false)))

(declare-fun b!7353973 () Bool)

(declare-fun tp!2088893 () Bool)

(declare-fun tp!2088896 () Bool)

(assert (=> b!7353973 (= e!4403166 (and tp!2088893 tp!2088896))))

(declare-fun b!7353974 () Bool)

(declare-fun nullable!8274 (Regex!19183) Bool)

(assert (=> b!7353974 (= e!4403171 (not (nullable!8274 (regOne!38878 r1!2370))))))

(declare-fun b!7353975 () Bool)

(declare-fun res!2969616 () Bool)

(assert (=> b!7353975 (=> (not res!2969616) (not e!4403172))))

(declare-fun $colon$colon!3180 (List!71679 Regex!19183) List!71679)

(assert (=> b!7353975 (= res!2969616 (= lt!2612781 (derivationStepZipperDown!3009 (reg!19512 r1!2370) (Context!16247 ($colon$colon!3180 (exprs!8623 ct1!282) lt!2612779)) c!10362)))))

(assert (= (and start!718116 res!2969618) b!7353965))

(assert (= (and b!7353965 res!2969615) b!7353970))

(assert (= (and b!7353970 res!2969613) b!7353968))

(assert (= (and b!7353968 (not res!2969617)) b!7353974))

(assert (= (and b!7353968 res!2969619) b!7353961))

(assert (= (and b!7353961 res!2969620) b!7353962))

(assert (= (and b!7353962 res!2969614) b!7353975))

(assert (= (and b!7353975 res!2969616) b!7353972))

(assert (= start!718116 b!7353966))

(assert (= start!718116 b!7353967))

(assert (= (and start!718116 ((_ is ElementMatch!19183) r1!2370)) b!7353969))

(assert (= (and start!718116 ((_ is Concat!28028) r1!2370)) b!7353971))

(assert (= (and start!718116 ((_ is Star!19183) r1!2370)) b!7353963))

(assert (= (and start!718116 ((_ is Union!19183) r1!2370)) b!7353973))

(assert (= start!718116 b!7353964))

(declare-fun m!8014264 () Bool)

(assert (=> start!718116 m!8014264))

(declare-fun m!8014266 () Bool)

(assert (=> start!718116 m!8014266))

(declare-fun m!8014268 () Bool)

(assert (=> start!718116 m!8014268))

(declare-fun m!8014270 () Bool)

(assert (=> start!718116 m!8014270))

(declare-fun m!8014272 () Bool)

(assert (=> b!7353975 m!8014272))

(declare-fun m!8014274 () Bool)

(assert (=> b!7353975 m!8014274))

(declare-fun m!8014276 () Bool)

(assert (=> b!7353965 m!8014276))

(declare-fun m!8014278 () Bool)

(assert (=> b!7353965 m!8014278))

(declare-fun m!8014280 () Bool)

(assert (=> b!7353970 m!8014280))

(declare-fun m!8014282 () Bool)

(assert (=> b!7353970 m!8014282))

(declare-fun m!8014284 () Bool)

(assert (=> b!7353970 m!8014284))

(declare-fun m!8014286 () Bool)

(assert (=> b!7353962 m!8014286))

(declare-fun m!8014288 () Bool)

(assert (=> b!7353974 m!8014288))

(check-sat (not start!718116) (not b!7353973) (not b!7353964) (not b!7353971) (not b!7353967) (not b!7353963) (not b!7353966) (not b!7353965) tp_is_empty!48611 (not b!7353962) (not b!7353974) (not b!7353970) (not b!7353975))
(check-sat)
