; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739720 () Bool)

(assert start!739720)

(assert (=> start!739720 false))

(declare-fun e!4601621 () Bool)

(assert (=> start!739720 e!4601621))

(declare-fun b!7765441 () Bool)

(declare-fun tp!2281101 () Bool)

(declare-fun tp!2281100 () Bool)

(assert (=> b!7765441 (= e!4601621 (and tp!2281101 tp!2281100))))

(declare-fun b!7765440 () Bool)

(declare-fun tp!2281099 () Bool)

(assert (=> b!7765440 (= e!4601621 tp!2281099)))

(declare-fun b!7765439 () Bool)

(declare-fun tp!2281098 () Bool)

(declare-fun tp!2281097 () Bool)

(assert (=> b!7765439 (= e!4601621 (and tp!2281098 tp!2281097))))

(declare-fun b!7765438 () Bool)

(declare-fun tp_is_empty!51797 () Bool)

(assert (=> b!7765438 (= e!4601621 tp_is_empty!51797)))

(declare-datatypes ((C!41768 0))(
  ( (C!41769 (val!31324 Int)) )
))
(declare-datatypes ((Regex!20721 0))(
  ( (ElementMatch!20721 (c!1431236 C!41768)) (Concat!29566 (regOne!41954 Regex!20721) (regTwo!41954 Regex!20721)) (EmptyExpr!20721) (Star!20721 (reg!21050 Regex!20721)) (EmptyLang!20721) (Union!20721 (regOne!41955 Regex!20721) (regTwo!41955 Regex!20721)) )
))
(declare-fun r!25924 () Regex!20721)

(get-info :version)

(assert (= (and start!739720 ((_ is ElementMatch!20721) r!25924)) b!7765438))

(assert (= (and start!739720 ((_ is Concat!29566) r!25924)) b!7765439))

(assert (= (and start!739720 ((_ is Star!20721) r!25924)) b!7765440))

(assert (= (and start!739720 ((_ is Union!20721) r!25924)) b!7765441))

(check-sat (not b!7765439) (not b!7765440) (not b!7765441) tp_is_empty!51797)
(check-sat)
