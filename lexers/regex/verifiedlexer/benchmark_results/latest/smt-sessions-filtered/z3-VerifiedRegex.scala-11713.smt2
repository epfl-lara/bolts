; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!661432 () Bool)

(assert start!661432)

(declare-fun b!6847271 () Bool)

(assert (=> b!6847271 true))

(declare-fun b!6847263 () Bool)

(assert (=> b!6847263 true))

(declare-fun e!4129129 () Bool)

(declare-fun e!4129126 () Bool)

(declare-fun tp!1876118 () Bool)

(declare-fun b!6847253 () Bool)

(declare-datatypes ((C!33616 0))(
  ( (C!33617 (val!26510 Int)) )
))
(declare-datatypes ((Regex!16673 0))(
  ( (ElementMatch!16673 (c!1274607 C!33616)) (Concat!25518 (regOne!33858 Regex!16673) (regTwo!33858 Regex!16673)) (EmptyExpr!16673) (Star!16673 (reg!17002 Regex!16673)) (EmptyLang!16673) (Union!16673 (regOne!33859 Regex!16673) (regTwo!33859 Regex!16673)) )
))
(declare-datatypes ((List!66318 0))(
  ( (Nil!66194) (Cons!66194 (h!72642 Regex!16673) (t!380061 List!66318)) )
))
(declare-datatypes ((Context!12114 0))(
  ( (Context!12115 (exprs!6557 List!66318)) )
))
(declare-datatypes ((List!66319 0))(
  ( (Nil!66195) (Cons!66195 (h!72643 Context!12114) (t!380062 List!66319)) )
))
(declare-fun zl!343 () List!66319)

(declare-fun inv!84929 (Context!12114) Bool)

(assert (=> b!6847253 (= e!4129129 (and (inv!84929 (h!72643 zl!343)) e!4129126 tp!1876118))))

(declare-fun setIsEmpty!47075 () Bool)

(declare-fun setRes!47075 () Bool)

(assert (=> setIsEmpty!47075 setRes!47075))

(declare-fun b!6847254 () Bool)

(declare-fun res!2795130 () Bool)

(declare-fun e!4129131 () Bool)

(assert (=> b!6847254 (=> res!2795130 e!4129131)))

(declare-fun lt!2455818 () Regex!16673)

(declare-datatypes ((List!66320 0))(
  ( (Nil!66196) (Cons!66196 (h!72644 C!33616) (t!380063 List!66320)) )
))
(declare-fun s!2326 () List!66320)

(declare-fun matchR!8856 (Regex!16673 List!66320) Bool)

(assert (=> b!6847254 (= res!2795130 (not (matchR!8856 lt!2455818 s!2326)))))

(declare-fun b!6847255 () Bool)

(declare-fun e!4129127 () Bool)

(declare-fun tp!1876117 () Bool)

(assert (=> b!6847255 (= e!4129127 tp!1876117)))

(declare-fun b!6847256 () Bool)

(declare-fun e!4129130 () Bool)

(assert (=> b!6847256 (= e!4129130 e!4129131)))

(declare-fun res!2795132 () Bool)

(assert (=> b!6847256 (=> res!2795132 e!4129131)))

(declare-fun lt!2455817 () List!66318)

(declare-fun contains!20323 (List!66318 Regex!16673) Bool)

(assert (=> b!6847256 (= res!2795132 (not (contains!20323 lt!2455817 lt!2455818)))))

(declare-fun lambda!387148 () Int)

(declare-fun getWitness!941 (List!66318 Int) Regex!16673)

(assert (=> b!6847256 (= lt!2455818 (getWitness!941 lt!2455817 lambda!387148))))

(declare-fun b!6847257 () Bool)

(declare-fun e!4129124 () Bool)

(declare-fun tp_is_empty!42599 () Bool)

(declare-fun tp!1876119 () Bool)

(assert (=> b!6847257 (= e!4129124 (and tp_is_empty!42599 tp!1876119))))

(declare-fun b!6847258 () Bool)

(declare-fun e!4129132 () Bool)

(assert (=> b!6847258 (= e!4129132 true)))

(declare-fun lt!2455815 () Int)

(declare-fun lt!2455822 () Context!12114)

(declare-fun zipperDepthTotal!428 (List!66319) Int)

(assert (=> b!6847258 (= lt!2455815 (zipperDepthTotal!428 (Cons!66195 lt!2455822 Nil!66195)))))

(declare-fun contextDepthTotal!400 (Context!12114) Int)

(assert (=> b!6847258 (< (contextDepthTotal!400 lt!2455822) (zipperDepthTotal!428 zl!343))))

(declare-datatypes ((Unit!160061 0))(
  ( (Unit!160062) )
))
(declare-fun lt!2455814 () Unit!160061)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!32 (List!66319 Context!12114) Unit!160061)

(assert (=> b!6847258 (= lt!2455814 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!32 zl!343 lt!2455822))))

(declare-fun lambda!387149 () Int)

(declare-fun getWitness!942 (List!66319 Int) Context!12114)

(assert (=> b!6847258 (= lt!2455822 (getWitness!942 zl!343 lambda!387149))))

(declare-fun b!6847259 () Bool)

(declare-fun tp!1876110 () Bool)

(assert (=> b!6847259 (= e!4129126 tp!1876110)))

(declare-fun b!6847260 () Bool)

(declare-fun e!4129128 () Bool)

(assert (=> b!6847260 (= e!4129128 tp_is_empty!42599)))

(declare-fun res!2795127 () Bool)

(declare-fun e!4129125 () Bool)

(assert (=> start!661432 (=> (not res!2795127) (not e!4129125))))

(declare-fun r!7292 () Regex!16673)

(declare-fun validRegex!8409 (Regex!16673) Bool)

(assert (=> start!661432 (= res!2795127 (validRegex!8409 r!7292))))

(assert (=> start!661432 e!4129125))

(assert (=> start!661432 e!4129128))

(declare-fun condSetEmpty!47075 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!12114))

(assert (=> start!661432 (= condSetEmpty!47075 (= z!1189 ((as const (Array Context!12114 Bool)) false)))))

(assert (=> start!661432 setRes!47075))

(assert (=> start!661432 e!4129129))

(assert (=> start!661432 e!4129124))

(declare-fun b!6847261 () Bool)

(declare-fun res!2795128 () Bool)

(assert (=> b!6847261 (=> (not res!2795128) (not e!4129125))))

(declare-fun unfocusZipper!2415 (List!66319) Regex!16673)

(assert (=> b!6847261 (= res!2795128 (= r!7292 (unfocusZipper!2415 zl!343)))))

(declare-fun b!6847262 () Bool)

(declare-fun res!2795126 () Bool)

(declare-fun e!4129134 () Bool)

(assert (=> b!6847262 (=> res!2795126 e!4129134)))

(declare-fun isEmpty!38569 (List!66319) Bool)

(assert (=> b!6847262 (= res!2795126 (isEmpty!38569 (t!380062 zl!343)))))

(assert (=> b!6847263 (= e!4129131 e!4129132)))

(declare-fun res!2795122 () Bool)

(assert (=> b!6847263 (=> res!2795122 e!4129132)))

(declare-fun exists!2772 (List!66319 Int) Bool)

(assert (=> b!6847263 (= res!2795122 (not (exists!2772 zl!343 lambda!387149)))))

(assert (=> b!6847263 (exists!2772 zl!343 lambda!387149)))

(declare-fun lt!2455816 () Unit!160061)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!28 (List!66319 Regex!16673) Unit!160061)

(assert (=> b!6847263 (= lt!2455816 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!28 zl!343 lt!2455818))))

(declare-fun b!6847264 () Bool)

(declare-fun tp!1876116 () Bool)

(declare-fun tp!1876111 () Bool)

(assert (=> b!6847264 (= e!4129128 (and tp!1876116 tp!1876111))))

(declare-fun b!6847265 () Bool)

(declare-fun res!2795125 () Bool)

(assert (=> b!6847265 (=> res!2795125 e!4129131)))

(assert (=> b!6847265 (= res!2795125 (not (validRegex!8409 lt!2455818)))))

(declare-fun b!6847266 () Bool)

(declare-fun e!4129133 () Bool)

(assert (=> b!6847266 (= e!4129133 (isEmpty!38569 (t!380062 zl!343)))))

(declare-fun tp!1876115 () Bool)

(declare-fun setNonEmpty!47075 () Bool)

(declare-fun setElem!47075 () Context!12114)

(assert (=> setNonEmpty!47075 (= setRes!47075 (and tp!1876115 (inv!84929 setElem!47075) e!4129127))))

(declare-fun setRest!47075 () (InoxSet Context!12114))

(assert (=> setNonEmpty!47075 (= z!1189 ((_ map or) (store ((as const (Array Context!12114 Bool)) false) setElem!47075 true) setRest!47075))))

(declare-fun b!6847267 () Bool)

(declare-fun res!2795121 () Bool)

(assert (=> b!6847267 (=> res!2795121 e!4129134)))

(get-info :version)

(assert (=> b!6847267 (= res!2795121 (or (not ((_ is Cons!66195) zl!343)) ((_ is Nil!66196) s!2326) (not (= zl!343 (Cons!66195 (h!72643 zl!343) (t!380062 zl!343))))))))

(declare-fun b!6847268 () Bool)

(declare-fun tp!1876114 () Bool)

(declare-fun tp!1876113 () Bool)

(assert (=> b!6847268 (= e!4129128 (and tp!1876114 tp!1876113))))

(declare-fun b!6847269 () Bool)

(assert (=> b!6847269 (= e!4129125 (not e!4129134))))

(declare-fun res!2795131 () Bool)

(assert (=> b!6847269 (=> res!2795131 e!4129134)))

(assert (=> b!6847269 (= res!2795131 e!4129133)))

(declare-fun res!2795123 () Bool)

(assert (=> b!6847269 (=> (not res!2795123) (not e!4129133))))

(assert (=> b!6847269 (= res!2795123 ((_ is Cons!66195) zl!343))))

(declare-fun lt!2455821 () Bool)

(declare-fun matchRSpec!3774 (Regex!16673 List!66320) Bool)

(assert (=> b!6847269 (= lt!2455821 (matchRSpec!3774 r!7292 s!2326))))

(assert (=> b!6847269 (= lt!2455821 (matchR!8856 r!7292 s!2326))))

(declare-fun lt!2455820 () Unit!160061)

(declare-fun mainMatchTheorem!3774 (Regex!16673 List!66320) Unit!160061)

(assert (=> b!6847269 (= lt!2455820 (mainMatchTheorem!3774 r!7292 s!2326))))

(declare-fun b!6847270 () Bool)

(declare-fun res!2795120 () Bool)

(assert (=> b!6847270 (=> res!2795120 e!4129130)))

(declare-fun exists!2773 (List!66318 Int) Bool)

(assert (=> b!6847270 (= res!2795120 (not (exists!2773 lt!2455817 lambda!387148)))))

(assert (=> b!6847271 (= e!4129134 e!4129130)))

(declare-fun res!2795124 () Bool)

(assert (=> b!6847271 (=> res!2795124 e!4129130)))

(assert (=> b!6847271 (= res!2795124 (not lt!2455821))))

(assert (=> b!6847271 (= lt!2455821 (exists!2773 lt!2455817 lambda!387148))))

(declare-fun lt!2455819 () Unit!160061)

(declare-fun matchRGenUnionSpec!312 (Regex!16673 List!66318 List!66320) Unit!160061)

(assert (=> b!6847271 (= lt!2455819 (matchRGenUnionSpec!312 r!7292 lt!2455817 s!2326))))

(declare-fun unfocusZipperList!2090 (List!66319) List!66318)

(assert (=> b!6847271 (= lt!2455817 (unfocusZipperList!2090 zl!343))))

(declare-fun b!6847272 () Bool)

(declare-fun tp!1876112 () Bool)

(assert (=> b!6847272 (= e!4129128 tp!1876112)))

(declare-fun b!6847273 () Bool)

(declare-fun res!2795129 () Bool)

(assert (=> b!6847273 (=> (not res!2795129) (not e!4129125))))

(declare-fun toList!10457 ((InoxSet Context!12114)) List!66319)

(assert (=> b!6847273 (= res!2795129 (= (toList!10457 z!1189) zl!343))))

(assert (= (and start!661432 res!2795127) b!6847273))

(assert (= (and b!6847273 res!2795129) b!6847261))

(assert (= (and b!6847261 res!2795128) b!6847269))

(assert (= (and b!6847269 res!2795123) b!6847266))

(assert (= (and b!6847269 (not res!2795131)) b!6847267))

(assert (= (and b!6847267 (not res!2795121)) b!6847262))

(assert (= (and b!6847262 (not res!2795126)) b!6847271))

(assert (= (and b!6847271 (not res!2795124)) b!6847270))

(assert (= (and b!6847270 (not res!2795120)) b!6847256))

(assert (= (and b!6847256 (not res!2795132)) b!6847265))

(assert (= (and b!6847265 (not res!2795125)) b!6847254))

(assert (= (and b!6847254 (not res!2795130)) b!6847263))

(assert (= (and b!6847263 (not res!2795122)) b!6847258))

(assert (= (and start!661432 ((_ is ElementMatch!16673) r!7292)) b!6847260))

(assert (= (and start!661432 ((_ is Concat!25518) r!7292)) b!6847264))

(assert (= (and start!661432 ((_ is Star!16673) r!7292)) b!6847272))

(assert (= (and start!661432 ((_ is Union!16673) r!7292)) b!6847268))

(assert (= (and start!661432 condSetEmpty!47075) setIsEmpty!47075))

(assert (= (and start!661432 (not condSetEmpty!47075)) setNonEmpty!47075))

(assert (= setNonEmpty!47075 b!6847255))

(assert (= b!6847253 b!6847259))

(assert (= (and start!661432 ((_ is Cons!66195) zl!343)) b!6847253))

(assert (= (and start!661432 ((_ is Cons!66196) s!2326)) b!6847257))

(declare-fun m!7587106 () Bool)

(assert (=> b!6847254 m!7587106))

(declare-fun m!7587108 () Bool)

(assert (=> b!6847258 m!7587108))

(declare-fun m!7587110 () Bool)

(assert (=> b!6847258 m!7587110))

(declare-fun m!7587112 () Bool)

(assert (=> b!6847258 m!7587112))

(declare-fun m!7587114 () Bool)

(assert (=> b!6847258 m!7587114))

(declare-fun m!7587116 () Bool)

(assert (=> b!6847258 m!7587116))

(declare-fun m!7587118 () Bool)

(assert (=> setNonEmpty!47075 m!7587118))

(declare-fun m!7587120 () Bool)

(assert (=> b!6847270 m!7587120))

(declare-fun m!7587122 () Bool)

(assert (=> b!6847256 m!7587122))

(declare-fun m!7587124 () Bool)

(assert (=> b!6847256 m!7587124))

(declare-fun m!7587126 () Bool)

(assert (=> b!6847265 m!7587126))

(declare-fun m!7587128 () Bool)

(assert (=> b!6847261 m!7587128))

(declare-fun m!7587130 () Bool)

(assert (=> b!6847266 m!7587130))

(declare-fun m!7587132 () Bool)

(assert (=> start!661432 m!7587132))

(declare-fun m!7587134 () Bool)

(assert (=> b!6847253 m!7587134))

(assert (=> b!6847271 m!7587120))

(declare-fun m!7587136 () Bool)

(assert (=> b!6847271 m!7587136))

(declare-fun m!7587138 () Bool)

(assert (=> b!6847271 m!7587138))

(declare-fun m!7587140 () Bool)

(assert (=> b!6847273 m!7587140))

(assert (=> b!6847262 m!7587130))

(declare-fun m!7587142 () Bool)

(assert (=> b!6847269 m!7587142))

(declare-fun m!7587144 () Bool)

(assert (=> b!6847269 m!7587144))

(declare-fun m!7587146 () Bool)

(assert (=> b!6847269 m!7587146))

(declare-fun m!7587148 () Bool)

(assert (=> b!6847263 m!7587148))

(assert (=> b!6847263 m!7587148))

(declare-fun m!7587150 () Bool)

(assert (=> b!6847263 m!7587150))

(check-sat (not b!6847254) tp_is_empty!42599 (not b!6847264) (not b!6847265) (not b!6847271) (not start!661432) (not b!6847253) (not b!6847257) (not b!6847259) (not b!6847261) (not b!6847269) (not b!6847272) (not b!6847255) (not setNonEmpty!47075) (not b!6847256) (not b!6847266) (not b!6847263) (not b!6847258) (not b!6847273) (not b!6847262) (not b!6847268) (not b!6847270))
(check-sat)
