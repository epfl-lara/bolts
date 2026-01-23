; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!664324 () Bool)

(assert start!664324)

(declare-fun b!6891982 () Bool)

(declare-fun e!4151805 () Bool)

(declare-fun tp!1896434 () Bool)

(declare-fun tp!1896436 () Bool)

(assert (=> b!6891982 (= e!4151805 (and tp!1896434 tp!1896436))))

(declare-fun b!6891984 () Bool)

(declare-fun res!2809904 () Bool)

(declare-fun e!4151801 () Bool)

(assert (=> b!6891984 (=> res!2809904 e!4151801)))

(declare-datatypes ((C!33894 0))(
  ( (C!33895 (val!26649 Int)) )
))
(declare-datatypes ((List!66569 0))(
  ( (Nil!66445) (Cons!66445 (h!72893 C!33894) (t!380312 List!66569)) )
))
(declare-fun s!14361 () List!66569)

(declare-datatypes ((Regex!16812 0))(
  ( (ElementMatch!16812 (c!1281346 C!33894)) (Concat!25657 (regOne!34136 Regex!16812) (regTwo!34136 Regex!16812)) (EmptyExpr!16812) (Star!16812 (reg!17141 Regex!16812)) (EmptyLang!16812) (Union!16812 (regOne!34137 Regex!16812) (regTwo!34137 Regex!16812)) )
))
(declare-fun lt!2462989 () Regex!16812)

(declare-fun r1!6342 () Regex!16812)

(declare-datatypes ((tuple2!67358 0))(
  ( (tuple2!67359 (_1!36982 List!66569) (_2!36982 List!66569)) )
))
(declare-datatypes ((Option!16591 0))(
  ( (None!16590) (Some!16590 (v!52862 tuple2!67358)) )
))
(declare-fun isDefined!13294 (Option!16591) Bool)

(declare-fun findConcatSeparation!3005 (Regex!16812 Regex!16812 List!66569 List!66569 List!66569) Option!16591)

(assert (=> b!6891984 (= res!2809904 (not (isDefined!13294 (findConcatSeparation!3005 r1!6342 lt!2462989 Nil!66445 s!14361 s!14361))))))

(declare-fun b!6891985 () Bool)

(declare-fun e!4151804 () Bool)

(declare-fun tp!1896435 () Bool)

(declare-fun tp!1896438 () Bool)

(assert (=> b!6891985 (= e!4151804 (and tp!1896435 tp!1896438))))

(declare-fun b!6891986 () Bool)

(declare-fun e!4151803 () Bool)

(declare-fun tp_is_empty!42849 () Bool)

(declare-fun tp!1896425 () Bool)

(assert (=> b!6891986 (= e!4151803 (and tp_is_empty!42849 tp!1896425))))

(declare-fun b!6891987 () Bool)

(assert (=> b!6891987 (= e!4151805 tp_is_empty!42849)))

(declare-fun b!6891988 () Bool)

(declare-fun res!2809905 () Bool)

(declare-fun e!4151806 () Bool)

(assert (=> b!6891988 (=> (not res!2809905) (not e!4151806))))

(declare-fun r2!6280 () Regex!16812)

(declare-fun validRegex!8520 (Regex!16812) Bool)

(assert (=> b!6891988 (= res!2809905 (validRegex!8520 r2!6280))))

(declare-fun b!6891989 () Bool)

(declare-fun e!4151802 () Bool)

(declare-fun tp!1896428 () Bool)

(declare-fun tp!1896433 () Bool)

(assert (=> b!6891989 (= e!4151802 (and tp!1896428 tp!1896433))))

(declare-fun b!6891990 () Bool)

(declare-fun tp!1896431 () Bool)

(assert (=> b!6891990 (= e!4151802 tp!1896431)))

(declare-fun b!6891991 () Bool)

(declare-fun tp!1896432 () Bool)

(declare-fun tp!1896426 () Bool)

(assert (=> b!6891991 (= e!4151805 (and tp!1896432 tp!1896426))))

(declare-fun b!6891992 () Bool)

(declare-fun tp!1896439 () Bool)

(assert (=> b!6891992 (= e!4151804 tp!1896439)))

(declare-fun b!6891993 () Bool)

(assert (=> b!6891993 (= e!4151802 tp_is_empty!42849)))

(declare-fun b!6891994 () Bool)

(assert (=> b!6891994 (= e!4151806 (not e!4151801))))

(declare-fun res!2809901 () Bool)

(assert (=> b!6891994 (=> res!2809901 e!4151801)))

(declare-fun lt!2462986 () Bool)

(assert (=> b!6891994 (= res!2809901 lt!2462986)))

(declare-fun lt!2462987 () Regex!16812)

(declare-fun matchR!8957 (Regex!16812 List!66569) Bool)

(declare-fun matchRSpec!3875 (Regex!16812 List!66569) Bool)

(assert (=> b!6891994 (= (matchR!8957 lt!2462987 s!14361) (matchRSpec!3875 lt!2462987 s!14361))))

(declare-datatypes ((Unit!160344 0))(
  ( (Unit!160345) )
))
(declare-fun lt!2462990 () Unit!160344)

(declare-fun mainMatchTheorem!3875 (Regex!16812 List!66569) Unit!160344)

(assert (=> b!6891994 (= lt!2462990 (mainMatchTheorem!3875 lt!2462987 s!14361))))

(declare-fun lt!2462991 () Regex!16812)

(assert (=> b!6891994 (= lt!2462986 (matchRSpec!3875 lt!2462991 s!14361))))

(assert (=> b!6891994 (= lt!2462986 (matchR!8957 lt!2462991 s!14361))))

(declare-fun lt!2462988 () Unit!160344)

(assert (=> b!6891994 (= lt!2462988 (mainMatchTheorem!3875 lt!2462991 s!14361))))

(assert (=> b!6891994 (= lt!2462987 (Concat!25657 r1!6342 lt!2462989))))

(declare-fun r3!135 () Regex!16812)

(assert (=> b!6891994 (= lt!2462989 (Concat!25657 r2!6280 r3!135))))

(assert (=> b!6891994 (= lt!2462991 (Concat!25657 (Concat!25657 r1!6342 r2!6280) r3!135))))

(declare-fun b!6891995 () Bool)

(declare-fun res!2809902 () Bool)

(assert (=> b!6891995 (=> (not res!2809902) (not e!4151806))))

(assert (=> b!6891995 (= res!2809902 (validRegex!8520 r3!135))))

(declare-fun b!6891996 () Bool)

(assert (=> b!6891996 (= e!4151804 tp_is_empty!42849)))

(declare-fun b!6891997 () Bool)

(declare-fun tp!1896430 () Bool)

(declare-fun tp!1896437 () Bool)

(assert (=> b!6891997 (= e!4151804 (and tp!1896430 tp!1896437))))

(declare-fun res!2809903 () Bool)

(assert (=> start!664324 (=> (not res!2809903) (not e!4151806))))

(assert (=> start!664324 (= res!2809903 (validRegex!8520 r1!6342))))

(assert (=> start!664324 e!4151806))

(assert (=> start!664324 e!4151804))

(assert (=> start!664324 e!4151805))

(assert (=> start!664324 e!4151802))

(assert (=> start!664324 e!4151803))

(declare-fun b!6891983 () Bool)

(declare-fun tp!1896427 () Bool)

(assert (=> b!6891983 (= e!4151805 tp!1896427)))

(declare-fun b!6891998 () Bool)

(assert (=> b!6891998 (= e!4151801 true)))

(declare-fun b!6891999 () Bool)

(declare-fun tp!1896424 () Bool)

(declare-fun tp!1896429 () Bool)

(assert (=> b!6891999 (= e!4151802 (and tp!1896424 tp!1896429))))

(assert (= (and start!664324 res!2809903) b!6891988))

(assert (= (and b!6891988 res!2809905) b!6891995))

(assert (= (and b!6891995 res!2809902) b!6891994))

(assert (= (and b!6891994 (not res!2809901)) b!6891984))

(assert (= (and b!6891984 (not res!2809904)) b!6891998))

(assert (= (and start!664324 (is-ElementMatch!16812 r1!6342)) b!6891996))

(assert (= (and start!664324 (is-Concat!25657 r1!6342)) b!6891997))

(assert (= (and start!664324 (is-Star!16812 r1!6342)) b!6891992))

(assert (= (and start!664324 (is-Union!16812 r1!6342)) b!6891985))

(assert (= (and start!664324 (is-ElementMatch!16812 r2!6280)) b!6891987))

(assert (= (and start!664324 (is-Concat!25657 r2!6280)) b!6891982))

(assert (= (and start!664324 (is-Star!16812 r2!6280)) b!6891983))

(assert (= (and start!664324 (is-Union!16812 r2!6280)) b!6891991))

(assert (= (and start!664324 (is-ElementMatch!16812 r3!135)) b!6891993))

(assert (= (and start!664324 (is-Concat!25657 r3!135)) b!6891999))

(assert (= (and start!664324 (is-Star!16812 r3!135)) b!6891990))

(assert (= (and start!664324 (is-Union!16812 r3!135)) b!6891989))

(assert (= (and start!664324 (is-Cons!66445 s!14361)) b!6891986))

(declare-fun m!7613252 () Bool)

(assert (=> b!6891995 m!7613252))

(declare-fun m!7613254 () Bool)

(assert (=> b!6891994 m!7613254))

(declare-fun m!7613256 () Bool)

(assert (=> b!6891994 m!7613256))

(declare-fun m!7613258 () Bool)

(assert (=> b!6891994 m!7613258))

(declare-fun m!7613260 () Bool)

(assert (=> b!6891994 m!7613260))

(declare-fun m!7613262 () Bool)

(assert (=> b!6891994 m!7613262))

(declare-fun m!7613264 () Bool)

(assert (=> b!6891994 m!7613264))

(declare-fun m!7613266 () Bool)

(assert (=> b!6891984 m!7613266))

(assert (=> b!6891984 m!7613266))

(declare-fun m!7613268 () Bool)

(assert (=> b!6891984 m!7613268))

(declare-fun m!7613270 () Bool)

(assert (=> start!664324 m!7613270))

(declare-fun m!7613272 () Bool)

(assert (=> b!6891988 m!7613272))

(push 1)

(assert (not b!6891983))

(assert (not b!6891997))

(assert (not b!6891984))

(assert (not b!6891995))

(assert (not b!6891985))

(assert (not b!6891990))

(assert (not b!6891992))

(assert (not b!6891986))

(assert (not b!6891988))

(assert (not b!6891994))

(assert (not b!6891991))

(assert (not b!6891982))

(assert tp_is_empty!42849)

(assert (not start!664324))

(assert (not b!6891989))

(assert (not b!6891999))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

