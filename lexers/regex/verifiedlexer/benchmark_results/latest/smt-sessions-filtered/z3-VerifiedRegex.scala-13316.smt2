; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723442 () Bool)

(assert start!723442)

(declare-fun b!7451834 () Bool)

(assert (=> b!7451834 true))

(assert (=> b!7451834 true))

(assert (=> b!7451834 true))

(declare-fun lambda!460937 () Int)

(declare-fun lambda!460936 () Int)

(assert (=> b!7451834 (not (= lambda!460937 lambda!460936))))

(assert (=> b!7451834 true))

(assert (=> b!7451834 true))

(assert (=> b!7451834 true))

(declare-fun b!7451833 () Bool)

(declare-fun e!4448141 () Bool)

(declare-fun tp!2159248 () Bool)

(declare-fun tp!2159255 () Bool)

(assert (=> b!7451833 (= e!4448141 (and tp!2159248 tp!2159255))))

(declare-fun e!4448144 () Bool)

(declare-fun e!4448138 () Bool)

(assert (=> b!7451834 (= e!4448144 e!4448138)))

(declare-fun res!2988991 () Bool)

(assert (=> b!7451834 (=> res!2988991 e!4448138)))

(declare-datatypes ((C!39264 0))(
  ( (C!39265 (val!30030 Int)) )
))
(declare-datatypes ((Regex!19495 0))(
  ( (ElementMatch!19495 (c!1377930 C!39264)) (Concat!28340 (regOne!39502 Regex!19495) (regTwo!39502 Regex!19495)) (EmptyExpr!19495) (Star!19495 (reg!19824 Regex!19495)) (EmptyLang!19495) (Union!19495 (regOne!39503 Regex!19495) (regTwo!39503 Regex!19495)) )
))
(declare-fun lt!2620353 () Regex!19495)

(declare-datatypes ((List!72211 0))(
  ( (Nil!72087) (Cons!72087 (h!78535 C!39264) (t!386780 List!72211)) )
))
(declare-datatypes ((tuple2!68444 0))(
  ( (tuple2!68445 (_1!37525 List!72211) (_2!37525 List!72211)) )
))
(declare-fun lt!2620343 () tuple2!68444)

(declare-fun matchR!9259 (Regex!19495 List!72211) Bool)

(assert (=> b!7451834 (= res!2988991 (not (matchR!9259 lt!2620353 (_1!37525 lt!2620343))))))

(declare-datatypes ((Option!17054 0))(
  ( (None!17053) (Some!17053 (v!54182 tuple2!68444)) )
))
(declare-fun lt!2620352 () Option!17054)

(declare-fun get!25126 (Option!17054) tuple2!68444)

(assert (=> b!7451834 (= lt!2620343 (get!25126 lt!2620352))))

(declare-fun Exists!4116 (Int) Bool)

(assert (=> b!7451834 (= (Exists!4116 lambda!460936) (Exists!4116 lambda!460937))))

(declare-fun s!13591 () List!72211)

(declare-fun rTail!78 () Regex!19495)

(declare-datatypes ((Unit!165825 0))(
  ( (Unit!165826) )
))
(declare-fun lt!2620348 () Unit!165825)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2452 (Regex!19495 Regex!19495 List!72211) Unit!165825)

(assert (=> b!7451834 (= lt!2620348 (lemmaExistCutMatchRandMatchRSpecEquivalent!2452 lt!2620353 rTail!78 s!13591))))

(declare-fun isDefined!13743 (Option!17054) Bool)

(assert (=> b!7451834 (= (isDefined!13743 lt!2620352) (Exists!4116 lambda!460936))))

(declare-fun findConcatSeparation!3176 (Regex!19495 Regex!19495 List!72211 List!72211 List!72211) Option!17054)

(assert (=> b!7451834 (= lt!2620352 (findConcatSeparation!3176 lt!2620353 rTail!78 Nil!72087 s!13591 s!13591))))

(declare-fun lt!2620346 () Unit!165825)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2934 (Regex!19495 Regex!19495 List!72211) Unit!165825)

(assert (=> b!7451834 (= lt!2620346 (lemmaFindConcatSeparationEquivalentToExists!2934 lt!2620353 rTail!78 s!13591))))

(declare-fun b!7451835 () Bool)

(declare-fun tp_is_empty!49279 () Bool)

(assert (=> b!7451835 (= e!4448141 tp_is_empty!49279)))

(declare-fun b!7451836 () Bool)

(declare-fun res!2988993 () Bool)

(declare-fun e!4448139 () Bool)

(assert (=> b!7451836 (=> (not res!2988993) (not e!4448139))))

(declare-fun validRegex!10009 (Regex!19495) Bool)

(assert (=> b!7451836 (= res!2988993 (validRegex!10009 rTail!78))))

(declare-fun b!7451837 () Bool)

(declare-fun e!4448140 () Bool)

(declare-fun tp!2159247 () Bool)

(assert (=> b!7451837 (= e!4448140 (and tp_is_empty!49279 tp!2159247))))

(declare-fun b!7451838 () Bool)

(declare-fun res!2988995 () Bool)

(assert (=> b!7451838 (=> (not res!2988995) (not e!4448139))))

(declare-fun r2!5783 () Regex!19495)

(assert (=> b!7451838 (= res!2988995 (validRegex!10009 r2!5783))))

(declare-fun b!7451839 () Bool)

(assert (=> b!7451839 (= e!4448139 (not e!4448144))))

(declare-fun res!2988994 () Bool)

(assert (=> b!7451839 (=> res!2988994 e!4448144)))

(declare-fun lt!2620344 () Bool)

(assert (=> b!7451839 (= res!2988994 (not lt!2620344))))

(declare-fun lt!2620349 () Regex!19495)

(declare-fun matchRSpec!4174 (Regex!19495 List!72211) Bool)

(assert (=> b!7451839 (= (matchR!9259 lt!2620349 s!13591) (matchRSpec!4174 lt!2620349 s!13591))))

(declare-fun lt!2620347 () Unit!165825)

(declare-fun mainMatchTheorem!4168 (Regex!19495 List!72211) Unit!165825)

(assert (=> b!7451839 (= lt!2620347 (mainMatchTheorem!4168 lt!2620349 s!13591))))

(declare-fun lt!2620350 () Regex!19495)

(assert (=> b!7451839 (= lt!2620344 (matchRSpec!4174 lt!2620350 s!13591))))

(assert (=> b!7451839 (= lt!2620344 (matchR!9259 lt!2620350 s!13591))))

(declare-fun lt!2620351 () Unit!165825)

(assert (=> b!7451839 (= lt!2620351 (mainMatchTheorem!4168 lt!2620350 s!13591))))

(declare-fun r1!5845 () Regex!19495)

(assert (=> b!7451839 (= lt!2620349 (Union!19495 (Concat!28340 r1!5845 rTail!78) (Concat!28340 r2!5783 rTail!78)))))

(assert (=> b!7451839 (= lt!2620350 (Concat!28340 lt!2620353 rTail!78))))

(assert (=> b!7451839 (= lt!2620353 (Union!19495 r1!5845 r2!5783))))

(declare-fun b!7451840 () Bool)

(declare-fun res!2988992 () Bool)

(assert (=> b!7451840 (=> res!2988992 e!4448138)))

(assert (=> b!7451840 (= res!2988992 (not (matchR!9259 rTail!78 (_2!37525 lt!2620343))))))

(declare-fun b!7451841 () Bool)

(declare-fun e!4448142 () Bool)

(assert (=> b!7451841 (= e!4448142 tp_is_empty!49279)))

(declare-fun b!7451842 () Bool)

(declare-fun tp!2159259 () Bool)

(assert (=> b!7451842 (= e!4448141 tp!2159259)))

(declare-fun b!7451843 () Bool)

(declare-fun tp!2159258 () Bool)

(assert (=> b!7451843 (= e!4448142 tp!2159258)))

(declare-fun b!7451844 () Bool)

(declare-fun e!4448143 () Bool)

(declare-fun tp!2159253 () Bool)

(declare-fun tp!2159256 () Bool)

(assert (=> b!7451844 (= e!4448143 (and tp!2159253 tp!2159256))))

(declare-fun b!7451846 () Bool)

(assert (=> b!7451846 (= e!4448138 true)))

(assert (=> b!7451846 (matchRSpec!4174 lt!2620353 (_1!37525 lt!2620343))))

(declare-fun lt!2620345 () Unit!165825)

(assert (=> b!7451846 (= lt!2620345 (mainMatchTheorem!4168 lt!2620353 (_1!37525 lt!2620343)))))

(declare-fun b!7451847 () Bool)

(declare-fun tp!2159251 () Bool)

(declare-fun tp!2159257 () Bool)

(assert (=> b!7451847 (= e!4448143 (and tp!2159251 tp!2159257))))

(declare-fun b!7451848 () Bool)

(assert (=> b!7451848 (= e!4448143 tp_is_empty!49279)))

(declare-fun b!7451849 () Bool)

(declare-fun tp!2159252 () Bool)

(declare-fun tp!2159250 () Bool)

(assert (=> b!7451849 (= e!4448141 (and tp!2159252 tp!2159250))))

(declare-fun b!7451850 () Bool)

(declare-fun tp!2159249 () Bool)

(declare-fun tp!2159246 () Bool)

(assert (=> b!7451850 (= e!4448142 (and tp!2159249 tp!2159246))))

(declare-fun b!7451851 () Bool)

(declare-fun tp!2159245 () Bool)

(declare-fun tp!2159244 () Bool)

(assert (=> b!7451851 (= e!4448142 (and tp!2159245 tp!2159244))))

(declare-fun res!2988996 () Bool)

(assert (=> start!723442 (=> (not res!2988996) (not e!4448139))))

(assert (=> start!723442 (= res!2988996 (validRegex!10009 r1!5845))))

(assert (=> start!723442 e!4448139))

(assert (=> start!723442 e!4448143))

(assert (=> start!723442 e!4448141))

(assert (=> start!723442 e!4448142))

(assert (=> start!723442 e!4448140))

(declare-fun b!7451845 () Bool)

(declare-fun tp!2159254 () Bool)

(assert (=> b!7451845 (= e!4448143 tp!2159254)))

(assert (= (and start!723442 res!2988996) b!7451838))

(assert (= (and b!7451838 res!2988995) b!7451836))

(assert (= (and b!7451836 res!2988993) b!7451839))

(assert (= (and b!7451839 (not res!2988994)) b!7451834))

(assert (= (and b!7451834 (not res!2988991)) b!7451840))

(assert (= (and b!7451840 (not res!2988992)) b!7451846))

(get-info :version)

(assert (= (and start!723442 ((_ is ElementMatch!19495) r1!5845)) b!7451848))

(assert (= (and start!723442 ((_ is Concat!28340) r1!5845)) b!7451844))

(assert (= (and start!723442 ((_ is Star!19495) r1!5845)) b!7451845))

(assert (= (and start!723442 ((_ is Union!19495) r1!5845)) b!7451847))

(assert (= (and start!723442 ((_ is ElementMatch!19495) r2!5783)) b!7451835))

(assert (= (and start!723442 ((_ is Concat!28340) r2!5783)) b!7451849))

(assert (= (and start!723442 ((_ is Star!19495) r2!5783)) b!7451842))

(assert (= (and start!723442 ((_ is Union!19495) r2!5783)) b!7451833))

(assert (= (and start!723442 ((_ is ElementMatch!19495) rTail!78)) b!7451841))

(assert (= (and start!723442 ((_ is Concat!28340) rTail!78)) b!7451851))

(assert (= (and start!723442 ((_ is Star!19495) rTail!78)) b!7451843))

(assert (= (and start!723442 ((_ is Union!19495) rTail!78)) b!7451850))

(assert (= (and start!723442 ((_ is Cons!72087) s!13591)) b!7451837))

(declare-fun m!8057328 () Bool)

(assert (=> b!7451839 m!8057328))

(declare-fun m!8057330 () Bool)

(assert (=> b!7451839 m!8057330))

(declare-fun m!8057332 () Bool)

(assert (=> b!7451839 m!8057332))

(declare-fun m!8057334 () Bool)

(assert (=> b!7451839 m!8057334))

(declare-fun m!8057336 () Bool)

(assert (=> b!7451839 m!8057336))

(declare-fun m!8057338 () Bool)

(assert (=> b!7451839 m!8057338))

(declare-fun m!8057340 () Bool)

(assert (=> b!7451834 m!8057340))

(declare-fun m!8057342 () Bool)

(assert (=> b!7451834 m!8057342))

(declare-fun m!8057344 () Bool)

(assert (=> b!7451834 m!8057344))

(declare-fun m!8057346 () Bool)

(assert (=> b!7451834 m!8057346))

(declare-fun m!8057348 () Bool)

(assert (=> b!7451834 m!8057348))

(declare-fun m!8057350 () Bool)

(assert (=> b!7451834 m!8057350))

(declare-fun m!8057352 () Bool)

(assert (=> b!7451834 m!8057352))

(declare-fun m!8057354 () Bool)

(assert (=> b!7451834 m!8057354))

(assert (=> b!7451834 m!8057350))

(declare-fun m!8057356 () Bool)

(assert (=> b!7451840 m!8057356))

(declare-fun m!8057358 () Bool)

(assert (=> start!723442 m!8057358))

(declare-fun m!8057360 () Bool)

(assert (=> b!7451836 m!8057360))

(declare-fun m!8057362 () Bool)

(assert (=> b!7451846 m!8057362))

(declare-fun m!8057364 () Bool)

(assert (=> b!7451846 m!8057364))

(declare-fun m!8057366 () Bool)

(assert (=> b!7451838 m!8057366))

(check-sat (not b!7451837) (not b!7451833) (not b!7451850) (not b!7451851) (not b!7451845) (not b!7451836) (not start!723442) (not b!7451840) (not b!7451842) (not b!7451839) (not b!7451849) (not b!7451834) (not b!7451846) (not b!7451847) tp_is_empty!49279 (not b!7451838) (not b!7451843) (not b!7451844))
(check-sat)
