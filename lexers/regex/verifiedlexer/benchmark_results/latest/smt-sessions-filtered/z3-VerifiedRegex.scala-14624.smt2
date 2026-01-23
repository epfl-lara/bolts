; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756468 () Bool)

(assert start!756468)

(assert (=> start!756468 false))

(declare-fun e!4731030 () Bool)

(assert (=> start!756468 e!4731030))

(declare-fun e!4731031 () Bool)

(assert (=> start!756468 e!4731031))

(declare-fun b!8030483 () Bool)

(declare-fun tp_is_empty!54397 () Bool)

(assert (=> b!8030483 (= e!4731030 tp_is_empty!54397)))

(declare-fun b!8030484 () Bool)

(declare-fun tp!2403416 () Bool)

(declare-fun tp!2403417 () Bool)

(assert (=> b!8030484 (= e!4731030 (and tp!2403416 tp!2403417))))

(declare-fun b!8030485 () Bool)

(declare-fun tp!2403414 () Bool)

(assert (=> b!8030485 (= e!4731030 tp!2403414)))

(declare-fun b!8030486 () Bool)

(declare-fun tp!2403418 () Bool)

(assert (=> b!8030486 (= e!4731031 (and tp_is_empty!54397 tp!2403418))))

(declare-fun b!8030487 () Bool)

(declare-fun tp!2403415 () Bool)

(declare-fun tp!2403419 () Bool)

(assert (=> b!8030487 (= e!4731030 (and tp!2403415 tp!2403419))))

(declare-datatypes ((C!43740 0))(
  ( (C!43741 (val!32646 Int)) )
))
(declare-datatypes ((Regex!21701 0))(
  ( (ElementMatch!21701 (c!1473226 C!43740)) (Concat!30704 (regOne!43914 Regex!21701) (regTwo!43914 Regex!21701)) (EmptyExpr!21701) (Star!21701 (reg!22030 Regex!21701)) (EmptyLang!21701) (Union!21701 (regOne!43915 Regex!21701) (regTwo!43915 Regex!21701)) )
))
(declare-fun r!13230 () Regex!21701)

(get-info :version)

(assert (= (and start!756468 ((_ is ElementMatch!21701) r!13230)) b!8030483))

(assert (= (and start!756468 ((_ is Concat!30704) r!13230)) b!8030487))

(assert (= (and start!756468 ((_ is Star!21701) r!13230)) b!8030485))

(assert (= (and start!756468 ((_ is Union!21701) r!13230)) b!8030484))

(declare-datatypes ((List!75166 0))(
  ( (Nil!75040) (Cons!75040 (h!81488 C!43740) (t!390936 List!75166)) )
))
(declare-fun input!5983 () List!75166)

(assert (= (and start!756468 ((_ is Cons!75040) input!5983)) b!8030486))

(check-sat (not b!8030487) (not b!8030486) tp_is_empty!54397 (not b!8030484) (not b!8030485))
(check-sat)
