; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739210 () Bool)

(assert start!739210)

(declare-fun b!7757202 () Bool)

(declare-fun e!4597925 () Bool)

(declare-fun tp_is_empty!51651 () Bool)

(assert (=> b!7757202 (= e!4597925 tp_is_empty!51651)))

(declare-fun b!7757203 () Bool)

(declare-fun e!4597926 () Bool)

(assert (=> b!7757203 (= e!4597926 false)))

(declare-datatypes ((C!41622 0))(
  ( (C!41623 (val!31251 Int)) )
))
(declare-datatypes ((Regex!20648 0))(
  ( (ElementMatch!20648 (c!1430509 C!41622)) (Concat!29493 (regOne!41808 Regex!20648) (regTwo!41808 Regex!20648)) (EmptyExpr!20648) (Star!20648 (reg!20977 Regex!20648)) (EmptyLang!20648) (Union!20648 (regOne!41809 Regex!20648) (regTwo!41809 Regex!20648)) )
))
(declare-fun r1!3330 () Regex!20648)

(declare-datatypes ((List!73491 0))(
  ( (Nil!73367) (Cons!73367 (h!79815 C!41622) (t!388226 List!73491)) )
))
(declare-datatypes ((tuple2!69682 0))(
  ( (tuple2!69683 (_1!38144 List!73491) (_2!38144 List!73491)) )
))
(declare-datatypes ((Option!17635 0))(
  ( (None!17634) (Some!17634 (v!54769 tuple2!69682)) )
))
(declare-fun lt!2669877 () Option!17635)

(declare-fun r2!3230 () Regex!20648)

(declare-fun s!10216 () List!73491)

(declare-fun findConcatSeparation!3665 (Regex!20648 Regex!20648 List!73491 List!73491 List!73491) Option!17635)

(assert (=> b!7757203 (= lt!2669877 (findConcatSeparation!3665 r1!3330 r2!3230 Nil!73367 s!10216 s!10216))))

(declare-fun res!3092655 () Bool)

(assert (=> start!739210 (=> (not res!3092655) (not e!4597926))))

(declare-fun validRegex!11064 (Regex!20648) Bool)

(assert (=> start!739210 (= res!3092655 (validRegex!11064 r1!3330))))

(assert (=> start!739210 e!4597926))

(assert (=> start!739210 e!4597925))

(declare-fun e!4597927 () Bool)

(assert (=> start!739210 e!4597927))

(declare-fun e!4597924 () Bool)

(assert (=> start!739210 e!4597924))

(declare-fun b!7757204 () Bool)

(declare-fun tp!2276843 () Bool)

(assert (=> b!7757204 (= e!4597925 tp!2276843)))

(declare-fun b!7757205 () Bool)

(declare-fun tp!2276844 () Bool)

(declare-fun tp!2276834 () Bool)

(assert (=> b!7757205 (= e!4597927 (and tp!2276844 tp!2276834))))

(declare-fun b!7757206 () Bool)

(assert (=> b!7757206 (= e!4597927 tp_is_empty!51651)))

(declare-fun b!7757207 () Bool)

(declare-fun tp!2276836 () Bool)

(declare-fun tp!2276840 () Bool)

(assert (=> b!7757207 (= e!4597925 (and tp!2276836 tp!2276840))))

(declare-fun b!7757208 () Bool)

(declare-fun tp!2276839 () Bool)

(declare-fun tp!2276837 () Bool)

(assert (=> b!7757208 (= e!4597927 (and tp!2276839 tp!2276837))))

(declare-fun b!7757209 () Bool)

(declare-fun tp!2276842 () Bool)

(assert (=> b!7757209 (= e!4597927 tp!2276842)))

(declare-fun b!7757210 () Bool)

(declare-fun res!3092656 () Bool)

(assert (=> b!7757210 (=> (not res!3092656) (not e!4597926))))

(assert (=> b!7757210 (= res!3092656 (validRegex!11064 r2!3230))))

(declare-fun b!7757211 () Bool)

(declare-fun tp!2276838 () Bool)

(assert (=> b!7757211 (= e!4597924 (and tp_is_empty!51651 tp!2276838))))

(declare-fun b!7757212 () Bool)

(declare-fun tp!2276835 () Bool)

(declare-fun tp!2276841 () Bool)

(assert (=> b!7757212 (= e!4597925 (and tp!2276835 tp!2276841))))

(assert (= (and start!739210 res!3092655) b!7757210))

(assert (= (and b!7757210 res!3092656) b!7757203))

(assert (= (and start!739210 (is-ElementMatch!20648 r1!3330)) b!7757202))

(assert (= (and start!739210 (is-Concat!29493 r1!3330)) b!7757207))

(assert (= (and start!739210 (is-Star!20648 r1!3330)) b!7757204))

(assert (= (and start!739210 (is-Union!20648 r1!3330)) b!7757212))

(assert (= (and start!739210 (is-ElementMatch!20648 r2!3230)) b!7757206))

(assert (= (and start!739210 (is-Concat!29493 r2!3230)) b!7757205))

(assert (= (and start!739210 (is-Star!20648 r2!3230)) b!7757209))

(assert (= (and start!739210 (is-Union!20648 r2!3230)) b!7757208))

(assert (= (and start!739210 (is-Cons!73367 s!10216)) b!7757211))

(declare-fun m!8219358 () Bool)

(assert (=> b!7757203 m!8219358))

(declare-fun m!8219360 () Bool)

(assert (=> start!739210 m!8219360))

(declare-fun m!8219362 () Bool)

(assert (=> b!7757210 m!8219362))

(push 1)

(assert (not start!739210))

(assert tp_is_empty!51651)

(assert (not b!7757212))

(assert (not b!7757210))

(assert (not b!7757211))

(assert (not b!7757209))

(assert (not b!7757207))

(assert (not b!7757205))

(assert (not b!7757204))

(assert (not b!7757203))

(assert (not b!7757208))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

