; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731216 () Bool)

(assert start!731216)

(declare-fun b!7572164 () Bool)

(declare-datatypes ((Unit!166989 0))(
  ( (Unit!166990) )
))
(declare-fun e!4507816 () Unit!166989)

(declare-fun Unit!166991 () Unit!166989)

(assert (=> b!7572164 (= e!4507816 Unit!166991)))

(declare-fun b!7572165 () Bool)

(declare-fun e!4507819 () Bool)

(declare-fun tp_is_empty!50389 () Bool)

(assert (=> b!7572165 (= e!4507819 tp_is_empty!50389)))

(declare-fun b!7572166 () Bool)

(declare-fun res!3033266 () Bool)

(declare-fun e!4507818 () Bool)

(assert (=> b!7572166 (=> (not res!3033266) (not e!4507818))))

(declare-datatypes ((C!40360 0))(
  ( (C!40361 (val!30620 Int)) )
))
(declare-datatypes ((Regex!20017 0))(
  ( (ElementMatch!20017 (c!1397038 C!40360)) (Concat!28862 (regOne!40546 Regex!20017) (regTwo!40546 Regex!20017)) (EmptyExpr!20017) (Star!20017 (reg!20346 Regex!20017)) (EmptyLang!20017) (Union!20017 (regOne!40547 Regex!20017) (regTwo!40547 Regex!20017)) )
))
(declare-fun r!22341 () Regex!20017)

(declare-fun lostCause!1793 (Regex!20017) Bool)

(assert (=> b!7572166 (= res!3033266 (lostCause!1793 r!22341))))

(declare-fun b!7572167 () Bool)

(assert (=> b!7572167 (= e!4507818 false)))

(declare-fun lt!2651459 () Unit!166989)

(assert (=> b!7572167 (= lt!2651459 e!4507816)))

(declare-fun c!1397037 () Bool)

(declare-fun nullable!8739 (Regex!20017) Bool)

(assert (=> b!7572167 (= c!1397037 (nullable!8739 r!22341))))

(declare-fun b!7572168 () Bool)

(declare-fun lt!2651460 () Unit!166989)

(assert (=> b!7572168 (= e!4507816 lt!2651460)))

(declare-fun lemmaNullableThenNotLostCause!98 (Regex!20017) Unit!166989)

(assert (=> b!7572168 (= lt!2651460 (lemmaNullableThenNotLostCause!98 r!22341))))

(assert (=> b!7572168 false))

(declare-fun b!7572169 () Bool)

(declare-fun tp!2206418 () Bool)

(declare-fun tp!2206420 () Bool)

(assert (=> b!7572169 (= e!4507819 (and tp!2206418 tp!2206420))))

(declare-fun b!7572170 () Bool)

(declare-fun tp!2206416 () Bool)

(assert (=> b!7572170 (= e!4507819 tp!2206416)))

(declare-fun b!7572171 () Bool)

(declare-fun res!3033267 () Bool)

(assert (=> b!7572171 (=> (not res!3033267) (not e!4507818))))

(declare-datatypes ((List!72900 0))(
  ( (Nil!72776) (Cons!72776 (h!79224 C!40360) (t!387635 List!72900)) )
))
(declare-fun s!13436 () List!72900)

(declare-fun isEmpty!41435 (List!72900) Bool)

(assert (=> b!7572171 (= res!3033267 (isEmpty!41435 s!13436))))

(declare-fun b!7572172 () Bool)

(declare-fun tp!2206421 () Bool)

(declare-fun tp!2206417 () Bool)

(assert (=> b!7572172 (= e!4507819 (and tp!2206421 tp!2206417))))

(declare-fun res!3033268 () Bool)

(assert (=> start!731216 (=> (not res!3033268) (not e!4507818))))

(declare-fun validRegex!10445 (Regex!20017) Bool)

(assert (=> start!731216 (= res!3033268 (validRegex!10445 r!22341))))

(assert (=> start!731216 e!4507818))

(assert (=> start!731216 e!4507819))

(declare-fun e!4507817 () Bool)

(assert (=> start!731216 e!4507817))

(declare-fun b!7572173 () Bool)

(declare-fun tp!2206419 () Bool)

(assert (=> b!7572173 (= e!4507817 (and tp_is_empty!50389 tp!2206419))))

(assert (= (and start!731216 res!3033268) b!7572166))

(assert (= (and b!7572166 res!3033266) b!7572171))

(assert (= (and b!7572171 res!3033267) b!7572167))

(assert (= (and b!7572167 c!1397037) b!7572168))

(assert (= (and b!7572167 (not c!1397037)) b!7572164))

(get-info :version)

(assert (= (and start!731216 ((_ is ElementMatch!20017) r!22341)) b!7572165))

(assert (= (and start!731216 ((_ is Concat!28862) r!22341)) b!7572172))

(assert (= (and start!731216 ((_ is Star!20017) r!22341)) b!7572170))

(assert (= (and start!731216 ((_ is Union!20017) r!22341)) b!7572169))

(assert (= (and start!731216 ((_ is Cons!72776) s!13436)) b!7572173))

(declare-fun m!8132360 () Bool)

(assert (=> b!7572168 m!8132360))

(declare-fun m!8132362 () Bool)

(assert (=> b!7572167 m!8132362))

(declare-fun m!8132364 () Bool)

(assert (=> start!731216 m!8132364))

(declare-fun m!8132366 () Bool)

(assert (=> b!7572166 m!8132366))

(declare-fun m!8132368 () Bool)

(assert (=> b!7572171 m!8132368))

(check-sat (not start!731216) (not b!7572171) (not b!7572169) (not b!7572167) (not b!7572172) (not b!7572166) (not b!7572170) (not b!7572168) (not b!7572173) tp_is_empty!50389)
(check-sat)
