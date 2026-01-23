; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!236620 () Bool)

(assert start!236620)

(declare-fun b!2415139 () Bool)

(declare-fun res!1025699 () Bool)

(declare-fun e!1537078 () Bool)

(assert (=> b!2415139 (=> (not res!1025699) (not e!1537078))))

(declare-datatypes ((C!14352 0))(
  ( (C!14353 (val!8418 Int)) )
))
(declare-datatypes ((Regex!7097 0))(
  ( (ElementMatch!7097 (c!384819 C!14352)) (Concat!11733 (regOne!14706 Regex!7097) (regTwo!14706 Regex!7097)) (EmptyExpr!7097) (Star!7097 (reg!7426 Regex!7097)) (EmptyLang!7097) (Union!7097 (regOne!14707 Regex!7097) (regTwo!14707 Regex!7097)) )
))
(declare-fun r!13927 () Regex!7097)

(declare-datatypes ((List!28432 0))(
  ( (Nil!28334) (Cons!28334 (h!33735 Regex!7097) (t!208409 List!28432)) )
))
(declare-fun l!9164 () List!28432)

(declare-fun generalisedConcat!198 (List!28432) Regex!7097)

(assert (=> b!2415139 (= res!1025699 (= r!13927 (generalisedConcat!198 l!9164)))))

(declare-fun b!2415140 () Bool)

(declare-fun res!1025704 () Bool)

(declare-fun e!1537077 () Bool)

(assert (=> b!2415140 (=> res!1025704 e!1537077)))

(declare-fun lt!874109 () List!28432)

(assert (=> b!2415140 (= res!1025704 (not (= (generalisedConcat!198 lt!874109) EmptyExpr!7097)))))

(declare-fun b!2415141 () Bool)

(declare-fun e!1537071 () Bool)

(declare-fun tp_is_empty!11607 () Bool)

(declare-fun tp!768122 () Bool)

(assert (=> b!2415141 (= e!1537071 (and tp_is_empty!11607 tp!768122))))

(declare-fun b!2415142 () Bool)

(declare-fun res!1025702 () Bool)

(declare-fun e!1537072 () Bool)

(assert (=> b!2415142 (=> res!1025702 e!1537072)))

(assert (=> b!2415142 (= res!1025702 false)))

(declare-fun b!2415143 () Bool)

(assert (=> b!2415143 (= e!1537072 true)))

(declare-datatypes ((List!28433 0))(
  ( (Nil!28335) (Cons!28335 (h!33736 C!14352) (t!208410 List!28433)) )
))
(declare-fun lt!874106 () List!28433)

(declare-datatypes ((tuple2!27974 0))(
  ( (tuple2!27975 (_1!16528 List!28433) (_2!16528 List!28433)) )
))
(declare-fun lt!874107 () tuple2!27974)

(declare-fun ++!7018 (List!28433 List!28433) List!28433)

(assert (=> b!2415143 (= lt!874106 (++!7018 (_1!16528 lt!874107) (_2!16528 lt!874107)))))

(declare-fun b!2415145 () Bool)

(declare-fun e!1537074 () Bool)

(assert (=> b!2415145 (= e!1537074 tp_is_empty!11607)))

(declare-fun b!2415146 () Bool)

(declare-fun res!1025705 () Bool)

(declare-fun e!1537070 () Bool)

(assert (=> b!2415146 (=> res!1025705 e!1537070)))

(declare-fun isEmpty!16340 (List!28432) Bool)

(assert (=> b!2415146 (= res!1025705 (isEmpty!16340 l!9164))))

(declare-fun b!2415147 () Bool)

(declare-fun tp!768121 () Bool)

(declare-fun tp!768120 () Bool)

(assert (=> b!2415147 (= e!1537074 (and tp!768121 tp!768120))))

(declare-fun b!2415148 () Bool)

(assert (=> b!2415148 (= e!1537070 e!1537077)))

(declare-fun res!1025703 () Bool)

(assert (=> b!2415148 (=> res!1025703 e!1537077)))

(assert (=> b!2415148 (= res!1025703 (not (isEmpty!16340 lt!874109)))))

(declare-fun tail!3679 (List!28432) List!28432)

(assert (=> b!2415148 (= lt!874109 (tail!3679 l!9164))))

(declare-fun b!2415149 () Bool)

(assert (=> b!2415149 (= e!1537078 (not e!1537070))))

(declare-fun res!1025701 () Bool)

(assert (=> b!2415149 (=> res!1025701 e!1537070)))

(get-info :version)

(assert (=> b!2415149 (= res!1025701 (or ((_ is Concat!11733) r!13927) ((_ is EmptyExpr!7097) r!13927)))))

(declare-fun s!9460 () List!28433)

(declare-fun matchR!3214 (Regex!7097 List!28433) Bool)

(declare-fun matchRSpec!946 (Regex!7097 List!28433) Bool)

(assert (=> b!2415149 (= (matchR!3214 r!13927 s!9460) (matchRSpec!946 r!13927 s!9460))))

(declare-datatypes ((Unit!41465 0))(
  ( (Unit!41466) )
))
(declare-fun lt!874105 () Unit!41465)

(declare-fun mainMatchTheorem!946 (Regex!7097 List!28433) Unit!41465)

(assert (=> b!2415149 (= lt!874105 (mainMatchTheorem!946 r!13927 s!9460))))

(declare-fun res!1025708 () Bool)

(assert (=> start!236620 (=> (not res!1025708) (not e!1537078))))

(declare-fun lambda!90947 () Int)

(declare-fun forall!5731 (List!28432 Int) Bool)

(assert (=> start!236620 (= res!1025708 (forall!5731 l!9164 lambda!90947))))

(assert (=> start!236620 e!1537078))

(declare-fun e!1537073 () Bool)

(assert (=> start!236620 e!1537073))

(assert (=> start!236620 e!1537074))

(assert (=> start!236620 e!1537071))

(declare-fun b!2415144 () Bool)

(declare-fun e!1537076 () Bool)

(declare-fun e!1537075 () Bool)

(assert (=> b!2415144 (= e!1537076 e!1537075)))

(declare-fun res!1025700 () Bool)

(assert (=> b!2415144 (=> res!1025700 e!1537075)))

(declare-datatypes ((Option!5598 0))(
  ( (None!5597) (Some!5597 (v!31005 tuple2!27974)) )
))
(declare-fun lt!874110 () Option!5598)

(declare-fun isDefined!4424 (Option!5598) Bool)

(assert (=> b!2415144 (= res!1025700 (not (isDefined!4424 lt!874110)))))

(declare-fun lt!874108 () Regex!7097)

(declare-fun findConcatSeparation!706 (Regex!7097 Regex!7097 List!28433 List!28433 List!28433) Option!5598)

(assert (=> b!2415144 (= lt!874110 (findConcatSeparation!706 lt!874108 EmptyExpr!7097 Nil!28335 s!9460 s!9460))))

(declare-fun b!2415150 () Bool)

(declare-fun tp!768123 () Bool)

(declare-fun tp!768125 () Bool)

(assert (=> b!2415150 (= e!1537073 (and tp!768123 tp!768125))))

(declare-fun b!2415151 () Bool)

(declare-fun tp!768126 () Bool)

(assert (=> b!2415151 (= e!1537074 tp!768126)))

(declare-fun b!2415152 () Bool)

(declare-fun tp!768127 () Bool)

(declare-fun tp!768124 () Bool)

(assert (=> b!2415152 (= e!1537074 (and tp!768127 tp!768124))))

(declare-fun b!2415153 () Bool)

(assert (=> b!2415153 (= e!1537077 e!1537076)))

(declare-fun res!1025706 () Bool)

(assert (=> b!2415153 (=> res!1025706 e!1537076)))

(assert (=> b!2415153 (= res!1025706 (matchR!3214 lt!874108 s!9460))))

(declare-fun head!5407 (List!28432) Regex!7097)

(assert (=> b!2415153 (= lt!874108 (head!5407 l!9164))))

(declare-fun b!2415154 () Bool)

(assert (=> b!2415154 (= e!1537075 e!1537072)))

(declare-fun res!1025707 () Bool)

(assert (=> b!2415154 (=> res!1025707 e!1537072)))

(declare-fun validRegex!2817 (Regex!7097) Bool)

(assert (=> b!2415154 (= res!1025707 (not (validRegex!2817 lt!874108)))))

(declare-fun get!8698 (Option!5598) tuple2!27974)

(assert (=> b!2415154 (= lt!874107 (get!8698 lt!874110))))

(assert (= (and start!236620 res!1025708) b!2415139))

(assert (= (and b!2415139 res!1025699) b!2415149))

(assert (= (and b!2415149 (not res!1025701)) b!2415146))

(assert (= (and b!2415146 (not res!1025705)) b!2415148))

(assert (= (and b!2415148 (not res!1025703)) b!2415140))

(assert (= (and b!2415140 (not res!1025704)) b!2415153))

(assert (= (and b!2415153 (not res!1025706)) b!2415144))

(assert (= (and b!2415144 (not res!1025700)) b!2415154))

(assert (= (and b!2415154 (not res!1025707)) b!2415142))

(assert (= (and b!2415142 (not res!1025702)) b!2415143))

(assert (= (and start!236620 ((_ is Cons!28334) l!9164)) b!2415150))

(assert (= (and start!236620 ((_ is ElementMatch!7097) r!13927)) b!2415145))

(assert (= (and start!236620 ((_ is Concat!11733) r!13927)) b!2415152))

(assert (= (and start!236620 ((_ is Star!7097) r!13927)) b!2415151))

(assert (= (and start!236620 ((_ is Union!7097) r!13927)) b!2415147))

(assert (= (and start!236620 ((_ is Cons!28335) s!9460)) b!2415141))

(declare-fun m!2804283 () Bool)

(assert (=> b!2415146 m!2804283))

(declare-fun m!2804285 () Bool)

(assert (=> b!2415139 m!2804285))

(declare-fun m!2804287 () Bool)

(assert (=> b!2415154 m!2804287))

(declare-fun m!2804289 () Bool)

(assert (=> b!2415154 m!2804289))

(declare-fun m!2804291 () Bool)

(assert (=> b!2415153 m!2804291))

(declare-fun m!2804293 () Bool)

(assert (=> b!2415153 m!2804293))

(declare-fun m!2804295 () Bool)

(assert (=> b!2415140 m!2804295))

(declare-fun m!2804297 () Bool)

(assert (=> b!2415143 m!2804297))

(declare-fun m!2804299 () Bool)

(assert (=> b!2415149 m!2804299))

(declare-fun m!2804301 () Bool)

(assert (=> b!2415149 m!2804301))

(declare-fun m!2804303 () Bool)

(assert (=> b!2415149 m!2804303))

(declare-fun m!2804305 () Bool)

(assert (=> b!2415148 m!2804305))

(declare-fun m!2804307 () Bool)

(assert (=> b!2415148 m!2804307))

(declare-fun m!2804309 () Bool)

(assert (=> start!236620 m!2804309))

(declare-fun m!2804311 () Bool)

(assert (=> b!2415144 m!2804311))

(declare-fun m!2804313 () Bool)

(assert (=> b!2415144 m!2804313))

(check-sat tp_is_empty!11607 (not b!2415150) (not b!2415139) (not start!236620) (not b!2415141) (not b!2415147) (not b!2415146) (not b!2415151) (not b!2415140) (not b!2415153) (not b!2415144) (not b!2415148) (not b!2415154) (not b!2415152) (not b!2415149) (not b!2415143))
(check-sat)
