; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739352 () Bool)

(assert start!739352)

(declare-fun b!7760190 () Bool)

(assert (=> b!7760190 true))

(assert (=> b!7760190 true))

(assert (=> b!7760190 true))

(declare-fun b!7760175 () Bool)

(declare-fun e!4599205 () Bool)

(declare-fun tp!2278670 () Bool)

(assert (=> b!7760175 (= e!4599205 tp!2278670)))

(declare-fun b!7760176 () Bool)

(declare-fun e!4599200 () Bool)

(declare-fun tp!2278666 () Bool)

(declare-fun tp!2278667 () Bool)

(assert (=> b!7760176 (= e!4599200 (and tp!2278666 tp!2278667))))

(declare-fun b!7760177 () Bool)

(declare-fun res!3093757 () Bool)

(declare-fun e!4599201 () Bool)

(assert (=> b!7760177 (=> (not res!3093757) (not e!4599201))))

(declare-datatypes ((C!41704 0))(
  ( (C!41705 (val!31292 Int)) )
))
(declare-datatypes ((Regex!20689 0))(
  ( (ElementMatch!20689 (c!1430678 C!41704)) (Concat!29534 (regOne!41890 Regex!20689) (regTwo!41890 Regex!20689)) (EmptyExpr!20689) (Star!20689 (reg!21018 Regex!20689)) (EmptyLang!20689) (Union!20689 (regOne!41891 Regex!20689) (regTwo!41891 Regex!20689)) )
))
(declare-fun r2!3230 () Regex!20689)

(declare-datatypes ((List!73532 0))(
  ( (Nil!73408) (Cons!73408 (h!79856 C!41704) (t!388267 List!73532)) )
))
(declare-datatypes ((tuple2!69764 0))(
  ( (tuple2!69765 (_1!38185 List!73532) (_2!38185 List!73532)) )
))
(declare-fun lt!2670266 () tuple2!69764)

(declare-fun matchR!10157 (Regex!20689 List!73532) Bool)

(assert (=> b!7760177 (= res!3093757 (matchR!10157 r2!3230 (_2!38185 lt!2670266)))))

(declare-fun b!7760179 () Bool)

(declare-fun res!3093758 () Bool)

(assert (=> b!7760179 (=> (not res!3093758) (not e!4599201))))

(declare-fun r1!3330 () Regex!20689)

(assert (=> b!7760179 (= res!3093758 (matchR!10157 r1!3330 (_1!38185 lt!2670266)))))

(declare-fun b!7760180 () Bool)

(declare-fun res!3093762 () Bool)

(declare-fun e!4599203 () Bool)

(assert (=> b!7760180 (=> (not res!3093762) (not e!4599203))))

(declare-fun validRegex!11105 (Regex!20689) Bool)

(assert (=> b!7760180 (= res!3093762 (validRegex!11105 r2!3230))))

(declare-fun b!7760181 () Bool)

(declare-fun tp_is_empty!51733 () Bool)

(assert (=> b!7760181 (= e!4599200 tp_is_empty!51733)))

(declare-fun b!7760182 () Bool)

(declare-fun tp!2278664 () Bool)

(declare-fun tp!2278661 () Bool)

(assert (=> b!7760182 (= e!4599205 (and tp!2278664 tp!2278661))))

(declare-fun b!7760183 () Bool)

(declare-fun tp!2278662 () Bool)

(assert (=> b!7760183 (= e!4599200 tp!2278662)))

(declare-fun b!7760184 () Bool)

(declare-fun tp!2278669 () Bool)

(declare-fun tp!2278671 () Bool)

(assert (=> b!7760184 (= e!4599200 (and tp!2278669 tp!2278671))))

(declare-fun b!7760185 () Bool)

(declare-fun e!4599202 () Bool)

(assert (=> b!7760185 (= e!4599202 e!4599201)))

(declare-fun res!3093759 () Bool)

(assert (=> b!7760185 (=> (not res!3093759) (not e!4599201))))

(declare-fun s!10216 () List!73532)

(declare-fun ++!17864 (List!73532 List!73532) List!73532)

(assert (=> b!7760185 (= res!3093759 (= (++!17864 (_1!38185 lt!2670266) (_2!38185 lt!2670266)) s!10216))))

(declare-fun lambda!472019 () Int)

(declare-fun pickWitness!562 (Int) tuple2!69764)

(assert (=> b!7760185 (= lt!2670266 (pickWitness!562 lambda!472019))))

(declare-fun b!7760186 () Bool)

(declare-fun tp!2278665 () Bool)

(declare-fun tp!2278668 () Bool)

(assert (=> b!7760186 (= e!4599205 (and tp!2278665 tp!2278668))))

(declare-fun b!7760187 () Bool)

(assert (=> b!7760187 (= e!4599205 tp_is_empty!51733)))

(declare-fun b!7760188 () Bool)

(declare-fun e!4599204 () Bool)

(declare-fun tp!2278663 () Bool)

(assert (=> b!7760188 (= e!4599204 (and tp_is_empty!51733 tp!2278663))))

(declare-fun b!7760189 () Bool)

(assert (=> b!7760189 (= e!4599203 e!4599202)))

(declare-fun res!3093756 () Bool)

(assert (=> b!7760189 (=> (not res!3093756) (not e!4599202))))

(declare-datatypes ((Option!17676 0))(
  ( (None!17675) (Some!17675 (v!54810 tuple2!69764)) )
))
(declare-fun lt!2670268 () Option!17676)

(declare-fun isDefined!14288 (Option!17676) Bool)

(assert (=> b!7760189 (= res!3093756 (not (isDefined!14288 lt!2670268)))))

(declare-fun findConcatSeparation!3706 (Regex!20689 Regex!20689 List!73532 List!73532 List!73532) Option!17676)

(assert (=> b!7760189 (= lt!2670268 (findConcatSeparation!3706 r1!3330 r2!3230 Nil!73408 s!10216 s!10216))))

(declare-fun res!3093761 () Bool)

(assert (=> start!739352 (=> (not res!3093761) (not e!4599203))))

(assert (=> start!739352 (= res!3093761 (validRegex!11105 r1!3330))))

(assert (=> start!739352 e!4599203))

(assert (=> start!739352 e!4599205))

(assert (=> start!739352 e!4599200))

(assert (=> start!739352 e!4599204))

(declare-fun b!7760178 () Bool)

(assert (=> b!7760178 (= e!4599201 (not true))))

(assert (=> b!7760178 false))

(declare-datatypes ((Unit!168376 0))(
  ( (Unit!168377) )
))
(declare-fun lt!2670267 () Unit!168376)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!128 (Regex!20689 Regex!20689 List!73532 List!73532 List!73532 List!73532 List!73532) Unit!168376)

(assert (=> b!7760178 (= lt!2670267 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!128 r1!3330 r2!3230 (_1!38185 lt!2670266) (_2!38185 lt!2670266) s!10216 Nil!73408 s!10216))))

(declare-fun res!3093755 () Bool)

(assert (=> b!7760190 (=> (not res!3093755) (not e!4599202))))

(declare-fun Exists!4735 (Int) Bool)

(assert (=> b!7760190 (= res!3093755 (Exists!4735 lambda!472019))))

(declare-fun b!7760191 () Bool)

(declare-fun res!3093760 () Bool)

(assert (=> b!7760191 (=> (not res!3093760) (not e!4599202))))

(declare-fun isEmpty!42072 (Option!17676) Bool)

(assert (=> b!7760191 (= res!3093760 (isEmpty!42072 lt!2670268))))

(assert (= (and start!739352 res!3093761) b!7760180))

(assert (= (and b!7760180 res!3093762) b!7760189))

(assert (= (and b!7760189 res!3093756) b!7760191))

(assert (= (and b!7760191 res!3093760) b!7760190))

(assert (= (and b!7760190 res!3093755) b!7760185))

(assert (= (and b!7760185 res!3093759) b!7760179))

(assert (= (and b!7760179 res!3093758) b!7760177))

(assert (= (and b!7760177 res!3093757) b!7760178))

(get-info :version)

(assert (= (and start!739352 ((_ is ElementMatch!20689) r1!3330)) b!7760187))

(assert (= (and start!739352 ((_ is Concat!29534) r1!3330)) b!7760182))

(assert (= (and start!739352 ((_ is Star!20689) r1!3330)) b!7760175))

(assert (= (and start!739352 ((_ is Union!20689) r1!3330)) b!7760186))

(assert (= (and start!739352 ((_ is ElementMatch!20689) r2!3230)) b!7760181))

(assert (= (and start!739352 ((_ is Concat!29534) r2!3230)) b!7760184))

(assert (= (and start!739352 ((_ is Star!20689) r2!3230)) b!7760183))

(assert (= (and start!739352 ((_ is Union!20689) r2!3230)) b!7760176))

(assert (= (and start!739352 ((_ is Cons!73408) s!10216)) b!7760188))

(declare-fun m!8220412 () Bool)

(assert (=> b!7760185 m!8220412))

(declare-fun m!8220414 () Bool)

(assert (=> b!7760185 m!8220414))

(declare-fun m!8220416 () Bool)

(assert (=> b!7760191 m!8220416))

(declare-fun m!8220418 () Bool)

(assert (=> b!7760190 m!8220418))

(declare-fun m!8220420 () Bool)

(assert (=> b!7760180 m!8220420))

(declare-fun m!8220422 () Bool)

(assert (=> b!7760177 m!8220422))

(declare-fun m!8220424 () Bool)

(assert (=> start!739352 m!8220424))

(declare-fun m!8220426 () Bool)

(assert (=> b!7760178 m!8220426))

(declare-fun m!8220428 () Bool)

(assert (=> b!7760179 m!8220428))

(declare-fun m!8220430 () Bool)

(assert (=> b!7760189 m!8220430))

(declare-fun m!8220432 () Bool)

(assert (=> b!7760189 m!8220432))

(check-sat (not start!739352) (not b!7760182) (not b!7760189) tp_is_empty!51733 (not b!7760176) (not b!7760186) (not b!7760183) (not b!7760178) (not b!7760184) (not b!7760177) (not b!7760180) (not b!7760185) (not b!7760188) (not b!7760179) (not b!7760190) (not b!7760175) (not b!7760191))
(check-sat)
